// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
#map = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4) -> (d2, d3, d1, d4)>
#map2 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d4)>
module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.index_label"() : () -> !ta.index
    %4 = "ta.index_label"() : () -> !ta.index
    %5 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<16x16x32x32xf64>
    %6 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<32x32x16x32xf64>
    %7 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<16x32xf64>
    "ta.fill"(%5) <{value = 2.300000e+00 : f64}> : (tensor<16x16x32x32xf64>) -> ()
    "ta.fill"(%6) <{value = 3.400000e+00 : f64}> : (tensor<32x32x16x32xf64>) -> ()
    "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<16x32xf64>) -> ()
    %8 = "ta.mul"(%5, %6, %0, %1, %2, %3, %2, %3, %1, %4, %0, %4) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 1, 1, 10, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<16x16x32x32xf64>, tensor<32x32x16x32xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<16x32xf64>
    "ta.set_op"(%8, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<16x32xf64>, tensor<16x32xf64>) -> ()
    "ta.print"(%7) : (tensor<16x32xf64>) -> ()
    return
  }
}


// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.index_label"() : () -> !ta.index
  %4 = "ta.index_label"() : () -> !ta.index
  %5 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<16x16x32x32xf64>
  %6 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<32x32x16x32xf64>
  %7 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<16x32xf64>
  "ta.fill"(%5) <{value = 2.300000e+00 : f64}> : (tensor<16x16x32x32xf64>) -> ()
  "ta.fill"(%6) <{value = 3.400000e+00 : f64}> : (tensor<32x32x16x32xf64>) -> ()
  "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<16x32xf64>) -> ()
  %8 = "ta.mul"(%5, %6, %0, %1, %2, %3, %2, %3, %1, %4, %0, %4) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d3, d1, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d4)>], operandSegmentSizes = array<i32: 1, 1, 10, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<16x16x32x32xf64>, tensor<32x32x16x32xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<16x32xf64>
  "ta.set_op"(%8, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<16x32xf64>, tensor<16x32xf64>) -> ()
  "ta.print"(%7) : (tensor<16x32xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.index_label"() : () -> !ta.index
  %4 = "ta.index_label"() : () -> !ta.index
  %5 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<16x16x32x32xf64>
  %6 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<32x32x16x32xf64>
  %7 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<16x32xf64>
  "ta.fill"(%5) <{value = 2.300000e+00 : f64}> : (tensor<16x16x32x32xf64>) -> ()
  "ta.fill"(%6) <{value = 3.400000e+00 : f64}> : (tensor<32x32x16x32xf64>) -> ()
  "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<16x32xf64>) -> ()
  %8 = "ta.mul"(%5, %6, %0, %1, %2, %3, %2, %3, %1, %4, %0, %4) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d3, d1, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d4)>], operandSegmentSizes = array<i32: 1, 1, 10, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<16x16x32x32xf64>, tensor<32x32x16x32xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<16x32xf64>
  "ta.set_op"(%8, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<16x32xf64>, tensor<16x32xf64>) -> ()
  "ta.print"(%7) : (tensor<16x32xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.index_label"() : () -> !ta.index
  %4 = "ta.index_label"() : () -> !ta.index
  %5 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<16x16x32x32xf64>
  %6 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<32x32x16x32xf64>
  %7 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<16x32xf64>
  "ta.fill"(%5) <{value = 2.300000e+00 : f64}> : (tensor<16x16x32x32xf64>) -> ()
  "ta.fill"(%6) <{value = 3.400000e+00 : f64}> : (tensor<32x32x16x32xf64>) -> ()
  "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<16x32xf64>) -> ()
  %8 = "ta.mul"(%5, %6, %0, %1, %2, %3, %2, %3, %1, %4, %0, %4) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d3, d1, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d4)>], operandSegmentSizes = array<i32: 1, 1, 10, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<16x16x32x32xf64>, tensor<32x32x16x32xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<16x32xf64>
  "ta.set_op"(%8, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<16x32xf64>, tensor<16x32xf64>) -> ()
  "ta.print"(%7) : (tensor<16x32xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.index_label"() : () -> !ta.index
  %4 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
  %5 = bufferization.to_tensor %alloc restrict writable : memref<16x16x32x32xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
  %6 = bufferization.to_tensor %alloc_0 restrict writable : memref<32x32x16x32xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
  %7 = bufferization.to_tensor %alloc_1 restrict writable : memref<16x32xf64>
  "ta.fill"(%5) <{value = 2.300000e+00 : f64}> : (tensor<16x16x32x32xf64>) -> ()
  "ta.fill"(%6) <{value = 3.400000e+00 : f64}> : (tensor<32x32x16x32xf64>) -> ()
  "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<16x32xf64>) -> ()
  %8 = "ta.mul"(%5, %6, %0, %1, %2, %3, %2, %3, %1, %4, %0, %4) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d3, d1, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d4)>], operandSegmentSizes = array<i32: 1, 1, 10, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<16x16x32x32xf64>, tensor<32x32x16x32xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<16x32xf64>
  "ta.set_op"(%8, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<16x32xf64>, tensor<16x32xf64>) -> ()
  "ta.print"(%7) : (tensor<16x32xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.index_label"() : () -> !ta.index
  %4 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
  %5 = bufferization.to_tensor %alloc restrict writable : memref<16x16x32x32xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
  %6 = bufferization.to_tensor %alloc_0 restrict writable : memref<32x32x16x32xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
  %7 = bufferization.to_tensor %alloc_1 restrict writable : memref<16x32xf64>
  "ta.fill"(%5) <{value = 2.300000e+00 : f64}> : (tensor<16x16x32x32xf64>) -> ()
  "ta.fill"(%6) <{value = 3.400000e+00 : f64}> : (tensor<32x32x16x32xf64>) -> ()
  "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<16x32xf64>) -> ()
  %8 = "ta.mul"(%5, %6, %0, %1, %2, %3, %2, %3, %1, %4, %0, %4) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d3, d1, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d4)>], operandSegmentSizes = array<i32: 1, 1, 10, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<16x16x32x32xf64>, tensor<32x32x16x32xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<16x32xf64>
  "ta.set_op"(%8, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<16x32xf64>, tensor<16x32xf64>) -> ()
  "ta.print"(%7) : (tensor<16x32xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.index_label"() : () -> !ta.index
  %4 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
  %5 = bufferization.to_tensor %alloc restrict writable : memref<16x16x32x32xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
  %6 = bufferization.to_tensor %alloc_0 restrict writable : memref<32x32x16x32xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
  %7 = bufferization.to_tensor %alloc_1 restrict writable : memref<16x32xf64>
  "ta.fill"(%5) <{value = 2.300000e+00 : f64}> : (tensor<16x16x32x32xf64>) -> ()
  "ta.fill"(%6) <{value = 3.400000e+00 : f64}> : (tensor<32x32x16x32xf64>) -> ()
  "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<16x32xf64>) -> ()
  %8 = "ta.mul"(%5, %6, %0, %1, %2, %3, %2, %3, %1, %4, %0, %4) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d3, d1, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d4)>], operandSegmentSizes = array<i32: 1, 1, 10, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<16x16x32x32xf64>, tensor<32x32x16x32xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<16x32xf64>
  "ta.set_op"(%8, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<16x32xf64>, tensor<16x32xf64>) -> ()
  "ta.print"(%7) : (tensor<16x32xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.index_label"() : () -> !ta.index
  %4 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
  %cst = arith.constant 2.300000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<16x16x32x32xf64>)
  %5 = bufferization.to_tensor %alloc restrict writable : memref<16x16x32x32xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
  %cst_1 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_1 : f64) outs(%alloc_0 : memref<32x32x16x32xf64>)
  %6 = bufferization.to_tensor %alloc_0 restrict writable : memref<32x32x16x32xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_2 : memref<16x32xf64>)
  %7 = bufferization.to_tensor %alloc_2 restrict writable : memref<16x32xf64>
  %8 = "ta.mul"(%5, %6, %0, %1, %2, %3, %2, %3, %1, %4, %0, %4) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d3, d1, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d4)>], operandSegmentSizes = array<i32: 1, 1, 10, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<16x16x32x32xf64>, tensor<32x32x16x32xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<16x32xf64>
  "ta.set_op"(%8, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<16x32xf64>, tensor<16x32xf64>) -> ()
  "ta.print"(%7) : (tensor<16x32xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.index_label"() : () -> !ta.index
  %4 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
  %cst = arith.constant 2.300000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<16x16x32x32xf64>)
  %5 = bufferization.to_tensor %alloc restrict writable : memref<16x16x32x32xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
  %cst_1 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_1 : f64) outs(%alloc_0 : memref<32x32x16x32xf64>)
  %6 = bufferization.to_tensor %alloc_0 restrict writable : memref<32x32x16x32xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_2 : memref<16x32xf64>)
  %7 = bufferization.to_tensor %alloc_2 restrict writable : memref<16x32xf64>
  %8 = "ta.mul"(%5, %6, %0, %1, %2, %3, %2, %3, %1, %4, %0, %4) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d3, d1, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d4)>], operandSegmentSizes = array<i32: 1, 1, 10, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<16x16x32x32xf64>, tensor<32x32x16x32xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<16x32xf64>
  "ta.set_op"(%8, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<16x32xf64>, tensor<16x32xf64>) -> ()
  "ta.print"(%7) : (tensor<16x32xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.index_label"() : () -> !ta.index
  %4 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x32x32xf64>)
  %5 = bufferization.to_tensor %alloc restrict writable : memref<16x16x32x32xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<32x32x16x32xf64>)
  %6 = bufferization.to_tensor %alloc_2 restrict writable : memref<32x32x16x32xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x32xf64>)
  %7 = bufferization.to_tensor %alloc_3 restrict writable : memref<16x32xf64>
  %8 = "ta.mul"(%5, %6, %0, %1, %2, %3, %2, %3, %1, %4, %0, %4) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d3, d1, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d4)>], operandSegmentSizes = array<i32: 1, 1, 10, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<16x16x32x32xf64>, tensor<32x32x16x32xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<16x32xf64>
  "ta.set_op"(%8, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<16x32xf64>, tensor<16x32xf64>) -> ()
  "ta.print"(%7) : (tensor<16x32xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TALoweringTTGTDynPass () //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.index_label"() : () -> !ta.index
  %4 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x32x32xf64>)
  %5 = bufferization.to_tensor %alloc restrict writable : memref<16x16x32x32xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<32x32x16x32xf64>)
  %6 = bufferization.to_tensor %alloc_2 restrict writable : memref<32x32x16x32xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x32xf64>)
  %7 = bufferization.to_tensor %alloc_3 restrict writable : memref<16x32xf64>
  %c0 = arith.constant 0 : index
  %dim = tensor.dim %5, %c0 : tensor<16x16x32x32xf64>
  %c1 = arith.constant 1 : index
  %dim_4 = tensor.dim %5, %c1 : tensor<16x16x32x32xf64>
  %c2 = arith.constant 2 : index
  %dim_5 = tensor.dim %5, %c2 : tensor<16x16x32x32xf64>
  %c3 = arith.constant 3 : index
  %dim_6 = tensor.dim %5, %c3 : tensor<16x16x32x32xf64>
  %c0_7 = arith.constant 0 : index
  %dim_8 = tensor.dim %6, %c0_7 : tensor<32x32x16x32xf64>
  %c1_9 = arith.constant 1 : index
  %dim_10 = tensor.dim %6, %c1_9 : tensor<32x32x16x32xf64>
  %c2_11 = arith.constant 2 : index
  %dim_12 = tensor.dim %6, %c2_11 : tensor<32x32x16x32xf64>
  %c3_13 = arith.constant 3 : index
  %dim_14 = tensor.dim %6, %c3_13 : tensor<32x32x16x32xf64>
  %c0_15 = arith.constant 0 : index
  %dim_16 = tensor.dim %7, %c0_15 : tensor<16x32xf64>
  %c1_17 = arith.constant 1 : index
  %dim_18 = tensor.dim %7, %c1_17 : tensor<16x32xf64>
  %c1_19 = arith.constant 1 : index
  %8 = arith.muli %c1_19, %dim : index
  %c1_20 = arith.constant 1 : index
  %9 = arith.muli %c1_20, %dim_14 : index
  %c1_21 = arith.constant 1 : index
  %10 = arith.muli %c1_21, %dim_4 : index
  %11 = arith.muli %10, %dim_5 : index
  %12 = arith.muli %11, %dim_6 : index
  %cst_22 = arith.constant 0.000000e+00 : f64
  %13 = arith.muli %12, %8 : index
  %14 = arith.muli %9, %12 : index
  %15 = arith.muli %8, %9 : index
  %16 = arith.index_cast %14 : index to i64
  %17 = arith.sitofp %16 : i64 to f64
  %cst_23 = arith.constant 7.100000e-01 : f64
  %18 = arith.divf %17, %cst_23 : f64
  %19 = arith.addf %cst_22, %18 : f64
  %cst_24 = arith.constant 0.000000e+00 : f64
  %20 = arith.muli %12, %8 : index
  %21 = arith.muli %9, %12 : index
  %22 = arith.muli %8, %9 : index
  %23 = arith.index_cast %20 : index to i64
  %24 = arith.sitofp %23 : i64 to f64
  %cst_25 = arith.constant 7.100000e-01 : f64
  %25 = arith.divf %24, %cst_25 : f64
  %26 = arith.addf %cst_24, %25 : f64
  %27 = arith.index_cast %21 : index to i64
  %28 = arith.sitofp %27 : i64 to f64
  %cst_26 = arith.constant 7.100000e-01 : f64
  %29 = arith.divf %28, %cst_26 : f64
  %30 = arith.addf %26, %29 : f64
  %31 = arith.index_cast %22 : index to i64
  %32 = arith.sitofp %31 : i64 to f64
  %cst_27 = arith.constant 7.100000e-01 : f64
  %33 = arith.divf %32, %cst_27 : f64
  %34 = arith.addf %30, %33 : f64
  %cst_28 = arith.constant 0.000000e+00 : f64
  %35 = arith.muli %12, %8 : index
  %36 = arith.muli %9, %12 : index
  %37 = arith.muli %8, %9 : index
  %38 = arith.index_cast %35 : index to i64
  %39 = arith.sitofp %38 : i64 to f64
  %40 = arith.addf %cst_28, %39 : f64
  %41 = arith.index_cast %36 : index to i64
  %42 = arith.sitofp %41 : i64 to f64
  %cst_29 = arith.constant 7.100000e-01 : f64
  %43 = arith.divf %42, %cst_29 : f64
  %44 = arith.addf %40, %43 : f64
  %cst_30 = arith.constant 0.000000e+00 : f64
  %45 = arith.muli %12, %8 : index
  %46 = arith.muli %9, %12 : index
  %47 = arith.muli %8, %9 : index
  %48 = arith.index_cast %45 : index to i64
  %49 = arith.sitofp %48 : i64 to f64
  %cst_31 = arith.constant 7.100000e-01 : f64
  %50 = arith.divf %49, %cst_31 : f64
  %51 = arith.addf %cst_30, %50 : f64
  %52 = arith.index_cast %46 : index to i64
  %53 = arith.sitofp %52 : i64 to f64
  %cst_32 = arith.constant 7.100000e-01 : f64
  %54 = arith.divf %53, %cst_32 : f64
  %55 = arith.addf %51, %54 : f64
  %56 = arith.index_cast %47 : index to i64
  %57 = arith.sitofp %56 : i64 to f64
  %cst_33 = arith.constant 7.100000e-01 : f64
  %58 = arith.divf %57, %cst_33 : f64
  %59 = arith.addf %55, %58 : f64
  %cst_34 = arith.constant 0.000000e+00 : f64
  %60 = arith.muli %12, %8 : index
  %61 = arith.muli %9, %12 : index
  %62 = arith.muli %8, %9 : index
  %63 = arith.index_cast %60 : index to i64
  %64 = arith.sitofp %63 : i64 to f64
  %65 = arith.addf %cst_34, %64 : f64
  %66 = arith.index_cast %61 : index to i64
  %67 = arith.sitofp %66 : i64 to f64
  %68 = arith.addf %65, %67 : f64
  %cst_35 = arith.constant 0.000000e+00 : f64
  %69 = arith.muli %12, %8 : index
  %70 = arith.muli %9, %12 : index
  %71 = arith.muli %8, %9 : index
  %72 = arith.index_cast %69 : index to i64
  %73 = arith.sitofp %72 : i64 to f64
  %cst_36 = arith.constant 7.100000e-01 : f64
  %74 = arith.divf %73, %cst_36 : f64
  %75 = arith.addf %cst_35, %74 : f64
  %76 = arith.index_cast %70 : index to i64
  %77 = arith.sitofp %76 : i64 to f64
  %cst_37 = arith.constant 7.100000e-01 : f64
  %78 = arith.divf %77, %cst_37 : f64
  %79 = arith.addf %75, %78 : f64
  %80 = arith.index_cast %71 : index to i64
  %81 = arith.sitofp %80 : i64 to f64
  %cst_38 = arith.constant 7.100000e-01 : f64
  %82 = arith.divf %81, %cst_38 : f64
  %83 = arith.addf %79, %82 : f64
  %cst_39 = arith.constant 0.000000e+00 : f64
  %84 = arith.muli %12, %8 : index
  %85 = arith.muli %9, %12 : index
  %86 = arith.muli %8, %9 : index
  %87 = arith.index_cast %84 : index to i64
  %88 = arith.sitofp %87 : i64 to f64
  %89 = arith.addf %cst_39, %88 : f64
  %cst_40 = arith.constant 0.000000e+00 : f64
  %90 = arith.muli %12, %8 : index
  %91 = arith.muli %9, %12 : index
  %92 = arith.muli %8, %9 : index
  %93 = arith.index_cast %90 : index to i64
  %94 = arith.sitofp %93 : i64 to f64
  %cst_41 = arith.constant 7.100000e-01 : f64
  %95 = arith.divf %94, %cst_41 : f64
  %96 = arith.addf %cst_40, %95 : f64
  %97 = arith.index_cast %91 : index to i64
  %98 = arith.sitofp %97 : i64 to f64
  %cst_42 = arith.constant 7.100000e-01 : f64
  %99 = arith.divf %98, %cst_42 : f64
  %100 = arith.addf %96, %99 : f64
  %101 = arith.index_cast %92 : index to i64
  %102 = arith.sitofp %101 : i64 to f64
  %cst_43 = arith.constant 7.100000e-01 : f64
  %103 = arith.divf %102, %cst_43 : f64
  %104 = arith.addf %100, %103 : f64
  %cst_44 = arith.constant 0.000000e+00 : f64
  %105 = arith.muli %12, %8 : index
  %106 = arith.muli %9, %12 : index
  %107 = arith.muli %8, %9 : index
  %108 = arith.index_cast %105 : index to i64
  %109 = arith.sitofp %108 : i64 to f64
  %110 = arith.addf %cst_44, %109 : f64
  %111 = arith.index_cast %106 : index to i64
  %112 = arith.sitofp %111 : i64 to f64
  %cst_45 = arith.constant 7.100000e-01 : f64
  %113 = arith.divf %112, %cst_45 : f64
  %114 = arith.addf %110, %113 : f64
  %cst_46 = arith.constant 0.000000e+00 : f64
  %115 = arith.muli %12, %8 : index
  %116 = arith.muli %9, %12 : index
  %117 = arith.muli %8, %9 : index
  %118 = arith.index_cast %115 : index to i64
  %119 = arith.sitofp %118 : i64 to f64
  %cst_47 = arith.constant 7.100000e-01 : f64
  %120 = arith.divf %119, %cst_47 : f64
  %121 = arith.addf %cst_46, %120 : f64
  %122 = arith.index_cast %116 : index to i64
  %123 = arith.sitofp %122 : i64 to f64
  %cst_48 = arith.constant 7.100000e-01 : f64
  %124 = arith.divf %123, %cst_48 : f64
  %125 = arith.addf %121, %124 : f64
  %126 = arith.index_cast %117 : index to i64
  %127 = arith.sitofp %126 : i64 to f64
  %cst_49 = arith.constant 7.100000e-01 : f64
  %128 = arith.divf %127, %cst_49 : f64
  %129 = arith.addf %125, %128 : f64
  %cst_50 = arith.constant 0.000000e+00 : f64
  %130 = arith.muli %12, %8 : index
  %131 = arith.muli %9, %12 : index
  %132 = arith.muli %8, %9 : index
  %133 = arith.index_cast %130 : index to i64
  %134 = arith.sitofp %133 : i64 to f64
  %135 = arith.addf %cst_50, %134 : f64
  %136 = arith.index_cast %131 : index to i64
  %137 = arith.sitofp %136 : i64 to f64
  %cst_51 = arith.constant 7.100000e-01 : f64
  %138 = arith.divf %137, %cst_51 : f64
  %139 = arith.addf %135, %138 : f64
  %cst_52 = arith.constant 0.000000e+00 : f64
  %140 = arith.muli %12, %8 : index
  %141 = arith.muli %9, %12 : index
  %142 = arith.muli %8, %9 : index
  %143 = arith.index_cast %140 : index to i64
  %144 = arith.sitofp %143 : i64 to f64
  %cst_53 = arith.constant 7.100000e-01 : f64
  %145 = arith.divf %144, %cst_53 : f64
  %146 = arith.addf %cst_52, %145 : f64
  %147 = arith.index_cast %141 : index to i64
  %148 = arith.sitofp %147 : i64 to f64
  %cst_54 = arith.constant 7.100000e-01 : f64
  %149 = arith.divf %148, %cst_54 : f64
  %150 = arith.addf %146, %149 : f64
  %151 = arith.index_cast %142 : index to i64
  %152 = arith.sitofp %151 : i64 to f64
  %cst_55 = arith.constant 7.100000e-01 : f64
  %153 = arith.divf %152, %cst_55 : f64
  %154 = arith.addf %150, %153 : f64
  %c0_56 = arith.constant 0 : index
  %c1_57 = arith.constant 1 : index
  %155 = arith.cmpf ult, %19, %34 : f64
  %156 = arith.select %155, %c0_56, %c1_57 : index
  %c2_58 = arith.constant 2 : index
  %157 = arith.cmpf ult, %19, %44 : f64
  %158 = arith.select %157, %156, %c2_58 : index
  %c3_59 = arith.constant 3 : index
  %159 = arith.cmpf ult, %19, %59 : f64
  %160 = arith.select %159, %158, %c3_59 : index
  %c4 = arith.constant 4 : index
  %161 = arith.cmpf ult, %19, %68 : f64
  %162 = arith.select %161, %160, %c4 : index
  %c5 = arith.constant 5 : index
  %163 = arith.cmpf ult, %19, %83 : f64
  %164 = arith.select %163, %162, %c5 : index
  %c6 = arith.constant 6 : index
  %165 = arith.cmpf ult, %19, %89 : f64
  %166 = arith.select %165, %164, %c6 : index
  %c7 = arith.constant 7 : index
  %167 = arith.cmpf ult, %19, %104 : f64
  %168 = arith.select %167, %166, %c7 : index
  %c8 = arith.constant 8 : index
  %169 = arith.cmpf ult, %19, %114 : f64
  %170 = arith.select %169, %168, %c8 : index
  %c9 = arith.constant 9 : index
  %171 = arith.cmpf ult, %19, %129 : f64
  %172 = arith.select %171, %170, %c9 : index
  %c10 = arith.constant 10 : index
  %173 = arith.cmpf ult, %19, %139 : f64
  %174 = arith.select %173, %172, %c10 : index
  %c11 = arith.constant 11 : index
  %175 = arith.cmpf ult, %19, %154 : f64
  %176 = arith.select %175, %174, %c11 : index
  %177 = scf.index_switch %176 -> tensor<16x32xf64> 
  case 0 {
    %178 = tensor.empty() : tensor<16x32x32x32xf64>
    %transposed = linalg.transpose ins(%6 : tensor<32x32x16x32xf64>) outs(%178 : tensor<16x32x32x32xf64>) permutation = [2, 0, 1, 3] 
    %collapsed = tensor.collapse_shape %5 [[0], [1, 2, 3]] : tensor<16x16x32x32xf64> into tensor<16x16384xf64>
    %collapsed_60 = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x32xf64> into tensor<16384x32xf64>
    %179 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__with_tiling__"} ins(%collapsed, %collapsed_60 : tensor<16x16384xf64>, tensor<16384x32xf64>) outs(%7 : tensor<16x32xf64>) -> tensor<16x32xf64>
    scf.yield %179 : tensor<16x32xf64>
  }
  case 1 {
    %178 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%5 : tensor<16x16x32x32xf64>) outs(%178 : tensor<16x32x32x16xf64>) permutation = [1, 2, 3, 0] 
    %179 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_60 = linalg.transpose ins(%6 : tensor<32x32x16x32xf64>) outs(%179 : tensor<32x16x32x32xf64>) permutation = [3, 2, 0, 1] 
    %180 = tensor.empty() : tensor<32x16xf64>
    %cst_61 = arith.constant 0.000000e+00 : f64
    %181 = linalg.fill ins(%cst_61 : f64) outs(%180 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x16xf64> into tensor<16384x16xf64>
    %collapsed_62 = tensor.collapse_shape %transposed_60 [[0], [1, 2, 3]] : tensor<32x16x32x32xf64> into tensor<32x16384xf64>
    %182 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__with_tiling__"} ins(%collapsed_62, %collapsed : tensor<32x16384xf64>, tensor<16384x16xf64>) outs(%181 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %transposed_63 = linalg.transpose ins(%182 : tensor<32x16xf64>) outs(%7 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_63 : tensor<16x32xf64>
  }
  case 2 {
    %178 = tensor.empty() : tensor<16x16x32x32xf64>
    %transposed = linalg.transpose ins(%5 : tensor<16x16x32x32xf64>) outs(%178 : tensor<16x16x32x32xf64>) permutation = [0, 1, 3, 2] 
    %179 = tensor.empty() : tensor<16x32x32x32xf64>
    %transposed_60 = linalg.transpose ins(%6 : tensor<32x32x16x32xf64>) outs(%179 : tensor<16x32x32x32xf64>) permutation = [2, 1, 0, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x16x32x32xf64> into tensor<16x16384xf64>
    %collapsed_61 = tensor.collapse_shape %transposed_60 [[0, 1, 2], [3]] : tensor<16x32x32x32xf64> into tensor<16384x32xf64>
    %180 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__with_tiling__"} ins(%collapsed, %collapsed_61 : tensor<16x16384xf64>, tensor<16384x32xf64>) outs(%7 : tensor<16x32xf64>) -> tensor<16x32xf64>
    scf.yield %180 : tensor<16x32xf64>
  }
  case 3 {
    %178 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%5 : tensor<16x16x32x32xf64>) outs(%178 : tensor<16x32x32x16xf64>) permutation = [1, 3, 2, 0] 
    %179 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_60 = linalg.transpose ins(%6 : tensor<32x32x16x32xf64>) outs(%179 : tensor<32x16x32x32xf64>) permutation = [3, 2, 1, 0] 
    %180 = tensor.empty() : tensor<32x16xf64>
    %cst_61 = arith.constant 0.000000e+00 : f64
    %181 = linalg.fill ins(%cst_61 : f64) outs(%180 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x16xf64> into tensor<16384x16xf64>
    %collapsed_62 = tensor.collapse_shape %transposed_60 [[0], [1, 2, 3]] : tensor<32x16x32x32xf64> into tensor<32x16384xf64>
    %182 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__with_tiling__"} ins(%collapsed_62, %collapsed : tensor<32x16384xf64>, tensor<16384x16xf64>) outs(%181 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %transposed_63 = linalg.transpose ins(%182 : tensor<32x16xf64>) outs(%7 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_63 : tensor<16x32xf64>
  }
  case 4 {
    %178 = tensor.empty() : tensor<16x32x16x32xf64>
    %transposed = linalg.transpose ins(%5 : tensor<16x16x32x32xf64>) outs(%178 : tensor<16x32x16x32xf64>) permutation = [0, 2, 1, 3] 
    %179 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_60 = linalg.transpose ins(%6 : tensor<32x32x16x32xf64>) outs(%179 : tensor<32x16x32x32xf64>) permutation = [0, 2, 1, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x16x32xf64> into tensor<16x16384xf64>
    %collapsed_61 = tensor.collapse_shape %transposed_60 [[0, 1, 2], [3]] : tensor<32x16x32x32xf64> into tensor<16384x32xf64>
    %180 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__with_tiling__"} ins(%collapsed, %collapsed_61 : tensor<16x16384xf64>, tensor<16384x32xf64>) outs(%7 : tensor<16x32xf64>) -> tensor<16x32xf64>
    scf.yield %180 : tensor<16x32xf64>
  }
  case 5 {
    %178 = tensor.empty() : tensor<32x16x32x16xf64>
    %transposed = linalg.transpose ins(%5 : tensor<16x16x32x32xf64>) outs(%178 : tensor<32x16x32x16xf64>) permutation = [2, 1, 3, 0] 
    %179 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_60 = linalg.transpose ins(%6 : tensor<32x32x16x32xf64>) outs(%179 : tensor<32x32x16x32xf64>) permutation = [3, 0, 2, 1] 
    %180 = tensor.empty() : tensor<32x16xf64>
    %cst_61 = arith.constant 0.000000e+00 : f64
    %181 = linalg.fill ins(%cst_61 : f64) outs(%180 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x16x32x16xf64> into tensor<16384x16xf64>
    %collapsed_62 = tensor.collapse_shape %transposed_60 [[0], [1, 2, 3]] : tensor<32x32x16x32xf64> into tensor<32x16384xf64>
    %182 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__with_tiling__"} ins(%collapsed_62, %collapsed : tensor<32x16384xf64>, tensor<16384x16xf64>) outs(%181 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %transposed_63 = linalg.transpose ins(%182 : tensor<32x16xf64>) outs(%7 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_63 : tensor<16x32xf64>
  }
  case 6 {
    %178 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%5 : tensor<16x16x32x32xf64>) outs(%178 : tensor<16x32x32x16xf64>) permutation = [0, 2, 3, 1] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x32x16xf64> into tensor<16x16384xf64>
    %collapsed_60 = tensor.collapse_shape %6 [[0, 1, 2], [3]] : tensor<32x32x16x32xf64> into tensor<16384x32xf64>
    %179 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__with_tiling__"} ins(%collapsed, %collapsed_60 : tensor<16x16384xf64>, tensor<16384x32xf64>) outs(%7 : tensor<16x32xf64>) -> tensor<16x32xf64>
    scf.yield %179 : tensor<16x32xf64>
  }
  case 7 {
    %178 = tensor.empty() : tensor<32x32x16x16xf64>
    %transposed = linalg.transpose ins(%5 : tensor<16x16x32x32xf64>) outs(%178 : tensor<32x32x16x16xf64>) permutation = [2, 3, 1, 0] 
    %179 = tensor.empty() : tensor<32x32x32x16xf64>
    %transposed_60 = linalg.transpose ins(%6 : tensor<32x32x16x32xf64>) outs(%179 : tensor<32x32x32x16xf64>) permutation = [3, 0, 1, 2] 
    %180 = tensor.empty() : tensor<32x16xf64>
    %cst_61 = arith.constant 0.000000e+00 : f64
    %181 = linalg.fill ins(%cst_61 : f64) outs(%180 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x32x16x16xf64> into tensor<16384x16xf64>
    %collapsed_62 = tensor.collapse_shape %transposed_60 [[0], [1, 2, 3]] : tensor<32x32x32x16xf64> into tensor<32x16384xf64>
    %182 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__with_tiling__"} ins(%collapsed_62, %collapsed : tensor<32x16384xf64>, tensor<16384x16xf64>) outs(%181 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %transposed_63 = linalg.transpose ins(%182 : tensor<32x16xf64>) outs(%7 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_63 : tensor<16x32xf64>
  }
  case 8 {
    %178 = tensor.empty() : tensor<16x32x16x32xf64>
    %transposed = linalg.transpose ins(%5 : tensor<16x16x32x32xf64>) outs(%178 : tensor<16x32x16x32xf64>) permutation = [0, 3, 1, 2] 
    %179 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_60 = linalg.transpose ins(%6 : tensor<32x32x16x32xf64>) outs(%179 : tensor<32x16x32x32xf64>) permutation = [1, 2, 0, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x16x32xf64> into tensor<16x16384xf64>
    %collapsed_61 = tensor.collapse_shape %transposed_60 [[0, 1, 2], [3]] : tensor<32x16x32x32xf64> into tensor<16384x32xf64>
    %180 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__with_tiling__"} ins(%collapsed, %collapsed_61 : tensor<16x16384xf64>, tensor<16384x32xf64>) outs(%7 : tensor<16x32xf64>) -> tensor<16x32xf64>
    scf.yield %180 : tensor<16x32xf64>
  }
  case 9 {
    %178 = tensor.empty() : tensor<32x16x32x16xf64>
    %transposed = linalg.transpose ins(%5 : tensor<16x16x32x32xf64>) outs(%178 : tensor<32x16x32x16xf64>) permutation = [3, 1, 2, 0] 
    %179 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_60 = linalg.transpose ins(%6 : tensor<32x32x16x32xf64>) outs(%179 : tensor<32x32x16x32xf64>) permutation = [3, 1, 2, 0] 
    %180 = tensor.empty() : tensor<32x16xf64>
    %cst_61 = arith.constant 0.000000e+00 : f64
    %181 = linalg.fill ins(%cst_61 : f64) outs(%180 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x16x32x16xf64> into tensor<16384x16xf64>
    %collapsed_62 = tensor.collapse_shape %transposed_60 [[0], [1, 2, 3]] : tensor<32x32x16x32xf64> into tensor<32x16384xf64>
    %182 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__with_tiling__"} ins(%collapsed_62, %collapsed : tensor<32x16384xf64>, tensor<16384x16xf64>) outs(%181 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %transposed_63 = linalg.transpose ins(%182 : tensor<32x16xf64>) outs(%7 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_63 : tensor<16x32xf64>
  }
  case 10 {
    %178 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%5 : tensor<16x16x32x32xf64>) outs(%178 : tensor<16x32x32x16xf64>) permutation = [0, 3, 2, 1] 
    %179 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_60 = linalg.transpose ins(%6 : tensor<32x32x16x32xf64>) outs(%179 : tensor<32x32x16x32xf64>) permutation = [1, 0, 2, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x32x16xf64> into tensor<16x16384xf64>
    %collapsed_61 = tensor.collapse_shape %transposed_60 [[0, 1, 2], [3]] : tensor<32x32x16x32xf64> into tensor<16384x32xf64>
    %180 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__with_tiling__"} ins(%collapsed, %collapsed_61 : tensor<16x16384xf64>, tensor<16384x32xf64>) outs(%7 : tensor<16x32xf64>) -> tensor<16x32xf64>
    scf.yield %180 : tensor<16x32xf64>
  }
  case 11 {
    %178 = tensor.empty() : tensor<32x32x16x16xf64>
    %transposed = linalg.transpose ins(%5 : tensor<16x16x32x32xf64>) outs(%178 : tensor<32x32x16x16xf64>) permutation = [3, 2, 1, 0] 
    %179 = tensor.empty() : tensor<32x32x32x16xf64>
    %transposed_60 = linalg.transpose ins(%6 : tensor<32x32x16x32xf64>) outs(%179 : tensor<32x32x32x16xf64>) permutation = [3, 1, 0, 2] 
    %180 = tensor.empty() : tensor<32x16xf64>
    %cst_61 = arith.constant 0.000000e+00 : f64
    %181 = linalg.fill ins(%cst_61 : f64) outs(%180 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x32x16x16xf64> into tensor<16384x16xf64>
    %collapsed_62 = tensor.collapse_shape %transposed_60 [[0], [1, 2, 3]] : tensor<32x32x32x16xf64> into tensor<32x16384xf64>
    %182 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__with_tiling__"} ins(%collapsed_62, %collapsed : tensor<32x16384xf64>, tensor<16384x16xf64>) outs(%181 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %transposed_63 = linalg.transpose ins(%182 : tensor<32x16xf64>) outs(%7 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_63 : tensor<16x32xf64>
  }
  default {
    scf.yield %7 : tensor<16x32xf64>
  }
  "ta.print"(%177) : (tensor<16x32xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LinAlgMatmulTilingPass () //----- //
func.func @main() {
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c8184 = arith.constant 8184 : index
  %c16 = arith.constant 16 : index
  %c16384 = arith.constant 16384 : index
  %c32 = arith.constant 32 : index
  %c0 = arith.constant 0 : index
  %c6 = arith.constant 6 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x32x32xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<16x16x32x32xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<32x32x16x32xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<32x32x16x32xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x32xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<16x32xf64>
  %3 = scf.index_switch %c6 -> tensor<16x32xf64> 
  case 0 {
    %4 = tensor.empty() : tensor<16x32x32x32xf64>
    %transposed = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%4 : tensor<16x32x32x32xf64>) permutation = [2, 0, 1, 3] 
    %collapsed = tensor.collapse_shape %0 [[0], [1, 2, 3]] : tensor<16x16x32x32xf64> into tensor<16x16384xf64>
    %collapsed_4 = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x32xf64> into tensor<16384x32xf64>
    %5 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %6 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %7 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %8 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %9 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%10, %9] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %collapsed_4[%arg2, %arg0] [%9, %8] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
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
          %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %7 : tensor<16x32xf64>
      }
      scf.yield %6 : tensor<16x32xf64>
    }
    scf.yield %5 : tensor<16x32xf64>
  }
  case 1 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [1, 2, 3, 0] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [3, 2, 0, 1] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x16x32x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 2 {
    %4 = tensor.empty() : tensor<16x16x32x32xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x16x32x32xf64>) permutation = [0, 1, 3, 2] 
    %5 = tensor.empty() : tensor<16x32x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<16x32x32x32xf64>) permutation = [2, 1, 0, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x16x32x32xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<16x32x32x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 3 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [1, 3, 2, 0] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [3, 2, 1, 0] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x16x32x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 4 {
    %4 = tensor.empty() : tensor<16x32x16x32xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x16x32xf64>) permutation = [0, 2, 1, 3] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [0, 2, 1, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x16x32xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<32x16x32x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 5 {
    %4 = tensor.empty() : tensor<32x16x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x16x32x16xf64>) permutation = [2, 1, 3, 0] 
    %5 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x16x32xf64>) permutation = [3, 0, 2, 1] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x16x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x16x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 6 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [0, 2, 3, 1] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x32x16xf64> into tensor<16x16384xf64>
    %collapsed_4 = tensor.collapse_shape %1 [[0, 1, 2], [3]] : tensor<32x32x16x32xf64> into tensor<16384x32xf64>
    %5 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %6 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %7 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %8 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %9 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%10, %9] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %collapsed_4[%arg2, %arg0] [%9, %8] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
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
          %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %7 : tensor<16x32xf64>
      }
      scf.yield %6 : tensor<16x32xf64>
    }
    scf.yield %5 : tensor<16x32xf64>
  }
  case 7 {
    %4 = tensor.empty() : tensor<32x32x16x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x32x16x16xf64>) permutation = [2, 3, 1, 0] 
    %5 = tensor.empty() : tensor<32x32x32x16xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x32x16xf64>) permutation = [3, 0, 1, 2] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x32x16x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x32x16xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 8 {
    %4 = tensor.empty() : tensor<16x32x16x32xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x16x32xf64>) permutation = [0, 3, 1, 2] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [1, 2, 0, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x16x32xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<32x16x32x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 9 {
    %4 = tensor.empty() : tensor<32x16x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x16x32x16xf64>) permutation = [3, 1, 2, 0] 
    %5 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x16x32xf64>) permutation = [3, 1, 2, 0] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x16x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x16x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 10 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [0, 3, 2, 1] 
    %5 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x16x32xf64>) permutation = [1, 0, 2, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x32x16xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<32x32x16x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 11 {
    %4 = tensor.empty() : tensor<32x32x16x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x32x16x16xf64>) permutation = [3, 2, 1, 0] 
    %5 = tensor.empty() : tensor<32x32x32x16xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x32x16xf64>) permutation = [3, 1, 0, 2] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x32x16x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x32x16xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  default {
    scf.yield %2 : tensor<16x32xf64>
  }
  "ta.print"(%3) : (tensor<16x32xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func @main() {
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c8184 = arith.constant 8184 : index
  %c16 = arith.constant 16 : index
  %c16384 = arith.constant 16384 : index
  %c32 = arith.constant 32 : index
  %c0 = arith.constant 0 : index
  %c6 = arith.constant 6 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x32x32xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<16x16x32x32xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<32x32x16x32xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<32x32x16x32xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x32xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<16x32xf64>
  %3 = scf.index_switch %c6 -> tensor<16x32xf64> 
  case 0 {
    %4 = tensor.empty() : tensor<16x32x32x32xf64>
    %transposed = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%4 : tensor<16x32x32x32xf64>) permutation = [2, 0, 1, 3] 
    %collapsed = tensor.collapse_shape %0 [[0], [1, 2, 3]] : tensor<16x16x32x32xf64> into tensor<16x16384xf64>
    %collapsed_4 = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x32xf64> into tensor<16384x32xf64>
    %5 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %6 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %7 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %8 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %9 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%10, %9] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %collapsed_4[%arg2, %arg0] [%9, %8] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
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
          %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %7 : tensor<16x32xf64>
      }
      scf.yield %6 : tensor<16x32xf64>
    }
    scf.yield %5 : tensor<16x32xf64>
  }
  case 1 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [1, 2, 3, 0] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [3, 2, 0, 1] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x16x32x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 2 {
    %4 = tensor.empty() : tensor<16x16x32x32xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x16x32x32xf64>) permutation = [0, 1, 3, 2] 
    %5 = tensor.empty() : tensor<16x32x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<16x32x32x32xf64>) permutation = [2, 1, 0, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x16x32x32xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<16x32x32x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 3 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [1, 3, 2, 0] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [3, 2, 1, 0] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x16x32x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 4 {
    %4 = tensor.empty() : tensor<16x32x16x32xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x16x32xf64>) permutation = [0, 2, 1, 3] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [0, 2, 1, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x16x32xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<32x16x32x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 5 {
    %4 = tensor.empty() : tensor<32x16x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x16x32x16xf64>) permutation = [2, 1, 3, 0] 
    %5 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x16x32xf64>) permutation = [3, 0, 2, 1] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x16x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x16x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 6 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [0, 2, 3, 1] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x32x16xf64> into tensor<16x16384xf64>
    %collapsed_4 = tensor.collapse_shape %1 [[0, 1, 2], [3]] : tensor<32x32x16x32xf64> into tensor<16384x32xf64>
    %5 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %6 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %7 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %8 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %9 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%10, %9] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %collapsed_4[%arg2, %arg0] [%9, %8] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
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
          %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %7 : tensor<16x32xf64>
      }
      scf.yield %6 : tensor<16x32xf64>
    }
    scf.yield %5 : tensor<16x32xf64>
  }
  case 7 {
    %4 = tensor.empty() : tensor<32x32x16x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x32x16x16xf64>) permutation = [2, 3, 1, 0] 
    %5 = tensor.empty() : tensor<32x32x32x16xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x32x16xf64>) permutation = [3, 0, 1, 2] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x32x16x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x32x16xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 8 {
    %4 = tensor.empty() : tensor<16x32x16x32xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x16x32xf64>) permutation = [0, 3, 1, 2] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [1, 2, 0, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x16x32xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<32x16x32x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 9 {
    %4 = tensor.empty() : tensor<32x16x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x16x32x16xf64>) permutation = [3, 1, 2, 0] 
    %5 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x16x32xf64>) permutation = [3, 1, 2, 0] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x16x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x16x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 10 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [0, 3, 2, 1] 
    %5 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x16x32xf64>) permutation = [1, 0, 2, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x32x16xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<32x32x16x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 11 {
    %4 = tensor.empty() : tensor<32x32x16x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x32x16x16xf64>) permutation = [3, 2, 1, 0] 
    %5 = tensor.empty() : tensor<32x32x32x16xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x32x16xf64>) permutation = [3, 1, 0, 2] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x32x16x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x32x16xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  default {
    scf.yield %2 : tensor<16x32xf64>
  }
  "ta.print"(%3) : (tensor<16x32xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func @main() {
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c8184 = arith.constant 8184 : index
  %c16 = arith.constant 16 : index
  %c16384 = arith.constant 16384 : index
  %c32 = arith.constant 32 : index
  %c0 = arith.constant 0 : index
  %c6 = arith.constant 6 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x32x32xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<16x16x32x32xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<32x32x16x32xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<32x32x16x32xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x32xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<16x32xf64>
  %3 = scf.index_switch %c6 -> tensor<16x32xf64> 
  case 0 {
    %4 = tensor.empty() : tensor<16x32x32x32xf64>
    %transposed = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%4 : tensor<16x32x32x32xf64>) permutation = [2, 0, 1, 3] 
    %collapsed = tensor.collapse_shape %0 [[0], [1, 2, 3]] : tensor<16x16x32x32xf64> into tensor<16x16384xf64>
    %collapsed_4 = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x32xf64> into tensor<16384x32xf64>
    %5 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %6 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %7 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %8 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %9 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%10, %9] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %collapsed_4[%arg2, %arg0] [%9, %8] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
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
          %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %7 : tensor<16x32xf64>
      }
      scf.yield %6 : tensor<16x32xf64>
    }
    scf.yield %5 : tensor<16x32xf64>
  }
  case 1 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [1, 2, 3, 0] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [3, 2, 0, 1] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x16x32x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 2 {
    %4 = tensor.empty() : tensor<16x16x32x32xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x16x32x32xf64>) permutation = [0, 1, 3, 2] 
    %5 = tensor.empty() : tensor<16x32x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<16x32x32x32xf64>) permutation = [2, 1, 0, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x16x32x32xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<16x32x32x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 3 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [1, 3, 2, 0] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [3, 2, 1, 0] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x16x32x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 4 {
    %4 = tensor.empty() : tensor<16x32x16x32xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x16x32xf64>) permutation = [0, 2, 1, 3] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [0, 2, 1, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x16x32xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<32x16x32x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 5 {
    %4 = tensor.empty() : tensor<32x16x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x16x32x16xf64>) permutation = [2, 1, 3, 0] 
    %5 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x16x32xf64>) permutation = [3, 0, 2, 1] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x16x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x16x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 6 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [0, 2, 3, 1] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x32x16xf64> into tensor<16x16384xf64>
    %collapsed_4 = tensor.collapse_shape %1 [[0, 1, 2], [3]] : tensor<32x32x16x32xf64> into tensor<16384x32xf64>
    %5 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %6 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %7 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %8 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %9 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%10, %9] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %collapsed_4[%arg2, %arg0] [%9, %8] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
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
          %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %7 : tensor<16x32xf64>
      }
      scf.yield %6 : tensor<16x32xf64>
    }
    scf.yield %5 : tensor<16x32xf64>
  }
  case 7 {
    %4 = tensor.empty() : tensor<32x32x16x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x32x16x16xf64>) permutation = [2, 3, 1, 0] 
    %5 = tensor.empty() : tensor<32x32x32x16xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x32x16xf64>) permutation = [3, 0, 1, 2] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x32x16x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x32x16xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 8 {
    %4 = tensor.empty() : tensor<16x32x16x32xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x16x32xf64>) permutation = [0, 3, 1, 2] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [1, 2, 0, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x16x32xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<32x16x32x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 9 {
    %4 = tensor.empty() : tensor<32x16x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x16x32x16xf64>) permutation = [3, 1, 2, 0] 
    %5 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x16x32xf64>) permutation = [3, 1, 2, 0] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x16x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x16x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 10 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [0, 3, 2, 1] 
    %5 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x16x32xf64>) permutation = [1, 0, 2, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x32x16xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<32x32x16x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 11 {
    %4 = tensor.empty() : tensor<32x32x16x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x32x16x16xf64>) permutation = [3, 2, 1, 0] 
    %5 = tensor.empty() : tensor<32x32x32x16xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x32x16xf64>) permutation = [3, 1, 0, 2] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x32x16x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x32x16xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  default {
    scf.yield %2 : tensor<16x32xf64>
  }
  "ta.print"(%3) : (tensor<16x32xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func @main() {
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c8184 = arith.constant 8184 : index
  %c16 = arith.constant 16 : index
  %c16384 = arith.constant 16384 : index
  %c32 = arith.constant 32 : index
  %c0 = arith.constant 0 : index
  %c6 = arith.constant 6 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x32x32xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<16x16x32x32xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<32x32x16x32xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<32x32x16x32xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x32xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<16x32xf64>
  %3 = scf.index_switch %c6 -> tensor<16x32xf64> 
  case 0 {
    %4 = tensor.empty() : tensor<16x32x32x32xf64>
    %transposed = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%4 : tensor<16x32x32x32xf64>) permutation = [2, 0, 1, 3] 
    %collapsed = tensor.collapse_shape %0 [[0], [1, 2, 3]] : tensor<16x16x32x32xf64> into tensor<16x16384xf64>
    %collapsed_4 = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x32xf64> into tensor<16384x32xf64>
    %5 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %6 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %7 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %8 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %9 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%10, %9] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %collapsed_4[%arg2, %arg0] [%9, %8] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
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
          %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %7 : tensor<16x32xf64>
      }
      scf.yield %6 : tensor<16x32xf64>
    }
    scf.yield %5 : tensor<16x32xf64>
  }
  case 1 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [1, 2, 3, 0] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [3, 2, 0, 1] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x16x32x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 2 {
    %4 = tensor.empty() : tensor<16x16x32x32xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x16x32x32xf64>) permutation = [0, 1, 3, 2] 
    %5 = tensor.empty() : tensor<16x32x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<16x32x32x32xf64>) permutation = [2, 1, 0, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x16x32x32xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<16x32x32x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 3 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [1, 3, 2, 0] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [3, 2, 1, 0] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x16x32x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 4 {
    %4 = tensor.empty() : tensor<16x32x16x32xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x16x32xf64>) permutation = [0, 2, 1, 3] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [0, 2, 1, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x16x32xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<32x16x32x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 5 {
    %4 = tensor.empty() : tensor<32x16x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x16x32x16xf64>) permutation = [2, 1, 3, 0] 
    %5 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x16x32xf64>) permutation = [3, 0, 2, 1] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x16x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x16x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 6 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [0, 2, 3, 1] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x32x16xf64> into tensor<16x16384xf64>
    %collapsed_4 = tensor.collapse_shape %1 [[0, 1, 2], [3]] : tensor<32x32x16x32xf64> into tensor<16384x32xf64>
    %5 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %6 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %7 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %8 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %9 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%10, %9] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %collapsed_4[%arg2, %arg0] [%9, %8] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
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
          %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %7 : tensor<16x32xf64>
      }
      scf.yield %6 : tensor<16x32xf64>
    }
    scf.yield %5 : tensor<16x32xf64>
  }
  case 7 {
    %4 = tensor.empty() : tensor<32x32x16x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x32x16x16xf64>) permutation = [2, 3, 1, 0] 
    %5 = tensor.empty() : tensor<32x32x32x16xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x32x16xf64>) permutation = [3, 0, 1, 2] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x32x16x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x32x16xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 8 {
    %4 = tensor.empty() : tensor<16x32x16x32xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x16x32xf64>) permutation = [0, 3, 1, 2] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [1, 2, 0, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x16x32xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<32x16x32x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 9 {
    %4 = tensor.empty() : tensor<32x16x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x16x32x16xf64>) permutation = [3, 1, 2, 0] 
    %5 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x16x32xf64>) permutation = [3, 1, 2, 0] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x16x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x16x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 10 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [0, 3, 2, 1] 
    %5 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x16x32xf64>) permutation = [1, 0, 2, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x32x16xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<32x32x16x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 11 {
    %4 = tensor.empty() : tensor<32x32x16x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x32x16x16xf64>) permutation = [3, 2, 1, 0] 
    %5 = tensor.empty() : tensor<32x32x32x16xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x32x16xf64>) permutation = [3, 1, 0, 2] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x32x16x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x32x16xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  default {
    scf.yield %2 : tensor<16x32xf64>
  }
  "ta.print"(%3) : (tensor<16x32xf64>) -> ()
  return
}

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func @main() {
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c8184 = arith.constant 8184 : index
  %c16 = arith.constant 16 : index
  %c16384 = arith.constant 16384 : index
  %c32 = arith.constant 32 : index
  %c0 = arith.constant 0 : index
  %c6 = arith.constant 6 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x32x32xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<16x16x32x32xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<32x32x16x32xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<32x32x16x32xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x32xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<16x32xf64>
  %3 = scf.index_switch %c6 -> tensor<16x32xf64> 
  case 0 {
    %4 = tensor.empty() : tensor<16x32x32x32xf64>
    %transposed = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%4 : tensor<16x32x32x32xf64>) permutation = [2, 0, 1, 3] 
    %collapsed = tensor.collapse_shape %0 [[0], [1, 2, 3]] : tensor<16x16x32x32xf64> into tensor<16x16384xf64>
    %collapsed_4 = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x32xf64> into tensor<16384x32xf64>
    %5 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %6 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %7 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %8 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %9 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%10, %9] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %collapsed_4[%arg2, %arg0] [%9, %8] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
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
          %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %7 : tensor<16x32xf64>
      }
      scf.yield %6 : tensor<16x32xf64>
    }
    scf.yield %5 : tensor<16x32xf64>
  }
  case 1 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [1, 2, 3, 0] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [3, 2, 0, 1] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x16x32x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 2 {
    %4 = tensor.empty() : tensor<16x16x32x32xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x16x32x32xf64>) permutation = [0, 1, 3, 2] 
    %5 = tensor.empty() : tensor<16x32x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<16x32x32x32xf64>) permutation = [2, 1, 0, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x16x32x32xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<16x32x32x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 3 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [1, 3, 2, 0] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [3, 2, 1, 0] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x16x32x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 4 {
    %4 = tensor.empty() : tensor<16x32x16x32xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x16x32xf64>) permutation = [0, 2, 1, 3] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [0, 2, 1, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x16x32xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<32x16x32x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 5 {
    %4 = tensor.empty() : tensor<32x16x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x16x32x16xf64>) permutation = [2, 1, 3, 0] 
    %5 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x16x32xf64>) permutation = [3, 0, 2, 1] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x16x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x16x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 6 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [0, 2, 3, 1] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x32x16xf64> into tensor<16x16384xf64>
    %collapsed_4 = tensor.collapse_shape %1 [[0, 1, 2], [3]] : tensor<32x32x16x32xf64> into tensor<16384x32xf64>
    %5 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %6 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %7 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %8 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %9 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%10, %9] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %collapsed_4[%arg2, %arg0] [%9, %8] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
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
          %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %7 : tensor<16x32xf64>
      }
      scf.yield %6 : tensor<16x32xf64>
    }
    scf.yield %5 : tensor<16x32xf64>
  }
  case 7 {
    %4 = tensor.empty() : tensor<32x32x16x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x32x16x16xf64>) permutation = [2, 3, 1, 0] 
    %5 = tensor.empty() : tensor<32x32x32x16xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x32x16xf64>) permutation = [3, 0, 1, 2] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x32x16x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x32x16xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 8 {
    %4 = tensor.empty() : tensor<16x32x16x32xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x16x32xf64>) permutation = [0, 3, 1, 2] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [1, 2, 0, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x16x32xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<32x16x32x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 9 {
    %4 = tensor.empty() : tensor<32x16x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x16x32x16xf64>) permutation = [3, 1, 2, 0] 
    %5 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x16x32xf64>) permutation = [3, 1, 2, 0] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x16x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x16x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 10 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [0, 3, 2, 1] 
    %5 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x16x32xf64>) permutation = [1, 0, 2, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x32x16xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<32x32x16x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 11 {
    %4 = tensor.empty() : tensor<32x32x16x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x32x16x16xf64>) permutation = [3, 2, 1, 0] 
    %5 = tensor.empty() : tensor<32x32x32x16xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x32x16xf64>) permutation = [3, 1, 0, 2] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x32x16x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x32x16xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  default {
    scf.yield %2 : tensor<16x32xf64>
  }
  "ta.print"(%3) : (tensor<16x32xf64>) -> ()
  return
}

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func @main() {
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c8184 = arith.constant 8184 : index
  %c16 = arith.constant 16 : index
  %c16384 = arith.constant 16384 : index
  %c32 = arith.constant 32 : index
  %c0 = arith.constant 0 : index
  %c6 = arith.constant 6 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x32x32xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<16x16x32x32xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<32x32x16x32xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<32x32x16x32xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x32xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<16x32xf64>
  %3 = scf.index_switch %c6 -> tensor<16x32xf64> 
  case 0 {
    %4 = tensor.empty() : tensor<16x32x32x32xf64>
    %transposed = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%4 : tensor<16x32x32x32xf64>) permutation = [2, 0, 1, 3] 
    %collapsed = tensor.collapse_shape %0 [[0], [1, 2, 3]] : tensor<16x16x32x32xf64> into tensor<16x16384xf64>
    %collapsed_4 = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x32xf64> into tensor<16384x32xf64>
    %5 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %6 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %7 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %8 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %9 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%10, %9] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %collapsed_4[%arg2, %arg0] [%9, %8] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
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
          %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %7 : tensor<16x32xf64>
      }
      scf.yield %6 : tensor<16x32xf64>
    }
    scf.yield %5 : tensor<16x32xf64>
  }
  case 1 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [1, 2, 3, 0] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [3, 2, 0, 1] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x16x32x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 2 {
    %4 = tensor.empty() : tensor<16x16x32x32xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x16x32x32xf64>) permutation = [0, 1, 3, 2] 
    %5 = tensor.empty() : tensor<16x32x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<16x32x32x32xf64>) permutation = [2, 1, 0, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x16x32x32xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<16x32x32x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 3 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [1, 3, 2, 0] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [3, 2, 1, 0] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x16x32x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 4 {
    %4 = tensor.empty() : tensor<16x32x16x32xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x16x32xf64>) permutation = [0, 2, 1, 3] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [0, 2, 1, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x16x32xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<32x16x32x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 5 {
    %4 = tensor.empty() : tensor<32x16x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x16x32x16xf64>) permutation = [2, 1, 3, 0] 
    %5 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x16x32xf64>) permutation = [3, 0, 2, 1] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x16x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x16x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 6 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [0, 2, 3, 1] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x32x16xf64> into tensor<16x16384xf64>
    %collapsed_4 = tensor.collapse_shape %1 [[0, 1, 2], [3]] : tensor<32x32x16x32xf64> into tensor<16384x32xf64>
    %5 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %6 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %7 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %8 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %9 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%10, %9] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %collapsed_4[%arg2, %arg0] [%9, %8] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
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
          %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %7 : tensor<16x32xf64>
      }
      scf.yield %6 : tensor<16x32xf64>
    }
    scf.yield %5 : tensor<16x32xf64>
  }
  case 7 {
    %4 = tensor.empty() : tensor<32x32x16x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x32x16x16xf64>) permutation = [2, 3, 1, 0] 
    %5 = tensor.empty() : tensor<32x32x32x16xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x32x16xf64>) permutation = [3, 0, 1, 2] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x32x16x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x32x16xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 8 {
    %4 = tensor.empty() : tensor<16x32x16x32xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x16x32xf64>) permutation = [0, 3, 1, 2] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [1, 2, 0, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x16x32xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<32x16x32x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 9 {
    %4 = tensor.empty() : tensor<32x16x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x16x32x16xf64>) permutation = [3, 1, 2, 0] 
    %5 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x16x32xf64>) permutation = [3, 1, 2, 0] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x16x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x16x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 10 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [0, 3, 2, 1] 
    %5 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x16x32xf64>) permutation = [1, 0, 2, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x32x16xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<32x32x16x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 11 {
    %4 = tensor.empty() : tensor<32x32x16x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x32x16x16xf64>) permutation = [3, 2, 1, 0] 
    %5 = tensor.empty() : tensor<32x32x32x16xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x32x16xf64>) permutation = [3, 1, 0, 2] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x32x16x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x32x16xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  default {
    scf.yield %2 : tensor<16x32xf64>
  }
  "ta.print"(%3) : (tensor<16x32xf64>) -> ()
  return
}

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func @main() {
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c8184 = arith.constant 8184 : index
  %c16 = arith.constant 16 : index
  %c16384 = arith.constant 16384 : index
  %c32 = arith.constant 32 : index
  %c0 = arith.constant 0 : index
  %c6 = arith.constant 6 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x32x32xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<16x16x32x32xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<32x32x16x32xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<32x32x16x32xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x32xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<16x32xf64>
  %3 = scf.index_switch %c6 -> tensor<16x32xf64> 
  case 0 {
    %4 = tensor.empty() : tensor<16x32x32x32xf64>
    %transposed = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%4 : tensor<16x32x32x32xf64>) permutation = [2, 0, 1, 3] 
    %collapsed = tensor.collapse_shape %0 [[0], [1, 2, 3]] : tensor<16x16x32x32xf64> into tensor<16x16384xf64>
    %collapsed_4 = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x32xf64> into tensor<16384x32xf64>
    %5 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %6 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %7 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %8 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %9 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%10, %9] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %collapsed_4[%arg2, %arg0] [%9, %8] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
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
          %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %7 : tensor<16x32xf64>
      }
      scf.yield %6 : tensor<16x32xf64>
    }
    scf.yield %5 : tensor<16x32xf64>
  }
  case 1 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [1, 2, 3, 0] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [3, 2, 0, 1] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x16x32x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 2 {
    %4 = tensor.empty() : tensor<16x16x32x32xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x16x32x32xf64>) permutation = [0, 1, 3, 2] 
    %5 = tensor.empty() : tensor<16x32x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<16x32x32x32xf64>) permutation = [2, 1, 0, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x16x32x32xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<16x32x32x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 3 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [1, 3, 2, 0] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [3, 2, 1, 0] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x16x32x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 4 {
    %4 = tensor.empty() : tensor<16x32x16x32xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x16x32xf64>) permutation = [0, 2, 1, 3] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [0, 2, 1, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x16x32xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<32x16x32x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 5 {
    %4 = tensor.empty() : tensor<32x16x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x16x32x16xf64>) permutation = [2, 1, 3, 0] 
    %5 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x16x32xf64>) permutation = [3, 0, 2, 1] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x16x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x16x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 6 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [0, 2, 3, 1] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x32x16xf64> into tensor<16x16384xf64>
    %collapsed_4 = tensor.collapse_shape %1 [[0, 1, 2], [3]] : tensor<32x32x16x32xf64> into tensor<16384x32xf64>
    %5 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %6 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %7 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %8 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %9 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%10, %9] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %collapsed_4[%arg2, %arg0] [%9, %8] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
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
          %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %7 : tensor<16x32xf64>
      }
      scf.yield %6 : tensor<16x32xf64>
    }
    scf.yield %5 : tensor<16x32xf64>
  }
  case 7 {
    %4 = tensor.empty() : tensor<32x32x16x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x32x16x16xf64>) permutation = [2, 3, 1, 0] 
    %5 = tensor.empty() : tensor<32x32x32x16xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x32x16xf64>) permutation = [3, 0, 1, 2] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x32x16x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x32x16xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 8 {
    %4 = tensor.empty() : tensor<16x32x16x32xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x16x32xf64>) permutation = [0, 3, 1, 2] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [1, 2, 0, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x16x32xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<32x16x32x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 9 {
    %4 = tensor.empty() : tensor<32x16x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x16x32x16xf64>) permutation = [3, 1, 2, 0] 
    %5 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x16x32xf64>) permutation = [3, 1, 2, 0] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x16x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x16x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 10 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [0, 3, 2, 1] 
    %5 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x16x32xf64>) permutation = [1, 0, 2, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x32x16xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<32x32x16x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 11 {
    %4 = tensor.empty() : tensor<32x32x16x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x32x16x16xf64>) permutation = [3, 2, 1, 0] 
    %5 = tensor.empty() : tensor<32x32x32x16xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x32x16xf64>) permutation = [3, 1, 0, 2] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x32x16x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x32x16xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  default {
    scf.yield %2 : tensor<16x32xf64>
  }
  "ta.print"(%3) : (tensor<16x32xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func @main() {
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c8184 = arith.constant 8184 : index
  %c16 = arith.constant 16 : index
  %c16384 = arith.constant 16384 : index
  %c32 = arith.constant 32 : index
  %c0 = arith.constant 0 : index
  %c6 = arith.constant 6 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x32x32xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<16x16x32x32xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<32x32x16x32xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<32x32x16x32xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x32xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<16x32xf64>
  %3 = scf.index_switch %c6 -> tensor<16x32xf64> 
  case 0 {
    %4 = tensor.empty() : tensor<16x32x32x32xf64>
    %transposed = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%4 : tensor<16x32x32x32xf64>) permutation = [2, 0, 1, 3] 
    %collapsed = tensor.collapse_shape %0 [[0], [1, 2, 3]] : tensor<16x16x32x32xf64> into tensor<16x16384xf64>
    %collapsed_4 = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x32xf64> into tensor<16384x32xf64>
    %5 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %6 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %7 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %8 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %9 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%10, %9] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %collapsed_4[%arg2, %arg0] [%9, %8] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
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
          %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %7 : tensor<16x32xf64>
      }
      scf.yield %6 : tensor<16x32xf64>
    }
    scf.yield %5 : tensor<16x32xf64>
  }
  case 1 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [1, 2, 3, 0] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [3, 2, 0, 1] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x16x32x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 2 {
    %4 = tensor.empty() : tensor<16x16x32x32xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x16x32x32xf64>) permutation = [0, 1, 3, 2] 
    %5 = tensor.empty() : tensor<16x32x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<16x32x32x32xf64>) permutation = [2, 1, 0, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x16x32x32xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<16x32x32x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 3 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [1, 3, 2, 0] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [3, 2, 1, 0] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<16x32x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x16x32x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 4 {
    %4 = tensor.empty() : tensor<16x32x16x32xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x16x32xf64>) permutation = [0, 2, 1, 3] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [0, 2, 1, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x16x32xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<32x16x32x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 5 {
    %4 = tensor.empty() : tensor<32x16x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x16x32x16xf64>) permutation = [2, 1, 3, 0] 
    %5 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x16x32xf64>) permutation = [3, 0, 2, 1] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x16x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x16x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 6 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [0, 2, 3, 1] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x32x16xf64> into tensor<16x16384xf64>
    %collapsed_4 = tensor.collapse_shape %1 [[0, 1, 2], [3]] : tensor<32x32x16x32xf64> into tensor<16384x32xf64>
    %5 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %6 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %7 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %8 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %9 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%10, %9] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %collapsed_4[%arg2, %arg0] [%9, %8] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
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
          %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [%10, %8] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %7 : tensor<16x32xf64>
      }
      scf.yield %6 : tensor<16x32xf64>
    }
    scf.yield %5 : tensor<16x32xf64>
  }
  case 7 {
    %4 = tensor.empty() : tensor<32x32x16x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x32x16x16xf64>) permutation = [2, 3, 1, 0] 
    %5 = tensor.empty() : tensor<32x32x32x16xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x32x16xf64>) permutation = [3, 0, 1, 2] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x32x16x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x32x16xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 8 {
    %4 = tensor.empty() : tensor<16x32x16x32xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x16x32xf64>) permutation = [0, 3, 1, 2] 
    %5 = tensor.empty() : tensor<32x16x32x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x16x32x32xf64>) permutation = [1, 2, 0, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x16x32xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<32x16x32x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 9 {
    %4 = tensor.empty() : tensor<32x16x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x16x32x16xf64>) permutation = [3, 1, 2, 0] 
    %5 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x16x32xf64>) permutation = [3, 1, 2, 0] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x16x32x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x16x32xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  case 10 {
    %4 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<16x32x32x16xf64>) permutation = [0, 3, 2, 1] 
    %5 = tensor.empty() : tensor<32x32x16x32xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x16x32xf64>) permutation = [1, 0, 2, 3] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x32x16xf64> into tensor<16x16384xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0, 1, 2], [3]] : tensor<32x32x16x32xf64> into tensor<16384x32xf64>
    %6 = scf.for %arg0 = %c0 to %c32 step %c8184 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %7 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<16x32xf64>) {
        %8 = scf.for %arg4 = %c0 to %c16 step %c256 iter_args(%arg5 = %arg3) -> (tensor<16x32xf64>) {
          %9 = affine.min affine_map<(d0) -> (-d0 + 32, 8184)>(%arg0)
          %10 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed[%arg4, %arg2] [%11, %10] [1, 1] : tensor<16x16384xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %collapsed_5[%arg2, %arg0] [%10, %9] [1, 1] : tensor<16384x32xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%9, %11, %10) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<?x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%9]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%11]
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%10]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%14, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%15, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %16 into %arg9[%arg7, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [%11, %9] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
          scf.yield %inserted_slice : tensor<16x32xf64>
        }
        scf.yield %8 : tensor<16x32xf64>
      }
      scf.yield %7 : tensor<16x32xf64>
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  case 11 {
    %4 = tensor.empty() : tensor<32x32x16x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%4 : tensor<32x32x16x16xf64>) permutation = [3, 2, 1, 0] 
    %5 = tensor.empty() : tensor<32x32x32x16xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<32x32x16x32xf64>) outs(%5 : tensor<32x32x32x16xf64>) permutation = [3, 1, 0, 2] 
    %6 = tensor.empty() : tensor<32x16xf64>
    %7 = linalg.fill ins(%cst : f64) outs(%6 : tensor<32x16xf64>) -> tensor<32x16xf64>
    %collapsed = tensor.collapse_shape %transposed [[0, 1, 2], [3]] : tensor<32x32x16x16xf64> into tensor<16384x16xf64>
    %collapsed_5 = tensor.collapse_shape %transposed_4 [[0], [1, 2, 3]] : tensor<32x32x32x16xf64> into tensor<32x16384xf64>
    %8 = scf.for %arg0 = %c0 to %c16 step %c8184 iter_args(%arg1 = %7) -> (tensor<32x16xf64>) {
      %9 = scf.for %arg2 = %c0 to %c16384 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<32x16xf64>) {
        %10 = scf.for %arg4 = %c0 to %c32 step %c256 iter_args(%arg5 = %arg3) -> (tensor<32x16xf64>) {
          %11 = affine.min affine_map<(d0) -> (-d0 + 16, 8184)>(%arg0)
          %12 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg2)
          %13 = affine.min affine_map<(d0) -> (-d0 + 32, 256)>(%arg4)
          %extracted_slice = tensor.extract_slice %collapsed_5[%arg4, %arg2] [%13, %12] [1, 1] : tensor<32x16384xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %collapsed[%arg2, %arg0] [%12, %11] [1, 1] : tensor<16384x16xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<32x16xf64> to tensor<?x?xf64>
          %14 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%11, %13, %12) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<?x?xf64>) {
            %15 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%11]
            %16 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 8)>(%arg7)[%13]
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%12]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [%16, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%17, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<?x?xf64>) -> tensor<?x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %18 into %arg9[%arg7, %arg6] [%16, %15] [1, 1] : tensor<?x?xf64> into tensor<?x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [%13, %11] [1, 1] : tensor<?x?xf64> into tensor<32x16xf64>
          scf.yield %inserted_slice : tensor<32x16xf64>
        }
        scf.yield %10 : tensor<32x16xf64>
      }
      scf.yield %9 : tensor<32x16xf64>
    }
    %transposed_6 = linalg.transpose ins(%8 : tensor<32x16xf64>) outs(%2 : tensor<16x32xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<16x32xf64>
  }
  default {
    scf.yield %2 : tensor<16x32xf64>
  }
  "ta.print"(%3) : (tensor<16x32xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %c3072 = arith.constant 3072 : index
  %c16384 = arith.constant 16384 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x32x32xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<16x16x32x32xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<32x32x16x32xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<32x32x16x32xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x32xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<16x32xf64>
  %3 = tensor.empty() : tensor<16x32x32x16xf64>
  %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%3 : tensor<16x32x32x16xf64>) permutation = [0, 2, 3, 1] 
  %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x32x16xf64> into tensor<16x16384xf64>
  %collapsed_4 = tensor.collapse_shape %1 [[0, 1, 2], [3]] : tensor<32x32x16x32xf64> into tensor<16384x32xf64>
  %4 = scf.for %arg0 = %c0 to %c16384 step %c3072 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
    %5 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg0)
    %extracted_slice = tensor.extract_slice %collapsed[0, %arg0] [16, %5] [1, 1] : tensor<16x16384xf64> to tensor<16x?xf64>
    %extracted_slice_5 = tensor.extract_slice %collapsed_4[%arg0, 0] [%5, 32] [1, 1] : tensor<16384x32xf64> to tensor<?x32xf64>
    %6 = scf.forall (%arg2, %arg3, %arg4) = (0, 0, 0) to (32, 16, %5) step (6, 8, 3072) shared_outs(%arg5 = %arg1) -> (tensor<16x32xf64>) {
      %7 = affine.min affine_map<(d0) -> (-d0 + 32, 6)>(%arg2)
      %8 = affine.min affine_map<(d0) -> (-d0 + 16, 8)>(%arg3)
      %9 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg4)[%5]
      %extracted_slice_6 = tensor.extract_slice %extracted_slice[%arg3, %arg4] [%8, %9] [1, 1] : tensor<16x?xf64> to tensor<?x?xf64>
      %extracted_slice_7 = tensor.extract_slice %extracted_slice_5[%arg4, %arg2] [%9, %7] [1, 1] : tensor<?x32xf64> to tensor<?x?xf64>
      %extracted_slice_8 = tensor.extract_slice %arg5[%arg3, %arg2] [%8, %7] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
      %10 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_6, %extracted_slice_7 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_8 : tensor<?x?xf64>) -> tensor<?x?xf64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %10 into %arg5[%arg3, %arg2] [%8, %7] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
      }
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  "ta.print"(%4) : (tensor<16x32xf64>) -> ()
  return
}

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func @main() {
  %c3072 = arith.constant 3072 : index
  %c16384 = arith.constant 16384 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x32x32xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<16x16x32x32xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<32x32x16x32xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<32x32x16x32xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x32xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<16x32xf64>
  %3 = tensor.empty() : tensor<16x32x32x16xf64>
  %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%3 : tensor<16x32x32x16xf64>) permutation = [0, 2, 3, 1] 
  %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x32x16xf64> into tensor<16x16384xf64>
  %collapsed_4 = tensor.collapse_shape %1 [[0, 1, 2], [3]] : tensor<32x32x16x32xf64> into tensor<16384x32xf64>
  %4 = scf.for %arg0 = %c0 to %c16384 step %c3072 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
    %5 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg0)
    %extracted_slice = tensor.extract_slice %collapsed[0, %arg0] [16, %5] [1, 1] : tensor<16x16384xf64> to tensor<16x?xf64>
    %extracted_slice_5 = tensor.extract_slice %collapsed_4[%arg0, 0] [%5, 32] [1, 1] : tensor<16384x32xf64> to tensor<?x32xf64>
    %6 = scf.forall (%arg2, %arg3, %arg4) = (0, 0, 0) to (32, 16, %5) step (6, 8, 3072) shared_outs(%arg5 = %arg1) -> (tensor<16x32xf64>) {
      %7 = affine.min affine_map<(d0) -> (-d0 + 32, 6)>(%arg2)
      %8 = affine.min affine_map<(d0) -> (-d0 + 16, 8)>(%arg3)
      %9 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg4)[%5]
      %extracted_slice_6 = tensor.extract_slice %extracted_slice[%arg3, %arg4] [%8, %9] [1, 1] : tensor<16x?xf64> to tensor<?x?xf64>
      %extracted_slice_7 = tensor.extract_slice %extracted_slice_5[%arg4, %arg2] [%9, %7] [1, 1] : tensor<?x32xf64> to tensor<?x?xf64>
      %extracted_slice_8 = tensor.extract_slice %arg5[%arg3, %arg2] [%8, %7] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
      %10 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_6, %extracted_slice_7 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_8 : tensor<?x?xf64>) -> tensor<?x?xf64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %10 into %arg5[%arg3, %arg2] [%8, %7] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
      }
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  "ta.print"(%4) : (tensor<16x32xf64>) -> ()
  return
}

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func @main() {
  %c3072 = arith.constant 3072 : index
  %c16384 = arith.constant 16384 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x32x32xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<16x16x32x32xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<32x32x16x32xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<32x32x16x32xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x32xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<16x32xf64>
  %3 = tensor.empty() : tensor<16x32x32x16xf64>
  %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%3 : tensor<16x32x32x16xf64>) permutation = [0, 2, 3, 1] 
  %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x32x16xf64> into tensor<16x16384xf64>
  %collapsed_4 = tensor.collapse_shape %1 [[0, 1, 2], [3]] : tensor<32x32x16x32xf64> into tensor<16384x32xf64>
  %4 = scf.for %arg0 = %c0 to %c16384 step %c3072 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
    %5 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg0)
    %extracted_slice = tensor.extract_slice %collapsed[0, %arg0] [16, %5] [1, 1] : tensor<16x16384xf64> to tensor<16x?xf64>
    %extracted_slice_5 = tensor.extract_slice %collapsed_4[%arg0, 0] [%5, 32] [1, 1] : tensor<16384x32xf64> to tensor<?x32xf64>
    %6 = scf.forall (%arg2, %arg3, %arg4) = (0, 0, 0) to (32, 16, %5) step (6, 8, 3072) shared_outs(%arg5 = %arg1) -> (tensor<16x32xf64>) {
      %7 = affine.min affine_map<(d0) -> (-d0 + 32, 6)>(%arg2)
      %8 = affine.min affine_map<(d0) -> (-d0 + 16, 8)>(%arg3)
      %9 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg4)[%5]
      %extracted_slice_6 = tensor.extract_slice %extracted_slice[%arg3, %arg4] [%8, %9] [1, 1] : tensor<16x?xf64> to tensor<?x?xf64>
      %extracted_slice_7 = tensor.extract_slice %extracted_slice_5[%arg4, %arg2] [%9, %7] [1, 1] : tensor<?x32xf64> to tensor<?x?xf64>
      %extracted_slice_8 = tensor.extract_slice %arg5[%arg3, %arg2] [%8, %7] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
      %10 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_6, %extracted_slice_7 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_8 : tensor<?x?xf64>) -> tensor<?x?xf64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %10 into %arg5[%arg3, %arg2] [%8, %7] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
      }
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  "ta.print"(%4) : (tensor<16x32xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %c3072 = arith.constant 3072 : index
  %c16384 = arith.constant 16384 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x32x32xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<16x16x32x32xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<32x32x16x32xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<32x32x16x32xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x32xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<16x32xf64>
  %3 = tensor.empty() : tensor<16x32x32x16xf64>
  %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%3 : tensor<16x32x32x16xf64>) permutation = [0, 2, 3, 1] 
  %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x32x16xf64> into tensor<16x16384xf64>
  %collapsed_4 = tensor.collapse_shape %1 [[0, 1, 2], [3]] : tensor<32x32x16x32xf64> into tensor<16384x32xf64>
  %4 = scf.for %arg0 = %c0 to %c16384 step %c3072 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
    %5 = affine.min affine_map<(d0) -> (-d0 + 16384, 3072)>(%arg0)
    %extracted_slice = tensor.extract_slice %collapsed[0, %arg0] [16, %5] [1, 1] : tensor<16x16384xf64> to tensor<16x?xf64>
    %extracted_slice_5 = tensor.extract_slice %collapsed_4[%arg0, 0] [%5, 32] [1, 1] : tensor<16384x32xf64> to tensor<?x32xf64>
    %6 = scf.forall (%arg2, %arg3, %arg4) = (0, 0, 0) to (32, 16, %5) step (6, 8, 3072) shared_outs(%arg5 = %arg1) -> (tensor<16x32xf64>) {
      %7 = affine.min affine_map<(d0) -> (-d0 + 32, 6)>(%arg2)
      %8 = affine.min affine_map<(d0) -> (-d0 + 16, 8)>(%arg3)
      %9 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg4)[%5]
      %extracted_slice_6 = tensor.extract_slice %extracted_slice[%arg3, %arg4] [%8, %9] [1, 1] : tensor<16x?xf64> to tensor<?x?xf64>
      %extracted_slice_7 = tensor.extract_slice %extracted_slice_5[%arg4, %arg2] [%9, %7] [1, 1] : tensor<?x32xf64> to tensor<?x?xf64>
      %extracted_slice_8 = tensor.extract_slice %arg5[%arg3, %arg2] [%8, %7] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
      %10 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_6, %extracted_slice_7 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_8 : tensor<?x?xf64>) -> tensor<?x?xf64>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %10 into %arg5[%arg3, %arg2] [%8, %7] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
      }
    }
    scf.yield %6 : tensor<16x32xf64>
  }
  "ta.print"(%4) : (tensor<16x32xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
#map = affine_map<(d0) -> (-d0 + 16384, 3072)>
#map1 = affine_map<(d0) -> (-d0 + 32, 6)>
#map2 = affine_map<(d0) -> (-d0 + 16, 8)>
#map3 = affine_map<(d0)[s0] -> (-d0 + s0, 3072)>
module {
  func.func @main() {
    %c3072 = arith.constant 3072 : index
    %c16384 = arith.constant 16384 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x32x32xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<16x16x32x32xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<32x32x16x32xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<32x32x16x32xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x32xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<16x32xf64>
    %3 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%3 : tensor<16x32x32x16xf64>) permutation = [0, 2, 3, 1] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x32x16xf64> into tensor<16x16384xf64>
    %collapsed_4 = tensor.collapse_shape %1 [[0, 1, 2], [3]] : tensor<32x32x16x32xf64> into tensor<16384x32xf64>
    %4 = scf.for %arg0 = %c0 to %c16384 step %c3072 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %5 = affine.min #map(%arg0)
      %extracted_slice = tensor.extract_slice %collapsed[0, %arg0] [16, %5] [1, 1] : tensor<16x16384xf64> to tensor<16x?xf64>
      %extracted_slice_5 = tensor.extract_slice %collapsed_4[%arg0, 0] [%5, 32] [1, 1] : tensor<16384x32xf64> to tensor<?x32xf64>
      %6 = scf.forall (%arg2, %arg3, %arg4) = (0, 0, 0) to (32, 16, %5) step (6, 8, 3072) shared_outs(%arg5 = %arg1) -> (tensor<16x32xf64>) {
        %7 = affine.min #map1(%arg2)
        %8 = affine.min #map2(%arg3)
        %9 = affine.min #map3(%arg4)[%5]
        %extracted_slice_6 = tensor.extract_slice %extracted_slice[%arg3, %arg4] [%8, %9] [1, 1] : tensor<16x?xf64> to tensor<?x?xf64>
        %extracted_slice_7 = tensor.extract_slice %extracted_slice_5[%arg4, %arg2] [%9, %7] [1, 1] : tensor<?x32xf64> to tensor<?x?xf64>
        %extracted_slice_8 = tensor.extract_slice %arg5[%arg3, %arg2] [%8, %7] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
        %10 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_6, %extracted_slice_7 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_8 : tensor<?x?xf64>) -> tensor<?x?xf64>
        scf.forall.in_parallel {
          tensor.parallel_insert_slice %10 into %arg5[%arg3, %arg2] [%8, %7] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
        }
      }
      scf.yield %6 : tensor<16x32xf64>
    }
    "ta.print"(%4) : (tensor<16x32xf64>) -> ()
    return
  }
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
#map = affine_map<(d0) -> (-d0 + 16384, 3072)>
#map1 = affine_map<(d0) -> (-d0 + 32, 6)>
#map2 = affine_map<(d0) -> (-d0 + 16, 8)>
#map3 = affine_map<(d0)[s0] -> (-d0 + s0, 3072)>
module {
  func.func @main() {
    %c3072 = arith.constant 3072 : index
    %c16384 = arith.constant 16384 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x32x32xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<16x16x32x32xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<32x32x16x32xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<32x32x16x32xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x32xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<16x32xf64>
    %3 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%3 : tensor<16x32x32x16xf64>) permutation = [0, 2, 3, 1] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x32x16xf64> into tensor<16x16384xf64>
    %collapsed_4 = tensor.collapse_shape %1 [[0, 1, 2], [3]] : tensor<32x32x16x32xf64> into tensor<16384x32xf64>
    %4 = scf.for %arg0 = %c0 to %c16384 step %c3072 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %5 = affine.min #map(%arg0)
      %extracted_slice = tensor.extract_slice %collapsed[0, %arg0] [16, %5] [1, 1] : tensor<16x16384xf64> to tensor<16x?xf64>
      %extracted_slice_5 = tensor.extract_slice %collapsed_4[%arg0, 0] [%5, 32] [1, 1] : tensor<16384x32xf64> to tensor<?x32xf64>
      %6 = scf.forall (%arg2, %arg3, %arg4) = (0, 0, 0) to (32, 16, %5) step (6, 8, 3072) shared_outs(%arg5 = %arg1) -> (tensor<16x32xf64>) {
        %7 = affine.min #map1(%arg2)
        %8 = affine.min #map2(%arg3)
        %9 = affine.min #map3(%arg4)[%5]
        %extracted_slice_6 = tensor.extract_slice %extracted_slice[%arg3, %arg4] [%8, %9] [1, 1] : tensor<16x?xf64> to tensor<?x?xf64>
        %extracted_slice_7 = tensor.extract_slice %extracted_slice_5[%arg4, %arg2] [%9, %7] [1, 1] : tensor<?x32xf64> to tensor<?x?xf64>
        %extracted_slice_8 = tensor.extract_slice %arg5[%arg3, %arg2] [%8, %7] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
        %10 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_6, %extracted_slice_7 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_8 : tensor<?x?xf64>) -> tensor<?x?xf64>
        scf.forall.in_parallel {
          tensor.parallel_insert_slice %10 into %arg5[%arg3, %arg2] [%8, %7] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
        }
      }
      scf.yield %6 : tensor<16x32xf64>
    }
    "ta.print"(%4) : (tensor<16x32xf64>) -> ()
    return
  }
}


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %c3072 = arith.constant 3072 : index
    %c16384 = arith.constant 16384 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x32x32xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<16x16x32x32xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<32x32x16x32xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<32x32x16x32xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x32xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<16x32xf64>
    %3 = tensor.empty() : tensor<16x32x32x16xf64>
    %transposed = linalg.transpose ins(%0 : tensor<16x16x32x32xf64>) outs(%3 : tensor<16x32x32x16xf64>) permutation = [0, 2, 3, 1] 
    %collapsed = tensor.collapse_shape %transposed [[0], [1, 2, 3]] : tensor<16x32x32x16xf64> into tensor<16x16384xf64>
    %collapsed_4 = tensor.collapse_shape %1 [[0, 1, 2], [3]] : tensor<32x32x16x32xf64> into tensor<16384x32xf64>
    %4 = scf.for %arg0 = %c0 to %c16384 step %c3072 iter_args(%arg1 = %2) -> (tensor<16x32xf64>) {
      %c-1 = arith.constant -1 : index
      %5 = arith.muli %arg0, %c-1 : index
      %c16384_5 = arith.constant 16384 : index
      %6 = arith.addi %5, %c16384_5 : index
      %c3072_6 = arith.constant 3072 : index
      %7 = arith.minsi %6, %c3072_6 : index
      %extracted_slice = tensor.extract_slice %collapsed[0, %arg0] [16, %7] [1, 1] : tensor<16x16384xf64> to tensor<16x?xf64>
      %extracted_slice_7 = tensor.extract_slice %collapsed_4[%arg0, 0] [%7, 32] [1, 1] : tensor<16384x32xf64> to tensor<?x32xf64>
      %8 = scf.forall (%arg2, %arg3, %arg4) = (0, 0, 0) to (32, 16, %7) step (6, 8, 3072) shared_outs(%arg5 = %arg1) -> (tensor<16x32xf64>) {
        %c-1_8 = arith.constant -1 : index
        %9 = arith.muli %arg2, %c-1_8 : index
        %c32 = arith.constant 32 : index
        %10 = arith.addi %9, %c32 : index
        %c6 = arith.constant 6 : index
        %11 = arith.minsi %10, %c6 : index
        %c-1_9 = arith.constant -1 : index
        %12 = arith.muli %arg3, %c-1_9 : index
        %c16 = arith.constant 16 : index
        %13 = arith.addi %12, %c16 : index
        %c8 = arith.constant 8 : index
        %14 = arith.minsi %13, %c8 : index
        %c-1_10 = arith.constant -1 : index
        %15 = arith.muli %arg4, %c-1_10 : index
        %16 = arith.addi %15, %7 : index
        %c3072_11 = arith.constant 3072 : index
        %17 = arith.minsi %16, %c3072_11 : index
        %extracted_slice_12 = tensor.extract_slice %extracted_slice[%arg3, %arg4] [%14, %17] [1, 1] : tensor<16x?xf64> to tensor<?x?xf64>
        %extracted_slice_13 = tensor.extract_slice %extracted_slice_7[%arg4, %arg2] [%17, %11] [1, 1] : tensor<?x32xf64> to tensor<?x?xf64>
        %extracted_slice_14 = tensor.extract_slice %arg5[%arg3, %arg2] [%14, %11] [1, 1] : tensor<16x32xf64> to tensor<?x?xf64>
        %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_12, %extracted_slice_13 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_14 : tensor<?x?xf64>) -> tensor<?x?xf64>
        scf.forall.in_parallel {
          tensor.parallel_insert_slice %18 into %arg5[%arg3, %arg2] [%14, %11] [1, 1] : tensor<?x?xf64> into tensor<16x32xf64>
        }
      }
      scf.yield %8 : tensor<16x32xf64>
    }
    "ta.print"(%4) : (tensor<16x32xf64>) -> ()
    return
  }
}


// -----// IR Dump After OneShotBufferize (one-shot-bufferize) //----- //
module {
  func.func @main() {
    %c3072 = arith.constant 3072 : index
    %c16384 = arith.constant 16384 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x32x32xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<32x32x16x32xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x32xf64>)
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<16x32x32x16xf64>
    linalg.transpose ins(%alloc : memref<16x16x32x32xf64>) outs(%alloc_4 : memref<16x32x32x16xf64>) permutation = [0, 2, 3, 1] 
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x32x32x16xf64> into memref<16x16384xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<32x32x16x32xf64> into memref<16384x32xf64>
    %0 = scf.for %arg0 = %c0 to %c16384 step %c3072 iter_args(%arg1 = %alloc_3) -> (memref<16x32xf64>) {
      %c-1 = arith.constant -1 : index
      %2 = arith.muli %arg0, %c-1 : index
      %c16384_6 = arith.constant 16384 : index
      %3 = arith.addi %2, %c16384_6 : index
      %c3072_7 = arith.constant 3072 : index
      %4 = arith.minsi %3, %c3072_7 : index
      %subview = memref.subview %collapse_shape[0, %arg0] [16, %4] [1, 1] : memref<16x16384xf64> to memref<16x?xf64, strided<[16384, 1], offset: ?>>
      %subview_8 = memref.subview %collapse_shape_5[%arg0, 0] [%4, 32] [1, 1] : memref<16384x32xf64> to memref<?x32xf64, strided<[32, 1], offset: ?>>
      scf.forall (%arg2, %arg3, %arg4) = (0, 0, 0) to (32, 16, %4) step (6, 8, 3072) {
        %c-1_9 = arith.constant -1 : index
        %5 = arith.muli %arg2, %c-1_9 : index
        %c32 = arith.constant 32 : index
        %6 = arith.addi %5, %c32 : index
        %c6 = arith.constant 6 : index
        %7 = arith.minsi %6, %c6 : index
        %c-1_10 = arith.constant -1 : index
        %8 = arith.muli %arg3, %c-1_10 : index
        %c16 = arith.constant 16 : index
        %9 = arith.addi %8, %c16 : index
        %c8 = arith.constant 8 : index
        %10 = arith.minsi %9, %c8 : index
        %c-1_11 = arith.constant -1 : index
        %11 = arith.muli %arg4, %c-1_11 : index
        %12 = arith.addi %11, %4 : index
        %c3072_12 = arith.constant 3072 : index
        %13 = arith.minsi %12, %c3072_12 : index
        %subview_13 = memref.subview %subview[%arg3, %arg4] [%10, %13] [1, 1] : memref<16x?xf64, strided<[16384, 1], offset: ?>> to memref<?x?xf64, strided<[16384, 1], offset: ?>>
        %subview_14 = memref.subview %subview_8[%arg4, %arg2] [%13, %7] [1, 1] : memref<?x32xf64, strided<[32, 1], offset: ?>> to memref<?x?xf64, strided<[32, 1], offset: ?>>
        %subview_15 = memref.subview %arg1[%arg3, %arg2] [%10, %7] [1, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
        linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%subview_13, %subview_14 : memref<?x?xf64, strided<[16384, 1], offset: ?>>, memref<?x?xf64, strided<[32, 1], offset: ?>>) outs(%subview_15 : memref<?x?xf64, strided<[32, 1], offset: ?>>)
        %subview_16 = memref.subview %arg1[%arg3, %arg2] [%10, %7] [1, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
        memref.copy %subview_15, %subview_16 : memref<?x?xf64, strided<[32, 1], offset: ?>> to memref<?x?xf64, strided<[32, 1], offset: ?>>
      }
      scf.yield %arg1 : memref<16x32xf64>
    }
    %1 = bufferization.to_tensor %0 : memref<16x32xf64>
    "ta.print"(%1) : (tensor<16x32xf64>) -> ()
    return
  }
}


// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func @main() {
  %c3072 = arith.constant 3072 : index
  %c16384 = arith.constant 16384 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x32x32xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<32x32x16x32xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x32xf64>)
  %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<16x32x32x16xf64>
  linalg.transpose ins(%alloc : memref<16x16x32x32xf64>) outs(%alloc_4 : memref<16x32x32x16xf64>) permutation = [0, 2, 3, 1] 
  %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x32x32x16xf64> into memref<16x16384xf64>
  %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<32x32x16x32xf64> into memref<16384x32xf64>
  %0 = scf.for %arg0 = %c0 to %c16384 step %c3072 iter_args(%arg1 = %alloc_3) -> (memref<16x32xf64>) {
    %c-1 = arith.constant -1 : index
    %2 = arith.muli %arg0, %c-1 : index
    %c16384_6 = arith.constant 16384 : index
    %3 = arith.addi %2, %c16384_6 : index
    %c3072_7 = arith.constant 3072 : index
    %4 = arith.minsi %3, %c3072_7 : index
    %subview = memref.subview %collapse_shape[0, %arg0] [16, %4] [1, 1] : memref<16x16384xf64> to memref<16x?xf64, strided<[16384, 1], offset: ?>>
    %subview_8 = memref.subview %collapse_shape_5[%arg0, 0] [%4, 32] [1, 1] : memref<16384x32xf64> to memref<?x32xf64, strided<[32, 1], offset: ?>>
    scf.forall (%arg2, %arg3, %arg4) = (0, 0, 0) to (32, 16, %4) step (6, 8, 3072) {
      %c-1_9 = arith.constant -1 : index
      %5 = arith.muli %arg2, %c-1_9 : index
      %c32 = arith.constant 32 : index
      %6 = arith.addi %5, %c32 : index
      %c6 = arith.constant 6 : index
      %7 = arith.minsi %6, %c6 : index
      %c-1_10 = arith.constant -1 : index
      %8 = arith.muli %arg3, %c-1_10 : index
      %c16 = arith.constant 16 : index
      %9 = arith.addi %8, %c16 : index
      %c8 = arith.constant 8 : index
      %10 = arith.minsi %9, %c8 : index
      %c-1_11 = arith.constant -1 : index
      %11 = arith.muli %arg4, %c-1_11 : index
      %12 = arith.addi %11, %4 : index
      %c3072_12 = arith.constant 3072 : index
      %13 = arith.minsi %12, %c3072_12 : index
      %subview_13 = memref.subview %subview[%arg3, %arg4] [%10, %13] [1, 1] : memref<16x?xf64, strided<[16384, 1], offset: ?>> to memref<?x?xf64, strided<[16384, 1], offset: ?>>
      %subview_14 = memref.subview %subview_8[%arg4, %arg2] [%13, %7] [1, 1] : memref<?x32xf64, strided<[32, 1], offset: ?>> to memref<?x?xf64, strided<[32, 1], offset: ?>>
      %subview_15 = memref.subview %arg1[%arg3, %arg2] [%10, %7] [1, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
      linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%subview_13, %subview_14 : memref<?x?xf64, strided<[16384, 1], offset: ?>>, memref<?x?xf64, strided<[32, 1], offset: ?>>) outs(%subview_15 : memref<?x?xf64, strided<[32, 1], offset: ?>>)
      %subview_16 = memref.subview %arg1[%arg3, %arg2] [%10, %7] [1, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
      memref.copy %subview_15, %subview_16 : memref<?x?xf64, strided<[32, 1], offset: ?>> to memref<?x?xf64, strided<[32, 1], offset: ?>>
    }
    scf.yield %arg1 : memref<16x32xf64>
  }
  %1 = bufferization.to_tensor %0 : memref<16x32xf64>
  "ta.print"(%1) : (tensor<16x32xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %c3072 = arith.constant 3072 : index
  %c16384 = arith.constant 16384 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x32x32xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<32x32x16x32xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x32xf64>)
  %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<16x32x32x16xf64>
  linalg.transpose ins(%alloc : memref<16x16x32x32xf64>) outs(%alloc_4 : memref<16x32x32x16xf64>) permutation = [0, 2, 3, 1] 
  %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x32x32x16xf64> into memref<16x16384xf64>
  %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<32x32x16x32xf64> into memref<16384x32xf64>
  %0 = scf.for %arg0 = %c0 to %c16384 step %c3072 iter_args(%arg1 = %alloc_3) -> (memref<16x32xf64>) {
    %c-1 = arith.constant -1 : index
    %3 = arith.muli %arg0, %c-1 : index
    %c16384_6 = arith.constant 16384 : index
    %4 = arith.addi %3, %c16384_6 : index
    %c3072_7 = arith.constant 3072 : index
    %5 = arith.minsi %4, %c3072_7 : index
    %subview = memref.subview %collapse_shape[0, %arg0] [16, %5] [1, 1] : memref<16x16384xf64> to memref<16x?xf64, strided<[16384, 1], offset: ?>>
    %subview_8 = memref.subview %collapse_shape_5[%arg0, 0] [%5, 32] [1, 1] : memref<16384x32xf64> to memref<?x32xf64, strided<[32, 1], offset: ?>>
    scf.forall (%arg2, %arg3, %arg4) = (0, 0, 0) to (32, 16, %5) step (6, 8, 3072) {
      %c-1_9 = arith.constant -1 : index
      %6 = arith.muli %arg2, %c-1_9 : index
      %c32 = arith.constant 32 : index
      %7 = arith.addi %6, %c32 : index
      %c6 = arith.constant 6 : index
      %8 = arith.minsi %7, %c6 : index
      %c-1_10 = arith.constant -1 : index
      %9 = arith.muli %arg3, %c-1_10 : index
      %c16 = arith.constant 16 : index
      %10 = arith.addi %9, %c16 : index
      %c8 = arith.constant 8 : index
      %11 = arith.minsi %10, %c8 : index
      %c-1_11 = arith.constant -1 : index
      %12 = arith.muli %arg4, %c-1_11 : index
      %13 = arith.addi %12, %5 : index
      %c3072_12 = arith.constant 3072 : index
      %14 = arith.minsi %13, %c3072_12 : index
      %subview_13 = memref.subview %subview[%arg3, %arg4] [%11, %14] [1, 1] : memref<16x?xf64, strided<[16384, 1], offset: ?>> to memref<?x?xf64, strided<[16384, 1], offset: ?>>
      %subview_14 = memref.subview %subview_8[%arg4, %arg2] [%14, %8] [1, 1] : memref<?x32xf64, strided<[32, 1], offset: ?>> to memref<?x?xf64, strided<[32, 1], offset: ?>>
      %subview_15 = memref.subview %arg1[%arg3, %arg2] [%11, %8] [1, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
      linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%subview_13, %subview_14 : memref<?x?xf64, strided<[16384, 1], offset: ?>>, memref<?x?xf64, strided<[32, 1], offset: ?>>) outs(%subview_15 : memref<?x?xf64, strided<[32, 1], offset: ?>>)
      %subview_16 = memref.subview %arg1[%arg3, %arg2] [%11, %8] [1, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
      memref.copy %subview_15, %subview_16 : memref<?x?xf64, strided<[32, 1], offset: ?>> to memref<?x?xf64, strided<[32, 1], offset: ?>>
    }
    scf.yield %arg1 : memref<16x32xf64>
  }
  %1 = bufferization.to_tensor %0 : memref<16x32xf64>
  %2 = bufferization.to_memref %1 : memref<16x32xf64>
  %cast = memref.cast %2 : memref<16x32xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c8 = arith.constant 8 : index
    %c16 = arith.constant 16 : index
    %c6 = arith.constant 6 : index
    %c32 = arith.constant 32 : index
    %c3072 = arith.constant 3072 : index
    %c16384 = arith.constant 16384 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x32x32xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<32x32x16x32xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x32xf64>)
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<16x32x32x16xf64>
    linalg.transpose ins(%alloc : memref<16x16x32x32xf64>) outs(%alloc_4 : memref<16x32x32x16xf64>) permutation = [0, 2, 3, 1] 
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x32x32x16xf64> into memref<16x16384xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<32x32x16x32xf64> into memref<16384x32xf64>
    scf.for %arg0 = %c0 to %c16384 step %c3072 {
      %0 = arith.subi %c16384, %arg0 : index
      %1 = arith.minsi %0, %c3072 : index
      %subview = memref.subview %collapse_shape[0, %arg0] [16, %1] [1, 1] : memref<16x16384xf64> to memref<16x?xf64, strided<[16384, 1], offset: ?>>
      %subview_6 = memref.subview %collapse_shape_5[%arg0, 0] [%1, 32] [1, 1] : memref<16384x32xf64> to memref<?x32xf64, strided<[32, 1], offset: ?>>
      scf.forall (%arg1, %arg2, %arg3) = (0, 0, 0) to (32, 16, %1) step (6, 8, 3072) {
        %2 = arith.subi %c32, %arg1 : index
        %3 = arith.minsi %2, %c6 : index
        %4 = arith.subi %c16, %arg2 : index
        %5 = arith.minsi %4, %c8 : index
        %6 = arith.subi %1, %arg3 : index
        %7 = arith.minsi %6, %c3072 : index
        %subview_7 = memref.subview %subview[%arg2, %arg3] [%5, %7] [1, 1] : memref<16x?xf64, strided<[16384, 1], offset: ?>> to memref<?x?xf64, strided<[16384, 1], offset: ?>>
        %subview_8 = memref.subview %subview_6[%arg3, %arg1] [%7, %3] [1, 1] : memref<?x32xf64, strided<[32, 1], offset: ?>> to memref<?x?xf64, strided<[32, 1], offset: ?>>
        %subview_9 = memref.subview %alloc_3[%arg2, %arg1] [%5, %3] [1, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
        linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%subview_7, %subview_8 : memref<?x?xf64, strided<[16384, 1], offset: ?>>, memref<?x?xf64, strided<[32, 1], offset: ?>>) outs(%subview_9 : memref<?x?xf64, strided<[32, 1], offset: ?>>)
        %subview_10 = memref.subview %alloc_3[%arg2, %arg1] [%5, %3] [1, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
        memref.copy %subview_9, %subview_10 : memref<?x?xf64, strided<[32, 1], offset: ?>> to memref<?x?xf64, strided<[32, 1], offset: ?>>
      }
    }
    %cast = memref.cast %alloc_3 : memref<16x32xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %c8 = arith.constant 8 : index
    %c16 = arith.constant 16 : index
    %c6 = arith.constant 6 : index
    %c32 = arith.constant 32 : index
    %c3072 = arith.constant 3072 : index
    %c16384 = arith.constant 16384 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x32x32xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<32x32x16x32xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x32xf64>)
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<16x32x32x16xf64>
    linalg.transpose ins(%alloc : memref<16x16x32x32xf64>) outs(%alloc_4 : memref<16x32x32x16xf64>) permutation = [0, 2, 3, 1] 
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x32x32x16xf64> into memref<16x16384xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<32x32x16x32xf64> into memref<16384x32xf64>
    scf.for %arg0 = %c0 to %c16384 step %c3072 {
      %0 = arith.subi %c16384, %arg0 : index
      %1 = arith.minsi %0, %c3072 : index
      %subview = memref.subview %collapse_shape[0, %arg0] [16, %1] [1, 1] : memref<16x16384xf64> to memref<16x?xf64, strided<[16384, 1], offset: ?>>
      %subview_6 = memref.subview %collapse_shape_5[%arg0, 0] [%1, 32] [1, 1] : memref<16384x32xf64> to memref<?x32xf64, strided<[32, 1], offset: ?>>
      scf.forall (%arg1, %arg2, %arg3) = (0, 0, 0) to (32, 16, %1) step (6, 8, 3072) {
        %2 = arith.subi %c32, %arg1 : index
        %3 = arith.minsi %2, %c6 : index
        %4 = arith.subi %c16, %arg2 : index
        %5 = arith.minsi %4, %c8 : index
        %6 = arith.subi %1, %arg3 : index
        %7 = arith.minsi %6, %c3072 : index
        %subview_7 = memref.subview %subview[%arg2, %arg3] [%5, %7] [1, 1] : memref<16x?xf64, strided<[16384, 1], offset: ?>> to memref<?x?xf64, strided<[16384, 1], offset: ?>>
        %subview_8 = memref.subview %subview_6[%arg3, %arg1] [%7, %3] [1, 1] : memref<?x32xf64, strided<[32, 1], offset: ?>> to memref<?x?xf64, strided<[32, 1], offset: ?>>
        %subview_9 = memref.subview %alloc_3[%arg2, %arg1] [%5, %3] [1, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
        linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%subview_7, %subview_8 : memref<?x?xf64, strided<[16384, 1], offset: ?>>, memref<?x?xf64, strided<[32, 1], offset: ?>>) outs(%subview_9 : memref<?x?xf64, strided<[32, 1], offset: ?>>)
        memref.copy %subview_9, %subview_9 : memref<?x?xf64, strided<[32, 1], offset: ?>> to memref<?x?xf64, strided<[32, 1], offset: ?>>
      }
    }
    %cast = memref.cast %alloc_3 : memref<16x32xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After FoldMemRefAliasOps (fold-memref-alias-ops) //----- //
#map = affine_map<()[s0, s1] -> (s0 + s1)>
module {
  func.func @main() {
    %c8 = arith.constant 8 : index
    %c16 = arith.constant 16 : index
    %c6 = arith.constant 6 : index
    %c32 = arith.constant 32 : index
    %c3072 = arith.constant 3072 : index
    %c16384 = arith.constant 16384 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x32x32xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<32x32x16x32xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x32xf64>)
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<16x32x32x16xf64>
    linalg.transpose ins(%alloc : memref<16x16x32x32xf64>) outs(%alloc_4 : memref<16x32x32x16xf64>) permutation = [0, 2, 3, 1] 
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x32x32x16xf64> into memref<16x16384xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<32x32x16x32xf64> into memref<16384x32xf64>
    scf.for %arg0 = %c0 to %c16384 step %c3072 {
      %0 = arith.subi %c16384, %arg0 : index
      %1 = arith.minsi %0, %c3072 : index
      scf.forall (%arg1, %arg2, %arg3) = (0, 0, 0) to (32, 16, %1) step (6, 8, 3072) {
        %2 = arith.subi %c32, %arg1 : index
        %3 = arith.minsi %2, %c6 : index
        %4 = arith.subi %c16, %arg2 : index
        %5 = arith.minsi %4, %c8 : index
        %6 = arith.subi %1, %arg3 : index
        %7 = arith.minsi %6, %c3072 : index
        %8 = affine.apply #map()[%arg0, %arg3]
        %subview = memref.subview %collapse_shape[%arg2, %8] [%5, %7] [1, 1] : memref<16x16384xf64> to memref<?x?xf64, strided<[16384, 1], offset: ?>>
        %9 = affine.apply #map()[%arg0, %arg3]
        %subview_6 = memref.subview %collapse_shape_5[%9, %arg1] [%7, %3] [1, 1] : memref<16384x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
        %subview_7 = memref.subview %alloc_3[%arg2, %arg1] [%5, %3] [1, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
        linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%subview, %subview_6 : memref<?x?xf64, strided<[16384, 1], offset: ?>>, memref<?x?xf64, strided<[32, 1], offset: ?>>) outs(%subview_7 : memref<?x?xf64, strided<[32, 1], offset: ?>>)
        memref.copy %subview_7, %subview_7 : memref<?x?xf64, strided<[32, 1], offset: ?>> to memref<?x?xf64, strided<[32, 1], offset: ?>>
      }
    }
    %cast = memref.cast %alloc_3 : memref<16x32xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
#map = affine_map<()[s0, s1] -> (s0 + s1)>
module {
  func.func @main() {
    %c8 = arith.constant 8 : index
    %c16 = arith.constant 16 : index
    %c6 = arith.constant 6 : index
    %c32 = arith.constant 32 : index
    %c3072 = arith.constant 3072 : index
    %c16384 = arith.constant 16384 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x32x32xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<32x32x16x32xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x32xf64>)
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<16x32x32x16xf64>
    linalg.transpose ins(%alloc : memref<16x16x32x32xf64>) outs(%alloc_4 : memref<16x32x32x16xf64>) permutation = [0, 2, 3, 1] 
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x32x32x16xf64> into memref<16x16384xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<32x32x16x32xf64> into memref<16384x32xf64>
    scf.for %arg0 = %c0 to %c16384 step %c3072 {
      %0 = arith.subi %c16384, %arg0 : index
      %1 = arith.minsi %0, %c3072 : index
      scf.forall (%arg1, %arg2, %arg3) = (0, 0, 0) to (32, 16, %1) step (6, 8, 3072) {
        %2 = arith.subi %c32, %arg1 : index
        %3 = arith.minsi %2, %c6 : index
        %4 = arith.subi %c16, %arg2 : index
        %5 = arith.minsi %4, %c8 : index
        %6 = arith.subi %1, %arg3 : index
        %7 = arith.minsi %6, %c3072 : index
        %8 = affine.apply #map()[%arg0, %arg3]
        %subview = memref.subview %collapse_shape[%arg2, %8] [%5, %7] [1, 1] : memref<16x16384xf64> to memref<?x?xf64, strided<[16384, 1], offset: ?>>
        %9 = affine.apply #map()[%arg0, %arg3]
        %subview_6 = memref.subview %collapse_shape_5[%9, %arg1] [%7, %3] [1, 1] : memref<16384x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
        %subview_7 = memref.subview %alloc_3[%arg2, %arg1] [%5, %3] [1, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
        linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%subview, %subview_6 : memref<?x?xf64, strided<[16384, 1], offset: ?>>, memref<?x?xf64, strided<[32, 1], offset: ?>>) outs(%subview_7 : memref<?x?xf64, strided<[32, 1], offset: ?>>)
      }
    }
    %cast = memref.cast %alloc_3 : memref<16x32xf64> to memref<*xf64>
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
  %c8 = arith.constant 8 : index
  %c16 = arith.constant 16 : index
  %c6 = arith.constant 6 : index
  %c32 = arith.constant 32 : index
  %c3072 = arith.constant 3072 : index
  %c16384 = arith.constant 16384 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x32x32xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<32x32x16x32xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x32xf64>)
  %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<16x32x32x16xf64>
  linalg.transpose ins(%alloc : memref<16x16x32x32xf64>) outs(%alloc_4 : memref<16x32x32x16xf64>) permutation = [0, 2, 3, 1] 
  %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x32x32x16xf64> into memref<16x16384xf64>
  %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<32x32x16x32xf64> into memref<16384x32xf64>
  scf.for %arg0 = %c0 to %c16384 step %c3072 {
    %0 = arith.subi %c16384, %arg0 : index
    %1 = arith.minsi %0, %c3072 : index
    scf.forall (%arg1, %arg2, %arg3) = (0, 0, 0) to (32, 16, %1) step (6, 8, 3072) {
      %2 = arith.subi %c32, %arg1 : index
      %3 = arith.minsi %2, %c6 : index
      %4 = arith.subi %c16, %arg2 : index
      %5 = arith.minsi %4, %c8 : index
      %6 = arith.subi %1, %arg3 : index
      %7 = arith.minsi %6, %c3072 : index
      %8 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%arg0, %arg3]
      %subview = memref.subview %collapse_shape[%arg2, %8] [%5, %7] [1, 1] : memref<16x16384xf64> to memref<?x?xf64, strided<[16384, 1], offset: ?>>
      %9 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%arg0, %arg3]
      %subview_6 = memref.subview %collapse_shape_5[%9, %arg1] [%7, %3] [1, 1] : memref<16384x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
      %subview_7 = memref.subview %alloc_3[%arg2, %arg1] [%5, %3] [1, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
      linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%subview, %subview_6 : memref<?x?xf64, strided<[16384, 1], offset: ?>>, memref<?x?xf64, strided<[32, 1], offset: ?>>) outs(%subview_7 : memref<?x?xf64, strided<[32, 1], offset: ?>>)
    }
  }
  %cast = memref.cast %alloc_3 : memref<16x32xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c8 = arith.constant 8 : index
  %c16 = arith.constant 16 : index
  %c6 = arith.constant 6 : index
  %c32 = arith.constant 32 : index
  %c3072 = arith.constant 3072 : index
  %c16384 = arith.constant 16384 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
  scf.for %arg0 = %c0 to %c16 step %c1 {
    scf.for %arg1 = %c0 to %c16 step %c1 {
      scf.for %arg2 = %c0 to %c32 step %c1 {
        scf.for %arg3 = %c0 to %c32 step %c1 {
          memref.store %cst_1, %alloc[%arg0, %arg1, %arg2, %arg3] : memref<16x16x32x32xf64>
        }
      }
    }
  }
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
  scf.for %arg0 = %c0 to %c32 step %c1 {
    scf.for %arg1 = %c0 to %c32 step %c1 {
      scf.for %arg2 = %c0 to %c16 step %c1 {
        scf.for %arg3 = %c0 to %c32 step %c1 {
          memref.store %cst_0, %alloc_2[%arg0, %arg1, %arg2, %arg3] : memref<32x32x16x32xf64>
        }
      }
    }
  }
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
  scf.for %arg0 = %c0 to %c16 step %c1 {
    scf.for %arg1 = %c0 to %c32 step %c1 {
      memref.store %cst, %alloc_3[%arg0, %arg1] : memref<16x32xf64>
    }
  }
  %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<16x32x32x16xf64>
  scf.for %arg0 = %c0 to %c16 step %c1 {
    scf.for %arg1 = %c0 to %c32 step %c1 {
      scf.for %arg2 = %c0 to %c32 step %c1 {
        scf.for %arg3 = %c0 to %c16 step %c1 {
          %0 = memref.load %alloc[%arg0, %arg3, %arg1, %arg2] : memref<16x16x32x32xf64>
          memref.store %0, %alloc_4[%arg0, %arg1, %arg2, %arg3] : memref<16x32x32x16xf64>
        }
      }
    }
  }
  %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x32x32x16xf64> into memref<16x16384xf64>
  %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<32x32x16x32xf64> into memref<16384x32xf64>
  scf.for %arg0 = %c0 to %c16384 step %c3072 {
    %0 = arith.subi %c16384, %arg0 : index
    %1 = arith.minsi %0, %c3072 : index
    scf.forall (%arg1, %arg2, %arg3) = (0, 0, 0) to (32, 16, %1) step (6, 8, 3072) {
      %2 = arith.subi %c32, %arg1 : index
      %3 = arith.minsi %2, %c6 : index
      %4 = arith.subi %c16, %arg2 : index
      %5 = arith.minsi %4, %c8 : index
      %6 = arith.subi %1, %arg3 : index
      %7 = arith.minsi %6, %c3072 : index
      %8 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%arg0, %arg3]
      %subview = memref.subview %collapse_shape[%arg2, %8] [%5, %7] [1, 1] : memref<16x16384xf64> to memref<?x?xf64, strided<[16384, 1], offset: ?>>
      %9 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%arg0, %arg3]
      %subview_6 = memref.subview %collapse_shape_5[%9, %arg1] [%7, %3] [1, 1] : memref<16384x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
      %subview_7 = memref.subview %alloc_3[%arg2, %arg1] [%5, %3] [1, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
      scf.for %arg4 = %c0 to %5 step %c1 {
        scf.for %arg5 = %c0 to %3 step %c1 {
          scf.for %arg6 = %c0 to %7 step %c1 {
            %10 = memref.load %subview[%arg4, %arg6] : memref<?x?xf64, strided<[16384, 1], offset: ?>>
            %11 = memref.load %subview_6[%arg6, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
            %12 = memref.load %subview_7[%arg4, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
            %13 = arith.mulf %10, %11 : f64
            %14 = arith.addf %12, %13 : f64
            memref.store %14, %subview_7[%arg4, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
          }
        }
      }
    }
  }
  %cast = memref.cast %alloc_3 : memref<16x32xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c16 = arith.constant 16 : index
    %c6 = arith.constant 6 : index
    %c32 = arith.constant 32 : index
    %c3072 = arith.constant 3072 : index
    %c16384 = arith.constant 16384 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c16 step %c1 {
        scf.for %arg2 = %c0 to %c32 step %c1 {
          scf.for %arg3 = %c0 to %c32 step %c1 {
            memref.store %cst_1, %alloc[%arg0, %arg1, %arg2, %arg3] : memref<16x16x32x32xf64>
          }
        }
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
    scf.for %arg0 = %c0 to %c32 step %c1 {
      scf.for %arg1 = %c0 to %c32 step %c1 {
        scf.for %arg2 = %c0 to %c16 step %c1 {
          scf.for %arg3 = %c0 to %c32 step %c1 {
            memref.store %cst_0, %alloc_2[%arg0, %arg1, %arg2, %arg3] : memref<32x32x16x32xf64>
          }
        }
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c32 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<16x32xf64>
      }
    }
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<16x32x32x16xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c32 step %c1 {
        scf.for %arg2 = %c0 to %c32 step %c1 {
          scf.for %arg3 = %c0 to %c16 step %c1 {
            %0 = memref.load %alloc[%arg0, %arg3, %arg1, %arg2] : memref<16x16x32x32xf64>
            memref.store %0, %alloc_4[%arg0, %arg1, %arg2, %arg3] : memref<16x32x32x16xf64>
          }
        }
      }
    }
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x32x32x16xf64> into memref<16x16384xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<32x32x16x32xf64> into memref<16384x32xf64>
    scf.for %arg0 = %c0 to %c16384 step %c3072 {
      %0 = arith.subi %c16384, %arg0 : index
      %1 = arith.minsi %0, %c3072 : index
      scf.forall (%arg1, %arg2, %arg3) = (0, 0, 0) to (32, 16, %1) step (6, 8, 3072) {
        %2 = arith.subi %c32, %arg1 : index
        %3 = arith.minsi %2, %c6 : index
        %4 = arith.subi %c16, %arg2 : index
        %5 = arith.minsi %4, %c8 : index
        %6 = arith.subi %1, %arg3 : index
        %7 = arith.minsi %6, %c3072 : index
        %8 = arith.addi %arg0, %arg3 : index
        %subview = memref.subview %collapse_shape[%arg2, %8] [%5, %7] [1, 1] : memref<16x16384xf64> to memref<?x?xf64, strided<[16384, 1], offset: ?>>
        %9 = arith.addi %arg0, %arg3 : index
        %subview_6 = memref.subview %collapse_shape_5[%9, %arg1] [%7, %3] [1, 1] : memref<16384x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
        %subview_7 = memref.subview %alloc_3[%arg2, %arg1] [%5, %3] [1, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
        scf.for %arg4 = %c0 to %5 step %c1 {
          scf.for %arg5 = %c0 to %3 step %c1 {
            scf.for %arg6 = %c0 to %7 step %c1 {
              %10 = memref.load %subview[%arg4, %arg6] : memref<?x?xf64, strided<[16384, 1], offset: ?>>
              %11 = memref.load %subview_6[%arg6, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
              %12 = memref.load %subview_7[%arg4, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
              %13 = arith.mulf %10, %11 : f64
              %14 = arith.addf %12, %13 : f64
              memref.store %14, %subview_7[%arg4, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
            }
          }
        }
      }
    }
    %cast = memref.cast %alloc_3 : memref<16x32xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After SCFForallToParallelLoop (scf-forall-to-parallel) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c16 = arith.constant 16 : index
    %c6 = arith.constant 6 : index
    %c32 = arith.constant 32 : index
    %c3072 = arith.constant 3072 : index
    %c16384 = arith.constant 16384 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c16 step %c1 {
        scf.for %arg2 = %c0 to %c32 step %c1 {
          scf.for %arg3 = %c0 to %c32 step %c1 {
            memref.store %cst_1, %alloc[%arg0, %arg1, %arg2, %arg3] : memref<16x16x32x32xf64>
          }
        }
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
    scf.for %arg0 = %c0 to %c32 step %c1 {
      scf.for %arg1 = %c0 to %c32 step %c1 {
        scf.for %arg2 = %c0 to %c16 step %c1 {
          scf.for %arg3 = %c0 to %c32 step %c1 {
            memref.store %cst_0, %alloc_2[%arg0, %arg1, %arg2, %arg3] : memref<32x32x16x32xf64>
          }
        }
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c32 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<16x32xf64>
      }
    }
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<16x32x32x16xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c32 step %c1 {
        scf.for %arg2 = %c0 to %c32 step %c1 {
          scf.for %arg3 = %c0 to %c16 step %c1 {
            %0 = memref.load %alloc[%arg0, %arg3, %arg1, %arg2] : memref<16x16x32x32xf64>
            memref.store %0, %alloc_4[%arg0, %arg1, %arg2, %arg3] : memref<16x32x32x16xf64>
          }
        }
      }
    }
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x32x32x16xf64> into memref<16x16384xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<32x32x16x32xf64> into memref<16384x32xf64>
    scf.for %arg0 = %c0 to %c16384 step %c3072 {
      %0 = arith.subi %c16384, %arg0 : index
      %1 = arith.minsi %0, %c3072 : index
      %c0_6 = arith.constant 0 : index
      %c0_7 = arith.constant 0 : index
      %c0_8 = arith.constant 0 : index
      %c32_9 = arith.constant 32 : index
      %c16_10 = arith.constant 16 : index
      %c6_11 = arith.constant 6 : index
      %c8_12 = arith.constant 8 : index
      %c3072_13 = arith.constant 3072 : index
      scf.parallel (%arg1, %arg2, %arg3) = (%c0_6, %c0_7, %c0_8) to (%c32_9, %c16_10, %1) step (%c6_11, %c8_12, %c3072_13) {
        %2 = arith.subi %c32, %arg1 : index
        %3 = arith.minsi %2, %c6 : index
        %4 = arith.subi %c16, %arg2 : index
        %5 = arith.minsi %4, %c8 : index
        %6 = arith.subi %1, %arg3 : index
        %7 = arith.minsi %6, %c3072 : index
        %8 = arith.addi %arg0, %arg3 : index
        %subview = memref.subview %collapse_shape[%arg2, %8] [%5, %7] [1, 1] : memref<16x16384xf64> to memref<?x?xf64, strided<[16384, 1], offset: ?>>
        %9 = arith.addi %arg0, %arg3 : index
        %subview_14 = memref.subview %collapse_shape_5[%9, %arg1] [%7, %3] [1, 1] : memref<16384x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
        %subview_15 = memref.subview %alloc_3[%arg2, %arg1] [%5, %3] [1, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
        scf.for %arg4 = %c0 to %5 step %c1 {
          scf.for %arg5 = %c0 to %3 step %c1 {
            scf.for %arg6 = %c0 to %7 step %c1 {
              %10 = memref.load %subview[%arg4, %arg6] : memref<?x?xf64, strided<[16384, 1], offset: ?>>
              %11 = memref.load %subview_14[%arg6, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
              %12 = memref.load %subview_15[%arg4, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
              %13 = arith.mulf %10, %11 : f64
              %14 = arith.addf %12, %13 : f64
              memref.store %14, %subview_15[%arg4, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
            }
          }
        }
        scf.reduce 
      }
    }
    %cast = memref.cast %alloc_3 : memref<16x32xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c16 = arith.constant 16 : index
    %c6 = arith.constant 6 : index
    %c32 = arith.constant 32 : index
    %c3072 = arith.constant 3072 : index
    %c16384 = arith.constant 16384 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c16 step %c1 {
        scf.for %arg2 = %c0 to %c32 step %c1 {
          scf.for %arg3 = %c0 to %c32 step %c1 {
            memref.store %cst_1, %alloc[%arg0, %arg1, %arg2, %arg3] : memref<16x16x32x32xf64>
          }
        }
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
    scf.for %arg0 = %c0 to %c32 step %c1 {
      scf.for %arg1 = %c0 to %c32 step %c1 {
        scf.for %arg2 = %c0 to %c16 step %c1 {
          scf.for %arg3 = %c0 to %c32 step %c1 {
            memref.store %cst_0, %alloc_2[%arg0, %arg1, %arg2, %arg3] : memref<32x32x16x32xf64>
          }
        }
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c32 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<16x32xf64>
      }
    }
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<16x32x32x16xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c32 step %c1 {
        scf.for %arg2 = %c0 to %c32 step %c1 {
          scf.for %arg3 = %c0 to %c16 step %c1 {
            %0 = memref.load %alloc[%arg0, %arg3, %arg1, %arg2] : memref<16x16x32x32xf64>
            memref.store %0, %alloc_4[%arg0, %arg1, %arg2, %arg3] : memref<16x32x32x16xf64>
          }
        }
      }
    }
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x32x32x16xf64> into memref<16x16384xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<32x32x16x32xf64> into memref<16384x32xf64>
    %c0_6 = arith.constant 0 : index
    %c0_7 = arith.constant 0 : index
    %c0_8 = arith.constant 0 : index
    %c32_9 = arith.constant 32 : index
    %c16_10 = arith.constant 16 : index
    %c6_11 = arith.constant 6 : index
    %c8_12 = arith.constant 8 : index
    %c3072_13 = arith.constant 3072 : index
    scf.for %arg0 = %c0 to %c16384 step %c3072 {
      %0 = arith.subi %c16384, %arg0 : index
      %1 = arith.minsi %0, %c3072 : index
      scf.parallel (%arg1, %arg2, %arg3) = (%c0_6, %c0_7, %c0_8) to (%c32_9, %c16_10, %1) step (%c6_11, %c8_12, %c3072_13) {
        %2 = arith.subi %c32, %arg1 : index
        %3 = arith.minsi %2, %c6 : index
        %4 = arith.subi %c16, %arg2 : index
        %5 = arith.minsi %4, %c8 : index
        %6 = arith.subi %1, %arg3 : index
        %7 = arith.minsi %6, %c3072 : index
        %8 = arith.addi %arg0, %arg3 : index
        %subview = memref.subview %collapse_shape[%arg2, %8] [%5, %7] [1, 1] : memref<16x16384xf64> to memref<?x?xf64, strided<[16384, 1], offset: ?>>
        %9 = arith.addi %arg0, %arg3 : index
        %subview_14 = memref.subview %collapse_shape_5[%9, %arg1] [%7, %3] [1, 1] : memref<16384x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
        %subview_15 = memref.subview %alloc_3[%arg2, %arg1] [%5, %3] [1, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
        scf.for %arg4 = %c0 to %5 step %c1 {
          scf.for %arg5 = %c0 to %3 step %c1 {
            scf.for %arg6 = %c0 to %7 step %c1 {
              %10 = memref.load %subview[%arg4, %arg6] : memref<?x?xf64, strided<[16384, 1], offset: ?>>
              %11 = memref.load %subview_14[%arg6, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
              %12 = memref.load %subview_15[%arg4, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
              %13 = arith.mulf %10, %11 : f64
              %14 = arith.addf %12, %13 : f64
              memref.store %14, %subview_15[%arg4, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
            }
          }
        }
        scf.reduce 
      }
    }
    %cast = memref.cast %alloc_3 : memref<16x32xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c16 = arith.constant 16 : index
    %c6 = arith.constant 6 : index
    %c32 = arith.constant 32 : index
    %c3072 = arith.constant 3072 : index
    %c16384 = arith.constant 16384 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c16 step %c1 {
        scf.for %arg2 = %c0 to %c32 step %c1 {
          scf.for %arg3 = %c0 to %c32 step %c1 {
            memref.store %cst_1, %alloc[%arg0, %arg1, %arg2, %arg3] : memref<16x16x32x32xf64>
          }
        }
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
    scf.for %arg0 = %c0 to %c32 step %c1 {
      scf.for %arg1 = %c0 to %c32 step %c1 {
        scf.for %arg2 = %c0 to %c16 step %c1 {
          scf.for %arg3 = %c0 to %c32 step %c1 {
            memref.store %cst_0, %alloc_2[%arg0, %arg1, %arg2, %arg3] : memref<32x32x16x32xf64>
          }
        }
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c32 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<16x32xf64>
      }
    }
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<16x32x32x16xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c32 step %c1 {
        scf.for %arg2 = %c0 to %c32 step %c1 {
          scf.for %arg3 = %c0 to %c16 step %c1 {
            %0 = memref.load %alloc[%arg0, %arg3, %arg1, %arg2] : memref<16x16x32x32xf64>
            memref.store %0, %alloc_4[%arg0, %arg1, %arg2, %arg3] : memref<16x32x32x16xf64>
          }
        }
      }
    }
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x32x32x16xf64> into memref<16x16384xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<32x32x16x32xf64> into memref<16384x32xf64>
    scf.for %arg0 = %c0 to %c16384 step %c3072 {
      %0 = arith.subi %c16384, %arg0 : index
      %1 = arith.minsi %0, %c3072 : index
      scf.parallel (%arg1, %arg2, %arg3) = (%c0, %c0, %c0) to (%c32, %c16, %1) step (%c6, %c8, %c3072) {
        %2 = arith.subi %c32, %arg1 : index
        %3 = arith.minsi %2, %c6 : index
        %4 = arith.subi %c16, %arg2 : index
        %5 = arith.minsi %4, %c8 : index
        %6 = arith.subi %1, %arg3 : index
        %7 = arith.minsi %6, %c3072 : index
        %8 = arith.addi %arg0, %arg3 : index
        %subview = memref.subview %collapse_shape[%arg2, %8] [%5, %7] [1, 1] : memref<16x16384xf64> to memref<?x?xf64, strided<[16384, 1], offset: ?>>
        %9 = arith.addi %arg0, %arg3 : index
        %subview_6 = memref.subview %collapse_shape_5[%9, %arg1] [%7, %3] [1, 1] : memref<16384x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
        %subview_7 = memref.subview %alloc_3[%arg2, %arg1] [%5, %3] [1, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
        scf.for %arg4 = %c0 to %5 step %c1 {
          scf.for %arg5 = %c0 to %3 step %c1 {
            scf.for %arg6 = %c0 to %7 step %c1 {
              %10 = memref.load %subview[%arg4, %arg6] : memref<?x?xf64, strided<[16384, 1], offset: ?>>
              %11 = memref.load %subview_6[%arg6, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
              %12 = memref.load %subview_7[%arg4, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
              %13 = arith.mulf %10, %11 : f64
              %14 = arith.addf %12, %13 : f64
              memref.store %14, %subview_7[%arg4, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
            }
          }
        }
        scf.reduce 
      }
    }
    %cast = memref.cast %alloc_3 : memref<16x32xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c16 = arith.constant 16 : index
    %c6 = arith.constant 6 : index
    %c32 = arith.constant 32 : index
    %c3072 = arith.constant 3072 : index
    %c16384 = arith.constant 16384 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c16 step %c1 {
        scf.for %arg2 = %c0 to %c32 step %c1 {
          scf.for %arg3 = %c0 to %c32 step %c1 {
            memref.store %cst_1, %alloc[%arg0, %arg1, %arg2, %arg3] : memref<16x16x32x32xf64>
          }
        }
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
    scf.for %arg0 = %c0 to %c32 step %c1 {
      scf.for %arg1 = %c0 to %c32 step %c1 {
        scf.for %arg2 = %c0 to %c16 step %c1 {
          scf.for %arg3 = %c0 to %c32 step %c1 {
            memref.store %cst_0, %alloc_2[%arg0, %arg1, %arg2, %arg3] : memref<32x32x16x32xf64>
          }
        }
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c32 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<16x32xf64>
      }
    }
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<16x32x32x16xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c32 step %c1 {
        scf.for %arg2 = %c0 to %c32 step %c1 {
          scf.for %arg3 = %c0 to %c16 step %c1 {
            %0 = memref.load %alloc[%arg0, %arg3, %arg1, %arg2] : memref<16x16x32x32xf64>
            memref.store %0, %alloc_4[%arg0, %arg1, %arg2, %arg3] : memref<16x32x32x16xf64>
          }
        }
      }
    }
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x32x32x16xf64> into memref<16x16384xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<32x32x16x32xf64> into memref<16384x32xf64>
    scf.for %arg0 = %c0 to %c16384 step %c3072 {
      %0 = arith.subi %c16384, %arg0 : index
      %1 = arith.minsi %0, %c3072 : index
      scf.parallel (%arg1, %arg2, %arg3) = (%c0, %c0, %c0) to (%c32, %c16, %1) step (%c6, %c8, %c3072) {
        %2 = arith.subi %c32, %arg1 : index
        %3 = arith.minsi %2, %c6 : index
        %4 = arith.subi %c16, %arg2 : index
        %5 = arith.minsi %4, %c8 : index
        %6 = arith.subi %1, %arg3 : index
        %7 = arith.minsi %6, %c3072 : index
        %8 = arith.addi %arg0, %arg3 : index
        %subview = memref.subview %collapse_shape[%arg2, %8] [%5, %7] [1, 1] : memref<16x16384xf64> to memref<?x?xf64, strided<[16384, 1], offset: ?>>
        %9 = arith.addi %arg0, %arg3 : index
        %subview_6 = memref.subview %collapse_shape_5[%9, %arg1] [%7, %3] [1, 1] : memref<16384x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
        %subview_7 = memref.subview %alloc_3[%arg2, %arg1] [%5, %3] [1, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
        scf.for %arg4 = %c0 to %5 step %c1 {
          scf.for %arg5 = %c0 to %3 step %c1 {
            scf.for %arg6 = %c0 to %7 step %c1 {
              %10 = memref.load %subview[%arg4, %arg6] : memref<?x?xf64, strided<[16384, 1], offset: ?>>
              %11 = memref.load %subview_6[%arg6, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
              %12 = memref.load %subview_7[%arg4, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
              %13 = arith.mulf %10, %11 : f64
              %14 = arith.addf %12, %13 : f64
              memref.store %14, %subview_7[%arg4, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
            }
          }
        }
        scf.reduce 
      }
    }
    %cast = memref.cast %alloc_3 : memref<16x32xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertSCFToOpenMPPass (convert-scf-to-openmp) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c16 = arith.constant 16 : index
    %c6 = arith.constant 6 : index
    %c32 = arith.constant 32 : index
    %c3072 = arith.constant 3072 : index
    %c16384 = arith.constant 16384 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c16 step %c1 {
        scf.for %arg2 = %c0 to %c32 step %c1 {
          scf.for %arg3 = %c0 to %c32 step %c1 {
            memref.store %cst_1, %alloc[%arg0, %arg1, %arg2, %arg3] : memref<16x16x32x32xf64>
          }
        }
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
    scf.for %arg0 = %c0 to %c32 step %c1 {
      scf.for %arg1 = %c0 to %c32 step %c1 {
        scf.for %arg2 = %c0 to %c16 step %c1 {
          scf.for %arg3 = %c0 to %c32 step %c1 {
            memref.store %cst_0, %alloc_2[%arg0, %arg1, %arg2, %arg3] : memref<32x32x16x32xf64>
          }
        }
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c32 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<16x32xf64>
      }
    }
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<16x32x32x16xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c32 step %c1 {
        scf.for %arg2 = %c0 to %c32 step %c1 {
          scf.for %arg3 = %c0 to %c16 step %c1 {
            %0 = memref.load %alloc[%arg0, %arg3, %arg1, %arg2] : memref<16x16x32x32xf64>
            memref.store %0, %alloc_4[%arg0, %arg1, %arg2, %arg3] : memref<16x32x32x16xf64>
          }
        }
      }
    }
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x32x32x16xf64> into memref<16x16384xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<32x32x16x32xf64> into memref<16384x32xf64>
    scf.for %arg0 = %c0 to %c16384 step %c3072 {
      %0 = arith.subi %c16384, %arg0 : index
      %1 = arith.minsi %0, %c3072 : index
      %2 = llvm.mlir.constant(1 : i64) : i64
      omp.parallel {
        omp.wsloop {
          omp.loop_nest (%arg1, %arg2, %arg3) : index = (%c0, %c0, %c0) to (%c32, %c16, %1) step (%c6, %c8, %c3072) {
            memref.alloca_scope  {
              %3 = arith.subi %c32, %arg1 : index
              %4 = arith.minsi %3, %c6 : index
              %5 = arith.subi %c16, %arg2 : index
              %6 = arith.minsi %5, %c8 : index
              %7 = arith.subi %1, %arg3 : index
              %8 = arith.minsi %7, %c3072 : index
              %9 = arith.addi %arg0, %arg3 : index
              %subview = memref.subview %collapse_shape[%arg2, %9] [%6, %8] [1, 1] : memref<16x16384xf64> to memref<?x?xf64, strided<[16384, 1], offset: ?>>
              %10 = arith.addi %arg0, %arg3 : index
              %subview_6 = memref.subview %collapse_shape_5[%10, %arg1] [%8, %4] [1, 1] : memref<16384x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
              %subview_7 = memref.subview %alloc_3[%arg2, %arg1] [%6, %4] [1, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
              scf.for %arg4 = %c0 to %6 step %c1 {
                scf.for %arg5 = %c0 to %4 step %c1 {
                  scf.for %arg6 = %c0 to %8 step %c1 {
                    %11 = memref.load %subview[%arg4, %arg6] : memref<?x?xf64, strided<[16384, 1], offset: ?>>
                    %12 = memref.load %subview_6[%arg6, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
                    %13 = memref.load %subview_7[%arg4, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
                    %14 = arith.mulf %11, %12 : f64
                    %15 = arith.addf %13, %14 : f64
                    memref.store %15, %subview_7[%arg4, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
                  }
                }
              }
            }
            omp.yield
          }
          omp.terminator
        }
        omp.terminator
      }
    }
    %cast = memref.cast %alloc_3 : memref<16x32xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c16 = arith.constant 16 : index
    %c6 = arith.constant 6 : index
    %c32 = arith.constant 32 : index
    %c3072 = arith.constant 3072 : index
    %c16384 = arith.constant 16384 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c16 step %c1 {
        scf.for %arg2 = %c0 to %c32 step %c1 {
          scf.for %arg3 = %c0 to %c32 step %c1 {
            memref.store %cst_1, %alloc[%arg0, %arg1, %arg2, %arg3] : memref<16x16x32x32xf64>
          }
        }
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
    scf.for %arg0 = %c0 to %c32 step %c1 {
      scf.for %arg1 = %c0 to %c32 step %c1 {
        scf.for %arg2 = %c0 to %c16 step %c1 {
          scf.for %arg3 = %c0 to %c32 step %c1 {
            memref.store %cst_0, %alloc_2[%arg0, %arg1, %arg2, %arg3] : memref<32x32x16x32xf64>
          }
        }
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c32 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<16x32xf64>
      }
    }
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<16x32x32x16xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c32 step %c1 {
        scf.for %arg2 = %c0 to %c32 step %c1 {
          scf.for %arg3 = %c0 to %c16 step %c1 {
            %0 = memref.load %alloc[%arg0, %arg3, %arg1, %arg2] : memref<16x16x32x32xf64>
            memref.store %0, %alloc_4[%arg0, %arg1, %arg2, %arg3] : memref<16x32x32x16xf64>
          }
        }
      }
    }
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x32x32x16xf64> into memref<16x16384xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<32x32x16x32xf64> into memref<16384x32xf64>
    scf.for %arg0 = %c0 to %c16384 step %c3072 {
      %0 = arith.subi %c16384, %arg0 : index
      %1 = arith.minsi %0, %c3072 : index
      omp.parallel {
        omp.wsloop {
          omp.loop_nest (%arg1, %arg2, %arg3) : index = (%c0, %c0, %c0) to (%c32, %c16, %1) step (%c6, %c8, %c3072) {
            %2 = arith.subi %c32, %arg1 : index
            %3 = arith.minsi %2, %c6 : index
            %4 = arith.subi %c16, %arg2 : index
            %5 = arith.minsi %4, %c8 : index
            %6 = arith.subi %1, %arg3 : index
            %7 = arith.minsi %6, %c3072 : index
            %8 = arith.addi %arg0, %arg3 : index
            %subview = memref.subview %collapse_shape[%arg2, %8] [%5, %7] [1, 1] : memref<16x16384xf64> to memref<?x?xf64, strided<[16384, 1], offset: ?>>
            %9 = arith.addi %arg0, %arg3 : index
            %subview_6 = memref.subview %collapse_shape_5[%9, %arg1] [%7, %3] [1, 1] : memref<16384x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
            %subview_7 = memref.subview %alloc_3[%arg2, %arg1] [%5, %3] [1, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
            scf.for %arg4 = %c0 to %5 step %c1 {
              scf.for %arg5 = %c0 to %3 step %c1 {
                scf.for %arg6 = %c0 to %7 step %c1 {
                  %10 = memref.load %subview[%arg4, %arg6] : memref<?x?xf64, strided<[16384, 1], offset: ?>>
                  %11 = memref.load %subview_6[%arg6, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
                  %12 = memref.load %subview_7[%arg4, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
                  %13 = arith.mulf %10, %11 : f64
                  %14 = arith.addf %12, %13 : f64
                  memref.store %14, %subview_7[%arg4, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
                }
              }
            }
            omp.yield
          }
          omp.terminator
        }
        omp.terminator
      }
    }
    %cast = memref.cast %alloc_3 : memref<16x32xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c16 = arith.constant 16 : index
    %c6 = arith.constant 6 : index
    %c32 = arith.constant 32 : index
    %c3072 = arith.constant 3072 : index
    %c16384 = arith.constant 16384 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c16 step %c1 {
        scf.for %arg2 = %c0 to %c32 step %c1 {
          scf.for %arg3 = %c0 to %c32 step %c1 {
            memref.store %cst_1, %alloc[%arg0, %arg1, %arg2, %arg3] : memref<16x16x32x32xf64>
          }
        }
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
    scf.for %arg0 = %c0 to %c32 step %c1 {
      scf.for %arg1 = %c0 to %c32 step %c1 {
        scf.for %arg2 = %c0 to %c16 step %c1 {
          scf.for %arg3 = %c0 to %c32 step %c1 {
            memref.store %cst_0, %alloc_2[%arg0, %arg1, %arg2, %arg3] : memref<32x32x16x32xf64>
          }
        }
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c32 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<16x32xf64>
      }
    }
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<16x32x32x16xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c32 step %c1 {
        scf.for %arg2 = %c0 to %c32 step %c1 {
          scf.for %arg3 = %c0 to %c16 step %c1 {
            %0 = memref.load %alloc[%arg0, %arg3, %arg1, %arg2] : memref<16x16x32x32xf64>
            memref.store %0, %alloc_4[%arg0, %arg1, %arg2, %arg3] : memref<16x32x32x16xf64>
          }
        }
      }
    }
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x32x32x16xf64> into memref<16x16384xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<32x32x16x32xf64> into memref<16384x32xf64>
    scf.for %arg0 = %c0 to %c16384 step %c3072 {
      %0 = arith.subi %c16384, %arg0 : index
      %1 = arith.minsi %0, %c3072 : index
      omp.parallel {
        omp.wsloop {
          omp.loop_nest (%arg1, %arg2, %arg3) : index = (%c0, %c0, %c0) to (%c32, %c16, %1) step (%c6, %c8, %c3072) {
            %2 = arith.subi %c32, %arg1 : index
            %3 = arith.minsi %2, %c6 : index
            %4 = arith.subi %c16, %arg2 : index
            %5 = arith.minsi %4, %c8 : index
            %6 = arith.subi %1, %arg3 : index
            %7 = arith.minsi %6, %c3072 : index
            %8 = arith.addi %arg0, %arg3 : index
            %subview = memref.subview %collapse_shape[%arg2, %8] [%5, %7] [1, 1] : memref<16x16384xf64> to memref<?x?xf64, strided<[16384, 1], offset: ?>>
            %subview_6 = memref.subview %collapse_shape_5[%8, %arg1] [%7, %3] [1, 1] : memref<16384x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
            %subview_7 = memref.subview %alloc_3[%arg2, %arg1] [%5, %3] [1, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
            scf.for %arg4 = %c0 to %5 step %c1 {
              scf.for %arg5 = %c0 to %3 step %c1 {
                scf.for %arg6 = %c0 to %7 step %c1 {
                  %9 = memref.load %subview[%arg4, %arg6] : memref<?x?xf64, strided<[16384, 1], offset: ?>>
                  %10 = memref.load %subview_6[%arg6, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
                  %11 = memref.load %subview_7[%arg4, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
                  %12 = arith.mulf %9, %10 : f64
                  %13 = arith.addf %11, %12 : f64
                  memref.store %13, %subview_7[%arg4, %arg5] : memref<?x?xf64, strided<[32, 1], offset: ?>>
                }
              }
            }
            omp.yield
          }
          omp.terminator
        }
        omp.terminator
      }
    }
    %cast = memref.cast %alloc_3 : memref<16x32xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After SCFToControlFlow (convert-scf-to-cf) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c16 = arith.constant 16 : index
    %c6 = arith.constant 6 : index
    %c32 = arith.constant 32 : index
    %c3072 = arith.constant 3072 : index
    %c16384 = arith.constant 16384 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb11
    %1 = arith.cmpi slt, %0, %c16 : index
    cf.cond_br %1, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
    %3 = arith.cmpi slt, %2, %c16 : index
    cf.cond_br %3, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    cf.br ^bb5(%c0 : index)
  ^bb5(%4: index):  // 2 preds: ^bb4, ^bb9
    %5 = arith.cmpi slt, %4, %c32 : index
    cf.cond_br %5, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb8
    %7 = arith.cmpi slt, %6, %c32 : index
    cf.cond_br %7, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %cst_1, %alloc[%0, %2, %4, %6] : memref<16x16x32x32xf64>
    %8 = arith.addi %6, %c1 : index
    cf.br ^bb7(%8 : index)
  ^bb9:  // pred: ^bb7
    %9 = arith.addi %4, %c1 : index
    cf.br ^bb5(%9 : index)
  ^bb10:  // pred: ^bb5
    %10 = arith.addi %2, %c1 : index
    cf.br ^bb3(%10 : index)
  ^bb11:  // pred: ^bb3
    %11 = arith.addi %0, %c1 : index
    cf.br ^bb1(%11 : index)
  ^bb12:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb23
    %13 = arith.cmpi slt, %12, %c32 : index
    cf.cond_br %13, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb22
    %15 = arith.cmpi slt, %14, %c32 : index
    cf.cond_br %15, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    cf.br ^bb17(%c0 : index)
  ^bb17(%16: index):  // 2 preds: ^bb16, ^bb21
    %17 = arith.cmpi slt, %16, %c16 : index
    cf.cond_br %17, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    cf.br ^bb19(%c0 : index)
  ^bb19(%18: index):  // 2 preds: ^bb18, ^bb20
    %19 = arith.cmpi slt, %18, %c32 : index
    cf.cond_br %19, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %cst_0, %alloc_2[%12, %14, %16, %18] : memref<32x32x16x32xf64>
    %20 = arith.addi %18, %c1 : index
    cf.br ^bb19(%20 : index)
  ^bb21:  // pred: ^bb19
    %21 = arith.addi %16, %c1 : index
    cf.br ^bb17(%21 : index)
  ^bb22:  // pred: ^bb17
    %22 = arith.addi %14, %c1 : index
    cf.br ^bb15(%22 : index)
  ^bb23:  // pred: ^bb15
    %23 = arith.addi %12, %c1 : index
    cf.br ^bb13(%23 : index)
  ^bb24:  // pred: ^bb13
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%24: index):  // 2 preds: ^bb24, ^bb29
    %25 = arith.cmpi slt, %24, %c16 : index
    cf.cond_br %25, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%26: index):  // 2 preds: ^bb26, ^bb28
    %27 = arith.cmpi slt, %26, %c32 : index
    cf.cond_br %27, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    memref.store %cst, %alloc_3[%24, %26] : memref<16x32xf64>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb27(%28 : index)
  ^bb29:  // pred: ^bb27
    %29 = arith.addi %24, %c1 : index
    cf.br ^bb25(%29 : index)
  ^bb30:  // pred: ^bb25
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<16x32x32x16xf64>
    cf.br ^bb31(%c0 : index)
  ^bb31(%30: index):  // 2 preds: ^bb30, ^bb41
    %31 = arith.cmpi slt, %30, %c16 : index
    cf.cond_br %31, ^bb32, ^bb42
  ^bb32:  // pred: ^bb31
    cf.br ^bb33(%c0 : index)
  ^bb33(%32: index):  // 2 preds: ^bb32, ^bb40
    %33 = arith.cmpi slt, %32, %c32 : index
    cf.cond_br %33, ^bb34, ^bb41
  ^bb34:  // pred: ^bb33
    cf.br ^bb35(%c0 : index)
  ^bb35(%34: index):  // 2 preds: ^bb34, ^bb39
    %35 = arith.cmpi slt, %34, %c32 : index
    cf.cond_br %35, ^bb36, ^bb40
  ^bb36:  // pred: ^bb35
    cf.br ^bb37(%c0 : index)
  ^bb37(%36: index):  // 2 preds: ^bb36, ^bb38
    %37 = arith.cmpi slt, %36, %c16 : index
    cf.cond_br %37, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %38 = memref.load %alloc[%30, %36, %32, %34] : memref<16x16x32x32xf64>
    memref.store %38, %alloc_4[%30, %32, %34, %36] : memref<16x32x32x16xf64>
    %39 = arith.addi %36, %c1 : index
    cf.br ^bb37(%39 : index)
  ^bb39:  // pred: ^bb37
    %40 = arith.addi %34, %c1 : index
    cf.br ^bb35(%40 : index)
  ^bb40:  // pred: ^bb35
    %41 = arith.addi %32, %c1 : index
    cf.br ^bb33(%41 : index)
  ^bb41:  // pred: ^bb33
    %42 = arith.addi %30, %c1 : index
    cf.br ^bb31(%42 : index)
  ^bb42:  // pred: ^bb31
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x32x32x16xf64> into memref<16x16384xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<32x32x16x32xf64> into memref<16384x32xf64>
    cf.br ^bb43(%c0 : index)
  ^bb43(%43: index):  // 2 preds: ^bb42, ^bb44
    %44 = arith.cmpi slt, %43, %c16384 : index
    cf.cond_br %44, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %45 = arith.subi %c16384, %43 : index
    %46 = arith.minsi %45, %c3072 : index
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0, %arg1, %arg2) : index = (%c0, %c0, %c0) to (%c32, %c16, %46) step (%c6, %c8, %c3072) {
          %48 = arith.subi %c32, %arg0 : index
          %49 = arith.minsi %48, %c6 : index
          %50 = arith.subi %c16, %arg1 : index
          %51 = arith.minsi %50, %c8 : index
          %52 = arith.subi %46, %arg2 : index
          %53 = arith.minsi %52, %c3072 : index
          %54 = arith.addi %43, %arg2 : index
          %subview = memref.subview %collapse_shape[%arg1, %54] [%51, %53] [1, 1] : memref<16x16384xf64> to memref<?x?xf64, strided<[16384, 1], offset: ?>>
          %subview_6 = memref.subview %collapse_shape_5[%54, %arg0] [%53, %49] [1, 1] : memref<16384x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
          %subview_7 = memref.subview %alloc_3[%arg1, %arg0] [%51, %49] [1, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
          cf.br ^bb1(%c0 : index)
        ^bb1(%55: index):  // 2 preds: ^bb0, ^bb8
          %56 = arith.cmpi slt, %55, %51 : index
          cf.cond_br %56, ^bb2, ^bb9
        ^bb2:  // pred: ^bb1
          cf.br ^bb3(%c0 : index)
        ^bb3(%57: index):  // 2 preds: ^bb2, ^bb7
          %58 = arith.cmpi slt, %57, %49 : index
          cf.cond_br %58, ^bb4, ^bb8
        ^bb4:  // pred: ^bb3
          cf.br ^bb5(%c0 : index)
        ^bb5(%59: index):  // 2 preds: ^bb4, ^bb6
          %60 = arith.cmpi slt, %59, %53 : index
          cf.cond_br %60, ^bb6, ^bb7
        ^bb6:  // pred: ^bb5
          %61 = memref.load %subview[%55, %59] : memref<?x?xf64, strided<[16384, 1], offset: ?>>
          %62 = memref.load %subview_6[%59, %57] : memref<?x?xf64, strided<[32, 1], offset: ?>>
          %63 = memref.load %subview_7[%55, %57] : memref<?x?xf64, strided<[32, 1], offset: ?>>
          %64 = arith.mulf %61, %62 : f64
          %65 = arith.addf %63, %64 : f64
          memref.store %65, %subview_7[%55, %57] : memref<?x?xf64, strided<[32, 1], offset: ?>>
          %66 = arith.addi %59, %c1 : index
          cf.br ^bb5(%66 : index)
        ^bb7:  // pred: ^bb5
          %67 = arith.addi %57, %c1 : index
          cf.br ^bb3(%67 : index)
        ^bb8:  // pred: ^bb3
          %68 = arith.addi %55, %c1 : index
          cf.br ^bb1(%68 : index)
        ^bb9:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %47 = arith.addi %43, %c3072 : index
    cf.br ^bb43(%47 : index)
  ^bb45:  // pred: ^bb43
    %cast = memref.cast %alloc_3 : memref<16x32xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertVectorToLLVMPass (convert-vector-to-llvm) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c16 = arith.constant 16 : index
    %c6 = arith.constant 6 : index
    %c32 = arith.constant 32 : index
    %c3072 = arith.constant 3072 : index
    %c16384 = arith.constant 16384 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb11
    %1 = arith.cmpi slt, %0, %c16 : index
    cf.cond_br %1, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
    %3 = arith.cmpi slt, %2, %c16 : index
    cf.cond_br %3, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    cf.br ^bb5(%c0 : index)
  ^bb5(%4: index):  // 2 preds: ^bb4, ^bb9
    %5 = arith.cmpi slt, %4, %c32 : index
    cf.cond_br %5, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb8
    %7 = arith.cmpi slt, %6, %c32 : index
    cf.cond_br %7, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %cst_1, %alloc[%0, %2, %4, %6] : memref<16x16x32x32xf64>
    %8 = arith.addi %6, %c1 : index
    cf.br ^bb7(%8 : index)
  ^bb9:  // pred: ^bb7
    %9 = arith.addi %4, %c1 : index
    cf.br ^bb5(%9 : index)
  ^bb10:  // pred: ^bb5
    %10 = arith.addi %2, %c1 : index
    cf.br ^bb3(%10 : index)
  ^bb11:  // pred: ^bb3
    %11 = arith.addi %0, %c1 : index
    cf.br ^bb1(%11 : index)
  ^bb12:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb23
    %13 = arith.cmpi slt, %12, %c32 : index
    cf.cond_br %13, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb22
    %15 = arith.cmpi slt, %14, %c32 : index
    cf.cond_br %15, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    cf.br ^bb17(%c0 : index)
  ^bb17(%16: index):  // 2 preds: ^bb16, ^bb21
    %17 = arith.cmpi slt, %16, %c16 : index
    cf.cond_br %17, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    cf.br ^bb19(%c0 : index)
  ^bb19(%18: index):  // 2 preds: ^bb18, ^bb20
    %19 = arith.cmpi slt, %18, %c32 : index
    cf.cond_br %19, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %cst_0, %alloc_2[%12, %14, %16, %18] : memref<32x32x16x32xf64>
    %20 = arith.addi %18, %c1 : index
    cf.br ^bb19(%20 : index)
  ^bb21:  // pred: ^bb19
    %21 = arith.addi %16, %c1 : index
    cf.br ^bb17(%21 : index)
  ^bb22:  // pred: ^bb17
    %22 = arith.addi %14, %c1 : index
    cf.br ^bb15(%22 : index)
  ^bb23:  // pred: ^bb15
    %23 = arith.addi %12, %c1 : index
    cf.br ^bb13(%23 : index)
  ^bb24:  // pred: ^bb13
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%24: index):  // 2 preds: ^bb24, ^bb29
    %25 = arith.cmpi slt, %24, %c16 : index
    cf.cond_br %25, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%26: index):  // 2 preds: ^bb26, ^bb28
    %27 = arith.cmpi slt, %26, %c32 : index
    cf.cond_br %27, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    memref.store %cst, %alloc_3[%24, %26] : memref<16x32xf64>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb27(%28 : index)
  ^bb29:  // pred: ^bb27
    %29 = arith.addi %24, %c1 : index
    cf.br ^bb25(%29 : index)
  ^bb30:  // pred: ^bb25
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<16x32x32x16xf64>
    cf.br ^bb31(%c0 : index)
  ^bb31(%30: index):  // 2 preds: ^bb30, ^bb41
    %31 = arith.cmpi slt, %30, %c16 : index
    cf.cond_br %31, ^bb32, ^bb42
  ^bb32:  // pred: ^bb31
    cf.br ^bb33(%c0 : index)
  ^bb33(%32: index):  // 2 preds: ^bb32, ^bb40
    %33 = arith.cmpi slt, %32, %c32 : index
    cf.cond_br %33, ^bb34, ^bb41
  ^bb34:  // pred: ^bb33
    cf.br ^bb35(%c0 : index)
  ^bb35(%34: index):  // 2 preds: ^bb34, ^bb39
    %35 = arith.cmpi slt, %34, %c32 : index
    cf.cond_br %35, ^bb36, ^bb40
  ^bb36:  // pred: ^bb35
    cf.br ^bb37(%c0 : index)
  ^bb37(%36: index):  // 2 preds: ^bb36, ^bb38
    %37 = arith.cmpi slt, %36, %c16 : index
    cf.cond_br %37, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %38 = memref.load %alloc[%30, %36, %32, %34] : memref<16x16x32x32xf64>
    memref.store %38, %alloc_4[%30, %32, %34, %36] : memref<16x32x32x16xf64>
    %39 = arith.addi %36, %c1 : index
    cf.br ^bb37(%39 : index)
  ^bb39:  // pred: ^bb37
    %40 = arith.addi %34, %c1 : index
    cf.br ^bb35(%40 : index)
  ^bb40:  // pred: ^bb35
    %41 = arith.addi %32, %c1 : index
    cf.br ^bb33(%41 : index)
  ^bb41:  // pred: ^bb33
    %42 = arith.addi %30, %c1 : index
    cf.br ^bb31(%42 : index)
  ^bb42:  // pred: ^bb31
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x32x32x16xf64> into memref<16x16384xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<32x32x16x32xf64> into memref<16384x32xf64>
    cf.br ^bb43(%c0 : index)
  ^bb43(%43: index):  // 2 preds: ^bb42, ^bb44
    %44 = arith.cmpi slt, %43, %c16384 : index
    cf.cond_br %44, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %45 = arith.subi %c16384, %43 : index
    %46 = arith.minsi %45, %c3072 : index
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0, %arg1, %arg2) : index = (%c0, %c0, %c0) to (%c32, %c16, %46) step (%c6, %c8, %c3072) {
          %48 = arith.subi %c32, %arg0 : index
          %49 = arith.minsi %48, %c6 : index
          %50 = arith.subi %c16, %arg1 : index
          %51 = arith.minsi %50, %c8 : index
          %52 = arith.subi %46, %arg2 : index
          %53 = arith.minsi %52, %c3072 : index
          %54 = arith.addi %43, %arg2 : index
          %subview = memref.subview %collapse_shape[%arg1, %54] [%51, %53] [1, 1] : memref<16x16384xf64> to memref<?x?xf64, strided<[16384, 1], offset: ?>>
          %subview_6 = memref.subview %collapse_shape_5[%54, %arg0] [%53, %49] [1, 1] : memref<16384x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
          %subview_7 = memref.subview %alloc_3[%arg1, %arg0] [%51, %49] [1, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
          cf.br ^bb1(%c0 : index)
        ^bb1(%55: index):  // 2 preds: ^bb0, ^bb8
          %56 = arith.cmpi slt, %55, %51 : index
          cf.cond_br %56, ^bb2, ^bb9
        ^bb2:  // pred: ^bb1
          cf.br ^bb3(%c0 : index)
        ^bb3(%57: index):  // 2 preds: ^bb2, ^bb7
          %58 = arith.cmpi slt, %57, %49 : index
          cf.cond_br %58, ^bb4, ^bb8
        ^bb4:  // pred: ^bb3
          cf.br ^bb5(%c0 : index)
        ^bb5(%59: index):  // 2 preds: ^bb4, ^bb6
          %60 = arith.cmpi slt, %59, %53 : index
          cf.cond_br %60, ^bb6, ^bb7
        ^bb6:  // pred: ^bb5
          %61 = memref.load %subview[%55, %59] : memref<?x?xf64, strided<[16384, 1], offset: ?>>
          %62 = memref.load %subview_6[%59, %57] : memref<?x?xf64, strided<[32, 1], offset: ?>>
          %63 = memref.load %subview_7[%55, %57] : memref<?x?xf64, strided<[32, 1], offset: ?>>
          %64 = arith.mulf %61, %62 : f64
          %65 = arith.addf %63, %64 : f64
          memref.store %65, %subview_7[%55, %57] : memref<?x?xf64, strided<[32, 1], offset: ?>>
          %66 = arith.addi %59, %c1 : index
          cf.br ^bb5(%66 : index)
        ^bb7:  // pred: ^bb5
          %67 = arith.addi %57, %c1 : index
          cf.br ^bb3(%67 : index)
        ^bb8:  // pred: ^bb3
          %68 = arith.addi %55, %c1 : index
          cf.br ^bb1(%68 : index)
        ^bb9:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %47 = arith.addi %43, %c3072 : index
    cf.br ^bb43(%47 : index)
  ^bb45:  // pred: ^bb43
    %cast = memref.cast %alloc_3 : memref<16x32xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c8 = arith.constant 8 : index
  %c16 = arith.constant 16 : index
  %c6 = arith.constant 6 : index
  %c32 = arith.constant 32 : index
  %c3072 = arith.constant 3072 : index
  %c16384 = arith.constant 16384 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
  cf.br ^bb1(%c0 : index)
^bb1(%0: index):  // 2 preds: ^bb0, ^bb11
  %1 = arith.cmpi slt, %0, %c16 : index
  cf.cond_br %1, ^bb2, ^bb12
^bb2:  // pred: ^bb1
  cf.br ^bb3(%c0 : index)
^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
  %3 = arith.cmpi slt, %2, %c16 : index
  cf.cond_br %3, ^bb4, ^bb11
^bb4:  // pred: ^bb3
  cf.br ^bb5(%c0 : index)
^bb5(%4: index):  // 2 preds: ^bb4, ^bb9
  %5 = arith.cmpi slt, %4, %c32 : index
  cf.cond_br %5, ^bb6, ^bb10
^bb6:  // pred: ^bb5
  cf.br ^bb7(%c0 : index)
^bb7(%6: index):  // 2 preds: ^bb6, ^bb8
  %7 = arith.cmpi slt, %6, %c32 : index
  cf.cond_br %7, ^bb8, ^bb9
^bb8:  // pred: ^bb7
  memref.store %cst_1, %alloc[%0, %2, %4, %6] : memref<16x16x32x32xf64>
  %8 = arith.addi %6, %c1 : index
  cf.br ^bb7(%8 : index)
^bb9:  // pred: ^bb7
  %9 = arith.addi %4, %c1 : index
  cf.br ^bb5(%9 : index)
^bb10:  // pred: ^bb5
  %10 = arith.addi %2, %c1 : index
  cf.br ^bb3(%10 : index)
^bb11:  // pred: ^bb3
  %11 = arith.addi %0, %c1 : index
  cf.br ^bb1(%11 : index)
^bb12:  // pred: ^bb1
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
  cf.br ^bb13(%c0 : index)
^bb13(%12: index):  // 2 preds: ^bb12, ^bb23
  %13 = arith.cmpi slt, %12, %c32 : index
  cf.cond_br %13, ^bb14, ^bb24
^bb14:  // pred: ^bb13
  cf.br ^bb15(%c0 : index)
^bb15(%14: index):  // 2 preds: ^bb14, ^bb22
  %15 = arith.cmpi slt, %14, %c32 : index
  cf.cond_br %15, ^bb16, ^bb23
^bb16:  // pred: ^bb15
  cf.br ^bb17(%c0 : index)
^bb17(%16: index):  // 2 preds: ^bb16, ^bb21
  %17 = arith.cmpi slt, %16, %c16 : index
  cf.cond_br %17, ^bb18, ^bb22
^bb18:  // pred: ^bb17
  cf.br ^bb19(%c0 : index)
^bb19(%18: index):  // 2 preds: ^bb18, ^bb20
  %19 = arith.cmpi slt, %18, %c32 : index
  cf.cond_br %19, ^bb20, ^bb21
^bb20:  // pred: ^bb19
  memref.store %cst_0, %alloc_2[%12, %14, %16, %18] : memref<32x32x16x32xf64>
  %20 = arith.addi %18, %c1 : index
  cf.br ^bb19(%20 : index)
^bb21:  // pred: ^bb19
  %21 = arith.addi %16, %c1 : index
  cf.br ^bb17(%21 : index)
^bb22:  // pred: ^bb17
  %22 = arith.addi %14, %c1 : index
  cf.br ^bb15(%22 : index)
^bb23:  // pred: ^bb15
  %23 = arith.addi %12, %c1 : index
  cf.br ^bb13(%23 : index)
^bb24:  // pred: ^bb13
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
  cf.br ^bb25(%c0 : index)
^bb25(%24: index):  // 2 preds: ^bb24, ^bb29
  %25 = arith.cmpi slt, %24, %c16 : index
  cf.cond_br %25, ^bb26, ^bb30
^bb26:  // pred: ^bb25
  cf.br ^bb27(%c0 : index)
^bb27(%26: index):  // 2 preds: ^bb26, ^bb28
  %27 = arith.cmpi slt, %26, %c32 : index
  cf.cond_br %27, ^bb28, ^bb29
^bb28:  // pred: ^bb27
  memref.store %cst, %alloc_3[%24, %26] : memref<16x32xf64>
  %28 = arith.addi %26, %c1 : index
  cf.br ^bb27(%28 : index)
^bb29:  // pred: ^bb27
  %29 = arith.addi %24, %c1 : index
  cf.br ^bb25(%29 : index)
^bb30:  // pred: ^bb25
  %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<16x32x32x16xf64>
  cf.br ^bb31(%c0 : index)
^bb31(%30: index):  // 2 preds: ^bb30, ^bb41
  %31 = arith.cmpi slt, %30, %c16 : index
  cf.cond_br %31, ^bb32, ^bb42
^bb32:  // pred: ^bb31
  cf.br ^bb33(%c0 : index)
^bb33(%32: index):  // 2 preds: ^bb32, ^bb40
  %33 = arith.cmpi slt, %32, %c32 : index
  cf.cond_br %33, ^bb34, ^bb41
^bb34:  // pred: ^bb33
  cf.br ^bb35(%c0 : index)
^bb35(%34: index):  // 2 preds: ^bb34, ^bb39
  %35 = arith.cmpi slt, %34, %c32 : index
  cf.cond_br %35, ^bb36, ^bb40
^bb36:  // pred: ^bb35
  cf.br ^bb37(%c0 : index)
^bb37(%36: index):  // 2 preds: ^bb36, ^bb38
  %37 = arith.cmpi slt, %36, %c16 : index
  cf.cond_br %37, ^bb38, ^bb39
^bb38:  // pred: ^bb37
  %38 = memref.load %alloc[%30, %36, %32, %34] : memref<16x16x32x32xf64>
  memref.store %38, %alloc_4[%30, %32, %34, %36] : memref<16x32x32x16xf64>
  %39 = arith.addi %36, %c1 : index
  cf.br ^bb37(%39 : index)
^bb39:  // pred: ^bb37
  %40 = arith.addi %34, %c1 : index
  cf.br ^bb35(%40 : index)
^bb40:  // pred: ^bb35
  %41 = arith.addi %32, %c1 : index
  cf.br ^bb33(%41 : index)
^bb41:  // pred: ^bb33
  %42 = arith.addi %30, %c1 : index
  cf.br ^bb31(%42 : index)
^bb42:  // pred: ^bb31
  %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x32x32x16xf64> into memref<16x16384xf64>
  %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<32x32x16x32xf64> into memref<16384x32xf64>
  cf.br ^bb43(%c0 : index)
^bb43(%43: index):  // 2 preds: ^bb42, ^bb44
  %44 = arith.cmpi slt, %43, %c16384 : index
  cf.cond_br %44, ^bb44, ^bb45
^bb44:  // pred: ^bb43
  %45 = arith.subi %c16384, %43 : index
  %46 = arith.minsi %45, %c3072 : index
  omp.parallel {
    omp.wsloop {
      omp.loop_nest (%arg0, %arg1, %arg2) : index = (%c0, %c0, %c0) to (%c32, %c16, %46) step (%c6, %c8, %c3072) {
        %48 = arith.subi %c32, %arg0 : index
        %49 = arith.minsi %48, %c6 : index
        %50 = arith.subi %c16, %arg1 : index
        %51 = arith.minsi %50, %c8 : index
        %52 = arith.subi %46, %arg2 : index
        %53 = arith.minsi %52, %c3072 : index
        %54 = arith.addi %43, %arg2 : index
        %subview = memref.subview %collapse_shape[%arg1, %54] [%51, %53] [1, 1] : memref<16x16384xf64> to memref<?x?xf64, strided<[16384, 1], offset: ?>>
        %subview_6 = memref.subview %collapse_shape_5[%54, %arg0] [%53, %49] [1, 1] : memref<16384x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
        %subview_7 = memref.subview %alloc_3[%arg1, %arg0] [%51, %49] [1, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
        cf.br ^bb1(%c0 : index)
      ^bb1(%55: index):  // 2 preds: ^bb0, ^bb8
        %56 = arith.cmpi slt, %55, %51 : index
        cf.cond_br %56, ^bb2, ^bb9
      ^bb2:  // pred: ^bb1
        cf.br ^bb3(%c0 : index)
      ^bb3(%57: index):  // 2 preds: ^bb2, ^bb7
        %58 = arith.cmpi slt, %57, %49 : index
        cf.cond_br %58, ^bb4, ^bb8
      ^bb4:  // pred: ^bb3
        cf.br ^bb5(%c0 : index)
      ^bb5(%59: index):  // 2 preds: ^bb4, ^bb6
        %60 = arith.cmpi slt, %59, %53 : index
        cf.cond_br %60, ^bb6, ^bb7
      ^bb6:  // pred: ^bb5
        %61 = memref.load %subview[%55, %59] : memref<?x?xf64, strided<[16384, 1], offset: ?>>
        %62 = memref.load %subview_6[%59, %57] : memref<?x?xf64, strided<[32, 1], offset: ?>>
        %63 = memref.load %subview_7[%55, %57] : memref<?x?xf64, strided<[32, 1], offset: ?>>
        %64 = arith.mulf %61, %62 : f64
        %65 = arith.addf %63, %64 : f64
        memref.store %65, %subview_7[%55, %57] : memref<?x?xf64, strided<[32, 1], offset: ?>>
        %66 = arith.addi %59, %c1 : index
        cf.br ^bb5(%66 : index)
      ^bb7:  // pred: ^bb5
        %67 = arith.addi %57, %c1 : index
        cf.br ^bb3(%67 : index)
      ^bb8:  // pred: ^bb3
        %68 = arith.addi %55, %c1 : index
        cf.br ^bb1(%68 : index)
      ^bb9:  // pred: ^bb1
        omp.yield
      }
      omp.terminator
    }
    omp.terminator
  }
  %47 = arith.addi %43, %c3072 : index
  cf.br ^bb43(%47 : index)
^bb45:  // pred: ^bb43
  %cast = memref.cast %alloc_3 : memref<16x32xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ExpandStridedMetadata (expand-strided-metadata) //----- //
#map = affine_map<()[s0, s1] -> (s0 * 16384 + s1)>
#map1 = affine_map<()[s0, s1] -> (s0 * 32 + s1)>
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c16 = arith.constant 16 : index
    %c6 = arith.constant 6 : index
    %c32 = arith.constant 32 : index
    %c3072 = arith.constant 3072 : index
    %c16384 = arith.constant 16384 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb11
    %1 = arith.cmpi slt, %0, %c16 : index
    cf.cond_br %1, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
    %3 = arith.cmpi slt, %2, %c16 : index
    cf.cond_br %3, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    cf.br ^bb5(%c0 : index)
  ^bb5(%4: index):  // 2 preds: ^bb4, ^bb9
    %5 = arith.cmpi slt, %4, %c32 : index
    cf.cond_br %5, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb8
    %7 = arith.cmpi slt, %6, %c32 : index
    cf.cond_br %7, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %cst_1, %alloc[%0, %2, %4, %6] : memref<16x16x32x32xf64>
    %8 = arith.addi %6, %c1 : index
    cf.br ^bb7(%8 : index)
  ^bb9:  // pred: ^bb7
    %9 = arith.addi %4, %c1 : index
    cf.br ^bb5(%9 : index)
  ^bb10:  // pred: ^bb5
    %10 = arith.addi %2, %c1 : index
    cf.br ^bb3(%10 : index)
  ^bb11:  // pred: ^bb3
    %11 = arith.addi %0, %c1 : index
    cf.br ^bb1(%11 : index)
  ^bb12:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb23
    %13 = arith.cmpi slt, %12, %c32 : index
    cf.cond_br %13, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb22
    %15 = arith.cmpi slt, %14, %c32 : index
    cf.cond_br %15, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    cf.br ^bb17(%c0 : index)
  ^bb17(%16: index):  // 2 preds: ^bb16, ^bb21
    %17 = arith.cmpi slt, %16, %c16 : index
    cf.cond_br %17, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    cf.br ^bb19(%c0 : index)
  ^bb19(%18: index):  // 2 preds: ^bb18, ^bb20
    %19 = arith.cmpi slt, %18, %c32 : index
    cf.cond_br %19, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %cst_0, %alloc_2[%12, %14, %16, %18] : memref<32x32x16x32xf64>
    %20 = arith.addi %18, %c1 : index
    cf.br ^bb19(%20 : index)
  ^bb21:  // pred: ^bb19
    %21 = arith.addi %16, %c1 : index
    cf.br ^bb17(%21 : index)
  ^bb22:  // pred: ^bb17
    %22 = arith.addi %14, %c1 : index
    cf.br ^bb15(%22 : index)
  ^bb23:  // pred: ^bb15
    %23 = arith.addi %12, %c1 : index
    cf.br ^bb13(%23 : index)
  ^bb24:  // pred: ^bb13
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%24: index):  // 2 preds: ^bb24, ^bb29
    %25 = arith.cmpi slt, %24, %c16 : index
    cf.cond_br %25, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%26: index):  // 2 preds: ^bb26, ^bb28
    %27 = arith.cmpi slt, %26, %c32 : index
    cf.cond_br %27, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    memref.store %cst, %alloc_3[%24, %26] : memref<16x32xf64>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb27(%28 : index)
  ^bb29:  // pred: ^bb27
    %29 = arith.addi %24, %c1 : index
    cf.br ^bb25(%29 : index)
  ^bb30:  // pred: ^bb25
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<16x32x32x16xf64>
    cf.br ^bb31(%c0 : index)
  ^bb31(%30: index):  // 2 preds: ^bb30, ^bb41
    %31 = arith.cmpi slt, %30, %c16 : index
    cf.cond_br %31, ^bb32, ^bb42
  ^bb32:  // pred: ^bb31
    cf.br ^bb33(%c0 : index)
  ^bb33(%32: index):  // 2 preds: ^bb32, ^bb40
    %33 = arith.cmpi slt, %32, %c32 : index
    cf.cond_br %33, ^bb34, ^bb41
  ^bb34:  // pred: ^bb33
    cf.br ^bb35(%c0 : index)
  ^bb35(%34: index):  // 2 preds: ^bb34, ^bb39
    %35 = arith.cmpi slt, %34, %c32 : index
    cf.cond_br %35, ^bb36, ^bb40
  ^bb36:  // pred: ^bb35
    cf.br ^bb37(%c0 : index)
  ^bb37(%36: index):  // 2 preds: ^bb36, ^bb38
    %37 = arith.cmpi slt, %36, %c16 : index
    cf.cond_br %37, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %38 = memref.load %alloc[%30, %36, %32, %34] : memref<16x16x32x32xf64>
    memref.store %38, %alloc_4[%30, %32, %34, %36] : memref<16x32x32x16xf64>
    %39 = arith.addi %36, %c1 : index
    cf.br ^bb37(%39 : index)
  ^bb39:  // pred: ^bb37
    %40 = arith.addi %34, %c1 : index
    cf.br ^bb35(%40 : index)
  ^bb40:  // pred: ^bb35
    %41 = arith.addi %32, %c1 : index
    cf.br ^bb33(%41 : index)
  ^bb41:  // pred: ^bb33
    %42 = arith.addi %30, %c1 : index
    cf.br ^bb31(%42 : index)
  ^bb42:  // pred: ^bb31
    cf.br ^bb43(%c0 : index)
  ^bb43(%43: index):  // 2 preds: ^bb42, ^bb44
    %44 = arith.cmpi slt, %43, %c16384 : index
    cf.cond_br %44, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %45 = arith.subi %c16384, %43 : index
    %46 = arith.minsi %45, %c3072 : index
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0, %arg1, %arg2) : index = (%c0, %c0, %c0) to (%c32, %c16, %46) step (%c6, %c8, %c3072) {
          %48 = arith.subi %c32, %arg0 : index
          %49 = arith.minsi %48, %c6 : index
          %50 = arith.subi %c16, %arg1 : index
          %51 = arith.minsi %50, %c8 : index
          %52 = arith.subi %46, %arg2 : index
          %53 = arith.minsi %52, %c3072 : index
          %54 = arith.addi %43, %arg2 : index
          %55 = affine.apply #map()[%arg1, %54]
          %reinterpret_cast = memref.reinterpret_cast %alloc_4 to offset: [%55], sizes: [%51, %53], strides: [16384, 1] : memref<16x32x32x16xf64> to memref<?x?xf64, strided<[16384, 1], offset: ?>>
          %56 = affine.apply #map1()[%54, %arg0]
          %reinterpret_cast_5 = memref.reinterpret_cast %alloc_2 to offset: [%56], sizes: [%53, %49], strides: [32, 1] : memref<32x32x16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
          %57 = affine.apply #map1()[%arg1, %arg0]
          %reinterpret_cast_6 = memref.reinterpret_cast %alloc_3 to offset: [%57], sizes: [%51, %49], strides: [32, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
          cf.br ^bb1(%c0 : index)
        ^bb1(%58: index):  // 2 preds: ^bb0, ^bb8
          %59 = arith.cmpi slt, %58, %51 : index
          cf.cond_br %59, ^bb2, ^bb9
        ^bb2:  // pred: ^bb1
          cf.br ^bb3(%c0 : index)
        ^bb3(%60: index):  // 2 preds: ^bb2, ^bb7
          %61 = arith.cmpi slt, %60, %49 : index
          cf.cond_br %61, ^bb4, ^bb8
        ^bb4:  // pred: ^bb3
          cf.br ^bb5(%c0 : index)
        ^bb5(%62: index):  // 2 preds: ^bb4, ^bb6
          %63 = arith.cmpi slt, %62, %53 : index
          cf.cond_br %63, ^bb6, ^bb7
        ^bb6:  // pred: ^bb5
          %64 = memref.load %reinterpret_cast[%58, %62] : memref<?x?xf64, strided<[16384, 1], offset: ?>>
          %65 = memref.load %reinterpret_cast_5[%62, %60] : memref<?x?xf64, strided<[32, 1], offset: ?>>
          %66 = memref.load %reinterpret_cast_6[%58, %60] : memref<?x?xf64, strided<[32, 1], offset: ?>>
          %67 = arith.mulf %64, %65 : f64
          %68 = arith.addf %66, %67 : f64
          memref.store %68, %reinterpret_cast_6[%58, %60] : memref<?x?xf64, strided<[32, 1], offset: ?>>
          %69 = arith.addi %62, %c1 : index
          cf.br ^bb5(%69 : index)
        ^bb7:  // pred: ^bb5
          %70 = arith.addi %60, %c1 : index
          cf.br ^bb3(%70 : index)
        ^bb8:  // pred: ^bb3
          %71 = arith.addi %58, %c1 : index
          cf.br ^bb1(%71 : index)
        ^bb9:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %47 = arith.addi %43, %c3072 : index
    cf.br ^bb43(%47 : index)
  ^bb45:  // pred: ^bb43
    %cast = memref.cast %alloc_3 : memref<16x32xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c16 = arith.constant 16 : index
    %c6 = arith.constant 6 : index
    %c32 = arith.constant 32 : index
    %c3072 = arith.constant 3072 : index
    %c16384 = arith.constant 16384 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb11
    %1 = arith.cmpi slt, %0, %c16 : index
    cf.cond_br %1, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
    %3 = arith.cmpi slt, %2, %c16 : index
    cf.cond_br %3, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    cf.br ^bb5(%c0 : index)
  ^bb5(%4: index):  // 2 preds: ^bb4, ^bb9
    %5 = arith.cmpi slt, %4, %c32 : index
    cf.cond_br %5, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb8
    %7 = arith.cmpi slt, %6, %c32 : index
    cf.cond_br %7, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %cst_1, %alloc[%0, %2, %4, %6] : memref<16x16x32x32xf64>
    %8 = arith.addi %6, %c1 : index
    cf.br ^bb7(%8 : index)
  ^bb9:  // pred: ^bb7
    %9 = arith.addi %4, %c1 : index
    cf.br ^bb5(%9 : index)
  ^bb10:  // pred: ^bb5
    %10 = arith.addi %2, %c1 : index
    cf.br ^bb3(%10 : index)
  ^bb11:  // pred: ^bb3
    %11 = arith.addi %0, %c1 : index
    cf.br ^bb1(%11 : index)
  ^bb12:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb23
    %13 = arith.cmpi slt, %12, %c32 : index
    cf.cond_br %13, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb22
    %15 = arith.cmpi slt, %14, %c32 : index
    cf.cond_br %15, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    cf.br ^bb17(%c0 : index)
  ^bb17(%16: index):  // 2 preds: ^bb16, ^bb21
    %17 = arith.cmpi slt, %16, %c16 : index
    cf.cond_br %17, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    cf.br ^bb19(%c0 : index)
  ^bb19(%18: index):  // 2 preds: ^bb18, ^bb20
    %19 = arith.cmpi slt, %18, %c32 : index
    cf.cond_br %19, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %cst_0, %alloc_2[%12, %14, %16, %18] : memref<32x32x16x32xf64>
    %20 = arith.addi %18, %c1 : index
    cf.br ^bb19(%20 : index)
  ^bb21:  // pred: ^bb19
    %21 = arith.addi %16, %c1 : index
    cf.br ^bb17(%21 : index)
  ^bb22:  // pred: ^bb17
    %22 = arith.addi %14, %c1 : index
    cf.br ^bb15(%22 : index)
  ^bb23:  // pred: ^bb15
    %23 = arith.addi %12, %c1 : index
    cf.br ^bb13(%23 : index)
  ^bb24:  // pred: ^bb13
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%24: index):  // 2 preds: ^bb24, ^bb29
    %25 = arith.cmpi slt, %24, %c16 : index
    cf.cond_br %25, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%26: index):  // 2 preds: ^bb26, ^bb28
    %27 = arith.cmpi slt, %26, %c32 : index
    cf.cond_br %27, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    memref.store %cst, %alloc_3[%24, %26] : memref<16x32xf64>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb27(%28 : index)
  ^bb29:  // pred: ^bb27
    %29 = arith.addi %24, %c1 : index
    cf.br ^bb25(%29 : index)
  ^bb30:  // pred: ^bb25
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<16x32x32x16xf64>
    cf.br ^bb31(%c0 : index)
  ^bb31(%30: index):  // 2 preds: ^bb30, ^bb41
    %31 = arith.cmpi slt, %30, %c16 : index
    cf.cond_br %31, ^bb32, ^bb42
  ^bb32:  // pred: ^bb31
    cf.br ^bb33(%c0 : index)
  ^bb33(%32: index):  // 2 preds: ^bb32, ^bb40
    %33 = arith.cmpi slt, %32, %c32 : index
    cf.cond_br %33, ^bb34, ^bb41
  ^bb34:  // pred: ^bb33
    cf.br ^bb35(%c0 : index)
  ^bb35(%34: index):  // 2 preds: ^bb34, ^bb39
    %35 = arith.cmpi slt, %34, %c32 : index
    cf.cond_br %35, ^bb36, ^bb40
  ^bb36:  // pred: ^bb35
    cf.br ^bb37(%c0 : index)
  ^bb37(%36: index):  // 2 preds: ^bb36, ^bb38
    %37 = arith.cmpi slt, %36, %c16 : index
    cf.cond_br %37, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %38 = memref.load %alloc[%30, %36, %32, %34] : memref<16x16x32x32xf64>
    memref.store %38, %alloc_4[%30, %32, %34, %36] : memref<16x32x32x16xf64>
    %39 = arith.addi %36, %c1 : index
    cf.br ^bb37(%39 : index)
  ^bb39:  // pred: ^bb37
    %40 = arith.addi %34, %c1 : index
    cf.br ^bb35(%40 : index)
  ^bb40:  // pred: ^bb35
    %41 = arith.addi %32, %c1 : index
    cf.br ^bb33(%41 : index)
  ^bb41:  // pred: ^bb33
    %42 = arith.addi %30, %c1 : index
    cf.br ^bb31(%42 : index)
  ^bb42:  // pred: ^bb31
    cf.br ^bb43(%c0 : index)
  ^bb43(%43: index):  // 2 preds: ^bb42, ^bb44
    %44 = arith.cmpi slt, %43, %c16384 : index
    cf.cond_br %44, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %45 = arith.subi %c16384, %43 : index
    %46 = arith.minsi %45, %c3072 : index
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0, %arg1, %arg2) : index = (%c0, %c0, %c0) to (%c32, %c16, %46) step (%c6, %c8, %c3072) {
          %48 = arith.subi %c32, %arg0 : index
          %49 = arith.minsi %48, %c6 : index
          %50 = arith.subi %c16, %arg1 : index
          %51 = arith.minsi %50, %c8 : index
          %52 = arith.subi %46, %arg2 : index
          %53 = arith.minsi %52, %c3072 : index
          %54 = arith.addi %43, %arg2 : index
          %c16384_5 = arith.constant 16384 : index
          %55 = arith.muli %arg1, %c16384_5 : index
          %56 = arith.addi %55, %54 : index
          %reinterpret_cast = memref.reinterpret_cast %alloc_4 to offset: [%56], sizes: [%51, %53], strides: [16384, 1] : memref<16x32x32x16xf64> to memref<?x?xf64, strided<[16384, 1], offset: ?>>
          %c32_6 = arith.constant 32 : index
          %57 = arith.muli %54, %c32_6 : index
          %58 = arith.addi %57, %arg0 : index
          %reinterpret_cast_7 = memref.reinterpret_cast %alloc_2 to offset: [%58], sizes: [%53, %49], strides: [32, 1] : memref<32x32x16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
          %c32_8 = arith.constant 32 : index
          %59 = arith.muli %arg1, %c32_8 : index
          %60 = arith.addi %59, %arg0 : index
          %reinterpret_cast_9 = memref.reinterpret_cast %alloc_3 to offset: [%60], sizes: [%51, %49], strides: [32, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
          cf.br ^bb1(%c0 : index)
        ^bb1(%61: index):  // 2 preds: ^bb0, ^bb8
          %62 = arith.cmpi slt, %61, %51 : index
          cf.cond_br %62, ^bb2, ^bb9
        ^bb2:  // pred: ^bb1
          cf.br ^bb3(%c0 : index)
        ^bb3(%63: index):  // 2 preds: ^bb2, ^bb7
          %64 = arith.cmpi slt, %63, %49 : index
          cf.cond_br %64, ^bb4, ^bb8
        ^bb4:  // pred: ^bb3
          cf.br ^bb5(%c0 : index)
        ^bb5(%65: index):  // 2 preds: ^bb4, ^bb6
          %66 = arith.cmpi slt, %65, %53 : index
          cf.cond_br %66, ^bb6, ^bb7
        ^bb6:  // pred: ^bb5
          %67 = memref.load %reinterpret_cast[%61, %65] : memref<?x?xf64, strided<[16384, 1], offset: ?>>
          %68 = memref.load %reinterpret_cast_7[%65, %63] : memref<?x?xf64, strided<[32, 1], offset: ?>>
          %69 = memref.load %reinterpret_cast_9[%61, %63] : memref<?x?xf64, strided<[32, 1], offset: ?>>
          %70 = arith.mulf %67, %68 : f64
          %71 = arith.addf %69, %70 : f64
          memref.store %71, %reinterpret_cast_9[%61, %63] : memref<?x?xf64, strided<[32, 1], offset: ?>>
          %72 = arith.addi %65, %c1 : index
          cf.br ^bb5(%72 : index)
        ^bb7:  // pred: ^bb5
          %73 = arith.addi %63, %c1 : index
          cf.br ^bb3(%73 : index)
        ^bb8:  // pred: ^bb3
          %74 = arith.addi %61, %c1 : index
          cf.br ^bb1(%74 : index)
        ^bb9:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %47 = arith.addi %43, %c3072 : index
    cf.br ^bb43(%47 : index)
  ^bb45:  // pred: ^bb43
    %cast = memref.cast %alloc_3 : memref<16x32xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertControlFlowToLLVMPass (convert-cf-to-llvm) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c16 = arith.constant 16 : index
    %c6 = arith.constant 6 : index
    %c32 = arith.constant 32 : index
    %c3072 = arith.constant 3072 : index
    %c16384 = arith.constant 16384 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x16x32x32xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb11
    %1 = arith.cmpi slt, %0, %c16 : index
    llvm.cond_br %1, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
    %3 = arith.cmpi slt, %2, %c16 : index
    llvm.cond_br %3, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    cf.br ^bb5(%c0 : index)
  ^bb5(%4: index):  // 2 preds: ^bb4, ^bb9
    %5 = arith.cmpi slt, %4, %c32 : index
    llvm.cond_br %5, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb8
    %7 = arith.cmpi slt, %6, %c32 : index
    llvm.cond_br %7, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %cst_1, %alloc[%0, %2, %4, %6] : memref<16x16x32x32xf64>
    %8 = arith.addi %6, %c1 : index
    cf.br ^bb7(%8 : index)
  ^bb9:  // pred: ^bb7
    %9 = arith.addi %4, %c1 : index
    cf.br ^bb5(%9 : index)
  ^bb10:  // pred: ^bb5
    %10 = arith.addi %2, %c1 : index
    cf.br ^bb3(%10 : index)
  ^bb11:  // pred: ^bb3
    %11 = arith.addi %0, %c1 : index
    cf.br ^bb1(%11 : index)
  ^bb12:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<32x32x16x32xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb23
    %13 = arith.cmpi slt, %12, %c32 : index
    llvm.cond_br %13, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb22
    %15 = arith.cmpi slt, %14, %c32 : index
    llvm.cond_br %15, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    cf.br ^bb17(%c0 : index)
  ^bb17(%16: index):  // 2 preds: ^bb16, ^bb21
    %17 = arith.cmpi slt, %16, %c16 : index
    llvm.cond_br %17, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    cf.br ^bb19(%c0 : index)
  ^bb19(%18: index):  // 2 preds: ^bb18, ^bb20
    %19 = arith.cmpi slt, %18, %c32 : index
    llvm.cond_br %19, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %cst_0, %alloc_2[%12, %14, %16, %18] : memref<32x32x16x32xf64>
    %20 = arith.addi %18, %c1 : index
    cf.br ^bb19(%20 : index)
  ^bb21:  // pred: ^bb19
    %21 = arith.addi %16, %c1 : index
    cf.br ^bb17(%21 : index)
  ^bb22:  // pred: ^bb17
    %22 = arith.addi %14, %c1 : index
    cf.br ^bb15(%22 : index)
  ^bb23:  // pred: ^bb15
    %23 = arith.addi %12, %c1 : index
    cf.br ^bb13(%23 : index)
  ^bb24:  // pred: ^bb13
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<16x32xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%24: index):  // 2 preds: ^bb24, ^bb29
    %25 = arith.cmpi slt, %24, %c16 : index
    llvm.cond_br %25, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%26: index):  // 2 preds: ^bb26, ^bb28
    %27 = arith.cmpi slt, %26, %c32 : index
    llvm.cond_br %27, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    memref.store %cst, %alloc_3[%24, %26] : memref<16x32xf64>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb27(%28 : index)
  ^bb29:  // pred: ^bb27
    %29 = arith.addi %24, %c1 : index
    cf.br ^bb25(%29 : index)
  ^bb30:  // pred: ^bb25
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<16x32x32x16xf64>
    cf.br ^bb31(%c0 : index)
  ^bb31(%30: index):  // 2 preds: ^bb30, ^bb41
    %31 = arith.cmpi slt, %30, %c16 : index
    llvm.cond_br %31, ^bb32, ^bb42
  ^bb32:  // pred: ^bb31
    cf.br ^bb33(%c0 : index)
  ^bb33(%32: index):  // 2 preds: ^bb32, ^bb40
    %33 = arith.cmpi slt, %32, %c32 : index
    llvm.cond_br %33, ^bb34, ^bb41
  ^bb34:  // pred: ^bb33
    cf.br ^bb35(%c0 : index)
  ^bb35(%34: index):  // 2 preds: ^bb34, ^bb39
    %35 = arith.cmpi slt, %34, %c32 : index
    llvm.cond_br %35, ^bb36, ^bb40
  ^bb36:  // pred: ^bb35
    cf.br ^bb37(%c0 : index)
  ^bb37(%36: index):  // 2 preds: ^bb36, ^bb38
    %37 = arith.cmpi slt, %36, %c16 : index
    llvm.cond_br %37, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %38 = memref.load %alloc[%30, %36, %32, %34] : memref<16x16x32x32xf64>
    memref.store %38, %alloc_4[%30, %32, %34, %36] : memref<16x32x32x16xf64>
    %39 = arith.addi %36, %c1 : index
    cf.br ^bb37(%39 : index)
  ^bb39:  // pred: ^bb37
    %40 = arith.addi %34, %c1 : index
    cf.br ^bb35(%40 : index)
  ^bb40:  // pred: ^bb35
    %41 = arith.addi %32, %c1 : index
    cf.br ^bb33(%41 : index)
  ^bb41:  // pred: ^bb33
    %42 = arith.addi %30, %c1 : index
    cf.br ^bb31(%42 : index)
  ^bb42:  // pred: ^bb31
    cf.br ^bb43(%c0 : index)
  ^bb43(%43: index):  // 2 preds: ^bb42, ^bb44
    %44 = arith.cmpi slt, %43, %c16384 : index
    llvm.cond_br %44, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %45 = arith.subi %c16384, %43 : index
    %46 = arith.minsi %45, %c3072 : index
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0, %arg1, %arg2) : index = (%c0, %c0, %c0) to (%c32, %c16, %46) step (%c6, %c8, %c3072) {
          %48 = arith.subi %c32, %arg0 : index
          %49 = arith.minsi %48, %c6 : index
          %50 = arith.subi %c16, %arg1 : index
          %51 = arith.minsi %50, %c8 : index
          %52 = arith.subi %46, %arg2 : index
          %53 = arith.minsi %52, %c3072 : index
          %54 = arith.addi %43, %arg2 : index
          %c16384_5 = arith.constant 16384 : index
          %55 = arith.muli %arg1, %c16384_5 : index
          %56 = arith.addi %55, %54 : index
          %reinterpret_cast = memref.reinterpret_cast %alloc_4 to offset: [%56], sizes: [%51, %53], strides: [16384, 1] : memref<16x32x32x16xf64> to memref<?x?xf64, strided<[16384, 1], offset: ?>>
          %c32_6 = arith.constant 32 : index
          %57 = arith.muli %54, %c32_6 : index
          %58 = arith.addi %57, %arg0 : index
          %reinterpret_cast_7 = memref.reinterpret_cast %alloc_2 to offset: [%58], sizes: [%53, %49], strides: [32, 1] : memref<32x32x16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
          %c32_8 = arith.constant 32 : index
          %59 = arith.muli %arg1, %c32_8 : index
          %60 = arith.addi %59, %arg0 : index
          %reinterpret_cast_9 = memref.reinterpret_cast %alloc_3 to offset: [%60], sizes: [%51, %49], strides: [32, 1] : memref<16x32xf64> to memref<?x?xf64, strided<[32, 1], offset: ?>>
          cf.br ^bb1(%c0 : index)
        ^bb1(%61: index):  // 2 preds: ^bb0, ^bb8
          %62 = arith.cmpi slt, %61, %51 : index
          llvm.cond_br %62, ^bb2, ^bb9
        ^bb2:  // pred: ^bb1
          cf.br ^bb3(%c0 : index)
        ^bb3(%63: index):  // 2 preds: ^bb2, ^bb7
          %64 = arith.cmpi slt, %63, %49 : index
          llvm.cond_br %64, ^bb4, ^bb8
        ^bb4:  // pred: ^bb3
          cf.br ^bb5(%c0 : index)
        ^bb5(%65: index):  // 2 preds: ^bb4, ^bb6
          %66 = arith.cmpi slt, %65, %53 : index
          llvm.cond_br %66, ^bb6, ^bb7
        ^bb6:  // pred: ^bb5
          %67 = memref.load %reinterpret_cast[%61, %65] : memref<?x?xf64, strided<[16384, 1], offset: ?>>
          %68 = memref.load %reinterpret_cast_7[%65, %63] : memref<?x?xf64, strided<[32, 1], offset: ?>>
          %69 = memref.load %reinterpret_cast_9[%61, %63] : memref<?x?xf64, strided<[32, 1], offset: ?>>
          %70 = arith.mulf %67, %68 : f64
          %71 = arith.addf %69, %70 : f64
          memref.store %71, %reinterpret_cast_9[%61, %63] : memref<?x?xf64, strided<[32, 1], offset: ?>>
          %72 = arith.addi %65, %c1 : index
          cf.br ^bb5(%72 : index)
        ^bb7:  // pred: ^bb5
          %73 = arith.addi %63, %c1 : index
          cf.br ^bb3(%73 : index)
        ^bb8:  // pred: ^bb3
          %74 = arith.addi %61, %c1 : index
          cf.br ^bb1(%74 : index)
        ^bb9:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %47 = arith.addi %43, %c3072 : index
    cf.br ^bb43(%47 : index)
  ^bb45:  // pred: ^bb43
    %cast = memref.cast %alloc_3 : memref<16x32xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After FinalizeMemRefToLLVMConversionPass (finalize-memref-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c16 = arith.constant 16 : index
    %c6 = arith.constant 6 : index
    %c32 = arith.constant 32 : index
    %c3072 = arith.constant 3072 : index
    %c16384 = arith.constant 16384 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %0 = llvm.mlir.constant(16 : index) : i64
    %1 = llvm.mlir.constant(16 : index) : i64
    %2 = llvm.mlir.constant(32 : index) : i64
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(1 : index) : i64
    %5 = llvm.mlir.constant(1024 : index) : i64
    %6 = llvm.mlir.constant(16384 : index) : i64
    %7 = llvm.mlir.constant(262144 : index) : i64
    %8 = llvm.mlir.zero : !llvm.ptr
    %9 = llvm.getelementptr %8[%7] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %10 = llvm.ptrtoint %9 : !llvm.ptr to i64
    %11 = llvm.mlir.constant(32 : index) : i64
    %12 = llvm.add %10, %11 : i64
    %13 = llvm.call @malloc(%12) : (i64) -> !llvm.ptr
    %14 = llvm.ptrtoint %13 : !llvm.ptr to i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.sub %11, %15 : i64
    %17 = llvm.add %14, %16 : i64
    %18 = llvm.urem %17, %11  : i64
    %19 = llvm.sub %17, %18 : i64
    %20 = llvm.inttoptr %19 : i64 to !llvm.ptr
    %21 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %22 = llvm.insertvalue %13, %21[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %20, %22[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.constant(0 : index) : i64
    %25 = llvm.insertvalue %24, %23[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.insertvalue %0, %25[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.insertvalue %1, %26[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.insertvalue %2, %27[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.insertvalue %3, %28[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.insertvalue %6, %29[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.insertvalue %5, %30[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.insertvalue %3, %31[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.insertvalue %4, %32[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    cf.br ^bb1(%c0 : index)
  ^bb1(%34: index):  // 2 preds: ^bb0, ^bb11
    %35 = builtin.unrealized_conversion_cast %34 : index to i64
    %36 = arith.cmpi slt, %34, %c16 : index
    llvm.cond_br %36, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%37: index):  // 2 preds: ^bb2, ^bb10
    %38 = builtin.unrealized_conversion_cast %37 : index to i64
    %39 = arith.cmpi slt, %37, %c16 : index
    llvm.cond_br %39, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    cf.br ^bb5(%c0 : index)
  ^bb5(%40: index):  // 2 preds: ^bb4, ^bb9
    %41 = builtin.unrealized_conversion_cast %40 : index to i64
    %42 = arith.cmpi slt, %40, %c32 : index
    llvm.cond_br %42, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    cf.br ^bb7(%c0 : index)
  ^bb7(%43: index):  // 2 preds: ^bb6, ^bb8
    %44 = builtin.unrealized_conversion_cast %43 : index to i64
    %45 = arith.cmpi slt, %43, %c32 : index
    llvm.cond_br %45, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %46 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.mlir.constant(16384 : index) : i64
    %48 = llvm.mul %35, %47 : i64
    %49 = llvm.mlir.constant(1024 : index) : i64
    %50 = llvm.mul %38, %49 : i64
    %51 = llvm.add %48, %50 : i64
    %52 = llvm.mlir.constant(32 : index) : i64
    %53 = llvm.mul %41, %52 : i64
    %54 = llvm.add %51, %53 : i64
    %55 = llvm.add %54, %44 : i64
    %56 = llvm.getelementptr %46[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst_1, %56 : f64, !llvm.ptr
    %57 = arith.addi %43, %c1 : index
    cf.br ^bb7(%57 : index)
  ^bb9:  // pred: ^bb7
    %58 = arith.addi %40, %c1 : index
    cf.br ^bb5(%58 : index)
  ^bb10:  // pred: ^bb5
    %59 = arith.addi %37, %c1 : index
    cf.br ^bb3(%59 : index)
  ^bb11:  // pred: ^bb3
    %60 = arith.addi %34, %c1 : index
    cf.br ^bb1(%60 : index)
  ^bb12:  // pred: ^bb1
    %61 = llvm.mlir.constant(32 : index) : i64
    %62 = llvm.mlir.constant(32 : index) : i64
    %63 = llvm.mlir.constant(16 : index) : i64
    %64 = llvm.mlir.constant(32 : index) : i64
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.mlir.constant(512 : index) : i64
    %67 = llvm.mlir.constant(16384 : index) : i64
    %68 = llvm.mlir.constant(524288 : index) : i64
    %69 = llvm.mlir.zero : !llvm.ptr
    %70 = llvm.getelementptr %69[%68] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %71 = llvm.ptrtoint %70 : !llvm.ptr to i64
    %72 = llvm.mlir.constant(32 : index) : i64
    %73 = llvm.add %71, %72 : i64
    %74 = llvm.call @malloc(%73) : (i64) -> !llvm.ptr
    %75 = llvm.ptrtoint %74 : !llvm.ptr to i64
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.sub %72, %76 : i64
    %78 = llvm.add %75, %77 : i64
    %79 = llvm.urem %78, %72  : i64
    %80 = llvm.sub %78, %79 : i64
    %81 = llvm.inttoptr %80 : i64 to !llvm.ptr
    %82 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %83 = llvm.insertvalue %74, %82[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.insertvalue %81, %83[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.insertvalue %85, %84[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.insertvalue %61, %86[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.insertvalue %62, %87[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.insertvalue %63, %88[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.insertvalue %64, %89[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.insertvalue %67, %90[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.insertvalue %66, %91[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.insertvalue %64, %92[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.insertvalue %65, %93[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    cf.br ^bb13(%c0 : index)
  ^bb13(%95: index):  // 2 preds: ^bb12, ^bb23
    %96 = builtin.unrealized_conversion_cast %95 : index to i64
    %97 = arith.cmpi slt, %95, %c32 : index
    llvm.cond_br %97, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%98: index):  // 2 preds: ^bb14, ^bb22
    %99 = builtin.unrealized_conversion_cast %98 : index to i64
    %100 = arith.cmpi slt, %98, %c32 : index
    llvm.cond_br %100, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    cf.br ^bb17(%c0 : index)
  ^bb17(%101: index):  // 2 preds: ^bb16, ^bb21
    %102 = builtin.unrealized_conversion_cast %101 : index to i64
    %103 = arith.cmpi slt, %101, %c16 : index
    llvm.cond_br %103, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    cf.br ^bb19(%c0 : index)
  ^bb19(%104: index):  // 2 preds: ^bb18, ^bb20
    %105 = builtin.unrealized_conversion_cast %104 : index to i64
    %106 = arith.cmpi slt, %104, %c32 : index
    llvm.cond_br %106, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %107 = llvm.extractvalue %94[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.mlir.constant(16384 : index) : i64
    %109 = llvm.mul %96, %108 : i64
    %110 = llvm.mlir.constant(512 : index) : i64
    %111 = llvm.mul %99, %110 : i64
    %112 = llvm.add %109, %111 : i64
    %113 = llvm.mlir.constant(32 : index) : i64
    %114 = llvm.mul %102, %113 : i64
    %115 = llvm.add %112, %114 : i64
    %116 = llvm.add %115, %105 : i64
    %117 = llvm.getelementptr %107[%116] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst_0, %117 : f64, !llvm.ptr
    %118 = arith.addi %104, %c1 : index
    cf.br ^bb19(%118 : index)
  ^bb21:  // pred: ^bb19
    %119 = arith.addi %101, %c1 : index
    cf.br ^bb17(%119 : index)
  ^bb22:  // pred: ^bb17
    %120 = arith.addi %98, %c1 : index
    cf.br ^bb15(%120 : index)
  ^bb23:  // pred: ^bb15
    %121 = arith.addi %95, %c1 : index
    cf.br ^bb13(%121 : index)
  ^bb24:  // pred: ^bb13
    %122 = llvm.mlir.constant(16 : index) : i64
    %123 = llvm.mlir.constant(32 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.constant(512 : index) : i64
    %126 = llvm.mlir.zero : !llvm.ptr
    %127 = llvm.getelementptr %126[%125] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %128 = llvm.ptrtoint %127 : !llvm.ptr to i64
    %129 = llvm.mlir.constant(32 : index) : i64
    %130 = llvm.add %128, %129 : i64
    %131 = llvm.call @malloc(%130) : (i64) -> !llvm.ptr
    %132 = llvm.ptrtoint %131 : !llvm.ptr to i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.sub %129, %133 : i64
    %135 = llvm.add %132, %134 : i64
    %136 = llvm.urem %135, %129  : i64
    %137 = llvm.sub %135, %136 : i64
    %138 = llvm.inttoptr %137 : i64 to !llvm.ptr
    %139 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %140 = llvm.insertvalue %131, %139[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %141 = llvm.insertvalue %138, %140[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.insertvalue %142, %141[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %144 = llvm.insertvalue %122, %143[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %145 = llvm.insertvalue %123, %144[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %146 = llvm.insertvalue %123, %145[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %147 = llvm.insertvalue %124, %146[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    cf.br ^bb25(%c0 : index)
  ^bb25(%148: index):  // 2 preds: ^bb24, ^bb29
    %149 = builtin.unrealized_conversion_cast %148 : index to i64
    %150 = arith.cmpi slt, %148, %c16 : index
    llvm.cond_br %150, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%151: index):  // 2 preds: ^bb26, ^bb28
    %152 = builtin.unrealized_conversion_cast %151 : index to i64
    %153 = arith.cmpi slt, %151, %c32 : index
    llvm.cond_br %153, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %154 = llvm.extractvalue %147[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %155 = llvm.mlir.constant(32 : index) : i64
    %156 = llvm.mul %149, %155 : i64
    %157 = llvm.add %156, %152 : i64
    %158 = llvm.getelementptr %154[%157] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst, %158 : f64, !llvm.ptr
    %159 = arith.addi %151, %c1 : index
    cf.br ^bb27(%159 : index)
  ^bb29:  // pred: ^bb27
    %160 = arith.addi %148, %c1 : index
    cf.br ^bb25(%160 : index)
  ^bb30:  // pred: ^bb25
    %161 = llvm.mlir.constant(16 : index) : i64
    %162 = llvm.mlir.constant(32 : index) : i64
    %163 = llvm.mlir.constant(32 : index) : i64
    %164 = llvm.mlir.constant(16 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.constant(512 : index) : i64
    %167 = llvm.mlir.constant(16384 : index) : i64
    %168 = llvm.mlir.constant(262144 : index) : i64
    %169 = llvm.mlir.zero : !llvm.ptr
    %170 = llvm.getelementptr %169[%168] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %171 = llvm.ptrtoint %170 : !llvm.ptr to i64
    %172 = llvm.mlir.constant(64 : index) : i64
    %173 = llvm.add %171, %172 : i64
    %174 = llvm.call @malloc(%173) : (i64) -> !llvm.ptr
    %175 = llvm.ptrtoint %174 : !llvm.ptr to i64
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.sub %172, %176 : i64
    %178 = llvm.add %175, %177 : i64
    %179 = llvm.urem %178, %172  : i64
    %180 = llvm.sub %178, %179 : i64
    %181 = llvm.inttoptr %180 : i64 to !llvm.ptr
    %182 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %183 = llvm.insertvalue %174, %182[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.insertvalue %181, %183[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.mlir.constant(0 : index) : i64
    %186 = llvm.insertvalue %185, %184[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.insertvalue %161, %186[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.insertvalue %162, %187[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.insertvalue %163, %188[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.insertvalue %164, %189[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.insertvalue %167, %190[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.insertvalue %166, %191[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.insertvalue %164, %192[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.insertvalue %165, %193[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    cf.br ^bb31(%c0 : index)
  ^bb31(%195: index):  // 2 preds: ^bb30, ^bb41
    %196 = builtin.unrealized_conversion_cast %195 : index to i64
    %197 = arith.cmpi slt, %195, %c16 : index
    llvm.cond_br %197, ^bb32, ^bb42
  ^bb32:  // pred: ^bb31
    cf.br ^bb33(%c0 : index)
  ^bb33(%198: index):  // 2 preds: ^bb32, ^bb40
    %199 = builtin.unrealized_conversion_cast %198 : index to i64
    %200 = arith.cmpi slt, %198, %c32 : index
    llvm.cond_br %200, ^bb34, ^bb41
  ^bb34:  // pred: ^bb33
    cf.br ^bb35(%c0 : index)
  ^bb35(%201: index):  // 2 preds: ^bb34, ^bb39
    %202 = builtin.unrealized_conversion_cast %201 : index to i64
    %203 = arith.cmpi slt, %201, %c32 : index
    llvm.cond_br %203, ^bb36, ^bb40
  ^bb36:  // pred: ^bb35
    cf.br ^bb37(%c0 : index)
  ^bb37(%204: index):  // 2 preds: ^bb36, ^bb38
    %205 = builtin.unrealized_conversion_cast %204 : index to i64
    %206 = arith.cmpi slt, %204, %c16 : index
    llvm.cond_br %206, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %207 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.mlir.constant(16384 : index) : i64
    %209 = llvm.mul %196, %208 : i64
    %210 = llvm.mlir.constant(1024 : index) : i64
    %211 = llvm.mul %205, %210 : i64
    %212 = llvm.add %209, %211 : i64
    %213 = llvm.mlir.constant(32 : index) : i64
    %214 = llvm.mul %199, %213 : i64
    %215 = llvm.add %212, %214 : i64
    %216 = llvm.add %215, %202 : i64
    %217 = llvm.getelementptr %207[%216] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %218 = llvm.load %217 : !llvm.ptr -> f64
    %219 = llvm.extractvalue %194[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.mlir.constant(16384 : index) : i64
    %221 = llvm.mul %196, %220 : i64
    %222 = llvm.mlir.constant(512 : index) : i64
    %223 = llvm.mul %199, %222 : i64
    %224 = llvm.add %221, %223 : i64
    %225 = llvm.mlir.constant(16 : index) : i64
    %226 = llvm.mul %202, %225 : i64
    %227 = llvm.add %224, %226 : i64
    %228 = llvm.add %227, %205 : i64
    %229 = llvm.getelementptr %219[%228] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %218, %229 : f64, !llvm.ptr
    %230 = arith.addi %204, %c1 : index
    cf.br ^bb37(%230 : index)
  ^bb39:  // pred: ^bb37
    %231 = arith.addi %201, %c1 : index
    cf.br ^bb35(%231 : index)
  ^bb40:  // pred: ^bb35
    %232 = arith.addi %198, %c1 : index
    cf.br ^bb33(%232 : index)
  ^bb41:  // pred: ^bb33
    %233 = arith.addi %195, %c1 : index
    cf.br ^bb31(%233 : index)
  ^bb42:  // pred: ^bb31
    cf.br ^bb43(%c0 : index)
  ^bb43(%234: index):  // 2 preds: ^bb42, ^bb44
    %235 = arith.cmpi slt, %234, %c16384 : index
    llvm.cond_br %235, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %236 = arith.subi %c16384, %234 : index
    %237 = arith.minsi %236, %c3072 : index
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0, %arg1, %arg2) : index = (%c0, %c0, %c0) to (%c32, %c16, %237) step (%c6, %c8, %c3072) {
          %246 = arith.subi %c32, %arg0 : index
          %247 = arith.minsi %246, %c6 : index
          %248 = builtin.unrealized_conversion_cast %247 : index to i64
          %249 = arith.subi %c16, %arg1 : index
          %250 = arith.minsi %249, %c8 : index
          %251 = builtin.unrealized_conversion_cast %250 : index to i64
          %252 = arith.subi %237, %arg2 : index
          %253 = arith.minsi %252, %c3072 : index
          %254 = builtin.unrealized_conversion_cast %253 : index to i64
          %255 = arith.addi %234, %arg2 : index
          %c16384_2 = arith.constant 16384 : index
          %256 = arith.muli %arg1, %c16384_2 : index
          %257 = arith.addi %256, %255 : index
          %258 = builtin.unrealized_conversion_cast %257 : index to i64
          %259 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %260 = llvm.extractvalue %194[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
          %261 = llvm.extractvalue %194[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
          %262 = llvm.insertvalue %260, %259[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %263 = llvm.insertvalue %261, %262[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %264 = llvm.insertvalue %258, %263[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %265 = llvm.insertvalue %251, %264[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %266 = llvm.mlir.constant(16384 : index) : i64
          %267 = llvm.insertvalue %266, %265[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %268 = llvm.insertvalue %254, %267[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %269 = llvm.mlir.constant(1 : index) : i64
          %270 = llvm.insertvalue %269, %268[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %c32_3 = arith.constant 32 : index
          %271 = arith.muli %255, %c32_3 : index
          %272 = arith.addi %271, %arg0 : index
          %273 = builtin.unrealized_conversion_cast %272 : index to i64
          %274 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %275 = llvm.extractvalue %94[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
          %276 = llvm.extractvalue %94[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
          %277 = llvm.insertvalue %275, %274[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %278 = llvm.insertvalue %276, %277[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %279 = llvm.insertvalue %273, %278[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %280 = llvm.insertvalue %254, %279[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %281 = llvm.mlir.constant(32 : index) : i64
          %282 = llvm.insertvalue %281, %280[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %283 = llvm.insertvalue %248, %282[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %284 = llvm.mlir.constant(1 : index) : i64
          %285 = llvm.insertvalue %284, %283[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %c32_4 = arith.constant 32 : index
          %286 = arith.muli %arg1, %c32_4 : index
          %287 = arith.addi %286, %arg0 : index
          %288 = builtin.unrealized_conversion_cast %287 : index to i64
          %289 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %290 = llvm.extractvalue %147[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %291 = llvm.extractvalue %147[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %292 = llvm.insertvalue %290, %289[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %293 = llvm.insertvalue %291, %292[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %294 = llvm.insertvalue %288, %293[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %295 = llvm.insertvalue %251, %294[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %296 = llvm.mlir.constant(32 : index) : i64
          %297 = llvm.insertvalue %296, %295[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %298 = llvm.insertvalue %248, %297[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %299 = llvm.mlir.constant(1 : index) : i64
          %300 = llvm.insertvalue %299, %298[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          cf.br ^bb1(%c0 : index)
        ^bb1(%301: index):  // 2 preds: ^bb0, ^bb8
          %302 = builtin.unrealized_conversion_cast %301 : index to i64
          %303 = arith.cmpi slt, %301, %250 : index
          llvm.cond_br %303, ^bb2, ^bb9
        ^bb2:  // pred: ^bb1
          cf.br ^bb3(%c0 : index)
        ^bb3(%304: index):  // 2 preds: ^bb2, ^bb7
          %305 = builtin.unrealized_conversion_cast %304 : index to i64
          %306 = arith.cmpi slt, %304, %247 : index
          llvm.cond_br %306, ^bb4, ^bb8
        ^bb4:  // pred: ^bb3
          cf.br ^bb5(%c0 : index)
        ^bb5(%307: index):  // 2 preds: ^bb4, ^bb6
          %308 = builtin.unrealized_conversion_cast %307 : index to i64
          %309 = arith.cmpi slt, %307, %253 : index
          llvm.cond_br %309, ^bb6, ^bb7
        ^bb6:  // pred: ^bb5
          %310 = llvm.extractvalue %270[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %311 = llvm.extractvalue %270[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %312 = llvm.getelementptr %310[%311] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %313 = llvm.mlir.constant(16384 : index) : i64
          %314 = llvm.mul %302, %313 : i64
          %315 = llvm.add %314, %308 : i64
          %316 = llvm.getelementptr %312[%315] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %317 = llvm.load %316 : !llvm.ptr -> f64
          %318 = llvm.extractvalue %285[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %319 = llvm.extractvalue %285[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %320 = llvm.getelementptr %318[%319] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %321 = llvm.mlir.constant(32 : index) : i64
          %322 = llvm.mul %308, %321 : i64
          %323 = llvm.add %322, %305 : i64
          %324 = llvm.getelementptr %320[%323] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %325 = llvm.load %324 : !llvm.ptr -> f64
          %326 = llvm.extractvalue %300[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %327 = llvm.extractvalue %300[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %328 = llvm.getelementptr %326[%327] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %329 = llvm.mlir.constant(32 : index) : i64
          %330 = llvm.mul %302, %329 : i64
          %331 = llvm.add %330, %305 : i64
          %332 = llvm.getelementptr %328[%331] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %333 = llvm.load %332 : !llvm.ptr -> f64
          %334 = arith.mulf %317, %325 : f64
          %335 = arith.addf %333, %334 : f64
          %336 = llvm.extractvalue %300[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %337 = llvm.extractvalue %300[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %338 = llvm.getelementptr %336[%337] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %339 = llvm.mlir.constant(32 : index) : i64
          %340 = llvm.mul %302, %339 : i64
          %341 = llvm.add %340, %305 : i64
          %342 = llvm.getelementptr %338[%341] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %335, %342 : f64, !llvm.ptr
          %343 = arith.addi %307, %c1 : index
          cf.br ^bb5(%343 : index)
        ^bb7:  // pred: ^bb5
          %344 = arith.addi %304, %c1 : index
          cf.br ^bb3(%344 : index)
        ^bb8:  // pred: ^bb3
          %345 = arith.addi %301, %c1 : index
          cf.br ^bb1(%345 : index)
        ^bb9:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %238 = arith.addi %234, %c3072 : index
    cf.br ^bb43(%238 : index)
  ^bb45:  // pred: ^bb43
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.alloca %239 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %147, %240 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %241 = llvm.mlir.constant(2 : index) : i64
    %242 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %243 = llvm.insertvalue %241, %242[0] : !llvm.struct<(i64, ptr)> 
    %244 = llvm.insertvalue %240, %243[1] : !llvm.struct<(i64, ptr)> 
    %245 = builtin.unrealized_conversion_cast %244 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    call @comet_print_memref_f64(%245) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertFuncToLLVMPass (convert-func-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(1 : index) : i64
    %1 = llvm.mlir.constant(8 : index) : i64
    %2 = builtin.unrealized_conversion_cast %1 : i64 to index
    %3 = llvm.mlir.constant(16 : index) : i64
    %4 = builtin.unrealized_conversion_cast %3 : i64 to index
    %5 = llvm.mlir.constant(6 : index) : i64
    %6 = builtin.unrealized_conversion_cast %5 : i64 to index
    %7 = llvm.mlir.constant(32 : index) : i64
    %8 = builtin.unrealized_conversion_cast %7 : i64 to index
    %9 = llvm.mlir.constant(3072 : index) : i64
    %10 = builtin.unrealized_conversion_cast %9 : i64 to index
    %11 = llvm.mlir.constant(16384 : index) : i64
    %12 = llvm.mlir.constant(0 : index) : i64
    %13 = builtin.unrealized_conversion_cast %12 : i64 to index
    %14 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %15 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %16 = llvm.mlir.constant(2.300000e+00 : f64) : f64
    %17 = llvm.mlir.constant(16 : index) : i64
    %18 = llvm.mlir.constant(16 : index) : i64
    %19 = llvm.mlir.constant(32 : index) : i64
    %20 = llvm.mlir.constant(32 : index) : i64
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.mlir.constant(1024 : index) : i64
    %23 = llvm.mlir.constant(16384 : index) : i64
    %24 = llvm.mlir.constant(262144 : index) : i64
    %25 = llvm.mlir.zero : !llvm.ptr
    %26 = llvm.getelementptr %25[%24] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %27 = llvm.ptrtoint %26 : !llvm.ptr to i64
    %28 = llvm.mlir.constant(32 : index) : i64
    %29 = llvm.add %27, %28 : i64
    %30 = llvm.call @malloc(%29) : (i64) -> !llvm.ptr
    %31 = llvm.ptrtoint %30 : !llvm.ptr to i64
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.sub %28, %32 : i64
    %34 = llvm.add %31, %33 : i64
    %35 = llvm.urem %34, %28  : i64
    %36 = llvm.sub %34, %35 : i64
    %37 = llvm.inttoptr %36 : i64 to !llvm.ptr
    %38 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %39 = llvm.insertvalue %30, %38[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %37, %39[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.mlir.constant(0 : index) : i64
    %42 = llvm.insertvalue %41, %40[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %17, %42[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %18, %43[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %19, %44[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.insertvalue %20, %45[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.insertvalue %23, %46[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.insertvalue %22, %47[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.insertvalue %20, %48[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.insertvalue %21, %49[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb1(%12 : i64)
  ^bb1(%51: i64):  // 2 preds: ^bb0, ^bb11
    %52 = builtin.unrealized_conversion_cast %51 : i64 to index
    %53 = builtin.unrealized_conversion_cast %52 : index to i64
    %54 = llvm.icmp "slt" %51, %3 : i64
    llvm.cond_br %54, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%12 : i64)
  ^bb3(%55: i64):  // 2 preds: ^bb2, ^bb10
    %56 = builtin.unrealized_conversion_cast %55 : i64 to index
    %57 = builtin.unrealized_conversion_cast %56 : index to i64
    %58 = llvm.icmp "slt" %55, %3 : i64
    llvm.cond_br %58, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    llvm.br ^bb5(%12 : i64)
  ^bb5(%59: i64):  // 2 preds: ^bb4, ^bb9
    %60 = builtin.unrealized_conversion_cast %59 : i64 to index
    %61 = builtin.unrealized_conversion_cast %60 : index to i64
    %62 = llvm.icmp "slt" %59, %7 : i64
    llvm.cond_br %62, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    llvm.br ^bb7(%12 : i64)
  ^bb7(%63: i64):  // 2 preds: ^bb6, ^bb8
    %64 = builtin.unrealized_conversion_cast %63 : i64 to index
    %65 = builtin.unrealized_conversion_cast %64 : index to i64
    %66 = llvm.icmp "slt" %63, %7 : i64
    llvm.cond_br %66, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %67 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.constant(16384 : index) : i64
    %69 = llvm.mul %53, %68 : i64
    %70 = llvm.mlir.constant(1024 : index) : i64
    %71 = llvm.mul %57, %70 : i64
    %72 = llvm.add %69, %71 : i64
    %73 = llvm.mlir.constant(32 : index) : i64
    %74 = llvm.mul %61, %73 : i64
    %75 = llvm.add %72, %74 : i64
    %76 = llvm.add %75, %65 : i64
    %77 = llvm.getelementptr %67[%76] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %16, %77 : f64, !llvm.ptr
    %78 = llvm.add %63, %0 : i64
    llvm.br ^bb7(%78 : i64)
  ^bb9:  // pred: ^bb7
    %79 = llvm.add %59, %0 : i64
    llvm.br ^bb5(%79 : i64)
  ^bb10:  // pred: ^bb5
    %80 = llvm.add %55, %0 : i64
    llvm.br ^bb3(%80 : i64)
  ^bb11:  // pred: ^bb3
    %81 = llvm.add %51, %0 : i64
    llvm.br ^bb1(%81 : i64)
  ^bb12:  // pred: ^bb1
    %82 = llvm.mlir.constant(32 : index) : i64
    %83 = llvm.mlir.constant(32 : index) : i64
    %84 = llvm.mlir.constant(16 : index) : i64
    %85 = llvm.mlir.constant(32 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(512 : index) : i64
    %88 = llvm.mlir.constant(16384 : index) : i64
    %89 = llvm.mlir.constant(524288 : index) : i64
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
    %103 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %104 = llvm.insertvalue %95, %103[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.insertvalue %102, %104[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.mlir.constant(0 : index) : i64
    %107 = llvm.insertvalue %106, %105[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.insertvalue %82, %107[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.insertvalue %83, %108[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %84, %109[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %85, %110[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %88, %111[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.insertvalue %87, %112[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.insertvalue %85, %113[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.insertvalue %86, %114[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb13(%12 : i64)
  ^bb13(%116: i64):  // 2 preds: ^bb12, ^bb23
    %117 = builtin.unrealized_conversion_cast %116 : i64 to index
    %118 = builtin.unrealized_conversion_cast %117 : index to i64
    %119 = llvm.icmp "slt" %116, %7 : i64
    llvm.cond_br %119, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%12 : i64)
  ^bb15(%120: i64):  // 2 preds: ^bb14, ^bb22
    %121 = builtin.unrealized_conversion_cast %120 : i64 to index
    %122 = builtin.unrealized_conversion_cast %121 : index to i64
    %123 = llvm.icmp "slt" %120, %7 : i64
    llvm.cond_br %123, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    llvm.br ^bb17(%12 : i64)
  ^bb17(%124: i64):  // 2 preds: ^bb16, ^bb21
    %125 = builtin.unrealized_conversion_cast %124 : i64 to index
    %126 = builtin.unrealized_conversion_cast %125 : index to i64
    %127 = llvm.icmp "slt" %124, %3 : i64
    llvm.cond_br %127, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    llvm.br ^bb19(%12 : i64)
  ^bb19(%128: i64):  // 2 preds: ^bb18, ^bb20
    %129 = builtin.unrealized_conversion_cast %128 : i64 to index
    %130 = builtin.unrealized_conversion_cast %129 : index to i64
    %131 = llvm.icmp "slt" %128, %7 : i64
    llvm.cond_br %131, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %132 = llvm.extractvalue %115[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.mlir.constant(16384 : index) : i64
    %134 = llvm.mul %118, %133 : i64
    %135 = llvm.mlir.constant(512 : index) : i64
    %136 = llvm.mul %122, %135 : i64
    %137 = llvm.add %134, %136 : i64
    %138 = llvm.mlir.constant(32 : index) : i64
    %139 = llvm.mul %126, %138 : i64
    %140 = llvm.add %137, %139 : i64
    %141 = llvm.add %140, %130 : i64
    %142 = llvm.getelementptr %132[%141] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %15, %142 : f64, !llvm.ptr
    %143 = llvm.add %128, %0 : i64
    llvm.br ^bb19(%143 : i64)
  ^bb21:  // pred: ^bb19
    %144 = llvm.add %124, %0 : i64
    llvm.br ^bb17(%144 : i64)
  ^bb22:  // pred: ^bb17
    %145 = llvm.add %120, %0 : i64
    llvm.br ^bb15(%145 : i64)
  ^bb23:  // pred: ^bb15
    %146 = llvm.add %116, %0 : i64
    llvm.br ^bb13(%146 : i64)
  ^bb24:  // pred: ^bb13
    %147 = llvm.mlir.constant(16 : index) : i64
    %148 = llvm.mlir.constant(32 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.mlir.constant(512 : index) : i64
    %151 = llvm.mlir.zero : !llvm.ptr
    %152 = llvm.getelementptr %151[%150] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %153 = llvm.ptrtoint %152 : !llvm.ptr to i64
    %154 = llvm.mlir.constant(32 : index) : i64
    %155 = llvm.add %153, %154 : i64
    %156 = llvm.call @malloc(%155) : (i64) -> !llvm.ptr
    %157 = llvm.ptrtoint %156 : !llvm.ptr to i64
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.sub %154, %158 : i64
    %160 = llvm.add %157, %159 : i64
    %161 = llvm.urem %160, %154  : i64
    %162 = llvm.sub %160, %161 : i64
    %163 = llvm.inttoptr %162 : i64 to !llvm.ptr
    %164 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %165 = llvm.insertvalue %156, %164[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %166 = llvm.insertvalue %163, %165[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %167 = llvm.mlir.constant(0 : index) : i64
    %168 = llvm.insertvalue %167, %166[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %169 = llvm.insertvalue %147, %168[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %170 = llvm.insertvalue %148, %169[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %171 = llvm.insertvalue %148, %170[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %172 = llvm.insertvalue %149, %171[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb25(%12 : i64)
  ^bb25(%173: i64):  // 2 preds: ^bb24, ^bb29
    %174 = builtin.unrealized_conversion_cast %173 : i64 to index
    %175 = builtin.unrealized_conversion_cast %174 : index to i64
    %176 = llvm.icmp "slt" %173, %3 : i64
    llvm.cond_br %176, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%12 : i64)
  ^bb27(%177: i64):  // 2 preds: ^bb26, ^bb28
    %178 = builtin.unrealized_conversion_cast %177 : i64 to index
    %179 = builtin.unrealized_conversion_cast %178 : index to i64
    %180 = llvm.icmp "slt" %177, %7 : i64
    llvm.cond_br %180, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %181 = llvm.extractvalue %172[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %182 = llvm.mlir.constant(32 : index) : i64
    %183 = llvm.mul %175, %182 : i64
    %184 = llvm.add %183, %179 : i64
    %185 = llvm.getelementptr %181[%184] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %14, %185 : f64, !llvm.ptr
    %186 = llvm.add %177, %0 : i64
    llvm.br ^bb27(%186 : i64)
  ^bb29:  // pred: ^bb27
    %187 = llvm.add %173, %0 : i64
    llvm.br ^bb25(%187 : i64)
  ^bb30:  // pred: ^bb25
    %188 = llvm.mlir.constant(16 : index) : i64
    %189 = llvm.mlir.constant(32 : index) : i64
    %190 = llvm.mlir.constant(32 : index) : i64
    %191 = llvm.mlir.constant(16 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    %193 = llvm.mlir.constant(512 : index) : i64
    %194 = llvm.mlir.constant(16384 : index) : i64
    %195 = llvm.mlir.constant(262144 : index) : i64
    %196 = llvm.mlir.zero : !llvm.ptr
    %197 = llvm.getelementptr %196[%195] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %198 = llvm.ptrtoint %197 : !llvm.ptr to i64
    %199 = llvm.mlir.constant(64 : index) : i64
    %200 = llvm.add %198, %199 : i64
    %201 = llvm.call @malloc(%200) : (i64) -> !llvm.ptr
    %202 = llvm.ptrtoint %201 : !llvm.ptr to i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.sub %199, %203 : i64
    %205 = llvm.add %202, %204 : i64
    %206 = llvm.urem %205, %199  : i64
    %207 = llvm.sub %205, %206 : i64
    %208 = llvm.inttoptr %207 : i64 to !llvm.ptr
    %209 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %210 = llvm.insertvalue %201, %209[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.insertvalue %208, %210[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.mlir.constant(0 : index) : i64
    %213 = llvm.insertvalue %212, %211[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.insertvalue %188, %213[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.insertvalue %189, %214[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.insertvalue %190, %215[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.insertvalue %191, %216[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.insertvalue %194, %217[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.insertvalue %193, %218[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.insertvalue %191, %219[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.insertvalue %192, %220[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb31(%12 : i64)
  ^bb31(%222: i64):  // 2 preds: ^bb30, ^bb41
    %223 = builtin.unrealized_conversion_cast %222 : i64 to index
    %224 = builtin.unrealized_conversion_cast %223 : index to i64
    %225 = llvm.icmp "slt" %222, %3 : i64
    llvm.cond_br %225, ^bb32, ^bb42
  ^bb32:  // pred: ^bb31
    llvm.br ^bb33(%12 : i64)
  ^bb33(%226: i64):  // 2 preds: ^bb32, ^bb40
    %227 = builtin.unrealized_conversion_cast %226 : i64 to index
    %228 = builtin.unrealized_conversion_cast %227 : index to i64
    %229 = llvm.icmp "slt" %226, %7 : i64
    llvm.cond_br %229, ^bb34, ^bb41
  ^bb34:  // pred: ^bb33
    llvm.br ^bb35(%12 : i64)
  ^bb35(%230: i64):  // 2 preds: ^bb34, ^bb39
    %231 = builtin.unrealized_conversion_cast %230 : i64 to index
    %232 = builtin.unrealized_conversion_cast %231 : index to i64
    %233 = llvm.icmp "slt" %230, %7 : i64
    llvm.cond_br %233, ^bb36, ^bb40
  ^bb36:  // pred: ^bb35
    llvm.br ^bb37(%12 : i64)
  ^bb37(%234: i64):  // 2 preds: ^bb36, ^bb38
    %235 = builtin.unrealized_conversion_cast %234 : i64 to index
    %236 = builtin.unrealized_conversion_cast %235 : index to i64
    %237 = llvm.icmp "slt" %234, %3 : i64
    llvm.cond_br %237, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %238 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %239 = llvm.mlir.constant(16384 : index) : i64
    %240 = llvm.mul %224, %239 : i64
    %241 = llvm.mlir.constant(1024 : index) : i64
    %242 = llvm.mul %236, %241 : i64
    %243 = llvm.add %240, %242 : i64
    %244 = llvm.mlir.constant(32 : index) : i64
    %245 = llvm.mul %228, %244 : i64
    %246 = llvm.add %243, %245 : i64
    %247 = llvm.add %246, %232 : i64
    %248 = llvm.getelementptr %238[%247] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %249 = llvm.load %248 : !llvm.ptr -> f64
    %250 = llvm.extractvalue %221[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %251 = llvm.mlir.constant(16384 : index) : i64
    %252 = llvm.mul %224, %251 : i64
    %253 = llvm.mlir.constant(512 : index) : i64
    %254 = llvm.mul %228, %253 : i64
    %255 = llvm.add %252, %254 : i64
    %256 = llvm.mlir.constant(16 : index) : i64
    %257 = llvm.mul %232, %256 : i64
    %258 = llvm.add %255, %257 : i64
    %259 = llvm.add %258, %236 : i64
    %260 = llvm.getelementptr %250[%259] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %249, %260 : f64, !llvm.ptr
    %261 = llvm.add %234, %0 : i64
    llvm.br ^bb37(%261 : i64)
  ^bb39:  // pred: ^bb37
    %262 = llvm.add %230, %0 : i64
    llvm.br ^bb35(%262 : i64)
  ^bb40:  // pred: ^bb35
    %263 = llvm.add %226, %0 : i64
    llvm.br ^bb33(%263 : i64)
  ^bb41:  // pred: ^bb33
    %264 = llvm.add %222, %0 : i64
    llvm.br ^bb31(%264 : i64)
  ^bb42:  // pred: ^bb31
    llvm.br ^bb43(%12 : i64)
  ^bb43(%265: i64):  // 2 preds: ^bb42, ^bb44
    %266 = llvm.icmp "slt" %265, %11 : i64
    llvm.cond_br %266, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %267 = llvm.sub %11, %265 : i64
    %268 = llvm.intr.smin(%267, %9)  : (i64, i64) -> i64
    %269 = builtin.unrealized_conversion_cast %268 : i64 to index
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0, %arg1, %arg2) : index = (%13, %13, %13) to (%8, %4, %269) step (%6, %2, %10) {
          %279 = builtin.unrealized_conversion_cast %arg2 : index to i64
          %280 = builtin.unrealized_conversion_cast %arg1 : index to i64
          %281 = builtin.unrealized_conversion_cast %arg0 : index to i64
          %282 = llvm.sub %7, %281 : i64
          %283 = llvm.intr.smin(%282, %5)  : (i64, i64) -> i64
          %284 = builtin.unrealized_conversion_cast %283 : i64 to index
          %285 = builtin.unrealized_conversion_cast %284 : index to i64
          %286 = llvm.sub %3, %280 : i64
          %287 = llvm.intr.smin(%286, %1)  : (i64, i64) -> i64
          %288 = builtin.unrealized_conversion_cast %287 : i64 to index
          %289 = builtin.unrealized_conversion_cast %288 : index to i64
          %290 = llvm.sub %268, %279 : i64
          %291 = llvm.intr.smin(%290, %9)  : (i64, i64) -> i64
          %292 = builtin.unrealized_conversion_cast %291 : i64 to index
          %293 = builtin.unrealized_conversion_cast %292 : index to i64
          %294 = llvm.add %265, %279 : i64
          %295 = llvm.mlir.constant(16384 : index) : i64
          %296 = llvm.mul %280, %295 : i64
          %297 = llvm.add %296, %294 : i64
          %298 = builtin.unrealized_conversion_cast %297 : i64 to index
          %299 = builtin.unrealized_conversion_cast %298 : index to i64
          %300 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %301 = llvm.extractvalue %221[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
          %302 = llvm.extractvalue %221[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
          %303 = llvm.insertvalue %301, %300[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %304 = llvm.insertvalue %302, %303[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %305 = llvm.insertvalue %299, %304[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %306 = llvm.insertvalue %289, %305[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %307 = llvm.mlir.constant(16384 : index) : i64
          %308 = llvm.insertvalue %307, %306[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %309 = llvm.insertvalue %293, %308[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %310 = llvm.mlir.constant(1 : index) : i64
          %311 = llvm.insertvalue %310, %309[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %312 = llvm.mlir.constant(32 : index) : i64
          %313 = llvm.mul %294, %312 : i64
          %314 = llvm.add %313, %281 : i64
          %315 = builtin.unrealized_conversion_cast %314 : i64 to index
          %316 = builtin.unrealized_conversion_cast %315 : index to i64
          %317 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %318 = llvm.extractvalue %115[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
          %319 = llvm.extractvalue %115[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
          %320 = llvm.insertvalue %318, %317[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %321 = llvm.insertvalue %319, %320[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %322 = llvm.insertvalue %316, %321[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %323 = llvm.insertvalue %293, %322[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %324 = llvm.mlir.constant(32 : index) : i64
          %325 = llvm.insertvalue %324, %323[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %326 = llvm.insertvalue %285, %325[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %327 = llvm.mlir.constant(1 : index) : i64
          %328 = llvm.insertvalue %327, %326[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %329 = llvm.mlir.constant(32 : index) : i64
          %330 = llvm.mul %280, %329 : i64
          %331 = llvm.add %330, %281 : i64
          %332 = builtin.unrealized_conversion_cast %331 : i64 to index
          %333 = builtin.unrealized_conversion_cast %332 : index to i64
          %334 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %335 = llvm.extractvalue %172[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %336 = llvm.extractvalue %172[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %337 = llvm.insertvalue %335, %334[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %338 = llvm.insertvalue %336, %337[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %339 = llvm.insertvalue %333, %338[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %340 = llvm.insertvalue %289, %339[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %341 = llvm.mlir.constant(32 : index) : i64
          %342 = llvm.insertvalue %341, %340[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %343 = llvm.insertvalue %285, %342[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %344 = llvm.mlir.constant(1 : index) : i64
          %345 = llvm.insertvalue %344, %343[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          cf.br ^bb1(%13 : index)
        ^bb1(%346: index):  // 2 preds: ^bb0, ^bb8
          %347 = builtin.unrealized_conversion_cast %346 : index to i64
          %348 = builtin.unrealized_conversion_cast %346 : index to i64
          %349 = llvm.icmp "slt" %347, %287 : i64
          llvm.cond_br %349, ^bb2, ^bb9
        ^bb2:  // pred: ^bb1
          cf.br ^bb3(%13 : index)
        ^bb3(%350: index):  // 2 preds: ^bb2, ^bb7
          %351 = builtin.unrealized_conversion_cast %350 : index to i64
          %352 = builtin.unrealized_conversion_cast %350 : index to i64
          %353 = llvm.icmp "slt" %351, %283 : i64
          llvm.cond_br %353, ^bb4, ^bb8
        ^bb4:  // pred: ^bb3
          cf.br ^bb5(%13 : index)
        ^bb5(%354: index):  // 2 preds: ^bb4, ^bb6
          %355 = builtin.unrealized_conversion_cast %354 : index to i64
          %356 = builtin.unrealized_conversion_cast %354 : index to i64
          %357 = llvm.icmp "slt" %355, %291 : i64
          llvm.cond_br %357, ^bb6, ^bb7
        ^bb6:  // pred: ^bb5
          %358 = llvm.extractvalue %311[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %359 = llvm.extractvalue %311[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %360 = llvm.getelementptr %358[%359] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %361 = llvm.mlir.constant(16384 : index) : i64
          %362 = llvm.mul %348, %361 : i64
          %363 = llvm.add %362, %356 : i64
          %364 = llvm.getelementptr %360[%363] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %365 = llvm.load %364 : !llvm.ptr -> f64
          %366 = llvm.extractvalue %328[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %367 = llvm.extractvalue %328[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %368 = llvm.getelementptr %366[%367] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %369 = llvm.mlir.constant(32 : index) : i64
          %370 = llvm.mul %356, %369 : i64
          %371 = llvm.add %370, %352 : i64
          %372 = llvm.getelementptr %368[%371] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %373 = llvm.load %372 : !llvm.ptr -> f64
          %374 = llvm.extractvalue %345[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %375 = llvm.extractvalue %345[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %376 = llvm.getelementptr %374[%375] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %377 = llvm.mlir.constant(32 : index) : i64
          %378 = llvm.mul %348, %377 : i64
          %379 = llvm.add %378, %352 : i64
          %380 = llvm.getelementptr %376[%379] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %381 = llvm.load %380 : !llvm.ptr -> f64
          %382 = llvm.fmul %365, %373  : f64
          %383 = llvm.fadd %381, %382  : f64
          %384 = llvm.extractvalue %345[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %385 = llvm.extractvalue %345[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %386 = llvm.getelementptr %384[%385] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %387 = llvm.mlir.constant(32 : index) : i64
          %388 = llvm.mul %348, %387 : i64
          %389 = llvm.add %388, %352 : i64
          %390 = llvm.getelementptr %386[%389] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %383, %390 : f64, !llvm.ptr
          %391 = llvm.add %355, %0 : i64
          %392 = builtin.unrealized_conversion_cast %391 : i64 to index
          cf.br ^bb5(%392 : index)
        ^bb7:  // pred: ^bb5
          %393 = llvm.add %351, %0 : i64
          %394 = builtin.unrealized_conversion_cast %393 : i64 to index
          cf.br ^bb3(%394 : index)
        ^bb8:  // pred: ^bb3
          %395 = llvm.add %347, %0 : i64
          %396 = builtin.unrealized_conversion_cast %395 : i64 to index
          cf.br ^bb1(%396 : index)
        ^bb9:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %270 = llvm.add %265, %9 : i64
    llvm.br ^bb43(%270 : i64)
  ^bb45:  // pred: ^bb43
    %271 = llvm.mlir.constant(1 : index) : i64
    %272 = llvm.alloca %271 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %172, %272 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %273 = llvm.mlir.constant(2 : index) : i64
    %274 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %275 = llvm.insertvalue %273, %274[0] : !llvm.struct<(i64, ptr)> 
    %276 = llvm.insertvalue %272, %275[1] : !llvm.struct<(i64, ptr)> 
    %277 = llvm.extractvalue %276[0] : !llvm.struct<(i64, ptr)> 
    %278 = llvm.extractvalue %276[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%277, %278) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


// -----// IR Dump After ConvertIndexToLLVMPass (convert-index-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(1 : index) : i64
    %1 = llvm.mlir.constant(8 : index) : i64
    %2 = builtin.unrealized_conversion_cast %1 : i64 to index
    %3 = llvm.mlir.constant(16 : index) : i64
    %4 = builtin.unrealized_conversion_cast %3 : i64 to index
    %5 = llvm.mlir.constant(6 : index) : i64
    %6 = builtin.unrealized_conversion_cast %5 : i64 to index
    %7 = llvm.mlir.constant(32 : index) : i64
    %8 = builtin.unrealized_conversion_cast %7 : i64 to index
    %9 = llvm.mlir.constant(3072 : index) : i64
    %10 = builtin.unrealized_conversion_cast %9 : i64 to index
    %11 = llvm.mlir.constant(16384 : index) : i64
    %12 = llvm.mlir.constant(0 : index) : i64
    %13 = builtin.unrealized_conversion_cast %12 : i64 to index
    %14 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %15 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %16 = llvm.mlir.constant(2.300000e+00 : f64) : f64
    %17 = llvm.mlir.constant(16 : index) : i64
    %18 = llvm.mlir.constant(16 : index) : i64
    %19 = llvm.mlir.constant(32 : index) : i64
    %20 = llvm.mlir.constant(32 : index) : i64
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.mlir.constant(1024 : index) : i64
    %23 = llvm.mlir.constant(16384 : index) : i64
    %24 = llvm.mlir.constant(262144 : index) : i64
    %25 = llvm.mlir.zero : !llvm.ptr
    %26 = llvm.getelementptr %25[%24] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %27 = llvm.ptrtoint %26 : !llvm.ptr to i64
    %28 = llvm.mlir.constant(32 : index) : i64
    %29 = llvm.add %27, %28 : i64
    %30 = llvm.call @malloc(%29) : (i64) -> !llvm.ptr
    %31 = llvm.ptrtoint %30 : !llvm.ptr to i64
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.sub %28, %32 : i64
    %34 = llvm.add %31, %33 : i64
    %35 = llvm.urem %34, %28  : i64
    %36 = llvm.sub %34, %35 : i64
    %37 = llvm.inttoptr %36 : i64 to !llvm.ptr
    %38 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %39 = llvm.insertvalue %30, %38[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %37, %39[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.mlir.constant(0 : index) : i64
    %42 = llvm.insertvalue %41, %40[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %17, %42[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %18, %43[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %19, %44[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.insertvalue %20, %45[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.insertvalue %23, %46[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.insertvalue %22, %47[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.insertvalue %20, %48[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.insertvalue %21, %49[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb1(%12 : i64)
  ^bb1(%51: i64):  // 2 preds: ^bb0, ^bb11
    %52 = builtin.unrealized_conversion_cast %51 : i64 to index
    %53 = llvm.icmp "slt" %51, %3 : i64
    llvm.cond_br %53, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%12 : i64)
  ^bb3(%54: i64):  // 2 preds: ^bb2, ^bb10
    %55 = builtin.unrealized_conversion_cast %54 : i64 to index
    %56 = llvm.icmp "slt" %54, %3 : i64
    llvm.cond_br %56, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    llvm.br ^bb5(%12 : i64)
  ^bb5(%57: i64):  // 2 preds: ^bb4, ^bb9
    %58 = builtin.unrealized_conversion_cast %57 : i64 to index
    %59 = llvm.icmp "slt" %57, %7 : i64
    llvm.cond_br %59, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    llvm.br ^bb7(%12 : i64)
  ^bb7(%60: i64):  // 2 preds: ^bb6, ^bb8
    %61 = builtin.unrealized_conversion_cast %60 : i64 to index
    %62 = llvm.icmp "slt" %60, %7 : i64
    llvm.cond_br %62, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %63 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(16384 : index) : i64
    %65 = llvm.mul %51, %64 : i64
    %66 = llvm.mlir.constant(1024 : index) : i64
    %67 = llvm.mul %54, %66 : i64
    %68 = llvm.add %65, %67 : i64
    %69 = llvm.mlir.constant(32 : index) : i64
    %70 = llvm.mul %57, %69 : i64
    %71 = llvm.add %68, %70 : i64
    %72 = llvm.add %71, %60 : i64
    %73 = llvm.getelementptr %63[%72] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %16, %73 : f64, !llvm.ptr
    %74 = llvm.add %60, %0 : i64
    llvm.br ^bb7(%74 : i64)
  ^bb9:  // pred: ^bb7
    %75 = llvm.add %57, %0 : i64
    llvm.br ^bb5(%75 : i64)
  ^bb10:  // pred: ^bb5
    %76 = llvm.add %54, %0 : i64
    llvm.br ^bb3(%76 : i64)
  ^bb11:  // pred: ^bb3
    %77 = llvm.add %51, %0 : i64
    llvm.br ^bb1(%77 : i64)
  ^bb12:  // pred: ^bb1
    %78 = llvm.mlir.constant(32 : index) : i64
    %79 = llvm.mlir.constant(32 : index) : i64
    %80 = llvm.mlir.constant(16 : index) : i64
    %81 = llvm.mlir.constant(32 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(512 : index) : i64
    %84 = llvm.mlir.constant(16384 : index) : i64
    %85 = llvm.mlir.constant(524288 : index) : i64
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
    %99 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %100 = llvm.insertvalue %91, %99[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.insertvalue %98, %100[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.mlir.constant(0 : index) : i64
    %103 = llvm.insertvalue %102, %101[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.insertvalue %78, %103[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.insertvalue %79, %104[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.insertvalue %80, %105[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.insertvalue %81, %106[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.insertvalue %84, %107[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.insertvalue %83, %108[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %81, %109[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %82, %110[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb13(%12 : i64)
  ^bb13(%112: i64):  // 2 preds: ^bb12, ^bb23
    %113 = builtin.unrealized_conversion_cast %112 : i64 to index
    %114 = llvm.icmp "slt" %112, %7 : i64
    llvm.cond_br %114, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%12 : i64)
  ^bb15(%115: i64):  // 2 preds: ^bb14, ^bb22
    %116 = builtin.unrealized_conversion_cast %115 : i64 to index
    %117 = llvm.icmp "slt" %115, %7 : i64
    llvm.cond_br %117, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    llvm.br ^bb17(%12 : i64)
  ^bb17(%118: i64):  // 2 preds: ^bb16, ^bb21
    %119 = builtin.unrealized_conversion_cast %118 : i64 to index
    %120 = llvm.icmp "slt" %118, %3 : i64
    llvm.cond_br %120, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    llvm.br ^bb19(%12 : i64)
  ^bb19(%121: i64):  // 2 preds: ^bb18, ^bb20
    %122 = builtin.unrealized_conversion_cast %121 : i64 to index
    %123 = llvm.icmp "slt" %121, %7 : i64
    llvm.cond_br %123, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %124 = llvm.extractvalue %111[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.mlir.constant(16384 : index) : i64
    %126 = llvm.mul %112, %125 : i64
    %127 = llvm.mlir.constant(512 : index) : i64
    %128 = llvm.mul %115, %127 : i64
    %129 = llvm.add %126, %128 : i64
    %130 = llvm.mlir.constant(32 : index) : i64
    %131 = llvm.mul %118, %130 : i64
    %132 = llvm.add %129, %131 : i64
    %133 = llvm.add %132, %121 : i64
    %134 = llvm.getelementptr %124[%133] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %15, %134 : f64, !llvm.ptr
    %135 = llvm.add %121, %0 : i64
    llvm.br ^bb19(%135 : i64)
  ^bb21:  // pred: ^bb19
    %136 = llvm.add %118, %0 : i64
    llvm.br ^bb17(%136 : i64)
  ^bb22:  // pred: ^bb17
    %137 = llvm.add %115, %0 : i64
    llvm.br ^bb15(%137 : i64)
  ^bb23:  // pred: ^bb15
    %138 = llvm.add %112, %0 : i64
    llvm.br ^bb13(%138 : i64)
  ^bb24:  // pred: ^bb13
    %139 = llvm.mlir.constant(16 : index) : i64
    %140 = llvm.mlir.constant(32 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.constant(512 : index) : i64
    %143 = llvm.mlir.zero : !llvm.ptr
    %144 = llvm.getelementptr %143[%142] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %145 = llvm.ptrtoint %144 : !llvm.ptr to i64
    %146 = llvm.mlir.constant(32 : index) : i64
    %147 = llvm.add %145, %146 : i64
    %148 = llvm.call @malloc(%147) : (i64) -> !llvm.ptr
    %149 = llvm.ptrtoint %148 : !llvm.ptr to i64
    %150 = llvm.mlir.constant(1 : index) : i64
    %151 = llvm.sub %146, %150 : i64
    %152 = llvm.add %149, %151 : i64
    %153 = llvm.urem %152, %146  : i64
    %154 = llvm.sub %152, %153 : i64
    %155 = llvm.inttoptr %154 : i64 to !llvm.ptr
    %156 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %157 = llvm.insertvalue %148, %156[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %158 = llvm.insertvalue %155, %157[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %159 = llvm.mlir.constant(0 : index) : i64
    %160 = llvm.insertvalue %159, %158[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %161 = llvm.insertvalue %139, %160[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %162 = llvm.insertvalue %140, %161[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %163 = llvm.insertvalue %140, %162[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %164 = llvm.insertvalue %141, %163[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb25(%12 : i64)
  ^bb25(%165: i64):  // 2 preds: ^bb24, ^bb29
    %166 = builtin.unrealized_conversion_cast %165 : i64 to index
    %167 = llvm.icmp "slt" %165, %3 : i64
    llvm.cond_br %167, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%12 : i64)
  ^bb27(%168: i64):  // 2 preds: ^bb26, ^bb28
    %169 = builtin.unrealized_conversion_cast %168 : i64 to index
    %170 = llvm.icmp "slt" %168, %7 : i64
    llvm.cond_br %170, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %171 = llvm.extractvalue %164[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %172 = llvm.mlir.constant(32 : index) : i64
    %173 = llvm.mul %165, %172 : i64
    %174 = llvm.add %173, %168 : i64
    %175 = llvm.getelementptr %171[%174] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %14, %175 : f64, !llvm.ptr
    %176 = llvm.add %168, %0 : i64
    llvm.br ^bb27(%176 : i64)
  ^bb29:  // pred: ^bb27
    %177 = llvm.add %165, %0 : i64
    llvm.br ^bb25(%177 : i64)
  ^bb30:  // pred: ^bb25
    %178 = llvm.mlir.constant(16 : index) : i64
    %179 = llvm.mlir.constant(32 : index) : i64
    %180 = llvm.mlir.constant(32 : index) : i64
    %181 = llvm.mlir.constant(16 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.mlir.constant(512 : index) : i64
    %184 = llvm.mlir.constant(16384 : index) : i64
    %185 = llvm.mlir.constant(262144 : index) : i64
    %186 = llvm.mlir.zero : !llvm.ptr
    %187 = llvm.getelementptr %186[%185] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %188 = llvm.ptrtoint %187 : !llvm.ptr to i64
    %189 = llvm.mlir.constant(64 : index) : i64
    %190 = llvm.add %188, %189 : i64
    %191 = llvm.call @malloc(%190) : (i64) -> !llvm.ptr
    %192 = llvm.ptrtoint %191 : !llvm.ptr to i64
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.sub %189, %193 : i64
    %195 = llvm.add %192, %194 : i64
    %196 = llvm.urem %195, %189  : i64
    %197 = llvm.sub %195, %196 : i64
    %198 = llvm.inttoptr %197 : i64 to !llvm.ptr
    %199 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %200 = llvm.insertvalue %191, %199[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.insertvalue %198, %200[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.insertvalue %202, %201[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.insertvalue %178, %203[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.insertvalue %179, %204[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %206 = llvm.insertvalue %180, %205[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %207 = llvm.insertvalue %181, %206[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.insertvalue %184, %207[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.insertvalue %183, %208[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.insertvalue %181, %209[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.insertvalue %182, %210[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb31(%12 : i64)
  ^bb31(%212: i64):  // 2 preds: ^bb30, ^bb41
    %213 = builtin.unrealized_conversion_cast %212 : i64 to index
    %214 = llvm.icmp "slt" %212, %3 : i64
    llvm.cond_br %214, ^bb32, ^bb42
  ^bb32:  // pred: ^bb31
    llvm.br ^bb33(%12 : i64)
  ^bb33(%215: i64):  // 2 preds: ^bb32, ^bb40
    %216 = builtin.unrealized_conversion_cast %215 : i64 to index
    %217 = llvm.icmp "slt" %215, %7 : i64
    llvm.cond_br %217, ^bb34, ^bb41
  ^bb34:  // pred: ^bb33
    llvm.br ^bb35(%12 : i64)
  ^bb35(%218: i64):  // 2 preds: ^bb34, ^bb39
    %219 = builtin.unrealized_conversion_cast %218 : i64 to index
    %220 = llvm.icmp "slt" %218, %7 : i64
    llvm.cond_br %220, ^bb36, ^bb40
  ^bb36:  // pred: ^bb35
    llvm.br ^bb37(%12 : i64)
  ^bb37(%221: i64):  // 2 preds: ^bb36, ^bb38
    %222 = builtin.unrealized_conversion_cast %221 : i64 to index
    %223 = llvm.icmp "slt" %221, %3 : i64
    llvm.cond_br %223, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %224 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.mlir.constant(16384 : index) : i64
    %226 = llvm.mul %212, %225 : i64
    %227 = llvm.mlir.constant(1024 : index) : i64
    %228 = llvm.mul %221, %227 : i64
    %229 = llvm.add %226, %228 : i64
    %230 = llvm.mlir.constant(32 : index) : i64
    %231 = llvm.mul %215, %230 : i64
    %232 = llvm.add %229, %231 : i64
    %233 = llvm.add %232, %218 : i64
    %234 = llvm.getelementptr %224[%233] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %235 = llvm.load %234 : !llvm.ptr -> f64
    %236 = llvm.extractvalue %211[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.mlir.constant(16384 : index) : i64
    %238 = llvm.mul %212, %237 : i64
    %239 = llvm.mlir.constant(512 : index) : i64
    %240 = llvm.mul %215, %239 : i64
    %241 = llvm.add %238, %240 : i64
    %242 = llvm.mlir.constant(16 : index) : i64
    %243 = llvm.mul %218, %242 : i64
    %244 = llvm.add %241, %243 : i64
    %245 = llvm.add %244, %221 : i64
    %246 = llvm.getelementptr %236[%245] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %235, %246 : f64, !llvm.ptr
    %247 = llvm.add %221, %0 : i64
    llvm.br ^bb37(%247 : i64)
  ^bb39:  // pred: ^bb37
    %248 = llvm.add %218, %0 : i64
    llvm.br ^bb35(%248 : i64)
  ^bb40:  // pred: ^bb35
    %249 = llvm.add %215, %0 : i64
    llvm.br ^bb33(%249 : i64)
  ^bb41:  // pred: ^bb33
    %250 = llvm.add %212, %0 : i64
    llvm.br ^bb31(%250 : i64)
  ^bb42:  // pred: ^bb31
    llvm.br ^bb43(%12 : i64)
  ^bb43(%251: i64):  // 2 preds: ^bb42, ^bb44
    %252 = llvm.icmp "slt" %251, %11 : i64
    llvm.cond_br %252, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %253 = llvm.sub %11, %251 : i64
    %254 = llvm.intr.smin(%253, %9)  : (i64, i64) -> i64
    %255 = builtin.unrealized_conversion_cast %254 : i64 to index
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0, %arg1, %arg2) : index = (%13, %13, %13) to (%8, %4, %255) step (%6, %2, %10) {
          %265 = builtin.unrealized_conversion_cast %arg2 : index to i64
          %266 = builtin.unrealized_conversion_cast %arg1 : index to i64
          %267 = builtin.unrealized_conversion_cast %arg0 : index to i64
          %268 = llvm.sub %7, %267 : i64
          %269 = llvm.intr.smin(%268, %5)  : (i64, i64) -> i64
          %270 = builtin.unrealized_conversion_cast %269 : i64 to index
          %271 = llvm.sub %3, %266 : i64
          %272 = llvm.intr.smin(%271, %1)  : (i64, i64) -> i64
          %273 = builtin.unrealized_conversion_cast %272 : i64 to index
          %274 = llvm.sub %254, %265 : i64
          %275 = llvm.intr.smin(%274, %9)  : (i64, i64) -> i64
          %276 = builtin.unrealized_conversion_cast %275 : i64 to index
          %277 = llvm.add %251, %265 : i64
          %278 = llvm.mlir.constant(16384 : index) : i64
          %279 = llvm.mul %266, %278 : i64
          %280 = llvm.add %279, %277 : i64
          %281 = builtin.unrealized_conversion_cast %280 : i64 to index
          %282 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %283 = llvm.extractvalue %211[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
          %284 = llvm.extractvalue %211[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
          %285 = llvm.insertvalue %283, %282[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %286 = llvm.insertvalue %284, %285[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %287 = llvm.insertvalue %280, %286[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %288 = llvm.insertvalue %272, %287[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %289 = llvm.mlir.constant(16384 : index) : i64
          %290 = llvm.insertvalue %289, %288[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %291 = llvm.insertvalue %275, %290[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %292 = llvm.mlir.constant(1 : index) : i64
          %293 = llvm.insertvalue %292, %291[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %294 = llvm.mlir.constant(32 : index) : i64
          %295 = llvm.mul %277, %294 : i64
          %296 = llvm.add %295, %267 : i64
          %297 = builtin.unrealized_conversion_cast %296 : i64 to index
          %298 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %299 = llvm.extractvalue %111[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
          %300 = llvm.extractvalue %111[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
          %301 = llvm.insertvalue %299, %298[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %302 = llvm.insertvalue %300, %301[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %303 = llvm.insertvalue %296, %302[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %304 = llvm.insertvalue %275, %303[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %305 = llvm.mlir.constant(32 : index) : i64
          %306 = llvm.insertvalue %305, %304[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %307 = llvm.insertvalue %269, %306[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %308 = llvm.mlir.constant(1 : index) : i64
          %309 = llvm.insertvalue %308, %307[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %310 = llvm.mlir.constant(32 : index) : i64
          %311 = llvm.mul %266, %310 : i64
          %312 = llvm.add %311, %267 : i64
          %313 = builtin.unrealized_conversion_cast %312 : i64 to index
          %314 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %315 = llvm.extractvalue %164[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %316 = llvm.extractvalue %164[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %317 = llvm.insertvalue %315, %314[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %318 = llvm.insertvalue %316, %317[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %319 = llvm.insertvalue %312, %318[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %320 = llvm.insertvalue %272, %319[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %321 = llvm.mlir.constant(32 : index) : i64
          %322 = llvm.insertvalue %321, %320[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %323 = llvm.insertvalue %269, %322[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %324 = llvm.mlir.constant(1 : index) : i64
          %325 = llvm.insertvalue %324, %323[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          cf.br ^bb1(%13 : index)
        ^bb1(%326: index):  // 2 preds: ^bb0, ^bb8
          %327 = builtin.unrealized_conversion_cast %326 : index to i64
          %328 = builtin.unrealized_conversion_cast %326 : index to i64
          %329 = llvm.icmp "slt" %327, %272 : i64
          llvm.cond_br %329, ^bb2, ^bb9
        ^bb2:  // pred: ^bb1
          cf.br ^bb3(%13 : index)
        ^bb3(%330: index):  // 2 preds: ^bb2, ^bb7
          %331 = builtin.unrealized_conversion_cast %330 : index to i64
          %332 = builtin.unrealized_conversion_cast %330 : index to i64
          %333 = llvm.icmp "slt" %331, %269 : i64
          llvm.cond_br %333, ^bb4, ^bb8
        ^bb4:  // pred: ^bb3
          cf.br ^bb5(%13 : index)
        ^bb5(%334: index):  // 2 preds: ^bb4, ^bb6
          %335 = builtin.unrealized_conversion_cast %334 : index to i64
          %336 = builtin.unrealized_conversion_cast %334 : index to i64
          %337 = llvm.icmp "slt" %335, %275 : i64
          llvm.cond_br %337, ^bb6, ^bb7
        ^bb6:  // pred: ^bb5
          %338 = llvm.extractvalue %293[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %339 = llvm.extractvalue %293[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %340 = llvm.getelementptr %338[%339] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %341 = llvm.mlir.constant(16384 : index) : i64
          %342 = llvm.mul %328, %341 : i64
          %343 = llvm.add %342, %336 : i64
          %344 = llvm.getelementptr %340[%343] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %345 = llvm.load %344 : !llvm.ptr -> f64
          %346 = llvm.extractvalue %309[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %347 = llvm.extractvalue %309[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %348 = llvm.getelementptr %346[%347] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %349 = llvm.mlir.constant(32 : index) : i64
          %350 = llvm.mul %336, %349 : i64
          %351 = llvm.add %350, %332 : i64
          %352 = llvm.getelementptr %348[%351] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %353 = llvm.load %352 : !llvm.ptr -> f64
          %354 = llvm.extractvalue %325[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %355 = llvm.extractvalue %325[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %356 = llvm.getelementptr %354[%355] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %357 = llvm.mlir.constant(32 : index) : i64
          %358 = llvm.mul %328, %357 : i64
          %359 = llvm.add %358, %332 : i64
          %360 = llvm.getelementptr %356[%359] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %361 = llvm.load %360 : !llvm.ptr -> f64
          %362 = llvm.fmul %345, %353  : f64
          %363 = llvm.fadd %361, %362  : f64
          %364 = llvm.extractvalue %325[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %365 = llvm.extractvalue %325[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %366 = llvm.getelementptr %364[%365] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %367 = llvm.mlir.constant(32 : index) : i64
          %368 = llvm.mul %328, %367 : i64
          %369 = llvm.add %368, %332 : i64
          %370 = llvm.getelementptr %366[%369] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %363, %370 : f64, !llvm.ptr
          %371 = llvm.add %335, %0 : i64
          %372 = builtin.unrealized_conversion_cast %371 : i64 to index
          cf.br ^bb5(%372 : index)
        ^bb7:  // pred: ^bb5
          %373 = llvm.add %331, %0 : i64
          %374 = builtin.unrealized_conversion_cast %373 : i64 to index
          cf.br ^bb3(%374 : index)
        ^bb8:  // pred: ^bb3
          %375 = llvm.add %327, %0 : i64
          %376 = builtin.unrealized_conversion_cast %375 : i64 to index
          cf.br ^bb1(%376 : index)
        ^bb9:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %256 = llvm.add %251, %9 : i64
    llvm.br ^bb43(%256 : i64)
  ^bb45:  // pred: ^bb43
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.alloca %257 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %164, %258 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %259 = llvm.mlir.constant(2 : index) : i64
    %260 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %261 = llvm.insertvalue %259, %260[0] : !llvm.struct<(i64, ptr)> 
    %262 = llvm.insertvalue %258, %261[1] : !llvm.struct<(i64, ptr)> 
    %263 = llvm.extractvalue %262[0] : !llvm.struct<(i64, ptr)> 
    %264 = llvm.extractvalue %262[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%263, %264) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


// -----// IR Dump After ConvertOpenMPToLLVMPass (convert-openmp-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(1 : index) : i64
    %1 = llvm.mlir.constant(8 : index) : i64
    %2 = llvm.mlir.constant(16 : index) : i64
    %3 = llvm.mlir.constant(6 : index) : i64
    %4 = llvm.mlir.constant(32 : index) : i64
    %5 = llvm.mlir.constant(3072 : index) : i64
    %6 = llvm.mlir.constant(16384 : index) : i64
    %7 = llvm.mlir.constant(0 : index) : i64
    %8 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %9 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %10 = llvm.mlir.constant(2.300000e+00 : f64) : f64
    %11 = llvm.mlir.constant(16 : index) : i64
    %12 = llvm.mlir.constant(16 : index) : i64
    %13 = llvm.mlir.constant(32 : index) : i64
    %14 = llvm.mlir.constant(32 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(1024 : index) : i64
    %17 = llvm.mlir.constant(16384 : index) : i64
    %18 = llvm.mlir.constant(262144 : index) : i64
    %19 = llvm.mlir.zero : !llvm.ptr
    %20 = llvm.getelementptr %19[%18] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %21 = llvm.ptrtoint %20 : !llvm.ptr to i64
    %22 = llvm.mlir.constant(32 : index) : i64
    %23 = llvm.add %21, %22 : i64
    %24 = llvm.call @malloc(%23) : (i64) -> !llvm.ptr
    %25 = llvm.ptrtoint %24 : !llvm.ptr to i64
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.sub %22, %26 : i64
    %28 = llvm.add %25, %27 : i64
    %29 = llvm.urem %28, %22  : i64
    %30 = llvm.sub %28, %29 : i64
    %31 = llvm.inttoptr %30 : i64 to !llvm.ptr
    %32 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %33 = llvm.insertvalue %24, %32[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.insertvalue %31, %33[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.mlir.constant(0 : index) : i64
    %36 = llvm.insertvalue %35, %34[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.insertvalue %11, %36[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %12, %37[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %13, %38[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %14, %39[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %17, %40[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %16, %41[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %14, %42[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %15, %43[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb1(%7 : i64)
  ^bb1(%45: i64):  // 2 preds: ^bb0, ^bb11
    %46 = builtin.unrealized_conversion_cast %45 : i64 to index
    %47 = llvm.icmp "slt" %45, %2 : i64
    llvm.cond_br %47, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%7 : i64)
  ^bb3(%48: i64):  // 2 preds: ^bb2, ^bb10
    %49 = builtin.unrealized_conversion_cast %48 : i64 to index
    %50 = llvm.icmp "slt" %48, %2 : i64
    llvm.cond_br %50, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    llvm.br ^bb5(%7 : i64)
  ^bb5(%51: i64):  // 2 preds: ^bb4, ^bb9
    %52 = builtin.unrealized_conversion_cast %51 : i64 to index
    %53 = llvm.icmp "slt" %51, %4 : i64
    llvm.cond_br %53, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    llvm.br ^bb7(%7 : i64)
  ^bb7(%54: i64):  // 2 preds: ^bb6, ^bb8
    %55 = builtin.unrealized_conversion_cast %54 : i64 to index
    %56 = llvm.icmp "slt" %54, %4 : i64
    llvm.cond_br %56, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %57 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.mlir.constant(16384 : index) : i64
    %59 = llvm.mul %45, %58 : i64
    %60 = llvm.mlir.constant(1024 : index) : i64
    %61 = llvm.mul %48, %60 : i64
    %62 = llvm.add %59, %61 : i64
    %63 = llvm.mlir.constant(32 : index) : i64
    %64 = llvm.mul %51, %63 : i64
    %65 = llvm.add %62, %64 : i64
    %66 = llvm.add %65, %54 : i64
    %67 = llvm.getelementptr %57[%66] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %10, %67 : f64, !llvm.ptr
    %68 = llvm.add %54, %0 : i64
    llvm.br ^bb7(%68 : i64)
  ^bb9:  // pred: ^bb7
    %69 = llvm.add %51, %0 : i64
    llvm.br ^bb5(%69 : i64)
  ^bb10:  // pred: ^bb5
    %70 = llvm.add %48, %0 : i64
    llvm.br ^bb3(%70 : i64)
  ^bb11:  // pred: ^bb3
    %71 = llvm.add %45, %0 : i64
    llvm.br ^bb1(%71 : i64)
  ^bb12:  // pred: ^bb1
    %72 = llvm.mlir.constant(32 : index) : i64
    %73 = llvm.mlir.constant(32 : index) : i64
    %74 = llvm.mlir.constant(16 : index) : i64
    %75 = llvm.mlir.constant(32 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.mlir.constant(512 : index) : i64
    %78 = llvm.mlir.constant(16384 : index) : i64
    %79 = llvm.mlir.constant(524288 : index) : i64
    %80 = llvm.mlir.zero : !llvm.ptr
    %81 = llvm.getelementptr %80[%79] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %82 = llvm.ptrtoint %81 : !llvm.ptr to i64
    %83 = llvm.mlir.constant(32 : index) : i64
    %84 = llvm.add %82, %83 : i64
    %85 = llvm.call @malloc(%84) : (i64) -> !llvm.ptr
    %86 = llvm.ptrtoint %85 : !llvm.ptr to i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.sub %83, %87 : i64
    %89 = llvm.add %86, %88 : i64
    %90 = llvm.urem %89, %83  : i64
    %91 = llvm.sub %89, %90 : i64
    %92 = llvm.inttoptr %91 : i64 to !llvm.ptr
    %93 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %94 = llvm.insertvalue %85, %93[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.insertvalue %92, %94[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.mlir.constant(0 : index) : i64
    %97 = llvm.insertvalue %96, %95[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.insertvalue %72, %97[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.insertvalue %73, %98[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %74, %99[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.insertvalue %75, %100[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.insertvalue %78, %101[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.insertvalue %77, %102[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.insertvalue %75, %103[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.insertvalue %76, %104[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb13(%7 : i64)
  ^bb13(%106: i64):  // 2 preds: ^bb12, ^bb23
    %107 = builtin.unrealized_conversion_cast %106 : i64 to index
    %108 = llvm.icmp "slt" %106, %4 : i64
    llvm.cond_br %108, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%7 : i64)
  ^bb15(%109: i64):  // 2 preds: ^bb14, ^bb22
    %110 = builtin.unrealized_conversion_cast %109 : i64 to index
    %111 = llvm.icmp "slt" %109, %4 : i64
    llvm.cond_br %111, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    llvm.br ^bb17(%7 : i64)
  ^bb17(%112: i64):  // 2 preds: ^bb16, ^bb21
    %113 = builtin.unrealized_conversion_cast %112 : i64 to index
    %114 = llvm.icmp "slt" %112, %2 : i64
    llvm.cond_br %114, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    llvm.br ^bb19(%7 : i64)
  ^bb19(%115: i64):  // 2 preds: ^bb18, ^bb20
    %116 = builtin.unrealized_conversion_cast %115 : i64 to index
    %117 = llvm.icmp "slt" %115, %4 : i64
    llvm.cond_br %117, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %118 = llvm.extractvalue %105[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.mlir.constant(16384 : index) : i64
    %120 = llvm.mul %106, %119 : i64
    %121 = llvm.mlir.constant(512 : index) : i64
    %122 = llvm.mul %109, %121 : i64
    %123 = llvm.add %120, %122 : i64
    %124 = llvm.mlir.constant(32 : index) : i64
    %125 = llvm.mul %112, %124 : i64
    %126 = llvm.add %123, %125 : i64
    %127 = llvm.add %126, %115 : i64
    %128 = llvm.getelementptr %118[%127] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %9, %128 : f64, !llvm.ptr
    %129 = llvm.add %115, %0 : i64
    llvm.br ^bb19(%129 : i64)
  ^bb21:  // pred: ^bb19
    %130 = llvm.add %112, %0 : i64
    llvm.br ^bb17(%130 : i64)
  ^bb22:  // pred: ^bb17
    %131 = llvm.add %109, %0 : i64
    llvm.br ^bb15(%131 : i64)
  ^bb23:  // pred: ^bb15
    %132 = llvm.add %106, %0 : i64
    llvm.br ^bb13(%132 : i64)
  ^bb24:  // pred: ^bb13
    %133 = llvm.mlir.constant(16 : index) : i64
    %134 = llvm.mlir.constant(32 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.mlir.constant(512 : index) : i64
    %137 = llvm.mlir.zero : !llvm.ptr
    %138 = llvm.getelementptr %137[%136] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %139 = llvm.ptrtoint %138 : !llvm.ptr to i64
    %140 = llvm.mlir.constant(32 : index) : i64
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
    llvm.br ^bb25(%7 : i64)
  ^bb25(%159: i64):  // 2 preds: ^bb24, ^bb29
    %160 = builtin.unrealized_conversion_cast %159 : i64 to index
    %161 = llvm.icmp "slt" %159, %2 : i64
    llvm.cond_br %161, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%7 : i64)
  ^bb27(%162: i64):  // 2 preds: ^bb26, ^bb28
    %163 = builtin.unrealized_conversion_cast %162 : i64 to index
    %164 = llvm.icmp "slt" %162, %4 : i64
    llvm.cond_br %164, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %165 = llvm.extractvalue %158[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %166 = llvm.mlir.constant(32 : index) : i64
    %167 = llvm.mul %159, %166 : i64
    %168 = llvm.add %167, %162 : i64
    %169 = llvm.getelementptr %165[%168] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %169 : f64, !llvm.ptr
    %170 = llvm.add %162, %0 : i64
    llvm.br ^bb27(%170 : i64)
  ^bb29:  // pred: ^bb27
    %171 = llvm.add %159, %0 : i64
    llvm.br ^bb25(%171 : i64)
  ^bb30:  // pred: ^bb25
    %172 = llvm.mlir.constant(16 : index) : i64
    %173 = llvm.mlir.constant(32 : index) : i64
    %174 = llvm.mlir.constant(32 : index) : i64
    %175 = llvm.mlir.constant(16 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.mlir.constant(512 : index) : i64
    %178 = llvm.mlir.constant(16384 : index) : i64
    %179 = llvm.mlir.constant(262144 : index) : i64
    %180 = llvm.mlir.zero : !llvm.ptr
    %181 = llvm.getelementptr %180[%179] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %182 = llvm.ptrtoint %181 : !llvm.ptr to i64
    %183 = llvm.mlir.constant(64 : index) : i64
    %184 = llvm.add %182, %183 : i64
    %185 = llvm.call @malloc(%184) : (i64) -> !llvm.ptr
    %186 = llvm.ptrtoint %185 : !llvm.ptr to i64
    %187 = llvm.mlir.constant(1 : index) : i64
    %188 = llvm.sub %183, %187 : i64
    %189 = llvm.add %186, %188 : i64
    %190 = llvm.urem %189, %183  : i64
    %191 = llvm.sub %189, %190 : i64
    %192 = llvm.inttoptr %191 : i64 to !llvm.ptr
    %193 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %194 = llvm.insertvalue %185, %193[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.insertvalue %192, %194[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.mlir.constant(0 : index) : i64
    %197 = llvm.insertvalue %196, %195[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.insertvalue %172, %197[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.insertvalue %173, %198[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.insertvalue %174, %199[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.insertvalue %175, %200[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.insertvalue %178, %201[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.insertvalue %177, %202[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.insertvalue %175, %203[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.insertvalue %176, %204[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb31(%7 : i64)
  ^bb31(%206: i64):  // 2 preds: ^bb30, ^bb41
    %207 = builtin.unrealized_conversion_cast %206 : i64 to index
    %208 = llvm.icmp "slt" %206, %2 : i64
    llvm.cond_br %208, ^bb32, ^bb42
  ^bb32:  // pred: ^bb31
    llvm.br ^bb33(%7 : i64)
  ^bb33(%209: i64):  // 2 preds: ^bb32, ^bb40
    %210 = builtin.unrealized_conversion_cast %209 : i64 to index
    %211 = llvm.icmp "slt" %209, %4 : i64
    llvm.cond_br %211, ^bb34, ^bb41
  ^bb34:  // pred: ^bb33
    llvm.br ^bb35(%7 : i64)
  ^bb35(%212: i64):  // 2 preds: ^bb34, ^bb39
    %213 = builtin.unrealized_conversion_cast %212 : i64 to index
    %214 = llvm.icmp "slt" %212, %4 : i64
    llvm.cond_br %214, ^bb36, ^bb40
  ^bb36:  // pred: ^bb35
    llvm.br ^bb37(%7 : i64)
  ^bb37(%215: i64):  // 2 preds: ^bb36, ^bb38
    %216 = builtin.unrealized_conversion_cast %215 : i64 to index
    %217 = llvm.icmp "slt" %215, %2 : i64
    llvm.cond_br %217, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %218 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.mlir.constant(16384 : index) : i64
    %220 = llvm.mul %206, %219 : i64
    %221 = llvm.mlir.constant(1024 : index) : i64
    %222 = llvm.mul %215, %221 : i64
    %223 = llvm.add %220, %222 : i64
    %224 = llvm.mlir.constant(32 : index) : i64
    %225 = llvm.mul %209, %224 : i64
    %226 = llvm.add %223, %225 : i64
    %227 = llvm.add %226, %212 : i64
    %228 = llvm.getelementptr %218[%227] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %229 = llvm.load %228 : !llvm.ptr -> f64
    %230 = llvm.extractvalue %205[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.mlir.constant(16384 : index) : i64
    %232 = llvm.mul %206, %231 : i64
    %233 = llvm.mlir.constant(512 : index) : i64
    %234 = llvm.mul %209, %233 : i64
    %235 = llvm.add %232, %234 : i64
    %236 = llvm.mlir.constant(16 : index) : i64
    %237 = llvm.mul %212, %236 : i64
    %238 = llvm.add %235, %237 : i64
    %239 = llvm.add %238, %215 : i64
    %240 = llvm.getelementptr %230[%239] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %229, %240 : f64, !llvm.ptr
    %241 = llvm.add %215, %0 : i64
    llvm.br ^bb37(%241 : i64)
  ^bb39:  // pred: ^bb37
    %242 = llvm.add %212, %0 : i64
    llvm.br ^bb35(%242 : i64)
  ^bb40:  // pred: ^bb35
    %243 = llvm.add %209, %0 : i64
    llvm.br ^bb33(%243 : i64)
  ^bb41:  // pred: ^bb33
    %244 = llvm.add %206, %0 : i64
    llvm.br ^bb31(%244 : i64)
  ^bb42:  // pred: ^bb31
    llvm.br ^bb43(%7 : i64)
  ^bb43(%245: i64):  // 2 preds: ^bb42, ^bb44
    %246 = llvm.icmp "slt" %245, %6 : i64
    llvm.cond_br %246, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %247 = llvm.sub %6, %245 : i64
    %248 = llvm.intr.smin(%247, %5)  : (i64, i64) -> i64
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0, %arg1, %arg2) : i64 = (%7, %7, %7) to (%4, %2, %248) step (%3, %1, %5) {
          %258 = builtin.unrealized_conversion_cast %arg2 : i64 to index
          %259 = builtin.unrealized_conversion_cast %arg1 : i64 to index
          %260 = builtin.unrealized_conversion_cast %arg0 : i64 to index
          %261 = builtin.unrealized_conversion_cast %258 : index to i64
          %262 = builtin.unrealized_conversion_cast %259 : index to i64
          %263 = builtin.unrealized_conversion_cast %260 : index to i64
          %264 = llvm.sub %4, %263 : i64
          %265 = llvm.intr.smin(%264, %3)  : (i64, i64) -> i64
          %266 = builtin.unrealized_conversion_cast %265 : i64 to index
          %267 = llvm.sub %2, %262 : i64
          %268 = llvm.intr.smin(%267, %1)  : (i64, i64) -> i64
          %269 = builtin.unrealized_conversion_cast %268 : i64 to index
          %270 = llvm.sub %248, %261 : i64
          %271 = llvm.intr.smin(%270, %5)  : (i64, i64) -> i64
          %272 = builtin.unrealized_conversion_cast %271 : i64 to index
          %273 = llvm.add %245, %261 : i64
          %274 = llvm.mlir.constant(16384 : index) : i64
          %275 = llvm.mul %262, %274 : i64
          %276 = llvm.add %275, %273 : i64
          %277 = builtin.unrealized_conversion_cast %276 : i64 to index
          %278 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %279 = llvm.extractvalue %205[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
          %280 = llvm.extractvalue %205[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
          %281 = llvm.insertvalue %279, %278[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %282 = llvm.insertvalue %280, %281[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %283 = llvm.insertvalue %276, %282[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %284 = llvm.insertvalue %268, %283[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %285 = llvm.mlir.constant(16384 : index) : i64
          %286 = llvm.insertvalue %285, %284[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %287 = llvm.insertvalue %271, %286[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %288 = llvm.mlir.constant(1 : index) : i64
          %289 = llvm.insertvalue %288, %287[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %290 = llvm.mlir.constant(32 : index) : i64
          %291 = llvm.mul %273, %290 : i64
          %292 = llvm.add %291, %263 : i64
          %293 = builtin.unrealized_conversion_cast %292 : i64 to index
          %294 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %295 = llvm.extractvalue %105[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
          %296 = llvm.extractvalue %105[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
          %297 = llvm.insertvalue %295, %294[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %298 = llvm.insertvalue %296, %297[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %299 = llvm.insertvalue %292, %298[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %300 = llvm.insertvalue %271, %299[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %301 = llvm.mlir.constant(32 : index) : i64
          %302 = llvm.insertvalue %301, %300[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %303 = llvm.insertvalue %265, %302[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %304 = llvm.mlir.constant(1 : index) : i64
          %305 = llvm.insertvalue %304, %303[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %306 = llvm.mlir.constant(32 : index) : i64
          %307 = llvm.mul %262, %306 : i64
          %308 = llvm.add %307, %263 : i64
          %309 = builtin.unrealized_conversion_cast %308 : i64 to index
          %310 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %311 = llvm.extractvalue %158[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %312 = llvm.extractvalue %158[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %313 = llvm.insertvalue %311, %310[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %314 = llvm.insertvalue %312, %313[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %315 = llvm.insertvalue %308, %314[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %316 = llvm.insertvalue %268, %315[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %317 = llvm.mlir.constant(32 : index) : i64
          %318 = llvm.insertvalue %317, %316[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %319 = llvm.insertvalue %265, %318[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %320 = llvm.mlir.constant(1 : index) : i64
          %321 = llvm.insertvalue %320, %319[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          llvm.br ^bb1(%7 : i64)
        ^bb1(%322: i64):  // 2 preds: ^bb0, ^bb8
          %323 = builtin.unrealized_conversion_cast %322 : i64 to index
          %324 = builtin.unrealized_conversion_cast %323 : index to i64
          %325 = builtin.unrealized_conversion_cast %323 : index to i64
          %326 = llvm.icmp "slt" %324, %268 : i64
          llvm.cond_br %326, ^bb2, ^bb9
        ^bb2:  // pred: ^bb1
          llvm.br ^bb3(%7 : i64)
        ^bb3(%327: i64):  // 2 preds: ^bb2, ^bb7
          %328 = builtin.unrealized_conversion_cast %327 : i64 to index
          %329 = builtin.unrealized_conversion_cast %328 : index to i64
          %330 = builtin.unrealized_conversion_cast %328 : index to i64
          %331 = llvm.icmp "slt" %329, %265 : i64
          llvm.cond_br %331, ^bb4, ^bb8
        ^bb4:  // pred: ^bb3
          llvm.br ^bb5(%7 : i64)
        ^bb5(%332: i64):  // 2 preds: ^bb4, ^bb6
          %333 = builtin.unrealized_conversion_cast %332 : i64 to index
          %334 = builtin.unrealized_conversion_cast %333 : index to i64
          %335 = builtin.unrealized_conversion_cast %333 : index to i64
          %336 = llvm.icmp "slt" %334, %271 : i64
          llvm.cond_br %336, ^bb6, ^bb7
        ^bb6:  // pred: ^bb5
          %337 = llvm.extractvalue %289[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %338 = llvm.extractvalue %289[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %339 = llvm.getelementptr %337[%338] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %340 = llvm.mlir.constant(16384 : index) : i64
          %341 = llvm.mul %325, %340 : i64
          %342 = llvm.add %341, %335 : i64
          %343 = llvm.getelementptr %339[%342] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %344 = llvm.load %343 : !llvm.ptr -> f64
          %345 = llvm.extractvalue %305[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %346 = llvm.extractvalue %305[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %347 = llvm.getelementptr %345[%346] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %348 = llvm.mlir.constant(32 : index) : i64
          %349 = llvm.mul %335, %348 : i64
          %350 = llvm.add %349, %330 : i64
          %351 = llvm.getelementptr %347[%350] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %352 = llvm.load %351 : !llvm.ptr -> f64
          %353 = llvm.extractvalue %321[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %354 = llvm.extractvalue %321[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %355 = llvm.getelementptr %353[%354] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %356 = llvm.mlir.constant(32 : index) : i64
          %357 = llvm.mul %325, %356 : i64
          %358 = llvm.add %357, %330 : i64
          %359 = llvm.getelementptr %355[%358] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %360 = llvm.load %359 : !llvm.ptr -> f64
          %361 = llvm.fmul %344, %352  : f64
          %362 = llvm.fadd %360, %361  : f64
          %363 = llvm.extractvalue %321[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %364 = llvm.extractvalue %321[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %365 = llvm.getelementptr %363[%364] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %366 = llvm.mlir.constant(32 : index) : i64
          %367 = llvm.mul %325, %366 : i64
          %368 = llvm.add %367, %330 : i64
          %369 = llvm.getelementptr %365[%368] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %362, %369 : f64, !llvm.ptr
          %370 = llvm.add %334, %0 : i64
          llvm.br ^bb5(%370 : i64)
        ^bb7:  // pred: ^bb5
          %371 = llvm.add %329, %0 : i64
          llvm.br ^bb3(%371 : i64)
        ^bb8:  // pred: ^bb3
          %372 = llvm.add %324, %0 : i64
          llvm.br ^bb1(%372 : i64)
        ^bb9:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %249 = llvm.add %245, %5 : i64
    llvm.br ^bb43(%249 : i64)
  ^bb45:  // pred: ^bb43
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.alloca %250 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %158, %251 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %252 = llvm.mlir.constant(2 : index) : i64
    %253 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %254 = llvm.insertvalue %252, %253[0] : !llvm.struct<(i64, ptr)> 
    %255 = llvm.insertvalue %251, %254[1] : !llvm.struct<(i64, ptr)> 
    %256 = llvm.extractvalue %255[0] : !llvm.struct<(i64, ptr)> 
    %257 = llvm.extractvalue %255[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%256, %257) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


// -----// IR Dump After ReconcileUnrealizedCasts (reconcile-unrealized-casts) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(1 : index) : i64
    %1 = llvm.mlir.constant(8 : index) : i64
    %2 = llvm.mlir.constant(16 : index) : i64
    %3 = llvm.mlir.constant(6 : index) : i64
    %4 = llvm.mlir.constant(32 : index) : i64
    %5 = llvm.mlir.constant(3072 : index) : i64
    %6 = llvm.mlir.constant(16384 : index) : i64
    %7 = llvm.mlir.constant(0 : index) : i64
    %8 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %9 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %10 = llvm.mlir.constant(2.300000e+00 : f64) : f64
    %11 = llvm.mlir.constant(16 : index) : i64
    %12 = llvm.mlir.constant(16 : index) : i64
    %13 = llvm.mlir.constant(32 : index) : i64
    %14 = llvm.mlir.constant(32 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(1024 : index) : i64
    %17 = llvm.mlir.constant(16384 : index) : i64
    %18 = llvm.mlir.constant(262144 : index) : i64
    %19 = llvm.mlir.zero : !llvm.ptr
    %20 = llvm.getelementptr %19[%18] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %21 = llvm.ptrtoint %20 : !llvm.ptr to i64
    %22 = llvm.mlir.constant(32 : index) : i64
    %23 = llvm.add %21, %22 : i64
    %24 = llvm.call @malloc(%23) : (i64) -> !llvm.ptr
    %25 = llvm.ptrtoint %24 : !llvm.ptr to i64
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.sub %22, %26 : i64
    %28 = llvm.add %25, %27 : i64
    %29 = llvm.urem %28, %22  : i64
    %30 = llvm.sub %28, %29 : i64
    %31 = llvm.inttoptr %30 : i64 to !llvm.ptr
    %32 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %33 = llvm.insertvalue %24, %32[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.insertvalue %31, %33[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.mlir.constant(0 : index) : i64
    %36 = llvm.insertvalue %35, %34[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.insertvalue %11, %36[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %12, %37[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %13, %38[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %14, %39[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %17, %40[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %16, %41[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %14, %42[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %15, %43[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb1(%7 : i64)
  ^bb1(%45: i64):  // 2 preds: ^bb0, ^bb11
    %46 = llvm.icmp "slt" %45, %2 : i64
    llvm.cond_br %46, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%7 : i64)
  ^bb3(%47: i64):  // 2 preds: ^bb2, ^bb10
    %48 = llvm.icmp "slt" %47, %2 : i64
    llvm.cond_br %48, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    llvm.br ^bb5(%7 : i64)
  ^bb5(%49: i64):  // 2 preds: ^bb4, ^bb9
    %50 = llvm.icmp "slt" %49, %4 : i64
    llvm.cond_br %50, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    llvm.br ^bb7(%7 : i64)
  ^bb7(%51: i64):  // 2 preds: ^bb6, ^bb8
    %52 = llvm.icmp "slt" %51, %4 : i64
    llvm.cond_br %52, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %53 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.mlir.constant(16384 : index) : i64
    %55 = llvm.mul %45, %54 : i64
    %56 = llvm.mlir.constant(1024 : index) : i64
    %57 = llvm.mul %47, %56 : i64
    %58 = llvm.add %55, %57 : i64
    %59 = llvm.mlir.constant(32 : index) : i64
    %60 = llvm.mul %49, %59 : i64
    %61 = llvm.add %58, %60 : i64
    %62 = llvm.add %61, %51 : i64
    %63 = llvm.getelementptr %53[%62] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %10, %63 : f64, !llvm.ptr
    %64 = llvm.add %51, %0 : i64
    llvm.br ^bb7(%64 : i64)
  ^bb9:  // pred: ^bb7
    %65 = llvm.add %49, %0 : i64
    llvm.br ^bb5(%65 : i64)
  ^bb10:  // pred: ^bb5
    %66 = llvm.add %47, %0 : i64
    llvm.br ^bb3(%66 : i64)
  ^bb11:  // pred: ^bb3
    %67 = llvm.add %45, %0 : i64
    llvm.br ^bb1(%67 : i64)
  ^bb12:  // pred: ^bb1
    %68 = llvm.mlir.constant(32 : index) : i64
    %69 = llvm.mlir.constant(32 : index) : i64
    %70 = llvm.mlir.constant(16 : index) : i64
    %71 = llvm.mlir.constant(32 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.mlir.constant(512 : index) : i64
    %74 = llvm.mlir.constant(16384 : index) : i64
    %75 = llvm.mlir.constant(524288 : index) : i64
    %76 = llvm.mlir.zero : !llvm.ptr
    %77 = llvm.getelementptr %76[%75] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %78 = llvm.ptrtoint %77 : !llvm.ptr to i64
    %79 = llvm.mlir.constant(32 : index) : i64
    %80 = llvm.add %78, %79 : i64
    %81 = llvm.call @malloc(%80) : (i64) -> !llvm.ptr
    %82 = llvm.ptrtoint %81 : !llvm.ptr to i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.sub %79, %83 : i64
    %85 = llvm.add %82, %84 : i64
    %86 = llvm.urem %85, %79  : i64
    %87 = llvm.sub %85, %86 : i64
    %88 = llvm.inttoptr %87 : i64 to !llvm.ptr
    %89 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %90 = llvm.insertvalue %81, %89[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.insertvalue %88, %90[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.mlir.constant(0 : index) : i64
    %93 = llvm.insertvalue %92, %91[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.insertvalue %68, %93[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.insertvalue %69, %94[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.insertvalue %70, %95[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.insertvalue %71, %96[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.insertvalue %74, %97[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.insertvalue %73, %98[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %71, %99[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.insertvalue %72, %100[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb13(%7 : i64)
  ^bb13(%102: i64):  // 2 preds: ^bb12, ^bb23
    %103 = llvm.icmp "slt" %102, %4 : i64
    llvm.cond_br %103, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%7 : i64)
  ^bb15(%104: i64):  // 2 preds: ^bb14, ^bb22
    %105 = llvm.icmp "slt" %104, %4 : i64
    llvm.cond_br %105, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    llvm.br ^bb17(%7 : i64)
  ^bb17(%106: i64):  // 2 preds: ^bb16, ^bb21
    %107 = llvm.icmp "slt" %106, %2 : i64
    llvm.cond_br %107, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    llvm.br ^bb19(%7 : i64)
  ^bb19(%108: i64):  // 2 preds: ^bb18, ^bb20
    %109 = llvm.icmp "slt" %108, %4 : i64
    llvm.cond_br %109, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %110 = llvm.extractvalue %101[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.mlir.constant(16384 : index) : i64
    %112 = llvm.mul %102, %111 : i64
    %113 = llvm.mlir.constant(512 : index) : i64
    %114 = llvm.mul %104, %113 : i64
    %115 = llvm.add %112, %114 : i64
    %116 = llvm.mlir.constant(32 : index) : i64
    %117 = llvm.mul %106, %116 : i64
    %118 = llvm.add %115, %117 : i64
    %119 = llvm.add %118, %108 : i64
    %120 = llvm.getelementptr %110[%119] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %9, %120 : f64, !llvm.ptr
    %121 = llvm.add %108, %0 : i64
    llvm.br ^bb19(%121 : i64)
  ^bb21:  // pred: ^bb19
    %122 = llvm.add %106, %0 : i64
    llvm.br ^bb17(%122 : i64)
  ^bb22:  // pred: ^bb17
    %123 = llvm.add %104, %0 : i64
    llvm.br ^bb15(%123 : i64)
  ^bb23:  // pred: ^bb15
    %124 = llvm.add %102, %0 : i64
    llvm.br ^bb13(%124 : i64)
  ^bb24:  // pred: ^bb13
    %125 = llvm.mlir.constant(16 : index) : i64
    %126 = llvm.mlir.constant(32 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.constant(512 : index) : i64
    %129 = llvm.mlir.zero : !llvm.ptr
    %130 = llvm.getelementptr %129[%128] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %131 = llvm.ptrtoint %130 : !llvm.ptr to i64
    %132 = llvm.mlir.constant(32 : index) : i64
    %133 = llvm.add %131, %132 : i64
    %134 = llvm.call @malloc(%133) : (i64) -> !llvm.ptr
    %135 = llvm.ptrtoint %134 : !llvm.ptr to i64
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.sub %132, %136 : i64
    %138 = llvm.add %135, %137 : i64
    %139 = llvm.urem %138, %132  : i64
    %140 = llvm.sub %138, %139 : i64
    %141 = llvm.inttoptr %140 : i64 to !llvm.ptr
    %142 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %143 = llvm.insertvalue %134, %142[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %144 = llvm.insertvalue %141, %143[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %145 = llvm.mlir.constant(0 : index) : i64
    %146 = llvm.insertvalue %145, %144[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %147 = llvm.insertvalue %125, %146[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %148 = llvm.insertvalue %126, %147[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %149 = llvm.insertvalue %126, %148[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %150 = llvm.insertvalue %127, %149[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb25(%7 : i64)
  ^bb25(%151: i64):  // 2 preds: ^bb24, ^bb29
    %152 = llvm.icmp "slt" %151, %2 : i64
    llvm.cond_br %152, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%7 : i64)
  ^bb27(%153: i64):  // 2 preds: ^bb26, ^bb28
    %154 = llvm.icmp "slt" %153, %4 : i64
    llvm.cond_br %154, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %155 = llvm.extractvalue %150[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %156 = llvm.mlir.constant(32 : index) : i64
    %157 = llvm.mul %151, %156 : i64
    %158 = llvm.add %157, %153 : i64
    %159 = llvm.getelementptr %155[%158] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %159 : f64, !llvm.ptr
    %160 = llvm.add %153, %0 : i64
    llvm.br ^bb27(%160 : i64)
  ^bb29:  // pred: ^bb27
    %161 = llvm.add %151, %0 : i64
    llvm.br ^bb25(%161 : i64)
  ^bb30:  // pred: ^bb25
    %162 = llvm.mlir.constant(16 : index) : i64
    %163 = llvm.mlir.constant(32 : index) : i64
    %164 = llvm.mlir.constant(32 : index) : i64
    %165 = llvm.mlir.constant(16 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.mlir.constant(512 : index) : i64
    %168 = llvm.mlir.constant(16384 : index) : i64
    %169 = llvm.mlir.constant(262144 : index) : i64
    %170 = llvm.mlir.zero : !llvm.ptr
    %171 = llvm.getelementptr %170[%169] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %172 = llvm.ptrtoint %171 : !llvm.ptr to i64
    %173 = llvm.mlir.constant(64 : index) : i64
    %174 = llvm.add %172, %173 : i64
    %175 = llvm.call @malloc(%174) : (i64) -> !llvm.ptr
    %176 = llvm.ptrtoint %175 : !llvm.ptr to i64
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.sub %173, %177 : i64
    %179 = llvm.add %176, %178 : i64
    %180 = llvm.urem %179, %173  : i64
    %181 = llvm.sub %179, %180 : i64
    %182 = llvm.inttoptr %181 : i64 to !llvm.ptr
    %183 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %184 = llvm.insertvalue %175, %183[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.insertvalue %182, %184[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.mlir.constant(0 : index) : i64
    %187 = llvm.insertvalue %186, %185[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.insertvalue %162, %187[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.insertvalue %163, %188[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.insertvalue %164, %189[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.insertvalue %165, %190[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.insertvalue %168, %191[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.insertvalue %167, %192[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.insertvalue %165, %193[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.insertvalue %166, %194[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb31(%7 : i64)
  ^bb31(%196: i64):  // 2 preds: ^bb30, ^bb41
    %197 = llvm.icmp "slt" %196, %2 : i64
    llvm.cond_br %197, ^bb32, ^bb42
  ^bb32:  // pred: ^bb31
    llvm.br ^bb33(%7 : i64)
  ^bb33(%198: i64):  // 2 preds: ^bb32, ^bb40
    %199 = llvm.icmp "slt" %198, %4 : i64
    llvm.cond_br %199, ^bb34, ^bb41
  ^bb34:  // pred: ^bb33
    llvm.br ^bb35(%7 : i64)
  ^bb35(%200: i64):  // 2 preds: ^bb34, ^bb39
    %201 = llvm.icmp "slt" %200, %4 : i64
    llvm.cond_br %201, ^bb36, ^bb40
  ^bb36:  // pred: ^bb35
    llvm.br ^bb37(%7 : i64)
  ^bb37(%202: i64):  // 2 preds: ^bb36, ^bb38
    %203 = llvm.icmp "slt" %202, %2 : i64
    llvm.cond_br %203, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %204 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.mlir.constant(16384 : index) : i64
    %206 = llvm.mul %196, %205 : i64
    %207 = llvm.mlir.constant(1024 : index) : i64
    %208 = llvm.mul %202, %207 : i64
    %209 = llvm.add %206, %208 : i64
    %210 = llvm.mlir.constant(32 : index) : i64
    %211 = llvm.mul %198, %210 : i64
    %212 = llvm.add %209, %211 : i64
    %213 = llvm.add %212, %200 : i64
    %214 = llvm.getelementptr %204[%213] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %215 = llvm.load %214 : !llvm.ptr -> f64
    %216 = llvm.extractvalue %195[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.mlir.constant(16384 : index) : i64
    %218 = llvm.mul %196, %217 : i64
    %219 = llvm.mlir.constant(512 : index) : i64
    %220 = llvm.mul %198, %219 : i64
    %221 = llvm.add %218, %220 : i64
    %222 = llvm.mlir.constant(16 : index) : i64
    %223 = llvm.mul %200, %222 : i64
    %224 = llvm.add %221, %223 : i64
    %225 = llvm.add %224, %202 : i64
    %226 = llvm.getelementptr %216[%225] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %215, %226 : f64, !llvm.ptr
    %227 = llvm.add %202, %0 : i64
    llvm.br ^bb37(%227 : i64)
  ^bb39:  // pred: ^bb37
    %228 = llvm.add %200, %0 : i64
    llvm.br ^bb35(%228 : i64)
  ^bb40:  // pred: ^bb35
    %229 = llvm.add %198, %0 : i64
    llvm.br ^bb33(%229 : i64)
  ^bb41:  // pred: ^bb33
    %230 = llvm.add %196, %0 : i64
    llvm.br ^bb31(%230 : i64)
  ^bb42:  // pred: ^bb31
    llvm.br ^bb43(%7 : i64)
  ^bb43(%231: i64):  // 2 preds: ^bb42, ^bb44
    %232 = llvm.icmp "slt" %231, %6 : i64
    llvm.cond_br %232, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %233 = llvm.sub %6, %231 : i64
    %234 = llvm.intr.smin(%233, %5)  : (i64, i64) -> i64
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0, %arg1, %arg2) : i64 = (%7, %7, %7) to (%4, %2, %234) step (%3, %1, %5) {
          %244 = llvm.sub %4, %arg0 : i64
          %245 = llvm.intr.smin(%244, %3)  : (i64, i64) -> i64
          %246 = llvm.sub %2, %arg1 : i64
          %247 = llvm.intr.smin(%246, %1)  : (i64, i64) -> i64
          %248 = llvm.sub %234, %arg2 : i64
          %249 = llvm.intr.smin(%248, %5)  : (i64, i64) -> i64
          %250 = llvm.add %231, %arg2 : i64
          %251 = llvm.mlir.constant(16384 : index) : i64
          %252 = llvm.mul %arg1, %251 : i64
          %253 = llvm.add %252, %250 : i64
          %254 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %255 = llvm.extractvalue %195[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
          %256 = llvm.extractvalue %195[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
          %257 = llvm.insertvalue %255, %254[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %258 = llvm.insertvalue %256, %257[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %259 = llvm.insertvalue %253, %258[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %260 = llvm.insertvalue %247, %259[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %261 = llvm.mlir.constant(16384 : index) : i64
          %262 = llvm.insertvalue %261, %260[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %263 = llvm.insertvalue %249, %262[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %264 = llvm.mlir.constant(1 : index) : i64
          %265 = llvm.insertvalue %264, %263[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %266 = llvm.mlir.constant(32 : index) : i64
          %267 = llvm.mul %250, %266 : i64
          %268 = llvm.add %267, %arg0 : i64
          %269 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %270 = llvm.extractvalue %101[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
          %271 = llvm.extractvalue %101[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
          %272 = llvm.insertvalue %270, %269[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %273 = llvm.insertvalue %271, %272[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %274 = llvm.insertvalue %268, %273[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %275 = llvm.insertvalue %249, %274[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %276 = llvm.mlir.constant(32 : index) : i64
          %277 = llvm.insertvalue %276, %275[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %278 = llvm.insertvalue %245, %277[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %279 = llvm.mlir.constant(1 : index) : i64
          %280 = llvm.insertvalue %279, %278[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %281 = llvm.mlir.constant(32 : index) : i64
          %282 = llvm.mul %arg1, %281 : i64
          %283 = llvm.add %282, %arg0 : i64
          %284 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %285 = llvm.extractvalue %150[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %286 = llvm.extractvalue %150[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %287 = llvm.insertvalue %285, %284[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %288 = llvm.insertvalue %286, %287[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %289 = llvm.insertvalue %283, %288[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %290 = llvm.insertvalue %247, %289[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %291 = llvm.mlir.constant(32 : index) : i64
          %292 = llvm.insertvalue %291, %290[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %293 = llvm.insertvalue %245, %292[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %294 = llvm.mlir.constant(1 : index) : i64
          %295 = llvm.insertvalue %294, %293[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          llvm.br ^bb1(%7 : i64)
        ^bb1(%296: i64):  // 2 preds: ^bb0, ^bb8
          %297 = llvm.icmp "slt" %296, %247 : i64
          llvm.cond_br %297, ^bb2, ^bb9
        ^bb2:  // pred: ^bb1
          llvm.br ^bb3(%7 : i64)
        ^bb3(%298: i64):  // 2 preds: ^bb2, ^bb7
          %299 = llvm.icmp "slt" %298, %245 : i64
          llvm.cond_br %299, ^bb4, ^bb8
        ^bb4:  // pred: ^bb3
          llvm.br ^bb5(%7 : i64)
        ^bb5(%300: i64):  // 2 preds: ^bb4, ^bb6
          %301 = llvm.icmp "slt" %300, %249 : i64
          llvm.cond_br %301, ^bb6, ^bb7
        ^bb6:  // pred: ^bb5
          %302 = llvm.extractvalue %265[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %303 = llvm.extractvalue %265[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %304 = llvm.getelementptr %302[%303] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %305 = llvm.mlir.constant(16384 : index) : i64
          %306 = llvm.mul %296, %305 : i64
          %307 = llvm.add %306, %300 : i64
          %308 = llvm.getelementptr %304[%307] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %309 = llvm.load %308 : !llvm.ptr -> f64
          %310 = llvm.extractvalue %280[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %311 = llvm.extractvalue %280[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %312 = llvm.getelementptr %310[%311] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %313 = llvm.mlir.constant(32 : index) : i64
          %314 = llvm.mul %300, %313 : i64
          %315 = llvm.add %314, %298 : i64
          %316 = llvm.getelementptr %312[%315] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %317 = llvm.load %316 : !llvm.ptr -> f64
          %318 = llvm.extractvalue %295[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %319 = llvm.extractvalue %295[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %320 = llvm.getelementptr %318[%319] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %321 = llvm.mlir.constant(32 : index) : i64
          %322 = llvm.mul %296, %321 : i64
          %323 = llvm.add %322, %298 : i64
          %324 = llvm.getelementptr %320[%323] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %325 = llvm.load %324 : !llvm.ptr -> f64
          %326 = llvm.fmul %309, %317  : f64
          %327 = llvm.fadd %325, %326  : f64
          %328 = llvm.extractvalue %295[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %329 = llvm.extractvalue %295[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %330 = llvm.getelementptr %328[%329] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %331 = llvm.mlir.constant(32 : index) : i64
          %332 = llvm.mul %296, %331 : i64
          %333 = llvm.add %332, %298 : i64
          %334 = llvm.getelementptr %330[%333] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %327, %334 : f64, !llvm.ptr
          %335 = llvm.add %300, %0 : i64
          llvm.br ^bb5(%335 : i64)
        ^bb7:  // pred: ^bb5
          %336 = llvm.add %298, %0 : i64
          llvm.br ^bb3(%336 : i64)
        ^bb8:  // pred: ^bb3
          %337 = llvm.add %296, %0 : i64
          llvm.br ^bb1(%337 : i64)
        ^bb9:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %235 = llvm.add %231, %5 : i64
    llvm.br ^bb43(%235 : i64)
  ^bb45:  // pred: ^bb43
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.alloca %236 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %150, %237 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %238 = llvm.mlir.constant(2 : index) : i64
    %239 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %240 = llvm.insertvalue %238, %239[0] : !llvm.struct<(i64, ptr)> 
    %241 = llvm.insertvalue %237, %240[1] : !llvm.struct<(i64, ptr)> 
    %242 = llvm.extractvalue %241[0] : !llvm.struct<(i64, ptr)> 
    %243 = llvm.extractvalue %241[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%242, %243) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(1 : index) : i64
    %1 = llvm.mlir.constant(8 : index) : i64
    %2 = llvm.mlir.constant(16 : index) : i64
    %3 = llvm.mlir.constant(6 : index) : i64
    %4 = llvm.mlir.constant(32 : index) : i64
    %5 = llvm.mlir.constant(3072 : index) : i64
    %6 = llvm.mlir.constant(16384 : index) : i64
    %7 = llvm.mlir.constant(0 : index) : i64
    %8 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %9 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %10 = llvm.mlir.constant(2.300000e+00 : f64) : f64
    %11 = llvm.mlir.constant(16 : index) : i64
    %12 = llvm.mlir.constant(16 : index) : i64
    %13 = llvm.mlir.constant(32 : index) : i64
    %14 = llvm.mlir.constant(32 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(1024 : index) : i64
    %17 = llvm.mlir.constant(16384 : index) : i64
    %18 = llvm.mlir.constant(262144 : index) : i64
    %19 = llvm.mlir.zero : !llvm.ptr
    %20 = llvm.getelementptr %19[%18] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %21 = llvm.ptrtoint %20 : !llvm.ptr to i64
    %22 = llvm.mlir.constant(32 : index) : i64
    %23 = llvm.add %21, %22 : i64
    %24 = llvm.call @malloc(%23) : (i64) -> !llvm.ptr
    %25 = llvm.ptrtoint %24 : !llvm.ptr to i64
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.sub %22, %26 : i64
    %28 = llvm.add %25, %27 : i64
    %29 = llvm.urem %28, %22  : i64
    %30 = llvm.sub %28, %29 : i64
    %31 = llvm.inttoptr %30 : i64 to !llvm.ptr
    %32 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %33 = llvm.insertvalue %24, %32[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.insertvalue %31, %33[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.mlir.constant(0 : index) : i64
    %36 = llvm.insertvalue %35, %34[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.insertvalue %11, %36[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %12, %37[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %13, %38[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %14, %39[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %17, %40[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %16, %41[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %14, %42[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %15, %43[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb1(%7 : i64)
  ^bb1(%45: i64):  // 2 preds: ^bb0, ^bb11
    %46 = llvm.icmp "slt" %45, %2 : i64
    llvm.cond_br %46, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%7 : i64)
  ^bb3(%47: i64):  // 2 preds: ^bb2, ^bb10
    %48 = llvm.icmp "slt" %47, %2 : i64
    llvm.cond_br %48, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    llvm.br ^bb5(%7 : i64)
  ^bb5(%49: i64):  // 2 preds: ^bb4, ^bb9
    %50 = llvm.icmp "slt" %49, %4 : i64
    llvm.cond_br %50, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    llvm.br ^bb7(%7 : i64)
  ^bb7(%51: i64):  // 2 preds: ^bb6, ^bb8
    %52 = llvm.icmp "slt" %51, %4 : i64
    llvm.cond_br %52, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %53 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.mlir.constant(16384 : index) : i64
    %55 = llvm.mul %45, %54 : i64
    %56 = llvm.mlir.constant(1024 : index) : i64
    %57 = llvm.mul %47, %56 : i64
    %58 = llvm.add %55, %57 : i64
    %59 = llvm.mlir.constant(32 : index) : i64
    %60 = llvm.mul %49, %59 : i64
    %61 = llvm.add %58, %60 : i64
    %62 = llvm.add %61, %51 : i64
    %63 = llvm.getelementptr %53[%62] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %10, %63 : f64, !llvm.ptr
    %64 = llvm.add %51, %0 : i64
    llvm.br ^bb7(%64 : i64)
  ^bb9:  // pred: ^bb7
    %65 = llvm.add %49, %0 : i64
    llvm.br ^bb5(%65 : i64)
  ^bb10:  // pred: ^bb5
    %66 = llvm.add %47, %0 : i64
    llvm.br ^bb3(%66 : i64)
  ^bb11:  // pred: ^bb3
    %67 = llvm.add %45, %0 : i64
    llvm.br ^bb1(%67 : i64)
  ^bb12:  // pred: ^bb1
    %68 = llvm.mlir.constant(32 : index) : i64
    %69 = llvm.mlir.constant(32 : index) : i64
    %70 = llvm.mlir.constant(16 : index) : i64
    %71 = llvm.mlir.constant(32 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.mlir.constant(512 : index) : i64
    %74 = llvm.mlir.constant(16384 : index) : i64
    %75 = llvm.mlir.constant(524288 : index) : i64
    %76 = llvm.mlir.zero : !llvm.ptr
    %77 = llvm.getelementptr %76[%75] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %78 = llvm.ptrtoint %77 : !llvm.ptr to i64
    %79 = llvm.mlir.constant(32 : index) : i64
    %80 = llvm.add %78, %79 : i64
    %81 = llvm.call @malloc(%80) : (i64) -> !llvm.ptr
    %82 = llvm.ptrtoint %81 : !llvm.ptr to i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.sub %79, %83 : i64
    %85 = llvm.add %82, %84 : i64
    %86 = llvm.urem %85, %79  : i64
    %87 = llvm.sub %85, %86 : i64
    %88 = llvm.inttoptr %87 : i64 to !llvm.ptr
    %89 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %90 = llvm.insertvalue %81, %89[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.insertvalue %88, %90[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.mlir.constant(0 : index) : i64
    %93 = llvm.insertvalue %92, %91[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.insertvalue %68, %93[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.insertvalue %69, %94[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.insertvalue %70, %95[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.insertvalue %71, %96[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.insertvalue %74, %97[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.insertvalue %73, %98[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %71, %99[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.insertvalue %72, %100[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb13(%7 : i64)
  ^bb13(%102: i64):  // 2 preds: ^bb12, ^bb23
    %103 = llvm.icmp "slt" %102, %4 : i64
    llvm.cond_br %103, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%7 : i64)
  ^bb15(%104: i64):  // 2 preds: ^bb14, ^bb22
    %105 = llvm.icmp "slt" %104, %4 : i64
    llvm.cond_br %105, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    llvm.br ^bb17(%7 : i64)
  ^bb17(%106: i64):  // 2 preds: ^bb16, ^bb21
    %107 = llvm.icmp "slt" %106, %2 : i64
    llvm.cond_br %107, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    llvm.br ^bb19(%7 : i64)
  ^bb19(%108: i64):  // 2 preds: ^bb18, ^bb20
    %109 = llvm.icmp "slt" %108, %4 : i64
    llvm.cond_br %109, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %110 = llvm.extractvalue %101[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.mlir.constant(16384 : index) : i64
    %112 = llvm.mul %102, %111 : i64
    %113 = llvm.mlir.constant(512 : index) : i64
    %114 = llvm.mul %104, %113 : i64
    %115 = llvm.add %112, %114 : i64
    %116 = llvm.mlir.constant(32 : index) : i64
    %117 = llvm.mul %106, %116 : i64
    %118 = llvm.add %115, %117 : i64
    %119 = llvm.add %118, %108 : i64
    %120 = llvm.getelementptr %110[%119] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %9, %120 : f64, !llvm.ptr
    %121 = llvm.add %108, %0 : i64
    llvm.br ^bb19(%121 : i64)
  ^bb21:  // pred: ^bb19
    %122 = llvm.add %106, %0 : i64
    llvm.br ^bb17(%122 : i64)
  ^bb22:  // pred: ^bb17
    %123 = llvm.add %104, %0 : i64
    llvm.br ^bb15(%123 : i64)
  ^bb23:  // pred: ^bb15
    %124 = llvm.add %102, %0 : i64
    llvm.br ^bb13(%124 : i64)
  ^bb24:  // pred: ^bb13
    %125 = llvm.mlir.constant(16 : index) : i64
    %126 = llvm.mlir.constant(32 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.constant(512 : index) : i64
    %129 = llvm.mlir.zero : !llvm.ptr
    %130 = llvm.getelementptr %129[%128] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %131 = llvm.ptrtoint %130 : !llvm.ptr to i64
    %132 = llvm.mlir.constant(32 : index) : i64
    %133 = llvm.add %131, %132 : i64
    %134 = llvm.call @malloc(%133) : (i64) -> !llvm.ptr
    %135 = llvm.ptrtoint %134 : !llvm.ptr to i64
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.sub %132, %136 : i64
    %138 = llvm.add %135, %137 : i64
    %139 = llvm.urem %138, %132  : i64
    %140 = llvm.sub %138, %139 : i64
    %141 = llvm.inttoptr %140 : i64 to !llvm.ptr
    %142 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %143 = llvm.insertvalue %134, %142[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %144 = llvm.insertvalue %141, %143[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %145 = llvm.mlir.constant(0 : index) : i64
    %146 = llvm.insertvalue %145, %144[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %147 = llvm.insertvalue %125, %146[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %148 = llvm.insertvalue %126, %147[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %149 = llvm.insertvalue %126, %148[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %150 = llvm.insertvalue %127, %149[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb25(%7 : i64)
  ^bb25(%151: i64):  // 2 preds: ^bb24, ^bb29
    %152 = llvm.icmp "slt" %151, %2 : i64
    llvm.cond_br %152, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%7 : i64)
  ^bb27(%153: i64):  // 2 preds: ^bb26, ^bb28
    %154 = llvm.icmp "slt" %153, %4 : i64
    llvm.cond_br %154, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %155 = llvm.extractvalue %150[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %156 = llvm.mlir.constant(32 : index) : i64
    %157 = llvm.mul %151, %156 : i64
    %158 = llvm.add %157, %153 : i64
    %159 = llvm.getelementptr %155[%158] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %159 : f64, !llvm.ptr
    %160 = llvm.add %153, %0 : i64
    llvm.br ^bb27(%160 : i64)
  ^bb29:  // pred: ^bb27
    %161 = llvm.add %151, %0 : i64
    llvm.br ^bb25(%161 : i64)
  ^bb30:  // pred: ^bb25
    %162 = llvm.mlir.constant(16 : index) : i64
    %163 = llvm.mlir.constant(32 : index) : i64
    %164 = llvm.mlir.constant(32 : index) : i64
    %165 = llvm.mlir.constant(16 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.mlir.constant(512 : index) : i64
    %168 = llvm.mlir.constant(16384 : index) : i64
    %169 = llvm.mlir.constant(262144 : index) : i64
    %170 = llvm.mlir.zero : !llvm.ptr
    %171 = llvm.getelementptr %170[%169] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %172 = llvm.ptrtoint %171 : !llvm.ptr to i64
    %173 = llvm.mlir.constant(64 : index) : i64
    %174 = llvm.add %172, %173 : i64
    %175 = llvm.call @malloc(%174) : (i64) -> !llvm.ptr
    %176 = llvm.ptrtoint %175 : !llvm.ptr to i64
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.sub %173, %177 : i64
    %179 = llvm.add %176, %178 : i64
    %180 = llvm.urem %179, %173  : i64
    %181 = llvm.sub %179, %180 : i64
    %182 = llvm.inttoptr %181 : i64 to !llvm.ptr
    %183 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %184 = llvm.insertvalue %175, %183[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.insertvalue %182, %184[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.mlir.constant(0 : index) : i64
    %187 = llvm.insertvalue %186, %185[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.insertvalue %162, %187[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.insertvalue %163, %188[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.insertvalue %164, %189[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.insertvalue %165, %190[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.insertvalue %168, %191[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.insertvalue %167, %192[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.insertvalue %165, %193[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.insertvalue %166, %194[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb31(%7 : i64)
  ^bb31(%196: i64):  // 2 preds: ^bb30, ^bb41
    %197 = llvm.icmp "slt" %196, %2 : i64
    llvm.cond_br %197, ^bb32, ^bb42
  ^bb32:  // pred: ^bb31
    llvm.br ^bb33(%7 : i64)
  ^bb33(%198: i64):  // 2 preds: ^bb32, ^bb40
    %199 = llvm.icmp "slt" %198, %4 : i64
    llvm.cond_br %199, ^bb34, ^bb41
  ^bb34:  // pred: ^bb33
    llvm.br ^bb35(%7 : i64)
  ^bb35(%200: i64):  // 2 preds: ^bb34, ^bb39
    %201 = llvm.icmp "slt" %200, %4 : i64
    llvm.cond_br %201, ^bb36, ^bb40
  ^bb36:  // pred: ^bb35
    llvm.br ^bb37(%7 : i64)
  ^bb37(%202: i64):  // 2 preds: ^bb36, ^bb38
    %203 = llvm.icmp "slt" %202, %2 : i64
    llvm.cond_br %203, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %204 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.mlir.constant(16384 : index) : i64
    %206 = llvm.mul %196, %205 : i64
    %207 = llvm.mlir.constant(1024 : index) : i64
    %208 = llvm.mul %202, %207 : i64
    %209 = llvm.add %206, %208 : i64
    %210 = llvm.mlir.constant(32 : index) : i64
    %211 = llvm.mul %198, %210 : i64
    %212 = llvm.add %209, %211 : i64
    %213 = llvm.add %212, %200 : i64
    %214 = llvm.getelementptr %204[%213] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %215 = llvm.load %214 : !llvm.ptr -> f64
    %216 = llvm.extractvalue %195[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.mlir.constant(16384 : index) : i64
    %218 = llvm.mul %196, %217 : i64
    %219 = llvm.mlir.constant(512 : index) : i64
    %220 = llvm.mul %198, %219 : i64
    %221 = llvm.add %218, %220 : i64
    %222 = llvm.mlir.constant(16 : index) : i64
    %223 = llvm.mul %200, %222 : i64
    %224 = llvm.add %221, %223 : i64
    %225 = llvm.add %224, %202 : i64
    %226 = llvm.getelementptr %216[%225] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %215, %226 : f64, !llvm.ptr
    %227 = llvm.add %202, %0 : i64
    llvm.br ^bb37(%227 : i64)
  ^bb39:  // pred: ^bb37
    %228 = llvm.add %200, %0 : i64
    llvm.br ^bb35(%228 : i64)
  ^bb40:  // pred: ^bb35
    %229 = llvm.add %198, %0 : i64
    llvm.br ^bb33(%229 : i64)
  ^bb41:  // pred: ^bb33
    %230 = llvm.add %196, %0 : i64
    llvm.br ^bb31(%230 : i64)
  ^bb42:  // pred: ^bb31
    llvm.br ^bb43(%7 : i64)
  ^bb43(%231: i64):  // 2 preds: ^bb42, ^bb44
    %232 = llvm.icmp "slt" %231, %6 : i64
    llvm.cond_br %232, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %233 = llvm.sub %6, %231 : i64
    %234 = llvm.intr.smin(%233, %5)  : (i64, i64) -> i64
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0, %arg1, %arg2) : i64 = (%7, %7, %7) to (%4, %2, %234) step (%3, %1, %5) {
          %244 = llvm.sub %4, %arg0 : i64
          %245 = llvm.intr.smin(%244, %3)  : (i64, i64) -> i64
          %246 = llvm.sub %2, %arg1 : i64
          %247 = llvm.intr.smin(%246, %1)  : (i64, i64) -> i64
          %248 = llvm.sub %234, %arg2 : i64
          %249 = llvm.intr.smin(%248, %5)  : (i64, i64) -> i64
          %250 = llvm.add %231, %arg2 : i64
          %251 = llvm.mlir.constant(16384 : index) : i64
          %252 = llvm.mul %arg1, %251 : i64
          %253 = llvm.add %252, %250 : i64
          %254 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %255 = llvm.extractvalue %195[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
          %256 = llvm.extractvalue %195[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
          %257 = llvm.insertvalue %255, %254[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %258 = llvm.insertvalue %256, %257[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %259 = llvm.insertvalue %253, %258[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %260 = llvm.insertvalue %247, %259[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %261 = llvm.mlir.constant(16384 : index) : i64
          %262 = llvm.insertvalue %261, %260[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %263 = llvm.insertvalue %249, %262[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %264 = llvm.mlir.constant(1 : index) : i64
          %265 = llvm.insertvalue %264, %263[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %266 = llvm.mlir.constant(32 : index) : i64
          %267 = llvm.mul %250, %266 : i64
          %268 = llvm.add %267, %arg0 : i64
          %269 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %270 = llvm.extractvalue %101[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
          %271 = llvm.extractvalue %101[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
          %272 = llvm.insertvalue %270, %269[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %273 = llvm.insertvalue %271, %272[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %274 = llvm.insertvalue %268, %273[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %275 = llvm.insertvalue %249, %274[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %276 = llvm.mlir.constant(32 : index) : i64
          %277 = llvm.insertvalue %276, %275[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %278 = llvm.insertvalue %245, %277[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %279 = llvm.mlir.constant(1 : index) : i64
          %280 = llvm.insertvalue %279, %278[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %281 = llvm.mlir.constant(32 : index) : i64
          %282 = llvm.mul %arg1, %281 : i64
          %283 = llvm.add %282, %arg0 : i64
          %284 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %285 = llvm.extractvalue %150[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %286 = llvm.extractvalue %150[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %287 = llvm.insertvalue %285, %284[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %288 = llvm.insertvalue %286, %287[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %289 = llvm.insertvalue %283, %288[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %290 = llvm.insertvalue %247, %289[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %291 = llvm.mlir.constant(32 : index) : i64
          %292 = llvm.insertvalue %291, %290[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %293 = llvm.insertvalue %245, %292[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %294 = llvm.mlir.constant(1 : index) : i64
          %295 = llvm.insertvalue %294, %293[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          llvm.br ^bb1(%7 : i64)
        ^bb1(%296: i64):  // 2 preds: ^bb0, ^bb8
          %297 = llvm.icmp "slt" %296, %247 : i64
          llvm.cond_br %297, ^bb2, ^bb9
        ^bb2:  // pred: ^bb1
          llvm.br ^bb3(%7 : i64)
        ^bb3(%298: i64):  // 2 preds: ^bb2, ^bb7
          %299 = llvm.icmp "slt" %298, %245 : i64
          llvm.cond_br %299, ^bb4, ^bb8
        ^bb4:  // pred: ^bb3
          llvm.br ^bb5(%7 : i64)
        ^bb5(%300: i64):  // 2 preds: ^bb4, ^bb6
          %301 = llvm.icmp "slt" %300, %249 : i64
          llvm.cond_br %301, ^bb6, ^bb7
        ^bb6:  // pred: ^bb5
          %302 = llvm.extractvalue %265[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %303 = llvm.extractvalue %265[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %304 = llvm.getelementptr %302[%303] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %305 = llvm.mlir.constant(16384 : index) : i64
          %306 = llvm.mul %296, %305 : i64
          %307 = llvm.add %306, %300 : i64
          %308 = llvm.getelementptr %304[%307] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %309 = llvm.load %308 : !llvm.ptr -> f64
          %310 = llvm.extractvalue %280[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %311 = llvm.extractvalue %280[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %312 = llvm.getelementptr %310[%311] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %313 = llvm.mlir.constant(32 : index) : i64
          %314 = llvm.mul %300, %313 : i64
          %315 = llvm.add %314, %298 : i64
          %316 = llvm.getelementptr %312[%315] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %317 = llvm.load %316 : !llvm.ptr -> f64
          %318 = llvm.extractvalue %295[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %319 = llvm.extractvalue %295[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %320 = llvm.getelementptr %318[%319] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %321 = llvm.mlir.constant(32 : index) : i64
          %322 = llvm.mul %296, %321 : i64
          %323 = llvm.add %322, %298 : i64
          %324 = llvm.getelementptr %320[%323] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %325 = llvm.load %324 : !llvm.ptr -> f64
          %326 = llvm.fmul %309, %317  : f64
          %327 = llvm.fadd %325, %326  : f64
          %328 = llvm.extractvalue %295[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %329 = llvm.extractvalue %295[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %330 = llvm.getelementptr %328[%329] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %331 = llvm.mlir.constant(32 : index) : i64
          %332 = llvm.mul %296, %331 : i64
          %333 = llvm.add %332, %298 : i64
          %334 = llvm.getelementptr %330[%333] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %327, %334 : f64, !llvm.ptr
          %335 = llvm.add %300, %0 : i64
          llvm.br ^bb5(%335 : i64)
        ^bb7:  // pred: ^bb5
          %336 = llvm.add %298, %0 : i64
          llvm.br ^bb3(%336 : i64)
        ^bb8:  // pred: ^bb3
          %337 = llvm.add %296, %0 : i64
          llvm.br ^bb1(%337 : i64)
        ^bb9:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %235 = llvm.add %231, %5 : i64
    llvm.br ^bb43(%235 : i64)
  ^bb45:  // pred: ^bb43
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.alloca %236 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %150, %237 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %238 = llvm.mlir.constant(2 : index) : i64
    %239 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %240 = llvm.insertvalue %238, %239[0] : !llvm.struct<(i64, ptr)> 
    %241 = llvm.insertvalue %237, %240[1] : !llvm.struct<(i64, ptr)> 
    %242 = llvm.extractvalue %241[0] : !llvm.struct<(i64, ptr)> 
    %243 = llvm.extractvalue %241[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%242, %243) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}
