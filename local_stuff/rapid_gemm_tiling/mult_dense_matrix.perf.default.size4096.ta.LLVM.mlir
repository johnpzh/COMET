// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
#map = affine_map<(d0, d1, d2) -> (d0, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<4096x4096xf64>
    %4 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<4096x4096xf64>
    %5 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<4096x4096xf64>
    "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<4096x4096xf64>) -> ()
    "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4096x4096xf64>) -> ()
    "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<4096x4096xf64>) -> ()
    %6 = "ta.getTime"() : () -> f64
    %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<4096x4096xf64>, tensor<4096x4096xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<4096x4096xf64>
    "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<4096x4096xf64>, tensor<4096x4096xf64>) -> ()
    %8 = "ta.getTime"() : () -> f64
    %9 = "ta.reduce"(%5) : (tensor<4096x4096xf64>) -> f64
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
  %3 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<4096x4096xf64>
  %4 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<4096x4096xf64>
  %5 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<4096x4096xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<4096x4096xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4096x4096xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<4096x4096xf64>) -> ()
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<4096x4096xf64>, tensor<4096x4096xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<4096x4096xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<4096x4096xf64>, tensor<4096x4096xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<4096x4096xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<4096x4096xf64>
  %4 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<4096x4096xf64>
  %5 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<4096x4096xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<4096x4096xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4096x4096xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<4096x4096xf64>) -> ()
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<4096x4096xf64>, tensor<4096x4096xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<4096x4096xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<4096x4096xf64>, tensor<4096x4096xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<4096x4096xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<4096x4096xf64>
  %4 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<4096x4096xf64>
  %5 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<4096x4096xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<4096x4096xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4096x4096xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<4096x4096xf64>) -> ()
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<4096x4096xf64>, tensor<4096x4096xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<4096x4096xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<4096x4096xf64>, tensor<4096x4096xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<4096x4096xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  %3 = bufferization.to_tensor %alloc restrict writable : memref<4096x4096xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  %4 = bufferization.to_tensor %alloc_0 restrict writable : memref<4096x4096xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  %5 = bufferization.to_tensor %alloc_1 restrict writable : memref<4096x4096xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<4096x4096xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4096x4096xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<4096x4096xf64>) -> ()
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<4096x4096xf64>, tensor<4096x4096xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<4096x4096xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<4096x4096xf64>, tensor<4096x4096xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<4096x4096xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  %3 = bufferization.to_tensor %alloc restrict writable : memref<4096x4096xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  %4 = bufferization.to_tensor %alloc_0 restrict writable : memref<4096x4096xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  %5 = bufferization.to_tensor %alloc_1 restrict writable : memref<4096x4096xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<4096x4096xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4096x4096xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<4096x4096xf64>) -> ()
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<4096x4096xf64>, tensor<4096x4096xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<4096x4096xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<4096x4096xf64>, tensor<4096x4096xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<4096x4096xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  %3 = bufferization.to_tensor %alloc restrict writable : memref<4096x4096xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  %4 = bufferization.to_tensor %alloc_0 restrict writable : memref<4096x4096xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  %5 = bufferization.to_tensor %alloc_1 restrict writable : memref<4096x4096xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<4096x4096xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4096x4096xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<4096x4096xf64>) -> ()
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<4096x4096xf64>, tensor<4096x4096xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<4096x4096xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<4096x4096xf64>, tensor<4096x4096xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<4096x4096xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<4096x4096xf64>)
  %3 = bufferization.to_tensor %alloc restrict writable : memref<4096x4096xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  %cst_1 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_1 : f64) outs(%alloc_0 : memref<4096x4096xf64>)
  %4 = bufferization.to_tensor %alloc_0 restrict writable : memref<4096x4096xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
  %5 = bufferization.to_tensor %alloc_2 restrict writable : memref<4096x4096xf64>
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<4096x4096xf64>, tensor<4096x4096xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<4096x4096xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<4096x4096xf64>, tensor<4096x4096xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<4096x4096xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<4096x4096xf64>)
  %3 = bufferization.to_tensor %alloc restrict writable : memref<4096x4096xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  %cst_1 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_1 : f64) outs(%alloc_0 : memref<4096x4096xf64>)
  %4 = bufferization.to_tensor %alloc_0 restrict writable : memref<4096x4096xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
  %5 = bufferization.to_tensor %alloc_2 restrict writable : memref<4096x4096xf64>
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<4096x4096xf64>, tensor<4096x4096xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<4096x4096xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<4096x4096xf64>, tensor<4096x4096xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<4096x4096xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
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
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4096x4096xf64>)
  %3 = bufferization.to_tensor %alloc restrict writable : memref<4096x4096xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
  %4 = bufferization.to_tensor %alloc_2 restrict writable : memref<4096x4096xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4096x4096xf64>)
  %5 = bufferization.to_tensor %alloc_3 restrict writable : memref<4096x4096xf64>
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<4096x4096xf64>, tensor<4096x4096xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<4096x4096xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<4096x4096xf64>, tensor<4096x4096xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<4096x4096xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
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
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4096x4096xf64>)
  %3 = bufferization.to_tensor %alloc restrict writable : memref<4096x4096xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
  %4 = bufferization.to_tensor %alloc_2 restrict writable : memref<4096x4096xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4096x4096xf64>)
  %5 = bufferization.to_tensor %alloc_3 restrict writable : memref<4096x4096xf64>
  %6 = "ta.getTime"() : () -> f64
  %c0 = arith.constant 0 : index
  %dim = tensor.dim %3, %c0 : tensor<4096x4096xf64>
  %c1 = arith.constant 1 : index
  %dim_4 = tensor.dim %3, %c1 : tensor<4096x4096xf64>
  %c0_5 = arith.constant 0 : index
  %dim_6 = tensor.dim %4, %c0_5 : tensor<4096x4096xf64>
  %c1_7 = arith.constant 1 : index
  %dim_8 = tensor.dim %4, %c1_7 : tensor<4096x4096xf64>
  %c0_9 = arith.constant 0 : index
  %dim_10 = tensor.dim %5, %c0_9 : tensor<4096x4096xf64>
  %c1_11 = arith.constant 1 : index
  %dim_12 = tensor.dim %5, %c1_11 : tensor<4096x4096xf64>
  %c1_13 = arith.constant 1 : index
  %7 = arith.muli %c1_13, %dim : index
  %c1_14 = arith.constant 1 : index
  %8 = arith.muli %c1_14, %dim_8 : index
  %c1_15 = arith.constant 1 : index
  %9 = arith.muli %c1_15, %dim_4 : index
  %cst_16 = arith.constant 0.000000e+00 : f64
  %10 = arith.muli %9, %7 : index
  %11 = arith.muli %8, %9 : index
  %12 = arith.muli %7, %8 : index
  %cst_17 = arith.constant 0.000000e+00 : f64
  %13 = arith.muli %9, %7 : index
  %14 = arith.muli %8, %9 : index
  %15 = arith.muli %7, %8 : index
  %16 = arith.index_cast %13 : index to i64
  %17 = arith.sitofp %16 : i64 to f64
  %cst_18 = arith.constant 7.100000e-01 : f64
  %18 = arith.divf %17, %cst_18 : f64
  %19 = arith.addf %cst_17, %18 : f64
  %20 = arith.index_cast %14 : index to i64
  %21 = arith.sitofp %20 : i64 to f64
  %cst_19 = arith.constant 7.100000e-01 : f64
  %22 = arith.divf %21, %cst_19 : f64
  %23 = arith.addf %19, %22 : f64
  %24 = arith.index_cast %15 : index to i64
  %25 = arith.sitofp %24 : i64 to f64
  %cst_20 = arith.constant 7.100000e-01 : f64
  %26 = arith.divf %25, %cst_20 : f64
  %27 = arith.addf %23, %26 : f64
  %c0_21 = arith.constant 0 : index
  %c1_22 = arith.constant 1 : index
  %28 = arith.cmpf ult, %cst_16, %27 : f64
  %29 = arith.select %28, %c0_21, %c1_22 : index
  %30 = scf.index_switch %29 -> tensor<4096x4096xf64> 
  case 0 {
    %33 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__with_tiling__"} ins(%3, %4 : tensor<4096x4096xf64>, tensor<4096x4096xf64>) outs(%5 : tensor<4096x4096xf64>) -> tensor<4096x4096xf64>
    scf.yield %33 : tensor<4096x4096xf64>
  }
  case 1 {
    %33 = tensor.empty() : tensor<4096x4096xf64>
    %transposed = linalg.transpose ins(%3 : tensor<4096x4096xf64>) outs(%33 : tensor<4096x4096xf64>) permutation = [1, 0] 
    %34 = tensor.empty() : tensor<4096x4096xf64>
    %transposed_23 = linalg.transpose ins(%4 : tensor<4096x4096xf64>) outs(%34 : tensor<4096x4096xf64>) permutation = [1, 0] 
    %35 = tensor.empty() : tensor<4096x4096xf64>
    %cst_24 = arith.constant 0.000000e+00 : f64
    %36 = linalg.fill ins(%cst_24 : f64) outs(%35 : tensor<4096x4096xf64>) -> tensor<4096x4096xf64>
    %37 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__with_tiling__"} ins(%transposed_23, %transposed : tensor<4096x4096xf64>, tensor<4096x4096xf64>) outs(%36 : tensor<4096x4096xf64>) -> tensor<4096x4096xf64>
    %transposed_25 = linalg.transpose ins(%37 : tensor<4096x4096xf64>) outs(%5 : tensor<4096x4096xf64>) permutation = [1, 0] 
    scf.yield %transposed_25 : tensor<4096x4096xf64>
  }
  default {
    scf.yield %5 : tensor<4096x4096xf64>
  }
  %31 = "ta.getTime"() : () -> f64
  %32 = "ta.reduce"(%30) : (tensor<4096x4096xf64>) -> f64
  "ta.print"(%32) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %31) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LinAlgMatmulTilingPass () //----- //
