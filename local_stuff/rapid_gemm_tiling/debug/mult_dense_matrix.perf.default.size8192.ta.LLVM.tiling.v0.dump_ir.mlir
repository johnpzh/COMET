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

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
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

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
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

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %4 = bufferization.to_tensor %alloc_0 restrict writable : memref<8192x8192xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %5 = bufferization.to_tensor %alloc_1 restrict writable : memref<8192x8192xf64>
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

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %4 = bufferization.to_tensor %alloc_0 restrict writable : memref<8192x8192xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %5 = bufferization.to_tensor %alloc_1 restrict writable : memref<8192x8192xf64>
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

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %4 = bufferization.to_tensor %alloc_0 restrict writable : memref<8192x8192xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %5 = bufferization.to_tensor %alloc_1 restrict writable : memref<8192x8192xf64>
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

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8192x8192xf64>)
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %cst_1 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_1 : f64) outs(%alloc_0 : memref<8192x8192xf64>)
  %4 = bufferization.to_tensor %alloc_0 restrict writable : memref<8192x8192xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
  %5 = bufferization.to_tensor %alloc_2 restrict writable : memref<8192x8192xf64>
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8192x8192xf64>, tensor<8192x8192xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8192x8192xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<8192x8192xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8192x8192xf64>)
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %cst_1 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_1 : f64) outs(%alloc_0 : memref<8192x8192xf64>)
  %4 = bufferization.to_tensor %alloc_0 restrict writable : memref<8192x8192xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
  %5 = bufferization.to_tensor %alloc_2 restrict writable : memref<8192x8192xf64>
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8192x8192xf64>, tensor<8192x8192xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8192x8192xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<8192x8192xf64>) -> f64
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
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
  %4 = bufferization.to_tensor %alloc_2 restrict writable : memref<8192x8192xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
  %5 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8192xf64>
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8192x8192xf64>, tensor<8192x8192xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8192x8192xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<8192x8192xf64>) -> f64
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
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8192x8192xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
  %4 = bufferization.to_tensor %alloc_2 restrict writable : memref<8192x8192xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
  %5 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8192xf64>
  %6 = "ta.getTime"() : () -> f64
  %c0 = arith.constant 0 : index
  %dim = tensor.dim %3, %c0 : tensor<8192x8192xf64>
  %c1 = arith.constant 1 : index
  %dim_4 = tensor.dim %3, %c1 : tensor<8192x8192xf64>
  %c0_5 = arith.constant 0 : index
  %dim_6 = tensor.dim %4, %c0_5 : tensor<8192x8192xf64>
  %c1_7 = arith.constant 1 : index
  %dim_8 = tensor.dim %4, %c1_7 : tensor<8192x8192xf64>
  %c0_9 = arith.constant 0 : index
  %dim_10 = tensor.dim %5, %c0_9 : tensor<8192x8192xf64>
  %c1_11 = arith.constant 1 : index
  %dim_12 = tensor.dim %5, %c1_11 : tensor<8192x8192xf64>
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
  %28 = arith.cmpf ult, %27, %cst_16 : f64
  %29 = arith.select %28, %c1_22, %c0_21 : index
  %30 = arith.select %28, %27, %cst_16 : f64
  %31 = scf.index_switch %29 -> tensor<8192x8192xf64> 
  case 0 {
    %34 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__with_tiling__"} ins(%3, %4 : tensor<8192x8192xf64>, tensor<8192x8192xf64>) outs(%5 : tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
    scf.yield %34 : tensor<8192x8192xf64>
  }
  case 1 {
    %34 = tensor.empty() : tensor<8192x8192xf64>
    %transposed = linalg.transpose ins(%3 : tensor<8192x8192xf64>) outs(%34 : tensor<8192x8192xf64>) permutation = [1, 0] 
    %35 = tensor.empty() : tensor<8192x8192xf64>
    %transposed_23 = linalg.transpose ins(%4 : tensor<8192x8192xf64>) outs(%35 : tensor<8192x8192xf64>) permutation = [1, 0] 
    %36 = tensor.empty() : tensor<8192x8192xf64>
    %cst_24 = arith.constant 0.000000e+00 : f64
    %37 = linalg.fill ins(%cst_24 : f64) outs(%36 : tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
    %38 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__with_tiling__"} ins(%transposed_23, %transposed : tensor<8192x8192xf64>, tensor<8192x8192xf64>) outs(%37 : tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
    %transposed_25 = linalg.transpose ins(%38 : tensor<8192x8192xf64>) outs(%5 : tensor<8192x8192xf64>) permutation = [1, 0] 
    scf.yield %transposed_25 : tensor<8192x8192xf64>
  }
  default {
    scf.yield %5 : tensor<8192x8192xf64>
  }
  "ta.set_op"(%31, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> ()
  %32 = "ta.getTime"() : () -> f64
  %33 = "ta.reduce"(%5) : (tensor<8192x8192xf64>) -> f64
  "ta.print"(%33) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %32) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LinAlgMatmulTilingPass () //----- //
func.func @main() {
  %c512 = arith.constant 512 : index
  %c8192 = arith.constant 8192 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
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
  %4 = scf.index_switch %c0 -> tensor<8192x8192xf64> 
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8192xf64>) {
      %8 = scf.for %arg2 = %c0 to %c8192 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8192xf64>) {
        %9 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8192xf64>) {
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_4 = tensor.extract_slice %1[%arg2, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_5 = tensor.extract_slice %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %10 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_4 : tensor<512x512xf64>, tensor<512x512xf64>) outs(%extracted_slice_5 : tensor<512x512xf64>) -> tensor<512x512xf64>
          %inserted_slice = tensor.insert_slice %10 into %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<512x512xf64> into tensor<8192x8192xf64>
          scf.yield %inserted_slice : tensor<8192x8192xf64>
        }
        scf.yield %9 : tensor<8192x8192xf64>
      }
      scf.yield %8 : tensor<8192x8192xf64>
    }
    scf.yield %7 : tensor<8192x8192xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<8192x8192xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8192x8192xf64>) outs(%7 : tensor<8192x8192xf64>) permutation = [1, 0] 
    %8 = tensor.empty() : tensor<8192x8192xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<8192x8192xf64>) outs(%8 : tensor<8192x8192xf64>) permutation = [1, 0] 
    %9 = tensor.empty() : tensor<8192x8192xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
    %11 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %10) -> (tensor<8192x8192xf64>) {
      %12 = scf.for %arg2 = %c0 to %c8192 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8192xf64>) {
        %13 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8192xf64>) {
          %extracted_slice = tensor.extract_slice %transposed_4[%arg4, %arg2] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_6 = tensor.extract_slice %transposed[%arg2, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %14 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_6 : tensor<512x512xf64>, tensor<512x512xf64>) outs(%extracted_slice_7 : tensor<512x512xf64>) -> tensor<512x512xf64>
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<512x512xf64> into tensor<8192x8192xf64>
          scf.yield %inserted_slice : tensor<8192x8192xf64>
        }
        scf.yield %13 : tensor<8192x8192xf64>
      }
      scf.yield %12 : tensor<8192x8192xf64>
    }
    %transposed_5 = linalg.transpose ins(%11 : tensor<8192x8192xf64>) outs(%2 : tensor<8192x8192xf64>) permutation = [1, 0] 
    scf.yield %transposed_5 : tensor<8192x8192xf64>
  }
  default {
    scf.yield %2 : tensor<8192x8192xf64>
  }
  "ta.set_op"(%4, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8192xf64>, tensor<8192x8192xf64>) -> ()
  %5 = "ta.getTime"() : () -> f64
  %6 = "ta.reduce"(%2) : (tensor<8192x8192xf64>) -> f64
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func @main() {
  %c512 = arith.constant 512 : index
  %c8192 = arith.constant 8192 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
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
  %4 = scf.index_switch %c0 -> tensor<8192x8192xf64> 
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8192xf64>) {
      %8 = scf.for %arg2 = %c0 to %c8192 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8192xf64>) {
        %9 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8192xf64>) {
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_9 = tensor.extract_slice %1[%arg2, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_10 = tensor.extract_slice %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %10 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_9 : tensor<512x512xf64>, tensor<512x512xf64>) outs(%extracted_slice_10 : tensor<512x512xf64>) -> tensor<512x512xf64>
          %inserted_slice = tensor.insert_slice %10 into %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<512x512xf64> into tensor<8192x8192xf64>
          scf.yield %inserted_slice : tensor<8192x8192xf64>
        }
        scf.yield %9 : tensor<8192x8192xf64>
      }
      scf.yield %8 : tensor<8192x8192xf64>
    }
    scf.yield %7 : tensor<8192x8192xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<8192x8192xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8192x8192xf64>) outs(%7 : tensor<8192x8192xf64>) permutation = [1, 0] 
    %8 = tensor.empty() : tensor<8192x8192xf64>
    %transposed_9 = linalg.transpose ins(%1 : tensor<8192x8192xf64>) outs(%8 : tensor<8192x8192xf64>) permutation = [1, 0] 
    %9 = tensor.empty() : tensor<8192x8192xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
    %11 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %10) -> (tensor<8192x8192xf64>) {
      %12 = scf.for %arg2 = %c0 to %c8192 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8192xf64>) {
        %13 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8192xf64>) {
          %extracted_slice = tensor.extract_slice %transposed_9[%arg4, %arg2] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_11 = tensor.extract_slice %transposed[%arg2, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_12 = tensor.extract_slice %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %14 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_11 : tensor<512x512xf64>, tensor<512x512xf64>) outs(%extracted_slice_12 : tensor<512x512xf64>) -> tensor<512x512xf64>
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<512x512xf64> into tensor<8192x8192xf64>
          scf.yield %inserted_slice : tensor<8192x8192xf64>
        }
        scf.yield %13 : tensor<8192x8192xf64>
      }
      scf.yield %12 : tensor<8192x8192xf64>
    }
    %transposed_10 = linalg.transpose ins(%11 : tensor<8192x8192xf64>) outs(%2 : tensor<8192x8192xf64>) permutation = [1, 0] 
    scf.yield %transposed_10 : tensor<8192x8192xf64>
  }
  default {
    scf.yield %2 : tensor<8192x8192xf64>
  }
  %5 = "ta.getTime"() : () -> f64
  %c0_4 = arith.constant 0 : index
  %alloc_5 = memref.alloc() : memref<1xf64>
  %cst_6 = arith.constant 0.000000e+00 : f64
  memref.store %cst_6, %alloc_5[%c0_4] : memref<1xf64>
  %c0_7 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c0_8 = arith.constant 0 : index
  %dim = tensor.dim %4, %c0_8 : tensor<8192x8192xf64>
  scf.for %arg0 = %c0_7 to %dim step %c1 {
    %c1_9 = arith.constant 1 : index
    %dim_10 = tensor.dim %4, %c1_9 : tensor<8192x8192xf64>
    scf.for %arg1 = %c0_7 to %dim_10 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8192xf64>
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
  %c512 = arith.constant 512 : index
  %c8192 = arith.constant 8192 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
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
  %4 = scf.index_switch %c0 -> tensor<8192x8192xf64> 
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8192xf64>) {
      %8 = scf.for %arg2 = %c0 to %c8192 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8192xf64>) {
        %9 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8192xf64>) {
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %10 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_5 : tensor<512x512xf64>, tensor<512x512xf64>) outs(%extracted_slice_6 : tensor<512x512xf64>) -> tensor<512x512xf64>
          %inserted_slice = tensor.insert_slice %10 into %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<512x512xf64> into tensor<8192x8192xf64>
          scf.yield %inserted_slice : tensor<8192x8192xf64>
        }
        scf.yield %9 : tensor<8192x8192xf64>
      }
      scf.yield %8 : tensor<8192x8192xf64>
    }
    scf.yield %7 : tensor<8192x8192xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<8192x8192xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8192x8192xf64>) outs(%7 : tensor<8192x8192xf64>) permutation = [1, 0] 
    %8 = tensor.empty() : tensor<8192x8192xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<8192x8192xf64>) outs(%8 : tensor<8192x8192xf64>) permutation = [1, 0] 
    %9 = tensor.empty() : tensor<8192x8192xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
    %11 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %10) -> (tensor<8192x8192xf64>) {
      %12 = scf.for %arg2 = %c0 to %c8192 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8192xf64>) {
        %13 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8192xf64>) {
          %extracted_slice = tensor.extract_slice %transposed_5[%arg4, %arg2] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %14 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_7 : tensor<512x512xf64>, tensor<512x512xf64>) outs(%extracted_slice_8 : tensor<512x512xf64>) -> tensor<512x512xf64>
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<512x512xf64> into tensor<8192x8192xf64>
          scf.yield %inserted_slice : tensor<8192x8192xf64>
        }
        scf.yield %13 : tensor<8192x8192xf64>
      }
      scf.yield %12 : tensor<8192x8192xf64>
    }
    %transposed_6 = linalg.transpose ins(%11 : tensor<8192x8192xf64>) outs(%2 : tensor<8192x8192xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<8192x8192xf64>
  }
  default {
    scf.yield %2 : tensor<8192x8192xf64>
  }
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
  %c1 = arith.constant 1 : index
  %c512 = arith.constant 512 : index
  %c8192 = arith.constant 8192 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
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
  %4 = scf.index_switch %c0 -> tensor<8192x8192xf64> 
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8192xf64>) {
      %8 = scf.for %arg2 = %c0 to %c8192 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8192xf64>) {
        %9 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8192xf64>) {
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %10 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_5 : tensor<512x512xf64>, tensor<512x512xf64>) outs(%extracted_slice_6 : tensor<512x512xf64>) -> tensor<512x512xf64>
          %inserted_slice = tensor.insert_slice %10 into %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<512x512xf64> into tensor<8192x8192xf64>
          scf.yield %inserted_slice : tensor<8192x8192xf64>
        }
        scf.yield %9 : tensor<8192x8192xf64>
      }
      scf.yield %8 : tensor<8192x8192xf64>
    }
    scf.yield %7 : tensor<8192x8192xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<8192x8192xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8192x8192xf64>) outs(%7 : tensor<8192x8192xf64>) permutation = [1, 0] 
    %8 = tensor.empty() : tensor<8192x8192xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<8192x8192xf64>) outs(%8 : tensor<8192x8192xf64>) permutation = [1, 0] 
    %9 = tensor.empty() : tensor<8192x8192xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
    %11 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %10) -> (tensor<8192x8192xf64>) {
      %12 = scf.for %arg2 = %c0 to %c8192 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8192xf64>) {
        %13 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8192xf64>) {
          %extracted_slice = tensor.extract_slice %transposed_5[%arg4, %arg2] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %14 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_7 : tensor<512x512xf64>, tensor<512x512xf64>) outs(%extracted_slice_8 : tensor<512x512xf64>) -> tensor<512x512xf64>
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<512x512xf64> into tensor<8192x8192xf64>
          scf.yield %inserted_slice : tensor<8192x8192xf64>
        }
        scf.yield %13 : tensor<8192x8192xf64>
      }
      scf.yield %12 : tensor<8192x8192xf64>
    }
    %transposed_6 = linalg.transpose ins(%11 : tensor<8192x8192xf64>) outs(%2 : tensor<8192x8192xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<8192x8192xf64>
  }
  default {
    scf.yield %2 : tensor<8192x8192xf64>
  }
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
  %c1 = arith.constant 1 : index
  %c512 = arith.constant 512 : index
  %c8192 = arith.constant 8192 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
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
  %4 = scf.index_switch %c0 -> tensor<8192x8192xf64> 
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8192xf64>) {
      %8 = scf.for %arg2 = %c0 to %c8192 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8192xf64>) {
        %9 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8192xf64>) {
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %10 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_5 : tensor<512x512xf64>, tensor<512x512xf64>) outs(%extracted_slice_6 : tensor<512x512xf64>) -> tensor<512x512xf64>
          %inserted_slice = tensor.insert_slice %10 into %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<512x512xf64> into tensor<8192x8192xf64>
          scf.yield %inserted_slice : tensor<8192x8192xf64>
        }
        scf.yield %9 : tensor<8192x8192xf64>
      }
      scf.yield %8 : tensor<8192x8192xf64>
    }
    scf.yield %7 : tensor<8192x8192xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<8192x8192xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8192x8192xf64>) outs(%7 : tensor<8192x8192xf64>) permutation = [1, 0] 
    %8 = tensor.empty() : tensor<8192x8192xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<8192x8192xf64>) outs(%8 : tensor<8192x8192xf64>) permutation = [1, 0] 
    %9 = tensor.empty() : tensor<8192x8192xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
    %11 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %10) -> (tensor<8192x8192xf64>) {
      %12 = scf.for %arg2 = %c0 to %c8192 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8192xf64>) {
        %13 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8192xf64>) {
          %extracted_slice = tensor.extract_slice %transposed_5[%arg4, %arg2] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %14 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_7 : tensor<512x512xf64>, tensor<512x512xf64>) outs(%extracted_slice_8 : tensor<512x512xf64>) -> tensor<512x512xf64>
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<512x512xf64> into tensor<8192x8192xf64>
          scf.yield %inserted_slice : tensor<8192x8192xf64>
        }
        scf.yield %13 : tensor<8192x8192xf64>
      }
      scf.yield %12 : tensor<8192x8192xf64>
    }
    %transposed_6 = linalg.transpose ins(%11 : tensor<8192x8192xf64>) outs(%2 : tensor<8192x8192xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<8192x8192xf64>
  }
  default {
    scf.yield %2 : tensor<8192x8192xf64>
  }
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
  %c1 = arith.constant 1 : index
  %c512 = arith.constant 512 : index
  %c8192 = arith.constant 8192 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
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
  %4 = scf.index_switch %c0 -> tensor<8192x8192xf64> 
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8192xf64>) {
      %8 = scf.for %arg2 = %c0 to %c8192 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8192xf64>) {
        %9 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8192xf64>) {
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %10 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_5 : tensor<512x512xf64>, tensor<512x512xf64>) outs(%extracted_slice_6 : tensor<512x512xf64>) -> tensor<512x512xf64>
          %inserted_slice = tensor.insert_slice %10 into %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<512x512xf64> into tensor<8192x8192xf64>
          scf.yield %inserted_slice : tensor<8192x8192xf64>
        }
        scf.yield %9 : tensor<8192x8192xf64>
      }
      scf.yield %8 : tensor<8192x8192xf64>
    }
    scf.yield %7 : tensor<8192x8192xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<8192x8192xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8192x8192xf64>) outs(%7 : tensor<8192x8192xf64>) permutation = [1, 0] 
    %8 = tensor.empty() : tensor<8192x8192xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<8192x8192xf64>) outs(%8 : tensor<8192x8192xf64>) permutation = [1, 0] 
    %9 = tensor.empty() : tensor<8192x8192xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
    %11 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %10) -> (tensor<8192x8192xf64>) {
      %12 = scf.for %arg2 = %c0 to %c8192 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8192xf64>) {
        %13 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8192xf64>) {
          %extracted_slice = tensor.extract_slice %transposed_5[%arg4, %arg2] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %14 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_7 : tensor<512x512xf64>, tensor<512x512xf64>) outs(%extracted_slice_8 : tensor<512x512xf64>) -> tensor<512x512xf64>
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<512x512xf64> into tensor<8192x8192xf64>
          scf.yield %inserted_slice : tensor<8192x8192xf64>
        }
        scf.yield %13 : tensor<8192x8192xf64>
      }
      scf.yield %12 : tensor<8192x8192xf64>
    }
    %transposed_6 = linalg.transpose ins(%11 : tensor<8192x8192xf64>) outs(%2 : tensor<8192x8192xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<8192x8192xf64>
  }
  default {
    scf.yield %2 : tensor<8192x8192xf64>
  }
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
  %c1 = arith.constant 1 : index
  %c512 = arith.constant 512 : index
  %c8192 = arith.constant 8192 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
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
  %4 = scf.index_switch %c0 -> tensor<8192x8192xf64> 
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8192xf64>) {
      %8 = scf.for %arg2 = %c0 to %c8192 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8192xf64>) {
        %9 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8192xf64>) {
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %10 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_5 : tensor<512x512xf64>, tensor<512x512xf64>) outs(%extracted_slice_6 : tensor<512x512xf64>) -> tensor<512x512xf64>
          %inserted_slice = tensor.insert_slice %10 into %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<512x512xf64> into tensor<8192x8192xf64>
          scf.yield %inserted_slice : tensor<8192x8192xf64>
        }
        scf.yield %9 : tensor<8192x8192xf64>
      }
      scf.yield %8 : tensor<8192x8192xf64>
    }
    scf.yield %7 : tensor<8192x8192xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<8192x8192xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8192x8192xf64>) outs(%7 : tensor<8192x8192xf64>) permutation = [1, 0] 
    %8 = tensor.empty() : tensor<8192x8192xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<8192x8192xf64>) outs(%8 : tensor<8192x8192xf64>) permutation = [1, 0] 
    %9 = tensor.empty() : tensor<8192x8192xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
    %11 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %10) -> (tensor<8192x8192xf64>) {
      %12 = scf.for %arg2 = %c0 to %c8192 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8192xf64>) {
        %13 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8192xf64>) {
          %extracted_slice = tensor.extract_slice %transposed_5[%arg4, %arg2] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %14 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_7 : tensor<512x512xf64>, tensor<512x512xf64>) outs(%extracted_slice_8 : tensor<512x512xf64>) -> tensor<512x512xf64>
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<512x512xf64> into tensor<8192x8192xf64>
          scf.yield %inserted_slice : tensor<8192x8192xf64>
        }
        scf.yield %13 : tensor<8192x8192xf64>
      }
      scf.yield %12 : tensor<8192x8192xf64>
    }
    %transposed_6 = linalg.transpose ins(%11 : tensor<8192x8192xf64>) outs(%2 : tensor<8192x8192xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<8192x8192xf64>
  }
  default {
    scf.yield %2 : tensor<8192x8192xf64>
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

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c512 = arith.constant 512 : index
  %c8192 = arith.constant 8192 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
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
  %4 = scf.index_switch %c0 -> tensor<8192x8192xf64> 
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8192xf64>) {
      %8 = scf.for %arg2 = %c0 to %c8192 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8192xf64>) {
        %9 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8192xf64>) {
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %10 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_5 : tensor<512x512xf64>, tensor<512x512xf64>) outs(%extracted_slice_6 : tensor<512x512xf64>) -> tensor<512x512xf64>
          %inserted_slice = tensor.insert_slice %10 into %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<512x512xf64> into tensor<8192x8192xf64>
          scf.yield %inserted_slice : tensor<8192x8192xf64>
        }
        scf.yield %9 : tensor<8192x8192xf64>
      }
      scf.yield %8 : tensor<8192x8192xf64>
    }
    scf.yield %7 : tensor<8192x8192xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<8192x8192xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8192x8192xf64>) outs(%7 : tensor<8192x8192xf64>) permutation = [1, 0] 
    %8 = tensor.empty() : tensor<8192x8192xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<8192x8192xf64>) outs(%8 : tensor<8192x8192xf64>) permutation = [1, 0] 
    %9 = tensor.empty() : tensor<8192x8192xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<8192x8192xf64>) -> tensor<8192x8192xf64>
    %11 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %10) -> (tensor<8192x8192xf64>) {
      %12 = scf.for %arg2 = %c0 to %c8192 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8192xf64>) {
        %13 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8192xf64>) {
          %extracted_slice = tensor.extract_slice %transposed_5[%arg4, %arg2] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %14 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_7 : tensor<512x512xf64>, tensor<512x512xf64>) outs(%extracted_slice_8 : tensor<512x512xf64>) -> tensor<512x512xf64>
          %inserted_slice = tensor.insert_slice %14 into %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<512x512xf64> into tensor<8192x8192xf64>
          scf.yield %inserted_slice : tensor<8192x8192xf64>
        }
        scf.yield %13 : tensor<8192x8192xf64>
      }
      scf.yield %12 : tensor<8192x8192xf64>
    }
    %transposed_6 = linalg.transpose ins(%11 : tensor<8192x8192xf64>) outs(%2 : tensor<8192x8192xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<8192x8192xf64>
  }
  default {
    scf.yield %2 : tensor<8192x8192xf64>
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
  %c1 = arith.constant 1 : index
  %c512 = arith.constant 512 : index
  %c8192 = arith.constant 8192 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
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
  %4 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8192xf64>) {
    %7 = scf.for %arg2 = %c0 to %c8192 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8192xf64>) {
      %8 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8192xf64>) {
        %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
        %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
        %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
        %9 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_5 : tensor<512x512xf64>, tensor<512x512xf64>) outs(%extracted_slice_6 : tensor<512x512xf64>) -> tensor<512x512xf64>
        %inserted_slice = tensor.insert_slice %9 into %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<512x512xf64> into tensor<8192x8192xf64>
        scf.yield %inserted_slice : tensor<8192x8192xf64>
      }
      scf.yield %8 : tensor<8192x8192xf64>
    }
    scf.yield %7 : tensor<8192x8192xf64>
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
  %c1 = arith.constant 1 : index
  %c512 = arith.constant 512 : index
  %c8192 = arith.constant 8192 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
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
  %4 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8192xf64>) {
    %7 = scf.for %arg2 = %c0 to %c8192 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8192xf64>) {
      %extracted_slice = tensor.extract_slice %1[%arg2, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
      %8 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8192xf64>) {
        %extracted_slice_5 = tensor.extract_slice %0[%arg4, %arg2] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
        %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
        %9 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice_5, %extracted_slice : tensor<512x512xf64>, tensor<512x512xf64>) outs(%extracted_slice_6 : tensor<512x512xf64>) -> tensor<512x512xf64>
        %inserted_slice = tensor.insert_slice %9 into %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<512x512xf64> into tensor<8192x8192xf64>
        scf.yield %inserted_slice : tensor<8192x8192xf64>
      }
      scf.yield %8 : tensor<8192x8192xf64>
    }
    scf.yield %7 : tensor<8192x8192xf64>
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
  %c1 = arith.constant 1 : index
  %c512 = arith.constant 512 : index
  %c8192 = arith.constant 8192 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
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
  %4 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8192xf64>) {
    %7 = scf.for %arg2 = %c0 to %c8192 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8192xf64>) {
      %extracted_slice = tensor.extract_slice %1[%arg2, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
      %8 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8192xf64>) {
        %extracted_slice_5 = tensor.extract_slice %0[%arg4, %arg2] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
        %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
        %9 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice_5, %extracted_slice : tensor<512x512xf64>, tensor<512x512xf64>) outs(%extracted_slice_6 : tensor<512x512xf64>) -> tensor<512x512xf64>
        %inserted_slice = tensor.insert_slice %9 into %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<512x512xf64> into tensor<8192x8192xf64>
        scf.yield %inserted_slice : tensor<8192x8192xf64>
      }
      scf.yield %8 : tensor<8192x8192xf64>
    }
    scf.yield %7 : tensor<8192x8192xf64>
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
  %c1 = arith.constant 1 : index
  %c512 = arith.constant 512 : index
  %c8192 = arith.constant 8192 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
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
  %4 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8192xf64>) {
    %7 = scf.for %arg2 = %c0 to %c8192 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8192xf64>) {
      %extracted_slice = tensor.extract_slice %1[%arg2, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
      %8 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8192xf64>) {
        %extracted_slice_5 = tensor.extract_slice %0[%arg4, %arg2] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
        %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
        %9 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice_5, %extracted_slice : tensor<512x512xf64>, tensor<512x512xf64>) outs(%extracted_slice_6 : tensor<512x512xf64>) -> tensor<512x512xf64>
        %inserted_slice = tensor.insert_slice %9 into %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<512x512xf64> into tensor<8192x8192xf64>
        scf.yield %inserted_slice : tensor<8192x8192xf64>
      }
      scf.yield %8 : tensor<8192x8192xf64>
    }
    scf.yield %7 : tensor<8192x8192xf64>
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
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8192 = arith.constant 8192 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
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
    %4 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8192xf64>) {
      %7 = scf.for %arg2 = %c0 to %c8192 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8192xf64>) {
        %extracted_slice = tensor.extract_slice %1[%arg2, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
        %8 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8192xf64>) {
          %extracted_slice_5 = tensor.extract_slice %0[%arg4, %arg2] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %9 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice_5, %extracted_slice : tensor<512x512xf64>, tensor<512x512xf64>) outs(%extracted_slice_6 : tensor<512x512xf64>) -> tensor<512x512xf64>
          %inserted_slice = tensor.insert_slice %9 into %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<512x512xf64> into tensor<8192x8192xf64>
          scf.yield %inserted_slice : tensor<8192x8192xf64>
        }
        scf.yield %8 : tensor<8192x8192xf64>
      }
      scf.yield %7 : tensor<8192x8192xf64>
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
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8192 = arith.constant 8192 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
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
    %4 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8192xf64>) {
      %7 = scf.for %arg2 = %c0 to %c8192 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8192xf64>) {
        %extracted_slice = tensor.extract_slice %1[%arg2, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
        %8 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8192xf64>) {
          %extracted_slice_5 = tensor.extract_slice %0[%arg4, %arg2] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %9 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice_5, %extracted_slice : tensor<512x512xf64>, tensor<512x512xf64>) outs(%extracted_slice_6 : tensor<512x512xf64>) -> tensor<512x512xf64>
          %inserted_slice = tensor.insert_slice %9 into %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<512x512xf64> into tensor<8192x8192xf64>
          scf.yield %inserted_slice : tensor<8192x8192xf64>
        }
        scf.yield %8 : tensor<8192x8192xf64>
      }
      scf.yield %7 : tensor<8192x8192xf64>
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
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8192 = arith.constant 8192 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
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
    %4 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8192xf64>) {
      %7 = scf.for %arg2 = %c0 to %c8192 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8192xf64>) {
        %extracted_slice = tensor.extract_slice %1[%arg2, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
        %8 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8192xf64>) {
          %extracted_slice_5 = tensor.extract_slice %0[%arg4, %arg2] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<8192x8192xf64> to tensor<512x512xf64>
          %9 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice_5, %extracted_slice : tensor<512x512xf64>, tensor<512x512xf64>) outs(%extracted_slice_6 : tensor<512x512xf64>) -> tensor<512x512xf64>
          %inserted_slice = tensor.insert_slice %9 into %arg5[%arg4, %arg0] [512, 512] [1, 1] : tensor<512x512xf64> into tensor<8192x8192xf64>
          scf.yield %inserted_slice : tensor<8192x8192xf64>
        }
        scf.yield %8 : tensor<8192x8192xf64>
      }
      scf.yield %7 : tensor<8192x8192xf64>
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
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8192 = arith.constant 8192 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
    %0 = call @getTime() : () -> f64
    %1 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %alloc_3) -> (memref<8192x8192xf64>) {
      %4 = scf.for %arg2 = %c0 to %c8192 step %c512 iter_args(%arg3 = %arg1) -> (memref<8192x8192xf64>) {
        %subview = memref.subview %alloc_2[%arg2, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
        %5 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (memref<8192x8192xf64>) {
          %subview_5 = memref.subview %alloc[%arg4, %arg2] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          %subview_6 = memref.subview %arg5[%arg4, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%subview_5, %subview : memref<512x512xf64, strided<[8192, 1], offset: ?>>, memref<512x512xf64, strided<[8192, 1], offset: ?>>) outs(%subview_6 : memref<512x512xf64, strided<[8192, 1], offset: ?>>)
          %subview_7 = memref.subview %arg5[%arg4, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          memref.copy %subview_6, %subview_7 : memref<512x512xf64, strided<[8192, 1], offset: ?>> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          scf.yield %arg5 : memref<8192x8192xf64>
        }
        scf.yield %5 : memref<8192x8192xf64>
      }
      scf.yield %4 : memref<8192x8192xf64>
    }
    %2 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8192 step %c1 {
        %4 = memref.load %1[%arg0, %arg1] : memref<8192x8192xf64>
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
func.func private @getTime() -> f64

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @printElapsedTime(f64, f64)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @getTime() -> f64

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @printElapsedTime(f64, f64)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c512 = arith.constant 512 : index
  %c8192 = arith.constant 8192 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
  %0 = call @getTime() : () -> f64
  %1 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %alloc_3) -> (memref<8192x8192xf64>) {
    %4 = scf.for %arg2 = %c0 to %c8192 step %c512 iter_args(%arg3 = %arg1) -> (memref<8192x8192xf64>) {
      %subview = memref.subview %alloc_2[%arg2, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
      %5 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (memref<8192x8192xf64>) {
        %subview_5 = memref.subview %alloc[%arg4, %arg2] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
        %subview_6 = memref.subview %arg5[%arg4, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
        linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%subview_5, %subview : memref<512x512xf64, strided<[8192, 1], offset: ?>>, memref<512x512xf64, strided<[8192, 1], offset: ?>>) outs(%subview_6 : memref<512x512xf64, strided<[8192, 1], offset: ?>>)
        %subview_7 = memref.subview %arg5[%arg4, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
        memref.copy %subview_6, %subview_7 : memref<512x512xf64, strided<[8192, 1], offset: ?>> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
        scf.yield %arg5 : memref<8192x8192xf64>
      }
      scf.yield %5 : memref<8192x8192xf64>
    }
    scf.yield %4 : memref<8192x8192xf64>
  }
  %2 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8192 step %c1 {
      %4 = memref.load %1[%arg0, %arg1] : memref<8192x8192xf64>
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
  %c512 = arith.constant 512 : index
  %c8192 = arith.constant 8192 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
  %0 = call @getTime() : () -> f64
  %1 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %alloc_3) -> (memref<8192x8192xf64>) {
    %4 = scf.for %arg2 = %c0 to %c8192 step %c512 iter_args(%arg3 = %arg1) -> (memref<8192x8192xf64>) {
      %subview = memref.subview %alloc_2[%arg2, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
      %5 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (memref<8192x8192xf64>) {
        %subview_5 = memref.subview %alloc[%arg4, %arg2] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
        %subview_6 = memref.subview %arg5[%arg4, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
        linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%subview_5, %subview : memref<512x512xf64, strided<[8192, 1], offset: ?>>, memref<512x512xf64, strided<[8192, 1], offset: ?>>) outs(%subview_6 : memref<512x512xf64, strided<[8192, 1], offset: ?>>)
        %subview_7 = memref.subview %arg5[%arg4, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
        memref.copy %subview_6, %subview_7 : memref<512x512xf64, strided<[8192, 1], offset: ?>> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
        scf.yield %arg5 : memref<8192x8192xf64>
      }
      scf.yield %5 : memref<8192x8192xf64>
    }
    scf.yield %4 : memref<8192x8192xf64>
  }
  %2 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8192 step %c1 {
      %4 = memref.load %1[%arg0, %arg1] : memref<8192x8192xf64>
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
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8192 = arith.constant 8192 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8192 step %c512 {
      scf.for %arg1 = %c0 to %c8192 step %c512 {
        %subview = memref.subview %alloc_2[%arg1, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8192 step %c512 {
          %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%subview_5, %subview : memref<512x512xf64, strided<[8192, 1], offset: ?>>, memref<512x512xf64, strided<[8192, 1], offset: ?>>) outs(%subview_6 : memref<512x512xf64, strided<[8192, 1], offset: ?>>)
          %subview_7 = memref.subview %alloc_3[%arg2, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          memref.copy %subview_6, %subview_7 : memref<512x512xf64, strided<[8192, 1], offset: ?>> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
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


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8192 = arith.constant 8192 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8192 step %c512 {
      scf.for %arg1 = %c0 to %c8192 step %c512 {
        %subview = memref.subview %alloc_2[%arg1, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8192 step %c512 {
          %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%subview_5, %subview : memref<512x512xf64, strided<[8192, 1], offset: ?>>, memref<512x512xf64, strided<[8192, 1], offset: ?>>) outs(%subview_6 : memref<512x512xf64, strided<[8192, 1], offset: ?>>)
          memref.copy %subview_6, %subview_6 : memref<512x512xf64, strided<[8192, 1], offset: ?>> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
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


// -----// IR Dump After FoldMemRefAliasOps (fold-memref-alias-ops) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8192 = arith.constant 8192 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8192 step %c512 {
      scf.for %arg1 = %c0 to %c8192 step %c512 {
        %subview = memref.subview %alloc_2[%arg1, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8192 step %c512 {
          %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%subview_5, %subview : memref<512x512xf64, strided<[8192, 1], offset: ?>>, memref<512x512xf64, strided<[8192, 1], offset: ?>>) outs(%subview_6 : memref<512x512xf64, strided<[8192, 1], offset: ?>>)
          memref.copy %subview_6, %subview_6 : memref<512x512xf64, strided<[8192, 1], offset: ?>> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
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


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8192 = arith.constant 8192 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8192 step %c512 {
      scf.for %arg1 = %c0 to %c8192 step %c512 {
        %subview = memref.subview %alloc_2[%arg1, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8192 step %c512 {
          %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%subview_5, %subview : memref<512x512xf64, strided<[8192, 1], offset: ?>>, memref<512x512xf64, strided<[8192, 1], offset: ?>>) outs(%subview_6 : memref<512x512xf64, strided<[8192, 1], offset: ?>>)
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
func.func private @printElapsedTime(f64, f64)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @printF64(f64)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @printElapsedTime(f64, f64)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @printF64(f64)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @getTime() -> f64

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @getTime() -> f64

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c512 = arith.constant 512 : index
  %c8192 = arith.constant 8192 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8192xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8192x8192xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8192xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8192xf64>)
  %0 = call @getTime() : () -> f64
  scf.for %arg0 = %c0 to %c8192 step %c512 {
    scf.for %arg1 = %c0 to %c8192 step %c512 {
      %subview = memref.subview %alloc_2[%arg1, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
      scf.for %arg2 = %c0 to %c8192 step %c512 {
        %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
        %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
        linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%subview_5, %subview : memref<512x512xf64, strided<[8192, 1], offset: ?>>, memref<512x512xf64, strided<[8192, 1], offset: ?>>) outs(%subview_6 : memref<512x512xf64, strided<[8192, 1], offset: ?>>)
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
  %c1 = arith.constant 1 : index
  %c512 = arith.constant 512 : index
  %c8192 = arith.constant 8192 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
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
  scf.for %arg0 = %c0 to %c8192 step %c512 {
    scf.for %arg1 = %c0 to %c8192 step %c512 {
      %subview = memref.subview %alloc_2[%arg1, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
      scf.for %arg2 = %c0 to %c8192 step %c512 {
        %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
        %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
        scf.for %arg3 = %c0 to %c512 step %c1 {
          scf.for %arg4 = %c0 to %c512 step %c1 {
            scf.for %arg5 = %c0 to %c512 step %c1 {
              %3 = memref.load %subview_5[%arg3, %arg5] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
              %4 = memref.load %subview[%arg5, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
              %5 = memref.load %subview_6[%arg3, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
              %6 = arith.mulf %3, %4 : f64
              %7 = arith.addf %5, %6 : f64
              memref.store %7, %subview_6[%arg3, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
            }
          }
        }
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
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8192 = arith.constant 8192 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
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
    scf.for %arg0 = %c0 to %c8192 step %c512 {
      scf.for %arg1 = %c0 to %c8192 step %c512 {
        %subview = memref.subview %alloc_2[%arg1, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8192 step %c512 {
          %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          scf.for %arg3 = %c0 to %c512 step %c1 {
            scf.for %arg4 = %c0 to %c512 step %c1 {
              scf.for %arg5 = %c0 to %c512 step %c1 {
                %3 = memref.load %subview_5[%arg3, %arg5] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
                %4 = memref.load %subview[%arg5, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
                %5 = memref.load %subview_6[%arg3, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
                %6 = arith.mulf %3, %4 : f64
                %7 = arith.addf %5, %6 : f64
                memref.store %7, %subview_6[%arg3, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
              }
            }
          }
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
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8192 = arith.constant 8192 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
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
    scf.for %arg0 = %c0 to %c8192 step %c512 {
      scf.for %arg1 = %c0 to %c8192 step %c512 {
        %subview = memref.subview %alloc_2[%arg1, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8192 step %c512 {
          %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          scf.for %arg3 = %c0 to %c512 step %c1 {
            scf.for %arg4 = %c0 to %c512 step %c1 {
              scf.for %arg5 = %c0 to %c512 step %c1 {
                %3 = memref.load %subview_5[%arg3, %arg5] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
                %4 = memref.load %subview[%arg5, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
                %5 = memref.load %subview_6[%arg3, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
                %6 = arith.mulf %3, %4 : f64
                %7 = arith.addf %5, %6 : f64
                memref.store %7, %subview_6[%arg3, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
              }
            }
          }
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


// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8192 = arith.constant 8192 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
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
    scf.for %arg0 = %c0 to %c8192 step %c512 {
      scf.for %arg1 = %c0 to %c8192 step %c512 {
        %subview = memref.subview %alloc_2[%arg1, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8192 step %c512 {
          %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          scf.for %arg3 = %c0 to %c512 step %c1 {
            scf.for %arg4 = %c0 to %c512 step %c1 {
              scf.for %arg5 = %c0 to %c512 step %c1 {
                %3 = memref.load %subview_5[%arg3, %arg5] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
                %4 = memref.load %subview[%arg5, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
                %5 = memref.load %subview_6[%arg3, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
                %6 = arith.mulf %3, %4 : f64
                %7 = arith.addf %5, %6 : f64
                memref.store %7, %subview_6[%arg3, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
              }
            }
          }
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


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8192 = arith.constant 8192 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
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
    scf.for %arg0 = %c0 to %c8192 step %c512 {
      scf.for %arg1 = %c0 to %c8192 step %c512 {
        %subview = memref.subview %alloc_2[%arg1, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8192 step %c512 {
          %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          scf.for %arg3 = %c0 to %c512 step %c1 {
            scf.for %arg4 = %c0 to %c512 step %c1 {
              scf.for %arg5 = %c0 to %c512 step %c1 {
                %3 = memref.load %subview_5[%arg3, %arg5] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
                %4 = memref.load %subview[%arg5, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
                %5 = memref.load %subview_6[%arg3, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
                %6 = arith.mulf %3, %4 : f64
                %7 = arith.addf %5, %6 : f64
                memref.store %7, %subview_6[%arg3, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
              }
            }
          }
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


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8192 = arith.constant 8192 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
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
    scf.for %arg0 = %c0 to %c8192 step %c512 {
      scf.for %arg1 = %c0 to %c8192 step %c512 {
        %subview = memref.subview %alloc_2[%arg1, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8192 step %c512 {
          %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          scf.for %arg3 = %c0 to %c512 step %c1 {
            scf.for %arg4 = %c0 to %c512 step %c1 {
              scf.for %arg5 = %c0 to %c512 step %c1 {
                %3 = memref.load %subview_5[%arg3, %arg5] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
                %4 = memref.load %subview[%arg5, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
                %5 = memref.load %subview_6[%arg3, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
                %6 = arith.mulf %3, %4 : f64
                %7 = arith.addf %5, %6 : f64
                memref.store %7, %subview_6[%arg3, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
              }
            }
          }
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


// -----// IR Dump After ConvertSCFToOpenMPPass (convert-scf-to-openmp) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8192 = arith.constant 8192 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
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
    scf.for %arg0 = %c0 to %c8192 step %c512 {
      scf.for %arg1 = %c0 to %c8192 step %c512 {
        %subview = memref.subview %alloc_2[%arg1, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8192 step %c512 {
          %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          scf.for %arg3 = %c0 to %c512 step %c1 {
            scf.for %arg4 = %c0 to %c512 step %c1 {
              scf.for %arg5 = %c0 to %c512 step %c1 {
                %3 = memref.load %subview_5[%arg3, %arg5] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
                %4 = memref.load %subview[%arg5, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
                %5 = memref.load %subview_6[%arg3, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
                %6 = arith.mulf %3, %4 : f64
                %7 = arith.addf %5, %6 : f64
                memref.store %7, %subview_6[%arg3, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
              }
            }
          }
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


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8192 = arith.constant 8192 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
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
    scf.for %arg0 = %c0 to %c8192 step %c512 {
      scf.for %arg1 = %c0 to %c8192 step %c512 {
        %subview = memref.subview %alloc_2[%arg1, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8192 step %c512 {
          %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          scf.for %arg3 = %c0 to %c512 step %c1 {
            scf.for %arg4 = %c0 to %c512 step %c1 {
              scf.for %arg5 = %c0 to %c512 step %c1 {
                %3 = memref.load %subview_5[%arg3, %arg5] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
                %4 = memref.load %subview[%arg5, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
                %5 = memref.load %subview_6[%arg3, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
                %6 = arith.mulf %3, %4 : f64
                %7 = arith.addf %5, %6 : f64
                memref.store %7, %subview_6[%arg3, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
              }
            }
          }
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


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8192 = arith.constant 8192 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
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
    scf.for %arg0 = %c0 to %c8192 step %c512 {
      scf.for %arg1 = %c0 to %c8192 step %c512 {
        %subview = memref.subview %alloc_2[%arg1, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8192 step %c512 {
          %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
          scf.for %arg3 = %c0 to %c512 step %c1 {
            scf.for %arg4 = %c0 to %c512 step %c1 {
              scf.for %arg5 = %c0 to %c512 step %c1 {
                %3 = memref.load %subview_5[%arg3, %arg5] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
                %4 = memref.load %subview[%arg5, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
                %5 = memref.load %subview_6[%arg3, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
                %6 = arith.mulf %3, %4 : f64
                %7 = arith.addf %5, %6 : f64
                memref.store %7, %subview_6[%arg3, %arg4] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
              }
            }
          }
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


// -----// IR Dump After SCFToControlFlow (convert-scf-to-cf) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8192 = arith.constant 8192 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
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
    cf.br ^bb19(%c0 : index)
  ^bb19(%19: index):  // 2 preds: ^bb18, ^bb35
    %20 = arith.cmpi slt, %19, %c8192 : index
    cf.cond_br %20, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    cf.br ^bb21(%c0 : index)
  ^bb21(%21: index):  // 2 preds: ^bb20, ^bb34
    %22 = arith.cmpi slt, %21, %c8192 : index
    cf.cond_br %22, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %subview = memref.subview %alloc_2[%21, %19] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
    cf.br ^bb23(%c0 : index)
  ^bb23(%23: index):  // 2 preds: ^bb22, ^bb33
    %24 = arith.cmpi slt, %23, %c8192 : index
    cf.cond_br %24, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %subview_4 = memref.subview %alloc[%23, %21] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
    %subview_5 = memref.subview %alloc_3[%23, %19] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
    cf.br ^bb25(%c0 : index)
  ^bb25(%25: index):  // 2 preds: ^bb24, ^bb32
    %26 = arith.cmpi slt, %25, %c512 : index
    cf.cond_br %26, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%27: index):  // 2 preds: ^bb26, ^bb31
    %28 = arith.cmpi slt, %27, %c512 : index
    cf.cond_br %28, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    cf.br ^bb29(%c0 : index)
  ^bb29(%29: index):  // 2 preds: ^bb28, ^bb30
    %30 = arith.cmpi slt, %29, %c512 : index
    cf.cond_br %30, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %31 = memref.load %subview_4[%25, %29] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
    %32 = memref.load %subview[%29, %27] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
    %33 = memref.load %subview_5[%25, %27] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
    %34 = arith.mulf %31, %32 : f64
    %35 = arith.addf %33, %34 : f64
    memref.store %35, %subview_5[%25, %27] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
    %36 = arith.addi %29, %c1 : index
    cf.br ^bb29(%36 : index)
  ^bb31:  // pred: ^bb29
    %37 = arith.addi %27, %c1 : index
    cf.br ^bb27(%37 : index)
  ^bb32:  // pred: ^bb27
    %38 = arith.addi %25, %c1 : index
    cf.br ^bb25(%38 : index)
  ^bb33:  // pred: ^bb25
    %39 = arith.addi %23, %c512 : index
    cf.br ^bb23(%39 : index)
  ^bb34:  // pred: ^bb23
    %40 = arith.addi %21, %c512 : index
    cf.br ^bb21(%40 : index)
  ^bb35:  // pred: ^bb21
    %41 = arith.addi %19, %c512 : index
    cf.br ^bb19(%41 : index)
  ^bb36:  // pred: ^bb19
    %42 = call @getTime() : () -> f64
    %alloc_6 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_6[%c0] : memref<1xf64>
    cf.br ^bb37(%c0 : index)
  ^bb37(%43: index):  // 2 preds: ^bb36, ^bb41
    %44 = arith.cmpi slt, %43, %c8192 : index
    cf.cond_br %44, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    cf.br ^bb39(%c0 : index)
  ^bb39(%45: index):  // 2 preds: ^bb38, ^bb40
    %46 = arith.cmpi slt, %45, %c8192 : index
    cf.cond_br %46, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %47 = memref.load %alloc_3[%43, %45] : memref<8192x8192xf64>
    %48 = memref.load %alloc_6[%c0] : memref<1xf64>
    %49 = arith.addf %47, %48 : f64
    memref.store %49, %alloc_6[%c0] : memref<1xf64>
    %50 = arith.addi %45, %c1 : index
    cf.br ^bb39(%50 : index)
  ^bb41:  // pred: ^bb39
    %51 = arith.addi %43, %c1 : index
    cf.br ^bb37(%51 : index)
  ^bb42:  // pred: ^bb37
    %52 = memref.load %alloc_6[%c0] : memref<1xf64>
    call @printF64(%52) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%18, %42) : (f64, f64) -> ()
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
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8192 = arith.constant 8192 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
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
    cf.br ^bb19(%c0 : index)
  ^bb19(%19: index):  // 2 preds: ^bb18, ^bb35
    %20 = arith.cmpi slt, %19, %c8192 : index
    cf.cond_br %20, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    cf.br ^bb21(%c0 : index)
  ^bb21(%21: index):  // 2 preds: ^bb20, ^bb34
    %22 = arith.cmpi slt, %21, %c8192 : index
    cf.cond_br %22, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %subview = memref.subview %alloc_2[%21, %19] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
    cf.br ^bb23(%c0 : index)
  ^bb23(%23: index):  // 2 preds: ^bb22, ^bb33
    %24 = arith.cmpi slt, %23, %c8192 : index
    cf.cond_br %24, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %subview_4 = memref.subview %alloc[%23, %21] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
    %subview_5 = memref.subview %alloc_3[%23, %19] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
    cf.br ^bb25(%c0 : index)
  ^bb25(%25: index):  // 2 preds: ^bb24, ^bb32
    %26 = arith.cmpi slt, %25, %c512 : index
    cf.cond_br %26, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%27: index):  // 2 preds: ^bb26, ^bb31
    %28 = arith.cmpi slt, %27, %c512 : index
    cf.cond_br %28, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    cf.br ^bb29(%c0 : index)
  ^bb29(%29: index):  // 2 preds: ^bb28, ^bb30
    %30 = arith.cmpi slt, %29, %c512 : index
    cf.cond_br %30, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %31 = memref.load %subview_4[%25, %29] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
    %32 = memref.load %subview[%29, %27] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
    %33 = memref.load %subview_5[%25, %27] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
    %34 = arith.mulf %31, %32 : f64
    %35 = arith.addf %33, %34 : f64
    memref.store %35, %subview_5[%25, %27] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
    %36 = arith.addi %29, %c1 : index
    cf.br ^bb29(%36 : index)
  ^bb31:  // pred: ^bb29
    %37 = arith.addi %27, %c1 : index
    cf.br ^bb27(%37 : index)
  ^bb32:  // pred: ^bb27
    %38 = arith.addi %25, %c1 : index
    cf.br ^bb25(%38 : index)
  ^bb33:  // pred: ^bb25
    %39 = arith.addi %23, %c512 : index
    cf.br ^bb23(%39 : index)
  ^bb34:  // pred: ^bb23
    %40 = arith.addi %21, %c512 : index
    cf.br ^bb21(%40 : index)
  ^bb35:  // pred: ^bb21
    %41 = arith.addi %19, %c512 : index
    cf.br ^bb19(%41 : index)
  ^bb36:  // pred: ^bb19
    %42 = call @getTime() : () -> f64
    %alloc_6 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_6[%c0] : memref<1xf64>
    cf.br ^bb37(%c0 : index)
  ^bb37(%43: index):  // 2 preds: ^bb36, ^bb41
    %44 = arith.cmpi slt, %43, %c8192 : index
    cf.cond_br %44, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    cf.br ^bb39(%c0 : index)
  ^bb39(%45: index):  // 2 preds: ^bb38, ^bb40
    %46 = arith.cmpi slt, %45, %c8192 : index
    cf.cond_br %46, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %47 = memref.load %alloc_3[%43, %45] : memref<8192x8192xf64>
    %48 = memref.load %alloc_6[%c0] : memref<1xf64>
    %49 = arith.addf %47, %48 : f64
    memref.store %49, %alloc_6[%c0] : memref<1xf64>
    %50 = arith.addi %45, %c1 : index
    cf.br ^bb39(%50 : index)
  ^bb41:  // pred: ^bb39
    %51 = arith.addi %43, %c1 : index
    cf.br ^bb37(%51 : index)
  ^bb42:  // pred: ^bb37
    %52 = memref.load %alloc_6[%c0] : memref<1xf64>
    call @printF64(%52) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%18, %42) : (f64, f64) -> ()
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
func.func private @printF64(f64)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @getTime() -> f64

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c512 = arith.constant 512 : index
  %c8192 = arith.constant 8192 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
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
  cf.br ^bb19(%c0 : index)
^bb19(%19: index):  // 2 preds: ^bb18, ^bb35
  %20 = arith.cmpi slt, %19, %c8192 : index
  cf.cond_br %20, ^bb20, ^bb36
^bb20:  // pred: ^bb19
  cf.br ^bb21(%c0 : index)
^bb21(%21: index):  // 2 preds: ^bb20, ^bb34
  %22 = arith.cmpi slt, %21, %c8192 : index
  cf.cond_br %22, ^bb22, ^bb35
^bb22:  // pred: ^bb21
  %subview = memref.subview %alloc_2[%21, %19] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
  cf.br ^bb23(%c0 : index)
^bb23(%23: index):  // 2 preds: ^bb22, ^bb33
  %24 = arith.cmpi slt, %23, %c8192 : index
  cf.cond_br %24, ^bb24, ^bb34
^bb24:  // pred: ^bb23
  %subview_4 = memref.subview %alloc[%23, %21] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
  %subview_5 = memref.subview %alloc_3[%23, %19] [512, 512] [1, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
  cf.br ^bb25(%c0 : index)
^bb25(%25: index):  // 2 preds: ^bb24, ^bb32
  %26 = arith.cmpi slt, %25, %c512 : index
  cf.cond_br %26, ^bb26, ^bb33
^bb26:  // pred: ^bb25
  cf.br ^bb27(%c0 : index)
^bb27(%27: index):  // 2 preds: ^bb26, ^bb31
  %28 = arith.cmpi slt, %27, %c512 : index
  cf.cond_br %28, ^bb28, ^bb32
^bb28:  // pred: ^bb27
  cf.br ^bb29(%c0 : index)
^bb29(%29: index):  // 2 preds: ^bb28, ^bb30
  %30 = arith.cmpi slt, %29, %c512 : index
  cf.cond_br %30, ^bb30, ^bb31
^bb30:  // pred: ^bb29
  %31 = memref.load %subview_4[%25, %29] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
  %32 = memref.load %subview[%29, %27] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
  %33 = memref.load %subview_5[%25, %27] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
  %34 = arith.mulf %31, %32 : f64
  %35 = arith.addf %33, %34 : f64
  memref.store %35, %subview_5[%25, %27] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
  %36 = arith.addi %29, %c1 : index
  cf.br ^bb29(%36 : index)
^bb31:  // pred: ^bb29
  %37 = arith.addi %27, %c1 : index
  cf.br ^bb27(%37 : index)
^bb32:  // pred: ^bb27
  %38 = arith.addi %25, %c1 : index
  cf.br ^bb25(%38 : index)
^bb33:  // pred: ^bb25
  %39 = arith.addi %23, %c512 : index
  cf.br ^bb23(%39 : index)
^bb34:  // pred: ^bb23
  %40 = arith.addi %21, %c512 : index
  cf.br ^bb21(%40 : index)
^bb35:  // pred: ^bb21
  %41 = arith.addi %19, %c512 : index
  cf.br ^bb19(%41 : index)
^bb36:  // pred: ^bb19
  %42 = call @getTime() : () -> f64
  %alloc_6 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_6[%c0] : memref<1xf64>
  cf.br ^bb37(%c0 : index)
^bb37(%43: index):  // 2 preds: ^bb36, ^bb41
  %44 = arith.cmpi slt, %43, %c8192 : index
  cf.cond_br %44, ^bb38, ^bb42
^bb38:  // pred: ^bb37
  cf.br ^bb39(%c0 : index)
^bb39(%45: index):  // 2 preds: ^bb38, ^bb40
  %46 = arith.cmpi slt, %45, %c8192 : index
  cf.cond_br %46, ^bb40, ^bb41
^bb40:  // pred: ^bb39
  %47 = memref.load %alloc_3[%43, %45] : memref<8192x8192xf64>
  %48 = memref.load %alloc_6[%c0] : memref<1xf64>
  %49 = arith.addf %47, %48 : f64
  memref.store %49, %alloc_6[%c0] : memref<1xf64>
  %50 = arith.addi %45, %c1 : index
  cf.br ^bb39(%50 : index)
^bb41:  // pred: ^bb39
  %51 = arith.addi %43, %c1 : index
  cf.br ^bb37(%51 : index)
^bb42:  // pred: ^bb37
  %52 = memref.load %alloc_6[%c0] : memref<1xf64>
  call @printF64(%52) : (f64) -> ()
  call @printNewline() : () -> ()
  call @printElapsedTime(%18, %42) : (f64, f64) -> ()
  return
}

// -----// IR Dump After ExpandStridedMetadata (expand-strided-metadata) //----- //
#map = affine_map<()[s0, s1] -> (s0 * 8192 + s1)>
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8192 = arith.constant 8192 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
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
    cf.br ^bb19(%c0 : index)
  ^bb19(%19: index):  // 2 preds: ^bb18, ^bb35
    %20 = arith.cmpi slt, %19, %c8192 : index
    cf.cond_br %20, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    cf.br ^bb21(%c0 : index)
  ^bb21(%21: index):  // 2 preds: ^bb20, ^bb34
    %22 = arith.cmpi slt, %21, %c8192 : index
    cf.cond_br %22, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %23 = affine.apply #map()[%21, %19]
    %reinterpret_cast = memref.reinterpret_cast %alloc_2 to offset: [%23], sizes: [512, 512], strides: [8192, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
    cf.br ^bb23(%c0 : index)
  ^bb23(%24: index):  // 2 preds: ^bb22, ^bb33
    %25 = arith.cmpi slt, %24, %c8192 : index
    cf.cond_br %25, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %26 = affine.apply #map()[%24, %21]
    %reinterpret_cast_4 = memref.reinterpret_cast %alloc to offset: [%26], sizes: [512, 512], strides: [8192, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
    %27 = affine.apply #map()[%24, %19]
    %reinterpret_cast_5 = memref.reinterpret_cast %alloc_3 to offset: [%27], sizes: [512, 512], strides: [8192, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
    cf.br ^bb25(%c0 : index)
  ^bb25(%28: index):  // 2 preds: ^bb24, ^bb32
    %29 = arith.cmpi slt, %28, %c512 : index
    cf.cond_br %29, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%30: index):  // 2 preds: ^bb26, ^bb31
    %31 = arith.cmpi slt, %30, %c512 : index
    cf.cond_br %31, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    cf.br ^bb29(%c0 : index)
  ^bb29(%32: index):  // 2 preds: ^bb28, ^bb30
    %33 = arith.cmpi slt, %32, %c512 : index
    cf.cond_br %33, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %34 = memref.load %reinterpret_cast_4[%28, %32] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
    %35 = memref.load %reinterpret_cast[%32, %30] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
    %36 = memref.load %reinterpret_cast_5[%28, %30] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
    %37 = arith.mulf %34, %35 : f64
    %38 = arith.addf %36, %37 : f64
    memref.store %38, %reinterpret_cast_5[%28, %30] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
    %39 = arith.addi %32, %c1 : index
    cf.br ^bb29(%39 : index)
  ^bb31:  // pred: ^bb29
    %40 = arith.addi %30, %c1 : index
    cf.br ^bb27(%40 : index)
  ^bb32:  // pred: ^bb27
    %41 = arith.addi %28, %c1 : index
    cf.br ^bb25(%41 : index)
  ^bb33:  // pred: ^bb25
    %42 = arith.addi %24, %c512 : index
    cf.br ^bb23(%42 : index)
  ^bb34:  // pred: ^bb23
    %43 = arith.addi %21, %c512 : index
    cf.br ^bb21(%43 : index)
  ^bb35:  // pred: ^bb21
    %44 = arith.addi %19, %c512 : index
    cf.br ^bb19(%44 : index)
  ^bb36:  // pred: ^bb19
    %45 = call @getTime() : () -> f64
    %alloc_6 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_6[%c0] : memref<1xf64>
    cf.br ^bb37(%c0 : index)
  ^bb37(%46: index):  // 2 preds: ^bb36, ^bb41
    %47 = arith.cmpi slt, %46, %c8192 : index
    cf.cond_br %47, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    cf.br ^bb39(%c0 : index)
  ^bb39(%48: index):  // 2 preds: ^bb38, ^bb40
    %49 = arith.cmpi slt, %48, %c8192 : index
    cf.cond_br %49, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %50 = memref.load %alloc_3[%46, %48] : memref<8192x8192xf64>
    %51 = memref.load %alloc_6[%c0] : memref<1xf64>
    %52 = arith.addf %50, %51 : f64
    memref.store %52, %alloc_6[%c0] : memref<1xf64>
    %53 = arith.addi %48, %c1 : index
    cf.br ^bb39(%53 : index)
  ^bb41:  // pred: ^bb39
    %54 = arith.addi %46, %c1 : index
    cf.br ^bb37(%54 : index)
  ^bb42:  // pred: ^bb37
    %55 = memref.load %alloc_6[%c0] : memref<1xf64>
    call @printF64(%55) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%18, %45) : (f64, f64) -> ()
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
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8192 = arith.constant 8192 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
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
    cf.br ^bb19(%c0 : index)
  ^bb19(%19: index):  // 2 preds: ^bb18, ^bb35
    %20 = arith.cmpi slt, %19, %c8192 : index
    cf.cond_br %20, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    cf.br ^bb21(%c0 : index)
  ^bb21(%21: index):  // 2 preds: ^bb20, ^bb34
    %22 = arith.cmpi slt, %21, %c8192 : index
    cf.cond_br %22, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %c8192_4 = arith.constant 8192 : index
    %23 = arith.muli %21, %c8192_4 : index
    %24 = arith.addi %23, %19 : index
    %reinterpret_cast = memref.reinterpret_cast %alloc_2 to offset: [%24], sizes: [512, 512], strides: [8192, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
    cf.br ^bb23(%c0 : index)
  ^bb23(%25: index):  // 2 preds: ^bb22, ^bb33
    %26 = arith.cmpi slt, %25, %c8192 : index
    cf.cond_br %26, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %c8192_5 = arith.constant 8192 : index
    %27 = arith.muli %25, %c8192_5 : index
    %28 = arith.addi %27, %21 : index
    %reinterpret_cast_6 = memref.reinterpret_cast %alloc to offset: [%28], sizes: [512, 512], strides: [8192, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
    %c8192_7 = arith.constant 8192 : index
    %29 = arith.muli %25, %c8192_7 : index
    %30 = arith.addi %29, %19 : index
    %reinterpret_cast_8 = memref.reinterpret_cast %alloc_3 to offset: [%30], sizes: [512, 512], strides: [8192, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
    cf.br ^bb25(%c0 : index)
  ^bb25(%31: index):  // 2 preds: ^bb24, ^bb32
    %32 = arith.cmpi slt, %31, %c512 : index
    cf.cond_br %32, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%33: index):  // 2 preds: ^bb26, ^bb31
    %34 = arith.cmpi slt, %33, %c512 : index
    cf.cond_br %34, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    cf.br ^bb29(%c0 : index)
  ^bb29(%35: index):  // 2 preds: ^bb28, ^bb30
    %36 = arith.cmpi slt, %35, %c512 : index
    cf.cond_br %36, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %37 = memref.load %reinterpret_cast_6[%31, %35] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
    %38 = memref.load %reinterpret_cast[%35, %33] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
    %39 = memref.load %reinterpret_cast_8[%31, %33] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
    %40 = arith.mulf %37, %38 : f64
    %41 = arith.addf %39, %40 : f64
    memref.store %41, %reinterpret_cast_8[%31, %33] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
    %42 = arith.addi %35, %c1 : index
    cf.br ^bb29(%42 : index)
  ^bb31:  // pred: ^bb29
    %43 = arith.addi %33, %c1 : index
    cf.br ^bb27(%43 : index)
  ^bb32:  // pred: ^bb27
    %44 = arith.addi %31, %c1 : index
    cf.br ^bb25(%44 : index)
  ^bb33:  // pred: ^bb25
    %45 = arith.addi %25, %c512 : index
    cf.br ^bb23(%45 : index)
  ^bb34:  // pred: ^bb23
    %46 = arith.addi %21, %c512 : index
    cf.br ^bb21(%46 : index)
  ^bb35:  // pred: ^bb21
    %47 = arith.addi %19, %c512 : index
    cf.br ^bb19(%47 : index)
  ^bb36:  // pred: ^bb19
    %48 = call @getTime() : () -> f64
    %alloc_9 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_9[%c0] : memref<1xf64>
    cf.br ^bb37(%c0 : index)
  ^bb37(%49: index):  // 2 preds: ^bb36, ^bb41
    %50 = arith.cmpi slt, %49, %c8192 : index
    cf.cond_br %50, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    cf.br ^bb39(%c0 : index)
  ^bb39(%51: index):  // 2 preds: ^bb38, ^bb40
    %52 = arith.cmpi slt, %51, %c8192 : index
    cf.cond_br %52, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %53 = memref.load %alloc_3[%49, %51] : memref<8192x8192xf64>
    %54 = memref.load %alloc_9[%c0] : memref<1xf64>
    %55 = arith.addf %53, %54 : f64
    memref.store %55, %alloc_9[%c0] : memref<1xf64>
    %56 = arith.addi %51, %c1 : index
    cf.br ^bb39(%56 : index)
  ^bb41:  // pred: ^bb39
    %57 = arith.addi %49, %c1 : index
    cf.br ^bb37(%57 : index)
  ^bb42:  // pred: ^bb37
    %58 = memref.load %alloc_9[%c0] : memref<1xf64>
    call @printF64(%58) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%18, %48) : (f64, f64) -> ()
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
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8192 = arith.constant 8192 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
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
    cf.br ^bb19(%c0 : index)
  ^bb19(%19: index):  // 2 preds: ^bb18, ^bb35
    %20 = arith.cmpi slt, %19, %c8192 : index
    llvm.cond_br %20, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    cf.br ^bb21(%c0 : index)
  ^bb21(%21: index):  // 2 preds: ^bb20, ^bb34
    %22 = arith.cmpi slt, %21, %c8192 : index
    llvm.cond_br %22, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %c8192_4 = arith.constant 8192 : index
    %23 = arith.muli %21, %c8192_4 : index
    %24 = arith.addi %23, %19 : index
    %reinterpret_cast = memref.reinterpret_cast %alloc_2 to offset: [%24], sizes: [512, 512], strides: [8192, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
    cf.br ^bb23(%c0 : index)
  ^bb23(%25: index):  // 2 preds: ^bb22, ^bb33
    %26 = arith.cmpi slt, %25, %c8192 : index
    llvm.cond_br %26, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %c8192_5 = arith.constant 8192 : index
    %27 = arith.muli %25, %c8192_5 : index
    %28 = arith.addi %27, %21 : index
    %reinterpret_cast_6 = memref.reinterpret_cast %alloc to offset: [%28], sizes: [512, 512], strides: [8192, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
    %c8192_7 = arith.constant 8192 : index
    %29 = arith.muli %25, %c8192_7 : index
    %30 = arith.addi %29, %19 : index
    %reinterpret_cast_8 = memref.reinterpret_cast %alloc_3 to offset: [%30], sizes: [512, 512], strides: [8192, 1] : memref<8192x8192xf64> to memref<512x512xf64, strided<[8192, 1], offset: ?>>
    cf.br ^bb25(%c0 : index)
  ^bb25(%31: index):  // 2 preds: ^bb24, ^bb32
    %32 = arith.cmpi slt, %31, %c512 : index
    llvm.cond_br %32, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%33: index):  // 2 preds: ^bb26, ^bb31
    %34 = arith.cmpi slt, %33, %c512 : index
    llvm.cond_br %34, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    cf.br ^bb29(%c0 : index)
  ^bb29(%35: index):  // 2 preds: ^bb28, ^bb30
    %36 = arith.cmpi slt, %35, %c512 : index
    llvm.cond_br %36, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %37 = memref.load %reinterpret_cast_6[%31, %35] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
    %38 = memref.load %reinterpret_cast[%35, %33] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
    %39 = memref.load %reinterpret_cast_8[%31, %33] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
    %40 = arith.mulf %37, %38 : f64
    %41 = arith.addf %39, %40 : f64
    memref.store %41, %reinterpret_cast_8[%31, %33] : memref<512x512xf64, strided<[8192, 1], offset: ?>>
    %42 = arith.addi %35, %c1 : index
    cf.br ^bb29(%42 : index)
  ^bb31:  // pred: ^bb29
    %43 = arith.addi %33, %c1 : index
    cf.br ^bb27(%43 : index)
  ^bb32:  // pred: ^bb27
    %44 = arith.addi %31, %c1 : index
    cf.br ^bb25(%44 : index)
  ^bb33:  // pred: ^bb25
    %45 = arith.addi %25, %c512 : index
    cf.br ^bb23(%45 : index)
  ^bb34:  // pred: ^bb23
    %46 = arith.addi %21, %c512 : index
    cf.br ^bb21(%46 : index)
  ^bb35:  // pred: ^bb21
    %47 = arith.addi %19, %c512 : index
    cf.br ^bb19(%47 : index)
  ^bb36:  // pred: ^bb19
    %48 = call @getTime() : () -> f64
    %alloc_9 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_9[%c0] : memref<1xf64>
    cf.br ^bb37(%c0 : index)
  ^bb37(%49: index):  // 2 preds: ^bb36, ^bb41
    %50 = arith.cmpi slt, %49, %c8192 : index
    llvm.cond_br %50, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    cf.br ^bb39(%c0 : index)
  ^bb39(%51: index):  // 2 preds: ^bb38, ^bb40
    %52 = arith.cmpi slt, %51, %c8192 : index
    llvm.cond_br %52, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %53 = memref.load %alloc_3[%49, %51] : memref<8192x8192xf64>
    %54 = memref.load %alloc_9[%c0] : memref<1xf64>
    %55 = arith.addf %53, %54 : f64
    memref.store %55, %alloc_9[%c0] : memref<1xf64>
    %56 = arith.addi %51, %c1 : index
    cf.br ^bb39(%56 : index)
  ^bb41:  // pred: ^bb39
    %57 = arith.addi %49, %c1 : index
    cf.br ^bb37(%57 : index)
  ^bb42:  // pred: ^bb37
    %58 = memref.load %alloc_9[%c0] : memref<1xf64>
    call @printF64(%58) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%18, %48) : (f64, f64) -> ()
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
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8192 = arith.constant 8192 : index
    %c0 = arith.constant 0 : index
    %0 = builtin.unrealized_conversion_cast %c0 : index to i64
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
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
    cf.br ^bb19(%c0 : index)
  ^bb19(%119: index):  // 2 preds: ^bb18, ^bb35
    %120 = arith.cmpi slt, %119, %c8192 : index
    llvm.cond_br %120, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    cf.br ^bb21(%c0 : index)
  ^bb21(%121: index):  // 2 preds: ^bb20, ^bb34
    %122 = arith.cmpi slt, %121, %c8192 : index
    llvm.cond_br %122, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %c8192_2 = arith.constant 8192 : index
    %123 = arith.muli %121, %c8192_2 : index
    %124 = arith.addi %123, %119 : index
    %125 = builtin.unrealized_conversion_cast %124 : index to i64
    %126 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %127 = llvm.extractvalue %65[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %128 = llvm.extractvalue %65[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %129 = llvm.insertvalue %127, %126[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %130 = llvm.insertvalue %128, %129[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %131 = llvm.insertvalue %125, %130[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %132 = llvm.mlir.constant(512 : index) : i64
    %133 = llvm.insertvalue %132, %131[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %134 = llvm.mlir.constant(8192 : index) : i64
    %135 = llvm.insertvalue %134, %133[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %136 = llvm.mlir.constant(512 : index) : i64
    %137 = llvm.insertvalue %136, %135[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.insertvalue %138, %137[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    cf.br ^bb23(%c0 : index)
  ^bb23(%140: index):  // 2 preds: ^bb22, ^bb33
    %141 = arith.cmpi slt, %140, %c8192 : index
    llvm.cond_br %141, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %c8192_3 = arith.constant 8192 : index
    %142 = arith.muli %140, %c8192_3 : index
    %143 = arith.addi %142, %121 : index
    %144 = builtin.unrealized_conversion_cast %143 : index to i64
    %145 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %146 = llvm.extractvalue %26[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %147 = llvm.extractvalue %26[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %148 = llvm.insertvalue %146, %145[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %149 = llvm.insertvalue %147, %148[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %150 = llvm.insertvalue %144, %149[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %151 = llvm.mlir.constant(512 : index) : i64
    %152 = llvm.insertvalue %151, %150[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %153 = llvm.mlir.constant(8192 : index) : i64
    %154 = llvm.insertvalue %153, %152[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %155 = llvm.mlir.constant(512 : index) : i64
    %156 = llvm.insertvalue %155, %154[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.insertvalue %157, %156[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %c8192_4 = arith.constant 8192 : index
    %159 = arith.muli %140, %c8192_4 : index
    %160 = arith.addi %159, %119 : index
    %161 = builtin.unrealized_conversion_cast %160 : index to i64
    %162 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %163 = llvm.extractvalue %104[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %164 = llvm.extractvalue %104[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %165 = llvm.insertvalue %163, %162[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %166 = llvm.insertvalue %164, %165[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %167 = llvm.insertvalue %161, %166[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %168 = llvm.mlir.constant(512 : index) : i64
    %169 = llvm.insertvalue %168, %167[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %170 = llvm.mlir.constant(8192 : index) : i64
    %171 = llvm.insertvalue %170, %169[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %172 = llvm.mlir.constant(512 : index) : i64
    %173 = llvm.insertvalue %172, %171[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.insertvalue %174, %173[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    cf.br ^bb25(%c0 : index)
  ^bb25(%176: index):  // 2 preds: ^bb24, ^bb32
    %177 = builtin.unrealized_conversion_cast %176 : index to i64
    %178 = arith.cmpi slt, %176, %c512 : index
    llvm.cond_br %178, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%179: index):  // 2 preds: ^bb26, ^bb31
    %180 = builtin.unrealized_conversion_cast %179 : index to i64
    %181 = arith.cmpi slt, %179, %c512 : index
    llvm.cond_br %181, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    cf.br ^bb29(%c0 : index)
  ^bb29(%182: index):  // 2 preds: ^bb28, ^bb30
    %183 = builtin.unrealized_conversion_cast %182 : index to i64
    %184 = arith.cmpi slt, %182, %c512 : index
    llvm.cond_br %184, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %185 = llvm.extractvalue %158[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %186 = llvm.extractvalue %158[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %187 = llvm.getelementptr %185[%186] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %188 = llvm.mlir.constant(8192 : index) : i64
    %189 = llvm.mul %177, %188 : i64
    %190 = llvm.add %189, %183 : i64
    %191 = llvm.getelementptr %187[%190] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %192 = llvm.load %191 : !llvm.ptr -> f64
    %193 = llvm.extractvalue %139[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %194 = llvm.extractvalue %139[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %195 = llvm.getelementptr %193[%194] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %196 = llvm.mlir.constant(8192 : index) : i64
    %197 = llvm.mul %183, %196 : i64
    %198 = llvm.add %197, %180 : i64
    %199 = llvm.getelementptr %195[%198] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %200 = llvm.load %199 : !llvm.ptr -> f64
    %201 = llvm.extractvalue %175[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %202 = llvm.extractvalue %175[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %203 = llvm.getelementptr %201[%202] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %204 = llvm.mlir.constant(8192 : index) : i64
    %205 = llvm.mul %177, %204 : i64
    %206 = llvm.add %205, %180 : i64
    %207 = llvm.getelementptr %203[%206] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %208 = llvm.load %207 : !llvm.ptr -> f64
    %209 = arith.mulf %192, %200 : f64
    %210 = arith.addf %208, %209 : f64
    %211 = llvm.extractvalue %175[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %212 = llvm.extractvalue %175[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %213 = llvm.getelementptr %211[%212] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %214 = llvm.mlir.constant(8192 : index) : i64
    %215 = llvm.mul %177, %214 : i64
    %216 = llvm.add %215, %180 : i64
    %217 = llvm.getelementptr %213[%216] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %210, %217 : f64, !llvm.ptr
    %218 = arith.addi %182, %c1 : index
    cf.br ^bb29(%218 : index)
  ^bb31:  // pred: ^bb29
    %219 = arith.addi %179, %c1 : index
    cf.br ^bb27(%219 : index)
  ^bb32:  // pred: ^bb27
    %220 = arith.addi %176, %c1 : index
    cf.br ^bb25(%220 : index)
  ^bb33:  // pred: ^bb25
    %221 = arith.addi %140, %c512 : index
    cf.br ^bb23(%221 : index)
  ^bb34:  // pred: ^bb23
    %222 = arith.addi %121, %c512 : index
    cf.br ^bb21(%222 : index)
  ^bb35:  // pred: ^bb21
    %223 = arith.addi %119, %c512 : index
    cf.br ^bb19(%223 : index)
  ^bb36:  // pred: ^bb19
    %224 = call @getTime() : () -> f64
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    %227 = llvm.mlir.zero : !llvm.ptr
    %228 = llvm.getelementptr %227[%225] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %229 = llvm.ptrtoint %228 : !llvm.ptr to i64
    %230 = llvm.call @malloc(%229) : (i64) -> !llvm.ptr
    %231 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %232 = llvm.insertvalue %230, %231[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.insertvalue %230, %232[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %234 = llvm.mlir.constant(0 : index) : i64
    %235 = llvm.insertvalue %234, %233[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %236 = llvm.insertvalue %225, %235[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %237 = llvm.insertvalue %226, %236[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %238 = llvm.extractvalue %237[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %239 = llvm.getelementptr %238[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst, %239 : f64, !llvm.ptr
    cf.br ^bb37(%c0 : index)
  ^bb37(%240: index):  // 2 preds: ^bb36, ^bb41
    %241 = builtin.unrealized_conversion_cast %240 : index to i64
    %242 = arith.cmpi slt, %240, %c8192 : index
    llvm.cond_br %242, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    cf.br ^bb39(%c0 : index)
  ^bb39(%243: index):  // 2 preds: ^bb38, ^bb40
    %244 = builtin.unrealized_conversion_cast %243 : index to i64
    %245 = arith.cmpi slt, %243, %c8192 : index
    llvm.cond_br %245, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %246 = llvm.extractvalue %104[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %247 = llvm.mlir.constant(8192 : index) : i64
    %248 = llvm.mul %241, %247 : i64
    %249 = llvm.add %248, %244 : i64
    %250 = llvm.getelementptr %246[%249] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %251 = llvm.load %250 : !llvm.ptr -> f64
    %252 = llvm.extractvalue %237[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %253 = llvm.getelementptr %252[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %254 = llvm.load %253 : !llvm.ptr -> f64
    %255 = arith.addf %251, %254 : f64
    %256 = llvm.extractvalue %237[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %257 = llvm.getelementptr %256[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %255, %257 : f64, !llvm.ptr
    %258 = arith.addi %243, %c1 : index
    cf.br ^bb39(%258 : index)
  ^bb41:  // pred: ^bb39
    %259 = arith.addi %240, %c1 : index
    cf.br ^bb37(%259 : index)
  ^bb42:  // pred: ^bb37
    %260 = llvm.extractvalue %237[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %261 = llvm.getelementptr %260[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %262 = llvm.load %261 : !llvm.ptr -> f64
    call @printF64(%262) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%118, %224) : (f64, f64) -> ()
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
    %0 = llvm.mlir.constant(1 : index) : i64
    %1 = llvm.mlir.constant(512 : index) : i64
    %2 = llvm.mlir.constant(8192 : index) : i64
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = builtin.unrealized_conversion_cast %3 : i64 to index
    %5 = builtin.unrealized_conversion_cast %4 : index to i64
    %6 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %7 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %8 = llvm.mlir.constant(2.200000e+00 : f64) : f64
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
    llvm.br ^bb1(%3 : i64)
  ^bb1(%35: i64):  // 2 preds: ^bb0, ^bb5
    %36 = builtin.unrealized_conversion_cast %35 : i64 to index
    %37 = builtin.unrealized_conversion_cast %36 : index to i64
    %38 = llvm.icmp "slt" %35, %2 : i64
    llvm.cond_br %38, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%3 : i64)
  ^bb3(%39: i64):  // 2 preds: ^bb2, ^bb4
    %40 = builtin.unrealized_conversion_cast %39 : i64 to index
    %41 = builtin.unrealized_conversion_cast %40 : index to i64
    %42 = llvm.icmp "slt" %39, %2 : i64
    llvm.cond_br %42, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %43 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %44 = llvm.mlir.constant(8192 : index) : i64
    %45 = llvm.mul %37, %44 : i64
    %46 = llvm.add %45, %41 : i64
    %47 = llvm.getelementptr %43[%46] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %47 : f64, !llvm.ptr
    %48 = llvm.add %39, %0 : i64
    llvm.br ^bb3(%48 : i64)
  ^bb5:  // pred: ^bb3
    %49 = llvm.add %35, %0 : i64
    llvm.br ^bb1(%49 : i64)
  ^bb6:  // pred: ^bb1
    %50 = llvm.mlir.constant(8192 : index) : i64
    %51 = llvm.mlir.constant(8192 : index) : i64
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.mlir.constant(67108864 : index) : i64
    %54 = llvm.mlir.zero : !llvm.ptr
    %55 = llvm.getelementptr %54[%53] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %56 = llvm.ptrtoint %55 : !llvm.ptr to i64
    %57 = llvm.mlir.constant(32 : index) : i64
    %58 = llvm.add %56, %57 : i64
    %59 = llvm.call @malloc(%58) : (i64) -> !llvm.ptr
    %60 = llvm.ptrtoint %59 : !llvm.ptr to i64
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.sub %57, %61 : i64
    %63 = llvm.add %60, %62 : i64
    %64 = llvm.urem %63, %57  : i64
    %65 = llvm.sub %63, %64 : i64
    %66 = llvm.inttoptr %65 : i64 to !llvm.ptr
    %67 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %68 = llvm.insertvalue %59, %67[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.mlir.constant(0 : index) : i64
    %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %72 = llvm.insertvalue %50, %71[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %73 = llvm.insertvalue %51, %72[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %74 = llvm.insertvalue %51, %73[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.insertvalue %52, %74[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb7(%3 : i64)
  ^bb7(%76: i64):  // 2 preds: ^bb6, ^bb11
    %77 = builtin.unrealized_conversion_cast %76 : i64 to index
    %78 = builtin.unrealized_conversion_cast %77 : index to i64
    %79 = llvm.icmp "slt" %76, %2 : i64
    llvm.cond_br %79, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%3 : i64)
  ^bb9(%80: i64):  // 2 preds: ^bb8, ^bb10
    %81 = builtin.unrealized_conversion_cast %80 : i64 to index
    %82 = builtin.unrealized_conversion_cast %81 : index to i64
    %83 = llvm.icmp "slt" %80, %2 : i64
    llvm.cond_br %83, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %84 = llvm.extractvalue %75[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %85 = llvm.mlir.constant(8192 : index) : i64
    %86 = llvm.mul %78, %85 : i64
    %87 = llvm.add %86, %82 : i64
    %88 = llvm.getelementptr %84[%87] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %88 : f64, !llvm.ptr
    %89 = llvm.add %80, %0 : i64
    llvm.br ^bb9(%89 : i64)
  ^bb11:  // pred: ^bb9
    %90 = llvm.add %76, %0 : i64
    llvm.br ^bb7(%90 : i64)
  ^bb12:  // pred: ^bb7
    %91 = llvm.mlir.constant(8192 : index) : i64
    %92 = llvm.mlir.constant(8192 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.mlir.constant(67108864 : index) : i64
    %95 = llvm.mlir.zero : !llvm.ptr
    %96 = llvm.getelementptr %95[%94] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %97 = llvm.ptrtoint %96 : !llvm.ptr to i64
    %98 = llvm.mlir.constant(32 : index) : i64
    %99 = llvm.add %97, %98 : i64
    %100 = llvm.call @malloc(%99) : (i64) -> !llvm.ptr
    %101 = llvm.ptrtoint %100 : !llvm.ptr to i64
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.sub %98, %102 : i64
    %104 = llvm.add %101, %103 : i64
    %105 = llvm.urem %104, %98  : i64
    %106 = llvm.sub %104, %105 : i64
    %107 = llvm.inttoptr %106 : i64 to !llvm.ptr
    %108 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %109 = llvm.insertvalue %100, %108[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %110 = llvm.insertvalue %107, %109[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.insertvalue %111, %110[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %113 = llvm.insertvalue %91, %112[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %114 = llvm.insertvalue %92, %113[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %115 = llvm.insertvalue %92, %114[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %116 = llvm.insertvalue %93, %115[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb13(%3 : i64)
  ^bb13(%117: i64):  // 2 preds: ^bb12, ^bb17
    %118 = builtin.unrealized_conversion_cast %117 : i64 to index
    %119 = builtin.unrealized_conversion_cast %118 : index to i64
    %120 = llvm.icmp "slt" %117, %2 : i64
    llvm.cond_br %120, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%3 : i64)
  ^bb15(%121: i64):  // 2 preds: ^bb14, ^bb16
    %122 = builtin.unrealized_conversion_cast %121 : i64 to index
    %123 = builtin.unrealized_conversion_cast %122 : index to i64
    %124 = llvm.icmp "slt" %121, %2 : i64
    llvm.cond_br %124, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %125 = llvm.extractvalue %116[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %126 = llvm.mlir.constant(8192 : index) : i64
    %127 = llvm.mul %119, %126 : i64
    %128 = llvm.add %127, %123 : i64
    %129 = llvm.getelementptr %125[%128] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %129 : f64, !llvm.ptr
    %130 = llvm.add %121, %0 : i64
    llvm.br ^bb15(%130 : i64)
  ^bb17:  // pred: ^bb15
    %131 = llvm.add %117, %0 : i64
    llvm.br ^bb13(%131 : i64)
  ^bb18:  // pred: ^bb13
    %132 = llvm.call @getTime() : () -> f64
    llvm.br ^bb19(%3 : i64)
  ^bb19(%133: i64):  // 2 preds: ^bb18, ^bb35
    %134 = llvm.icmp "slt" %133, %2 : i64
    llvm.cond_br %134, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    llvm.br ^bb21(%3 : i64)
  ^bb21(%135: i64):  // 2 preds: ^bb20, ^bb34
    %136 = llvm.icmp "slt" %135, %2 : i64
    llvm.cond_br %136, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %137 = llvm.mlir.constant(8192 : index) : i64
    %138 = llvm.mul %135, %137 : i64
    %139 = llvm.add %138, %133 : i64
    %140 = builtin.unrealized_conversion_cast %139 : i64 to index
    %141 = builtin.unrealized_conversion_cast %140 : index to i64
    %142 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %143 = llvm.extractvalue %75[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %144 = llvm.extractvalue %75[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %145 = llvm.insertvalue %143, %142[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %146 = llvm.insertvalue %144, %145[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %147 = llvm.insertvalue %141, %146[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %148 = llvm.mlir.constant(512 : index) : i64
    %149 = llvm.insertvalue %148, %147[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %150 = llvm.mlir.constant(8192 : index) : i64
    %151 = llvm.insertvalue %150, %149[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %152 = llvm.mlir.constant(512 : index) : i64
    %153 = llvm.insertvalue %152, %151[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.insertvalue %154, %153[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb23(%3 : i64)
  ^bb23(%156: i64):  // 2 preds: ^bb22, ^bb33
    %157 = llvm.icmp "slt" %156, %2 : i64
    llvm.cond_br %157, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %158 = llvm.mlir.constant(8192 : index) : i64
    %159 = llvm.mul %156, %158 : i64
    %160 = llvm.add %159, %135 : i64
    %161 = builtin.unrealized_conversion_cast %160 : i64 to index
    %162 = builtin.unrealized_conversion_cast %161 : index to i64
    %163 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %164 = llvm.extractvalue %34[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %165 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %166 = llvm.insertvalue %164, %163[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %167 = llvm.insertvalue %165, %166[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %168 = llvm.insertvalue %162, %167[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %169 = llvm.mlir.constant(512 : index) : i64
    %170 = llvm.insertvalue %169, %168[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %171 = llvm.mlir.constant(8192 : index) : i64
    %172 = llvm.insertvalue %171, %170[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %173 = llvm.mlir.constant(512 : index) : i64
    %174 = llvm.insertvalue %173, %172[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.insertvalue %175, %174[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %177 = llvm.mlir.constant(8192 : index) : i64
    %178 = llvm.mul %156, %177 : i64
    %179 = llvm.add %178, %133 : i64
    %180 = builtin.unrealized_conversion_cast %179 : i64 to index
    %181 = builtin.unrealized_conversion_cast %180 : index to i64
    %182 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %183 = llvm.extractvalue %116[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %184 = llvm.extractvalue %116[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %185 = llvm.insertvalue %183, %182[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %186 = llvm.insertvalue %184, %185[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %187 = llvm.insertvalue %181, %186[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %188 = llvm.mlir.constant(512 : index) : i64
    %189 = llvm.insertvalue %188, %187[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %190 = llvm.mlir.constant(8192 : index) : i64
    %191 = llvm.insertvalue %190, %189[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %192 = llvm.mlir.constant(512 : index) : i64
    %193 = llvm.insertvalue %192, %191[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %194 = llvm.mlir.constant(1 : index) : i64
    %195 = llvm.insertvalue %194, %193[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb25(%3 : i64)
  ^bb25(%196: i64):  // 2 preds: ^bb24, ^bb32
    %197 = builtin.unrealized_conversion_cast %196 : i64 to index
    %198 = builtin.unrealized_conversion_cast %197 : index to i64
    %199 = llvm.icmp "slt" %196, %1 : i64
    llvm.cond_br %199, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%3 : i64)
  ^bb27(%200: i64):  // 2 preds: ^bb26, ^bb31
    %201 = builtin.unrealized_conversion_cast %200 : i64 to index
    %202 = builtin.unrealized_conversion_cast %201 : index to i64
    %203 = llvm.icmp "slt" %200, %1 : i64
    llvm.cond_br %203, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    llvm.br ^bb29(%3 : i64)
  ^bb29(%204: i64):  // 2 preds: ^bb28, ^bb30
    %205 = builtin.unrealized_conversion_cast %204 : i64 to index
    %206 = builtin.unrealized_conversion_cast %205 : index to i64
    %207 = llvm.icmp "slt" %204, %1 : i64
    llvm.cond_br %207, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %208 = llvm.extractvalue %176[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %209 = llvm.extractvalue %176[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %210 = llvm.getelementptr %208[%209] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %211 = llvm.mlir.constant(8192 : index) : i64
    %212 = llvm.mul %198, %211 : i64
    %213 = llvm.add %212, %206 : i64
    %214 = llvm.getelementptr %210[%213] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %215 = llvm.load %214 : !llvm.ptr -> f64
    %216 = llvm.extractvalue %155[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %217 = llvm.extractvalue %155[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %218 = llvm.getelementptr %216[%217] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %219 = llvm.mlir.constant(8192 : index) : i64
    %220 = llvm.mul %206, %219 : i64
    %221 = llvm.add %220, %202 : i64
    %222 = llvm.getelementptr %218[%221] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %223 = llvm.load %222 : !llvm.ptr -> f64
    %224 = llvm.extractvalue %195[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %225 = llvm.extractvalue %195[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %226 = llvm.getelementptr %224[%225] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %227 = llvm.mlir.constant(8192 : index) : i64
    %228 = llvm.mul %198, %227 : i64
    %229 = llvm.add %228, %202 : i64
    %230 = llvm.getelementptr %226[%229] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %231 = llvm.load %230 : !llvm.ptr -> f64
    %232 = llvm.fmul %215, %223  : f64
    %233 = llvm.fadd %231, %232  : f64
    %234 = llvm.extractvalue %195[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %235 = llvm.extractvalue %195[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %236 = llvm.getelementptr %234[%235] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %237 = llvm.mlir.constant(8192 : index) : i64
    %238 = llvm.mul %198, %237 : i64
    %239 = llvm.add %238, %202 : i64
    %240 = llvm.getelementptr %236[%239] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %233, %240 : f64, !llvm.ptr
    %241 = llvm.add %204, %0 : i64
    llvm.br ^bb29(%241 : i64)
  ^bb31:  // pred: ^bb29
    %242 = llvm.add %200, %0 : i64
    llvm.br ^bb27(%242 : i64)
  ^bb32:  // pred: ^bb27
    %243 = llvm.add %196, %0 : i64
    llvm.br ^bb25(%243 : i64)
  ^bb33:  // pred: ^bb25
    %244 = llvm.add %156, %1 : i64
    llvm.br ^bb23(%244 : i64)
  ^bb34:  // pred: ^bb23
    %245 = llvm.add %135, %1 : i64
    llvm.br ^bb21(%245 : i64)
  ^bb35:  // pred: ^bb21
    %246 = llvm.add %133, %1 : i64
    llvm.br ^bb19(%246 : i64)
  ^bb36:  // pred: ^bb19
    %247 = llvm.call @getTime() : () -> f64
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.zero : !llvm.ptr
    %251 = llvm.getelementptr %250[%248] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %252 = llvm.ptrtoint %251 : !llvm.ptr to i64
    %253 = llvm.call @malloc(%252) : (i64) -> !llvm.ptr
    %254 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %255 = llvm.insertvalue %253, %254[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %256 = llvm.insertvalue %253, %255[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %257 = llvm.mlir.constant(0 : index) : i64
    %258 = llvm.insertvalue %257, %256[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %259 = llvm.insertvalue %248, %258[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %260 = llvm.insertvalue %249, %259[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %261 = llvm.extractvalue %260[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %262 = llvm.getelementptr %261[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %262 : f64, !llvm.ptr
    llvm.br ^bb37(%3 : i64)
  ^bb37(%263: i64):  // 2 preds: ^bb36, ^bb41
    %264 = builtin.unrealized_conversion_cast %263 : i64 to index
    %265 = builtin.unrealized_conversion_cast %264 : index to i64
    %266 = llvm.icmp "slt" %263, %2 : i64
    llvm.cond_br %266, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    llvm.br ^bb39(%3 : i64)
  ^bb39(%267: i64):  // 2 preds: ^bb38, ^bb40
    %268 = builtin.unrealized_conversion_cast %267 : i64 to index
    %269 = builtin.unrealized_conversion_cast %268 : index to i64
    %270 = llvm.icmp "slt" %267, %2 : i64
    llvm.cond_br %270, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %271 = llvm.extractvalue %116[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %272 = llvm.mlir.constant(8192 : index) : i64
    %273 = llvm.mul %265, %272 : i64
    %274 = llvm.add %273, %269 : i64
    %275 = llvm.getelementptr %271[%274] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %276 = llvm.load %275 : !llvm.ptr -> f64
    %277 = llvm.extractvalue %260[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %278 = llvm.getelementptr %277[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %279 = llvm.load %278 : !llvm.ptr -> f64
    %280 = llvm.fadd %276, %279  : f64
    %281 = llvm.extractvalue %260[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %282 = llvm.getelementptr %281[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %280, %282 : f64, !llvm.ptr
    %283 = llvm.add %267, %0 : i64
    llvm.br ^bb39(%283 : i64)
  ^bb41:  // pred: ^bb39
    %284 = llvm.add %263, %0 : i64
    llvm.br ^bb37(%284 : i64)
  ^bb42:  // pred: ^bb37
    %285 = llvm.extractvalue %260[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %286 = llvm.getelementptr %285[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %287 = llvm.load %286 : !llvm.ptr -> f64
    llvm.call @printF64(%287) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%132, %247) : (f64, f64) -> ()
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
    %0 = llvm.mlir.constant(1 : index) : i64
    %1 = llvm.mlir.constant(512 : index) : i64
    %2 = llvm.mlir.constant(8192 : index) : i64
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = builtin.unrealized_conversion_cast %3 : i64 to index
    %5 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %6 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %7 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %8 = llvm.mlir.constant(8192 : index) : i64
    %9 = llvm.mlir.constant(8192 : index) : i64
    %10 = llvm.mlir.constant(1 : index) : i64
    %11 = llvm.mlir.constant(67108864 : index) : i64
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
    llvm.br ^bb1(%3 : i64)
  ^bb1(%34: i64):  // 2 preds: ^bb0, ^bb5
    %35 = builtin.unrealized_conversion_cast %34 : i64 to index
    %36 = llvm.icmp "slt" %34, %2 : i64
    llvm.cond_br %36, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%3 : i64)
  ^bb3(%37: i64):  // 2 preds: ^bb2, ^bb4
    %38 = builtin.unrealized_conversion_cast %37 : i64 to index
    %39 = llvm.icmp "slt" %37, %2 : i64
    llvm.cond_br %39, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %40 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.mlir.constant(8192 : index) : i64
    %42 = llvm.mul %34, %41 : i64
    %43 = llvm.add %42, %37 : i64
    %44 = llvm.getelementptr %40[%43] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %44 : f64, !llvm.ptr
    %45 = llvm.add %37, %0 : i64
    llvm.br ^bb3(%45 : i64)
  ^bb5:  // pred: ^bb3
    %46 = llvm.add %34, %0 : i64
    llvm.br ^bb1(%46 : i64)
  ^bb6:  // pred: ^bb1
    %47 = llvm.mlir.constant(8192 : index) : i64
    %48 = llvm.mlir.constant(8192 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(67108864 : index) : i64
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
    llvm.br ^bb7(%3 : i64)
  ^bb7(%73: i64):  // 2 preds: ^bb6, ^bb11
    %74 = builtin.unrealized_conversion_cast %73 : i64 to index
    %75 = llvm.icmp "slt" %73, %2 : i64
    llvm.cond_br %75, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%3 : i64)
  ^bb9(%76: i64):  // 2 preds: ^bb8, ^bb10
    %77 = builtin.unrealized_conversion_cast %76 : i64 to index
    %78 = llvm.icmp "slt" %76, %2 : i64
    llvm.cond_br %78, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %79 = llvm.extractvalue %72[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %80 = llvm.mlir.constant(8192 : index) : i64
    %81 = llvm.mul %73, %80 : i64
    %82 = llvm.add %81, %76 : i64
    %83 = llvm.getelementptr %79[%82] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %83 : f64, !llvm.ptr
    %84 = llvm.add %76, %0 : i64
    llvm.br ^bb9(%84 : i64)
  ^bb11:  // pred: ^bb9
    %85 = llvm.add %73, %0 : i64
    llvm.br ^bb7(%85 : i64)
  ^bb12:  // pred: ^bb7
    %86 = llvm.mlir.constant(8192 : index) : i64
    %87 = llvm.mlir.constant(8192 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.mlir.constant(67108864 : index) : i64
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
    llvm.br ^bb13(%3 : i64)
  ^bb13(%112: i64):  // 2 preds: ^bb12, ^bb17
    %113 = builtin.unrealized_conversion_cast %112 : i64 to index
    %114 = llvm.icmp "slt" %112, %2 : i64
    llvm.cond_br %114, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%3 : i64)
  ^bb15(%115: i64):  // 2 preds: ^bb14, ^bb16
    %116 = builtin.unrealized_conversion_cast %115 : i64 to index
    %117 = llvm.icmp "slt" %115, %2 : i64
    llvm.cond_br %117, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %118 = llvm.extractvalue %111[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %119 = llvm.mlir.constant(8192 : index) : i64
    %120 = llvm.mul %112, %119 : i64
    %121 = llvm.add %120, %115 : i64
    %122 = llvm.getelementptr %118[%121] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %122 : f64, !llvm.ptr
    %123 = llvm.add %115, %0 : i64
    llvm.br ^bb15(%123 : i64)
  ^bb17:  // pred: ^bb15
    %124 = llvm.add %112, %0 : i64
    llvm.br ^bb13(%124 : i64)
  ^bb18:  // pred: ^bb13
    %125 = llvm.call @getTime() : () -> f64
    llvm.br ^bb19(%3 : i64)
  ^bb19(%126: i64):  // 2 preds: ^bb18, ^bb35
    %127 = llvm.icmp "slt" %126, %2 : i64
    llvm.cond_br %127, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    llvm.br ^bb21(%3 : i64)
  ^bb21(%128: i64):  // 2 preds: ^bb20, ^bb34
    %129 = llvm.icmp "slt" %128, %2 : i64
    llvm.cond_br %129, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %130 = llvm.mlir.constant(8192 : index) : i64
    %131 = llvm.mul %128, %130 : i64
    %132 = llvm.add %131, %126 : i64
    %133 = builtin.unrealized_conversion_cast %132 : i64 to index
    %134 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %135 = llvm.extractvalue %72[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %136 = llvm.extractvalue %72[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %137 = llvm.insertvalue %135, %134[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %138 = llvm.insertvalue %136, %137[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %139 = llvm.insertvalue %132, %138[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %140 = llvm.mlir.constant(512 : index) : i64
    %141 = llvm.insertvalue %140, %139[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %142 = llvm.mlir.constant(8192 : index) : i64
    %143 = llvm.insertvalue %142, %141[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %144 = llvm.mlir.constant(512 : index) : i64
    %145 = llvm.insertvalue %144, %143[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %146 = llvm.mlir.constant(1 : index) : i64
    %147 = llvm.insertvalue %146, %145[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb23(%3 : i64)
  ^bb23(%148: i64):  // 2 preds: ^bb22, ^bb33
    %149 = llvm.icmp "slt" %148, %2 : i64
    llvm.cond_br %149, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %150 = llvm.mlir.constant(8192 : index) : i64
    %151 = llvm.mul %148, %150 : i64
    %152 = llvm.add %151, %128 : i64
    %153 = builtin.unrealized_conversion_cast %152 : i64 to index
    %154 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %155 = llvm.extractvalue %33[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %156 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %157 = llvm.insertvalue %155, %154[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %158 = llvm.insertvalue %156, %157[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %159 = llvm.insertvalue %152, %158[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %160 = llvm.mlir.constant(512 : index) : i64
    %161 = llvm.insertvalue %160, %159[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %162 = llvm.mlir.constant(8192 : index) : i64
    %163 = llvm.insertvalue %162, %161[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %164 = llvm.mlir.constant(512 : index) : i64
    %165 = llvm.insertvalue %164, %163[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.insertvalue %166, %165[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %168 = llvm.mlir.constant(8192 : index) : i64
    %169 = llvm.mul %148, %168 : i64
    %170 = llvm.add %169, %126 : i64
    %171 = builtin.unrealized_conversion_cast %170 : i64 to index
    %172 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %173 = llvm.extractvalue %111[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %174 = llvm.extractvalue %111[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %175 = llvm.insertvalue %173, %172[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %176 = llvm.insertvalue %174, %175[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %177 = llvm.insertvalue %170, %176[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %178 = llvm.mlir.constant(512 : index) : i64
    %179 = llvm.insertvalue %178, %177[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %180 = llvm.mlir.constant(8192 : index) : i64
    %181 = llvm.insertvalue %180, %179[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %182 = llvm.mlir.constant(512 : index) : i64
    %183 = llvm.insertvalue %182, %181[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.insertvalue %184, %183[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb25(%3 : i64)
  ^bb25(%186: i64):  // 2 preds: ^bb24, ^bb32
    %187 = builtin.unrealized_conversion_cast %186 : i64 to index
    %188 = llvm.icmp "slt" %186, %1 : i64
    llvm.cond_br %188, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%3 : i64)
  ^bb27(%189: i64):  // 2 preds: ^bb26, ^bb31
    %190 = builtin.unrealized_conversion_cast %189 : i64 to index
    %191 = llvm.icmp "slt" %189, %1 : i64
    llvm.cond_br %191, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    llvm.br ^bb29(%3 : i64)
  ^bb29(%192: i64):  // 2 preds: ^bb28, ^bb30
    %193 = builtin.unrealized_conversion_cast %192 : i64 to index
    %194 = llvm.icmp "slt" %192, %1 : i64
    llvm.cond_br %194, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %195 = llvm.extractvalue %167[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %196 = llvm.extractvalue %167[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %197 = llvm.getelementptr %195[%196] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %198 = llvm.mlir.constant(8192 : index) : i64
    %199 = llvm.mul %186, %198 : i64
    %200 = llvm.add %199, %192 : i64
    %201 = llvm.getelementptr %197[%200] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %202 = llvm.load %201 : !llvm.ptr -> f64
    %203 = llvm.extractvalue %147[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %204 = llvm.extractvalue %147[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %205 = llvm.getelementptr %203[%204] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %206 = llvm.mlir.constant(8192 : index) : i64
    %207 = llvm.mul %192, %206 : i64
    %208 = llvm.add %207, %189 : i64
    %209 = llvm.getelementptr %205[%208] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %210 = llvm.load %209 : !llvm.ptr -> f64
    %211 = llvm.extractvalue %185[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %212 = llvm.extractvalue %185[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %213 = llvm.getelementptr %211[%212] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %214 = llvm.mlir.constant(8192 : index) : i64
    %215 = llvm.mul %186, %214 : i64
    %216 = llvm.add %215, %189 : i64
    %217 = llvm.getelementptr %213[%216] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %218 = llvm.load %217 : !llvm.ptr -> f64
    %219 = llvm.fmul %202, %210  : f64
    %220 = llvm.fadd %218, %219  : f64
    %221 = llvm.extractvalue %185[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %222 = llvm.extractvalue %185[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %223 = llvm.getelementptr %221[%222] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %224 = llvm.mlir.constant(8192 : index) : i64
    %225 = llvm.mul %186, %224 : i64
    %226 = llvm.add %225, %189 : i64
    %227 = llvm.getelementptr %223[%226] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %220, %227 : f64, !llvm.ptr
    %228 = llvm.add %192, %0 : i64
    llvm.br ^bb29(%228 : i64)
  ^bb31:  // pred: ^bb29
    %229 = llvm.add %189, %0 : i64
    llvm.br ^bb27(%229 : i64)
  ^bb32:  // pred: ^bb27
    %230 = llvm.add %186, %0 : i64
    llvm.br ^bb25(%230 : i64)
  ^bb33:  // pred: ^bb25
    %231 = llvm.add %148, %1 : i64
    llvm.br ^bb23(%231 : i64)
  ^bb34:  // pred: ^bb23
    %232 = llvm.add %128, %1 : i64
    llvm.br ^bb21(%232 : i64)
  ^bb35:  // pred: ^bb21
    %233 = llvm.add %126, %1 : i64
    llvm.br ^bb19(%233 : i64)
  ^bb36:  // pred: ^bb19
    %234 = llvm.call @getTime() : () -> f64
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.mlir.zero : !llvm.ptr
    %238 = llvm.getelementptr %237[%235] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %239 = llvm.ptrtoint %238 : !llvm.ptr to i64
    %240 = llvm.call @malloc(%239) : (i64) -> !llvm.ptr
    %241 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %242 = llvm.insertvalue %240, %241[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %243 = llvm.insertvalue %240, %242[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %244 = llvm.mlir.constant(0 : index) : i64
    %245 = llvm.insertvalue %244, %243[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %246 = llvm.insertvalue %235, %245[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %247 = llvm.insertvalue %236, %246[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %248 = llvm.extractvalue %247[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %249 = llvm.getelementptr %248[%3] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %249 : f64, !llvm.ptr
    llvm.br ^bb37(%3 : i64)
  ^bb37(%250: i64):  // 2 preds: ^bb36, ^bb41
    %251 = builtin.unrealized_conversion_cast %250 : i64 to index
    %252 = llvm.icmp "slt" %250, %2 : i64
    llvm.cond_br %252, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    llvm.br ^bb39(%3 : i64)
  ^bb39(%253: i64):  // 2 preds: ^bb38, ^bb40
    %254 = builtin.unrealized_conversion_cast %253 : i64 to index
    %255 = llvm.icmp "slt" %253, %2 : i64
    llvm.cond_br %255, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %256 = llvm.extractvalue %111[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %257 = llvm.mlir.constant(8192 : index) : i64
    %258 = llvm.mul %250, %257 : i64
    %259 = llvm.add %258, %253 : i64
    %260 = llvm.getelementptr %256[%259] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %261 = llvm.load %260 : !llvm.ptr -> f64
    %262 = llvm.extractvalue %247[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %263 = llvm.getelementptr %262[%3] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %264 = llvm.load %263 : !llvm.ptr -> f64
    %265 = llvm.fadd %261, %264  : f64
    %266 = llvm.extractvalue %247[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.getelementptr %266[%3] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %265, %267 : f64, !llvm.ptr
    %268 = llvm.add %253, %0 : i64
    llvm.br ^bb39(%268 : i64)
  ^bb41:  // pred: ^bb39
    %269 = llvm.add %250, %0 : i64
    llvm.br ^bb37(%269 : i64)
  ^bb42:  // pred: ^bb37
    %270 = llvm.extractvalue %247[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %271 = llvm.getelementptr %270[%3] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %272 = llvm.load %271 : !llvm.ptr -> f64
    llvm.call @printF64(%272) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%125, %234) : (f64, f64) -> ()
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
    %0 = llvm.mlir.constant(1 : index) : i64
    %1 = llvm.mlir.constant(512 : index) : i64
    %2 = llvm.mlir.constant(8192 : index) : i64
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = builtin.unrealized_conversion_cast %3 : i64 to index
    %5 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %6 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %7 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %8 = llvm.mlir.constant(8192 : index) : i64
    %9 = llvm.mlir.constant(8192 : index) : i64
    %10 = llvm.mlir.constant(1 : index) : i64
    %11 = llvm.mlir.constant(67108864 : index) : i64
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
    llvm.br ^bb1(%3 : i64)
  ^bb1(%34: i64):  // 2 preds: ^bb0, ^bb5
    %35 = builtin.unrealized_conversion_cast %34 : i64 to index
    %36 = llvm.icmp "slt" %34, %2 : i64
    llvm.cond_br %36, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%3 : i64)
  ^bb3(%37: i64):  // 2 preds: ^bb2, ^bb4
    %38 = builtin.unrealized_conversion_cast %37 : i64 to index
    %39 = llvm.icmp "slt" %37, %2 : i64
    llvm.cond_br %39, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %40 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.mlir.constant(8192 : index) : i64
    %42 = llvm.mul %34, %41 : i64
    %43 = llvm.add %42, %37 : i64
    %44 = llvm.getelementptr %40[%43] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %44 : f64, !llvm.ptr
    %45 = llvm.add %37, %0 : i64
    llvm.br ^bb3(%45 : i64)
  ^bb5:  // pred: ^bb3
    %46 = llvm.add %34, %0 : i64
    llvm.br ^bb1(%46 : i64)
  ^bb6:  // pred: ^bb1
    %47 = llvm.mlir.constant(8192 : index) : i64
    %48 = llvm.mlir.constant(8192 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(67108864 : index) : i64
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
    llvm.br ^bb7(%3 : i64)
  ^bb7(%73: i64):  // 2 preds: ^bb6, ^bb11
    %74 = builtin.unrealized_conversion_cast %73 : i64 to index
    %75 = llvm.icmp "slt" %73, %2 : i64
    llvm.cond_br %75, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%3 : i64)
  ^bb9(%76: i64):  // 2 preds: ^bb8, ^bb10
    %77 = builtin.unrealized_conversion_cast %76 : i64 to index
    %78 = llvm.icmp "slt" %76, %2 : i64
    llvm.cond_br %78, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %79 = llvm.extractvalue %72[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %80 = llvm.mlir.constant(8192 : index) : i64
    %81 = llvm.mul %73, %80 : i64
    %82 = llvm.add %81, %76 : i64
    %83 = llvm.getelementptr %79[%82] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %83 : f64, !llvm.ptr
    %84 = llvm.add %76, %0 : i64
    llvm.br ^bb9(%84 : i64)
  ^bb11:  // pred: ^bb9
    %85 = llvm.add %73, %0 : i64
    llvm.br ^bb7(%85 : i64)
  ^bb12:  // pred: ^bb7
    %86 = llvm.mlir.constant(8192 : index) : i64
    %87 = llvm.mlir.constant(8192 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.mlir.constant(67108864 : index) : i64
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
    llvm.br ^bb13(%3 : i64)
  ^bb13(%112: i64):  // 2 preds: ^bb12, ^bb17
    %113 = builtin.unrealized_conversion_cast %112 : i64 to index
    %114 = llvm.icmp "slt" %112, %2 : i64
    llvm.cond_br %114, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%3 : i64)
  ^bb15(%115: i64):  // 2 preds: ^bb14, ^bb16
    %116 = builtin.unrealized_conversion_cast %115 : i64 to index
    %117 = llvm.icmp "slt" %115, %2 : i64
    llvm.cond_br %117, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %118 = llvm.extractvalue %111[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %119 = llvm.mlir.constant(8192 : index) : i64
    %120 = llvm.mul %112, %119 : i64
    %121 = llvm.add %120, %115 : i64
    %122 = llvm.getelementptr %118[%121] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %122 : f64, !llvm.ptr
    %123 = llvm.add %115, %0 : i64
    llvm.br ^bb15(%123 : i64)
  ^bb17:  // pred: ^bb15
    %124 = llvm.add %112, %0 : i64
    llvm.br ^bb13(%124 : i64)
  ^bb18:  // pred: ^bb13
    %125 = llvm.call @getTime() : () -> f64
    llvm.br ^bb19(%3 : i64)
  ^bb19(%126: i64):  // 2 preds: ^bb18, ^bb35
    %127 = llvm.icmp "slt" %126, %2 : i64
    llvm.cond_br %127, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    llvm.br ^bb21(%3 : i64)
  ^bb21(%128: i64):  // 2 preds: ^bb20, ^bb34
    %129 = llvm.icmp "slt" %128, %2 : i64
    llvm.cond_br %129, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %130 = llvm.mlir.constant(8192 : index) : i64
    %131 = llvm.mul %128, %130 : i64
    %132 = llvm.add %131, %126 : i64
    %133 = builtin.unrealized_conversion_cast %132 : i64 to index
    %134 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %135 = llvm.extractvalue %72[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %136 = llvm.extractvalue %72[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %137 = llvm.insertvalue %135, %134[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %138 = llvm.insertvalue %136, %137[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %139 = llvm.insertvalue %132, %138[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %140 = llvm.mlir.constant(512 : index) : i64
    %141 = llvm.insertvalue %140, %139[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %142 = llvm.mlir.constant(8192 : index) : i64
    %143 = llvm.insertvalue %142, %141[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %144 = llvm.mlir.constant(512 : index) : i64
    %145 = llvm.insertvalue %144, %143[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %146 = llvm.mlir.constant(1 : index) : i64
    %147 = llvm.insertvalue %146, %145[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb23(%3 : i64)
  ^bb23(%148: i64):  // 2 preds: ^bb22, ^bb33
    %149 = llvm.icmp "slt" %148, %2 : i64
    llvm.cond_br %149, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %150 = llvm.mlir.constant(8192 : index) : i64
    %151 = llvm.mul %148, %150 : i64
    %152 = llvm.add %151, %128 : i64
    %153 = builtin.unrealized_conversion_cast %152 : i64 to index
    %154 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %155 = llvm.extractvalue %33[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %156 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %157 = llvm.insertvalue %155, %154[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %158 = llvm.insertvalue %156, %157[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %159 = llvm.insertvalue %152, %158[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %160 = llvm.mlir.constant(512 : index) : i64
    %161 = llvm.insertvalue %160, %159[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %162 = llvm.mlir.constant(8192 : index) : i64
    %163 = llvm.insertvalue %162, %161[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %164 = llvm.mlir.constant(512 : index) : i64
    %165 = llvm.insertvalue %164, %163[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.insertvalue %166, %165[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %168 = llvm.mlir.constant(8192 : index) : i64
    %169 = llvm.mul %148, %168 : i64
    %170 = llvm.add %169, %126 : i64
    %171 = builtin.unrealized_conversion_cast %170 : i64 to index
    %172 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %173 = llvm.extractvalue %111[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %174 = llvm.extractvalue %111[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %175 = llvm.insertvalue %173, %172[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %176 = llvm.insertvalue %174, %175[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %177 = llvm.insertvalue %170, %176[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %178 = llvm.mlir.constant(512 : index) : i64
    %179 = llvm.insertvalue %178, %177[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %180 = llvm.mlir.constant(8192 : index) : i64
    %181 = llvm.insertvalue %180, %179[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %182 = llvm.mlir.constant(512 : index) : i64
    %183 = llvm.insertvalue %182, %181[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.insertvalue %184, %183[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb25(%3 : i64)
  ^bb25(%186: i64):  // 2 preds: ^bb24, ^bb32
    %187 = builtin.unrealized_conversion_cast %186 : i64 to index
    %188 = llvm.icmp "slt" %186, %1 : i64
    llvm.cond_br %188, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%3 : i64)
  ^bb27(%189: i64):  // 2 preds: ^bb26, ^bb31
    %190 = builtin.unrealized_conversion_cast %189 : i64 to index
    %191 = llvm.icmp "slt" %189, %1 : i64
    llvm.cond_br %191, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    llvm.br ^bb29(%3 : i64)
  ^bb29(%192: i64):  // 2 preds: ^bb28, ^bb30
    %193 = builtin.unrealized_conversion_cast %192 : i64 to index
    %194 = llvm.icmp "slt" %192, %1 : i64
    llvm.cond_br %194, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %195 = llvm.extractvalue %167[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %196 = llvm.extractvalue %167[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %197 = llvm.getelementptr %195[%196] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %198 = llvm.mlir.constant(8192 : index) : i64
    %199 = llvm.mul %186, %198 : i64
    %200 = llvm.add %199, %192 : i64
    %201 = llvm.getelementptr %197[%200] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %202 = llvm.load %201 : !llvm.ptr -> f64
    %203 = llvm.extractvalue %147[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %204 = llvm.extractvalue %147[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %205 = llvm.getelementptr %203[%204] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %206 = llvm.mlir.constant(8192 : index) : i64
    %207 = llvm.mul %192, %206 : i64
    %208 = llvm.add %207, %189 : i64
    %209 = llvm.getelementptr %205[%208] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %210 = llvm.load %209 : !llvm.ptr -> f64
    %211 = llvm.extractvalue %185[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %212 = llvm.extractvalue %185[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %213 = llvm.getelementptr %211[%212] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %214 = llvm.mlir.constant(8192 : index) : i64
    %215 = llvm.mul %186, %214 : i64
    %216 = llvm.add %215, %189 : i64
    %217 = llvm.getelementptr %213[%216] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %218 = llvm.load %217 : !llvm.ptr -> f64
    %219 = llvm.fmul %202, %210  : f64
    %220 = llvm.fadd %218, %219  : f64
    %221 = llvm.extractvalue %185[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %222 = llvm.extractvalue %185[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %223 = llvm.getelementptr %221[%222] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %224 = llvm.mlir.constant(8192 : index) : i64
    %225 = llvm.mul %186, %224 : i64
    %226 = llvm.add %225, %189 : i64
    %227 = llvm.getelementptr %223[%226] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %220, %227 : f64, !llvm.ptr
    %228 = llvm.add %192, %0 : i64
    llvm.br ^bb29(%228 : i64)
  ^bb31:  // pred: ^bb29
    %229 = llvm.add %189, %0 : i64
    llvm.br ^bb27(%229 : i64)
  ^bb32:  // pred: ^bb27
    %230 = llvm.add %186, %0 : i64
    llvm.br ^bb25(%230 : i64)
  ^bb33:  // pred: ^bb25
    %231 = llvm.add %148, %1 : i64
    llvm.br ^bb23(%231 : i64)
  ^bb34:  // pred: ^bb23
    %232 = llvm.add %128, %1 : i64
    llvm.br ^bb21(%232 : i64)
  ^bb35:  // pred: ^bb21
    %233 = llvm.add %126, %1 : i64
    llvm.br ^bb19(%233 : i64)
  ^bb36:  // pred: ^bb19
    %234 = llvm.call @getTime() : () -> f64
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.mlir.zero : !llvm.ptr
    %238 = llvm.getelementptr %237[%235] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %239 = llvm.ptrtoint %238 : !llvm.ptr to i64
    %240 = llvm.call @malloc(%239) : (i64) -> !llvm.ptr
    %241 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %242 = llvm.insertvalue %240, %241[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %243 = llvm.insertvalue %240, %242[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %244 = llvm.mlir.constant(0 : index) : i64
    %245 = llvm.insertvalue %244, %243[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %246 = llvm.insertvalue %235, %245[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %247 = llvm.insertvalue %236, %246[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %248 = llvm.extractvalue %247[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %249 = llvm.getelementptr %248[%3] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %249 : f64, !llvm.ptr
    llvm.br ^bb37(%3 : i64)
  ^bb37(%250: i64):  // 2 preds: ^bb36, ^bb41
    %251 = builtin.unrealized_conversion_cast %250 : i64 to index
    %252 = llvm.icmp "slt" %250, %2 : i64
    llvm.cond_br %252, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    llvm.br ^bb39(%3 : i64)
  ^bb39(%253: i64):  // 2 preds: ^bb38, ^bb40
    %254 = builtin.unrealized_conversion_cast %253 : i64 to index
    %255 = llvm.icmp "slt" %253, %2 : i64
    llvm.cond_br %255, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %256 = llvm.extractvalue %111[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %257 = llvm.mlir.constant(8192 : index) : i64
    %258 = llvm.mul %250, %257 : i64
    %259 = llvm.add %258, %253 : i64
    %260 = llvm.getelementptr %256[%259] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %261 = llvm.load %260 : !llvm.ptr -> f64
    %262 = llvm.extractvalue %247[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %263 = llvm.getelementptr %262[%3] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %264 = llvm.load %263 : !llvm.ptr -> f64
    %265 = llvm.fadd %261, %264  : f64
    %266 = llvm.extractvalue %247[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.getelementptr %266[%3] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %265, %267 : f64, !llvm.ptr
    %268 = llvm.add %253, %0 : i64
    llvm.br ^bb39(%268 : i64)
  ^bb41:  // pred: ^bb39
    %269 = llvm.add %250, %0 : i64
    llvm.br ^bb37(%269 : i64)
  ^bb42:  // pred: ^bb37
    %270 = llvm.extractvalue %247[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %271 = llvm.getelementptr %270[%3] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %272 = llvm.load %271 : !llvm.ptr -> f64
    llvm.call @printF64(%272) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%125, %234) : (f64, f64) -> ()
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
    %0 = llvm.mlir.constant(1 : index) : i64
    %1 = llvm.mlir.constant(512 : index) : i64
    %2 = llvm.mlir.constant(8192 : index) : i64
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %5 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %6 = llvm.mlir.constant(2.200000e+00 : f64) : f64
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
    llvm.br ^bb1(%3 : i64)
  ^bb1(%33: i64):  // 2 preds: ^bb0, ^bb5
    %34 = llvm.icmp "slt" %33, %2 : i64
    llvm.cond_br %34, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%3 : i64)
  ^bb3(%35: i64):  // 2 preds: ^bb2, ^bb4
    %36 = llvm.icmp "slt" %35, %2 : i64
    llvm.cond_br %36, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %37 = llvm.extractvalue %32[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %38 = llvm.mlir.constant(8192 : index) : i64
    %39 = llvm.mul %33, %38 : i64
    %40 = llvm.add %39, %35 : i64
    %41 = llvm.getelementptr %37[%40] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %41 : f64, !llvm.ptr
    %42 = llvm.add %35, %0 : i64
    llvm.br ^bb3(%42 : i64)
  ^bb5:  // pred: ^bb3
    %43 = llvm.add %33, %0 : i64
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
    llvm.br ^bb7(%3 : i64)
  ^bb7(%70: i64):  // 2 preds: ^bb6, ^bb11
    %71 = llvm.icmp "slt" %70, %2 : i64
    llvm.cond_br %71, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%3 : i64)
  ^bb9(%72: i64):  // 2 preds: ^bb8, ^bb10
    %73 = llvm.icmp "slt" %72, %2 : i64
    llvm.cond_br %73, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %74 = llvm.extractvalue %69[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.mlir.constant(8192 : index) : i64
    %76 = llvm.mul %70, %75 : i64
    %77 = llvm.add %76, %72 : i64
    %78 = llvm.getelementptr %74[%77] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %78 : f64, !llvm.ptr
    %79 = llvm.add %72, %0 : i64
    llvm.br ^bb9(%79 : i64)
  ^bb11:  // pred: ^bb9
    %80 = llvm.add %70, %0 : i64
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
    llvm.br ^bb13(%3 : i64)
  ^bb13(%107: i64):  // 2 preds: ^bb12, ^bb17
    %108 = llvm.icmp "slt" %107, %2 : i64
    llvm.cond_br %108, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%3 : i64)
  ^bb15(%109: i64):  // 2 preds: ^bb14, ^bb16
    %110 = llvm.icmp "slt" %109, %2 : i64
    llvm.cond_br %110, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %111 = llvm.extractvalue %106[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %112 = llvm.mlir.constant(8192 : index) : i64
    %113 = llvm.mul %107, %112 : i64
    %114 = llvm.add %113, %109 : i64
    %115 = llvm.getelementptr %111[%114] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %4, %115 : f64, !llvm.ptr
    %116 = llvm.add %109, %0 : i64
    llvm.br ^bb15(%116 : i64)
  ^bb17:  // pred: ^bb15
    %117 = llvm.add %107, %0 : i64
    llvm.br ^bb13(%117 : i64)
  ^bb18:  // pred: ^bb13
    %118 = llvm.call @getTime() : () -> f64
    llvm.br ^bb19(%3 : i64)
  ^bb19(%119: i64):  // 2 preds: ^bb18, ^bb35
    %120 = llvm.icmp "slt" %119, %2 : i64
    llvm.cond_br %120, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    llvm.br ^bb21(%3 : i64)
  ^bb21(%121: i64):  // 2 preds: ^bb20, ^bb34
    %122 = llvm.icmp "slt" %121, %2 : i64
    llvm.cond_br %122, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %123 = llvm.mlir.constant(8192 : index) : i64
    %124 = llvm.mul %121, %123 : i64
    %125 = llvm.add %124, %119 : i64
    %126 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %127 = llvm.extractvalue %69[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %128 = llvm.extractvalue %69[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %129 = llvm.insertvalue %127, %126[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %130 = llvm.insertvalue %128, %129[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %131 = llvm.insertvalue %125, %130[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %132 = llvm.mlir.constant(512 : index) : i64
    %133 = llvm.insertvalue %132, %131[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %134 = llvm.mlir.constant(8192 : index) : i64
    %135 = llvm.insertvalue %134, %133[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %136 = llvm.mlir.constant(512 : index) : i64
    %137 = llvm.insertvalue %136, %135[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.insertvalue %138, %137[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb23(%3 : i64)
  ^bb23(%140: i64):  // 2 preds: ^bb22, ^bb33
    %141 = llvm.icmp "slt" %140, %2 : i64
    llvm.cond_br %141, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %142 = llvm.mlir.constant(8192 : index) : i64
    %143 = llvm.mul %140, %142 : i64
    %144 = llvm.add %143, %121 : i64
    %145 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %146 = llvm.extractvalue %32[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %147 = llvm.extractvalue %32[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %148 = llvm.insertvalue %146, %145[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %149 = llvm.insertvalue %147, %148[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %150 = llvm.insertvalue %144, %149[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %151 = llvm.mlir.constant(512 : index) : i64
    %152 = llvm.insertvalue %151, %150[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %153 = llvm.mlir.constant(8192 : index) : i64
    %154 = llvm.insertvalue %153, %152[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %155 = llvm.mlir.constant(512 : index) : i64
    %156 = llvm.insertvalue %155, %154[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.insertvalue %157, %156[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %159 = llvm.mlir.constant(8192 : index) : i64
    %160 = llvm.mul %140, %159 : i64
    %161 = llvm.add %160, %119 : i64
    %162 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %163 = llvm.extractvalue %106[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %164 = llvm.extractvalue %106[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %165 = llvm.insertvalue %163, %162[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %166 = llvm.insertvalue %164, %165[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %167 = llvm.insertvalue %161, %166[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %168 = llvm.mlir.constant(512 : index) : i64
    %169 = llvm.insertvalue %168, %167[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %170 = llvm.mlir.constant(8192 : index) : i64
    %171 = llvm.insertvalue %170, %169[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %172 = llvm.mlir.constant(512 : index) : i64
    %173 = llvm.insertvalue %172, %171[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.insertvalue %174, %173[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb25(%3 : i64)
  ^bb25(%176: i64):  // 2 preds: ^bb24, ^bb32
    %177 = llvm.icmp "slt" %176, %1 : i64
    llvm.cond_br %177, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%3 : i64)
  ^bb27(%178: i64):  // 2 preds: ^bb26, ^bb31
    %179 = llvm.icmp "slt" %178, %1 : i64
    llvm.cond_br %179, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    llvm.br ^bb29(%3 : i64)
  ^bb29(%180: i64):  // 2 preds: ^bb28, ^bb30
    %181 = llvm.icmp "slt" %180, %1 : i64
    llvm.cond_br %181, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %182 = llvm.extractvalue %158[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %183 = llvm.extractvalue %158[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %184 = llvm.getelementptr %182[%183] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %185 = llvm.mlir.constant(8192 : index) : i64
    %186 = llvm.mul %176, %185 : i64
    %187 = llvm.add %186, %180 : i64
    %188 = llvm.getelementptr %184[%187] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %189 = llvm.load %188 : !llvm.ptr -> f64
    %190 = llvm.extractvalue %139[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %191 = llvm.extractvalue %139[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %192 = llvm.getelementptr %190[%191] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %193 = llvm.mlir.constant(8192 : index) : i64
    %194 = llvm.mul %180, %193 : i64
    %195 = llvm.add %194, %178 : i64
    %196 = llvm.getelementptr %192[%195] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %197 = llvm.load %196 : !llvm.ptr -> f64
    %198 = llvm.extractvalue %175[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %199 = llvm.extractvalue %175[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %200 = llvm.getelementptr %198[%199] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %201 = llvm.mlir.constant(8192 : index) : i64
    %202 = llvm.mul %176, %201 : i64
    %203 = llvm.add %202, %178 : i64
    %204 = llvm.getelementptr %200[%203] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %205 = llvm.load %204 : !llvm.ptr -> f64
    %206 = llvm.fmul %189, %197  : f64
    %207 = llvm.fadd %205, %206  : f64
    %208 = llvm.extractvalue %175[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %209 = llvm.extractvalue %175[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %210 = llvm.getelementptr %208[%209] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %211 = llvm.mlir.constant(8192 : index) : i64
    %212 = llvm.mul %176, %211 : i64
    %213 = llvm.add %212, %178 : i64
    %214 = llvm.getelementptr %210[%213] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %207, %214 : f64, !llvm.ptr
    %215 = llvm.add %180, %0 : i64
    llvm.br ^bb29(%215 : i64)
  ^bb31:  // pred: ^bb29
    %216 = llvm.add %178, %0 : i64
    llvm.br ^bb27(%216 : i64)
  ^bb32:  // pred: ^bb27
    %217 = llvm.add %176, %0 : i64
    llvm.br ^bb25(%217 : i64)
  ^bb33:  // pred: ^bb25
    %218 = llvm.add %140, %1 : i64
    llvm.br ^bb23(%218 : i64)
  ^bb34:  // pred: ^bb23
    %219 = llvm.add %121, %1 : i64
    llvm.br ^bb21(%219 : i64)
  ^bb35:  // pred: ^bb21
    %220 = llvm.add %119, %1 : i64
    llvm.br ^bb19(%220 : i64)
  ^bb36:  // pred: ^bb19
    %221 = llvm.call @getTime() : () -> f64
    %222 = llvm.mlir.constant(1 : index) : i64
    %223 = llvm.mlir.constant(1 : index) : i64
    %224 = llvm.mlir.zero : !llvm.ptr
    %225 = llvm.getelementptr %224[%222] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %226 = llvm.ptrtoint %225 : !llvm.ptr to i64
    %227 = llvm.call @malloc(%226) : (i64) -> !llvm.ptr
    %228 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %229 = llvm.insertvalue %227, %228[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %230 = llvm.insertvalue %227, %229[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %231 = llvm.mlir.constant(0 : index) : i64
    %232 = llvm.insertvalue %231, %230[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.insertvalue %222, %232[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %234 = llvm.insertvalue %223, %233[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %235 = llvm.extractvalue %234[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %236 = llvm.getelementptr %235[%3] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %4, %236 : f64, !llvm.ptr
    llvm.br ^bb37(%3 : i64)
  ^bb37(%237: i64):  // 2 preds: ^bb36, ^bb41
    %238 = llvm.icmp "slt" %237, %2 : i64
    llvm.cond_br %238, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    llvm.br ^bb39(%3 : i64)
  ^bb39(%239: i64):  // 2 preds: ^bb38, ^bb40
    %240 = llvm.icmp "slt" %239, %2 : i64
    llvm.cond_br %240, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %241 = llvm.extractvalue %106[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %242 = llvm.mlir.constant(8192 : index) : i64
    %243 = llvm.mul %237, %242 : i64
    %244 = llvm.add %243, %239 : i64
    %245 = llvm.getelementptr %241[%244] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %246 = llvm.load %245 : !llvm.ptr -> f64
    %247 = llvm.extractvalue %234[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %248 = llvm.getelementptr %247[%3] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %249 = llvm.load %248 : !llvm.ptr -> f64
    %250 = llvm.fadd %246, %249  : f64
    %251 = llvm.extractvalue %234[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %252 = llvm.getelementptr %251[%3] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %250, %252 : f64, !llvm.ptr
    %253 = llvm.add %239, %0 : i64
    llvm.br ^bb39(%253 : i64)
  ^bb41:  // pred: ^bb39
    %254 = llvm.add %237, %0 : i64
    llvm.br ^bb37(%254 : i64)
  ^bb42:  // pred: ^bb37
    %255 = llvm.extractvalue %234[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %256 = llvm.getelementptr %255[%3] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %257 = llvm.load %256 : !llvm.ptr -> f64
    llvm.call @printF64(%257) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%118, %221) : (f64, f64) -> ()
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
    %0 = llvm.mlir.constant(1 : index) : i64
    %1 = llvm.mlir.constant(512 : index) : i64
    %2 = llvm.mlir.constant(8192 : index) : i64
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %5 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %6 = llvm.mlir.constant(2.200000e+00 : f64) : f64
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
    llvm.br ^bb1(%3 : i64)
  ^bb1(%33: i64):  // 2 preds: ^bb0, ^bb5
    %34 = llvm.icmp "slt" %33, %2 : i64
    llvm.cond_br %34, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%3 : i64)
  ^bb3(%35: i64):  // 2 preds: ^bb2, ^bb4
    %36 = llvm.icmp "slt" %35, %2 : i64
    llvm.cond_br %36, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %37 = llvm.extractvalue %32[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %38 = llvm.mlir.constant(8192 : index) : i64
    %39 = llvm.mul %33, %38 : i64
    %40 = llvm.add %39, %35 : i64
    %41 = llvm.getelementptr %37[%40] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %41 : f64, !llvm.ptr
    %42 = llvm.add %35, %0 : i64
    llvm.br ^bb3(%42 : i64)
  ^bb5:  // pred: ^bb3
    %43 = llvm.add %33, %0 : i64
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
    llvm.br ^bb7(%3 : i64)
  ^bb7(%70: i64):  // 2 preds: ^bb6, ^bb11
    %71 = llvm.icmp "slt" %70, %2 : i64
    llvm.cond_br %71, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%3 : i64)
  ^bb9(%72: i64):  // 2 preds: ^bb8, ^bb10
    %73 = llvm.icmp "slt" %72, %2 : i64
    llvm.cond_br %73, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %74 = llvm.extractvalue %69[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.mlir.constant(8192 : index) : i64
    %76 = llvm.mul %70, %75 : i64
    %77 = llvm.add %76, %72 : i64
    %78 = llvm.getelementptr %74[%77] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %78 : f64, !llvm.ptr
    %79 = llvm.add %72, %0 : i64
    llvm.br ^bb9(%79 : i64)
  ^bb11:  // pred: ^bb9
    %80 = llvm.add %70, %0 : i64
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
    llvm.br ^bb13(%3 : i64)
  ^bb13(%107: i64):  // 2 preds: ^bb12, ^bb17
    %108 = llvm.icmp "slt" %107, %2 : i64
    llvm.cond_br %108, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%3 : i64)
  ^bb15(%109: i64):  // 2 preds: ^bb14, ^bb16
    %110 = llvm.icmp "slt" %109, %2 : i64
    llvm.cond_br %110, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %111 = llvm.extractvalue %106[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %112 = llvm.mlir.constant(8192 : index) : i64
    %113 = llvm.mul %107, %112 : i64
    %114 = llvm.add %113, %109 : i64
    %115 = llvm.getelementptr %111[%114] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %4, %115 : f64, !llvm.ptr
    %116 = llvm.add %109, %0 : i64
    llvm.br ^bb15(%116 : i64)
  ^bb17:  // pred: ^bb15
    %117 = llvm.add %107, %0 : i64
    llvm.br ^bb13(%117 : i64)
  ^bb18:  // pred: ^bb13
    %118 = llvm.call @getTime() : () -> f64
    llvm.br ^bb19(%3 : i64)
  ^bb19(%119: i64):  // 2 preds: ^bb18, ^bb35
    %120 = llvm.icmp "slt" %119, %2 : i64
    llvm.cond_br %120, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    llvm.br ^bb21(%3 : i64)
  ^bb21(%121: i64):  // 2 preds: ^bb20, ^bb34
    %122 = llvm.icmp "slt" %121, %2 : i64
    llvm.cond_br %122, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %123 = llvm.mlir.constant(8192 : index) : i64
    %124 = llvm.mul %121, %123 : i64
    %125 = llvm.add %124, %119 : i64
    %126 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %127 = llvm.extractvalue %69[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %128 = llvm.extractvalue %69[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %129 = llvm.insertvalue %127, %126[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %130 = llvm.insertvalue %128, %129[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %131 = llvm.insertvalue %125, %130[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %132 = llvm.mlir.constant(512 : index) : i64
    %133 = llvm.insertvalue %132, %131[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %134 = llvm.mlir.constant(8192 : index) : i64
    %135 = llvm.insertvalue %134, %133[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %136 = llvm.mlir.constant(512 : index) : i64
    %137 = llvm.insertvalue %136, %135[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.insertvalue %138, %137[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb23(%3 : i64)
  ^bb23(%140: i64):  // 2 preds: ^bb22, ^bb33
    %141 = llvm.icmp "slt" %140, %2 : i64
    llvm.cond_br %141, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %142 = llvm.mlir.constant(8192 : index) : i64
    %143 = llvm.mul %140, %142 : i64
    %144 = llvm.add %143, %121 : i64
    %145 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %146 = llvm.extractvalue %32[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %147 = llvm.extractvalue %32[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %148 = llvm.insertvalue %146, %145[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %149 = llvm.insertvalue %147, %148[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %150 = llvm.insertvalue %144, %149[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %151 = llvm.mlir.constant(512 : index) : i64
    %152 = llvm.insertvalue %151, %150[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %153 = llvm.mlir.constant(8192 : index) : i64
    %154 = llvm.insertvalue %153, %152[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %155 = llvm.mlir.constant(512 : index) : i64
    %156 = llvm.insertvalue %155, %154[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.insertvalue %157, %156[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %159 = llvm.mlir.constant(8192 : index) : i64
    %160 = llvm.mul %140, %159 : i64
    %161 = llvm.add %160, %119 : i64
    %162 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %163 = llvm.extractvalue %106[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %164 = llvm.extractvalue %106[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %165 = llvm.insertvalue %163, %162[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %166 = llvm.insertvalue %164, %165[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %167 = llvm.insertvalue %161, %166[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %168 = llvm.mlir.constant(512 : index) : i64
    %169 = llvm.insertvalue %168, %167[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %170 = llvm.mlir.constant(8192 : index) : i64
    %171 = llvm.insertvalue %170, %169[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %172 = llvm.mlir.constant(512 : index) : i64
    %173 = llvm.insertvalue %172, %171[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.insertvalue %174, %173[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb25(%3 : i64)
  ^bb25(%176: i64):  // 2 preds: ^bb24, ^bb32
    %177 = llvm.icmp "slt" %176, %1 : i64
    llvm.cond_br %177, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%3 : i64)
  ^bb27(%178: i64):  // 2 preds: ^bb26, ^bb31
    %179 = llvm.icmp "slt" %178, %1 : i64
    llvm.cond_br %179, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    llvm.br ^bb29(%3 : i64)
  ^bb29(%180: i64):  // 2 preds: ^bb28, ^bb30
    %181 = llvm.icmp "slt" %180, %1 : i64
    llvm.cond_br %181, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %182 = llvm.extractvalue %158[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %183 = llvm.extractvalue %158[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %184 = llvm.getelementptr %182[%183] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %185 = llvm.mlir.constant(8192 : index) : i64
    %186 = llvm.mul %176, %185 : i64
    %187 = llvm.add %186, %180 : i64
    %188 = llvm.getelementptr %184[%187] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %189 = llvm.load %188 : !llvm.ptr -> f64
    %190 = llvm.extractvalue %139[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %191 = llvm.extractvalue %139[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %192 = llvm.getelementptr %190[%191] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %193 = llvm.mlir.constant(8192 : index) : i64
    %194 = llvm.mul %180, %193 : i64
    %195 = llvm.add %194, %178 : i64
    %196 = llvm.getelementptr %192[%195] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %197 = llvm.load %196 : !llvm.ptr -> f64
    %198 = llvm.extractvalue %175[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %199 = llvm.extractvalue %175[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %200 = llvm.getelementptr %198[%199] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %201 = llvm.mlir.constant(8192 : index) : i64
    %202 = llvm.mul %176, %201 : i64
    %203 = llvm.add %202, %178 : i64
    %204 = llvm.getelementptr %200[%203] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %205 = llvm.load %204 : !llvm.ptr -> f64
    %206 = llvm.fmul %189, %197  : f64
    %207 = llvm.fadd %205, %206  : f64
    %208 = llvm.extractvalue %175[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %209 = llvm.extractvalue %175[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %210 = llvm.getelementptr %208[%209] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %211 = llvm.mlir.constant(8192 : index) : i64
    %212 = llvm.mul %176, %211 : i64
    %213 = llvm.add %212, %178 : i64
    %214 = llvm.getelementptr %210[%213] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %207, %214 : f64, !llvm.ptr
    %215 = llvm.add %180, %0 : i64
    llvm.br ^bb29(%215 : i64)
  ^bb31:  // pred: ^bb29
    %216 = llvm.add %178, %0 : i64
    llvm.br ^bb27(%216 : i64)
  ^bb32:  // pred: ^bb27
    %217 = llvm.add %176, %0 : i64
    llvm.br ^bb25(%217 : i64)
  ^bb33:  // pred: ^bb25
    %218 = llvm.add %140, %1 : i64
    llvm.br ^bb23(%218 : i64)
  ^bb34:  // pred: ^bb23
    %219 = llvm.add %121, %1 : i64
    llvm.br ^bb21(%219 : i64)
  ^bb35:  // pred: ^bb21
    %220 = llvm.add %119, %1 : i64
    llvm.br ^bb19(%220 : i64)
  ^bb36:  // pred: ^bb19
    %221 = llvm.call @getTime() : () -> f64
    %222 = llvm.mlir.constant(1 : index) : i64
    %223 = llvm.mlir.constant(1 : index) : i64
    %224 = llvm.mlir.zero : !llvm.ptr
    %225 = llvm.getelementptr %224[%222] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %226 = llvm.ptrtoint %225 : !llvm.ptr to i64
    %227 = llvm.call @malloc(%226) : (i64) -> !llvm.ptr
    %228 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %229 = llvm.insertvalue %227, %228[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %230 = llvm.insertvalue %227, %229[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %231 = llvm.mlir.constant(0 : index) : i64
    %232 = llvm.insertvalue %231, %230[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.insertvalue %222, %232[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %234 = llvm.insertvalue %223, %233[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %235 = llvm.extractvalue %234[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %236 = llvm.getelementptr %235[%3] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %4, %236 : f64, !llvm.ptr
    llvm.br ^bb37(%3 : i64)
  ^bb37(%237: i64):  // 2 preds: ^bb36, ^bb41
    %238 = llvm.icmp "slt" %237, %2 : i64
    llvm.cond_br %238, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    llvm.br ^bb39(%3 : i64)
  ^bb39(%239: i64):  // 2 preds: ^bb38, ^bb40
    %240 = llvm.icmp "slt" %239, %2 : i64
    llvm.cond_br %240, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %241 = llvm.extractvalue %106[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %242 = llvm.mlir.constant(8192 : index) : i64
    %243 = llvm.mul %237, %242 : i64
    %244 = llvm.add %243, %239 : i64
    %245 = llvm.getelementptr %241[%244] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %246 = llvm.load %245 : !llvm.ptr -> f64
    %247 = llvm.extractvalue %234[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %248 = llvm.getelementptr %247[%3] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %249 = llvm.load %248 : !llvm.ptr -> f64
    %250 = llvm.fadd %246, %249  : f64
    %251 = llvm.extractvalue %234[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %252 = llvm.getelementptr %251[%3] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %250, %252 : f64, !llvm.ptr
    %253 = llvm.add %239, %0 : i64
    llvm.br ^bb39(%253 : i64)
  ^bb41:  // pred: ^bb39
    %254 = llvm.add %237, %0 : i64
    llvm.br ^bb37(%254 : i64)
  ^bb42:  // pred: ^bb37
    %255 = llvm.extractvalue %234[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %256 = llvm.getelementptr %255[%3] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %257 = llvm.load %256 : !llvm.ptr -> f64
    llvm.call @printF64(%257) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%118, %221) : (f64, f64) -> ()
    llvm.return
  }
  llvm.func @getTime() -> f64 attributes {sym_visibility = "private"}
  llvm.func @printElapsedTime(f64, f64) attributes {sym_visibility = "private"}
  llvm.func @printF64(f64) attributes {sym_visibility = "private"}
  llvm.func @printNewline() attributes {sym_visibility = "private"}
}