func.func @main() {
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c8184 = arith.constant 8184 : index
  %c4096 = arith.constant 4096 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4096x4096xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4096x4096xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4096x4096xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4096x4096xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4096x4096xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = scf.index_switch %c0 -> tensor<4096x4096xf64> 
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c4096 step %c8184 iter_args(%arg1 = %2) -> (tensor<4096x4096xf64>) {
      %8 = scf.for %arg2 = %c0 to %c4096 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<4096x4096xf64>) {
        %9 = scf.for %arg4 = %c0 to %c4096 step %c256 iter_args(%arg5 = %arg3) -> (tensor<4096x4096xf64>) {
          %10 = affine.min affine_map<(d0) -> (-d0 + 4096, 8184)>(%arg0)
          %11 = affine.min affine_map<(d0) -> (-d0 + 4096, 3072)>(%arg2)
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [256, %11] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %extracted_slice_4 = tensor.extract_slice %1[%arg2, %arg0] [%11, %10] [1, 1] : tensor<4096x4096xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %arg5[%arg4, %arg0] [256, %10] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%10, 256, %11) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_5) -> (tensor<256x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%10]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%11]
            %extracted_slice_6 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [8, %14] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %extracted_slice_7 = tensor.extract_slice %extracted_slice_4[%arg8, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_8 = tensor.extract_slice %arg9[%arg7, %arg6] [8, %13] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %15 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_6, %extracted_slice_7 : tensor<8x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_8 : tensor<8x?xf64>) -> tensor<8x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %15 into %arg9[%arg7, %arg6] [8, %13] [1, 1] : tensor<8x?xf64> into tensor<256x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [256, %10] [1, 1] : tensor<256x?xf64> into tensor<4096x4096xf64>
          scf.yield %inserted_slice : tensor<4096x4096xf64>
        }
        scf.yield %9 : tensor<4096x4096xf64>
      }
      scf.yield %8 : tensor<4096x4096xf64>
    }
    scf.yield %7 : tensor<4096x4096xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<4096x4096xf64>
    %transposed = linalg.transpose ins(%0 : tensor<4096x4096xf64>) outs(%7 : tensor<4096x4096xf64>) permutation = [1, 0] 
    %8 = tensor.empty() : tensor<4096x4096xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<4096x4096xf64>) outs(%8 : tensor<4096x4096xf64>) permutation = [1, 0] 
    %9 = tensor.empty() : tensor<4096x4096xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<4096x4096xf64>) -> tensor<4096x4096xf64>
    %11 = scf.for %arg0 = %c0 to %c4096 step %c8184 iter_args(%arg1 = %10) -> (tensor<4096x4096xf64>) {
      %12 = scf.for %arg2 = %c0 to %c4096 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<4096x4096xf64>) {
        %13 = scf.for %arg4 = %c0 to %c4096 step %c256 iter_args(%arg5 = %arg3) -> (tensor<4096x4096xf64>) {
          %14 = affine.min affine_map<(d0) -> (-d0 + 4096, 8184)>(%arg0)
          %15 = affine.min affine_map<(d0) -> (-d0 + 4096, 3072)>(%arg2)
          %extracted_slice = tensor.extract_slice %transposed_4[%arg4, %arg2] [256, %15] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %extracted_slice_6 = tensor.extract_slice %transposed[%arg2, %arg0] [%15, %14] [1, 1] : tensor<4096x4096xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [256, %14] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %16 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%14, 256, %15) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_7) -> (tensor<256x?xf64>) {
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%14]
            %18 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%15]
            %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [8, %18] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %extracted_slice_9 = tensor.extract_slice %extracted_slice_6[%arg8, %arg6] [%18, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_10 = tensor.extract_slice %arg9[%arg7, %arg6] [8, %17] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %19 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_8, %extracted_slice_9 : tensor<8x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<8x?xf64>) -> tensor<8x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %19 into %arg9[%arg7, %arg6] [8, %17] [1, 1] : tensor<8x?xf64> into tensor<256x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %16 into %arg5[%arg4, %arg0] [256, %14] [1, 1] : tensor<256x?xf64> into tensor<4096x4096xf64>
          scf.yield %inserted_slice : tensor<4096x4096xf64>
        }
        scf.yield %13 : tensor<4096x4096xf64>
      }
      scf.yield %12 : tensor<4096x4096xf64>
    }
    %transposed_5 = linalg.transpose ins(%11 : tensor<4096x4096xf64>) outs(%2 : tensor<4096x4096xf64>) permutation = [1, 0] 
    scf.yield %transposed_5 : tensor<4096x4096xf64>
  }
  default {
    scf.yield %2 : tensor<4096x4096xf64>
  }
  %5 = "ta.getTime"() : () -> f64
  %6 = "ta.reduce"(%4) : (tensor<4096x4096xf64>) -> f64
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func @main() {
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c8184 = arith.constant 8184 : index
  %c4096 = arith.constant 4096 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4096x4096xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4096x4096xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4096x4096xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4096x4096xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4096x4096xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = scf.index_switch %c0 -> tensor<4096x4096xf64> 
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c4096 step %c8184 iter_args(%arg1 = %2) -> (tensor<4096x4096xf64>) {
      %8 = scf.for %arg2 = %c0 to %c4096 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<4096x4096xf64>) {
        %9 = scf.for %arg4 = %c0 to %c4096 step %c256 iter_args(%arg5 = %arg3) -> (tensor<4096x4096xf64>) {
          %10 = affine.min affine_map<(d0) -> (-d0 + 4096, 8184)>(%arg0)
          %11 = affine.min affine_map<(d0) -> (-d0 + 4096, 3072)>(%arg2)
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [256, %11] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %extracted_slice_9 = tensor.extract_slice %1[%arg2, %arg0] [%11, %10] [1, 1] : tensor<4096x4096xf64> to tensor<?x?xf64>
          %extracted_slice_10 = tensor.extract_slice %arg5[%arg4, %arg0] [256, %10] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%10, 256, %11) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_10) -> (tensor<256x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%10]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%11]
            %extracted_slice_11 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [8, %14] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %extracted_slice_12 = tensor.extract_slice %extracted_slice_9[%arg8, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_13 = tensor.extract_slice %arg9[%arg7, %arg6] [8, %13] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %15 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_11, %extracted_slice_12 : tensor<8x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_13 : tensor<8x?xf64>) -> tensor<8x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %15 into %arg9[%arg7, %arg6] [8, %13] [1, 1] : tensor<8x?xf64> into tensor<256x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [256, %10] [1, 1] : tensor<256x?xf64> into tensor<4096x4096xf64>
          scf.yield %inserted_slice : tensor<4096x4096xf64>
        }
        scf.yield %9 : tensor<4096x4096xf64>
      }
      scf.yield %8 : tensor<4096x4096xf64>
    }
    scf.yield %7 : tensor<4096x4096xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<4096x4096xf64>
    %transposed = linalg.transpose ins(%0 : tensor<4096x4096xf64>) outs(%7 : tensor<4096x4096xf64>) permutation = [1, 0] 
    %8 = tensor.empty() : tensor<4096x4096xf64>
    %transposed_9 = linalg.transpose ins(%1 : tensor<4096x4096xf64>) outs(%8 : tensor<4096x4096xf64>) permutation = [1, 0] 
    %9 = tensor.empty() : tensor<4096x4096xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<4096x4096xf64>) -> tensor<4096x4096xf64>
    %11 = scf.for %arg0 = %c0 to %c4096 step %c8184 iter_args(%arg1 = %10) -> (tensor<4096x4096xf64>) {
      %12 = scf.for %arg2 = %c0 to %c4096 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<4096x4096xf64>) {
        %13 = scf.for %arg4 = %c0 to %c4096 step %c256 iter_args(%arg5 = %arg3) -> (tensor<4096x4096xf64>) {
          %14 = affine.min affine_map<(d0) -> (-d0 + 4096, 8184)>(%arg0)
          %15 = affine.min affine_map<(d0) -> (-d0 + 4096, 3072)>(%arg2)
          %extracted_slice = tensor.extract_slice %transposed_9[%arg4, %arg2] [256, %15] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %extracted_slice_11 = tensor.extract_slice %transposed[%arg2, %arg0] [%15, %14] [1, 1] : tensor<4096x4096xf64> to tensor<?x?xf64>
          %extracted_slice_12 = tensor.extract_slice %arg5[%arg4, %arg0] [256, %14] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %16 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%14, 256, %15) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_12) -> (tensor<256x?xf64>) {
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%14]
            %18 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%15]
            %extracted_slice_13 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [8, %18] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %extracted_slice_14 = tensor.extract_slice %extracted_slice_11[%arg8, %arg6] [%18, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_15 = tensor.extract_slice %arg9[%arg7, %arg6] [8, %17] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %19 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_13, %extracted_slice_14 : tensor<8x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_15 : tensor<8x?xf64>) -> tensor<8x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %19 into %arg9[%arg7, %arg6] [8, %17] [1, 1] : tensor<8x?xf64> into tensor<256x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %16 into %arg5[%arg4, %arg0] [256, %14] [1, 1] : tensor<256x?xf64> into tensor<4096x4096xf64>
          scf.yield %inserted_slice : tensor<4096x4096xf64>
        }
        scf.yield %13 : tensor<4096x4096xf64>
      }
      scf.yield %12 : tensor<4096x4096xf64>
    }
    %transposed_10 = linalg.transpose ins(%11 : tensor<4096x4096xf64>) outs(%2 : tensor<4096x4096xf64>) permutation = [1, 0] 
    scf.yield %transposed_10 : tensor<4096x4096xf64>
  }
  default {
    scf.yield %2 : tensor<4096x4096xf64>
  }
  %5 = "ta.getTime"() : () -> f64
  %c0_4 = arith.constant 0 : index
  %alloc_5 = memref.alloc() : memref<1xf64>
  %cst_6 = arith.constant 0.000000e+00 : f64
  memref.store %cst_6, %alloc_5[%c0_4] : memref<1xf64>
  %c0_7 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c0_8 = arith.constant 0 : index
  %dim = tensor.dim %4, %c0_8 : tensor<4096x4096xf64>
  scf.for %arg0 = %c0_7 to %dim step %c1 {
    %c1_9 = arith.constant 1 : index
    %dim_10 = tensor.dim %4, %c1_9 : tensor<4096x4096xf64>
    scf.for %arg1 = %c0_7 to %dim_10 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4096x4096xf64>
      %7 = memref.load %alloc_5[%c0_4] : memref<1xf64>
      %8 = arith.addf %extracted, %7 : f64
      memref.store %8, %alloc_5[%c0_4] : memref<1xf64>
    }
  }
  %6 = memref.load %alloc_5[%c0_4] : memref<1xf64>
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c8184 = arith.constant 8184 : index
  %c4096 = arith.constant 4096 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4096x4096xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4096x4096xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4096x4096xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4096x4096xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4096x4096xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = scf.index_switch %c0 -> tensor<4096x4096xf64> 
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c4096 step %c8184 iter_args(%arg1 = %2) -> (tensor<4096x4096xf64>) {
      %8 = scf.for %arg2 = %c0 to %c4096 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<4096x4096xf64>) {
        %9 = scf.for %arg4 = %c0 to %c4096 step %c256 iter_args(%arg5 = %arg3) -> (tensor<4096x4096xf64>) {
          %10 = affine.min affine_map<(d0) -> (-d0 + 4096, 8184)>(%arg0)
          %11 = affine.min affine_map<(d0) -> (-d0 + 4096, 3072)>(%arg2)
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [256, %11] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg0] [%11, %10] [1, 1] : tensor<4096x4096xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [256, %10] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%10, 256, %11) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_6) -> (tensor<256x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%10]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%11]
            %extracted_slice_7 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [8, %14] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %extracted_slice_8 = tensor.extract_slice %extracted_slice_5[%arg8, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %arg9[%arg7, %arg6] [8, %13] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %15 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_7, %extracted_slice_8 : tensor<8x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_9 : tensor<8x?xf64>) -> tensor<8x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %15 into %arg9[%arg7, %arg6] [8, %13] [1, 1] : tensor<8x?xf64> into tensor<256x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [256, %10] [1, 1] : tensor<256x?xf64> into tensor<4096x4096xf64>
          scf.yield %inserted_slice : tensor<4096x4096xf64>
        }
        scf.yield %9 : tensor<4096x4096xf64>
      }
      scf.yield %8 : tensor<4096x4096xf64>
    }
    scf.yield %7 : tensor<4096x4096xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<4096x4096xf64>
    %transposed = linalg.transpose ins(%0 : tensor<4096x4096xf64>) outs(%7 : tensor<4096x4096xf64>) permutation = [1, 0] 
    %8 = tensor.empty() : tensor<4096x4096xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<4096x4096xf64>) outs(%8 : tensor<4096x4096xf64>) permutation = [1, 0] 
    %9 = tensor.empty() : tensor<4096x4096xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<4096x4096xf64>) -> tensor<4096x4096xf64>
    %11 = scf.for %arg0 = %c0 to %c4096 step %c8184 iter_args(%arg1 = %10) -> (tensor<4096x4096xf64>) {
      %12 = scf.for %arg2 = %c0 to %c4096 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<4096x4096xf64>) {
        %13 = scf.for %arg4 = %c0 to %c4096 step %c256 iter_args(%arg5 = %arg3) -> (tensor<4096x4096xf64>) {
          %14 = affine.min affine_map<(d0) -> (-d0 + 4096, 8184)>(%arg0)
          %15 = affine.min affine_map<(d0) -> (-d0 + 4096, 3072)>(%arg2)
          %extracted_slice = tensor.extract_slice %transposed_5[%arg4, %arg2] [256, %15] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg0] [%15, %14] [1, 1] : tensor<4096x4096xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [256, %14] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %16 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%14, 256, %15) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<256x?xf64>) {
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%14]
            %18 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%15]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [8, %18] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%18, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [8, %17] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %19 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<8x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<8x?xf64>) -> tensor<8x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %19 into %arg9[%arg7, %arg6] [8, %17] [1, 1] : tensor<8x?xf64> into tensor<256x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %16 into %arg5[%arg4, %arg0] [256, %14] [1, 1] : tensor<256x?xf64> into tensor<4096x4096xf64>
          scf.yield %inserted_slice : tensor<4096x4096xf64>
        }
        scf.yield %13 : tensor<4096x4096xf64>
      }
      scf.yield %12 : tensor<4096x4096xf64>
    }
    %transposed_6 = linalg.transpose ins(%11 : tensor<4096x4096xf64>) outs(%2 : tensor<4096x4096xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<4096x4096xf64>
  }
  default {
    scf.yield %2 : tensor<4096x4096xf64>
  }
  %5 = "ta.getTime"() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c4096 step %c1 {
    scf.for %arg1 = %c0 to %c4096 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4096x4096xf64>
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
  %c1 = arith.constant 1 : index
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c8184 = arith.constant 8184 : index
  %c4096 = arith.constant 4096 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4096x4096xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4096x4096xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4096x4096xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4096x4096xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4096x4096xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = scf.index_switch %c0 -> tensor<4096x4096xf64> 
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c4096 step %c8184 iter_args(%arg1 = %2) -> (tensor<4096x4096xf64>) {
      %8 = scf.for %arg2 = %c0 to %c4096 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<4096x4096xf64>) {
        %9 = scf.for %arg4 = %c0 to %c4096 step %c256 iter_args(%arg5 = %arg3) -> (tensor<4096x4096xf64>) {
          %10 = affine.min affine_map<(d0) -> (-d0 + 4096, 8184)>(%arg0)
          %11 = affine.min affine_map<(d0) -> (-d0 + 4096, 3072)>(%arg2)
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [256, %11] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg0] [%11, %10] [1, 1] : tensor<4096x4096xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [256, %10] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%10, 256, %11) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_6) -> (tensor<256x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%10]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%11]
            %extracted_slice_7 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [8, %14] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %extracted_slice_8 = tensor.extract_slice %extracted_slice_5[%arg8, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %arg9[%arg7, %arg6] [8, %13] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %15 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_7, %extracted_slice_8 : tensor<8x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_9 : tensor<8x?xf64>) -> tensor<8x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %15 into %arg9[%arg7, %arg6] [8, %13] [1, 1] : tensor<8x?xf64> into tensor<256x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [256, %10] [1, 1] : tensor<256x?xf64> into tensor<4096x4096xf64>
          scf.yield %inserted_slice : tensor<4096x4096xf64>
        }
        scf.yield %9 : tensor<4096x4096xf64>
      }
      scf.yield %8 : tensor<4096x4096xf64>
    }
    scf.yield %7 : tensor<4096x4096xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<4096x4096xf64>
    %transposed = linalg.transpose ins(%0 : tensor<4096x4096xf64>) outs(%7 : tensor<4096x4096xf64>) permutation = [1, 0] 
    %8 = tensor.empty() : tensor<4096x4096xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<4096x4096xf64>) outs(%8 : tensor<4096x4096xf64>) permutation = [1, 0] 
    %9 = tensor.empty() : tensor<4096x4096xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<4096x4096xf64>) -> tensor<4096x4096xf64>
    %11 = scf.for %arg0 = %c0 to %c4096 step %c8184 iter_args(%arg1 = %10) -> (tensor<4096x4096xf64>) {
      %12 = scf.for %arg2 = %c0 to %c4096 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<4096x4096xf64>) {
        %13 = scf.for %arg4 = %c0 to %c4096 step %c256 iter_args(%arg5 = %arg3) -> (tensor<4096x4096xf64>) {
          %14 = affine.min affine_map<(d0) -> (-d0 + 4096, 8184)>(%arg0)
          %15 = affine.min affine_map<(d0) -> (-d0 + 4096, 3072)>(%arg2)
          %extracted_slice = tensor.extract_slice %transposed_5[%arg4, %arg2] [256, %15] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg0] [%15, %14] [1, 1] : tensor<4096x4096xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [256, %14] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %16 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%14, 256, %15) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<256x?xf64>) {
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%14]
            %18 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%15]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [8, %18] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%18, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [8, %17] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %19 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<8x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<8x?xf64>) -> tensor<8x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %19 into %arg9[%arg7, %arg6] [8, %17] [1, 1] : tensor<8x?xf64> into tensor<256x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %16 into %arg5[%arg4, %arg0] [256, %14] [1, 1] : tensor<256x?xf64> into tensor<4096x4096xf64>
          scf.yield %inserted_slice : tensor<4096x4096xf64>
        }
        scf.yield %13 : tensor<4096x4096xf64>
      }
      scf.yield %12 : tensor<4096x4096xf64>
    }
    %transposed_6 = linalg.transpose ins(%11 : tensor<4096x4096xf64>) outs(%2 : tensor<4096x4096xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<4096x4096xf64>
  }
  default {
    scf.yield %2 : tensor<4096x4096xf64>
  }
  %5 = "ta.getTime"() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c4096 step %c1 {
    scf.for %arg1 = %c0 to %c4096 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4096x4096xf64>
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
  %c1 = arith.constant 1 : index
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c8184 = arith.constant 8184 : index
  %c4096 = arith.constant 4096 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4096x4096xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4096x4096xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4096x4096xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4096x4096xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4096x4096xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = scf.index_switch %c0 -> tensor<4096x4096xf64> 
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c4096 step %c8184 iter_args(%arg1 = %2) -> (tensor<4096x4096xf64>) {
      %8 = scf.for %arg2 = %c0 to %c4096 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<4096x4096xf64>) {
        %9 = scf.for %arg4 = %c0 to %c4096 step %c256 iter_args(%arg5 = %arg3) -> (tensor<4096x4096xf64>) {
          %10 = affine.min affine_map<(d0) -> (-d0 + 4096, 8184)>(%arg0)
          %11 = affine.min affine_map<(d0) -> (-d0 + 4096, 3072)>(%arg2)
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [256, %11] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg0] [%11, %10] [1, 1] : tensor<4096x4096xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [256, %10] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%10, 256, %11) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_6) -> (tensor<256x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%10]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%11]
            %extracted_slice_7 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [8, %14] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %extracted_slice_8 = tensor.extract_slice %extracted_slice_5[%arg8, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %arg9[%arg7, %arg6] [8, %13] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %15 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_7, %extracted_slice_8 : tensor<8x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_9 : tensor<8x?xf64>) -> tensor<8x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %15 into %arg9[%arg7, %arg6] [8, %13] [1, 1] : tensor<8x?xf64> into tensor<256x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [256, %10] [1, 1] : tensor<256x?xf64> into tensor<4096x4096xf64>
          scf.yield %inserted_slice : tensor<4096x4096xf64>
        }
        scf.yield %9 : tensor<4096x4096xf64>
      }
      scf.yield %8 : tensor<4096x4096xf64>
    }
    scf.yield %7 : tensor<4096x4096xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<4096x4096xf64>
    %transposed = linalg.transpose ins(%0 : tensor<4096x4096xf64>) outs(%7 : tensor<4096x4096xf64>) permutation = [1, 0] 
    %8 = tensor.empty() : tensor<4096x4096xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<4096x4096xf64>) outs(%8 : tensor<4096x4096xf64>) permutation = [1, 0] 
    %9 = tensor.empty() : tensor<4096x4096xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<4096x4096xf64>) -> tensor<4096x4096xf64>
    %11 = scf.for %arg0 = %c0 to %c4096 step %c8184 iter_args(%arg1 = %10) -> (tensor<4096x4096xf64>) {
      %12 = scf.for %arg2 = %c0 to %c4096 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<4096x4096xf64>) {
        %13 = scf.for %arg4 = %c0 to %c4096 step %c256 iter_args(%arg5 = %arg3) -> (tensor<4096x4096xf64>) {
          %14 = affine.min affine_map<(d0) -> (-d0 + 4096, 8184)>(%arg0)
          %15 = affine.min affine_map<(d0) -> (-d0 + 4096, 3072)>(%arg2)
          %extracted_slice = tensor.extract_slice %transposed_5[%arg4, %arg2] [256, %15] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg0] [%15, %14] [1, 1] : tensor<4096x4096xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [256, %14] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %16 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%14, 256, %15) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<256x?xf64>) {
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%14]
            %18 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%15]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [8, %18] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%18, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [8, %17] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %19 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<8x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<8x?xf64>) -> tensor<8x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %19 into %arg9[%arg7, %arg6] [8, %17] [1, 1] : tensor<8x?xf64> into tensor<256x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %16 into %arg5[%arg4, %arg0] [256, %14] [1, 1] : tensor<256x?xf64> into tensor<4096x4096xf64>
          scf.yield %inserted_slice : tensor<4096x4096xf64>
        }
        scf.yield %13 : tensor<4096x4096xf64>
      }
      scf.yield %12 : tensor<4096x4096xf64>
    }
    %transposed_6 = linalg.transpose ins(%11 : tensor<4096x4096xf64>) outs(%2 : tensor<4096x4096xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<4096x4096xf64>
  }
  default {
    scf.yield %2 : tensor<4096x4096xf64>
  }
  %5 = "ta.getTime"() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c4096 step %c1 {
    scf.for %arg1 = %c0 to %c4096 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4096x4096xf64>
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
  %c1 = arith.constant 1 : index
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c8184 = arith.constant 8184 : index
  %c4096 = arith.constant 4096 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4096x4096xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4096x4096xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4096x4096xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4096x4096xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4096x4096xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = scf.index_switch %c0 -> tensor<4096x4096xf64> 
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c4096 step %c8184 iter_args(%arg1 = %2) -> (tensor<4096x4096xf64>) {
      %8 = scf.for %arg2 = %c0 to %c4096 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<4096x4096xf64>) {
        %9 = scf.for %arg4 = %c0 to %c4096 step %c256 iter_args(%arg5 = %arg3) -> (tensor<4096x4096xf64>) {
          %10 = affine.min affine_map<(d0) -> (-d0 + 4096, 8184)>(%arg0)
          %11 = affine.min affine_map<(d0) -> (-d0 + 4096, 3072)>(%arg2)
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [256, %11] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg0] [%11, %10] [1, 1] : tensor<4096x4096xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [256, %10] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%10, 256, %11) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_6) -> (tensor<256x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%10]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%11]
            %extracted_slice_7 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [8, %14] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %extracted_slice_8 = tensor.extract_slice %extracted_slice_5[%arg8, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %arg9[%arg7, %arg6] [8, %13] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %15 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_7, %extracted_slice_8 : tensor<8x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_9 : tensor<8x?xf64>) -> tensor<8x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %15 into %arg9[%arg7, %arg6] [8, %13] [1, 1] : tensor<8x?xf64> into tensor<256x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [256, %10] [1, 1] : tensor<256x?xf64> into tensor<4096x4096xf64>
          scf.yield %inserted_slice : tensor<4096x4096xf64>
        }
        scf.yield %9 : tensor<4096x4096xf64>
      }
      scf.yield %8 : tensor<4096x4096xf64>
    }
    scf.yield %7 : tensor<4096x4096xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<4096x4096xf64>
    %transposed = linalg.transpose ins(%0 : tensor<4096x4096xf64>) outs(%7 : tensor<4096x4096xf64>) permutation = [1, 0] 
    %8 = tensor.empty() : tensor<4096x4096xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<4096x4096xf64>) outs(%8 : tensor<4096x4096xf64>) permutation = [1, 0] 
    %9 = tensor.empty() : tensor<4096x4096xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<4096x4096xf64>) -> tensor<4096x4096xf64>
    %11 = scf.for %arg0 = %c0 to %c4096 step %c8184 iter_args(%arg1 = %10) -> (tensor<4096x4096xf64>) {
      %12 = scf.for %arg2 = %c0 to %c4096 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<4096x4096xf64>) {
        %13 = scf.for %arg4 = %c0 to %c4096 step %c256 iter_args(%arg5 = %arg3) -> (tensor<4096x4096xf64>) {
          %14 = affine.min affine_map<(d0) -> (-d0 + 4096, 8184)>(%arg0)
          %15 = affine.min affine_map<(d0) -> (-d0 + 4096, 3072)>(%arg2)
          %extracted_slice = tensor.extract_slice %transposed_5[%arg4, %arg2] [256, %15] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg0] [%15, %14] [1, 1] : tensor<4096x4096xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [256, %14] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %16 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%14, 256, %15) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<256x?xf64>) {
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%14]
            %18 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%15]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [8, %18] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%18, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [8, %17] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %19 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<8x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<8x?xf64>) -> tensor<8x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %19 into %arg9[%arg7, %arg6] [8, %17] [1, 1] : tensor<8x?xf64> into tensor<256x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %16 into %arg5[%arg4, %arg0] [256, %14] [1, 1] : tensor<256x?xf64> into tensor<4096x4096xf64>
          scf.yield %inserted_slice : tensor<4096x4096xf64>
        }
        scf.yield %13 : tensor<4096x4096xf64>
      }
      scf.yield %12 : tensor<4096x4096xf64>
    }
    %transposed_6 = linalg.transpose ins(%11 : tensor<4096x4096xf64>) outs(%2 : tensor<4096x4096xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<4096x4096xf64>
  }
  default {
    scf.yield %2 : tensor<4096x4096xf64>
  }
  %5 = "ta.getTime"() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c4096 step %c1 {
    scf.for %arg1 = %c0 to %c4096 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4096x4096xf64>
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
  %c1 = arith.constant 1 : index
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c8184 = arith.constant 8184 : index
  %c4096 = arith.constant 4096 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4096x4096xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4096x4096xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4096x4096xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4096x4096xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4096x4096xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.index_switch %c0 -> tensor<4096x4096xf64> 
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c4096 step %c8184 iter_args(%arg1 = %2) -> (tensor<4096x4096xf64>) {
      %8 = scf.for %arg2 = %c0 to %c4096 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<4096x4096xf64>) {
        %9 = scf.for %arg4 = %c0 to %c4096 step %c256 iter_args(%arg5 = %arg3) -> (tensor<4096x4096xf64>) {
          %10 = affine.min affine_map<(d0) -> (-d0 + 4096, 8184)>(%arg0)
          %11 = affine.min affine_map<(d0) -> (-d0 + 4096, 3072)>(%arg2)
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [256, %11] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg0] [%11, %10] [1, 1] : tensor<4096x4096xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [256, %10] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%10, 256, %11) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_6) -> (tensor<256x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%10]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%11]
            %extracted_slice_7 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [8, %14] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %extracted_slice_8 = tensor.extract_slice %extracted_slice_5[%arg8, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %arg9[%arg7, %arg6] [8, %13] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %15 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_7, %extracted_slice_8 : tensor<8x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_9 : tensor<8x?xf64>) -> tensor<8x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %15 into %arg9[%arg7, %arg6] [8, %13] [1, 1] : tensor<8x?xf64> into tensor<256x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [256, %10] [1, 1] : tensor<256x?xf64> into tensor<4096x4096xf64>
          scf.yield %inserted_slice : tensor<4096x4096xf64>
        }
        scf.yield %9 : tensor<4096x4096xf64>
      }
      scf.yield %8 : tensor<4096x4096xf64>
    }
    scf.yield %7 : tensor<4096x4096xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<4096x4096xf64>
    %transposed = linalg.transpose ins(%0 : tensor<4096x4096xf64>) outs(%7 : tensor<4096x4096xf64>) permutation = [1, 0] 
    %8 = tensor.empty() : tensor<4096x4096xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<4096x4096xf64>) outs(%8 : tensor<4096x4096xf64>) permutation = [1, 0] 
    %9 = tensor.empty() : tensor<4096x4096xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<4096x4096xf64>) -> tensor<4096x4096xf64>
    %11 = scf.for %arg0 = %c0 to %c4096 step %c8184 iter_args(%arg1 = %10) -> (tensor<4096x4096xf64>) {
      %12 = scf.for %arg2 = %c0 to %c4096 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<4096x4096xf64>) {
        %13 = scf.for %arg4 = %c0 to %c4096 step %c256 iter_args(%arg5 = %arg3) -> (tensor<4096x4096xf64>) {
          %14 = affine.min affine_map<(d0) -> (-d0 + 4096, 8184)>(%arg0)
          %15 = affine.min affine_map<(d0) -> (-d0 + 4096, 3072)>(%arg2)
          %extracted_slice = tensor.extract_slice %transposed_5[%arg4, %arg2] [256, %15] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg0] [%15, %14] [1, 1] : tensor<4096x4096xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [256, %14] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %16 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%14, 256, %15) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<256x?xf64>) {
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%14]
            %18 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%15]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [8, %18] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%18, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [8, %17] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %19 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<8x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<8x?xf64>) -> tensor<8x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %19 into %arg9[%arg7, %arg6] [8, %17] [1, 1] : tensor<8x?xf64> into tensor<256x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %16 into %arg5[%arg4, %arg0] [256, %14] [1, 1] : tensor<256x?xf64> into tensor<4096x4096xf64>
          scf.yield %inserted_slice : tensor<4096x4096xf64>
        }
        scf.yield %13 : tensor<4096x4096xf64>
      }
      scf.yield %12 : tensor<4096x4096xf64>
    }
    %transposed_6 = linalg.transpose ins(%11 : tensor<4096x4096xf64>) outs(%2 : tensor<4096x4096xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<4096x4096xf64>
  }
  default {
    scf.yield %2 : tensor<4096x4096xf64>
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c4096 step %c1 {
    scf.for %arg1 = %c0 to %c4096 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4096x4096xf64>
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
  %c1 = arith.constant 1 : index
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c8184 = arith.constant 8184 : index
  %c4096 = arith.constant 4096 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4096x4096xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4096x4096xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4096x4096xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4096x4096xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4096x4096xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.index_switch %c0 -> tensor<4096x4096xf64> 
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c4096 step %c8184 iter_args(%arg1 = %2) -> (tensor<4096x4096xf64>) {
      %8 = scf.for %arg2 = %c0 to %c4096 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<4096x4096xf64>) {
        %9 = scf.for %arg4 = %c0 to %c4096 step %c256 iter_args(%arg5 = %arg3) -> (tensor<4096x4096xf64>) {
          %10 = affine.min affine_map<(d0) -> (-d0 + 4096, 8184)>(%arg0)
          %11 = affine.min affine_map<(d0) -> (-d0 + 4096, 3072)>(%arg2)
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [256, %11] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg0] [%11, %10] [1, 1] : tensor<4096x4096xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [256, %10] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %12 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%10, 256, %11) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_6) -> (tensor<256x?xf64>) {
            %13 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%10]
            %14 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%11]
            %extracted_slice_7 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [8, %14] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %extracted_slice_8 = tensor.extract_slice %extracted_slice_5[%arg8, %arg6] [%14, %13] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_9 = tensor.extract_slice %arg9[%arg7, %arg6] [8, %13] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %15 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_7, %extracted_slice_8 : tensor<8x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_9 : tensor<8x?xf64>) -> tensor<8x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %15 into %arg9[%arg7, %arg6] [8, %13] [1, 1] : tensor<8x?xf64> into tensor<256x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [256, %10] [1, 1] : tensor<256x?xf64> into tensor<4096x4096xf64>
          scf.yield %inserted_slice : tensor<4096x4096xf64>
        }
        scf.yield %9 : tensor<4096x4096xf64>
      }
      scf.yield %8 : tensor<4096x4096xf64>
    }
    scf.yield %7 : tensor<4096x4096xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<4096x4096xf64>
    %transposed = linalg.transpose ins(%0 : tensor<4096x4096xf64>) outs(%7 : tensor<4096x4096xf64>) permutation = [1, 0] 
    %8 = tensor.empty() : tensor<4096x4096xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<4096x4096xf64>) outs(%8 : tensor<4096x4096xf64>) permutation = [1, 0] 
    %9 = tensor.empty() : tensor<4096x4096xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<4096x4096xf64>) -> tensor<4096x4096xf64>
    %11 = scf.for %arg0 = %c0 to %c4096 step %c8184 iter_args(%arg1 = %10) -> (tensor<4096x4096xf64>) {
      %12 = scf.for %arg2 = %c0 to %c4096 step %c3072 iter_args(%arg3 = %arg1) -> (tensor<4096x4096xf64>) {
        %13 = scf.for %arg4 = %c0 to %c4096 step %c256 iter_args(%arg5 = %arg3) -> (tensor<4096x4096xf64>) {
          %14 = affine.min affine_map<(d0) -> (-d0 + 4096, 8184)>(%arg0)
          %15 = affine.min affine_map<(d0) -> (-d0 + 4096, 3072)>(%arg2)
          %extracted_slice = tensor.extract_slice %transposed_5[%arg4, %arg2] [256, %15] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg0] [%15, %14] [1, 1] : tensor<4096x4096xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [256, %14] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
          %16 = scf.forall (%arg6, %arg7, %arg8) = (0, 0, 0) to (%14, 256, %15) step (6, 8, 3072) shared_outs(%arg9 = %extracted_slice_8) -> (tensor<256x?xf64>) {
            %17 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 6)>(%arg6)[%14]
            %18 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg8)[%15]
            %extracted_slice_9 = tensor.extract_slice %extracted_slice[%arg7, %arg8] [8, %18] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %extracted_slice_10 = tensor.extract_slice %extracted_slice_7[%arg8, %arg6] [%18, %17] [1, 1] : tensor<?x?xf64> to tensor<?x?xf64>
            %extracted_slice_11 = tensor.extract_slice %arg9[%arg7, %arg6] [8, %17] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
            %19 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_9, %extracted_slice_10 : tensor<8x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<8x?xf64>) -> tensor<8x?xf64>
            scf.forall.in_parallel {
              tensor.parallel_insert_slice %19 into %arg9[%arg7, %arg6] [8, %17] [1, 1] : tensor<8x?xf64> into tensor<256x?xf64>
            }
          }
          %inserted_slice = tensor.insert_slice %16 into %arg5[%arg4, %arg0] [256, %14] [1, 1] : tensor<256x?xf64> into tensor<4096x4096xf64>
          scf.yield %inserted_slice : tensor<4096x4096xf64>
        }
        scf.yield %13 : tensor<4096x4096xf64>
      }
      scf.yield %12 : tensor<4096x4096xf64>
    }
    %transposed_6 = linalg.transpose ins(%11 : tensor<4096x4096xf64>) outs(%2 : tensor<4096x4096xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<4096x4096xf64>
  }
  default {
    scf.yield %2 : tensor<4096x4096xf64>
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c4096 step %c1 {
    scf.for %arg1 = %c0 to %c4096 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4096x4096xf64>
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
  %c1 = arith.constant 1 : index
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c4096 = arith.constant 4096 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4096x4096xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4096x4096xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4096x4096xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4096x4096xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4096x4096xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.for %arg0 = %c0 to %c4096 step %c3072 iter_args(%arg1 = %2) -> (tensor<4096x4096xf64>) {
    %7 = scf.for %arg2 = %c0 to %c4096 step %c256 iter_args(%arg3 = %arg1) -> (tensor<4096x4096xf64>) {
      %8 = affine.min affine_map<(d0) -> (-d0 + 4096, 3072)>(%arg0)
      %extracted_slice = tensor.extract_slice %0[%arg2, %arg0] [256, %8] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
      %extracted_slice_5 = tensor.extract_slice %1[%arg0, 0] [%8, 4096] [1, 1] : tensor<4096x4096xf64> to tensor<?x4096xf64>
      %extracted_slice_6 = tensor.extract_slice %arg3[%arg2, 0] [256, 4096] [1, 1] : tensor<4096x4096xf64> to tensor<256x4096xf64>
      %9 = scf.forall (%arg4, %arg5, %arg6) = (0, 0, 0) to (4096, 256, %8) step (6, 8, 3072) shared_outs(%arg7 = %extracted_slice_6) -> (tensor<256x4096xf64>) {
        %10 = affine.min affine_map<(d0) -> (-d0 + 4096, 6)>(%arg4)
        %11 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg6)[%8]
        %extracted_slice_7 = tensor.extract_slice %extracted_slice[%arg5, %arg6] [8, %11] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
        %extracted_slice_8 = tensor.extract_slice %extracted_slice_5[%arg6, %arg4] [%11, %10] [1, 1] : tensor<?x4096xf64> to tensor<?x?xf64>
        %extracted_slice_9 = tensor.extract_slice %arg7[%arg5, %arg4] [8, %10] [1, 1] : tensor<256x4096xf64> to tensor<8x?xf64>
        %12 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_7, %extracted_slice_8 : tensor<8x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_9 : tensor<8x?xf64>) -> tensor<8x?xf64>
        scf.forall.in_parallel {
          tensor.parallel_insert_slice %12 into %arg7[%arg5, %arg4] [8, %10] [1, 1] : tensor<8x?xf64> into tensor<256x4096xf64>
        }
      }
      %inserted_slice = tensor.insert_slice %9 into %arg3[%arg2, 0] [256, 4096] [1, 1] : tensor<256x4096xf64> into tensor<4096x4096xf64>
      scf.yield %inserted_slice : tensor<4096x4096xf64>
    }
    scf.yield %7 : tensor<4096x4096xf64>
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c4096 step %c1 {
    scf.for %arg1 = %c0 to %c4096 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4096x4096xf64>
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
  %c1 = arith.constant 1 : index
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c4096 = arith.constant 4096 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4096x4096xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4096x4096xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4096x4096xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4096x4096xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4096x4096xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.for %arg0 = %c0 to %c4096 step %c3072 iter_args(%arg1 = %2) -> (tensor<4096x4096xf64>) {
    %7 = affine.min affine_map<(d0) -> (-d0 + 4096, 3072)>(%arg0)
    %extracted_slice = tensor.extract_slice %1[%arg0, 0] [%7, 4096] [1, 1] : tensor<4096x4096xf64> to tensor<?x4096xf64>
    %8 = scf.for %arg2 = %c0 to %c4096 step %c256 iter_args(%arg3 = %arg1) -> (tensor<4096x4096xf64>) {
      %extracted_slice_5 = tensor.extract_slice %0[%arg2, %arg0] [256, %7] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
      %extracted_slice_6 = tensor.extract_slice %arg3[%arg2, 0] [256, 4096] [1, 1] : tensor<4096x4096xf64> to tensor<256x4096xf64>
      %9 = scf.forall (%arg4, %arg5, %arg6) = (0, 0, 0) to (4096, 256, %7) step (6, 8, 3072) shared_outs(%arg7 = %extracted_slice_6) -> (tensor<256x4096xf64>) {
        %10 = affine.min affine_map<(d0) -> (-d0 + 4096, 6)>(%arg4)
        %11 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg6)[%7]
        %extracted_slice_7 = tensor.extract_slice %extracted_slice_5[%arg5, %arg6] [8, %11] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
        %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg6, %arg4] [%11, %10] [1, 1] : tensor<?x4096xf64> to tensor<?x?xf64>
        %extracted_slice_9 = tensor.extract_slice %arg7[%arg5, %arg4] [8, %10] [1, 1] : tensor<256x4096xf64> to tensor<8x?xf64>
        %12 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_7, %extracted_slice_8 : tensor<8x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_9 : tensor<8x?xf64>) -> tensor<8x?xf64>
        scf.forall.in_parallel {
          tensor.parallel_insert_slice %12 into %arg7[%arg5, %arg4] [8, %10] [1, 1] : tensor<8x?xf64> into tensor<256x4096xf64>
        }
      }
      %inserted_slice = tensor.insert_slice %9 into %arg3[%arg2, 0] [256, 4096] [1, 1] : tensor<256x4096xf64> into tensor<4096x4096xf64>
      scf.yield %inserted_slice : tensor<4096x4096xf64>
    }
    scf.yield %8 : tensor<4096x4096xf64>
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c4096 step %c1 {
    scf.for %arg1 = %c0 to %c4096 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4096x4096xf64>
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
  %c1 = arith.constant 1 : index
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c4096 = arith.constant 4096 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4096x4096xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4096x4096xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4096x4096xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4096x4096xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4096x4096xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.for %arg0 = %c0 to %c4096 step %c3072 iter_args(%arg1 = %2) -> (tensor<4096x4096xf64>) {
    %7 = affine.min affine_map<(d0) -> (-d0 + 4096, 3072)>(%arg0)
    %extracted_slice = tensor.extract_slice %1[%arg0, 0] [%7, 4096] [1, 1] : tensor<4096x4096xf64> to tensor<?x4096xf64>
    %8 = scf.for %arg2 = %c0 to %c4096 step %c256 iter_args(%arg3 = %arg1) -> (tensor<4096x4096xf64>) {
      %extracted_slice_5 = tensor.extract_slice %0[%arg2, %arg0] [256, %7] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
      %extracted_slice_6 = tensor.extract_slice %arg3[%arg2, 0] [256, 4096] [1, 1] : tensor<4096x4096xf64> to tensor<256x4096xf64>
      %9 = scf.forall (%arg4, %arg5, %arg6) = (0, 0, 0) to (4096, 256, %7) step (6, 8, 3072) shared_outs(%arg7 = %extracted_slice_6) -> (tensor<256x4096xf64>) {
        %10 = affine.min affine_map<(d0) -> (-d0 + 4096, 6)>(%arg4)
        %11 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg6)[%7]
        %extracted_slice_7 = tensor.extract_slice %extracted_slice_5[%arg5, %arg6] [8, %11] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
        %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg6, %arg4] [%11, %10] [1, 1] : tensor<?x4096xf64> to tensor<?x?xf64>
        %extracted_slice_9 = tensor.extract_slice %arg7[%arg5, %arg4] [8, %10] [1, 1] : tensor<256x4096xf64> to tensor<8x?xf64>
        %12 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_7, %extracted_slice_8 : tensor<8x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_9 : tensor<8x?xf64>) -> tensor<8x?xf64>
        scf.forall.in_parallel {
          tensor.parallel_insert_slice %12 into %arg7[%arg5, %arg4] [8, %10] [1, 1] : tensor<8x?xf64> into tensor<256x4096xf64>
        }
      }
      %inserted_slice = tensor.insert_slice %9 into %arg3[%arg2, 0] [256, 4096] [1, 1] : tensor<256x4096xf64> into tensor<4096x4096xf64>
      scf.yield %inserted_slice : tensor<4096x4096xf64>
    }
    scf.yield %8 : tensor<4096x4096xf64>
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c4096 step %c1 {
    scf.for %arg1 = %c0 to %c4096 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4096x4096xf64>
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
  %c1 = arith.constant 1 : index
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c4096 = arith.constant 4096 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4096x4096xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<4096x4096xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4096x4096xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4096x4096xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4096x4096xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.for %arg0 = %c0 to %c4096 step %c3072 iter_args(%arg1 = %2) -> (tensor<4096x4096xf64>) {
    %7 = affine.min affine_map<(d0) -> (-d0 + 4096, 3072)>(%arg0)
    %extracted_slice = tensor.extract_slice %1[%arg0, 0] [%7, 4096] [1, 1] : tensor<4096x4096xf64> to tensor<?x4096xf64>
    %8 = scf.for %arg2 = %c0 to %c4096 step %c256 iter_args(%arg3 = %arg1) -> (tensor<4096x4096xf64>) {
      %extracted_slice_5 = tensor.extract_slice %0[%arg2, %arg0] [256, %7] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
      %extracted_slice_6 = tensor.extract_slice %arg3[%arg2, 0] [256, 4096] [1, 1] : tensor<4096x4096xf64> to tensor<256x4096xf64>
      %9 = scf.forall (%arg4, %arg5, %arg6) = (0, 0, 0) to (4096, 256, %7) step (6, 8, 3072) shared_outs(%arg7 = %extracted_slice_6) -> (tensor<256x4096xf64>) {
        %10 = affine.min affine_map<(d0) -> (-d0 + 4096, 6)>(%arg4)
        %11 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg6)[%7]
        %extracted_slice_7 = tensor.extract_slice %extracted_slice_5[%arg5, %arg6] [8, %11] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
        %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg6, %arg4] [%11, %10] [1, 1] : tensor<?x4096xf64> to tensor<?x?xf64>
        %extracted_slice_9 = tensor.extract_slice %arg7[%arg5, %arg4] [8, %10] [1, 1] : tensor<256x4096xf64> to tensor<8x?xf64>
        %12 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_7, %extracted_slice_8 : tensor<8x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_9 : tensor<8x?xf64>) -> tensor<8x?xf64>
        scf.forall.in_parallel {
          tensor.parallel_insert_slice %12 into %arg7[%arg5, %arg4] [8, %10] [1, 1] : tensor<8x?xf64> into tensor<256x4096xf64>
        }
      }
      %inserted_slice = tensor.insert_slice %9 into %arg3[%arg2, 0] [256, 4096] [1, 1] : tensor<256x4096xf64> into tensor<4096x4096xf64>
      scf.yield %inserted_slice : tensor<4096x4096xf64>
    }
    scf.yield %8 : tensor<4096x4096xf64>
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c4096 step %c1 {
    scf.for %arg1 = %c0 to %c4096 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4096x4096xf64>
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
#map = affine_map<(d0) -> (-d0 + 4096, 3072)>
#map1 = affine_map<(d0) -> (-d0 + 4096, 6)>
#map2 = affine_map<(d0)[s0] -> (-d0 + s0, 3072)>
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c256 = arith.constant 256 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4096x4096xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<4096x4096xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4096x4096xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4096x4096xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4096x4096xf64>
    %3 = call @getTime() : () -> f64
    %4 = scf.for %arg0 = %c0 to %c4096 step %c3072 iter_args(%arg1 = %2) -> (tensor<4096x4096xf64>) {
      %7 = affine.min #map(%arg0)
      %extracted_slice = tensor.extract_slice %1[%arg0, 0] [%7, 4096] [1, 1] : tensor<4096x4096xf64> to tensor<?x4096xf64>
      %8 = scf.for %arg2 = %c0 to %c4096 step %c256 iter_args(%arg3 = %arg1) -> (tensor<4096x4096xf64>) {
        %extracted_slice_5 = tensor.extract_slice %0[%arg2, %arg0] [256, %7] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
        %extracted_slice_6 = tensor.extract_slice %arg3[%arg2, 0] [256, 4096] [1, 1] : tensor<4096x4096xf64> to tensor<256x4096xf64>
        %9 = scf.forall (%arg4, %arg5, %arg6) = (0, 0, 0) to (4096, 256, %7) step (6, 8, 3072) shared_outs(%arg7 = %extracted_slice_6) -> (tensor<256x4096xf64>) {
          %10 = affine.min #map1(%arg4)
          %11 = affine.min #map2(%arg6)[%7]
          %extracted_slice_7 = tensor.extract_slice %extracted_slice_5[%arg5, %arg6] [8, %11] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
          %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg6, %arg4] [%11, %10] [1, 1] : tensor<?x4096xf64> to tensor<?x?xf64>
          %extracted_slice_9 = tensor.extract_slice %arg7[%arg5, %arg4] [8, %10] [1, 1] : tensor<256x4096xf64> to tensor<8x?xf64>
          %12 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_7, %extracted_slice_8 : tensor<8x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_9 : tensor<8x?xf64>) -> tensor<8x?xf64>
          scf.forall.in_parallel {
            tensor.parallel_insert_slice %12 into %arg7[%arg5, %arg4] [8, %10] [1, 1] : tensor<8x?xf64> into tensor<256x4096xf64>
          }
        }
        %inserted_slice = tensor.insert_slice %9 into %arg3[%arg2, 0] [256, 4096] [1, 1] : tensor<256x4096xf64> into tensor<4096x4096xf64>
        scf.yield %inserted_slice : tensor<4096x4096xf64>
      }
      scf.yield %8 : tensor<4096x4096xf64>
    }
    %5 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4096x4096xf64>
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
#map = affine_map<(d0) -> (-d0 + 4096, 3072)>
#map1 = affine_map<(d0) -> (-d0 + 4096, 6)>
#map2 = affine_map<(d0)[s0] -> (-d0 + s0, 3072)>
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c256 = arith.constant 256 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4096x4096xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<4096x4096xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4096x4096xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4096x4096xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4096x4096xf64>
    %3 = call @getTime() : () -> f64
    %4 = scf.for %arg0 = %c0 to %c4096 step %c3072 iter_args(%arg1 = %2) -> (tensor<4096x4096xf64>) {
      %7 = affine.min #map(%arg0)
      %extracted_slice = tensor.extract_slice %1[%arg0, 0] [%7, 4096] [1, 1] : tensor<4096x4096xf64> to tensor<?x4096xf64>
      %8 = scf.for %arg2 = %c0 to %c4096 step %c256 iter_args(%arg3 = %arg1) -> (tensor<4096x4096xf64>) {
        %extracted_slice_5 = tensor.extract_slice %0[%arg2, %arg0] [256, %7] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
        %extracted_slice_6 = tensor.extract_slice %arg3[%arg2, 0] [256, 4096] [1, 1] : tensor<4096x4096xf64> to tensor<256x4096xf64>
        %9 = scf.forall (%arg4, %arg5, %arg6) = (0, 0, 0) to (4096, 256, %7) step (6, 8, 3072) shared_outs(%arg7 = %extracted_slice_6) -> (tensor<256x4096xf64>) {
          %10 = affine.min #map1(%arg4)
          %11 = affine.min #map2(%arg6)[%7]
          %extracted_slice_7 = tensor.extract_slice %extracted_slice_5[%arg5, %arg6] [8, %11] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
          %extracted_slice_8 = tensor.extract_slice %extracted_slice[%arg6, %arg4] [%11, %10] [1, 1] : tensor<?x4096xf64> to tensor<?x?xf64>
          %extracted_slice_9 = tensor.extract_slice %arg7[%arg5, %arg4] [8, %10] [1, 1] : tensor<256x4096xf64> to tensor<8x?xf64>
          %12 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_7, %extracted_slice_8 : tensor<8x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_9 : tensor<8x?xf64>) -> tensor<8x?xf64>
          scf.forall.in_parallel {
            tensor.parallel_insert_slice %12 into %arg7[%arg5, %arg4] [8, %10] [1, 1] : tensor<8x?xf64> into tensor<256x4096xf64>
          }
        }
        %inserted_slice = tensor.insert_slice %9 into %arg3[%arg2, 0] [256, 4096] [1, 1] : tensor<256x4096xf64> into tensor<4096x4096xf64>
        scf.yield %inserted_slice : tensor<4096x4096xf64>
      }
      scf.yield %8 : tensor<4096x4096xf64>
    }
    %5 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4096x4096xf64>
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
    %c1 = arith.constant 1 : index
    %c256 = arith.constant 256 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4096x4096xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<4096x4096xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<4096x4096xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4096x4096xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<4096x4096xf64>
    %3 = call @getTime() : () -> f64
    %4 = scf.for %arg0 = %c0 to %c4096 step %c3072 iter_args(%arg1 = %2) -> (tensor<4096x4096xf64>) {
      %c-1 = arith.constant -1 : index
      %7 = arith.muli %arg0, %c-1 : index
      %c4096_5 = arith.constant 4096 : index
      %8 = arith.addi %7, %c4096_5 : index
      %c3072_6 = arith.constant 3072 : index
      %9 = arith.minsi %8, %c3072_6 : index
      %extracted_slice = tensor.extract_slice %1[%arg0, 0] [%9, 4096] [1, 1] : tensor<4096x4096xf64> to tensor<?x4096xf64>
      %10 = scf.for %arg2 = %c0 to %c4096 step %c256 iter_args(%arg3 = %arg1) -> (tensor<4096x4096xf64>) {
        %extracted_slice_7 = tensor.extract_slice %0[%arg2, %arg0] [256, %9] [1, 1] : tensor<4096x4096xf64> to tensor<256x?xf64>
        %extracted_slice_8 = tensor.extract_slice %arg3[%arg2, 0] [256, 4096] [1, 1] : tensor<4096x4096xf64> to tensor<256x4096xf64>
        %11 = scf.forall (%arg4, %arg5, %arg6) = (0, 0, 0) to (4096, 256, %9) step (6, 8, 3072) shared_outs(%arg7 = %extracted_slice_8) -> (tensor<256x4096xf64>) {
          %c-1_9 = arith.constant -1 : index
          %12 = arith.muli %arg4, %c-1_9 : index
          %c4096_10 = arith.constant 4096 : index
          %13 = arith.addi %12, %c4096_10 : index
          %c6 = arith.constant 6 : index
          %14 = arith.minsi %13, %c6 : index
          %c-1_11 = arith.constant -1 : index
          %15 = arith.muli %arg6, %c-1_11 : index
          %16 = arith.addi %15, %9 : index
          %c3072_12 = arith.constant 3072 : index
          %17 = arith.minsi %16, %c3072_12 : index
          %extracted_slice_13 = tensor.extract_slice %extracted_slice_7[%arg5, %arg6] [8, %17] [1, 1] : tensor<256x?xf64> to tensor<8x?xf64>
          %extracted_slice_14 = tensor.extract_slice %extracted_slice[%arg6, %arg4] [%17, %14] [1, 1] : tensor<?x4096xf64> to tensor<?x?xf64>
          %extracted_slice_15 = tensor.extract_slice %arg7[%arg5, %arg4] [8, %14] [1, 1] : tensor<256x4096xf64> to tensor<8x?xf64>
          %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%extracted_slice_13, %extracted_slice_14 : tensor<8x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_15 : tensor<8x?xf64>) -> tensor<8x?xf64>
          scf.forall.in_parallel {
            tensor.parallel_insert_slice %18 into %arg7[%arg5, %arg4] [8, %14] [1, 1] : tensor<8x?xf64> into tensor<256x4096xf64>
          }
        }
        %inserted_slice = tensor.insert_slice %11 into %arg3[%arg2, 0] [256, 4096] [1, 1] : tensor<256x4096xf64> into tensor<4096x4096xf64>
        scf.yield %inserted_slice : tensor<4096x4096xf64>
      }
      scf.yield %10 : tensor<4096x4096xf64>
    }
    %5 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        %extracted = tensor.extract %4[%arg0, %arg1] : tensor<4096x4096xf64>
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
    %c1 = arith.constant 1 : index
    %c256 = arith.constant 256 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4096x4096xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4096x4096xf64>)
    %0 = call @getTime() : () -> f64
    %1 = scf.for %arg0 = %c0 to %c4096 step %c3072 iter_args(%arg1 = %alloc_3) -> (memref<4096x4096xf64>) {
      %c-1 = arith.constant -1 : index
      %4 = arith.muli %arg0, %c-1 : index
      %c4096_5 = arith.constant 4096 : index
      %5 = arith.addi %4, %c4096_5 : index
      %c3072_6 = arith.constant 3072 : index
      %6 = arith.minsi %5, %c3072_6 : index
      %subview = memref.subview %alloc_2[%arg0, 0] [%6, 4096] [1, 1] : memref<4096x4096xf64> to memref<?x4096xf64, strided<[4096, 1], offset: ?>>
      %7 = scf.for %arg2 = %c0 to %c4096 step %c256 iter_args(%arg3 = %arg1) -> (memref<4096x4096xf64>) {
        %subview_7 = memref.subview %alloc[%arg2, %arg0] [256, %6] [1, 1] : memref<4096x4096xf64> to memref<256x?xf64, strided<[4096, 1], offset: ?>>
        %subview_8 = memref.subview %arg3[%arg2, 0] [256, 4096] [1, 1] : memref<4096x4096xf64> to memref<256x4096xf64, strided<[4096, 1], offset: ?>>
        scf.forall (%arg4, %arg5, %arg6) = (0, 0, 0) to (4096, 256, %6) step (6, 8, 3072) {
          %c-1_10 = arith.constant -1 : index
          %8 = arith.muli %arg4, %c-1_10 : index
          %c4096_11 = arith.constant 4096 : index
          %9 = arith.addi %8, %c4096_11 : index
          %c6 = arith.constant 6 : index
          %10 = arith.minsi %9, %c6 : index
          %c-1_12 = arith.constant -1 : index
          %11 = arith.muli %arg6, %c-1_12 : index
          %12 = arith.addi %11, %6 : index
          %c3072_13 = arith.constant 3072 : index
          %13 = arith.minsi %12, %c3072_13 : index
          %subview_14 = memref.subview %subview_7[%arg5, %arg6] [8, %13] [1, 1] : memref<256x?xf64, strided<[4096, 1], offset: ?>> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %subview_15 = memref.subview %subview[%arg6, %arg4] [%13, %10] [1, 1] : memref<?x4096xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
          %subview_16 = memref.subview %subview_8[%arg5, %arg4] [8, %10] [1, 1] : memref<256x4096xf64, strided<[4096, 1], offset: ?>> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%subview_14, %subview_15 : memref<8x?xf64, strided<[4096, 1], offset: ?>>, memref<?x?xf64, strided<[4096, 1], offset: ?>>) outs(%subview_16 : memref<8x?xf64, strided<[4096, 1], offset: ?>>)
          %subview_17 = memref.subview %subview_8[%arg5, %arg4] [8, %10] [1, 1] : memref<256x4096xf64, strided<[4096, 1], offset: ?>> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          memref.copy %subview_16, %subview_17 : memref<8x?xf64, strided<[4096, 1], offset: ?>> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
        }
        %subview_9 = memref.subview %arg3[%arg2, 0] [256, 4096] [1, 1] : memref<4096x4096xf64> to memref<256x4096xf64, strided<[4096, 1], offset: ?>>
        memref.copy %subview_8, %subview_9 : memref<256x4096xf64, strided<[4096, 1], offset: ?>> to memref<256x4096xf64, strided<[4096, 1], offset: ?>>
        scf.yield %arg3 : memref<4096x4096xf64>
      }
      scf.yield %7 : memref<4096x4096xf64>
    }
    %2 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        %4 = memref.load %1[%arg0, %arg1] : memref<4096x4096xf64>
        %5 = memref.load %alloc_4[%c0] : memref<1xf64>
        %6 = arith.addf %4, %5 : f64
        memref.store %6, %alloc_4[%c0] : memref<1xf64>
      }
    }
    %3 = memref.load %alloc_4[%c0] : memref<1xf64>
    "ta.print"(%3) : (f64) -> ()
    call @printElapsedTime(%0, %2) : (f64, f64) -> ()
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
  %c1 = arith.constant 1 : index
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c4096 = arith.constant 4096 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4096x4096xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4096x4096xf64>)
  %0 = call @getTime() : () -> f64
  %1 = scf.for %arg0 = %c0 to %c4096 step %c3072 iter_args(%arg1 = %alloc_3) -> (memref<4096x4096xf64>) {
    %c-1 = arith.constant -1 : index
    %4 = arith.muli %arg0, %c-1 : index
    %c4096_5 = arith.constant 4096 : index
    %5 = arith.addi %4, %c4096_5 : index
    %c3072_6 = arith.constant 3072 : index
    %6 = arith.minsi %5, %c3072_6 : index
    %subview = memref.subview %alloc_2[%arg0, 0] [%6, 4096] [1, 1] : memref<4096x4096xf64> to memref<?x4096xf64, strided<[4096, 1], offset: ?>>
    %7 = scf.for %arg2 = %c0 to %c4096 step %c256 iter_args(%arg3 = %arg1) -> (memref<4096x4096xf64>) {
      %subview_7 = memref.subview %alloc[%arg2, %arg0] [256, %6] [1, 1] : memref<4096x4096xf64> to memref<256x?xf64, strided<[4096, 1], offset: ?>>
      %subview_8 = memref.subview %arg3[%arg2, 0] [256, 4096] [1, 1] : memref<4096x4096xf64> to memref<256x4096xf64, strided<[4096, 1], offset: ?>>
      scf.forall (%arg4, %arg5, %arg6) = (0, 0, 0) to (4096, 256, %6) step (6, 8, 3072) {
        %c-1_10 = arith.constant -1 : index
        %8 = arith.muli %arg4, %c-1_10 : index
        %c4096_11 = arith.constant 4096 : index
        %9 = arith.addi %8, %c4096_11 : index
        %c6 = arith.constant 6 : index
        %10 = arith.minsi %9, %c6 : index
        %c-1_12 = arith.constant -1 : index
        %11 = arith.muli %arg6, %c-1_12 : index
        %12 = arith.addi %11, %6 : index
        %c3072_13 = arith.constant 3072 : index
        %13 = arith.minsi %12, %c3072_13 : index
        %subview_14 = memref.subview %subview_7[%arg5, %arg6] [8, %13] [1, 1] : memref<256x?xf64, strided<[4096, 1], offset: ?>> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
        %subview_15 = memref.subview %subview[%arg6, %arg4] [%13, %10] [1, 1] : memref<?x4096xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
        %subview_16 = memref.subview %subview_8[%arg5, %arg4] [8, %10] [1, 1] : memref<256x4096xf64, strided<[4096, 1], offset: ?>> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
        linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%subview_14, %subview_15 : memref<8x?xf64, strided<[4096, 1], offset: ?>>, memref<?x?xf64, strided<[4096, 1], offset: ?>>) outs(%subview_16 : memref<8x?xf64, strided<[4096, 1], offset: ?>>)
        %subview_17 = memref.subview %subview_8[%arg5, %arg4] [8, %10] [1, 1] : memref<256x4096xf64, strided<[4096, 1], offset: ?>> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
        memref.copy %subview_16, %subview_17 : memref<8x?xf64, strided<[4096, 1], offset: ?>> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
      }
      %subview_9 = memref.subview %arg3[%arg2, 0] [256, 4096] [1, 1] : memref<4096x4096xf64> to memref<256x4096xf64, strided<[4096, 1], offset: ?>>
      memref.copy %subview_8, %subview_9 : memref<256x4096xf64, strided<[4096, 1], offset: ?>> to memref<256x4096xf64, strided<[4096, 1], offset: ?>>
      scf.yield %arg3 : memref<4096x4096xf64>
    }
    scf.yield %7 : memref<4096x4096xf64>
  }
  %2 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c4096 step %c1 {
    scf.for %arg1 = %c0 to %c4096 step %c1 {
      %4 = memref.load %1[%arg0, %arg1] : memref<4096x4096xf64>
      %5 = memref.load %alloc_4[%c0] : memref<1xf64>
      %6 = arith.addf %4, %5 : f64
      memref.store %6, %alloc_4[%c0] : memref<1xf64>
    }
  }
  %3 = memref.load %alloc_4[%c0] : memref<1xf64>
  "ta.print"(%3) : (f64) -> ()
  call @printElapsedTime(%0, %2) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c4096 = arith.constant 4096 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4096x4096xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4096x4096xf64>)
  %0 = call @getTime() : () -> f64
  %1 = scf.for %arg0 = %c0 to %c4096 step %c3072 iter_args(%arg1 = %alloc_3) -> (memref<4096x4096xf64>) {
    %c-1 = arith.constant -1 : index
    %4 = arith.muli %arg0, %c-1 : index
    %c4096_5 = arith.constant 4096 : index
    %5 = arith.addi %4, %c4096_5 : index
    %c3072_6 = arith.constant 3072 : index
    %6 = arith.minsi %5, %c3072_6 : index
    %subview = memref.subview %alloc_2[%arg0, 0] [%6, 4096] [1, 1] : memref<4096x4096xf64> to memref<?x4096xf64, strided<[4096, 1], offset: ?>>
    %7 = scf.for %arg2 = %c0 to %c4096 step %c256 iter_args(%arg3 = %arg1) -> (memref<4096x4096xf64>) {
      %subview_7 = memref.subview %alloc[%arg2, %arg0] [256, %6] [1, 1] : memref<4096x4096xf64> to memref<256x?xf64, strided<[4096, 1], offset: ?>>
      %subview_8 = memref.subview %arg3[%arg2, 0] [256, 4096] [1, 1] : memref<4096x4096xf64> to memref<256x4096xf64, strided<[4096, 1], offset: ?>>
      scf.forall (%arg4, %arg5, %arg6) = (0, 0, 0) to (4096, 256, %6) step (6, 8, 3072) {
        %c-1_10 = arith.constant -1 : index
        %8 = arith.muli %arg4, %c-1_10 : index
        %c4096_11 = arith.constant 4096 : index
        %9 = arith.addi %8, %c4096_11 : index
        %c6 = arith.constant 6 : index
        %10 = arith.minsi %9, %c6 : index
        %c-1_12 = arith.constant -1 : index
        %11 = arith.muli %arg6, %c-1_12 : index
        %12 = arith.addi %11, %6 : index
        %c3072_13 = arith.constant 3072 : index
        %13 = arith.minsi %12, %c3072_13 : index
        %subview_14 = memref.subview %subview_7[%arg5, %arg6] [8, %13] [1, 1] : memref<256x?xf64, strided<[4096, 1], offset: ?>> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
        %subview_15 = memref.subview %subview[%arg6, %arg4] [%13, %10] [1, 1] : memref<?x4096xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
        %subview_16 = memref.subview %subview_8[%arg5, %arg4] [8, %10] [1, 1] : memref<256x4096xf64, strided<[4096, 1], offset: ?>> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
        linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%subview_14, %subview_15 : memref<8x?xf64, strided<[4096, 1], offset: ?>>, memref<?x?xf64, strided<[4096, 1], offset: ?>>) outs(%subview_16 : memref<8x?xf64, strided<[4096, 1], offset: ?>>)
        %subview_17 = memref.subview %subview_8[%arg5, %arg4] [8, %10] [1, 1] : memref<256x4096xf64, strided<[4096, 1], offset: ?>> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
        memref.copy %subview_16, %subview_17 : memref<8x?xf64, strided<[4096, 1], offset: ?>> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
      }
      %subview_9 = memref.subview %arg3[%arg2, 0] [256, 4096] [1, 1] : memref<4096x4096xf64> to memref<256x4096xf64, strided<[4096, 1], offset: ?>>
      memref.copy %subview_8, %subview_9 : memref<256x4096xf64, strided<[4096, 1], offset: ?>> to memref<256x4096xf64, strided<[4096, 1], offset: ?>>
      scf.yield %arg3 : memref<4096x4096xf64>
    }
    scf.yield %7 : memref<4096x4096xf64>
  }
  %2 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c4096 step %c1 {
    scf.for %arg1 = %c0 to %c4096 step %c1 {
      %4 = memref.load %1[%arg0, %arg1] : memref<4096x4096xf64>
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

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c6 = arith.constant 6 : index
    %c1 = arith.constant 1 : index
    %c256 = arith.constant 256 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4096x4096xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4096x4096xf64>)
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c4096 step %c3072 {
      %3 = arith.subi %c4096, %arg0 : index
      %4 = arith.minsi %3, %c3072 : index
      %subview = memref.subview %alloc_2[%arg0, 0] [%4, 4096] [1, 1] : memref<4096x4096xf64> to memref<?x4096xf64, strided<[4096, 1], offset: ?>>
      scf.for %arg1 = %c0 to %c4096 step %c256 {
        %subview_5 = memref.subview %alloc[%arg1, %arg0] [256, %4] [1, 1] : memref<4096x4096xf64> to memref<256x?xf64, strided<[4096, 1], offset: ?>>
        %subview_6 = memref.subview %alloc_3[%arg1, 0] [256, 4096] [1, 1] : memref<4096x4096xf64> to memref<256x4096xf64, strided<[4096, 1], offset: ?>>
        scf.forall (%arg2, %arg3, %arg4) = (0, 0, 0) to (4096, 256, %4) step (6, 8, 3072) {
          %5 = arith.subi %c4096, %arg2 : index
          %6 = arith.minsi %5, %c6 : index
          %7 = arith.subi %4, %arg4 : index
          %8 = arith.minsi %7, %c3072 : index
          %subview_8 = memref.subview %subview_5[%arg3, %arg4] [8, %8] [1, 1] : memref<256x?xf64, strided<[4096, 1], offset: ?>> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %subview_9 = memref.subview %subview[%arg4, %arg2] [%8, %6] [1, 1] : memref<?x4096xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
          %subview_10 = memref.subview %subview_6[%arg3, %arg2] [8, %6] [1, 1] : memref<256x4096xf64, strided<[4096, 1], offset: ?>> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%subview_8, %subview_9 : memref<8x?xf64, strided<[4096, 1], offset: ?>>, memref<?x?xf64, strided<[4096, 1], offset: ?>>) outs(%subview_10 : memref<8x?xf64, strided<[4096, 1], offset: ?>>)
          %subview_11 = memref.subview %subview_6[%arg3, %arg2] [8, %6] [1, 1] : memref<256x4096xf64, strided<[4096, 1], offset: ?>> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          memref.copy %subview_10, %subview_11 : memref<8x?xf64, strided<[4096, 1], offset: ?>> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
        }
        %subview_7 = memref.subview %alloc_3[%arg1, 0] [256, 4096] [1, 1] : memref<4096x4096xf64> to memref<256x4096xf64, strided<[4096, 1], offset: ?>>
        memref.copy %subview_6, %subview_7 : memref<256x4096xf64, strided<[4096, 1], offset: ?>> to memref<256x4096xf64, strided<[4096, 1], offset: ?>>
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<4096x4096xf64>
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
    %c6 = arith.constant 6 : index
    %c1 = arith.constant 1 : index
    %c256 = arith.constant 256 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4096x4096xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4096x4096xf64>)
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c4096 step %c3072 {
      %3 = arith.subi %c4096, %arg0 : index
      %4 = arith.minsi %3, %c3072 : index
      %subview = memref.subview %alloc_2[%arg0, 0] [%4, 4096] [1, 1] : memref<4096x4096xf64> to memref<?x4096xf64, strided<[4096, 1], offset: ?>>
      scf.for %arg1 = %c0 to %c4096 step %c256 {
        %subview_5 = memref.subview %alloc[%arg1, %arg0] [256, %4] [1, 1] : memref<4096x4096xf64> to memref<256x?xf64, strided<[4096, 1], offset: ?>>
        %subview_6 = memref.subview %alloc_3[%arg1, 0] [256, 4096] [1, 1] : memref<4096x4096xf64> to memref<256x4096xf64, strided<[4096, 1], offset: ?>>
        scf.forall (%arg2, %arg3, %arg4) = (0, 0, 0) to (4096, 256, %4) step (6, 8, 3072) {
          %5 = arith.subi %c4096, %arg2 : index
          %6 = arith.minsi %5, %c6 : index
          %7 = arith.subi %4, %arg4 : index
          %8 = arith.minsi %7, %c3072 : index
          %subview_7 = memref.subview %subview_5[%arg3, %arg4] [8, %8] [1, 1] : memref<256x?xf64, strided<[4096, 1], offset: ?>> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %subview_8 = memref.subview %subview[%arg4, %arg2] [%8, %6] [1, 1] : memref<?x4096xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
          %subview_9 = memref.subview %subview_6[%arg3, %arg2] [8, %6] [1, 1] : memref<256x4096xf64, strided<[4096, 1], offset: ?>> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%subview_7, %subview_8 : memref<8x?xf64, strided<[4096, 1], offset: ?>>, memref<?x?xf64, strided<[4096, 1], offset: ?>>) outs(%subview_9 : memref<8x?xf64, strided<[4096, 1], offset: ?>>)
          memref.copy %subview_9, %subview_9 : memref<8x?xf64, strided<[4096, 1], offset: ?>> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
        }
        memref.copy %subview_6, %subview_6 : memref<256x4096xf64, strided<[4096, 1], offset: ?>> to memref<256x4096xf64, strided<[4096, 1], offset: ?>>
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<4096x4096xf64>
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
#map = affine_map<()[s0, s1] -> (s0 + s1)>
module {
  func.func @main() {
    %c6 = arith.constant 6 : index
    %c1 = arith.constant 1 : index
    %c256 = arith.constant 256 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4096x4096xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4096x4096xf64>)
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c4096 step %c3072 {
      %3 = arith.subi %c4096, %arg0 : index
      %4 = arith.minsi %3, %c3072 : index
      scf.for %arg1 = %c0 to %c4096 step %c256 {
        %subview = memref.subview %alloc_3[%arg1, 0] [256, 4096] [1, 1] : memref<4096x4096xf64> to memref<256x4096xf64, strided<[4096, 1], offset: ?>>
        scf.forall (%arg2, %arg3, %arg4) = (0, 0, 0) to (4096, 256, %4) step (6, 8, 3072) {
          %5 = arith.subi %c4096, %arg2 : index
          %6 = arith.minsi %5, %c6 : index
          %7 = arith.subi %4, %arg4 : index
          %8 = arith.minsi %7, %c3072 : index
          %9 = affine.apply #map()[%arg1, %arg3]
          %10 = affine.apply #map()[%arg0, %arg4]
          %subview_5 = memref.subview %alloc[%9, %10] [8, %8] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %11 = affine.apply #map()[%arg0, %arg4]
          %subview_6 = memref.subview %alloc_2[%11, %arg2] [%8, %6] [1, 1] : memref<4096x4096xf64> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
          %12 = affine.apply #map()[%arg1, %arg3]
          %subview_7 = memref.subview %alloc_3[%12, %arg2] [8, %6] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%subview_5, %subview_6 : memref<8x?xf64, strided<[4096, 1], offset: ?>>, memref<?x?xf64, strided<[4096, 1], offset: ?>>) outs(%subview_7 : memref<8x?xf64, strided<[4096, 1], offset: ?>>)
          memref.copy %subview_7, %subview_7 : memref<8x?xf64, strided<[4096, 1], offset: ?>> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
        }
        memref.copy %subview, %subview : memref<256x4096xf64, strided<[4096, 1], offset: ?>> to memref<256x4096xf64, strided<[4096, 1], offset: ?>>
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<4096x4096xf64>
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
#map = affine_map<()[s0, s1] -> (s0 + s1)>
module {
  func.func @main() {
    %c6 = arith.constant 6 : index
    %c1 = arith.constant 1 : index
    %c256 = arith.constant 256 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4096x4096xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4096x4096xf64>)
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c4096 step %c3072 {
      %3 = arith.subi %c4096, %arg0 : index
      %4 = arith.minsi %3, %c3072 : index
      scf.for %arg1 = %c0 to %c4096 step %c256 {
        scf.forall (%arg2, %arg3, %arg4) = (0, 0, 0) to (4096, 256, %4) step (6, 8, 3072) {
          %5 = arith.subi %c4096, %arg2 : index
          %6 = arith.minsi %5, %c6 : index
          %7 = arith.subi %4, %arg4 : index
          %8 = arith.minsi %7, %c3072 : index
          %9 = affine.apply #map()[%arg1, %arg3]
          %10 = affine.apply #map()[%arg0, %arg4]
          %subview = memref.subview %alloc[%9, %10] [8, %8] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %11 = affine.apply #map()[%arg0, %arg4]
          %subview_5 = memref.subview %alloc_2[%11, %arg2] [%8, %6] [1, 1] : memref<4096x4096xf64> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
          %12 = affine.apply #map()[%arg1, %arg3]
          %subview_6 = memref.subview %alloc_3[%12, %arg2] [8, %6] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%subview, %subview_5 : memref<8x?xf64, strided<[4096, 1], offset: ?>>, memref<?x?xf64, strided<[4096, 1], offset: ?>>) outs(%subview_6 : memref<8x?xf64, strided<[4096, 1], offset: ?>>)
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<4096x4096xf64>
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
func.func private @printElapsedTime(f64, f64)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @printF64(f64)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @printElapsedTime(f64, f64)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @getTime() -> f64

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @getTime() -> f64

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func @main() {
  %c6 = arith.constant 6 : index
  %c1 = arith.constant 1 : index
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c4096 = arith.constant 4096 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<4096x4096xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4096x4096xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<4096x4096xf64>)
  %0 = call @getTime() : () -> f64
  scf.for %arg0 = %c0 to %c4096 step %c3072 {
    %3 = arith.subi %c4096, %arg0 : index
    %4 = arith.minsi %3, %c3072 : index
    scf.for %arg1 = %c0 to %c4096 step %c256 {
      scf.forall (%arg2, %arg3, %arg4) = (0, 0, 0) to (4096, 256, %4) step (6, 8, 3072) {
        %5 = arith.subi %c4096, %arg2 : index
        %6 = arith.minsi %5, %c6 : index
        %7 = arith.subi %4, %arg4 : index
        %8 = arith.minsi %7, %c3072 : index
        %9 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%arg1, %arg3]
        %10 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%arg0, %arg4]
        %subview = memref.subview %alloc[%9, %10] [8, %8] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
        %11 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%arg0, %arg4]
        %subview_5 = memref.subview %alloc_2[%11, %arg2] [%8, %6] [1, 1] : memref<4096x4096xf64> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
        %12 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%arg1, %arg3]
        %subview_6 = memref.subview %alloc_3[%12, %arg2] [8, %6] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
        linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%subview, %subview_5 : memref<8x?xf64, strided<[4096, 1], offset: ?>>, memref<?x?xf64, strided<[4096, 1], offset: ?>>) outs(%subview_6 : memref<8x?xf64, strided<[4096, 1], offset: ?>>)
      }
    }
  }
  %1 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c4096 step %c1 {
    scf.for %arg1 = %c0 to %c4096 step %c1 {
      %3 = memref.load %alloc_3[%arg0, %arg1] : memref<4096x4096xf64>
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
  %c8 = arith.constant 8 : index
  %c6 = arith.constant 6 : index
  %c1 = arith.constant 1 : index
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c4096 = arith.constant 4096 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  scf.for %arg0 = %c0 to %c4096 step %c1 {
    scf.for %arg1 = %c0 to %c4096 step %c1 {
      memref.store %cst_1, %alloc[%arg0, %arg1] : memref<4096x4096xf64>
    }
  }
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  scf.for %arg0 = %c0 to %c4096 step %c1 {
    scf.for %arg1 = %c0 to %c4096 step %c1 {
      memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4096x4096xf64>
    }
  }
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  scf.for %arg0 = %c0 to %c4096 step %c1 {
    scf.for %arg1 = %c0 to %c4096 step %c1 {
      memref.store %cst, %alloc_3[%arg0, %arg1] : memref<4096x4096xf64>
    }
  }
  %0 = call @getTime() : () -> f64
  scf.for %arg0 = %c0 to %c4096 step %c3072 {
    %3 = arith.subi %c4096, %arg0 : index
    %4 = arith.minsi %3, %c3072 : index
    scf.for %arg1 = %c0 to %c4096 step %c256 {
      scf.forall (%arg2, %arg3, %arg4) = (0, 0, 0) to (4096, 256, %4) step (6, 8, 3072) {
        %5 = arith.subi %c4096, %arg2 : index
        %6 = arith.minsi %5, %c6 : index
        %7 = arith.subi %4, %arg4 : index
        %8 = arith.minsi %7, %c3072 : index
        %9 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%arg1, %arg3]
        %10 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%arg0, %arg4]
        %subview = memref.subview %alloc[%9, %10] [8, %8] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
        %11 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%arg0, %arg4]
        %subview_5 = memref.subview %alloc_2[%11, %arg2] [%8, %6] [1, 1] : memref<4096x4096xf64> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
        %12 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%arg1, %arg3]
        %subview_6 = memref.subview %alloc_3[%12, %arg2] [8, %6] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
        scf.for %arg5 = %c0 to %c8 step %c1 {
          scf.for %arg6 = %c0 to %6 step %c1 {
            scf.for %arg7 = %c0 to %8 step %c1 {
              %13 = memref.load %subview[%arg5, %arg7] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
              %14 = memref.load %subview_5[%arg7, %arg6] : memref<?x?xf64, strided<[4096, 1], offset: ?>>
              %15 = memref.load %subview_6[%arg5, %arg6] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
              %16 = arith.mulf %13, %14 : f64
              %17 = arith.addf %15, %16 : f64
              memref.store %17, %subview_6[%arg5, %arg6] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
            }
          }
        }
      }
    }
  }
  %1 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c4096 step %c1 {
    scf.for %arg1 = %c0 to %c4096 step %c1 {
      %3 = memref.load %alloc_3[%arg0, %arg1] : memref<4096x4096xf64>
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
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c1 = arith.constant 1 : index
    %c256 = arith.constant 256 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<4096x4096xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4096x4096xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<4096x4096xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c4096 step %c3072 {
      %3 = arith.subi %c4096, %arg0 : index
      %4 = arith.minsi %3, %c3072 : index
      scf.for %arg1 = %c0 to %c4096 step %c256 {
        scf.forall (%arg2, %arg3, %arg4) = (0, 0, 0) to (4096, 256, %4) step (6, 8, 3072) {
          %5 = arith.subi %c4096, %arg2 : index
          %6 = arith.minsi %5, %c6 : index
          %7 = arith.subi %4, %arg4 : index
          %8 = arith.minsi %7, %c3072 : index
          %9 = arith.addi %arg1, %arg3 : index
          %10 = arith.addi %arg0, %arg4 : index
          %subview = memref.subview %alloc[%9, %10] [8, %8] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %11 = arith.addi %arg0, %arg4 : index
          %subview_5 = memref.subview %alloc_2[%11, %arg2] [%8, %6] [1, 1] : memref<4096x4096xf64> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
          %12 = arith.addi %arg1, %arg3 : index
          %subview_6 = memref.subview %alloc_3[%12, %arg2] [8, %6] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          scf.for %arg5 = %c0 to %c8 step %c1 {
            scf.for %arg6 = %c0 to %6 step %c1 {
              scf.for %arg7 = %c0 to %8 step %c1 {
                %13 = memref.load %subview[%arg5, %arg7] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
                %14 = memref.load %subview_5[%arg7, %arg6] : memref<?x?xf64, strided<[4096, 1], offset: ?>>
                %15 = memref.load %subview_6[%arg5, %arg6] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
                %16 = arith.mulf %13, %14 : f64
                %17 = arith.addf %15, %16 : f64
                memref.store %17, %subview_6[%arg5, %arg6] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
              }
            }
          }
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<4096x4096xf64>
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
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c1 = arith.constant 1 : index
    %c256 = arith.constant 256 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<4096x4096xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4096x4096xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<4096x4096xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c4096 step %c3072 {
      %3 = arith.subi %c4096, %arg0 : index
      %4 = arith.minsi %3, %c3072 : index
      scf.for %arg1 = %c0 to %c4096 step %c256 {
        %c0_5 = arith.constant 0 : index
        %c0_6 = arith.constant 0 : index
        %c0_7 = arith.constant 0 : index
        %c4096_8 = arith.constant 4096 : index
        %c256_9 = arith.constant 256 : index
        %c6_10 = arith.constant 6 : index
        %c8_11 = arith.constant 8 : index
        %c3072_12 = arith.constant 3072 : index
        scf.parallel (%arg2, %arg3, %arg4) = (%c0_5, %c0_6, %c0_7) to (%c4096_8, %c256_9, %4) step (%c6_10, %c8_11, %c3072_12) {
          %5 = arith.subi %c4096, %arg2 : index
          %6 = arith.minsi %5, %c6 : index
          %7 = arith.subi %4, %arg4 : index
          %8 = arith.minsi %7, %c3072 : index
          %9 = arith.addi %arg1, %arg3 : index
          %10 = arith.addi %arg0, %arg4 : index
          %subview = memref.subview %alloc[%9, %10] [8, %8] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %11 = arith.addi %arg0, %arg4 : index
          %subview_13 = memref.subview %alloc_2[%11, %arg2] [%8, %6] [1, 1] : memref<4096x4096xf64> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
          %12 = arith.addi %arg1, %arg3 : index
          %subview_14 = memref.subview %alloc_3[%12, %arg2] [8, %6] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          scf.for %arg5 = %c0 to %c8 step %c1 {
            scf.for %arg6 = %c0 to %6 step %c1 {
              scf.for %arg7 = %c0 to %8 step %c1 {
                %13 = memref.load %subview[%arg5, %arg7] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
                %14 = memref.load %subview_13[%arg7, %arg6] : memref<?x?xf64, strided<[4096, 1], offset: ?>>
                %15 = memref.load %subview_14[%arg5, %arg6] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
                %16 = arith.mulf %13, %14 : f64
                %17 = arith.addf %15, %16 : f64
                memref.store %17, %subview_14[%arg5, %arg6] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
              }
            }
          }
          scf.reduce 
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<4096x4096xf64>
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


// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
module {
  func.func @main() {
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c1 = arith.constant 1 : index
    %c256 = arith.constant 256 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<4096x4096xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4096x4096xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<4096x4096xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    %c0_4 = arith.constant 0 : index
    %c0_5 = arith.constant 0 : index
    %c0_6 = arith.constant 0 : index
    %c4096_7 = arith.constant 4096 : index
    %c256_8 = arith.constant 256 : index
    %c6_9 = arith.constant 6 : index
    %c8_10 = arith.constant 8 : index
    %c3072_11 = arith.constant 3072 : index
    scf.for %arg0 = %c0 to %c4096 step %c3072 {
      %3 = arith.subi %c4096, %arg0 : index
      %4 = arith.minsi %3, %c3072 : index
      scf.for %arg1 = %c0 to %c4096 step %c256 {
        scf.parallel (%arg2, %arg3, %arg4) = (%c0_4, %c0_5, %c0_6) to (%c4096_7, %c256_8, %4) step (%c6_9, %c8_10, %c3072_11) {
          %5 = arith.subi %c4096, %arg2 : index
          %6 = arith.minsi %5, %c6 : index
          %7 = arith.subi %4, %arg4 : index
          %8 = arith.minsi %7, %c3072 : index
          %9 = arith.addi %arg1, %arg3 : index
          %10 = arith.addi %arg0, %arg4 : index
          %subview = memref.subview %alloc[%9, %10] [8, %8] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %11 = arith.addi %arg0, %arg4 : index
          %subview_13 = memref.subview %alloc_2[%11, %arg2] [%8, %6] [1, 1] : memref<4096x4096xf64> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
          %12 = arith.addi %arg1, %arg3 : index
          %subview_14 = memref.subview %alloc_3[%12, %arg2] [8, %6] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          scf.for %arg5 = %c0 to %c8 step %c1 {
            scf.for %arg6 = %c0 to %6 step %c1 {
              scf.for %arg7 = %c0 to %8 step %c1 {
                %13 = memref.load %subview[%arg5, %arg7] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
                %14 = memref.load %subview_13[%arg7, %arg6] : memref<?x?xf64, strided<[4096, 1], offset: ?>>
                %15 = memref.load %subview_14[%arg5, %arg6] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
                %16 = arith.mulf %13, %14 : f64
                %17 = arith.addf %15, %16 : f64
                memref.store %17, %subview_14[%arg5, %arg6] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
              }
            }
          }
          scf.reduce 
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_12 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_12[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<4096x4096xf64>
        %4 = memref.load %alloc_12[%c0] : memref<1xf64>
        %5 = arith.addf %3, %4 : f64
        memref.store %5, %alloc_12[%c0] : memref<1xf64>
      }
    }
    %2 = memref.load %alloc_12[%c0] : memref<1xf64>
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
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c1 = arith.constant 1 : index
    %c256 = arith.constant 256 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<4096x4096xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4096x4096xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<4096x4096xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c4096 step %c3072 {
      %3 = arith.subi %c4096, %arg0 : index
      %4 = arith.minsi %3, %c3072 : index
      scf.for %arg1 = %c0 to %c4096 step %c256 {
        scf.parallel (%arg2, %arg3, %arg4) = (%c0, %c0, %c0) to (%c4096, %c256, %4) step (%c6, %c8, %c3072) {
          %5 = arith.subi %c4096, %arg2 : index
          %6 = arith.minsi %5, %c6 : index
          %7 = arith.subi %4, %arg4 : index
          %8 = arith.minsi %7, %c3072 : index
          %9 = arith.addi %arg1, %arg3 : index
          %10 = arith.addi %arg0, %arg4 : index
          %subview = memref.subview %alloc[%9, %10] [8, %8] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %11 = arith.addi %arg0, %arg4 : index
          %subview_5 = memref.subview %alloc_2[%11, %arg2] [%8, %6] [1, 1] : memref<4096x4096xf64> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
          %12 = arith.addi %arg1, %arg3 : index
          %subview_6 = memref.subview %alloc_3[%12, %arg2] [8, %6] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          scf.for %arg5 = %c0 to %c8 step %c1 {
            scf.for %arg6 = %c0 to %6 step %c1 {
              scf.for %arg7 = %c0 to %8 step %c1 {
                %13 = memref.load %subview[%arg5, %arg7] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
                %14 = memref.load %subview_5[%arg7, %arg6] : memref<?x?xf64, strided<[4096, 1], offset: ?>>
                %15 = memref.load %subview_6[%arg5, %arg6] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
                %16 = arith.mulf %13, %14 : f64
                %17 = arith.addf %15, %16 : f64
                memref.store %17, %subview_6[%arg5, %arg6] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
              }
            }
          }
          scf.reduce 
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<4096x4096xf64>
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
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c1 = arith.constant 1 : index
    %c256 = arith.constant 256 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<4096x4096xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4096x4096xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<4096x4096xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c4096 step %c3072 {
      %3 = arith.subi %c4096, %arg0 : index
      %4 = arith.minsi %3, %c3072 : index
      scf.for %arg1 = %c0 to %c4096 step %c256 {
        scf.parallel (%arg2, %arg3, %arg4) = (%c0, %c0, %c0) to (%c4096, %c256, %4) step (%c6, %c8, %c3072) {
          %5 = arith.subi %c4096, %arg2 : index
          %6 = arith.minsi %5, %c6 : index
          %7 = arith.subi %4, %arg4 : index
          %8 = arith.minsi %7, %c3072 : index
          %9 = arith.addi %arg1, %arg3 : index
          %10 = arith.addi %arg0, %arg4 : index
          %subview = memref.subview %alloc[%9, %10] [8, %8] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %11 = arith.addi %arg0, %arg4 : index
          %subview_5 = memref.subview %alloc_2[%11, %arg2] [%8, %6] [1, 1] : memref<4096x4096xf64> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
          %12 = arith.addi %arg1, %arg3 : index
          %subview_6 = memref.subview %alloc_3[%12, %arg2] [8, %6] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          scf.for %arg5 = %c0 to %c8 step %c1 {
            scf.for %arg6 = %c0 to %6 step %c1 {
              scf.for %arg7 = %c0 to %8 step %c1 {
                %13 = memref.load %subview[%arg5, %arg7] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
                %14 = memref.load %subview_5[%arg7, %arg6] : memref<?x?xf64, strided<[4096, 1], offset: ?>>
                %15 = memref.load %subview_6[%arg5, %arg6] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
                %16 = arith.mulf %13, %14 : f64
                %17 = arith.addf %15, %16 : f64
                memref.store %17, %subview_6[%arg5, %arg6] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
              }
            }
          }
          scf.reduce 
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<4096x4096xf64>
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
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c1 = arith.constant 1 : index
    %c256 = arith.constant 256 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<4096x4096xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4096x4096xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<4096x4096xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c4096 step %c3072 {
      %3 = arith.subi %c4096, %arg0 : index
      %4 = arith.minsi %3, %c3072 : index
      scf.for %arg1 = %c0 to %c4096 step %c256 {
        %5 = llvm.mlir.constant(1 : i64) : i64
        omp.parallel {
          omp.wsloop {
            omp.loop_nest (%arg2, %arg3, %arg4) : index = (%c0, %c0, %c0) to (%c4096, %c256, %4) step (%c6, %c8, %c3072) {
              memref.alloca_scope  {
                %6 = arith.subi %c4096, %arg2 : index
                %7 = arith.minsi %6, %c6 : index
                %8 = arith.subi %4, %arg4 : index
                %9 = arith.minsi %8, %c3072 : index
                %10 = arith.addi %arg1, %arg3 : index
                %11 = arith.addi %arg0, %arg4 : index
                %subview = memref.subview %alloc[%10, %11] [8, %9] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
                %12 = arith.addi %arg0, %arg4 : index
                %subview_5 = memref.subview %alloc_2[%12, %arg2] [%9, %7] [1, 1] : memref<4096x4096xf64> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
                %13 = arith.addi %arg1, %arg3 : index
                %subview_6 = memref.subview %alloc_3[%13, %arg2] [8, %7] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
                scf.for %arg5 = %c0 to %c8 step %c1 {
                  scf.for %arg6 = %c0 to %7 step %c1 {
                    scf.for %arg7 = %c0 to %9 step %c1 {
                      %14 = memref.load %subview[%arg5, %arg7] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
                      %15 = memref.load %subview_5[%arg7, %arg6] : memref<?x?xf64, strided<[4096, 1], offset: ?>>
                      %16 = memref.load %subview_6[%arg5, %arg6] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
                      %17 = arith.mulf %14, %15 : f64
                      %18 = arith.addf %16, %17 : f64
                      memref.store %18, %subview_6[%arg5, %arg6] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
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
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<4096x4096xf64>
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
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c1 = arith.constant 1 : index
    %c256 = arith.constant 256 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<4096x4096xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4096x4096xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<4096x4096xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c4096 step %c3072 {
      %3 = arith.subi %c4096, %arg0 : index
      %4 = arith.minsi %3, %c3072 : index
      scf.for %arg1 = %c0 to %c4096 step %c256 {
        omp.parallel {
          omp.wsloop {
            omp.loop_nest (%arg2, %arg3, %arg4) : index = (%c0, %c0, %c0) to (%c4096, %c256, %4) step (%c6, %c8, %c3072) {
              %5 = arith.subi %c4096, %arg2 : index
              %6 = arith.minsi %5, %c6 : index
              %7 = arith.subi %4, %arg4 : index
              %8 = arith.minsi %7, %c3072 : index
              %9 = arith.addi %arg1, %arg3 : index
              %10 = arith.addi %arg0, %arg4 : index
              %subview = memref.subview %alloc[%9, %10] [8, %8] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
              %11 = arith.addi %arg0, %arg4 : index
              %subview_5 = memref.subview %alloc_2[%11, %arg2] [%8, %6] [1, 1] : memref<4096x4096xf64> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
              %12 = arith.addi %arg1, %arg3 : index
              %subview_6 = memref.subview %alloc_3[%12, %arg2] [8, %6] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
              scf.for %arg5 = %c0 to %c8 step %c1 {
                scf.for %arg6 = %c0 to %6 step %c1 {
                  scf.for %arg7 = %c0 to %8 step %c1 {
                    %13 = memref.load %subview[%arg5, %arg7] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
                    %14 = memref.load %subview_5[%arg7, %arg6] : memref<?x?xf64, strided<[4096, 1], offset: ?>>
                    %15 = memref.load %subview_6[%arg5, %arg6] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
                    %16 = arith.mulf %13, %14 : f64
                    %17 = arith.addf %15, %16 : f64
                    memref.store %17, %subview_6[%arg5, %arg6] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
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
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<4096x4096xf64>
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
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c1 = arith.constant 1 : index
    %c256 = arith.constant 256 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<4096x4096xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4096x4096xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<4096x4096xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c4096 step %c3072 {
      %3 = arith.subi %c4096, %arg0 : index
      %4 = arith.minsi %3, %c3072 : index
      scf.for %arg1 = %c0 to %c4096 step %c256 {
        omp.parallel {
          omp.wsloop {
            omp.loop_nest (%arg2, %arg3, %arg4) : index = (%c0, %c0, %c0) to (%c4096, %c256, %4) step (%c6, %c8, %c3072) {
              %5 = arith.subi %c4096, %arg2 : index
              %6 = arith.minsi %5, %c6 : index
              %7 = arith.subi %4, %arg4 : index
              %8 = arith.minsi %7, %c3072 : index
              %9 = arith.addi %arg1, %arg3 : index
              %10 = arith.addi %arg0, %arg4 : index
              %subview = memref.subview %alloc[%9, %10] [8, %8] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
              %subview_5 = memref.subview %alloc_2[%10, %arg2] [%8, %6] [1, 1] : memref<4096x4096xf64> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
              %subview_6 = memref.subview %alloc_3[%9, %arg2] [8, %6] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
              scf.for %arg5 = %c0 to %c8 step %c1 {
                scf.for %arg6 = %c0 to %6 step %c1 {
                  scf.for %arg7 = %c0 to %8 step %c1 {
                    %11 = memref.load %subview[%arg5, %arg7] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
                    %12 = memref.load %subview_5[%arg7, %arg6] : memref<?x?xf64, strided<[4096, 1], offset: ?>>
                    %13 = memref.load %subview_6[%arg5, %arg6] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
                    %14 = arith.mulf %11, %12 : f64
                    %15 = arith.addf %13, %14 : f64
                    memref.store %15, %subview_6[%arg5, %arg6] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
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
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<4096x4096xf64>
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
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c1 = arith.constant 1 : index
    %c256 = arith.constant 256 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c4096 : index
    cf.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c4096 : index
    cf.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<4096x4096xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb3(%4 : index)
  ^bb5:  // pred: ^bb3
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb6:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
    %7 = arith.cmpi slt, %6, %c4096 : index
    cf.cond_br %7, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
    %9 = arith.cmpi slt, %8, %c4096 : index
    cf.cond_br %9, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    memref.store %cst_0, %alloc_2[%6, %8] : memref<4096x4096xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb9(%10 : index)
  ^bb11:  // pred: ^bb9
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb7(%11 : index)
  ^bb12:  // pred: ^bb7
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c4096 : index
    cf.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c4096 : index
    cf.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<4096x4096xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    %18 = call @getTime() : () -> f64
    cf.br ^bb19(%c0 : index)
  ^bb19(%19: index):  // 2 preds: ^bb18, ^bb23
    %20 = arith.cmpi slt, %19, %c4096 : index
    cf.cond_br %20, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %21 = arith.subi %c4096, %19 : index
    %22 = arith.minsi %21, %c3072 : index
    cf.br ^bb21(%c0 : index)
  ^bb21(%23: index):  // 2 preds: ^bb20, ^bb22
    %24 = arith.cmpi slt, %23, %c4096 : index
    cf.cond_br %24, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0, %arg1, %arg2) : index = (%c0, %c0, %c0) to (%c4096, %c256, %22) step (%c6, %c8, %c3072) {
          %38 = arith.subi %c4096, %arg0 : index
          %39 = arith.minsi %38, %c6 : index
          %40 = arith.subi %22, %arg2 : index
          %41 = arith.minsi %40, %c3072 : index
          %42 = arith.addi %23, %arg1 : index
          %43 = arith.addi %19, %arg2 : index
          %subview = memref.subview %alloc[%42, %43] [8, %41] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %subview_5 = memref.subview %alloc_2[%43, %arg0] [%41, %39] [1, 1] : memref<4096x4096xf64> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%42, %arg0] [8, %39] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          cf.br ^bb1(%c0 : index)
        ^bb1(%44: index):  // 2 preds: ^bb0, ^bb8
          %45 = arith.cmpi slt, %44, %c8 : index
          cf.cond_br %45, ^bb2, ^bb9
        ^bb2:  // pred: ^bb1
          cf.br ^bb3(%c0 : index)
        ^bb3(%46: index):  // 2 preds: ^bb2, ^bb7
          %47 = arith.cmpi slt, %46, %39 : index
          cf.cond_br %47, ^bb4, ^bb8
        ^bb4:  // pred: ^bb3
          cf.br ^bb5(%c0 : index)
        ^bb5(%48: index):  // 2 preds: ^bb4, ^bb6
          %49 = arith.cmpi slt, %48, %41 : index
          cf.cond_br %49, ^bb6, ^bb7
        ^bb6:  // pred: ^bb5
          %50 = memref.load %subview[%44, %48] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %51 = memref.load %subview_5[%48, %46] : memref<?x?xf64, strided<[4096, 1], offset: ?>>
          %52 = memref.load %subview_6[%44, %46] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %53 = arith.mulf %50, %51 : f64
          %54 = arith.addf %52, %53 : f64
          memref.store %54, %subview_6[%44, %46] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %55 = arith.addi %48, %c1 : index
          cf.br ^bb5(%55 : index)
        ^bb7:  // pred: ^bb5
          %56 = arith.addi %46, %c1 : index
          cf.br ^bb3(%56 : index)
        ^bb8:  // pred: ^bb3
          %57 = arith.addi %44, %c1 : index
          cf.br ^bb1(%57 : index)
        ^bb9:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %25 = arith.addi %23, %c256 : index
    cf.br ^bb21(%25 : index)
  ^bb23:  // pred: ^bb21
    %26 = arith.addi %19, %c3072 : index
    cf.br ^bb19(%26 : index)
  ^bb24:  // pred: ^bb19
    %27 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%28: index):  // 2 preds: ^bb24, ^bb29
    %29 = arith.cmpi slt, %28, %c4096 : index
    cf.cond_br %29, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%30: index):  // 2 preds: ^bb26, ^bb28
    %31 = arith.cmpi slt, %30, %c4096 : index
    cf.cond_br %31, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %32 = memref.load %alloc_3[%28, %30] : memref<4096x4096xf64>
    %33 = memref.load %alloc_4[%c0] : memref<1xf64>
    %34 = arith.addf %32, %33 : f64
    memref.store %34, %alloc_4[%c0] : memref<1xf64>
    %35 = arith.addi %30, %c1 : index
    cf.br ^bb27(%35 : index)
  ^bb29:  // pred: ^bb27
    %36 = arith.addi %28, %c1 : index
    cf.br ^bb25(%36 : index)
  ^bb30:  // pred: ^bb25
    %37 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%37) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%18, %27) : (f64, f64) -> ()
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
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c1 = arith.constant 1 : index
    %c256 = arith.constant 256 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c4096 : index
    cf.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c4096 : index
    cf.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<4096x4096xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb3(%4 : index)
  ^bb5:  // pred: ^bb3
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb6:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
    %7 = arith.cmpi slt, %6, %c4096 : index
    cf.cond_br %7, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
    %9 = arith.cmpi slt, %8, %c4096 : index
    cf.cond_br %9, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    memref.store %cst_0, %alloc_2[%6, %8] : memref<4096x4096xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb9(%10 : index)
  ^bb11:  // pred: ^bb9
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb7(%11 : index)
  ^bb12:  // pred: ^bb7
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c4096 : index
    cf.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c4096 : index
    cf.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<4096x4096xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    %18 = call @getTime() : () -> f64
    cf.br ^bb19(%c0 : index)
  ^bb19(%19: index):  // 2 preds: ^bb18, ^bb23
    %20 = arith.cmpi slt, %19, %c4096 : index
    cf.cond_br %20, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %21 = arith.subi %c4096, %19 : index
    %22 = arith.minsi %21, %c3072 : index
    cf.br ^bb21(%c0 : index)
  ^bb21(%23: index):  // 2 preds: ^bb20, ^bb22
    %24 = arith.cmpi slt, %23, %c4096 : index
    cf.cond_br %24, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0, %arg1, %arg2) : index = (%c0, %c0, %c0) to (%c4096, %c256, %22) step (%c6, %c8, %c3072) {
          %38 = arith.subi %c4096, %arg0 : index
          %39 = arith.minsi %38, %c6 : index
          %40 = arith.subi %22, %arg2 : index
          %41 = arith.minsi %40, %c3072 : index
          %42 = arith.addi %23, %arg1 : index
          %43 = arith.addi %19, %arg2 : index
          %subview = memref.subview %alloc[%42, %43] [8, %41] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %subview_5 = memref.subview %alloc_2[%43, %arg0] [%41, %39] [1, 1] : memref<4096x4096xf64> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%42, %arg0] [8, %39] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          cf.br ^bb1(%c0 : index)
        ^bb1(%44: index):  // 2 preds: ^bb0, ^bb8
          %45 = arith.cmpi slt, %44, %c8 : index
          cf.cond_br %45, ^bb2, ^bb9
        ^bb2:  // pred: ^bb1
          cf.br ^bb3(%c0 : index)
        ^bb3(%46: index):  // 2 preds: ^bb2, ^bb7
          %47 = arith.cmpi slt, %46, %39 : index
          cf.cond_br %47, ^bb4, ^bb8
        ^bb4:  // pred: ^bb3
          cf.br ^bb5(%c0 : index)
        ^bb5(%48: index):  // 2 preds: ^bb4, ^bb6
          %49 = arith.cmpi slt, %48, %41 : index
          cf.cond_br %49, ^bb6, ^bb7
        ^bb6:  // pred: ^bb5
          %50 = memref.load %subview[%44, %48] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %51 = memref.load %subview_5[%48, %46] : memref<?x?xf64, strided<[4096, 1], offset: ?>>
          %52 = memref.load %subview_6[%44, %46] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %53 = arith.mulf %50, %51 : f64
          %54 = arith.addf %52, %53 : f64
          memref.store %54, %subview_6[%44, %46] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %55 = arith.addi %48, %c1 : index
          cf.br ^bb5(%55 : index)
        ^bb7:  // pred: ^bb5
          %56 = arith.addi %46, %c1 : index
          cf.br ^bb3(%56 : index)
        ^bb8:  // pred: ^bb3
          %57 = arith.addi %44, %c1 : index
          cf.br ^bb1(%57 : index)
        ^bb9:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %25 = arith.addi %23, %c256 : index
    cf.br ^bb21(%25 : index)
  ^bb23:  // pred: ^bb21
    %26 = arith.addi %19, %c3072 : index
    cf.br ^bb19(%26 : index)
  ^bb24:  // pred: ^bb19
    %27 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%28: index):  // 2 preds: ^bb24, ^bb29
    %29 = arith.cmpi slt, %28, %c4096 : index
    cf.cond_br %29, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%30: index):  // 2 preds: ^bb26, ^bb28
    %31 = arith.cmpi slt, %30, %c4096 : index
    cf.cond_br %31, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %32 = memref.load %alloc_3[%28, %30] : memref<4096x4096xf64>
    %33 = memref.load %alloc_4[%c0] : memref<1xf64>
    %34 = arith.addf %32, %33 : f64
    memref.store %34, %alloc_4[%c0] : memref<1xf64>
    %35 = arith.addi %30, %c1 : index
    cf.br ^bb27(%35 : index)
  ^bb29:  // pred: ^bb27
    %36 = arith.addi %28, %c1 : index
    cf.br ^bb25(%36 : index)
  ^bb30:  // pred: ^bb25
    %37 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%37) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%18, %27) : (f64, f64) -> ()
    return
  }
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @printF64(f64)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @getTime() -> f64

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @printElapsedTime(f64, f64)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func @main() {
  %c8 = arith.constant 8 : index
  %c6 = arith.constant 6 : index
  %c1 = arith.constant 1 : index
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c4096 = arith.constant 4096 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  cf.br ^bb1(%c0 : index)
^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
  %1 = arith.cmpi slt, %0, %c4096 : index
  cf.cond_br %1, ^bb2, ^bb6
^bb2:  // pred: ^bb1
  cf.br ^bb3(%c0 : index)
^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
  %3 = arith.cmpi slt, %2, %c4096 : index
  cf.cond_br %3, ^bb4, ^bb5
^bb4:  // pred: ^bb3
  memref.store %cst_1, %alloc[%0, %2] : memref<4096x4096xf64>
  %4 = arith.addi %2, %c1 : index
  cf.br ^bb3(%4 : index)
^bb5:  // pred: ^bb3
  %5 = arith.addi %0, %c1 : index
  cf.br ^bb1(%5 : index)
^bb6:  // pred: ^bb1
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  cf.br ^bb7(%c0 : index)
^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
  %7 = arith.cmpi slt, %6, %c4096 : index
  cf.cond_br %7, ^bb8, ^bb12
^bb8:  // pred: ^bb7
  cf.br ^bb9(%c0 : index)
^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
  %9 = arith.cmpi slt, %8, %c4096 : index
  cf.cond_br %9, ^bb10, ^bb11
^bb10:  // pred: ^bb9
  memref.store %cst_0, %alloc_2[%6, %8] : memref<4096x4096xf64>
  %10 = arith.addi %8, %c1 : index
  cf.br ^bb9(%10 : index)
^bb11:  // pred: ^bb9
  %11 = arith.addi %6, %c1 : index
  cf.br ^bb7(%11 : index)
^bb12:  // pred: ^bb7
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
  cf.br ^bb13(%c0 : index)
^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
  %13 = arith.cmpi slt, %12, %c4096 : index
  cf.cond_br %13, ^bb14, ^bb18
^bb14:  // pred: ^bb13
  cf.br ^bb15(%c0 : index)
^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
  %15 = arith.cmpi slt, %14, %c4096 : index
  cf.cond_br %15, ^bb16, ^bb17
^bb16:  // pred: ^bb15
  memref.store %cst, %alloc_3[%12, %14] : memref<4096x4096xf64>
  %16 = arith.addi %14, %c1 : index
  cf.br ^bb15(%16 : index)
^bb17:  // pred: ^bb15
  %17 = arith.addi %12, %c1 : index
  cf.br ^bb13(%17 : index)
^bb18:  // pred: ^bb13
  %18 = call @getTime() : () -> f64
  cf.br ^bb19(%c0 : index)
^bb19(%19: index):  // 2 preds: ^bb18, ^bb23
  %20 = arith.cmpi slt, %19, %c4096 : index
  cf.cond_br %20, ^bb20, ^bb24
^bb20:  // pred: ^bb19
  %21 = arith.subi %c4096, %19 : index
  %22 = arith.minsi %21, %c3072 : index
  cf.br ^bb21(%c0 : index)
^bb21(%23: index):  // 2 preds: ^bb20, ^bb22
  %24 = arith.cmpi slt, %23, %c4096 : index
  cf.cond_br %24, ^bb22, ^bb23
^bb22:  // pred: ^bb21
  omp.parallel {
    omp.wsloop {
      omp.loop_nest (%arg0, %arg1, %arg2) : index = (%c0, %c0, %c0) to (%c4096, %c256, %22) step (%c6, %c8, %c3072) {
        %38 = arith.subi %c4096, %arg0 : index
        %39 = arith.minsi %38, %c6 : index
        %40 = arith.subi %22, %arg2 : index
        %41 = arith.minsi %40, %c3072 : index
        %42 = arith.addi %23, %arg1 : index
        %43 = arith.addi %19, %arg2 : index
        %subview = memref.subview %alloc[%42, %43] [8, %41] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
        %subview_5 = memref.subview %alloc_2[%43, %arg0] [%41, %39] [1, 1] : memref<4096x4096xf64> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
        %subview_6 = memref.subview %alloc_3[%42, %arg0] [8, %39] [1, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
        cf.br ^bb1(%c0 : index)
      ^bb1(%44: index):  // 2 preds: ^bb0, ^bb8
        %45 = arith.cmpi slt, %44, %c8 : index
        cf.cond_br %45, ^bb2, ^bb9
      ^bb2:  // pred: ^bb1
        cf.br ^bb3(%c0 : index)
      ^bb3(%46: index):  // 2 preds: ^bb2, ^bb7
        %47 = arith.cmpi slt, %46, %39 : index
        cf.cond_br %47, ^bb4, ^bb8
      ^bb4:  // pred: ^bb3
        cf.br ^bb5(%c0 : index)
      ^bb5(%48: index):  // 2 preds: ^bb4, ^bb6
        %49 = arith.cmpi slt, %48, %41 : index
        cf.cond_br %49, ^bb6, ^bb7
      ^bb6:  // pred: ^bb5
        %50 = memref.load %subview[%44, %48] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
        %51 = memref.load %subview_5[%48, %46] : memref<?x?xf64, strided<[4096, 1], offset: ?>>
        %52 = memref.load %subview_6[%44, %46] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
        %53 = arith.mulf %50, %51 : f64
        %54 = arith.addf %52, %53 : f64
        memref.store %54, %subview_6[%44, %46] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
        %55 = arith.addi %48, %c1 : index
        cf.br ^bb5(%55 : index)
      ^bb7:  // pred: ^bb5
        %56 = arith.addi %46, %c1 : index
        cf.br ^bb3(%56 : index)
      ^bb8:  // pred: ^bb3
        %57 = arith.addi %44, %c1 : index
        cf.br ^bb1(%57 : index)
      ^bb9:  // pred: ^bb1
        omp.yield
      }
      omp.terminator
    }
    omp.terminator
  }
  %25 = arith.addi %23, %c256 : index
  cf.br ^bb21(%25 : index)
^bb23:  // pred: ^bb21
  %26 = arith.addi %19, %c3072 : index
  cf.br ^bb19(%26 : index)
^bb24:  // pred: ^bb19
  %27 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  cf.br ^bb25(%c0 : index)
^bb25(%28: index):  // 2 preds: ^bb24, ^bb29
  %29 = arith.cmpi slt, %28, %c4096 : index
  cf.cond_br %29, ^bb26, ^bb30
^bb26:  // pred: ^bb25
  cf.br ^bb27(%c0 : index)
^bb27(%30: index):  // 2 preds: ^bb26, ^bb28
  %31 = arith.cmpi slt, %30, %c4096 : index
  cf.cond_br %31, ^bb28, ^bb29
^bb28:  // pred: ^bb27
  %32 = memref.load %alloc_3[%28, %30] : memref<4096x4096xf64>
  %33 = memref.load %alloc_4[%c0] : memref<1xf64>
  %34 = arith.addf %32, %33 : f64
  memref.store %34, %alloc_4[%c0] : memref<1xf64>
  %35 = arith.addi %30, %c1 : index
  cf.br ^bb27(%35 : index)
^bb29:  // pred: ^bb27
  %36 = arith.addi %28, %c1 : index
  cf.br ^bb25(%36 : index)
^bb30:  // pred: ^bb25
  %37 = memref.load %alloc_4[%c0] : memref<1xf64>
  call @printF64(%37) : (f64) -> ()
  call @printNewline() : () -> ()
  call @printElapsedTime(%18, %27) : (f64, f64) -> ()
  return
}

// -----// IR Dump After ExpandStridedMetadata (expand-strided-metadata) //----- //
#map = affine_map<()[s0, s1] -> (s0 * 4096 + s1)>
module {
  func.func @main() {
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c1 = arith.constant 1 : index
    %c256 = arith.constant 256 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c4096 : index
    cf.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c4096 : index
    cf.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<4096x4096xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb3(%4 : index)
  ^bb5:  // pred: ^bb3
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb6:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
    %7 = arith.cmpi slt, %6, %c4096 : index
    cf.cond_br %7, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
    %9 = arith.cmpi slt, %8, %c4096 : index
    cf.cond_br %9, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    memref.store %cst_0, %alloc_2[%6, %8] : memref<4096x4096xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb9(%10 : index)
  ^bb11:  // pred: ^bb9
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb7(%11 : index)
  ^bb12:  // pred: ^bb7
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c4096 : index
    cf.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c4096 : index
    cf.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<4096x4096xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    %18 = call @getTime() : () -> f64
    cf.br ^bb19(%c0 : index)
  ^bb19(%19: index):  // 2 preds: ^bb18, ^bb23
    %20 = arith.cmpi slt, %19, %c4096 : index
    cf.cond_br %20, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %21 = arith.subi %c4096, %19 : index
    %22 = arith.minsi %21, %c3072 : index
    cf.br ^bb21(%c0 : index)
  ^bb21(%23: index):  // 2 preds: ^bb20, ^bb22
    %24 = arith.cmpi slt, %23, %c4096 : index
    cf.cond_br %24, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0, %arg1, %arg2) : index = (%c0, %c0, %c0) to (%c4096, %c256, %22) step (%c6, %c8, %c3072) {
          %38 = arith.subi %c4096, %arg0 : index
          %39 = arith.minsi %38, %c6 : index
          %40 = arith.subi %22, %arg2 : index
          %41 = arith.minsi %40, %c3072 : index
          %42 = arith.addi %23, %arg1 : index
          %43 = arith.addi %19, %arg2 : index
          %44 = affine.apply #map()[%42, %43]
          %reinterpret_cast = memref.reinterpret_cast %alloc to offset: [%44], sizes: [8, %41], strides: [4096, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %45 = affine.apply #map()[%43, %arg0]
          %reinterpret_cast_5 = memref.reinterpret_cast %alloc_2 to offset: [%45], sizes: [%41, %39], strides: [4096, 1] : memref<4096x4096xf64> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
          %46 = affine.apply #map()[%42, %arg0]
          %reinterpret_cast_6 = memref.reinterpret_cast %alloc_3 to offset: [%46], sizes: [8, %39], strides: [4096, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          cf.br ^bb1(%c0 : index)
        ^bb1(%47: index):  // 2 preds: ^bb0, ^bb8
          %48 = arith.cmpi slt, %47, %c8 : index
          cf.cond_br %48, ^bb2, ^bb9
        ^bb2:  // pred: ^bb1
          cf.br ^bb3(%c0 : index)
        ^bb3(%49: index):  // 2 preds: ^bb2, ^bb7
          %50 = arith.cmpi slt, %49, %39 : index
          cf.cond_br %50, ^bb4, ^bb8
        ^bb4:  // pred: ^bb3
          cf.br ^bb5(%c0 : index)
        ^bb5(%51: index):  // 2 preds: ^bb4, ^bb6
          %52 = arith.cmpi slt, %51, %41 : index
          cf.cond_br %52, ^bb6, ^bb7
        ^bb6:  // pred: ^bb5
          %53 = memref.load %reinterpret_cast[%47, %51] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %54 = memref.load %reinterpret_cast_5[%51, %49] : memref<?x?xf64, strided<[4096, 1], offset: ?>>
          %55 = memref.load %reinterpret_cast_6[%47, %49] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %56 = arith.mulf %53, %54 : f64
          %57 = arith.addf %55, %56 : f64
          memref.store %57, %reinterpret_cast_6[%47, %49] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %58 = arith.addi %51, %c1 : index
          cf.br ^bb5(%58 : index)
        ^bb7:  // pred: ^bb5
          %59 = arith.addi %49, %c1 : index
          cf.br ^bb3(%59 : index)
        ^bb8:  // pred: ^bb3
          %60 = arith.addi %47, %c1 : index
          cf.br ^bb1(%60 : index)
        ^bb9:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %25 = arith.addi %23, %c256 : index
    cf.br ^bb21(%25 : index)
  ^bb23:  // pred: ^bb21
    %26 = arith.addi %19, %c3072 : index
    cf.br ^bb19(%26 : index)
  ^bb24:  // pred: ^bb19
    %27 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%28: index):  // 2 preds: ^bb24, ^bb29
    %29 = arith.cmpi slt, %28, %c4096 : index
    cf.cond_br %29, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%30: index):  // 2 preds: ^bb26, ^bb28
    %31 = arith.cmpi slt, %30, %c4096 : index
    cf.cond_br %31, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %32 = memref.load %alloc_3[%28, %30] : memref<4096x4096xf64>
    %33 = memref.load %alloc_4[%c0] : memref<1xf64>
    %34 = arith.addf %32, %33 : f64
    memref.store %34, %alloc_4[%c0] : memref<1xf64>
    %35 = arith.addi %30, %c1 : index
    cf.br ^bb27(%35 : index)
  ^bb29:  // pred: ^bb27
    %36 = arith.addi %28, %c1 : index
    cf.br ^bb25(%36 : index)
  ^bb30:  // pred: ^bb25
    %37 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%37) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%18, %27) : (f64, f64) -> ()
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
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c1 = arith.constant 1 : index
    %c256 = arith.constant 256 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c4096 : index
    cf.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c4096 : index
    cf.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<4096x4096xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb3(%4 : index)
  ^bb5:  // pred: ^bb3
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb6:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
    %7 = arith.cmpi slt, %6, %c4096 : index
    cf.cond_br %7, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
    %9 = arith.cmpi slt, %8, %c4096 : index
    cf.cond_br %9, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    memref.store %cst_0, %alloc_2[%6, %8] : memref<4096x4096xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb9(%10 : index)
  ^bb11:  // pred: ^bb9
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb7(%11 : index)
  ^bb12:  // pred: ^bb7
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c4096 : index
    cf.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c4096 : index
    cf.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<4096x4096xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    %18 = call @getTime() : () -> f64
    cf.br ^bb19(%c0 : index)
  ^bb19(%19: index):  // 2 preds: ^bb18, ^bb23
    %20 = arith.cmpi slt, %19, %c4096 : index
    cf.cond_br %20, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %21 = arith.subi %c4096, %19 : index
    %22 = arith.minsi %21, %c3072 : index
    cf.br ^bb21(%c0 : index)
  ^bb21(%23: index):  // 2 preds: ^bb20, ^bb22
    %24 = arith.cmpi slt, %23, %c4096 : index
    cf.cond_br %24, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0, %arg1, %arg2) : index = (%c0, %c0, %c0) to (%c4096, %c256, %22) step (%c6, %c8, %c3072) {
          %38 = arith.subi %c4096, %arg0 : index
          %39 = arith.minsi %38, %c6 : index
          %40 = arith.subi %22, %arg2 : index
          %41 = arith.minsi %40, %c3072 : index
          %42 = arith.addi %23, %arg1 : index
          %43 = arith.addi %19, %arg2 : index
          %c4096_5 = arith.constant 4096 : index
          %44 = arith.muli %42, %c4096_5 : index
          %45 = arith.addi %44, %43 : index
          %reinterpret_cast = memref.reinterpret_cast %alloc to offset: [%45], sizes: [8, %41], strides: [4096, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %c4096_6 = arith.constant 4096 : index
          %46 = arith.muli %43, %c4096_6 : index
          %47 = arith.addi %46, %arg0 : index
          %reinterpret_cast_7 = memref.reinterpret_cast %alloc_2 to offset: [%47], sizes: [%41, %39], strides: [4096, 1] : memref<4096x4096xf64> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
          %c4096_8 = arith.constant 4096 : index
          %48 = arith.muli %42, %c4096_8 : index
          %49 = arith.addi %48, %arg0 : index
          %reinterpret_cast_9 = memref.reinterpret_cast %alloc_3 to offset: [%49], sizes: [8, %39], strides: [4096, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          cf.br ^bb1(%c0 : index)
        ^bb1(%50: index):  // 2 preds: ^bb0, ^bb8
          %51 = arith.cmpi slt, %50, %c8 : index
          cf.cond_br %51, ^bb2, ^bb9
        ^bb2:  // pred: ^bb1
          cf.br ^bb3(%c0 : index)
        ^bb3(%52: index):  // 2 preds: ^bb2, ^bb7
          %53 = arith.cmpi slt, %52, %39 : index
          cf.cond_br %53, ^bb4, ^bb8
        ^bb4:  // pred: ^bb3
          cf.br ^bb5(%c0 : index)
        ^bb5(%54: index):  // 2 preds: ^bb4, ^bb6
          %55 = arith.cmpi slt, %54, %41 : index
          cf.cond_br %55, ^bb6, ^bb7
        ^bb6:  // pred: ^bb5
          %56 = memref.load %reinterpret_cast[%50, %54] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %57 = memref.load %reinterpret_cast_7[%54, %52] : memref<?x?xf64, strided<[4096, 1], offset: ?>>
          %58 = memref.load %reinterpret_cast_9[%50, %52] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %59 = arith.mulf %56, %57 : f64
          %60 = arith.addf %58, %59 : f64
          memref.store %60, %reinterpret_cast_9[%50, %52] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %61 = arith.addi %54, %c1 : index
          cf.br ^bb5(%61 : index)
        ^bb7:  // pred: ^bb5
          %62 = arith.addi %52, %c1 : index
          cf.br ^bb3(%62 : index)
        ^bb8:  // pred: ^bb3
          %63 = arith.addi %50, %c1 : index
          cf.br ^bb1(%63 : index)
        ^bb9:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %25 = arith.addi %23, %c256 : index
    cf.br ^bb21(%25 : index)
  ^bb23:  // pred: ^bb21
    %26 = arith.addi %19, %c3072 : index
    cf.br ^bb19(%26 : index)
  ^bb24:  // pred: ^bb19
    %27 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%28: index):  // 2 preds: ^bb24, ^bb29
    %29 = arith.cmpi slt, %28, %c4096 : index
    cf.cond_br %29, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%30: index):  // 2 preds: ^bb26, ^bb28
    %31 = arith.cmpi slt, %30, %c4096 : index
    cf.cond_br %31, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %32 = memref.load %alloc_3[%28, %30] : memref<4096x4096xf64>
    %33 = memref.load %alloc_4[%c0] : memref<1xf64>
    %34 = arith.addf %32, %33 : f64
    memref.store %34, %alloc_4[%c0] : memref<1xf64>
    %35 = arith.addi %30, %c1 : index
    cf.br ^bb27(%35 : index)
  ^bb29:  // pred: ^bb27
    %36 = arith.addi %28, %c1 : index
    cf.br ^bb25(%36 : index)
  ^bb30:  // pred: ^bb25
    %37 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%37) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%18, %27) : (f64, f64) -> ()
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
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c1 = arith.constant 1 : index
    %c256 = arith.constant 256 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c4096 : index
    llvm.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c4096 : index
    llvm.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<4096x4096xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb3(%4 : index)
  ^bb5:  // pred: ^bb3
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb6:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
    %7 = arith.cmpi slt, %6, %c4096 : index
    llvm.cond_br %7, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
    %9 = arith.cmpi slt, %8, %c4096 : index
    llvm.cond_br %9, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    memref.store %cst_0, %alloc_2[%6, %8] : memref<4096x4096xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb9(%10 : index)
  ^bb11:  // pred: ^bb9
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb7(%11 : index)
  ^bb12:  // pred: ^bb7
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<4096x4096xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c4096 : index
    llvm.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c4096 : index
    llvm.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<4096x4096xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    %18 = call @getTime() : () -> f64
    cf.br ^bb19(%c0 : index)
  ^bb19(%19: index):  // 2 preds: ^bb18, ^bb23
    %20 = arith.cmpi slt, %19, %c4096 : index
    llvm.cond_br %20, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %21 = arith.subi %c4096, %19 : index
    %22 = arith.minsi %21, %c3072 : index
    cf.br ^bb21(%c0 : index)
  ^bb21(%23: index):  // 2 preds: ^bb20, ^bb22
    %24 = arith.cmpi slt, %23, %c4096 : index
    llvm.cond_br %24, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0, %arg1, %arg2) : index = (%c0, %c0, %c0) to (%c4096, %c256, %22) step (%c6, %c8, %c3072) {
          %38 = arith.subi %c4096, %arg0 : index
          %39 = arith.minsi %38, %c6 : index
          %40 = arith.subi %22, %arg2 : index
          %41 = arith.minsi %40, %c3072 : index
          %42 = arith.addi %23, %arg1 : index
          %43 = arith.addi %19, %arg2 : index
          %c4096_5 = arith.constant 4096 : index
          %44 = arith.muli %42, %c4096_5 : index
          %45 = arith.addi %44, %43 : index
          %reinterpret_cast = memref.reinterpret_cast %alloc to offset: [%45], sizes: [8, %41], strides: [4096, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %c4096_6 = arith.constant 4096 : index
          %46 = arith.muli %43, %c4096_6 : index
          %47 = arith.addi %46, %arg0 : index
          %reinterpret_cast_7 = memref.reinterpret_cast %alloc_2 to offset: [%47], sizes: [%41, %39], strides: [4096, 1] : memref<4096x4096xf64> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
          %c4096_8 = arith.constant 4096 : index
          %48 = arith.muli %42, %c4096_8 : index
          %49 = arith.addi %48, %arg0 : index
          %reinterpret_cast_9 = memref.reinterpret_cast %alloc_3 to offset: [%49], sizes: [8, %39], strides: [4096, 1] : memref<4096x4096xf64> to memref<8x?xf64, strided<[4096, 1], offset: ?>>
          cf.br ^bb1(%c0 : index)
        ^bb1(%50: index):  // 2 preds: ^bb0, ^bb8
          %51 = arith.cmpi slt, %50, %c8 : index
          llvm.cond_br %51, ^bb2, ^bb9
        ^bb2:  // pred: ^bb1
          cf.br ^bb3(%c0 : index)
        ^bb3(%52: index):  // 2 preds: ^bb2, ^bb7
          %53 = arith.cmpi slt, %52, %39 : index
          llvm.cond_br %53, ^bb4, ^bb8
        ^bb4:  // pred: ^bb3
          cf.br ^bb5(%c0 : index)
        ^bb5(%54: index):  // 2 preds: ^bb4, ^bb6
          %55 = arith.cmpi slt, %54, %41 : index
          llvm.cond_br %55, ^bb6, ^bb7
        ^bb6:  // pred: ^bb5
          %56 = memref.load %reinterpret_cast[%50, %54] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %57 = memref.load %reinterpret_cast_7[%54, %52] : memref<?x?xf64, strided<[4096, 1], offset: ?>>
          %58 = memref.load %reinterpret_cast_9[%50, %52] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %59 = arith.mulf %56, %57 : f64
          %60 = arith.addf %58, %59 : f64
          memref.store %60, %reinterpret_cast_9[%50, %52] : memref<8x?xf64, strided<[4096, 1], offset: ?>>
          %61 = arith.addi %54, %c1 : index
          cf.br ^bb5(%61 : index)
        ^bb7:  // pred: ^bb5
          %62 = arith.addi %52, %c1 : index
          cf.br ^bb3(%62 : index)
        ^bb8:  // pred: ^bb3
          %63 = arith.addi %50, %c1 : index
          cf.br ^bb1(%63 : index)
        ^bb9:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %25 = arith.addi %23, %c256 : index
    cf.br ^bb21(%25 : index)
  ^bb23:  // pred: ^bb21
    %26 = arith.addi %19, %c3072 : index
    cf.br ^bb19(%26 : index)
  ^bb24:  // pred: ^bb19
    %27 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%28: index):  // 2 preds: ^bb24, ^bb29
    %29 = arith.cmpi slt, %28, %c4096 : index
    llvm.cond_br %29, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%30: index):  // 2 preds: ^bb26, ^bb28
    %31 = arith.cmpi slt, %30, %c4096 : index
    llvm.cond_br %31, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %32 = memref.load %alloc_3[%28, %30] : memref<4096x4096xf64>
    %33 = memref.load %alloc_4[%c0] : memref<1xf64>
    %34 = arith.addf %32, %33 : f64
    memref.store %34, %alloc_4[%c0] : memref<1xf64>
    %35 = arith.addi %30, %c1 : index
    cf.br ^bb27(%35 : index)
  ^bb29:  // pred: ^bb27
    %36 = arith.addi %28, %c1 : index
    cf.br ^bb25(%36 : index)
  ^bb30:  // pred: ^bb25
    %37 = memref.load %alloc_4[%c0] : memref<1xf64>
    call @printF64(%37) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%18, %27) : (f64, f64) -> ()
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
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c1 = arith.constant 1 : index
    %c256 = arith.constant 256 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %0 = builtin.unrealized_conversion_cast %c0 : index to i64
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %1 = llvm.mlir.constant(4096 : index) : i64
    %2 = llvm.mlir.constant(4096 : index) : i64
    %3 = llvm.mlir.constant(1 : index) : i64
    %4 = llvm.mlir.constant(16777216 : index) : i64
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
    %29 = arith.cmpi slt, %27, %c4096 : index
    llvm.cond_br %29, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%30: index):  // 2 preds: ^bb2, ^bb4
    %31 = builtin.unrealized_conversion_cast %30 : index to i64
    %32 = arith.cmpi slt, %30, %c4096 : index
    llvm.cond_br %32, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %33 = llvm.extractvalue %26[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.mlir.constant(4096 : index) : i64
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
    %40 = llvm.mlir.constant(4096 : index) : i64
    %41 = llvm.mlir.constant(4096 : index) : i64
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.mlir.constant(16777216 : index) : i64
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
    %68 = arith.cmpi slt, %66, %c4096 : index
    llvm.cond_br %68, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%69: index):  // 2 preds: ^bb8, ^bb10
    %70 = builtin.unrealized_conversion_cast %69 : index to i64
    %71 = arith.cmpi slt, %69, %c4096 : index
    llvm.cond_br %71, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %72 = llvm.extractvalue %65[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %73 = llvm.mlir.constant(4096 : index) : i64
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
    %79 = llvm.mlir.constant(4096 : index) : i64
    %80 = llvm.mlir.constant(4096 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(16777216 : index) : i64
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
    %107 = arith.cmpi slt, %105, %c4096 : index
    llvm.cond_br %107, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%108: index):  // 2 preds: ^bb14, ^bb16
    %109 = builtin.unrealized_conversion_cast %108 : index to i64
    %110 = arith.cmpi slt, %108, %c4096 : index
    llvm.cond_br %110, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %111 = llvm.extractvalue %104[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %112 = llvm.mlir.constant(4096 : index) : i64
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
    cf.br ^bb19(%c0 : index)
  ^bb19(%119: index):  // 2 preds: ^bb18, ^bb23
    %120 = arith.cmpi slt, %119, %c4096 : index
    llvm.cond_br %120, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %121 = arith.subi %c4096, %119 : index
    %122 = arith.minsi %121, %c3072 : index
    cf.br ^bb21(%c0 : index)
  ^bb21(%123: index):  // 2 preds: ^bb20, ^bb22
    %124 = arith.cmpi slt, %123, %c4096 : index
    llvm.cond_br %124, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0, %arg1, %arg2) : index = (%c0, %c0, %c0) to (%c4096, %c256, %122) step (%c6, %c8, %c3072) {
          %166 = arith.subi %c4096, %arg0 : index
          %167 = arith.minsi %166, %c6 : index
          %168 = builtin.unrealized_conversion_cast %167 : index to i64
          %169 = arith.subi %122, %arg2 : index
          %170 = arith.minsi %169, %c3072 : index
          %171 = builtin.unrealized_conversion_cast %170 : index to i64
          %172 = arith.addi %123, %arg1 : index
          %173 = arith.addi %119, %arg2 : index
          %c4096_2 = arith.constant 4096 : index
          %174 = arith.muli %172, %c4096_2 : index
          %175 = arith.addi %174, %173 : index
          %176 = builtin.unrealized_conversion_cast %175 : index to i64
          %177 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %178 = llvm.extractvalue %26[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %179 = llvm.extractvalue %26[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %180 = llvm.insertvalue %178, %177[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %181 = llvm.insertvalue %179, %180[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %182 = llvm.insertvalue %176, %181[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %183 = llvm.mlir.constant(8 : index) : i64
          %184 = llvm.insertvalue %183, %182[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %185 = llvm.mlir.constant(4096 : index) : i64
          %186 = llvm.insertvalue %185, %184[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %187 = llvm.insertvalue %171, %186[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %188 = llvm.mlir.constant(1 : index) : i64
          %189 = llvm.insertvalue %188, %187[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %c4096_3 = arith.constant 4096 : index
          %190 = arith.muli %173, %c4096_3 : index
          %191 = arith.addi %190, %arg0 : index
          %192 = builtin.unrealized_conversion_cast %191 : index to i64
          %193 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %194 = llvm.extractvalue %65[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %195 = llvm.extractvalue %65[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %196 = llvm.insertvalue %194, %193[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %197 = llvm.insertvalue %195, %196[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %198 = llvm.insertvalue %192, %197[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %199 = llvm.insertvalue %171, %198[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %200 = llvm.mlir.constant(4096 : index) : i64
          %201 = llvm.insertvalue %200, %199[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %202 = llvm.insertvalue %168, %201[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %203 = llvm.mlir.constant(1 : index) : i64
          %204 = llvm.insertvalue %203, %202[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %c4096_4 = arith.constant 4096 : index
          %205 = arith.muli %172, %c4096_4 : index
          %206 = arith.addi %205, %arg0 : index
          %207 = builtin.unrealized_conversion_cast %206 : index to i64
          %208 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %209 = llvm.extractvalue %104[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %210 = llvm.extractvalue %104[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %211 = llvm.insertvalue %209, %208[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %212 = llvm.insertvalue %210, %211[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %213 = llvm.insertvalue %207, %212[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %214 = llvm.mlir.constant(8 : index) : i64
          %215 = llvm.insertvalue %214, %213[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %216 = llvm.mlir.constant(4096 : index) : i64
          %217 = llvm.insertvalue %216, %215[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %218 = llvm.insertvalue %168, %217[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %219 = llvm.mlir.constant(1 : index) : i64
          %220 = llvm.insertvalue %219, %218[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          cf.br ^bb1(%c0 : index)
        ^bb1(%221: index):  // 2 preds: ^bb0, ^bb8
          %222 = builtin.unrealized_conversion_cast %221 : index to i64
          %223 = arith.cmpi slt, %221, %c8 : index
          llvm.cond_br %223, ^bb2, ^bb9
        ^bb2:  // pred: ^bb1
          cf.br ^bb3(%c0 : index)
        ^bb3(%224: index):  // 2 preds: ^bb2, ^bb7
          %225 = builtin.unrealized_conversion_cast %224 : index to i64
          %226 = arith.cmpi slt, %224, %167 : index
          llvm.cond_br %226, ^bb4, ^bb8
        ^bb4:  // pred: ^bb3
          cf.br ^bb5(%c0 : index)
        ^bb5(%227: index):  // 2 preds: ^bb4, ^bb6
          %228 = builtin.unrealized_conversion_cast %227 : index to i64
          %229 = arith.cmpi slt, %227, %170 : index
          llvm.cond_br %229, ^bb6, ^bb7
        ^bb6:  // pred: ^bb5
          %230 = llvm.extractvalue %189[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %231 = llvm.extractvalue %189[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %232 = llvm.getelementptr %230[%231] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %233 = llvm.mlir.constant(4096 : index) : i64
          %234 = llvm.mul %222, %233 : i64
          %235 = llvm.add %234, %228 : i64
          %236 = llvm.getelementptr %232[%235] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %237 = llvm.load %236 : !llvm.ptr -> f64
          %238 = llvm.extractvalue %204[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %239 = llvm.extractvalue %204[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %240 = llvm.getelementptr %238[%239] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %241 = llvm.mlir.constant(4096 : index) : i64
          %242 = llvm.mul %228, %241 : i64
          %243 = llvm.add %242, %225 : i64
          %244 = llvm.getelementptr %240[%243] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %245 = llvm.load %244 : !llvm.ptr -> f64
          %246 = llvm.extractvalue %220[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %247 = llvm.extractvalue %220[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %248 = llvm.getelementptr %246[%247] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %249 = llvm.mlir.constant(4096 : index) : i64
          %250 = llvm.mul %222, %249 : i64
          %251 = llvm.add %250, %225 : i64
          %252 = llvm.getelementptr %248[%251] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %253 = llvm.load %252 : !llvm.ptr -> f64
          %254 = arith.mulf %237, %245 : f64
          %255 = arith.addf %253, %254 : f64
          %256 = llvm.extractvalue %220[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %257 = llvm.extractvalue %220[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %258 = llvm.getelementptr %256[%257] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %259 = llvm.mlir.constant(4096 : index) : i64
          %260 = llvm.mul %222, %259 : i64
          %261 = llvm.add %260, %225 : i64
          %262 = llvm.getelementptr %258[%261] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %255, %262 : f64, !llvm.ptr
          %263 = arith.addi %227, %c1 : index
          cf.br ^bb5(%263 : index)
        ^bb7:  // pred: ^bb5
          %264 = arith.addi %224, %c1 : index
          cf.br ^bb3(%264 : index)
        ^bb8:  // pred: ^bb3
          %265 = arith.addi %221, %c1 : index
          cf.br ^bb1(%265 : index)
        ^bb9:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %125 = arith.addi %123, %c256 : index
    cf.br ^bb21(%125 : index)
  ^bb23:  // pred: ^bb21
    %126 = arith.addi %119, %c3072 : index
    cf.br ^bb19(%126 : index)
  ^bb24:  // pred: ^bb19
    %127 = call @getTime() : () -> f64
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
    %142 = llvm.getelementptr %141[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst, %142 : f64, !llvm.ptr
    cf.br ^bb25(%c0 : index)
  ^bb25(%143: index):  // 2 preds: ^bb24, ^bb29
    %144 = builtin.unrealized_conversion_cast %143 : index to i64
    %145 = arith.cmpi slt, %143, %c4096 : index
    llvm.cond_br %145, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%146: index):  // 2 preds: ^bb26, ^bb28
    %147 = builtin.unrealized_conversion_cast %146 : index to i64
    %148 = arith.cmpi slt, %146, %c4096 : index
    llvm.cond_br %148, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %149 = llvm.extractvalue %104[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %150 = llvm.mlir.constant(4096 : index) : i64
    %151 = llvm.mul %144, %150 : i64
    %152 = llvm.add %151, %147 : i64
    %153 = llvm.getelementptr %149[%152] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %154 = llvm.load %153 : !llvm.ptr -> f64
    %155 = llvm.extractvalue %140[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.getelementptr %155[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %157 = llvm.load %156 : !llvm.ptr -> f64
    %158 = arith.addf %154, %157 : f64
    %159 = llvm.extractvalue %140[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %160 = llvm.getelementptr %159[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %158, %160 : f64, !llvm.ptr
    %161 = arith.addi %146, %c1 : index
    cf.br ^bb27(%161 : index)
  ^bb29:  // pred: ^bb27
    %162 = arith.addi %143, %c1 : index
    cf.br ^bb25(%162 : index)
  ^bb30:  // pred: ^bb25
    %163 = llvm.extractvalue %140[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %164 = llvm.getelementptr %163[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %165 = llvm.load %164 : !llvm.ptr -> f64
    call @printF64(%165) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%118, %127) : (f64, f64) -> ()
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
    %0 = llvm.mlir.constant(8 : index) : i64
    %1 = builtin.unrealized_conversion_cast %0 : i64 to index
    %2 = llvm.mlir.constant(6 : index) : i64
    %3 = builtin.unrealized_conversion_cast %2 : i64 to index
    %4 = llvm.mlir.constant(1 : index) : i64
    %5 = llvm.mlir.constant(256 : index) : i64
    %6 = builtin.unrealized_conversion_cast %5 : i64 to index
    %7 = llvm.mlir.constant(3072 : index) : i64
    %8 = builtin.unrealized_conversion_cast %7 : i64 to index
    %9 = llvm.mlir.constant(4096 : index) : i64
    %10 = builtin.unrealized_conversion_cast %9 : i64 to index
    %11 = llvm.mlir.constant(0 : index) : i64
    %12 = builtin.unrealized_conversion_cast %11 : i64 to index
    %13 = builtin.unrealized_conversion_cast %12 : index to i64
    %14 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %15 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %16 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %17 = llvm.mlir.constant(4096 : index) : i64
    %18 = llvm.mlir.constant(4096 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.constant(16777216 : index) : i64
    %21 = llvm.mlir.zero : !llvm.ptr
    %22 = llvm.getelementptr %21[%20] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %23 = llvm.ptrtoint %22 : !llvm.ptr to i64
    %24 = llvm.mlir.constant(32 : index) : i64
    %25 = llvm.add %23, %24 : i64
    %26 = llvm.call @malloc(%25) : (i64) -> !llvm.ptr
    %27 = llvm.ptrtoint %26 : !llvm.ptr to i64
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.sub %24, %28 : i64
    %30 = llvm.add %27, %29 : i64
    %31 = llvm.urem %30, %24  : i64
    %32 = llvm.sub %30, %31 : i64
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
    llvm.br ^bb1(%11 : i64)
  ^bb1(%43: i64):  // 2 preds: ^bb0, ^bb5
    %44 = builtin.unrealized_conversion_cast %43 : i64 to index
    %45 = builtin.unrealized_conversion_cast %44 : index to i64
    %46 = llvm.icmp "slt" %43, %9 : i64
    llvm.cond_br %46, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%11 : i64)
  ^bb3(%47: i64):  // 2 preds: ^bb2, ^bb4
    %48 = builtin.unrealized_conversion_cast %47 : i64 to index
    %49 = builtin.unrealized_conversion_cast %48 : index to i64
    %50 = llvm.icmp "slt" %47, %9 : i64
    llvm.cond_br %50, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %51 = llvm.extractvalue %42[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.mlir.constant(4096 : index) : i64
    %53 = llvm.mul %45, %52 : i64
    %54 = llvm.add %53, %49 : i64
    %55 = llvm.getelementptr %51[%54] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %16, %55 : f64, !llvm.ptr
    %56 = llvm.add %47, %4 : i64
    llvm.br ^bb3(%56 : i64)
  ^bb5:  // pred: ^bb3
    %57 = llvm.add %43, %4 : i64
    llvm.br ^bb1(%57 : i64)
  ^bb6:  // pred: ^bb1
    %58 = llvm.mlir.constant(4096 : index) : i64
    %59 = llvm.mlir.constant(4096 : index) : i64
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.mlir.constant(16777216 : index) : i64
    %62 = llvm.mlir.zero : !llvm.ptr
    %63 = llvm.getelementptr %62[%61] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %64 = llvm.ptrtoint %63 : !llvm.ptr to i64
    %65 = llvm.mlir.constant(32 : index) : i64
    %66 = llvm.add %64, %65 : i64
    %67 = llvm.call @malloc(%66) : (i64) -> !llvm.ptr
    %68 = llvm.ptrtoint %67 : !llvm.ptr to i64
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.sub %65, %69 : i64
    %71 = llvm.add %68, %70 : i64
    %72 = llvm.urem %71, %65  : i64
    %73 = llvm.sub %71, %72 : i64
    %74 = llvm.inttoptr %73 : i64 to !llvm.ptr
    %75 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %76 = llvm.insertvalue %67, %75[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %77 = llvm.insertvalue %74, %76[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %78 = llvm.mlir.constant(0 : index) : i64
    %79 = llvm.insertvalue %78, %77[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %80 = llvm.insertvalue %58, %79[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %81 = llvm.insertvalue %59, %80[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %82 = llvm.insertvalue %59, %81[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %83 = llvm.insertvalue %60, %82[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb7(%11 : i64)
  ^bb7(%84: i64):  // 2 preds: ^bb6, ^bb11
    %85 = builtin.unrealized_conversion_cast %84 : i64 to index
    %86 = builtin.unrealized_conversion_cast %85 : index to i64
    %87 = llvm.icmp "slt" %84, %9 : i64
    llvm.cond_br %87, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%11 : i64)
  ^bb9(%88: i64):  // 2 preds: ^bb8, ^bb10
    %89 = builtin.unrealized_conversion_cast %88 : i64 to index
    %90 = builtin.unrealized_conversion_cast %89 : index to i64
    %91 = llvm.icmp "slt" %88, %9 : i64
    llvm.cond_br %91, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %92 = llvm.extractvalue %83[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %93 = llvm.mlir.constant(4096 : index) : i64
    %94 = llvm.mul %86, %93 : i64
    %95 = llvm.add %94, %90 : i64
    %96 = llvm.getelementptr %92[%95] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %15, %96 : f64, !llvm.ptr
    %97 = llvm.add %88, %4 : i64
    llvm.br ^bb9(%97 : i64)
  ^bb11:  // pred: ^bb9
    %98 = llvm.add %84, %4 : i64
    llvm.br ^bb7(%98 : i64)
  ^bb12:  // pred: ^bb7
    %99 = llvm.mlir.constant(4096 : index) : i64
    %100 = llvm.mlir.constant(4096 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.mlir.constant(16777216 : index) : i64
    %103 = llvm.mlir.zero : !llvm.ptr
    %104 = llvm.getelementptr %103[%102] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %105 = llvm.ptrtoint %104 : !llvm.ptr to i64
    %106 = llvm.mlir.constant(32 : index) : i64
    %107 = llvm.add %105, %106 : i64
    %108 = llvm.call @malloc(%107) : (i64) -> !llvm.ptr
    %109 = llvm.ptrtoint %108 : !llvm.ptr to i64
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.sub %106, %110 : i64
    %112 = llvm.add %109, %111 : i64
    %113 = llvm.urem %112, %106  : i64
    %114 = llvm.sub %112, %113 : i64
    %115 = llvm.inttoptr %114 : i64 to !llvm.ptr
    %116 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %117 = llvm.insertvalue %108, %116[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %118 = llvm.insertvalue %115, %117[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %119 = llvm.mlir.constant(0 : index) : i64
    %120 = llvm.insertvalue %119, %118[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %121 = llvm.insertvalue %99, %120[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %122 = llvm.insertvalue %100, %121[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %123 = llvm.insertvalue %100, %122[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %124 = llvm.insertvalue %101, %123[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb13(%11 : i64)
  ^bb13(%125: i64):  // 2 preds: ^bb12, ^bb17
    %126 = builtin.unrealized_conversion_cast %125 : i64 to index
    %127 = builtin.unrealized_conversion_cast %126 : index to i64
    %128 = llvm.icmp "slt" %125, %9 : i64
    llvm.cond_br %128, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%11 : i64)
  ^bb15(%129: i64):  // 2 preds: ^bb14, ^bb16
    %130 = builtin.unrealized_conversion_cast %129 : i64 to index
    %131 = builtin.unrealized_conversion_cast %130 : index to i64
    %132 = llvm.icmp "slt" %129, %9 : i64
    llvm.cond_br %132, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %133 = llvm.extractvalue %124[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %134 = llvm.mlir.constant(4096 : index) : i64
    %135 = llvm.mul %127, %134 : i64
    %136 = llvm.add %135, %131 : i64
    %137 = llvm.getelementptr %133[%136] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %14, %137 : f64, !llvm.ptr
    %138 = llvm.add %129, %4 : i64
    llvm.br ^bb15(%138 : i64)
  ^bb17:  // pred: ^bb15
    %139 = llvm.add %125, %4 : i64
    llvm.br ^bb13(%139 : i64)
  ^bb18:  // pred: ^bb13
    %140 = llvm.call @getTime() : () -> f64
    llvm.br ^bb19(%11 : i64)
  ^bb19(%141: i64):  // 2 preds: ^bb18, ^bb23
    %142 = llvm.icmp "slt" %141, %9 : i64
    llvm.cond_br %142, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %143 = llvm.sub %9, %141 : i64
    %144 = llvm.intr.smin(%143, %7)  : (i64, i64) -> i64
    %145 = builtin.unrealized_conversion_cast %144 : i64 to index
    llvm.br ^bb21(%11 : i64)
  ^bb21(%146: i64):  // 2 preds: ^bb20, ^bb22
    %147 = llvm.icmp "slt" %146, %9 : i64
    llvm.cond_br %147, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0, %arg1, %arg2) : index = (%12, %12, %12) to (%10, %6, %145) step (%3, %1, %8) {
          %191 = builtin.unrealized_conversion_cast %arg1 : index to i64
          %192 = builtin.unrealized_conversion_cast %arg2 : index to i64
          %193 = builtin.unrealized_conversion_cast %arg0 : index to i64
          %194 = llvm.sub %9, %193 : i64
          %195 = llvm.intr.smin(%194, %2)  : (i64, i64) -> i64
          %196 = builtin.unrealized_conversion_cast %195 : i64 to index
          %197 = builtin.unrealized_conversion_cast %196 : index to i64
          %198 = llvm.sub %144, %192 : i64
          %199 = llvm.intr.smin(%198, %7)  : (i64, i64) -> i64
          %200 = builtin.unrealized_conversion_cast %199 : i64 to index
          %201 = builtin.unrealized_conversion_cast %200 : index to i64
          %202 = llvm.add %146, %191 : i64
          %203 = llvm.add %141, %192 : i64
          %204 = llvm.mlir.constant(4096 : index) : i64
          %205 = llvm.mul %202, %204 : i64
          %206 = llvm.add %205, %203 : i64
          %207 = builtin.unrealized_conversion_cast %206 : i64 to index
          %208 = builtin.unrealized_conversion_cast %207 : index to i64
          %209 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %210 = llvm.extractvalue %42[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %211 = llvm.extractvalue %42[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %212 = llvm.insertvalue %210, %209[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %213 = llvm.insertvalue %211, %212[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %214 = llvm.insertvalue %208, %213[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %215 = llvm.mlir.constant(8 : index) : i64
          %216 = llvm.insertvalue %215, %214[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %217 = llvm.mlir.constant(4096 : index) : i64
          %218 = llvm.insertvalue %217, %216[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %219 = llvm.insertvalue %201, %218[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %220 = llvm.mlir.constant(1 : index) : i64
          %221 = llvm.insertvalue %220, %219[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %222 = llvm.mlir.constant(4096 : index) : i64
          %223 = llvm.mul %203, %222 : i64
          %224 = llvm.add %223, %193 : i64
          %225 = builtin.unrealized_conversion_cast %224 : i64 to index
          %226 = builtin.unrealized_conversion_cast %225 : index to i64
          %227 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %228 = llvm.extractvalue %83[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %229 = llvm.extractvalue %83[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %230 = llvm.insertvalue %228, %227[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %231 = llvm.insertvalue %229, %230[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %232 = llvm.insertvalue %226, %231[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %233 = llvm.insertvalue %201, %232[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %234 = llvm.mlir.constant(4096 : index) : i64
          %235 = llvm.insertvalue %234, %233[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %236 = llvm.insertvalue %197, %235[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %237 = llvm.mlir.constant(1 : index) : i64
          %238 = llvm.insertvalue %237, %236[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %239 = llvm.mlir.constant(4096 : index) : i64
          %240 = llvm.mul %202, %239 : i64
          %241 = llvm.add %240, %193 : i64
          %242 = builtin.unrealized_conversion_cast %241 : i64 to index
          %243 = builtin.unrealized_conversion_cast %242 : index to i64
          %244 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %245 = llvm.extractvalue %124[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %246 = llvm.extractvalue %124[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %247 = llvm.insertvalue %245, %244[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %248 = llvm.insertvalue %246, %247[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %249 = llvm.insertvalue %243, %248[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %250 = llvm.mlir.constant(8 : index) : i64
          %251 = llvm.insertvalue %250, %249[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %252 = llvm.mlir.constant(4096 : index) : i64
          %253 = llvm.insertvalue %252, %251[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %254 = llvm.insertvalue %197, %253[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %255 = llvm.mlir.constant(1 : index) : i64
          %256 = llvm.insertvalue %255, %254[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          cf.br ^bb1(%12 : index)
        ^bb1(%257: index):  // 2 preds: ^bb0, ^bb8
          %258 = builtin.unrealized_conversion_cast %257 : index to i64
          %259 = builtin.unrealized_conversion_cast %257 : index to i64
          %260 = llvm.icmp "slt" %258, %0 : i64
          llvm.cond_br %260, ^bb2, ^bb9
        ^bb2:  // pred: ^bb1
          cf.br ^bb3(%12 : index)
        ^bb3(%261: index):  // 2 preds: ^bb2, ^bb7
          %262 = builtin.unrealized_conversion_cast %261 : index to i64
          %263 = builtin.unrealized_conversion_cast %261 : index to i64
          %264 = llvm.icmp "slt" %262, %195 : i64
          llvm.cond_br %264, ^bb4, ^bb8
        ^bb4:  // pred: ^bb3
          cf.br ^bb5(%12 : index)
        ^bb5(%265: index):  // 2 preds: ^bb4, ^bb6
          %266 = builtin.unrealized_conversion_cast %265 : index to i64
          %267 = builtin.unrealized_conversion_cast %265 : index to i64
          %268 = llvm.icmp "slt" %266, %199 : i64
          llvm.cond_br %268, ^bb6, ^bb7
        ^bb6:  // pred: ^bb5
          %269 = llvm.extractvalue %221[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %270 = llvm.extractvalue %221[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %271 = llvm.getelementptr %269[%270] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %272 = llvm.mlir.constant(4096 : index) : i64
          %273 = llvm.mul %259, %272 : i64
          %274 = llvm.add %273, %267 : i64
          %275 = llvm.getelementptr %271[%274] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %276 = llvm.load %275 : !llvm.ptr -> f64
          %277 = llvm.extractvalue %238[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %278 = llvm.extractvalue %238[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %279 = llvm.getelementptr %277[%278] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %280 = llvm.mlir.constant(4096 : index) : i64
          %281 = llvm.mul %267, %280 : i64
          %282 = llvm.add %281, %263 : i64
          %283 = llvm.getelementptr %279[%282] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %284 = llvm.load %283 : !llvm.ptr -> f64
          %285 = llvm.extractvalue %256[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %286 = llvm.extractvalue %256[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %287 = llvm.getelementptr %285[%286] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %288 = llvm.mlir.constant(4096 : index) : i64
          %289 = llvm.mul %259, %288 : i64
          %290 = llvm.add %289, %263 : i64
          %291 = llvm.getelementptr %287[%290] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %292 = llvm.load %291 : !llvm.ptr -> f64
          %293 = llvm.fmul %276, %284  : f64
          %294 = llvm.fadd %292, %293  : f64
          %295 = llvm.extractvalue %256[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %296 = llvm.extractvalue %256[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %297 = llvm.getelementptr %295[%296] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %298 = llvm.mlir.constant(4096 : index) : i64
          %299 = llvm.mul %259, %298 : i64
          %300 = llvm.add %299, %263 : i64
          %301 = llvm.getelementptr %297[%300] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %294, %301 : f64, !llvm.ptr
          %302 = llvm.add %266, %4 : i64
          %303 = builtin.unrealized_conversion_cast %302 : i64 to index
          cf.br ^bb5(%303 : index)
        ^bb7:  // pred: ^bb5
          %304 = llvm.add %262, %4 : i64
          %305 = builtin.unrealized_conversion_cast %304 : i64 to index
          cf.br ^bb3(%305 : index)
        ^bb8:  // pred: ^bb3
          %306 = llvm.add %258, %4 : i64
          %307 = builtin.unrealized_conversion_cast %306 : i64 to index
          cf.br ^bb1(%307 : index)
        ^bb9:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %148 = llvm.add %146, %5 : i64
    llvm.br ^bb21(%148 : i64)
  ^bb23:  // pred: ^bb21
    %149 = llvm.add %141, %7 : i64
    llvm.br ^bb19(%149 : i64)
  ^bb24:  // pred: ^bb19
    %150 = llvm.call @getTime() : () -> f64
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.mlir.zero : !llvm.ptr
    %154 = llvm.getelementptr %153[%151] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %155 = llvm.ptrtoint %154 : !llvm.ptr to i64
    %156 = llvm.call @malloc(%155) : (i64) -> !llvm.ptr
    %157 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %158 = llvm.insertvalue %156, %157[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %159 = llvm.insertvalue %156, %158[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %160 = llvm.mlir.constant(0 : index) : i64
    %161 = llvm.insertvalue %160, %159[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %162 = llvm.insertvalue %151, %161[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %163 = llvm.insertvalue %152, %162[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %164 = llvm.extractvalue %163[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %165 = llvm.getelementptr %164[%13] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %14, %165 : f64, !llvm.ptr
    llvm.br ^bb25(%11 : i64)
  ^bb25(%166: i64):  // 2 preds: ^bb24, ^bb29
    %167 = builtin.unrealized_conversion_cast %166 : i64 to index
    %168 = builtin.unrealized_conversion_cast %167 : index to i64
    %169 = llvm.icmp "slt" %166, %9 : i64
    llvm.cond_br %169, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%11 : i64)
  ^bb27(%170: i64):  // 2 preds: ^bb26, ^bb28
    %171 = builtin.unrealized_conversion_cast %170 : i64 to index
    %172 = builtin.unrealized_conversion_cast %171 : index to i64
    %173 = llvm.icmp "slt" %170, %9 : i64
    llvm.cond_br %173, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %174 = llvm.extractvalue %124[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %175 = llvm.mlir.constant(4096 : index) : i64
    %176 = llvm.mul %168, %175 : i64
    %177 = llvm.add %176, %172 : i64
    %178 = llvm.getelementptr %174[%177] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %179 = llvm.load %178 : !llvm.ptr -> f64
    %180 = llvm.extractvalue %163[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %181 = llvm.getelementptr %180[%13] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %182 = llvm.load %181 : !llvm.ptr -> f64
    %183 = llvm.fadd %179, %182  : f64
    %184 = llvm.extractvalue %163[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %185 = llvm.getelementptr %184[%13] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %183, %185 : f64, !llvm.ptr
    %186 = llvm.add %170, %4 : i64
    llvm.br ^bb27(%186 : i64)
  ^bb29:  // pred: ^bb27
    %187 = llvm.add %166, %4 : i64
    llvm.br ^bb25(%187 : i64)
  ^bb30:  // pred: ^bb25
    %188 = llvm.extractvalue %163[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %189 = llvm.getelementptr %188[%13] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %190 = llvm.load %189 : !llvm.ptr -> f64
    llvm.call @printF64(%190) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%140, %150) : (f64, f64) -> ()
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
    %0 = llvm.mlir.constant(8 : index) : i64
    %1 = builtin.unrealized_conversion_cast %0 : i64 to index
    %2 = llvm.mlir.constant(6 : index) : i64
    %3 = builtin.unrealized_conversion_cast %2 : i64 to index
    %4 = llvm.mlir.constant(1 : index) : i64
    %5 = llvm.mlir.constant(256 : index) : i64
    %6 = builtin.unrealized_conversion_cast %5 : i64 to index
    %7 = llvm.mlir.constant(3072 : index) : i64
    %8 = builtin.unrealized_conversion_cast %7 : i64 to index
    %9 = llvm.mlir.constant(4096 : index) : i64
    %10 = builtin.unrealized_conversion_cast %9 : i64 to index
    %11 = llvm.mlir.constant(0 : index) : i64
    %12 = builtin.unrealized_conversion_cast %11 : i64 to index
    %13 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %14 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %15 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %16 = llvm.mlir.constant(4096 : index) : i64
    %17 = llvm.mlir.constant(4096 : index) : i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.mlir.constant(16777216 : index) : i64
    %20 = llvm.mlir.zero : !llvm.ptr
    %21 = llvm.getelementptr %20[%19] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %22 = llvm.ptrtoint %21 : !llvm.ptr to i64
    %23 = llvm.mlir.constant(32 : index) : i64
    %24 = llvm.add %22, %23 : i64
    %25 = llvm.call @malloc(%24) : (i64) -> !llvm.ptr
    %26 = llvm.ptrtoint %25 : !llvm.ptr to i64
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.sub %23, %27 : i64
    %29 = llvm.add %26, %28 : i64
    %30 = llvm.urem %29, %23  : i64
    %31 = llvm.sub %29, %30 : i64
    %32 = llvm.inttoptr %31 : i64 to !llvm.ptr
    %33 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %34 = llvm.insertvalue %25, %33[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.insertvalue %36, %35[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %38 = llvm.insertvalue %16, %37[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %39 = llvm.insertvalue %17, %38[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %40 = llvm.insertvalue %17, %39[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.insertvalue %18, %40[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%11 : i64)
  ^bb1(%42: i64):  // 2 preds: ^bb0, ^bb5
    %43 = builtin.unrealized_conversion_cast %42 : i64 to index
    %44 = llvm.icmp "slt" %42, %9 : i64
    llvm.cond_br %44, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%11 : i64)
  ^bb3(%45: i64):  // 2 preds: ^bb2, ^bb4
    %46 = builtin.unrealized_conversion_cast %45 : i64 to index
    %47 = llvm.icmp "slt" %45, %9 : i64
    llvm.cond_br %47, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %48 = llvm.extractvalue %41[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %49 = llvm.mlir.constant(4096 : index) : i64
    %50 = llvm.mul %42, %49 : i64
    %51 = llvm.add %50, %45 : i64
    %52 = llvm.getelementptr %48[%51] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %15, %52 : f64, !llvm.ptr
    %53 = llvm.add %45, %4 : i64
    llvm.br ^bb3(%53 : i64)
  ^bb5:  // pred: ^bb3
    %54 = llvm.add %42, %4 : i64
    llvm.br ^bb1(%54 : i64)
  ^bb6:  // pred: ^bb1
    %55 = llvm.mlir.constant(4096 : index) : i64
    %56 = llvm.mlir.constant(4096 : index) : i64
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.mlir.constant(16777216 : index) : i64
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
    llvm.br ^bb7(%11 : i64)
  ^bb7(%81: i64):  // 2 preds: ^bb6, ^bb11
    %82 = builtin.unrealized_conversion_cast %81 : i64 to index
    %83 = llvm.icmp "slt" %81, %9 : i64
    llvm.cond_br %83, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%11 : i64)
  ^bb9(%84: i64):  // 2 preds: ^bb8, ^bb10
    %85 = builtin.unrealized_conversion_cast %84 : i64 to index
    %86 = llvm.icmp "slt" %84, %9 : i64
    llvm.cond_br %86, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %87 = llvm.extractvalue %80[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %88 = llvm.mlir.constant(4096 : index) : i64
    %89 = llvm.mul %81, %88 : i64
    %90 = llvm.add %89, %84 : i64
    %91 = llvm.getelementptr %87[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %14, %91 : f64, !llvm.ptr
    %92 = llvm.add %84, %4 : i64
    llvm.br ^bb9(%92 : i64)
  ^bb11:  // pred: ^bb9
    %93 = llvm.add %81, %4 : i64
    llvm.br ^bb7(%93 : i64)
  ^bb12:  // pred: ^bb7
    %94 = llvm.mlir.constant(4096 : index) : i64
    %95 = llvm.mlir.constant(4096 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.mlir.constant(16777216 : index) : i64
    %98 = llvm.mlir.zero : !llvm.ptr
    %99 = llvm.getelementptr %98[%97] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %100 = llvm.ptrtoint %99 : !llvm.ptr to i64
    %101 = llvm.mlir.constant(32 : index) : i64
    %102 = llvm.add %100, %101 : i64
    %103 = llvm.call @malloc(%102) : (i64) -> !llvm.ptr
    %104 = llvm.ptrtoint %103 : !llvm.ptr to i64
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.sub %101, %105 : i64
    %107 = llvm.add %104, %106 : i64
    %108 = llvm.urem %107, %101  : i64
    %109 = llvm.sub %107, %108 : i64
    %110 = llvm.inttoptr %109 : i64 to !llvm.ptr
    %111 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %112 = llvm.insertvalue %103, %111[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %113 = llvm.insertvalue %110, %112[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %114 = llvm.mlir.constant(0 : index) : i64
    %115 = llvm.insertvalue %114, %113[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %116 = llvm.insertvalue %94, %115[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %117 = llvm.insertvalue %95, %116[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %118 = llvm.insertvalue %95, %117[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %119 = llvm.insertvalue %96, %118[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb13(%11 : i64)
  ^bb13(%120: i64):  // 2 preds: ^bb12, ^bb17
    %121 = builtin.unrealized_conversion_cast %120 : i64 to index
    %122 = llvm.icmp "slt" %120, %9 : i64
    llvm.cond_br %122, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%11 : i64)
  ^bb15(%123: i64):  // 2 preds: ^bb14, ^bb16
    %124 = builtin.unrealized_conversion_cast %123 : i64 to index
    %125 = llvm.icmp "slt" %123, %9 : i64
    llvm.cond_br %125, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %126 = llvm.extractvalue %119[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %127 = llvm.mlir.constant(4096 : index) : i64
    %128 = llvm.mul %120, %127 : i64
    %129 = llvm.add %128, %123 : i64
    %130 = llvm.getelementptr %126[%129] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %13, %130 : f64, !llvm.ptr
    %131 = llvm.add %123, %4 : i64
    llvm.br ^bb15(%131 : i64)
  ^bb17:  // pred: ^bb15
    %132 = llvm.add %120, %4 : i64
    llvm.br ^bb13(%132 : i64)
  ^bb18:  // pred: ^bb13
    %133 = llvm.call @getTime() : () -> f64
    llvm.br ^bb19(%11 : i64)
  ^bb19(%134: i64):  // 2 preds: ^bb18, ^bb23
    %135 = llvm.icmp "slt" %134, %9 : i64
    llvm.cond_br %135, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %136 = llvm.sub %9, %134 : i64
    %137 = llvm.intr.smin(%136, %7)  : (i64, i64) -> i64
    %138 = builtin.unrealized_conversion_cast %137 : i64 to index
    llvm.br ^bb21(%11 : i64)
  ^bb21(%139: i64):  // 2 preds: ^bb20, ^bb22
    %140 = llvm.icmp "slt" %139, %9 : i64
    llvm.cond_br %140, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0, %arg1, %arg2) : index = (%12, %12, %12) to (%10, %6, %138) step (%3, %1, %8) {
          %182 = builtin.unrealized_conversion_cast %arg1 : index to i64
          %183 = builtin.unrealized_conversion_cast %arg2 : index to i64
          %184 = builtin.unrealized_conversion_cast %arg0 : index to i64
          %185 = llvm.sub %9, %184 : i64
          %186 = llvm.intr.smin(%185, %2)  : (i64, i64) -> i64
          %187 = builtin.unrealized_conversion_cast %186 : i64 to index
          %188 = llvm.sub %137, %183 : i64
          %189 = llvm.intr.smin(%188, %7)  : (i64, i64) -> i64
          %190 = builtin.unrealized_conversion_cast %189 : i64 to index
          %191 = llvm.add %139, %182 : i64
          %192 = llvm.add %134, %183 : i64
          %193 = llvm.mlir.constant(4096 : index) : i64
          %194 = llvm.mul %191, %193 : i64
          %195 = llvm.add %194, %192 : i64
          %196 = builtin.unrealized_conversion_cast %195 : i64 to index
          %197 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %198 = llvm.extractvalue %41[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %199 = llvm.extractvalue %41[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %200 = llvm.insertvalue %198, %197[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %201 = llvm.insertvalue %199, %200[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %202 = llvm.insertvalue %195, %201[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %203 = llvm.mlir.constant(8 : index) : i64
          %204 = llvm.insertvalue %203, %202[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %205 = llvm.mlir.constant(4096 : index) : i64
          %206 = llvm.insertvalue %205, %204[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %207 = llvm.insertvalue %189, %206[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %208 = llvm.mlir.constant(1 : index) : i64
          %209 = llvm.insertvalue %208, %207[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %210 = llvm.mlir.constant(4096 : index) : i64
          %211 = llvm.mul %192, %210 : i64
          %212 = llvm.add %211, %184 : i64
          %213 = builtin.unrealized_conversion_cast %212 : i64 to index
          %214 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %215 = llvm.extractvalue %80[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %216 = llvm.extractvalue %80[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %217 = llvm.insertvalue %215, %214[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %218 = llvm.insertvalue %216, %217[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %219 = llvm.insertvalue %212, %218[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %220 = llvm.insertvalue %189, %219[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %221 = llvm.mlir.constant(4096 : index) : i64
          %222 = llvm.insertvalue %221, %220[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %223 = llvm.insertvalue %186, %222[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %224 = llvm.mlir.constant(1 : index) : i64
          %225 = llvm.insertvalue %224, %223[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %226 = llvm.mlir.constant(4096 : index) : i64
          %227 = llvm.mul %191, %226 : i64
          %228 = llvm.add %227, %184 : i64
          %229 = builtin.unrealized_conversion_cast %228 : i64 to index
          %230 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %231 = llvm.extractvalue %119[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %232 = llvm.extractvalue %119[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %233 = llvm.insertvalue %231, %230[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %234 = llvm.insertvalue %232, %233[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %235 = llvm.insertvalue %228, %234[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %236 = llvm.mlir.constant(8 : index) : i64
          %237 = llvm.insertvalue %236, %235[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %238 = llvm.mlir.constant(4096 : index) : i64
          %239 = llvm.insertvalue %238, %237[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %240 = llvm.insertvalue %186, %239[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %241 = llvm.mlir.constant(1 : index) : i64
          %242 = llvm.insertvalue %241, %240[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          cf.br ^bb1(%12 : index)
        ^bb1(%243: index):  // 2 preds: ^bb0, ^bb8
          %244 = builtin.unrealized_conversion_cast %243 : index to i64
          %245 = builtin.unrealized_conversion_cast %243 : index to i64
          %246 = llvm.icmp "slt" %244, %0 : i64
          llvm.cond_br %246, ^bb2, ^bb9
        ^bb2:  // pred: ^bb1
          cf.br ^bb3(%12 : index)
        ^bb3(%247: index):  // 2 preds: ^bb2, ^bb7
          %248 = builtin.unrealized_conversion_cast %247 : index to i64
          %249 = builtin.unrealized_conversion_cast %247 : index to i64
          %250 = llvm.icmp "slt" %248, %186 : i64
          llvm.cond_br %250, ^bb4, ^bb8
        ^bb4:  // pred: ^bb3
          cf.br ^bb5(%12 : index)
        ^bb5(%251: index):  // 2 preds: ^bb4, ^bb6
          %252 = builtin.unrealized_conversion_cast %251 : index to i64
          %253 = builtin.unrealized_conversion_cast %251 : index to i64
          %254 = llvm.icmp "slt" %252, %189 : i64
          llvm.cond_br %254, ^bb6, ^bb7
        ^bb6:  // pred: ^bb5
          %255 = llvm.extractvalue %209[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %256 = llvm.extractvalue %209[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %257 = llvm.getelementptr %255[%256] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %258 = llvm.mlir.constant(4096 : index) : i64
          %259 = llvm.mul %245, %258 : i64
          %260 = llvm.add %259, %253 : i64
          %261 = llvm.getelementptr %257[%260] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %262 = llvm.load %261 : !llvm.ptr -> f64
          %263 = llvm.extractvalue %225[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %264 = llvm.extractvalue %225[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %265 = llvm.getelementptr %263[%264] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %266 = llvm.mlir.constant(4096 : index) : i64
          %267 = llvm.mul %253, %266 : i64
          %268 = llvm.add %267, %249 : i64
          %269 = llvm.getelementptr %265[%268] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %270 = llvm.load %269 : !llvm.ptr -> f64
          %271 = llvm.extractvalue %242[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %272 = llvm.extractvalue %242[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %273 = llvm.getelementptr %271[%272] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %274 = llvm.mlir.constant(4096 : index) : i64
          %275 = llvm.mul %245, %274 : i64
          %276 = llvm.add %275, %249 : i64
          %277 = llvm.getelementptr %273[%276] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %278 = llvm.load %277 : !llvm.ptr -> f64
          %279 = llvm.fmul %262, %270  : f64
          %280 = llvm.fadd %278, %279  : f64
          %281 = llvm.extractvalue %242[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %282 = llvm.extractvalue %242[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %283 = llvm.getelementptr %281[%282] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %284 = llvm.mlir.constant(4096 : index) : i64
          %285 = llvm.mul %245, %284 : i64
          %286 = llvm.add %285, %249 : i64
          %287 = llvm.getelementptr %283[%286] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %280, %287 : f64, !llvm.ptr
          %288 = llvm.add %252, %4 : i64
          %289 = builtin.unrealized_conversion_cast %288 : i64 to index
          cf.br ^bb5(%289 : index)
        ^bb7:  // pred: ^bb5
          %290 = llvm.add %248, %4 : i64
          %291 = builtin.unrealized_conversion_cast %290 : i64 to index
          cf.br ^bb3(%291 : index)
        ^bb8:  // pred: ^bb3
          %292 = llvm.add %244, %4 : i64
          %293 = builtin.unrealized_conversion_cast %292 : i64 to index
          cf.br ^bb1(%293 : index)
        ^bb9:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %141 = llvm.add %139, %5 : i64
    llvm.br ^bb21(%141 : i64)
  ^bb23:  // pred: ^bb21
    %142 = llvm.add %134, %7 : i64
    llvm.br ^bb19(%142 : i64)
  ^bb24:  // pred: ^bb19
    %143 = llvm.call @getTime() : () -> f64
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.mlir.zero : !llvm.ptr
    %147 = llvm.getelementptr %146[%144] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %148 = llvm.ptrtoint %147 : !llvm.ptr to i64
    %149 = llvm.call @malloc(%148) : (i64) -> !llvm.ptr
    %150 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %151 = llvm.insertvalue %149, %150[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %152 = llvm.insertvalue %149, %151[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %153 = llvm.mlir.constant(0 : index) : i64
    %154 = llvm.insertvalue %153, %152[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %155 = llvm.insertvalue %144, %154[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.insertvalue %145, %155[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %157 = llvm.extractvalue %156[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %158 = llvm.getelementptr %157[%11] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %13, %158 : f64, !llvm.ptr
    llvm.br ^bb25(%11 : i64)
  ^bb25(%159: i64):  // 2 preds: ^bb24, ^bb29
    %160 = builtin.unrealized_conversion_cast %159 : i64 to index
    %161 = llvm.icmp "slt" %159, %9 : i64
    llvm.cond_br %161, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%11 : i64)
  ^bb27(%162: i64):  // 2 preds: ^bb26, ^bb28
    %163 = builtin.unrealized_conversion_cast %162 : i64 to index
    %164 = llvm.icmp "slt" %162, %9 : i64
    llvm.cond_br %164, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %165 = llvm.extractvalue %119[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %166 = llvm.mlir.constant(4096 : index) : i64
    %167 = llvm.mul %159, %166 : i64
    %168 = llvm.add %167, %162 : i64
    %169 = llvm.getelementptr %165[%168] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %170 = llvm.load %169 : !llvm.ptr -> f64
    %171 = llvm.extractvalue %156[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %172 = llvm.getelementptr %171[%11] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %173 = llvm.load %172 : !llvm.ptr -> f64
    %174 = llvm.fadd %170, %173  : f64
    %175 = llvm.extractvalue %156[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %176 = llvm.getelementptr %175[%11] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %174, %176 : f64, !llvm.ptr
    %177 = llvm.add %162, %4 : i64
    llvm.br ^bb27(%177 : i64)
  ^bb29:  // pred: ^bb27
    %178 = llvm.add %159, %4 : i64
    llvm.br ^bb25(%178 : i64)
  ^bb30:  // pred: ^bb25
    %179 = llvm.extractvalue %156[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %180 = llvm.getelementptr %179[%11] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %181 = llvm.load %180 : !llvm.ptr -> f64
    llvm.call @printF64(%181) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%133, %143) : (f64, f64) -> ()
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
    %0 = llvm.mlir.constant(8 : index) : i64
    %1 = llvm.mlir.constant(6 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(256 : index) : i64
    %4 = llvm.mlir.constant(3072 : index) : i64
    %5 = llvm.mlir.constant(4096 : index) : i64
    %6 = llvm.mlir.constant(0 : index) : i64
    %7 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %8 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %9 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %10 = llvm.mlir.constant(4096 : index) : i64
    %11 = llvm.mlir.constant(4096 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.mlir.constant(16777216 : index) : i64
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
    llvm.br ^bb1(%6 : i64)
  ^bb1(%36: i64):  // 2 preds: ^bb0, ^bb5
    %37 = builtin.unrealized_conversion_cast %36 : i64 to index
    %38 = llvm.icmp "slt" %36, %5 : i64
    llvm.cond_br %38, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%6 : i64)
  ^bb3(%39: i64):  // 2 preds: ^bb2, ^bb4
    %40 = builtin.unrealized_conversion_cast %39 : i64 to index
    %41 = llvm.icmp "slt" %39, %5 : i64
    llvm.cond_br %41, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %42 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %43 = llvm.mlir.constant(4096 : index) : i64
    %44 = llvm.mul %36, %43 : i64
    %45 = llvm.add %44, %39 : i64
    %46 = llvm.getelementptr %42[%45] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %9, %46 : f64, !llvm.ptr
    %47 = llvm.add %39, %2 : i64
    llvm.br ^bb3(%47 : i64)
  ^bb5:  // pred: ^bb3
    %48 = llvm.add %36, %2 : i64
    llvm.br ^bb1(%48 : i64)
  ^bb6:  // pred: ^bb1
    %49 = llvm.mlir.constant(4096 : index) : i64
    %50 = llvm.mlir.constant(4096 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.mlir.constant(16777216 : index) : i64
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
    llvm.br ^bb7(%6 : i64)
  ^bb7(%75: i64):  // 2 preds: ^bb6, ^bb11
    %76 = builtin.unrealized_conversion_cast %75 : i64 to index
    %77 = llvm.icmp "slt" %75, %5 : i64
    llvm.cond_br %77, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%6 : i64)
  ^bb9(%78: i64):  // 2 preds: ^bb8, ^bb10
    %79 = builtin.unrealized_conversion_cast %78 : i64 to index
    %80 = llvm.icmp "slt" %78, %5 : i64
    llvm.cond_br %80, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %81 = llvm.extractvalue %74[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %82 = llvm.mlir.constant(4096 : index) : i64
    %83 = llvm.mul %75, %82 : i64
    %84 = llvm.add %83, %78 : i64
    %85 = llvm.getelementptr %81[%84] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %85 : f64, !llvm.ptr
    %86 = llvm.add %78, %2 : i64
    llvm.br ^bb9(%86 : i64)
  ^bb11:  // pred: ^bb9
    %87 = llvm.add %75, %2 : i64
    llvm.br ^bb7(%87 : i64)
  ^bb12:  // pred: ^bb7
    %88 = llvm.mlir.constant(4096 : index) : i64
    %89 = llvm.mlir.constant(4096 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.mlir.constant(16777216 : index) : i64
    %92 = llvm.mlir.zero : !llvm.ptr
    %93 = llvm.getelementptr %92[%91] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %94 = llvm.ptrtoint %93 : !llvm.ptr to i64
    %95 = llvm.mlir.constant(32 : index) : i64
    %96 = llvm.add %94, %95 : i64
    %97 = llvm.call @malloc(%96) : (i64) -> !llvm.ptr
    %98 = llvm.ptrtoint %97 : !llvm.ptr to i64
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.sub %95, %99 : i64
    %101 = llvm.add %98, %100 : i64
    %102 = llvm.urem %101, %95  : i64
    %103 = llvm.sub %101, %102 : i64
    %104 = llvm.inttoptr %103 : i64 to !llvm.ptr
    %105 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %106 = llvm.insertvalue %97, %105[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %107 = llvm.insertvalue %104, %106[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %108 = llvm.mlir.constant(0 : index) : i64
    %109 = llvm.insertvalue %108, %107[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %110 = llvm.insertvalue %88, %109[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %111 = llvm.insertvalue %89, %110[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %112 = llvm.insertvalue %89, %111[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %113 = llvm.insertvalue %90, %112[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb13(%6 : i64)
  ^bb13(%114: i64):  // 2 preds: ^bb12, ^bb17
    %115 = builtin.unrealized_conversion_cast %114 : i64 to index
    %116 = llvm.icmp "slt" %114, %5 : i64
    llvm.cond_br %116, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%6 : i64)
  ^bb15(%117: i64):  // 2 preds: ^bb14, ^bb16
    %118 = builtin.unrealized_conversion_cast %117 : i64 to index
    %119 = llvm.icmp "slt" %117, %5 : i64
    llvm.cond_br %119, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %120 = llvm.extractvalue %113[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %121 = llvm.mlir.constant(4096 : index) : i64
    %122 = llvm.mul %114, %121 : i64
    %123 = llvm.add %122, %117 : i64
    %124 = llvm.getelementptr %120[%123] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %124 : f64, !llvm.ptr
    %125 = llvm.add %117, %2 : i64
    llvm.br ^bb15(%125 : i64)
  ^bb17:  // pred: ^bb15
    %126 = llvm.add %114, %2 : i64
    llvm.br ^bb13(%126 : i64)
  ^bb18:  // pred: ^bb13
    %127 = llvm.call @getTime() : () -> f64
    llvm.br ^bb19(%6 : i64)
  ^bb19(%128: i64):  // 2 preds: ^bb18, ^bb23
    %129 = llvm.icmp "slt" %128, %5 : i64
    llvm.cond_br %129, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %130 = llvm.sub %5, %128 : i64
    %131 = llvm.intr.smin(%130, %4)  : (i64, i64) -> i64
    llvm.br ^bb21(%6 : i64)
  ^bb21(%132: i64):  // 2 preds: ^bb20, ^bb22
    %133 = llvm.icmp "slt" %132, %5 : i64
    llvm.cond_br %133, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0, %arg1, %arg2) : i64 = (%6, %6, %6) to (%5, %3, %131) step (%1, %0, %4) {
          %175 = builtin.unrealized_conversion_cast %arg2 : i64 to index
          %176 = builtin.unrealized_conversion_cast %arg1 : i64 to index
          %177 = builtin.unrealized_conversion_cast %arg0 : i64 to index
          %178 = builtin.unrealized_conversion_cast %176 : index to i64
          %179 = builtin.unrealized_conversion_cast %175 : index to i64
          %180 = builtin.unrealized_conversion_cast %177 : index to i64
          %181 = llvm.sub %5, %180 : i64
          %182 = llvm.intr.smin(%181, %1)  : (i64, i64) -> i64
          %183 = builtin.unrealized_conversion_cast %182 : i64 to index
          %184 = llvm.sub %131, %179 : i64
          %185 = llvm.intr.smin(%184, %4)  : (i64, i64) -> i64
          %186 = builtin.unrealized_conversion_cast %185 : i64 to index
          %187 = llvm.add %132, %178 : i64
          %188 = llvm.add %128, %179 : i64
          %189 = llvm.mlir.constant(4096 : index) : i64
          %190 = llvm.mul %187, %189 : i64
          %191 = llvm.add %190, %188 : i64
          %192 = builtin.unrealized_conversion_cast %191 : i64 to index
          %193 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %194 = llvm.extractvalue %35[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %195 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %196 = llvm.insertvalue %194, %193[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %197 = llvm.insertvalue %195, %196[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %198 = llvm.insertvalue %191, %197[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %199 = llvm.mlir.constant(8 : index) : i64
          %200 = llvm.insertvalue %199, %198[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %201 = llvm.mlir.constant(4096 : index) : i64
          %202 = llvm.insertvalue %201, %200[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %203 = llvm.insertvalue %185, %202[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %204 = llvm.mlir.constant(1 : index) : i64
          %205 = llvm.insertvalue %204, %203[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %206 = llvm.mlir.constant(4096 : index) : i64
          %207 = llvm.mul %188, %206 : i64
          %208 = llvm.add %207, %180 : i64
          %209 = builtin.unrealized_conversion_cast %208 : i64 to index
          %210 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %211 = llvm.extractvalue %74[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %212 = llvm.extractvalue %74[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %213 = llvm.insertvalue %211, %210[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %214 = llvm.insertvalue %212, %213[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %215 = llvm.insertvalue %208, %214[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %216 = llvm.insertvalue %185, %215[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %217 = llvm.mlir.constant(4096 : index) : i64
          %218 = llvm.insertvalue %217, %216[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %219 = llvm.insertvalue %182, %218[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %220 = llvm.mlir.constant(1 : index) : i64
          %221 = llvm.insertvalue %220, %219[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %222 = llvm.mlir.constant(4096 : index) : i64
          %223 = llvm.mul %187, %222 : i64
          %224 = llvm.add %223, %180 : i64
          %225 = builtin.unrealized_conversion_cast %224 : i64 to index
          %226 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %227 = llvm.extractvalue %113[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %228 = llvm.extractvalue %113[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %229 = llvm.insertvalue %227, %226[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %230 = llvm.insertvalue %228, %229[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %231 = llvm.insertvalue %224, %230[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %232 = llvm.mlir.constant(8 : index) : i64
          %233 = llvm.insertvalue %232, %231[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %234 = llvm.mlir.constant(4096 : index) : i64
          %235 = llvm.insertvalue %234, %233[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %236 = llvm.insertvalue %182, %235[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %237 = llvm.mlir.constant(1 : index) : i64
          %238 = llvm.insertvalue %237, %236[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          llvm.br ^bb1(%6 : i64)
        ^bb1(%239: i64):  // 2 preds: ^bb0, ^bb8
          %240 = builtin.unrealized_conversion_cast %239 : i64 to index
          %241 = builtin.unrealized_conversion_cast %240 : index to i64
          %242 = builtin.unrealized_conversion_cast %240 : index to i64
          %243 = llvm.icmp "slt" %241, %0 : i64
          llvm.cond_br %243, ^bb2, ^bb9
        ^bb2:  // pred: ^bb1
          llvm.br ^bb3(%6 : i64)
        ^bb3(%244: i64):  // 2 preds: ^bb2, ^bb7
          %245 = builtin.unrealized_conversion_cast %244 : i64 to index
          %246 = builtin.unrealized_conversion_cast %245 : index to i64
          %247 = builtin.unrealized_conversion_cast %245 : index to i64
          %248 = llvm.icmp "slt" %246, %182 : i64
          llvm.cond_br %248, ^bb4, ^bb8
        ^bb4:  // pred: ^bb3
          llvm.br ^bb5(%6 : i64)
        ^bb5(%249: i64):  // 2 preds: ^bb4, ^bb6
          %250 = builtin.unrealized_conversion_cast %249 : i64 to index
          %251 = builtin.unrealized_conversion_cast %250 : index to i64
          %252 = builtin.unrealized_conversion_cast %250 : index to i64
          %253 = llvm.icmp "slt" %251, %185 : i64
          llvm.cond_br %253, ^bb6, ^bb7
        ^bb6:  // pred: ^bb5
          %254 = llvm.extractvalue %205[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %255 = llvm.extractvalue %205[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %256 = llvm.getelementptr %254[%255] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %257 = llvm.mlir.constant(4096 : index) : i64
          %258 = llvm.mul %242, %257 : i64
          %259 = llvm.add %258, %252 : i64
          %260 = llvm.getelementptr %256[%259] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %261 = llvm.load %260 : !llvm.ptr -> f64
          %262 = llvm.extractvalue %221[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %263 = llvm.extractvalue %221[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %264 = llvm.getelementptr %262[%263] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %265 = llvm.mlir.constant(4096 : index) : i64
          %266 = llvm.mul %252, %265 : i64
          %267 = llvm.add %266, %247 : i64
          %268 = llvm.getelementptr %264[%267] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %269 = llvm.load %268 : !llvm.ptr -> f64
          %270 = llvm.extractvalue %238[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %271 = llvm.extractvalue %238[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %272 = llvm.getelementptr %270[%271] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %273 = llvm.mlir.constant(4096 : index) : i64
          %274 = llvm.mul %242, %273 : i64
          %275 = llvm.add %274, %247 : i64
          %276 = llvm.getelementptr %272[%275] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %277 = llvm.load %276 : !llvm.ptr -> f64
          %278 = llvm.fmul %261, %269  : f64
          %279 = llvm.fadd %277, %278  : f64
          %280 = llvm.extractvalue %238[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %281 = llvm.extractvalue %238[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %282 = llvm.getelementptr %280[%281] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %283 = llvm.mlir.constant(4096 : index) : i64
          %284 = llvm.mul %242, %283 : i64
          %285 = llvm.add %284, %247 : i64
          %286 = llvm.getelementptr %282[%285] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %279, %286 : f64, !llvm.ptr
          %287 = llvm.add %251, %2 : i64
          llvm.br ^bb5(%287 : i64)
        ^bb7:  // pred: ^bb5
          %288 = llvm.add %246, %2 : i64
          llvm.br ^bb3(%288 : i64)
        ^bb8:  // pred: ^bb3
          %289 = llvm.add %241, %2 : i64
          llvm.br ^bb1(%289 : i64)
        ^bb9:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %134 = llvm.add %132, %3 : i64
    llvm.br ^bb21(%134 : i64)
  ^bb23:  // pred: ^bb21
    %135 = llvm.add %128, %4 : i64
    llvm.br ^bb19(%135 : i64)
  ^bb24:  // pred: ^bb19
    %136 = llvm.call @getTime() : () -> f64
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.zero : !llvm.ptr
    %140 = llvm.getelementptr %139[%137] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %141 = llvm.ptrtoint %140 : !llvm.ptr to i64
    %142 = llvm.call @malloc(%141) : (i64) -> !llvm.ptr
    %143 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %144 = llvm.insertvalue %142, %143[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %145 = llvm.insertvalue %142, %144[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %146 = llvm.mlir.constant(0 : index) : i64
    %147 = llvm.insertvalue %146, %145[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %148 = llvm.insertvalue %137, %147[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %149 = llvm.insertvalue %138, %148[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %150 = llvm.extractvalue %149[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %151 = llvm.getelementptr %150[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %151 : f64, !llvm.ptr
    llvm.br ^bb25(%6 : i64)
  ^bb25(%152: i64):  // 2 preds: ^bb24, ^bb29
    %153 = builtin.unrealized_conversion_cast %152 : i64 to index
    %154 = llvm.icmp "slt" %152, %5 : i64
    llvm.cond_br %154, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%6 : i64)
  ^bb27(%155: i64):  // 2 preds: ^bb26, ^bb28
    %156 = builtin.unrealized_conversion_cast %155 : i64 to index
    %157 = llvm.icmp "slt" %155, %5 : i64
    llvm.cond_br %157, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %158 = llvm.extractvalue %113[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %159 = llvm.mlir.constant(4096 : index) : i64
    %160 = llvm.mul %152, %159 : i64
    %161 = llvm.add %160, %155 : i64
    %162 = llvm.getelementptr %158[%161] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %163 = llvm.load %162 : !llvm.ptr -> f64
    %164 = llvm.extractvalue %149[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %165 = llvm.getelementptr %164[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %166 = llvm.load %165 : !llvm.ptr -> f64
    %167 = llvm.fadd %163, %166  : f64
    %168 = llvm.extractvalue %149[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %169 = llvm.getelementptr %168[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %167, %169 : f64, !llvm.ptr
    %170 = llvm.add %155, %2 : i64
    llvm.br ^bb27(%170 : i64)
  ^bb29:  // pred: ^bb27
    %171 = llvm.add %152, %2 : i64
    llvm.br ^bb25(%171 : i64)
  ^bb30:  // pred: ^bb25
    %172 = llvm.extractvalue %149[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %173 = llvm.getelementptr %172[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %174 = llvm.load %173 : !llvm.ptr -> f64
    llvm.call @printF64(%174) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%127, %136) : (f64, f64) -> ()
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
    %0 = llvm.mlir.constant(8 : index) : i64
    %1 = llvm.mlir.constant(6 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(256 : index) : i64
    %4 = llvm.mlir.constant(3072 : index) : i64
    %5 = llvm.mlir.constant(4096 : index) : i64
    %6 = llvm.mlir.constant(0 : index) : i64
    %7 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %8 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %9 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %10 = llvm.mlir.constant(4096 : index) : i64
    %11 = llvm.mlir.constant(4096 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.mlir.constant(16777216 : index) : i64
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
    llvm.br ^bb1(%6 : i64)
  ^bb1(%36: i64):  // 2 preds: ^bb0, ^bb5
    %37 = llvm.icmp "slt" %36, %5 : i64
    llvm.cond_br %37, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%6 : i64)
  ^bb3(%38: i64):  // 2 preds: ^bb2, ^bb4
    %39 = llvm.icmp "slt" %38, %5 : i64
    llvm.cond_br %39, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %40 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.mlir.constant(4096 : index) : i64
    %42 = llvm.mul %36, %41 : i64
    %43 = llvm.add %42, %38 : i64
    %44 = llvm.getelementptr %40[%43] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %9, %44 : f64, !llvm.ptr
    %45 = llvm.add %38, %2 : i64
    llvm.br ^bb3(%45 : i64)
  ^bb5:  // pred: ^bb3
    %46 = llvm.add %36, %2 : i64
    llvm.br ^bb1(%46 : i64)
  ^bb6:  // pred: ^bb1
    %47 = llvm.mlir.constant(4096 : index) : i64
    %48 = llvm.mlir.constant(4096 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(16777216 : index) : i64
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
    llvm.br ^bb7(%6 : i64)
  ^bb7(%73: i64):  // 2 preds: ^bb6, ^bb11
    %74 = llvm.icmp "slt" %73, %5 : i64
    llvm.cond_br %74, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%6 : i64)
  ^bb9(%75: i64):  // 2 preds: ^bb8, ^bb10
    %76 = llvm.icmp "slt" %75, %5 : i64
    llvm.cond_br %76, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %77 = llvm.extractvalue %72[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %78 = llvm.mlir.constant(4096 : index) : i64
    %79 = llvm.mul %73, %78 : i64
    %80 = llvm.add %79, %75 : i64
    %81 = llvm.getelementptr %77[%80] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %81 : f64, !llvm.ptr
    %82 = llvm.add %75, %2 : i64
    llvm.br ^bb9(%82 : i64)
  ^bb11:  // pred: ^bb9
    %83 = llvm.add %73, %2 : i64
    llvm.br ^bb7(%83 : i64)
  ^bb12:  // pred: ^bb7
    %84 = llvm.mlir.constant(4096 : index) : i64
    %85 = llvm.mlir.constant(4096 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(16777216 : index) : i64
    %88 = llvm.mlir.zero : !llvm.ptr
    %89 = llvm.getelementptr %88[%87] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %90 = llvm.ptrtoint %89 : !llvm.ptr to i64
    %91 = llvm.mlir.constant(32 : index) : i64
    %92 = llvm.add %90, %91 : i64
    %93 = llvm.call @malloc(%92) : (i64) -> !llvm.ptr
    %94 = llvm.ptrtoint %93 : !llvm.ptr to i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.sub %91, %95 : i64
    %97 = llvm.add %94, %96 : i64
    %98 = llvm.urem %97, %91  : i64
    %99 = llvm.sub %97, %98 : i64
    %100 = llvm.inttoptr %99 : i64 to !llvm.ptr
    %101 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %102 = llvm.insertvalue %93, %101[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.insertvalue %100, %102[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.mlir.constant(0 : index) : i64
    %105 = llvm.insertvalue %104, %103[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %106 = llvm.insertvalue %84, %105[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %107 = llvm.insertvalue %85, %106[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %108 = llvm.insertvalue %85, %107[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %109 = llvm.insertvalue %86, %108[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb13(%6 : i64)
  ^bb13(%110: i64):  // 2 preds: ^bb12, ^bb17
    %111 = llvm.icmp "slt" %110, %5 : i64
    llvm.cond_br %111, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%6 : i64)
  ^bb15(%112: i64):  // 2 preds: ^bb14, ^bb16
    %113 = llvm.icmp "slt" %112, %5 : i64
    llvm.cond_br %113, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %114 = llvm.extractvalue %109[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %115 = llvm.mlir.constant(4096 : index) : i64
    %116 = llvm.mul %110, %115 : i64
    %117 = llvm.add %116, %112 : i64
    %118 = llvm.getelementptr %114[%117] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %118 : f64, !llvm.ptr
    %119 = llvm.add %112, %2 : i64
    llvm.br ^bb15(%119 : i64)
  ^bb17:  // pred: ^bb15
    %120 = llvm.add %110, %2 : i64
    llvm.br ^bb13(%120 : i64)
  ^bb18:  // pred: ^bb13
    %121 = llvm.call @getTime() : () -> f64
    llvm.br ^bb19(%6 : i64)
  ^bb19(%122: i64):  // 2 preds: ^bb18, ^bb23
    %123 = llvm.icmp "slt" %122, %5 : i64
    llvm.cond_br %123, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %124 = llvm.sub %5, %122 : i64
    %125 = llvm.intr.smin(%124, %4)  : (i64, i64) -> i64
    llvm.br ^bb21(%6 : i64)
  ^bb21(%126: i64):  // 2 preds: ^bb20, ^bb22
    %127 = llvm.icmp "slt" %126, %5 : i64
    llvm.cond_br %127, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0, %arg1, %arg2) : i64 = (%6, %6, %6) to (%5, %3, %125) step (%1, %0, %4) {
          %167 = llvm.sub %5, %arg0 : i64
          %168 = llvm.intr.smin(%167, %1)  : (i64, i64) -> i64
          %169 = llvm.sub %125, %arg2 : i64
          %170 = llvm.intr.smin(%169, %4)  : (i64, i64) -> i64
          %171 = llvm.add %126, %arg1 : i64
          %172 = llvm.add %122, %arg2 : i64
          %173 = llvm.mlir.constant(4096 : index) : i64
          %174 = llvm.mul %171, %173 : i64
          %175 = llvm.add %174, %172 : i64
          %176 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %177 = llvm.extractvalue %35[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %178 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %179 = llvm.insertvalue %177, %176[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %180 = llvm.insertvalue %178, %179[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %181 = llvm.insertvalue %175, %180[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %182 = llvm.mlir.constant(8 : index) : i64
          %183 = llvm.insertvalue %182, %181[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %184 = llvm.mlir.constant(4096 : index) : i64
          %185 = llvm.insertvalue %184, %183[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %186 = llvm.insertvalue %170, %185[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %187 = llvm.mlir.constant(1 : index) : i64
          %188 = llvm.insertvalue %187, %186[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %189 = llvm.mlir.constant(4096 : index) : i64
          %190 = llvm.mul %172, %189 : i64
          %191 = llvm.add %190, %arg0 : i64
          %192 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %193 = llvm.extractvalue %72[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %194 = llvm.extractvalue %72[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %195 = llvm.insertvalue %193, %192[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %196 = llvm.insertvalue %194, %195[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %197 = llvm.insertvalue %191, %196[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %198 = llvm.insertvalue %170, %197[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %199 = llvm.mlir.constant(4096 : index) : i64
          %200 = llvm.insertvalue %199, %198[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %201 = llvm.insertvalue %168, %200[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %202 = llvm.mlir.constant(1 : index) : i64
          %203 = llvm.insertvalue %202, %201[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %204 = llvm.mlir.constant(4096 : index) : i64
          %205 = llvm.mul %171, %204 : i64
          %206 = llvm.add %205, %arg0 : i64
          %207 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %208 = llvm.extractvalue %109[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %209 = llvm.extractvalue %109[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %210 = llvm.insertvalue %208, %207[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %211 = llvm.insertvalue %209, %210[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %212 = llvm.insertvalue %206, %211[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %213 = llvm.mlir.constant(8 : index) : i64
          %214 = llvm.insertvalue %213, %212[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %215 = llvm.mlir.constant(4096 : index) : i64
          %216 = llvm.insertvalue %215, %214[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %217 = llvm.insertvalue %168, %216[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %218 = llvm.mlir.constant(1 : index) : i64
          %219 = llvm.insertvalue %218, %217[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          llvm.br ^bb1(%6 : i64)
        ^bb1(%220: i64):  // 2 preds: ^bb0, ^bb8
          %221 = llvm.icmp "slt" %220, %0 : i64
          llvm.cond_br %221, ^bb2, ^bb9
        ^bb2:  // pred: ^bb1
          llvm.br ^bb3(%6 : i64)
        ^bb3(%222: i64):  // 2 preds: ^bb2, ^bb7
          %223 = llvm.icmp "slt" %222, %168 : i64
          llvm.cond_br %223, ^bb4, ^bb8
        ^bb4:  // pred: ^bb3
          llvm.br ^bb5(%6 : i64)
        ^bb5(%224: i64):  // 2 preds: ^bb4, ^bb6
          %225 = llvm.icmp "slt" %224, %170 : i64
          llvm.cond_br %225, ^bb6, ^bb7
        ^bb6:  // pred: ^bb5
          %226 = llvm.extractvalue %188[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %227 = llvm.extractvalue %188[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %228 = llvm.getelementptr %226[%227] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %229 = llvm.mlir.constant(4096 : index) : i64
          %230 = llvm.mul %220, %229 : i64
          %231 = llvm.add %230, %224 : i64
          %232 = llvm.getelementptr %228[%231] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %233 = llvm.load %232 : !llvm.ptr -> f64
          %234 = llvm.extractvalue %203[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %235 = llvm.extractvalue %203[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %236 = llvm.getelementptr %234[%235] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %237 = llvm.mlir.constant(4096 : index) : i64
          %238 = llvm.mul %224, %237 : i64
          %239 = llvm.add %238, %222 : i64
          %240 = llvm.getelementptr %236[%239] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %241 = llvm.load %240 : !llvm.ptr -> f64
          %242 = llvm.extractvalue %219[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %243 = llvm.extractvalue %219[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %244 = llvm.getelementptr %242[%243] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %245 = llvm.mlir.constant(4096 : index) : i64
          %246 = llvm.mul %220, %245 : i64
          %247 = llvm.add %246, %222 : i64
          %248 = llvm.getelementptr %244[%247] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %249 = llvm.load %248 : !llvm.ptr -> f64
          %250 = llvm.fmul %233, %241  : f64
          %251 = llvm.fadd %249, %250  : f64
          %252 = llvm.extractvalue %219[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %253 = llvm.extractvalue %219[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %254 = llvm.getelementptr %252[%253] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %255 = llvm.mlir.constant(4096 : index) : i64
          %256 = llvm.mul %220, %255 : i64
          %257 = llvm.add %256, %222 : i64
          %258 = llvm.getelementptr %254[%257] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %251, %258 : f64, !llvm.ptr
          %259 = llvm.add %224, %2 : i64
          llvm.br ^bb5(%259 : i64)
        ^bb7:  // pred: ^bb5
          %260 = llvm.add %222, %2 : i64
          llvm.br ^bb3(%260 : i64)
        ^bb8:  // pred: ^bb3
          %261 = llvm.add %220, %2 : i64
          llvm.br ^bb1(%261 : i64)
        ^bb9:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %128 = llvm.add %126, %3 : i64
    llvm.br ^bb21(%128 : i64)
  ^bb23:  // pred: ^bb21
    %129 = llvm.add %122, %4 : i64
    llvm.br ^bb19(%129 : i64)
  ^bb24:  // pred: ^bb19
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
    %145 = llvm.getelementptr %144[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %145 : f64, !llvm.ptr
    llvm.br ^bb25(%6 : i64)
  ^bb25(%146: i64):  // 2 preds: ^bb24, ^bb29
    %147 = llvm.icmp "slt" %146, %5 : i64
    llvm.cond_br %147, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%6 : i64)
  ^bb27(%148: i64):  // 2 preds: ^bb26, ^bb28
    %149 = llvm.icmp "slt" %148, %5 : i64
    llvm.cond_br %149, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %150 = llvm.extractvalue %109[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %151 = llvm.mlir.constant(4096 : index) : i64
    %152 = llvm.mul %146, %151 : i64
    %153 = llvm.add %152, %148 : i64
    %154 = llvm.getelementptr %150[%153] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %155 = llvm.load %154 : !llvm.ptr -> f64
    %156 = llvm.extractvalue %143[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %157 = llvm.getelementptr %156[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %158 = llvm.load %157 : !llvm.ptr -> f64
    %159 = llvm.fadd %155, %158  : f64
    %160 = llvm.extractvalue %143[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %161 = llvm.getelementptr %160[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %159, %161 : f64, !llvm.ptr
    %162 = llvm.add %148, %2 : i64
    llvm.br ^bb27(%162 : i64)
  ^bb29:  // pred: ^bb27
    %163 = llvm.add %146, %2 : i64
    llvm.br ^bb25(%163 : i64)
  ^bb30:  // pred: ^bb25
    %164 = llvm.extractvalue %143[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %165 = llvm.getelementptr %164[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %166 = llvm.load %165 : !llvm.ptr -> f64
    llvm.call @printF64(%166) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%121, %130) : (f64, f64) -> ()
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
    %0 = llvm.mlir.constant(8 : index) : i64
    %1 = llvm.mlir.constant(6 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(256 : index) : i64
    %4 = llvm.mlir.constant(3072 : index) : i64
    %5 = llvm.mlir.constant(4096 : index) : i64
    %6 = llvm.mlir.constant(0 : index) : i64
    %7 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %8 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %9 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %10 = llvm.mlir.constant(4096 : index) : i64
    %11 = llvm.mlir.constant(4096 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.mlir.constant(16777216 : index) : i64
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
    llvm.br ^bb1(%6 : i64)
  ^bb1(%36: i64):  // 2 preds: ^bb0, ^bb5
    %37 = llvm.icmp "slt" %36, %5 : i64
    llvm.cond_br %37, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%6 : i64)
  ^bb3(%38: i64):  // 2 preds: ^bb2, ^bb4
    %39 = llvm.icmp "slt" %38, %5 : i64
    llvm.cond_br %39, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %40 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.mlir.constant(4096 : index) : i64
    %42 = llvm.mul %36, %41 : i64
    %43 = llvm.add %42, %38 : i64
    %44 = llvm.getelementptr %40[%43] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %9, %44 : f64, !llvm.ptr
    %45 = llvm.add %38, %2 : i64
    llvm.br ^bb3(%45 : i64)
  ^bb5:  // pred: ^bb3
    %46 = llvm.add %36, %2 : i64
    llvm.br ^bb1(%46 : i64)
  ^bb6:  // pred: ^bb1
    %47 = llvm.mlir.constant(4096 : index) : i64
    %48 = llvm.mlir.constant(4096 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(16777216 : index) : i64
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
    llvm.br ^bb7(%6 : i64)
  ^bb7(%73: i64):  // 2 preds: ^bb6, ^bb11
    %74 = llvm.icmp "slt" %73, %5 : i64
    llvm.cond_br %74, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%6 : i64)
  ^bb9(%75: i64):  // 2 preds: ^bb8, ^bb10
    %76 = llvm.icmp "slt" %75, %5 : i64
    llvm.cond_br %76, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %77 = llvm.extractvalue %72[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %78 = llvm.mlir.constant(4096 : index) : i64
    %79 = llvm.mul %73, %78 : i64
    %80 = llvm.add %79, %75 : i64
    %81 = llvm.getelementptr %77[%80] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %81 : f64, !llvm.ptr
    %82 = llvm.add %75, %2 : i64
    llvm.br ^bb9(%82 : i64)
  ^bb11:  // pred: ^bb9
    %83 = llvm.add %73, %2 : i64
    llvm.br ^bb7(%83 : i64)
  ^bb12:  // pred: ^bb7
    %84 = llvm.mlir.constant(4096 : index) : i64
    %85 = llvm.mlir.constant(4096 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(16777216 : index) : i64
    %88 = llvm.mlir.zero : !llvm.ptr
    %89 = llvm.getelementptr %88[%87] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %90 = llvm.ptrtoint %89 : !llvm.ptr to i64
    %91 = llvm.mlir.constant(32 : index) : i64
    %92 = llvm.add %90, %91 : i64
    %93 = llvm.call @malloc(%92) : (i64) -> !llvm.ptr
    %94 = llvm.ptrtoint %93 : !llvm.ptr to i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.sub %91, %95 : i64
    %97 = llvm.add %94, %96 : i64
    %98 = llvm.urem %97, %91  : i64
    %99 = llvm.sub %97, %98 : i64
    %100 = llvm.inttoptr %99 : i64 to !llvm.ptr
    %101 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %102 = llvm.insertvalue %93, %101[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.insertvalue %100, %102[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.mlir.constant(0 : index) : i64
    %105 = llvm.insertvalue %104, %103[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %106 = llvm.insertvalue %84, %105[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %107 = llvm.insertvalue %85, %106[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %108 = llvm.insertvalue %85, %107[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %109 = llvm.insertvalue %86, %108[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb13(%6 : i64)
  ^bb13(%110: i64):  // 2 preds: ^bb12, ^bb17
    %111 = llvm.icmp "slt" %110, %5 : i64
    llvm.cond_br %111, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%6 : i64)
  ^bb15(%112: i64):  // 2 preds: ^bb14, ^bb16
    %113 = llvm.icmp "slt" %112, %5 : i64
    llvm.cond_br %113, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %114 = llvm.extractvalue %109[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %115 = llvm.mlir.constant(4096 : index) : i64
    %116 = llvm.mul %110, %115 : i64
    %117 = llvm.add %116, %112 : i64
    %118 = llvm.getelementptr %114[%117] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %118 : f64, !llvm.ptr
    %119 = llvm.add %112, %2 : i64
    llvm.br ^bb15(%119 : i64)
  ^bb17:  // pred: ^bb15
    %120 = llvm.add %110, %2 : i64
    llvm.br ^bb13(%120 : i64)
  ^bb18:  // pred: ^bb13
    %121 = llvm.call @getTime() : () -> f64
    llvm.br ^bb19(%6 : i64)
  ^bb19(%122: i64):  // 2 preds: ^bb18, ^bb23
    %123 = llvm.icmp "slt" %122, %5 : i64
    llvm.cond_br %123, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %124 = llvm.sub %5, %122 : i64
    %125 = llvm.intr.smin(%124, %4)  : (i64, i64) -> i64
    llvm.br ^bb21(%6 : i64)
  ^bb21(%126: i64):  // 2 preds: ^bb20, ^bb22
    %127 = llvm.icmp "slt" %126, %5 : i64
    llvm.cond_br %127, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    omp.parallel {
      omp.wsloop {
        omp.loop_nest (%arg0, %arg1, %arg2) : i64 = (%6, %6, %6) to (%5, %3, %125) step (%1, %0, %4) {
          %167 = llvm.sub %5, %arg0 : i64
          %168 = llvm.intr.smin(%167, %1)  : (i64, i64) -> i64
          %169 = llvm.sub %125, %arg2 : i64
          %170 = llvm.intr.smin(%169, %4)  : (i64, i64) -> i64
          %171 = llvm.add %126, %arg1 : i64
          %172 = llvm.add %122, %arg2 : i64
          %173 = llvm.mlir.constant(4096 : index) : i64
          %174 = llvm.mul %171, %173 : i64
          %175 = llvm.add %174, %172 : i64
          %176 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %177 = llvm.extractvalue %35[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %178 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %179 = llvm.insertvalue %177, %176[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %180 = llvm.insertvalue %178, %179[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %181 = llvm.insertvalue %175, %180[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %182 = llvm.mlir.constant(8 : index) : i64
          %183 = llvm.insertvalue %182, %181[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %184 = llvm.mlir.constant(4096 : index) : i64
          %185 = llvm.insertvalue %184, %183[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %186 = llvm.insertvalue %170, %185[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %187 = llvm.mlir.constant(1 : index) : i64
          %188 = llvm.insertvalue %187, %186[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %189 = llvm.mlir.constant(4096 : index) : i64
          %190 = llvm.mul %172, %189 : i64
          %191 = llvm.add %190, %arg0 : i64
          %192 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %193 = llvm.extractvalue %72[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %194 = llvm.extractvalue %72[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %195 = llvm.insertvalue %193, %192[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %196 = llvm.insertvalue %194, %195[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %197 = llvm.insertvalue %191, %196[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %198 = llvm.insertvalue %170, %197[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %199 = llvm.mlir.constant(4096 : index) : i64
          %200 = llvm.insertvalue %199, %198[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %201 = llvm.insertvalue %168, %200[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %202 = llvm.mlir.constant(1 : index) : i64
          %203 = llvm.insertvalue %202, %201[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %204 = llvm.mlir.constant(4096 : index) : i64
          %205 = llvm.mul %171, %204 : i64
          %206 = llvm.add %205, %arg0 : i64
          %207 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
          %208 = llvm.extractvalue %109[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %209 = llvm.extractvalue %109[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %210 = llvm.insertvalue %208, %207[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %211 = llvm.insertvalue %209, %210[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %212 = llvm.insertvalue %206, %211[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %213 = llvm.mlir.constant(8 : index) : i64
          %214 = llvm.insertvalue %213, %212[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %215 = llvm.mlir.constant(4096 : index) : i64
          %216 = llvm.insertvalue %215, %214[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %217 = llvm.insertvalue %168, %216[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %218 = llvm.mlir.constant(1 : index) : i64
          %219 = llvm.insertvalue %218, %217[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          llvm.br ^bb1(%6 : i64)
        ^bb1(%220: i64):  // 2 preds: ^bb0, ^bb8
          %221 = llvm.icmp "slt" %220, %0 : i64
          llvm.cond_br %221, ^bb2, ^bb9
        ^bb2:  // pred: ^bb1
          llvm.br ^bb3(%6 : i64)
        ^bb3(%222: i64):  // 2 preds: ^bb2, ^bb7
          %223 = llvm.icmp "slt" %222, %168 : i64
          llvm.cond_br %223, ^bb4, ^bb8
        ^bb4:  // pred: ^bb3
          llvm.br ^bb5(%6 : i64)
        ^bb5(%224: i64):  // 2 preds: ^bb4, ^bb6
          %225 = llvm.icmp "slt" %224, %170 : i64
          llvm.cond_br %225, ^bb6, ^bb7
        ^bb6:  // pred: ^bb5
          %226 = llvm.extractvalue %188[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %227 = llvm.extractvalue %188[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %228 = llvm.getelementptr %226[%227] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %229 = llvm.mlir.constant(4096 : index) : i64
          %230 = llvm.mul %220, %229 : i64
          %231 = llvm.add %230, %224 : i64
          %232 = llvm.getelementptr %228[%231] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %233 = llvm.load %232 : !llvm.ptr -> f64
          %234 = llvm.extractvalue %203[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %235 = llvm.extractvalue %203[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %236 = llvm.getelementptr %234[%235] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %237 = llvm.mlir.constant(4096 : index) : i64
          %238 = llvm.mul %224, %237 : i64
          %239 = llvm.add %238, %222 : i64
          %240 = llvm.getelementptr %236[%239] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %241 = llvm.load %240 : !llvm.ptr -> f64
          %242 = llvm.extractvalue %219[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %243 = llvm.extractvalue %219[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %244 = llvm.getelementptr %242[%243] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %245 = llvm.mlir.constant(4096 : index) : i64
          %246 = llvm.mul %220, %245 : i64
          %247 = llvm.add %246, %222 : i64
          %248 = llvm.getelementptr %244[%247] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %249 = llvm.load %248 : !llvm.ptr -> f64
          %250 = llvm.fmul %233, %241  : f64
          %251 = llvm.fadd %249, %250  : f64
          %252 = llvm.extractvalue %219[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %253 = llvm.extractvalue %219[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
          %254 = llvm.getelementptr %252[%253] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          %255 = llvm.mlir.constant(4096 : index) : i64
          %256 = llvm.mul %220, %255 : i64
          %257 = llvm.add %256, %222 : i64
          %258 = llvm.getelementptr %254[%257] : (!llvm.ptr, i64) -> !llvm.ptr, f64
          llvm.store %251, %258 : f64, !llvm.ptr
          %259 = llvm.add %224, %2 : i64
          llvm.br ^bb5(%259 : i64)
        ^bb7:  // pred: ^bb5
          %260 = llvm.add %222, %2 : i64
          llvm.br ^bb3(%260 : i64)
        ^bb8:  // pred: ^bb3
          %261 = llvm.add %220, %2 : i64
          llvm.br ^bb1(%261 : i64)
        ^bb9:  // pred: ^bb1
          omp.yield
        }
        omp.terminator
      }
      omp.terminator
    }
    %128 = llvm.add %126, %3 : i64
    llvm.br ^bb21(%128 : i64)
  ^bb23:  // pred: ^bb21
    %129 = llvm.add %122, %4 : i64
    llvm.br ^bb19(%129 : i64)
  ^bb24:  // pred: ^bb19
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
    %145 = llvm.getelementptr %144[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %145 : f64, !llvm.ptr
    llvm.br ^bb25(%6 : i64)
  ^bb25(%146: i64):  // 2 preds: ^bb24, ^bb29
    %147 = llvm.icmp "slt" %146, %5 : i64
    llvm.cond_br %147, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%6 : i64)
  ^bb27(%148: i64):  // 2 preds: ^bb26, ^bb28
    %149 = llvm.icmp "slt" %148, %5 : i64
    llvm.cond_br %149, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %150 = llvm.extractvalue %109[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %151 = llvm.mlir.constant(4096 : index) : i64
    %152 = llvm.mul %146, %151 : i64
    %153 = llvm.add %152, %148 : i64
    %154 = llvm.getelementptr %150[%153] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %155 = llvm.load %154 : !llvm.ptr -> f64
    %156 = llvm.extractvalue %143[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %157 = llvm.getelementptr %156[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %158 = llvm.load %157 : !llvm.ptr -> f64
    %159 = llvm.fadd %155, %158  : f64
    %160 = llvm.extractvalue %143[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %161 = llvm.getelementptr %160[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %159, %161 : f64, !llvm.ptr
    %162 = llvm.add %148, %2 : i64
    llvm.br ^bb27(%162 : i64)
  ^bb29:  // pred: ^bb27
    %163 = llvm.add %146, %2 : i64
    llvm.br ^bb25(%163 : i64)
  ^bb30:  // pred: ^bb25
    %164 = llvm.extractvalue %143[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %165 = llvm.getelementptr %164[%6] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %166 = llvm.load %165 : !llvm.ptr -> f64
    llvm.call @printF64(%166) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%121, %130) : (f64, f64) -> ()
    llvm.return
  }
  llvm.func @getTime() -> f64 attributes {sym_visibility = "private"}
  llvm.func @printElapsedTime(f64, f64) attributes {sym_visibility = "private"}
  llvm.func @printF64(f64) attributes {sym_visibility = "private"}
  llvm.func @printNewline() attributes {sym_visibility = "private"}
}
