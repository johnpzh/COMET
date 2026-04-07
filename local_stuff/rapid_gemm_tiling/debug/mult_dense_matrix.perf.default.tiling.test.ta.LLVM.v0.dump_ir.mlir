// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
#map = affine_map<(d0, d1, d2) -> (d0, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8192x8191xf64>
    %4 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8191x8190xf64>
    %5 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8192x8190xf64>
    "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8192x8191xf64>) -> ()
    "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<8191x8190xf64>) -> ()
    "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8192x8190xf64>) -> ()
    %6 = "ta.getTime"() : () -> f64
    %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8192x8191xf64>, tensor<8191x8190xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8192x8190xf64>
    "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8190xf64>, tensor<8192x8190xf64>) -> ()
    %8 = "ta.getTime"() : () -> f64
    %9 = "ta.reduce"(%5) : (tensor<8192x8190xf64>) -> f64
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
  %3 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8192x8191xf64>
  %4 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8191x8190xf64>
  %5 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8192x8190xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8192x8191xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<8191x8190xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8192x8190xf64>) -> ()
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8192x8191xf64>, tensor<8191x8190xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8192x8190xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8190xf64>, tensor<8192x8190xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<8192x8190xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8192x8191xf64>
  %4 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8191x8190xf64>
  %5 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8192x8190xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8192x8191xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<8191x8190xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8192x8190xf64>) -> ()
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8192x8191xf64>, tensor<8191x8190xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8192x8190xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8190xf64>, tensor<8192x8190xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<8192x8190xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8192x8191xf64>
  %4 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8191x8190xf64>
  %5 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8192x8190xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8192x8191xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<8191x8190xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8192x8190xf64>) -> ()
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8192x8191xf64>, tensor<8191x8190xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8192x8190xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8190xf64>, tensor<8192x8190xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<8192x8190xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8192x8191xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  %4 = bufferization.to_tensor %alloc_0 restrict writable : memref<8191x8190xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
  %5 = bufferization.to_tensor %alloc_1 restrict writable : memref<8192x8190xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8192x8191xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<8191x8190xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8192x8190xf64>) -> ()
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8192x8191xf64>, tensor<8191x8190xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8192x8190xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8190xf64>, tensor<8192x8190xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<8192x8190xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8192x8191xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  %4 = bufferization.to_tensor %alloc_0 restrict writable : memref<8191x8190xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
  %5 = bufferization.to_tensor %alloc_1 restrict writable : memref<8192x8190xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8192x8191xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<8191x8190xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8192x8190xf64>) -> ()
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8192x8191xf64>, tensor<8191x8190xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8192x8190xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8190xf64>, tensor<8192x8190xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<8192x8190xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8192x8191xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  %4 = bufferization.to_tensor %alloc_0 restrict writable : memref<8191x8190xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
  %5 = bufferization.to_tensor %alloc_1 restrict writable : memref<8192x8190xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8192x8191xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<8191x8190xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8192x8190xf64>) -> ()
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8192x8191xf64>, tensor<8191x8190xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8192x8190xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8190xf64>, tensor<8192x8190xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<8192x8190xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8192x8191xf64>)
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8192x8191xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  %cst_1 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_1 : f64) outs(%alloc_0 : memref<8191x8190xf64>)
  %4 = bufferization.to_tensor %alloc_0 restrict writable : memref<8191x8190xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_2 : memref<8192x8190xf64>)
  %5 = bufferization.to_tensor %alloc_2 restrict writable : memref<8192x8190xf64>
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8192x8191xf64>, tensor<8191x8190xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8192x8190xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8190xf64>, tensor<8192x8190xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<8192x8190xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8192x8191xf64>)
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8192x8191xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  %cst_1 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_1 : f64) outs(%alloc_0 : memref<8191x8190xf64>)
  %4 = bufferization.to_tensor %alloc_0 restrict writable : memref<8191x8190xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_2 : memref<8192x8190xf64>)
  %5 = bufferization.to_tensor %alloc_2 restrict writable : memref<8192x8190xf64>
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8192x8191xf64>, tensor<8191x8190xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8192x8190xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8190xf64>, tensor<8192x8190xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<8192x8190xf64>) -> f64
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
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8191xf64>)
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8192x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %4 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8190xf64>)
  %5 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8190xf64>
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8192x8191xf64>, tensor<8191x8190xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8192x8190xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8190xf64>, tensor<8192x8190xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<8192x8190xf64>) -> f64
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
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8191xf64>)
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8192x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %4 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8190xf64>)
  %5 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8190xf64>
  %6 = "ta.getTime"() : () -> f64
  %c0 = arith.constant 0 : index
  %dim = tensor.dim %3, %c0 : tensor<8192x8191xf64>
  %c1 = arith.constant 1 : index
  %dim_4 = tensor.dim %3, %c1 : tensor<8192x8191xf64>
  %c0_5 = arith.constant 0 : index
  %dim_6 = tensor.dim %4, %c0_5 : tensor<8191x8190xf64>
  %c1_7 = arith.constant 1 : index
  %dim_8 = tensor.dim %4, %c1_7 : tensor<8191x8190xf64>
  %c0_9 = arith.constant 0 : index
  %dim_10 = tensor.dim %5, %c0_9 : tensor<8192x8190xf64>
  %c1_11 = arith.constant 1 : index
  %dim_12 = tensor.dim %5, %c1_11 : tensor<8192x8190xf64>
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
  %31 = scf.index_switch %29 -> tensor<8192x8190xf64>
  case 0 {
    %34 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__with_tiling__"} ins(%3, %4 : tensor<8192x8191xf64>, tensor<8191x8190xf64>) outs(%5 : tensor<8192x8190xf64>) -> tensor<8192x8190xf64>
    scf.yield %34 : tensor<8192x8190xf64>
  }
  case 1 {
    %34 = tensor.empty() : tensor<8191x8192xf64>
    %transposed = linalg.transpose ins(%3 : tensor<8192x8191xf64>) outs(%34 : tensor<8191x8192xf64>) permutation = [1, 0]
    %35 = tensor.empty() : tensor<8190x8191xf64>
    %transposed_23 = linalg.transpose ins(%4 : tensor<8191x8190xf64>) outs(%35 : tensor<8190x8191xf64>) permutation = [1, 0]
    %36 = tensor.empty() : tensor<8190x8192xf64>
    %cst_24 = arith.constant 0.000000e+00 : f64
    %37 = linalg.fill ins(%cst_24 : f64) outs(%36 : tensor<8190x8192xf64>) -> tensor<8190x8192xf64>
    %38 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__with_tiling__"} ins(%transposed_23, %transposed : tensor<8190x8191xf64>, tensor<8191x8192xf64>) outs(%37 : tensor<8190x8192xf64>) -> tensor<8190x8192xf64>
    %transposed_25 = linalg.transpose ins(%38 : tensor<8190x8192xf64>) outs(%5 : tensor<8192x8190xf64>) permutation = [1, 0]
    scf.yield %transposed_25 : tensor<8192x8190xf64>
  }
  default {
    scf.yield %5 : tensor<8192x8190xf64>
  }
  "ta.set_op"(%31, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8190xf64>, tensor<8192x8190xf64>) -> ()
  %32 = "ta.getTime"() : () -> f64
  %33 = "ta.reduce"(%5) : (tensor<8192x8190xf64>) -> f64
  "ta.print"(%33) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %32) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LinAlgMatmulTilingPass () //----- //
func.func @main() {
  %c512 = arith.constant 512 : index
  %c8192 = arith.constant 8192 : index
  %c8191 = arith.constant 8191 : index
  %c8190 = arith.constant 8190 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8191xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8190xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8190xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = scf.index_switch %c0 -> tensor<8192x8190xf64>
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c8190 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8190xf64>) {
      %8 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8190xf64>) {
        %9 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8190xf64>) {
          %10 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg0)
          %11 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [512, %11] [1, 1] : tensor<8192x8191xf64> to tensor<512x?xf64>
          %extracted_slice_4 = tensor.extract_slice %1[%arg2, %arg0] [%11, %10] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %arg5[%arg4, %arg0] [512, %10] [1, 1] : tensor<8192x8190xf64> to tensor<512x?xf64>
          %12 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_4 : tensor<512x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_5 : tensor<512x?xf64>) -> tensor<512x?xf64>
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [512, %10] [1, 1] : tensor<512x?xf64> into tensor<8192x8190xf64>
          scf.yield %inserted_slice : tensor<8192x8190xf64>
        }
        scf.yield %9 : tensor<8192x8190xf64>
      }
      scf.yield %8 : tensor<8192x8190xf64>
    }
    scf.yield %7 : tensor<8192x8190xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<8191x8192xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8192x8191xf64>) outs(%7 : tensor<8191x8192xf64>) permutation = [1, 0]
    %8 = tensor.empty() : tensor<8190x8191xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<8191x8190xf64>) outs(%8 : tensor<8190x8191xf64>) permutation = [1, 0]
    %9 = tensor.empty() : tensor<8190x8192xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<8190x8192xf64>) -> tensor<8190x8192xf64>
    %11 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %10) -> (tensor<8190x8192xf64>) {
      %12 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8190x8192xf64>) {
        %13 = scf.for %arg4 = %c0 to %c8190 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8190x8192xf64>) {
          %14 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %15 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg4)
          %extracted_slice = tensor.extract_slice %transposed_4[%arg4, %arg2] [%15, %14] [1, 1] : tensor<8190x8191xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %transposed[%arg2, %arg0] [%14, 512] [1, 1] : tensor<8191x8192xf64> to tensor<?x512xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg4, %arg0] [%15, 512] [1, 1] : tensor<8190x8192xf64> to tensor<?x512xf64>
          %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_6 : tensor<?x?xf64>, tensor<?x512xf64>) outs(%extracted_slice_7 : tensor<?x512xf64>) -> tensor<?x512xf64>
          %inserted_slice = tensor.insert_slice %16 into %arg5[%arg4, %arg0] [%15, 512] [1, 1] : tensor<?x512xf64> into tensor<8190x8192xf64>
          scf.yield %inserted_slice : tensor<8190x8192xf64>
        }
        scf.yield %13 : tensor<8190x8192xf64>
      }
      scf.yield %12 : tensor<8190x8192xf64>
    }
    %transposed_5 = linalg.transpose ins(%11 : tensor<8190x8192xf64>) outs(%2 : tensor<8192x8190xf64>) permutation = [1, 0]
    scf.yield %transposed_5 : tensor<8192x8190xf64>
  }
  default {
    scf.yield %2 : tensor<8192x8190xf64>
  }
  "ta.set_op"(%4, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8192x8190xf64>, tensor<8192x8190xf64>) -> ()
  %5 = "ta.getTime"() : () -> f64
  %6 = "ta.reduce"(%2) : (tensor<8192x8190xf64>) -> f64
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func @main() {
  %c512 = arith.constant 512 : index
  %c8192 = arith.constant 8192 : index
  %c8191 = arith.constant 8191 : index
  %c8190 = arith.constant 8190 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8191xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8190xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8190xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = scf.index_switch %c0 -> tensor<8192x8190xf64>
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c8190 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8190xf64>) {
      %8 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8190xf64>) {
        %9 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8190xf64>) {
          %10 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg0)
          %11 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [512, %11] [1, 1] : tensor<8192x8191xf64> to tensor<512x?xf64>
          %extracted_slice_9 = tensor.extract_slice %1[%arg2, %arg0] [%11, %10] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
          %extracted_slice_10 = tensor.extract_slice %arg5[%arg4, %arg0] [512, %10] [1, 1] : tensor<8192x8190xf64> to tensor<512x?xf64>
          %12 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_9 : tensor<512x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<512x?xf64>) -> tensor<512x?xf64>
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [512, %10] [1, 1] : tensor<512x?xf64> into tensor<8192x8190xf64>
          scf.yield %inserted_slice : tensor<8192x8190xf64>
        }
        scf.yield %9 : tensor<8192x8190xf64>
      }
      scf.yield %8 : tensor<8192x8190xf64>
    }
    scf.yield %7 : tensor<8192x8190xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<8191x8192xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8192x8191xf64>) outs(%7 : tensor<8191x8192xf64>) permutation = [1, 0]
    %8 = tensor.empty() : tensor<8190x8191xf64>
    %transposed_9 = linalg.transpose ins(%1 : tensor<8191x8190xf64>) outs(%8 : tensor<8190x8191xf64>) permutation = [1, 0]
    %9 = tensor.empty() : tensor<8190x8192xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<8190x8192xf64>) -> tensor<8190x8192xf64>
    %11 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %10) -> (tensor<8190x8192xf64>) {
      %12 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8190x8192xf64>) {
        %13 = scf.for %arg4 = %c0 to %c8190 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8190x8192xf64>) {
          %14 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %15 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg4)
          %extracted_slice = tensor.extract_slice %transposed_9[%arg4, %arg2] [%15, %14] [1, 1] : tensor<8190x8191xf64> to tensor<?x?xf64>
          %extracted_slice_11 = tensor.extract_slice %transposed[%arg2, %arg0] [%14, 512] [1, 1] : tensor<8191x8192xf64> to tensor<?x512xf64>
          %extracted_slice_12 = tensor.extract_slice %arg5[%arg4, %arg0] [%15, 512] [1, 1] : tensor<8190x8192xf64> to tensor<?x512xf64>
          %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_11 : tensor<?x?xf64>, tensor<?x512xf64>) outs(%extracted_slice_12 : tensor<?x512xf64>) -> tensor<?x512xf64>
          %inserted_slice = tensor.insert_slice %16 into %arg5[%arg4, %arg0] [%15, 512] [1, 1] : tensor<?x512xf64> into tensor<8190x8192xf64>
          scf.yield %inserted_slice : tensor<8190x8192xf64>
        }
        scf.yield %13 : tensor<8190x8192xf64>
      }
      scf.yield %12 : tensor<8190x8192xf64>
    }
    %transposed_10 = linalg.transpose ins(%11 : tensor<8190x8192xf64>) outs(%2 : tensor<8192x8190xf64>) permutation = [1, 0]
    scf.yield %transposed_10 : tensor<8192x8190xf64>
  }
  default {
    scf.yield %2 : tensor<8192x8190xf64>
  }
  %5 = "ta.getTime"() : () -> f64
  %c0_4 = arith.constant 0 : index
  %alloc_5 = memref.alloc() : memref<1xf64>
  %cst_6 = arith.constant 0.000000e+00 : f64
  memref.store %cst_6, %alloc_5[%c0_4] : memref<1xf64>
  %c0_7 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c0_8 = arith.constant 0 : index
  %dim = tensor.dim %4, %c0_8 : tensor<8192x8190xf64>
  scf.for %arg0 = %c0_7 to %dim step %c1 {
    %c1_9 = arith.constant 1 : index
    %dim_10 = tensor.dim %4, %c1_9 : tensor<8192x8190xf64>
    scf.for %arg1 = %c0_7 to %dim_10 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8190xf64>
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
  %c8191 = arith.constant 8191 : index
  %c8190 = arith.constant 8190 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8191xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8190xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8190xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = scf.index_switch %c0 -> tensor<8192x8190xf64>
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c8190 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8190xf64>) {
      %8 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8190xf64>) {
        %9 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8190xf64>) {
          %10 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg0)
          %11 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [512, %11] [1, 1] : tensor<8192x8191xf64> to tensor<512x?xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg0] [%11, %10] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [512, %10] [1, 1] : tensor<8192x8190xf64> to tensor<512x?xf64>
          %12 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_5 : tensor<512x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_6 : tensor<512x?xf64>) -> tensor<512x?xf64>
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [512, %10] [1, 1] : tensor<512x?xf64> into tensor<8192x8190xf64>
          scf.yield %inserted_slice : tensor<8192x8190xf64>
        }
        scf.yield %9 : tensor<8192x8190xf64>
      }
      scf.yield %8 : tensor<8192x8190xf64>
    }
    scf.yield %7 : tensor<8192x8190xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<8191x8192xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8192x8191xf64>) outs(%7 : tensor<8191x8192xf64>) permutation = [1, 0]
    %8 = tensor.empty() : tensor<8190x8191xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<8191x8190xf64>) outs(%8 : tensor<8190x8191xf64>) permutation = [1, 0]
    %9 = tensor.empty() : tensor<8190x8192xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<8190x8192xf64>) -> tensor<8190x8192xf64>
    %11 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %10) -> (tensor<8190x8192xf64>) {
      %12 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8190x8192xf64>) {
        %13 = scf.for %arg4 = %c0 to %c8190 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8190x8192xf64>) {
          %14 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %15 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg4)
          %extracted_slice = tensor.extract_slice %transposed_5[%arg4, %arg2] [%15, %14] [1, 1] : tensor<8190x8191xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg0] [%14, 512] [1, 1] : tensor<8191x8192xf64> to tensor<?x512xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%15, 512] [1, 1] : tensor<8190x8192xf64> to tensor<?x512xf64>
          %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_7 : tensor<?x?xf64>, tensor<?x512xf64>) outs(%extracted_slice_8 : tensor<?x512xf64>) -> tensor<?x512xf64>
          %inserted_slice = tensor.insert_slice %16 into %arg5[%arg4, %arg0] [%15, 512] [1, 1] : tensor<?x512xf64> into tensor<8190x8192xf64>
          scf.yield %inserted_slice : tensor<8190x8192xf64>
        }
        scf.yield %13 : tensor<8190x8192xf64>
      }
      scf.yield %12 : tensor<8190x8192xf64>
    }
    %transposed_6 = linalg.transpose ins(%11 : tensor<8190x8192xf64>) outs(%2 : tensor<8192x8190xf64>) permutation = [1, 0]
    scf.yield %transposed_6 : tensor<8192x8190xf64>
  }
  default {
    scf.yield %2 : tensor<8192x8190xf64>
  }
  %5 = "ta.getTime"() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8190xf64>
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
  %c8191 = arith.constant 8191 : index
  %c8190 = arith.constant 8190 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8191xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8190xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8190xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = scf.index_switch %c0 -> tensor<8192x8190xf64>
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c8190 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8190xf64>) {
      %8 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8190xf64>) {
        %9 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8190xf64>) {
          %10 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg0)
          %11 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [512, %11] [1, 1] : tensor<8192x8191xf64> to tensor<512x?xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg0] [%11, %10] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [512, %10] [1, 1] : tensor<8192x8190xf64> to tensor<512x?xf64>
          %12 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_5 : tensor<512x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_6 : tensor<512x?xf64>) -> tensor<512x?xf64>
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [512, %10] [1, 1] : tensor<512x?xf64> into tensor<8192x8190xf64>
          scf.yield %inserted_slice : tensor<8192x8190xf64>
        }
        scf.yield %9 : tensor<8192x8190xf64>
      }
      scf.yield %8 : tensor<8192x8190xf64>
    }
    scf.yield %7 : tensor<8192x8190xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<8191x8192xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8192x8191xf64>) outs(%7 : tensor<8191x8192xf64>) permutation = [1, 0]
    %8 = tensor.empty() : tensor<8190x8191xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<8191x8190xf64>) outs(%8 : tensor<8190x8191xf64>) permutation = [1, 0]
    %9 = tensor.empty() : tensor<8190x8192xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<8190x8192xf64>) -> tensor<8190x8192xf64>
    %11 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %10) -> (tensor<8190x8192xf64>) {
      %12 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8190x8192xf64>) {
        %13 = scf.for %arg4 = %c0 to %c8190 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8190x8192xf64>) {
          %14 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %15 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg4)
          %extracted_slice = tensor.extract_slice %transposed_5[%arg4, %arg2] [%15, %14] [1, 1] : tensor<8190x8191xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg0] [%14, 512] [1, 1] : tensor<8191x8192xf64> to tensor<?x512xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%15, 512] [1, 1] : tensor<8190x8192xf64> to tensor<?x512xf64>
          %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_7 : tensor<?x?xf64>, tensor<?x512xf64>) outs(%extracted_slice_8 : tensor<?x512xf64>) -> tensor<?x512xf64>
          %inserted_slice = tensor.insert_slice %16 into %arg5[%arg4, %arg0] [%15, 512] [1, 1] : tensor<?x512xf64> into tensor<8190x8192xf64>
          scf.yield %inserted_slice : tensor<8190x8192xf64>
        }
        scf.yield %13 : tensor<8190x8192xf64>
      }
      scf.yield %12 : tensor<8190x8192xf64>
    }
    %transposed_6 = linalg.transpose ins(%11 : tensor<8190x8192xf64>) outs(%2 : tensor<8192x8190xf64>) permutation = [1, 0]
    scf.yield %transposed_6 : tensor<8192x8190xf64>
  }
  default {
    scf.yield %2 : tensor<8192x8190xf64>
  }
  %5 = "ta.getTime"() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8190xf64>
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
  %c8191 = arith.constant 8191 : index
  %c8190 = arith.constant 8190 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8191xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8190xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8190xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = scf.index_switch %c0 -> tensor<8192x8190xf64>
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c8190 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8190xf64>) {
      %8 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8190xf64>) {
        %9 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8190xf64>) {
          %10 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg0)
          %11 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [512, %11] [1, 1] : tensor<8192x8191xf64> to tensor<512x?xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg0] [%11, %10] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [512, %10] [1, 1] : tensor<8192x8190xf64> to tensor<512x?xf64>
          %12 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_5 : tensor<512x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_6 : tensor<512x?xf64>) -> tensor<512x?xf64>
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [512, %10] [1, 1] : tensor<512x?xf64> into tensor<8192x8190xf64>
          scf.yield %inserted_slice : tensor<8192x8190xf64>
        }
        scf.yield %9 : tensor<8192x8190xf64>
      }
      scf.yield %8 : tensor<8192x8190xf64>
    }
    scf.yield %7 : tensor<8192x8190xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<8191x8192xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8192x8191xf64>) outs(%7 : tensor<8191x8192xf64>) permutation = [1, 0]
    %8 = tensor.empty() : tensor<8190x8191xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<8191x8190xf64>) outs(%8 : tensor<8190x8191xf64>) permutation = [1, 0]
    %9 = tensor.empty() : tensor<8190x8192xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<8190x8192xf64>) -> tensor<8190x8192xf64>
    %11 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %10) -> (tensor<8190x8192xf64>) {
      %12 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8190x8192xf64>) {
        %13 = scf.for %arg4 = %c0 to %c8190 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8190x8192xf64>) {
          %14 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %15 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg4)
          %extracted_slice = tensor.extract_slice %transposed_5[%arg4, %arg2] [%15, %14] [1, 1] : tensor<8190x8191xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg0] [%14, 512] [1, 1] : tensor<8191x8192xf64> to tensor<?x512xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%15, 512] [1, 1] : tensor<8190x8192xf64> to tensor<?x512xf64>
          %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_7 : tensor<?x?xf64>, tensor<?x512xf64>) outs(%extracted_slice_8 : tensor<?x512xf64>) -> tensor<?x512xf64>
          %inserted_slice = tensor.insert_slice %16 into %arg5[%arg4, %arg0] [%15, 512] [1, 1] : tensor<?x512xf64> into tensor<8190x8192xf64>
          scf.yield %inserted_slice : tensor<8190x8192xf64>
        }
        scf.yield %13 : tensor<8190x8192xf64>
      }
      scf.yield %12 : tensor<8190x8192xf64>
    }
    %transposed_6 = linalg.transpose ins(%11 : tensor<8190x8192xf64>) outs(%2 : tensor<8192x8190xf64>) permutation = [1, 0]
    scf.yield %transposed_6 : tensor<8192x8190xf64>
  }
  default {
    scf.yield %2 : tensor<8192x8190xf64>
  }
  %5 = "ta.getTime"() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8190xf64>
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
  %c8191 = arith.constant 8191 : index
  %c8190 = arith.constant 8190 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8191xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8190xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8190xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = scf.index_switch %c0 -> tensor<8192x8190xf64>
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c8190 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8190xf64>) {
      %8 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8190xf64>) {
        %9 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8190xf64>) {
          %10 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg0)
          %11 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [512, %11] [1, 1] : tensor<8192x8191xf64> to tensor<512x?xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg0] [%11, %10] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [512, %10] [1, 1] : tensor<8192x8190xf64> to tensor<512x?xf64>
          %12 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_5 : tensor<512x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_6 : tensor<512x?xf64>) -> tensor<512x?xf64>
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [512, %10] [1, 1] : tensor<512x?xf64> into tensor<8192x8190xf64>
          scf.yield %inserted_slice : tensor<8192x8190xf64>
        }
        scf.yield %9 : tensor<8192x8190xf64>
      }
      scf.yield %8 : tensor<8192x8190xf64>
    }
    scf.yield %7 : tensor<8192x8190xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<8191x8192xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8192x8191xf64>) outs(%7 : tensor<8191x8192xf64>) permutation = [1, 0]
    %8 = tensor.empty() : tensor<8190x8191xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<8191x8190xf64>) outs(%8 : tensor<8190x8191xf64>) permutation = [1, 0]
    %9 = tensor.empty() : tensor<8190x8192xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<8190x8192xf64>) -> tensor<8190x8192xf64>
    %11 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %10) -> (tensor<8190x8192xf64>) {
      %12 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8190x8192xf64>) {
        %13 = scf.for %arg4 = %c0 to %c8190 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8190x8192xf64>) {
          %14 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %15 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg4)
          %extracted_slice = tensor.extract_slice %transposed_5[%arg4, %arg2] [%15, %14] [1, 1] : tensor<8190x8191xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg0] [%14, 512] [1, 1] : tensor<8191x8192xf64> to tensor<?x512xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%15, 512] [1, 1] : tensor<8190x8192xf64> to tensor<?x512xf64>
          %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_7 : tensor<?x?xf64>, tensor<?x512xf64>) outs(%extracted_slice_8 : tensor<?x512xf64>) -> tensor<?x512xf64>
          %inserted_slice = tensor.insert_slice %16 into %arg5[%arg4, %arg0] [%15, 512] [1, 1] : tensor<?x512xf64> into tensor<8190x8192xf64>
          scf.yield %inserted_slice : tensor<8190x8192xf64>
        }
        scf.yield %13 : tensor<8190x8192xf64>
      }
      scf.yield %12 : tensor<8190x8192xf64>
    }
    %transposed_6 = linalg.transpose ins(%11 : tensor<8190x8192xf64>) outs(%2 : tensor<8192x8190xf64>) permutation = [1, 0]
    scf.yield %transposed_6 : tensor<8192x8190xf64>
  }
  default {
    scf.yield %2 : tensor<8192x8190xf64>
  }
  %5 = "ta.getTime"() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8190xf64>
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
  %c8191 = arith.constant 8191 : index
  %c8190 = arith.constant 8190 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8191xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8190xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8190xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.index_switch %c0 -> tensor<8192x8190xf64>
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c8190 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8190xf64>) {
      %8 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8190xf64>) {
        %9 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8190xf64>) {
          %10 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg0)
          %11 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [512, %11] [1, 1] : tensor<8192x8191xf64> to tensor<512x?xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg0] [%11, %10] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [512, %10] [1, 1] : tensor<8192x8190xf64> to tensor<512x?xf64>
          %12 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_5 : tensor<512x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_6 : tensor<512x?xf64>) -> tensor<512x?xf64>
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [512, %10] [1, 1] : tensor<512x?xf64> into tensor<8192x8190xf64>
          scf.yield %inserted_slice : tensor<8192x8190xf64>
        }
        scf.yield %9 : tensor<8192x8190xf64>
      }
      scf.yield %8 : tensor<8192x8190xf64>
    }
    scf.yield %7 : tensor<8192x8190xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<8191x8192xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8192x8191xf64>) outs(%7 : tensor<8191x8192xf64>) permutation = [1, 0]
    %8 = tensor.empty() : tensor<8190x8191xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<8191x8190xf64>) outs(%8 : tensor<8190x8191xf64>) permutation = [1, 0]
    %9 = tensor.empty() : tensor<8190x8192xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<8190x8192xf64>) -> tensor<8190x8192xf64>
    %11 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %10) -> (tensor<8190x8192xf64>) {
      %12 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8190x8192xf64>) {
        %13 = scf.for %arg4 = %c0 to %c8190 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8190x8192xf64>) {
          %14 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %15 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg4)
          %extracted_slice = tensor.extract_slice %transposed_5[%arg4, %arg2] [%15, %14] [1, 1] : tensor<8190x8191xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg0] [%14, 512] [1, 1] : tensor<8191x8192xf64> to tensor<?x512xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%15, 512] [1, 1] : tensor<8190x8192xf64> to tensor<?x512xf64>
          %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_7 : tensor<?x?xf64>, tensor<?x512xf64>) outs(%extracted_slice_8 : tensor<?x512xf64>) -> tensor<?x512xf64>
          %inserted_slice = tensor.insert_slice %16 into %arg5[%arg4, %arg0] [%15, 512] [1, 1] : tensor<?x512xf64> into tensor<8190x8192xf64>
          scf.yield %inserted_slice : tensor<8190x8192xf64>
        }
        scf.yield %13 : tensor<8190x8192xf64>
      }
      scf.yield %12 : tensor<8190x8192xf64>
    }
    %transposed_6 = linalg.transpose ins(%11 : tensor<8190x8192xf64>) outs(%2 : tensor<8192x8190xf64>) permutation = [1, 0]
    scf.yield %transposed_6 : tensor<8192x8190xf64>
  }
  default {
    scf.yield %2 : tensor<8192x8190xf64>
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8190xf64>
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
  %c8191 = arith.constant 8191 : index
  %c8190 = arith.constant 8190 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8191xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8190xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8190xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.index_switch %c0 -> tensor<8192x8190xf64>
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c8190 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8190xf64>) {
      %8 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8190xf64>) {
        %9 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8190xf64>) {
          %10 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg0)
          %11 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [512, %11] [1, 1] : tensor<8192x8191xf64> to tensor<512x?xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg0] [%11, %10] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [512, %10] [1, 1] : tensor<8192x8190xf64> to tensor<512x?xf64>
          %12 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_5 : tensor<512x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_6 : tensor<512x?xf64>) -> tensor<512x?xf64>
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg4, %arg0] [512, %10] [1, 1] : tensor<512x?xf64> into tensor<8192x8190xf64>
          scf.yield %inserted_slice : tensor<8192x8190xf64>
        }
        scf.yield %9 : tensor<8192x8190xf64>
      }
      scf.yield %8 : tensor<8192x8190xf64>
    }
    scf.yield %7 : tensor<8192x8190xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<8191x8192xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8192x8191xf64>) outs(%7 : tensor<8191x8192xf64>) permutation = [1, 0]
    %8 = tensor.empty() : tensor<8190x8191xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<8191x8190xf64>) outs(%8 : tensor<8190x8191xf64>) permutation = [1, 0]
    %9 = tensor.empty() : tensor<8190x8192xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<8190x8192xf64>) -> tensor<8190x8192xf64>
    %11 = scf.for %arg0 = %c0 to %c8192 step %c512 iter_args(%arg1 = %10) -> (tensor<8190x8192xf64>) {
      %12 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8190x8192xf64>) {
        %13 = scf.for %arg4 = %c0 to %c8190 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8190x8192xf64>) {
          %14 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %15 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg4)
          %extracted_slice = tensor.extract_slice %transposed_5[%arg4, %arg2] [%15, %14] [1, 1] : tensor<8190x8191xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg0] [%14, 512] [1, 1] : tensor<8191x8192xf64> to tensor<?x512xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg4, %arg0] [%15, 512] [1, 1] : tensor<8190x8192xf64> to tensor<?x512xf64>
          %16 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_7 : tensor<?x?xf64>, tensor<?x512xf64>) outs(%extracted_slice_8 : tensor<?x512xf64>) -> tensor<?x512xf64>
          %inserted_slice = tensor.insert_slice %16 into %arg5[%arg4, %arg0] [%15, 512] [1, 1] : tensor<?x512xf64> into tensor<8190x8192xf64>
          scf.yield %inserted_slice : tensor<8190x8192xf64>
        }
        scf.yield %13 : tensor<8190x8192xf64>
      }
      scf.yield %12 : tensor<8190x8192xf64>
    }
    %transposed_6 = linalg.transpose ins(%11 : tensor<8190x8192xf64>) outs(%2 : tensor<8192x8190xf64>) permutation = [1, 0]
    scf.yield %transposed_6 : tensor<8192x8190xf64>
  }
  default {
    scf.yield %2 : tensor<8192x8190xf64>
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8190xf64>
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
  %c8191 = arith.constant 8191 : index
  %c8190 = arith.constant 8190 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8191xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8190xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8190xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.for %arg0 = %c0 to %c8190 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8190xf64>) {
    %7 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8190xf64>) {
      %8 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8190xf64>) {
        %9 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg0)
        %10 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
        %extracted_slice = tensor.extract_slice %0[%arg4, %arg2] [512, %10] [1, 1] : tensor<8192x8191xf64> to tensor<512x?xf64>
        %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg0] [%10, %9] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
        %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [512, %9] [1, 1] : tensor<8192x8190xf64> to tensor<512x?xf64>
        %11 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_5 : tensor<512x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_6 : tensor<512x?xf64>) -> tensor<512x?xf64>
        %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [512, %9] [1, 1] : tensor<512x?xf64> into tensor<8192x8190xf64>
        scf.yield %inserted_slice : tensor<8192x8190xf64>
      }
      scf.yield %8 : tensor<8192x8190xf64>
    }
    scf.yield %7 : tensor<8192x8190xf64>
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8190xf64>
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
  %c8191 = arith.constant 8191 : index
  %c8190 = arith.constant 8190 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8191xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8190xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8190xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.for %arg0 = %c0 to %c8190 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8190xf64>) {
    %7 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg0)
    %8 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8190xf64>) {
      %9 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
      %extracted_slice = tensor.extract_slice %1[%arg2, %arg0] [%9, %7] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
      %10 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8190xf64>) {
        %extracted_slice_5 = tensor.extract_slice %0[%arg4, %arg2] [512, %9] [1, 1] : tensor<8192x8191xf64> to tensor<512x?xf64>
        %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [512, %7] [1, 1] : tensor<8192x8190xf64> to tensor<512x?xf64>
        %11 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice_5, %extracted_slice : tensor<512x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_6 : tensor<512x?xf64>) -> tensor<512x?xf64>
        %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [512, %7] [1, 1] : tensor<512x?xf64> into tensor<8192x8190xf64>
        scf.yield %inserted_slice : tensor<8192x8190xf64>
      }
      scf.yield %10 : tensor<8192x8190xf64>
    }
    scf.yield %8 : tensor<8192x8190xf64>
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8190xf64>
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
  %c8191 = arith.constant 8191 : index
  %c8190 = arith.constant 8190 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8191xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8190xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8190xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.for %arg0 = %c0 to %c8190 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8190xf64>) {
    %7 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg0)
    %8 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8190xf64>) {
      %9 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
      %extracted_slice = tensor.extract_slice %1[%arg2, %arg0] [%9, %7] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
      %10 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8190xf64>) {
        %extracted_slice_5 = tensor.extract_slice %0[%arg4, %arg2] [512, %9] [1, 1] : tensor<8192x8191xf64> to tensor<512x?xf64>
        %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [512, %7] [1, 1] : tensor<8192x8190xf64> to tensor<512x?xf64>
        %11 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice_5, %extracted_slice : tensor<512x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_6 : tensor<512x?xf64>) -> tensor<512x?xf64>
        %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [512, %7] [1, 1] : tensor<512x?xf64> into tensor<8192x8190xf64>
        scf.yield %inserted_slice : tensor<8192x8190xf64>
      }
      scf.yield %10 : tensor<8192x8190xf64>
    }
    scf.yield %8 : tensor<8192x8190xf64>
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8190xf64>
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
  %c8191 = arith.constant 8191 : index
  %c8190 = arith.constant 8190 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8191xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8190xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8190xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.for %arg0 = %c0 to %c8190 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8190xf64>) {
    %7 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg0)
    %8 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8190xf64>) {
      %9 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
      %extracted_slice = tensor.extract_slice %1[%arg2, %arg0] [%9, %7] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
      %10 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8190xf64>) {
        %extracted_slice_5 = tensor.extract_slice %0[%arg4, %arg2] [512, %9] [1, 1] : tensor<8192x8191xf64> to tensor<512x?xf64>
        %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [512, %7] [1, 1] : tensor<8192x8190xf64> to tensor<512x?xf64>
        %11 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice_5, %extracted_slice : tensor<512x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_6 : tensor<512x?xf64>) -> tensor<512x?xf64>
        %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [512, %7] [1, 1] : tensor<512x?xf64> into tensor<8192x8190xf64>
        scf.yield %inserted_slice : tensor<8192x8190xf64>
      }
      scf.yield %10 : tensor<8192x8190xf64>
    }
    scf.yield %8 : tensor<8192x8190xf64>
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8190xf64>
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
#map = affine_map<(d0) -> (-d0 + 8190, 512)>
#map1 = affine_map<(d0) -> (-d0 + 8191, 512)>
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8192 = arith.constant 8192 : index
    %c8191 = arith.constant 8191 : index
    %c8190 = arith.constant 8190 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8191xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8191xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8190xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8190xf64>
    %3 = call @getTime() : () -> f64
    %4 = scf.for %arg0 = %c0 to %c8190 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8190xf64>) {
      %7 = affine.min #map(%arg0)
      %8 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8190xf64>) {
        %9 = affine.min #map1(%arg2)
        %extracted_slice = tensor.extract_slice %1[%arg2, %arg0] [%9, %7] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
        %10 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8190xf64>) {
          %extracted_slice_5 = tensor.extract_slice %0[%arg4, %arg2] [512, %9] [1, 1] : tensor<8192x8191xf64> to tensor<512x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [512, %7] [1, 1] : tensor<8192x8190xf64> to tensor<512x?xf64>
          %11 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice_5, %extracted_slice : tensor<512x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_6 : tensor<512x?xf64>) -> tensor<512x?xf64>
          %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [512, %7] [1, 1] : tensor<512x?xf64> into tensor<8192x8190xf64>
          scf.yield %inserted_slice : tensor<8192x8190xf64>
        }
        scf.yield %10 : tensor<8192x8190xf64>
      }
      scf.yield %8 : tensor<8192x8190xf64>
    }
    %5 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8190xf64>
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
#map = affine_map<(d0) -> (-d0 + 8190, 512)>
#map1 = affine_map<(d0) -> (-d0 + 8191, 512)>
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8192 = arith.constant 8192 : index
    %c8191 = arith.constant 8191 : index
    %c8190 = arith.constant 8190 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8191xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8191xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8190xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8190xf64>
    %3 = call @getTime() : () -> f64
    %4 = scf.for %arg0 = %c0 to %c8190 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8190xf64>) {
      %7 = affine.min #map(%arg0)
      %8 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8190xf64>) {
        %9 = affine.min #map1(%arg2)
        %extracted_slice = tensor.extract_slice %1[%arg2, %arg0] [%9, %7] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
        %10 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8190xf64>) {
          %extracted_slice_5 = tensor.extract_slice %0[%arg4, %arg2] [512, %9] [1, 1] : tensor<8192x8191xf64> to tensor<512x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg4, %arg0] [512, %7] [1, 1] : tensor<8192x8190xf64> to tensor<512x?xf64>
          %11 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice_5, %extracted_slice : tensor<512x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_6 : tensor<512x?xf64>) -> tensor<512x?xf64>
          %inserted_slice = tensor.insert_slice %11 into %arg5[%arg4, %arg0] [512, %7] [1, 1] : tensor<512x?xf64> into tensor<8192x8190xf64>
          scf.yield %inserted_slice : tensor<8192x8190xf64>
        }
        scf.yield %10 : tensor<8192x8190xf64>
      }
      scf.yield %8 : tensor<8192x8190xf64>
    }
    %5 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8190xf64>
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
    %c8191 = arith.constant 8191 : index
    %c8190 = arith.constant 8190 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8191xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<8192x8191xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8190xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8192x8190xf64>
    %3 = call @getTime() : () -> f64
    %4 = scf.for %arg0 = %c0 to %c8190 step %c512 iter_args(%arg1 = %2) -> (tensor<8192x8190xf64>) {
      %c-1 = arith.constant -1 : index
      %7 = arith.muli %arg0, %c-1 : index
      %c8190_5 = arith.constant 8190 : index
      %8 = arith.addi %7, %c8190_5 : index
      %c512_6 = arith.constant 512 : index
      %9 = arith.minsi %8, %c512_6 : index
      %10 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8192x8190xf64>) {
        %c-1_7 = arith.constant -1 : index
        %11 = arith.muli %arg2, %c-1_7 : index
        %c8191_8 = arith.constant 8191 : index
        %12 = arith.addi %11, %c8191_8 : index
        %c512_9 = arith.constant 512 : index
        %13 = arith.minsi %12, %c512_9 : index
        %extracted_slice = tensor.extract_slice %1[%arg2, %arg0] [%13, %9] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
        %14 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8192x8190xf64>) {
          %extracted_slice_10 = tensor.extract_slice %0[%arg4, %arg2] [512, %13] [1, 1] : tensor<8192x8191xf64> to tensor<512x?xf64>
          %extracted_slice_11 = tensor.extract_slice %arg5[%arg4, %arg0] [512, %9] [1, 1] : tensor<8192x8190xf64> to tensor<512x?xf64>
          %15 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice_10, %extracted_slice : tensor<512x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_11 : tensor<512x?xf64>) -> tensor<512x?xf64>
          %inserted_slice = tensor.insert_slice %15 into %arg5[%arg4, %arg0] [512, %9] [1, 1] : tensor<512x?xf64> into tensor<8192x8190xf64>
          scf.yield %inserted_slice : tensor<8192x8190xf64>
        }
        scf.yield %14 : tensor<8192x8190xf64>
      }
      scf.yield %10 : tensor<8192x8190xf64>
    }
    %5 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8192x8190xf64>
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
    %c8191 = arith.constant 8191 : index
    %c8190 = arith.constant 8190 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8191xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8190xf64>)
    %0 = call @getTime() : () -> f64
    %1 = scf.for %arg0 = %c0 to %c8190 step %c512 iter_args(%arg1 = %alloc_3) -> (memref<8192x8190xf64>) {
      %c-1 = arith.constant -1 : index
      %4 = arith.muli %arg0, %c-1 : index
      %c8190_5 = arith.constant 8190 : index
      %5 = arith.addi %4, %c8190_5 : index
      %c512_6 = arith.constant 512 : index
      %6 = arith.minsi %5, %c512_6 : index
      %7 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (memref<8192x8190xf64>) {
        %c-1_7 = arith.constant -1 : index
        %8 = arith.muli %arg2, %c-1_7 : index
        %c8191_8 = arith.constant 8191 : index
        %9 = arith.addi %8, %c8191_8 : index
        %c512_9 = arith.constant 512 : index
        %10 = arith.minsi %9, %c512_9 : index
        %subview = memref.subview %alloc_2[%arg2, %arg0] [%10, %6] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        %11 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (memref<8192x8190xf64>) {
          %subview_10 = memref.subview %alloc[%arg4, %arg2] [512, %10] [1, 1] : memref<8192x8191xf64> to memref<512x?xf64, strided<[8191, 1], offset: ?>>
          %subview_11 = memref.subview %arg5[%arg4, %arg0] [512, %6] [1, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
          linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%subview_10, %subview : memref<512x?xf64, strided<[8191, 1], offset: ?>>, memref<?x?xf64, strided<[8190, 1], offset: ?>>) outs(%subview_11 : memref<512x?xf64, strided<[8190, 1], offset: ?>>)
          %subview_12 = memref.subview %arg5[%arg4, %arg0] [512, %6] [1, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
          memref.copy %subview_11, %subview_12 : memref<512x?xf64, strided<[8190, 1], offset: ?>> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
          scf.yield %arg5 : memref<8192x8190xf64>
        }
        scf.yield %11 : memref<8192x8190xf64>
      }
      scf.yield %7 : memref<8192x8190xf64>
    }
    %2 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %4 = memref.load %1[%arg0, %arg1] : memref<8192x8190xf64>
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
  %c512 = arith.constant 512 : index
  %c8192 = arith.constant 8192 : index
  %c8191 = arith.constant 8191 : index
  %c8190 = arith.constant 8190 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8191xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8190xf64>)
  %0 = call @getTime() : () -> f64
  %1 = scf.for %arg0 = %c0 to %c8190 step %c512 iter_args(%arg1 = %alloc_3) -> (memref<8192x8190xf64>) {
    %c-1 = arith.constant -1 : index
    %4 = arith.muli %arg0, %c-1 : index
    %c8190_5 = arith.constant 8190 : index
    %5 = arith.addi %4, %c8190_5 : index
    %c512_6 = arith.constant 512 : index
    %6 = arith.minsi %5, %c512_6 : index
    %7 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (memref<8192x8190xf64>) {
      %c-1_7 = arith.constant -1 : index
      %8 = arith.muli %arg2, %c-1_7 : index
      %c8191_8 = arith.constant 8191 : index
      %9 = arith.addi %8, %c8191_8 : index
      %c512_9 = arith.constant 512 : index
      %10 = arith.minsi %9, %c512_9 : index
      %subview = memref.subview %alloc_2[%arg2, %arg0] [%10, %6] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
      %11 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (memref<8192x8190xf64>) {
        %subview_10 = memref.subview %alloc[%arg4, %arg2] [512, %10] [1, 1] : memref<8192x8191xf64> to memref<512x?xf64, strided<[8191, 1], offset: ?>>
        %subview_11 = memref.subview %arg5[%arg4, %arg0] [512, %6] [1, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
        linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%subview_10, %subview : memref<512x?xf64, strided<[8191, 1], offset: ?>>, memref<?x?xf64, strided<[8190, 1], offset: ?>>) outs(%subview_11 : memref<512x?xf64, strided<[8190, 1], offset: ?>>)
        %subview_12 = memref.subview %arg5[%arg4, %arg0] [512, %6] [1, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
        memref.copy %subview_11, %subview_12 : memref<512x?xf64, strided<[8190, 1], offset: ?>> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
        scf.yield %arg5 : memref<8192x8190xf64>
      }
      scf.yield %11 : memref<8192x8190xf64>
    }
    scf.yield %7 : memref<8192x8190xf64>
  }
  %2 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %4 = memref.load %1[%arg0, %arg1] : memref<8192x8190xf64>
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
  %c8191 = arith.constant 8191 : index
  %c8190 = arith.constant 8190 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8191xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8190xf64>)
  %0 = call @getTime() : () -> f64
  %1 = scf.for %arg0 = %c0 to %c8190 step %c512 iter_args(%arg1 = %alloc_3) -> (memref<8192x8190xf64>) {
    %c-1 = arith.constant -1 : index
    %4 = arith.muli %arg0, %c-1 : index
    %c8190_5 = arith.constant 8190 : index
    %5 = arith.addi %4, %c8190_5 : index
    %c512_6 = arith.constant 512 : index
    %6 = arith.minsi %5, %c512_6 : index
    %7 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (memref<8192x8190xf64>) {
      %c-1_7 = arith.constant -1 : index
      %8 = arith.muli %arg2, %c-1_7 : index
      %c8191_8 = arith.constant 8191 : index
      %9 = arith.addi %8, %c8191_8 : index
      %c512_9 = arith.constant 512 : index
      %10 = arith.minsi %9, %c512_9 : index
      %subview = memref.subview %alloc_2[%arg2, %arg0] [%10, %6] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
      %11 = scf.for %arg4 = %c0 to %c8192 step %c512 iter_args(%arg5 = %arg3) -> (memref<8192x8190xf64>) {
        %subview_10 = memref.subview %alloc[%arg4, %arg2] [512, %10] [1, 1] : memref<8192x8191xf64> to memref<512x?xf64, strided<[8191, 1], offset: ?>>
        %subview_11 = memref.subview %arg5[%arg4, %arg0] [512, %6] [1, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
        linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%subview_10, %subview : memref<512x?xf64, strided<[8191, 1], offset: ?>>, memref<?x?xf64, strided<[8190, 1], offset: ?>>) outs(%subview_11 : memref<512x?xf64, strided<[8190, 1], offset: ?>>)
        %subview_12 = memref.subview %arg5[%arg4, %arg0] [512, %6] [1, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
        memref.copy %subview_11, %subview_12 : memref<512x?xf64, strided<[8190, 1], offset: ?>> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
        scf.yield %arg5 : memref<8192x8190xf64>
      }
      scf.yield %11 : memref<8192x8190xf64>
    }
    scf.yield %7 : memref<8192x8190xf64>
  }
  %2 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %4 = memref.load %1[%arg0, %arg1] : memref<8192x8190xf64>
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
    %c8191 = arith.constant 8191 : index
    %c8190 = arith.constant 8190 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8191xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8190xf64>)
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8190 step %c512 {
      %3 = arith.subi %c8190, %arg0 : index
      %4 = arith.minsi %3, %c512 : index
      scf.for %arg1 = %c0 to %c8191 step %c512 {
        %5 = arith.subi %c8191, %arg1 : index
        %6 = arith.minsi %5, %c512 : index
        %subview = memref.subview %alloc_2[%arg1, %arg0] [%6, %4] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8192 step %c512 {
          %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, %6] [1, 1] : memref<8192x8191xf64> to memref<512x?xf64, strided<[8191, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, %4] [1, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
          linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%subview_5, %subview : memref<512x?xf64, strided<[8191, 1], offset: ?>>, memref<?x?xf64, strided<[8190, 1], offset: ?>>) outs(%subview_6 : memref<512x?xf64, strided<[8190, 1], offset: ?>>)
          %subview_7 = memref.subview %alloc_3[%arg2, %arg0] [512, %4] [1, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
          memref.copy %subview_6, %subview_7 : memref<512x?xf64, strided<[8190, 1], offset: ?>> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8190xf64>
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
    %c8191 = arith.constant 8191 : index
    %c8190 = arith.constant 8190 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8191xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8190xf64>)
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8190 step %c512 {
      %3 = arith.subi %c8190, %arg0 : index
      %4 = arith.minsi %3, %c512 : index
      scf.for %arg1 = %c0 to %c8191 step %c512 {
        %5 = arith.subi %c8191, %arg1 : index
        %6 = arith.minsi %5, %c512 : index
        %subview = memref.subview %alloc_2[%arg1, %arg0] [%6, %4] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8192 step %c512 {
          %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, %6] [1, 1] : memref<8192x8191xf64> to memref<512x?xf64, strided<[8191, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, %4] [1, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
          linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%subview_5, %subview : memref<512x?xf64, strided<[8191, 1], offset: ?>>, memref<?x?xf64, strided<[8190, 1], offset: ?>>) outs(%subview_6 : memref<512x?xf64, strided<[8190, 1], offset: ?>>)
          memref.copy %subview_6, %subview_6 : memref<512x?xf64, strided<[8190, 1], offset: ?>> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8190xf64>
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
    %c8191 = arith.constant 8191 : index
    %c8190 = arith.constant 8190 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8191xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8190xf64>)
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8190 step %c512 {
      %3 = arith.subi %c8190, %arg0 : index
      %4 = arith.minsi %3, %c512 : index
      scf.for %arg1 = %c0 to %c8191 step %c512 {
        %5 = arith.subi %c8191, %arg1 : index
        %6 = arith.minsi %5, %c512 : index
        %subview = memref.subview %alloc_2[%arg1, %arg0] [%6, %4] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8192 step %c512 {
          %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, %6] [1, 1] : memref<8192x8191xf64> to memref<512x?xf64, strided<[8191, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, %4] [1, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
          linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%subview_5, %subview : memref<512x?xf64, strided<[8191, 1], offset: ?>>, memref<?x?xf64, strided<[8190, 1], offset: ?>>) outs(%subview_6 : memref<512x?xf64, strided<[8190, 1], offset: ?>>)
          memref.copy %subview_6, %subview_6 : memref<512x?xf64, strided<[8190, 1], offset: ?>> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8190xf64>
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
    %c8191 = arith.constant 8191 : index
    %c8190 = arith.constant 8190 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8191xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8190xf64>)
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8190 step %c512 {
      %3 = arith.subi %c8190, %arg0 : index
      %4 = arith.minsi %3, %c512 : index
      scf.for %arg1 = %c0 to %c8191 step %c512 {
        %5 = arith.subi %c8191, %arg1 : index
        %6 = arith.minsi %5, %c512 : index
        %subview = memref.subview %alloc_2[%arg1, %arg0] [%6, %4] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8192 step %c512 {
          %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, %6] [1, 1] : memref<8192x8191xf64> to memref<512x?xf64, strided<[8191, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, %4] [1, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
          linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%subview_5, %subview : memref<512x?xf64, strided<[8191, 1], offset: ?>>, memref<?x?xf64, strided<[8190, 1], offset: ?>>) outs(%subview_6 : memref<512x?xf64, strided<[8190, 1], offset: ?>>)
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8190xf64>
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

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @getTime() -> f64

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @getTime() -> f64

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c512 = arith.constant 512 : index
  %c8192 = arith.constant 8192 : index
  %c8191 = arith.constant 8191 : index
  %c8190 = arith.constant 8190 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8192x8191xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8192x8190xf64>)
  %0 = call @getTime() : () -> f64
  scf.for %arg0 = %c0 to %c8190 step %c512 {
    %3 = arith.subi %c8190, %arg0 : index
    %4 = arith.minsi %3, %c512 : index
    scf.for %arg1 = %c0 to %c8191 step %c512 {
      %5 = arith.subi %c8191, %arg1 : index
      %6 = arith.minsi %5, %c512 : index
      %subview = memref.subview %alloc_2[%arg1, %arg0] [%6, %4] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
      scf.for %arg2 = %c0 to %c8192 step %c512 {
        %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, %6] [1, 1] : memref<8192x8191xf64> to memref<512x?xf64, strided<[8191, 1], offset: ?>>
        %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, %4] [1, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
        linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%subview_5, %subview : memref<512x?xf64, strided<[8191, 1], offset: ?>>, memref<?x?xf64, strided<[8190, 1], offset: ?>>) outs(%subview_6 : memref<512x?xf64, strided<[8190, 1], offset: ?>>)
      }
    }
  }
  %1 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8190xf64>
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
  %c8191 = arith.constant 8191 : index
  %c8190 = arith.constant 8190 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8191 step %c1 {
      memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8192x8191xf64>
    }
  }
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  scf.for %arg0 = %c0 to %c8191 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8191x8190xf64>
    }
  }
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
  scf.for %arg0 = %c0 to %c8192 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8192x8190xf64>
    }
  }
  %0 = call @getTime() : () -> f64
  scf.for %arg0 = %c0 to %c8190 step %c512 {
    %3 = arith.subi %c8190, %arg0 : index
    %4 = arith.minsi %3, %c512 : index
    scf.for %arg1 = %c0 to %c8191 step %c512 {
      %5 = arith.subi %c8191, %arg1 : index
      %6 = arith.minsi %5, %c512 : index
      %subview = memref.subview %alloc_2[%arg1, %arg0] [%6, %4] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
      scf.for %arg2 = %c0 to %c8192 step %c512 {
        %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, %6] [1, 1] : memref<8192x8191xf64> to memref<512x?xf64, strided<[8191, 1], offset: ?>>
        %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, %4] [1, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
        scf.for %arg3 = %c0 to %c512 step %c1 {
          scf.for %arg4 = %c0 to %4 step %c1 {
            scf.for %arg5 = %c0 to %6 step %c1 {
              %7 = memref.load %subview_5[%arg3, %arg5] : memref<512x?xf64, strided<[8191, 1], offset: ?>>
              %8 = memref.load %subview[%arg5, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
              %9 = memref.load %subview_6[%arg3, %arg4] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
              %10 = arith.mulf %7, %8 : f64
              %11 = arith.addf %9, %10 : f64
              memref.store %11, %subview_6[%arg3, %arg4] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
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
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8190xf64>
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
    %c8191 = arith.constant 8191 : index
    %c8190 = arith.constant 8190 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8191 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8192x8191xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    scf.for %arg0 = %c0 to %c8191 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8191x8190xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8192x8190xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8190 step %c512 {
      %3 = arith.subi %c8190, %arg0 : index
      %4 = arith.minsi %3, %c512 : index
      scf.for %arg1 = %c0 to %c8191 step %c512 {
        %5 = arith.subi %c8191, %arg1 : index
        %6 = arith.minsi %5, %c512 : index
        %subview = memref.subview %alloc_2[%arg1, %arg0] [%6, %4] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8192 step %c512 {
          %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, %6] [1, 1] : memref<8192x8191xf64> to memref<512x?xf64, strided<[8191, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, %4] [1, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
          scf.for %arg3 = %c0 to %c512 step %c1 {
            scf.for %arg4 = %c0 to %4 step %c1 {
              scf.for %arg5 = %c0 to %6 step %c1 {
                %7 = memref.load %subview_5[%arg3, %arg5] : memref<512x?xf64, strided<[8191, 1], offset: ?>>
                %8 = memref.load %subview[%arg5, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
                %9 = memref.load %subview_6[%arg3, %arg4] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
                %10 = arith.mulf %7, %8 : f64
                %11 = arith.addf %9, %10 : f64
                memref.store %11, %subview_6[%arg3, %arg4] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
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
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8190xf64>
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
    %c8191 = arith.constant 8191 : index
    %c8190 = arith.constant 8190 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8191 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8192x8191xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    scf.for %arg0 = %c0 to %c8191 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8191x8190xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8192x8190xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8190 step %c512 {
      %3 = arith.subi %c8190, %arg0 : index
      %4 = arith.minsi %3, %c512 : index
      scf.for %arg1 = %c0 to %c8191 step %c512 {
        %5 = arith.subi %c8191, %arg1 : index
        %6 = arith.minsi %5, %c512 : index
        %subview = memref.subview %alloc_2[%arg1, %arg0] [%6, %4] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8192 step %c512 {
          %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, %6] [1, 1] : memref<8192x8191xf64> to memref<512x?xf64, strided<[8191, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, %4] [1, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
          scf.for %arg3 = %c0 to %c512 step %c1 {
            scf.for %arg4 = %c0 to %4 step %c1 {
              scf.for %arg5 = %c0 to %6 step %c1 {
                %7 = memref.load %subview_5[%arg3, %arg5] : memref<512x?xf64, strided<[8191, 1], offset: ?>>
                %8 = memref.load %subview[%arg5, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
                %9 = memref.load %subview_6[%arg3, %arg4] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
                %10 = arith.mulf %7, %8 : f64
                %11 = arith.addf %9, %10 : f64
                memref.store %11, %subview_6[%arg3, %arg4] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
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
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8190xf64>
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
    %c8191 = arith.constant 8191 : index
    %c8190 = arith.constant 8190 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8191 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8192x8191xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    scf.for %arg0 = %c0 to %c8191 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8191x8190xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8192x8190xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8190 step %c512 {
      %3 = arith.subi %c8190, %arg0 : index
      %4 = arith.minsi %3, %c512 : index
      scf.for %arg1 = %c0 to %c8191 step %c512 {
        %5 = arith.subi %c8191, %arg1 : index
        %6 = arith.minsi %5, %c512 : index
        %subview = memref.subview %alloc_2[%arg1, %arg0] [%6, %4] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8192 step %c512 {
          %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, %6] [1, 1] : memref<8192x8191xf64> to memref<512x?xf64, strided<[8191, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, %4] [1, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
          scf.for %arg3 = %c0 to %c512 step %c1 {
            scf.for %arg4 = %c0 to %4 step %c1 {
              scf.for %arg5 = %c0 to %6 step %c1 {
                %7 = memref.load %subview_5[%arg3, %arg5] : memref<512x?xf64, strided<[8191, 1], offset: ?>>
                %8 = memref.load %subview[%arg5, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
                %9 = memref.load %subview_6[%arg3, %arg4] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
                %10 = arith.mulf %7, %8 : f64
                %11 = arith.addf %9, %10 : f64
                memref.store %11, %subview_6[%arg3, %arg4] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
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
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8190xf64>
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
    %c8191 = arith.constant 8191 : index
    %c8190 = arith.constant 8190 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8191 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8192x8191xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    scf.for %arg0 = %c0 to %c8191 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8191x8190xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8192x8190xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8190 step %c512 {
      %3 = arith.subi %c8190, %arg0 : index
      %4 = arith.minsi %3, %c512 : index
      scf.for %arg1 = %c0 to %c8191 step %c512 {
        %5 = arith.subi %c8191, %arg1 : index
        %6 = arith.minsi %5, %c512 : index
        %subview = memref.subview %alloc_2[%arg1, %arg0] [%6, %4] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8192 step %c512 {
          %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, %6] [1, 1] : memref<8192x8191xf64> to memref<512x?xf64, strided<[8191, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, %4] [1, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
          scf.for %arg3 = %c0 to %c512 step %c1 {
            scf.for %arg4 = %c0 to %4 step %c1 {
              scf.for %arg5 = %c0 to %6 step %c1 {
                %7 = memref.load %subview_5[%arg3, %arg5] : memref<512x?xf64, strided<[8191, 1], offset: ?>>
                %8 = memref.load %subview[%arg5, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
                %9 = memref.load %subview_6[%arg3, %arg4] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
                %10 = arith.mulf %7, %8 : f64
                %11 = arith.addf %9, %10 : f64
                memref.store %11, %subview_6[%arg3, %arg4] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
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
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8190xf64>
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
    %c8191 = arith.constant 8191 : index
    %c8190 = arith.constant 8190 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8191 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8192x8191xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    scf.for %arg0 = %c0 to %c8191 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8191x8190xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8192x8190xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8190 step %c512 {
      %3 = arith.subi %c8190, %arg0 : index
      %4 = arith.minsi %3, %c512 : index
      scf.for %arg1 = %c0 to %c8191 step %c512 {
        %5 = arith.subi %c8191, %arg1 : index
        %6 = arith.minsi %5, %c512 : index
        %subview = memref.subview %alloc_2[%arg1, %arg0] [%6, %4] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8192 step %c512 {
          %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, %6] [1, 1] : memref<8192x8191xf64> to memref<512x?xf64, strided<[8191, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, %4] [1, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
          scf.for %arg3 = %c0 to %c512 step %c1 {
            scf.for %arg4 = %c0 to %4 step %c1 {
              scf.for %arg5 = %c0 to %6 step %c1 {
                %7 = memref.load %subview_5[%arg3, %arg5] : memref<512x?xf64, strided<[8191, 1], offset: ?>>
                %8 = memref.load %subview[%arg5, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
                %9 = memref.load %subview_6[%arg3, %arg4] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
                %10 = arith.mulf %7, %8 : f64
                %11 = arith.addf %9, %10 : f64
                memref.store %11, %subview_6[%arg3, %arg4] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
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
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8190xf64>
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
    %c8191 = arith.constant 8191 : index
    %c8190 = arith.constant 8190 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8191 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8192x8191xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    scf.for %arg0 = %c0 to %c8191 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8191x8190xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8192x8190xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8190 step %c512 {
      %3 = arith.subi %c8190, %arg0 : index
      %4 = arith.minsi %3, %c512 : index
      scf.for %arg1 = %c0 to %c8191 step %c512 {
        %5 = arith.subi %c8191, %arg1 : index
        %6 = arith.minsi %5, %c512 : index
        %subview = memref.subview %alloc_2[%arg1, %arg0] [%6, %4] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8192 step %c512 {
          %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, %6] [1, 1] : memref<8192x8191xf64> to memref<512x?xf64, strided<[8191, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, %4] [1, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
          scf.for %arg3 = %c0 to %c512 step %c1 {
            scf.for %arg4 = %c0 to %4 step %c1 {
              scf.for %arg5 = %c0 to %6 step %c1 {
                %7 = memref.load %subview_5[%arg3, %arg5] : memref<512x?xf64, strided<[8191, 1], offset: ?>>
                %8 = memref.load %subview[%arg5, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
                %9 = memref.load %subview_6[%arg3, %arg4] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
                %10 = arith.mulf %7, %8 : f64
                %11 = arith.addf %9, %10 : f64
                memref.store %11, %subview_6[%arg3, %arg4] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
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
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8190xf64>
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
    %c8191 = arith.constant 8191 : index
    %c8190 = arith.constant 8190 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8191 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8192x8191xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    scf.for %arg0 = %c0 to %c8191 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8191x8190xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8192x8190xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8190 step %c512 {
      %3 = arith.subi %c8190, %arg0 : index
      %4 = arith.minsi %3, %c512 : index
      scf.for %arg1 = %c0 to %c8191 step %c512 {
        %5 = arith.subi %c8191, %arg1 : index
        %6 = arith.minsi %5, %c512 : index
        %subview = memref.subview %alloc_2[%arg1, %arg0] [%6, %4] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8192 step %c512 {
          %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, %6] [1, 1] : memref<8192x8191xf64> to memref<512x?xf64, strided<[8191, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, %4] [1, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
          scf.for %arg3 = %c0 to %c512 step %c1 {
            scf.for %arg4 = %c0 to %4 step %c1 {
              scf.for %arg5 = %c0 to %6 step %c1 {
                %7 = memref.load %subview_5[%arg3, %arg5] : memref<512x?xf64, strided<[8191, 1], offset: ?>>
                %8 = memref.load %subview[%arg5, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
                %9 = memref.load %subview_6[%arg3, %arg4] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
                %10 = arith.mulf %7, %8 : f64
                %11 = arith.addf %9, %10 : f64
                memref.store %11, %subview_6[%arg3, %arg4] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
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
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8190xf64>
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
    %c8191 = arith.constant 8191 : index
    %c8190 = arith.constant 8190 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8191 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8192x8191xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    scf.for %arg0 = %c0 to %c8191 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8191x8190xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
    scf.for %arg0 = %c0 to %c8192 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8192x8190xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8190 step %c512 {  /// k
      %3 = arith.subi %c8190, %arg0 : index
      %4 = arith.minsi %3, %c512 : index
      scf.for %arg1 = %c0 to %c8191 step %c512 {  /// j
        %5 = arith.subi %c8191, %arg1 : index
        %6 = arith.minsi %5, %c512 : index
        %subview = memref.subview %alloc_2[%arg1, %arg0] [%6, %4] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>  /// B
        scf.for %arg2 = %c0 to %c8192 step %c512 {  /// i
          %subview_5 = memref.subview %alloc[%arg2, %arg1] [512, %6] [1, 1] : memref<8192x8191xf64> to memref<512x?xf64, strided<[8191, 1], offset: ?>>  /// A
          %subview_6 = memref.subview %alloc_3[%arg2, %arg0] [512, %4] [1, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>  /// C
          scf.for %arg3 = %c0 to %c512 step %c1 {  /// i
            scf.for %arg4 = %c0 to %4 step %c1 {  /// k
              scf.for %arg5 = %c0 to %6 step %c1 {  /// j
                %7 = memref.load %subview_5[%arg3, %arg5] : memref<512x?xf64, strided<[8191, 1], offset: ?>>
                %8 = memref.load %subview[%arg5, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
                %9 = memref.load %subview_6[%arg3, %arg4] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
                %10 = arith.mulf %7, %8 : f64
                %11 = arith.addf %9, %10 : f64
                memref.store %11, %subview_6[%arg3, %arg4] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
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
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8192x8190xf64>
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
    %c8191 = arith.constant 8191 : index
    %c8190 = arith.constant 8190 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c8192 : index
    cf.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c8191 : index
    cf.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<8192x8191xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb3(%4 : index)
  ^bb5:  // pred: ^bb3
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb6:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
    %7 = arith.cmpi slt, %6, %c8191 : index
    cf.cond_br %7, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
    %9 = arith.cmpi slt, %8, %c8190 : index
    cf.cond_br %9, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    memref.store %cst_0, %alloc_2[%6, %8] : memref<8191x8190xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb9(%10 : index)
  ^bb11:  // pred: ^bb9
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb7(%11 : index)
  ^bb12:  // pred: ^bb7
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c8192 : index
    cf.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c8190 : index
    cf.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<8192x8190xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    %18 = call @getTime() : () -> f64
    cf.br ^bb19(%c0 : index)
  ^bb19(%19: index):  // 2 preds: ^bb18, ^bb35
    %20 = arith.cmpi slt, %19, %c8190 : index
    cf.cond_br %20, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    %21 = arith.subi %c8190, %19 : index
    %22 = arith.minsi %21, %c512 : index
    cf.br ^bb21(%c0 : index)
  ^bb21(%23: index):  // 2 preds: ^bb20, ^bb34
    %24 = arith.cmpi slt, %23, %c8191 : index
    cf.cond_br %24, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %25 = arith.subi %c8191, %23 : index
    %26 = arith.minsi %25, %c512 : index
    %subview = memref.subview %alloc_2[%23, %19] [%26, %22] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
    cf.br ^bb23(%c0 : index)
  ^bb23(%27: index):  // 2 preds: ^bb22, ^bb33
    %28 = arith.cmpi slt, %27, %c8192 : index
    cf.cond_br %28, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %subview_4 = memref.subview %alloc[%27, %23] [512, %26] [1, 1] : memref<8192x8191xf64> to memref<512x?xf64, strided<[8191, 1], offset: ?>>
    %subview_5 = memref.subview %alloc_3[%27, %19] [512, %22] [1, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
    cf.br ^bb25(%c0 : index)
  ^bb25(%29: index):  // 2 preds: ^bb24, ^bb32
    %30 = arith.cmpi slt, %29, %c512 : index
    cf.cond_br %30, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%31: index):  // 2 preds: ^bb26, ^bb31
    %32 = arith.cmpi slt, %31, %22 : index
    cf.cond_br %32, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    cf.br ^bb29(%c0 : index)
  ^bb29(%33: index):  // 2 preds: ^bb28, ^bb30
    %34 = arith.cmpi slt, %33, %26 : index
    cf.cond_br %34, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %35 = memref.load %subview_4[%29, %33] : memref<512x?xf64, strided<[8191, 1], offset: ?>>
    %36 = memref.load %subview[%33, %31] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
    %37 = memref.load %subview_5[%29, %31] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
    %38 = arith.mulf %35, %36 : f64
    %39 = arith.addf %37, %38 : f64
    memref.store %39, %subview_5[%29, %31] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
    %40 = arith.addi %33, %c1 : index
    cf.br ^bb29(%40 : index)
  ^bb31:  // pred: ^bb29
    %41 = arith.addi %31, %c1 : index
    cf.br ^bb27(%41 : index)
  ^bb32:  // pred: ^bb27
    %42 = arith.addi %29, %c1 : index
    cf.br ^bb25(%42 : index)
  ^bb33:  // pred: ^bb25
    %43 = arith.addi %27, %c512 : index
    cf.br ^bb23(%43 : index)
  ^bb34:  // pred: ^bb23
    %44 = arith.addi %23, %c512 : index
    cf.br ^bb21(%44 : index)
  ^bb35:  // pred: ^bb21
    %45 = arith.addi %19, %c512 : index
    cf.br ^bb19(%45 : index)
  ^bb36:  // pred: ^bb19
    %46 = call @getTime() : () -> f64
    %alloc_6 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_6[%c0] : memref<1xf64>
    cf.br ^bb37(%c0 : index)
  ^bb37(%47: index):  // 2 preds: ^bb36, ^bb41
    %48 = arith.cmpi slt, %47, %c8192 : index
    cf.cond_br %48, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    cf.br ^bb39(%c0 : index)
  ^bb39(%49: index):  // 2 preds: ^bb38, ^bb40
    %50 = arith.cmpi slt, %49, %c8190 : index
    cf.cond_br %50, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %51 = memref.load %alloc_3[%47, %49] : memref<8192x8190xf64>
    %52 = memref.load %alloc_6[%c0] : memref<1xf64>
    %53 = arith.addf %51, %52 : f64
    memref.store %53, %alloc_6[%c0] : memref<1xf64>
    %54 = arith.addi %49, %c1 : index
    cf.br ^bb39(%54 : index)
  ^bb41:  // pred: ^bb39
    %55 = arith.addi %47, %c1 : index
    cf.br ^bb37(%55 : index)
  ^bb42:  // pred: ^bb37
    %56 = memref.load %alloc_6[%c0] : memref<1xf64>
    call @printF64(%56) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%18, %46) : (f64, f64) -> ()
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
    %c8191 = arith.constant 8191 : index
    %c8190 = arith.constant 8190 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c8192 : index
    cf.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c8191 : index
    cf.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<8192x8191xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb3(%4 : index)
  ^bb5:  // pred: ^bb3
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb6:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
    %7 = arith.cmpi slt, %6, %c8191 : index
    cf.cond_br %7, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
    %9 = arith.cmpi slt, %8, %c8190 : index
    cf.cond_br %9, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    memref.store %cst_0, %alloc_2[%6, %8] : memref<8191x8190xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb9(%10 : index)
  ^bb11:  // pred: ^bb9
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb7(%11 : index)
  ^bb12:  // pred: ^bb7
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c8192 : index
    cf.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c8190 : index
    cf.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<8192x8190xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    %18 = call @getTime() : () -> f64
    cf.br ^bb19(%c0 : index)
  ^bb19(%19: index):  // 2 preds: ^bb18, ^bb35
    %20 = arith.cmpi slt, %19, %c8190 : index
    cf.cond_br %20, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    %21 = arith.subi %c8190, %19 : index
    %22 = arith.minsi %21, %c512 : index
    cf.br ^bb21(%c0 : index)
  ^bb21(%23: index):  // 2 preds: ^bb20, ^bb34
    %24 = arith.cmpi slt, %23, %c8191 : index
    cf.cond_br %24, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %25 = arith.subi %c8191, %23 : index
    %26 = arith.minsi %25, %c512 : index
    %subview = memref.subview %alloc_2[%23, %19] [%26, %22] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
    cf.br ^bb23(%c0 : index)
  ^bb23(%27: index):  // 2 preds: ^bb22, ^bb33
    %28 = arith.cmpi slt, %27, %c8192 : index
    cf.cond_br %28, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %subview_4 = memref.subview %alloc[%27, %23] [512, %26] [1, 1] : memref<8192x8191xf64> to memref<512x?xf64, strided<[8191, 1], offset: ?>>
    %subview_5 = memref.subview %alloc_3[%27, %19] [512, %22] [1, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
    cf.br ^bb25(%c0 : index)
  ^bb25(%29: index):  // 2 preds: ^bb24, ^bb32
    %30 = arith.cmpi slt, %29, %c512 : index
    cf.cond_br %30, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%31: index):  // 2 preds: ^bb26, ^bb31
    %32 = arith.cmpi slt, %31, %22 : index
    cf.cond_br %32, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    cf.br ^bb29(%c0 : index)
  ^bb29(%33: index):  // 2 preds: ^bb28, ^bb30
    %34 = arith.cmpi slt, %33, %26 : index
    cf.cond_br %34, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %35 = memref.load %subview_4[%29, %33] : memref<512x?xf64, strided<[8191, 1], offset: ?>>
    %36 = memref.load %subview[%33, %31] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
    %37 = memref.load %subview_5[%29, %31] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
    %38 = arith.mulf %35, %36 : f64
    %39 = arith.addf %37, %38 : f64
    memref.store %39, %subview_5[%29, %31] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
    %40 = arith.addi %33, %c1 : index
    cf.br ^bb29(%40 : index)
  ^bb31:  // pred: ^bb29
    %41 = arith.addi %31, %c1 : index
    cf.br ^bb27(%41 : index)
  ^bb32:  // pred: ^bb27
    %42 = arith.addi %29, %c1 : index
    cf.br ^bb25(%42 : index)
  ^bb33:  // pred: ^bb25
    %43 = arith.addi %27, %c512 : index
    cf.br ^bb23(%43 : index)
  ^bb34:  // pred: ^bb23
    %44 = arith.addi %23, %c512 : index
    cf.br ^bb21(%44 : index)
  ^bb35:  // pred: ^bb21
    %45 = arith.addi %19, %c512 : index
    cf.br ^bb19(%45 : index)
  ^bb36:  // pred: ^bb19
    %46 = call @getTime() : () -> f64
    %alloc_6 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_6[%c0] : memref<1xf64>
    cf.br ^bb37(%c0 : index)
  ^bb37(%47: index):  // 2 preds: ^bb36, ^bb41
    %48 = arith.cmpi slt, %47, %c8192 : index
    cf.cond_br %48, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    cf.br ^bb39(%c0 : index)
  ^bb39(%49: index):  // 2 preds: ^bb38, ^bb40
    %50 = arith.cmpi slt, %49, %c8190 : index
    cf.cond_br %50, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %51 = memref.load %alloc_3[%47, %49] : memref<8192x8190xf64>
    %52 = memref.load %alloc_6[%c0] : memref<1xf64>
    %53 = arith.addf %51, %52 : f64
    memref.store %53, %alloc_6[%c0] : memref<1xf64>
    %54 = arith.addi %49, %c1 : index
    cf.br ^bb39(%54 : index)
  ^bb41:  // pred: ^bb39
    %55 = arith.addi %47, %c1 : index
    cf.br ^bb37(%55 : index)
  ^bb42:  // pred: ^bb37
    %56 = memref.load %alloc_6[%c0] : memref<1xf64>
    call @printF64(%56) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%18, %46) : (f64, f64) -> ()
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
func.func private @printNewline()

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @printElapsedTime(f64, f64)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @getTime() -> f64

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c512 = arith.constant 512 : index
  %c8192 = arith.constant 8192 : index
  %c8191 = arith.constant 8191 : index
  %c8190 = arith.constant 8190 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
  cf.br ^bb1(%c0 : index)
^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
  %1 = arith.cmpi slt, %0, %c8192 : index
  cf.cond_br %1, ^bb2, ^bb6
^bb2:  // pred: ^bb1
  cf.br ^bb3(%c0 : index)
^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
  %3 = arith.cmpi slt, %2, %c8191 : index
  cf.cond_br %3, ^bb4, ^bb5
^bb4:  // pred: ^bb3
  memref.store %cst_1, %alloc[%0, %2] : memref<8192x8191xf64>
  %4 = arith.addi %2, %c1 : index
  cf.br ^bb3(%4 : index)
^bb5:  // pred: ^bb3
  %5 = arith.addi %0, %c1 : index
  cf.br ^bb1(%5 : index)
^bb6:  // pred: ^bb1
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  cf.br ^bb7(%c0 : index)
^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
  %7 = arith.cmpi slt, %6, %c8191 : index
  cf.cond_br %7, ^bb8, ^bb12
^bb8:  // pred: ^bb7
  cf.br ^bb9(%c0 : index)
^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
  %9 = arith.cmpi slt, %8, %c8190 : index
  cf.cond_br %9, ^bb10, ^bb11
^bb10:  // pred: ^bb9
  memref.store %cst_0, %alloc_2[%6, %8] : memref<8191x8190xf64>
  %10 = arith.addi %8, %c1 : index
  cf.br ^bb9(%10 : index)
^bb11:  // pred: ^bb9
  %11 = arith.addi %6, %c1 : index
  cf.br ^bb7(%11 : index)
^bb12:  // pred: ^bb7
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
  cf.br ^bb13(%c0 : index)
^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
  %13 = arith.cmpi slt, %12, %c8192 : index
  cf.cond_br %13, ^bb14, ^bb18
^bb14:  // pred: ^bb13
  cf.br ^bb15(%c0 : index)
^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
  %15 = arith.cmpi slt, %14, %c8190 : index
  cf.cond_br %15, ^bb16, ^bb17
^bb16:  // pred: ^bb15
  memref.store %cst, %alloc_3[%12, %14] : memref<8192x8190xf64>
  %16 = arith.addi %14, %c1 : index
  cf.br ^bb15(%16 : index)
^bb17:  // pred: ^bb15
  %17 = arith.addi %12, %c1 : index
  cf.br ^bb13(%17 : index)
^bb18:  // pred: ^bb13
  %18 = call @getTime() : () -> f64
  cf.br ^bb19(%c0 : index)
^bb19(%19: index):  // 2 preds: ^bb18, ^bb35
  %20 = arith.cmpi slt, %19, %c8190 : index
  cf.cond_br %20, ^bb20, ^bb36
^bb20:  // pred: ^bb19
  %21 = arith.subi %c8190, %19 : index
  %22 = arith.minsi %21, %c512 : index
  cf.br ^bb21(%c0 : index)
^bb21(%23: index):  // 2 preds: ^bb20, ^bb34
  %24 = arith.cmpi slt, %23, %c8191 : index
  cf.cond_br %24, ^bb22, ^bb35
^bb22:  // pred: ^bb21
  %25 = arith.subi %c8191, %23 : index
  %26 = arith.minsi %25, %c512 : index
  %subview = memref.subview %alloc_2[%23, %19] [%26, %22] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
  cf.br ^bb23(%c0 : index)
^bb23(%27: index):  // 2 preds: ^bb22, ^bb33
  %28 = arith.cmpi slt, %27, %c8192 : index
  cf.cond_br %28, ^bb24, ^bb34
^bb24:  // pred: ^bb23
  %subview_4 = memref.subview %alloc[%27, %23] [512, %26] [1, 1] : memref<8192x8191xf64> to memref<512x?xf64, strided<[8191, 1], offset: ?>>
  %subview_5 = memref.subview %alloc_3[%27, %19] [512, %22] [1, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
  cf.br ^bb25(%c0 : index)
^bb25(%29: index):  // 2 preds: ^bb24, ^bb32
  %30 = arith.cmpi slt, %29, %c512 : index
  cf.cond_br %30, ^bb26, ^bb33
^bb26:  // pred: ^bb25
  cf.br ^bb27(%c0 : index)
^bb27(%31: index):  // 2 preds: ^bb26, ^bb31
  %32 = arith.cmpi slt, %31, %22 : index
  cf.cond_br %32, ^bb28, ^bb32
^bb28:  // pred: ^bb27
  cf.br ^bb29(%c0 : index)
^bb29(%33: index):  // 2 preds: ^bb28, ^bb30
  %34 = arith.cmpi slt, %33, %26 : index
  cf.cond_br %34, ^bb30, ^bb31
^bb30:  // pred: ^bb29
  %35 = memref.load %subview_4[%29, %33] : memref<512x?xf64, strided<[8191, 1], offset: ?>>
  %36 = memref.load %subview[%33, %31] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
  %37 = memref.load %subview_5[%29, %31] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
  %38 = arith.mulf %35, %36 : f64
  %39 = arith.addf %37, %38 : f64
  memref.store %39, %subview_5[%29, %31] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
  %40 = arith.addi %33, %c1 : index
  cf.br ^bb29(%40 : index)
^bb31:  // pred: ^bb29
  %41 = arith.addi %31, %c1 : index
  cf.br ^bb27(%41 : index)
^bb32:  // pred: ^bb27
  %42 = arith.addi %29, %c1 : index
  cf.br ^bb25(%42 : index)
^bb33:  // pred: ^bb25
  %43 = arith.addi %27, %c512 : index
  cf.br ^bb23(%43 : index)
^bb34:  // pred: ^bb23
  %44 = arith.addi %23, %c512 : index
  cf.br ^bb21(%44 : index)
^bb35:  // pred: ^bb21
  %45 = arith.addi %19, %c512 : index
  cf.br ^bb19(%45 : index)
^bb36:  // pred: ^bb19
  %46 = call @getTime() : () -> f64
  %alloc_6 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_6[%c0] : memref<1xf64>
  cf.br ^bb37(%c0 : index)
^bb37(%47: index):  // 2 preds: ^bb36, ^bb41
  %48 = arith.cmpi slt, %47, %c8192 : index
  cf.cond_br %48, ^bb38, ^bb42
^bb38:  // pred: ^bb37
  cf.br ^bb39(%c0 : index)
^bb39(%49: index):  // 2 preds: ^bb38, ^bb40
  %50 = arith.cmpi slt, %49, %c8190 : index
  cf.cond_br %50, ^bb40, ^bb41
^bb40:  // pred: ^bb39
  %51 = memref.load %alloc_3[%47, %49] : memref<8192x8190xf64>
  %52 = memref.load %alloc_6[%c0] : memref<1xf64>
  %53 = arith.addf %51, %52 : f64
  memref.store %53, %alloc_6[%c0] : memref<1xf64>
  %54 = arith.addi %49, %c1 : index
  cf.br ^bb39(%54 : index)
^bb41:  // pred: ^bb39
  %55 = arith.addi %47, %c1 : index
  cf.br ^bb37(%55 : index)
^bb42:  // pred: ^bb37
  %56 = memref.load %alloc_6[%c0] : memref<1xf64>
  call @printF64(%56) : (f64) -> ()
  call @printNewline() : () -> ()
  call @printElapsedTime(%18, %46) : (f64, f64) -> ()
  return
}

// -----// IR Dump After ExpandStridedMetadata (expand-strided-metadata) //----- //
#map = affine_map<()[s0, s1] -> (s0 * 8190 + s1)>
#map1 = affine_map<()[s0, s1] -> (s0 * 8191 + s1)>
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8192 = arith.constant 8192 : index
    %c8191 = arith.constant 8191 : index
    %c8190 = arith.constant 8190 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c8192 : index
    cf.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c8191 : index
    cf.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<8192x8191xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb3(%4 : index)
  ^bb5:  // pred: ^bb3
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb6:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
    %7 = arith.cmpi slt, %6, %c8191 : index
    cf.cond_br %7, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
    %9 = arith.cmpi slt, %8, %c8190 : index
    cf.cond_br %9, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    memref.store %cst_0, %alloc_2[%6, %8] : memref<8191x8190xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb9(%10 : index)
  ^bb11:  // pred: ^bb9
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb7(%11 : index)
  ^bb12:  // pred: ^bb7
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c8192 : index
    cf.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c8190 : index
    cf.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<8192x8190xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    %18 = call @getTime() : () -> f64
    cf.br ^bb19(%c0 : index)
  ^bb19(%19: index):  // 2 preds: ^bb18, ^bb35
    %20 = arith.cmpi slt, %19, %c8190 : index
    cf.cond_br %20, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    %21 = arith.subi %c8190, %19 : index
    %22 = arith.minsi %21, %c512 : index
    cf.br ^bb21(%c0 : index)
  ^bb21(%23: index):  // 2 preds: ^bb20, ^bb34
    %24 = arith.cmpi slt, %23, %c8191 : index
    cf.cond_br %24, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %25 = arith.subi %c8191, %23 : index
    %26 = arith.minsi %25, %c512 : index
    %27 = affine.apply #map()[%23, %19]
    %reinterpret_cast = memref.reinterpret_cast %alloc_2 to offset: [%27], sizes: [%26, %22], strides: [8190, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
    cf.br ^bb23(%c0 : index)
  ^bb23(%28: index):  // 2 preds: ^bb22, ^bb33
    %29 = arith.cmpi slt, %28, %c8192 : index
    cf.cond_br %29, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %30 = affine.apply #map1()[%28, %23]
    %reinterpret_cast_4 = memref.reinterpret_cast %alloc to offset: [%30], sizes: [512, %26], strides: [8191, 1] : memref<8192x8191xf64> to memref<512x?xf64, strided<[8191, 1], offset: ?>>
    %31 = affine.apply #map()[%28, %19]
    %reinterpret_cast_5 = memref.reinterpret_cast %alloc_3 to offset: [%31], sizes: [512, %22], strides: [8190, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
    cf.br ^bb25(%c0 : index)
  ^bb25(%32: index):  // 2 preds: ^bb24, ^bb32
    %33 = arith.cmpi slt, %32, %c512 : index
    cf.cond_br %33, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%34: index):  // 2 preds: ^bb26, ^bb31
    %35 = arith.cmpi slt, %34, %22 : index
    cf.cond_br %35, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    cf.br ^bb29(%c0 : index)
  ^bb29(%36: index):  // 2 preds: ^bb28, ^bb30
    %37 = arith.cmpi slt, %36, %26 : index
    cf.cond_br %37, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %38 = memref.load %reinterpret_cast_4[%32, %36] : memref<512x?xf64, strided<[8191, 1], offset: ?>>
    %39 = memref.load %reinterpret_cast[%36, %34] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
    %40 = memref.load %reinterpret_cast_5[%32, %34] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
    %41 = arith.mulf %38, %39 : f64
    %42 = arith.addf %40, %41 : f64
    memref.store %42, %reinterpret_cast_5[%32, %34] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
    %43 = arith.addi %36, %c1 : index
    cf.br ^bb29(%43 : index)
  ^bb31:  // pred: ^bb29
    %44 = arith.addi %34, %c1 : index
    cf.br ^bb27(%44 : index)
  ^bb32:  // pred: ^bb27
    %45 = arith.addi %32, %c1 : index
    cf.br ^bb25(%45 : index)
  ^bb33:  // pred: ^bb25
    %46 = arith.addi %28, %c512 : index
    cf.br ^bb23(%46 : index)
  ^bb34:  // pred: ^bb23
    %47 = arith.addi %23, %c512 : index
    cf.br ^bb21(%47 : index)
  ^bb35:  // pred: ^bb21
    %48 = arith.addi %19, %c512 : index
    cf.br ^bb19(%48 : index)
  ^bb36:  // pred: ^bb19
    %49 = call @getTime() : () -> f64
    %alloc_6 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_6[%c0] : memref<1xf64>
    cf.br ^bb37(%c0 : index)
  ^bb37(%50: index):  // 2 preds: ^bb36, ^bb41
    %51 = arith.cmpi slt, %50, %c8192 : index
    cf.cond_br %51, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    cf.br ^bb39(%c0 : index)
  ^bb39(%52: index):  // 2 preds: ^bb38, ^bb40
    %53 = arith.cmpi slt, %52, %c8190 : index
    cf.cond_br %53, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %54 = memref.load %alloc_3[%50, %52] : memref<8192x8190xf64>
    %55 = memref.load %alloc_6[%c0] : memref<1xf64>
    %56 = arith.addf %54, %55 : f64
    memref.store %56, %alloc_6[%c0] : memref<1xf64>
    %57 = arith.addi %52, %c1 : index
    cf.br ^bb39(%57 : index)
  ^bb41:  // pred: ^bb39
    %58 = arith.addi %50, %c1 : index
    cf.br ^bb37(%58 : index)
  ^bb42:  // pred: ^bb37
    %59 = memref.load %alloc_6[%c0] : memref<1xf64>
    call @printF64(%59) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%18, %49) : (f64, f64) -> ()
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
    %c8191 = arith.constant 8191 : index
    %c8190 = arith.constant 8190 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c8192 : index
    cf.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c8191 : index
    cf.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<8192x8191xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb3(%4 : index)
  ^bb5:  // pred: ^bb3
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb6:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
    %7 = arith.cmpi slt, %6, %c8191 : index
    cf.cond_br %7, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
    %9 = arith.cmpi slt, %8, %c8190 : index
    cf.cond_br %9, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    memref.store %cst_0, %alloc_2[%6, %8] : memref<8191x8190xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb9(%10 : index)
  ^bb11:  // pred: ^bb9
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb7(%11 : index)
  ^bb12:  // pred: ^bb7
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c8192 : index
    cf.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c8190 : index
    cf.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<8192x8190xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    %18 = call @getTime() : () -> f64
    cf.br ^bb19(%c0 : index)
  ^bb19(%19: index):  // 2 preds: ^bb18, ^bb35
    %20 = arith.cmpi slt, %19, %c8190 : index
    cf.cond_br %20, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    %21 = arith.subi %c8190, %19 : index
    %22 = arith.minsi %21, %c512 : index
    cf.br ^bb21(%c0 : index)
  ^bb21(%23: index):  // 2 preds: ^bb20, ^bb34
    %24 = arith.cmpi slt, %23, %c8191 : index
    cf.cond_br %24, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %25 = arith.subi %c8191, %23 : index
    %26 = arith.minsi %25, %c512 : index
    %c8190_4 = arith.constant 8190 : index
    %27 = arith.muli %23, %c8190_4 : index
    %28 = arith.addi %27, %19 : index
    %reinterpret_cast = memref.reinterpret_cast %alloc_2 to offset: [%28], sizes: [%26, %22], strides: [8190, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
    cf.br ^bb23(%c0 : index)
  ^bb23(%29: index):  // 2 preds: ^bb22, ^bb33
    %30 = arith.cmpi slt, %29, %c8192 : index
    cf.cond_br %30, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %c8191_5 = arith.constant 8191 : index
    %31 = arith.muli %29, %c8191_5 : index
    %32 = arith.addi %31, %23 : index
    %reinterpret_cast_6 = memref.reinterpret_cast %alloc to offset: [%32], sizes: [512, %26], strides: [8191, 1] : memref<8192x8191xf64> to memref<512x?xf64, strided<[8191, 1], offset: ?>>
    %c8190_7 = arith.constant 8190 : index
    %33 = arith.muli %29, %c8190_7 : index
    %34 = arith.addi %33, %19 : index
    %reinterpret_cast_8 = memref.reinterpret_cast %alloc_3 to offset: [%34], sizes: [512, %22], strides: [8190, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
    cf.br ^bb25(%c0 : index)
  ^bb25(%35: index):  // 2 preds: ^bb24, ^bb32
    %36 = arith.cmpi slt, %35, %c512 : index
    cf.cond_br %36, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%37: index):  // 2 preds: ^bb26, ^bb31
    %38 = arith.cmpi slt, %37, %22 : index
    cf.cond_br %38, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    cf.br ^bb29(%c0 : index)
  ^bb29(%39: index):  // 2 preds: ^bb28, ^bb30
    %40 = arith.cmpi slt, %39, %26 : index
    cf.cond_br %40, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %41 = memref.load %reinterpret_cast_6[%35, %39] : memref<512x?xf64, strided<[8191, 1], offset: ?>>
    %42 = memref.load %reinterpret_cast[%39, %37] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
    %43 = memref.load %reinterpret_cast_8[%35, %37] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
    %44 = arith.mulf %41, %42 : f64
    %45 = arith.addf %43, %44 : f64
    memref.store %45, %reinterpret_cast_8[%35, %37] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
    %46 = arith.addi %39, %c1 : index
    cf.br ^bb29(%46 : index)
  ^bb31:  // pred: ^bb29
    %47 = arith.addi %37, %c1 : index
    cf.br ^bb27(%47 : index)
  ^bb32:  // pred: ^bb27
    %48 = arith.addi %35, %c1 : index
    cf.br ^bb25(%48 : index)
  ^bb33:  // pred: ^bb25
    %49 = arith.addi %29, %c512 : index
    cf.br ^bb23(%49 : index)
  ^bb34:  // pred: ^bb23
    %50 = arith.addi %23, %c512 : index
    cf.br ^bb21(%50 : index)
  ^bb35:  // pred: ^bb21
    %51 = arith.addi %19, %c512 : index
    cf.br ^bb19(%51 : index)
  ^bb36:  // pred: ^bb19
    %52 = call @getTime() : () -> f64
    %alloc_9 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_9[%c0] : memref<1xf64>
    cf.br ^bb37(%c0 : index)
  ^bb37(%53: index):  // 2 preds: ^bb36, ^bb41
    %54 = arith.cmpi slt, %53, %c8192 : index
    cf.cond_br %54, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    cf.br ^bb39(%c0 : index)
  ^bb39(%55: index):  // 2 preds: ^bb38, ^bb40
    %56 = arith.cmpi slt, %55, %c8190 : index
    cf.cond_br %56, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %57 = memref.load %alloc_3[%53, %55] : memref<8192x8190xf64>
    %58 = memref.load %alloc_9[%c0] : memref<1xf64>
    %59 = arith.addf %57, %58 : f64
    memref.store %59, %alloc_9[%c0] : memref<1xf64>
    %60 = arith.addi %55, %c1 : index
    cf.br ^bb39(%60 : index)
  ^bb41:  // pred: ^bb39
    %61 = arith.addi %53, %c1 : index
    cf.br ^bb37(%61 : index)
  ^bb42:  // pred: ^bb37
    %62 = memref.load %alloc_9[%c0] : memref<1xf64>
    call @printF64(%62) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%18, %52) : (f64, f64) -> ()
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
    %c8191 = arith.constant 8191 : index
    %c8190 = arith.constant 8190 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8191xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c8192 : index
    llvm.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c8191 : index
    llvm.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<8192x8191xf64>
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb3(%4 : index)
  ^bb5:  // pred: ^bb3
    %5 = arith.addi %0, %c1 : index
    cf.br ^bb1(%5 : index)
  ^bb6:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb11
    %7 = arith.cmpi slt, %6, %c8191 : index
    llvm.cond_br %7, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
    %9 = arith.cmpi slt, %8, %c8190 : index
    llvm.cond_br %9, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    memref.store %cst_0, %alloc_2[%6, %8] : memref<8191x8190xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb9(%10 : index)
  ^bb11:  // pred: ^bb9
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb7(%11 : index)
  ^bb12:  // pred: ^bb7
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8192x8190xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c8192 : index
    llvm.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c8190 : index
    llvm.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<8192x8190xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    %18 = call @getTime() : () -> f64
    cf.br ^bb19(%c0 : index)
  ^bb19(%19: index):  // 2 preds: ^bb18, ^bb35
    %20 = arith.cmpi slt, %19, %c8190 : index
    llvm.cond_br %20, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    %21 = arith.subi %c8190, %19 : index
    %22 = arith.minsi %21, %c512 : index
    cf.br ^bb21(%c0 : index)
  ^bb21(%23: index):  // 2 preds: ^bb20, ^bb34
    %24 = arith.cmpi slt, %23, %c8191 : index
    llvm.cond_br %24, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %25 = arith.subi %c8191, %23 : index
    %26 = arith.minsi %25, %c512 : index
    %c8190_4 = arith.constant 8190 : index
    %27 = arith.muli %23, %c8190_4 : index
    %28 = arith.addi %27, %19 : index
    %reinterpret_cast = memref.reinterpret_cast %alloc_2 to offset: [%28], sizes: [%26, %22], strides: [8190, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
    cf.br ^bb23(%c0 : index)
  ^bb23(%29: index):  // 2 preds: ^bb22, ^bb33
    %30 = arith.cmpi slt, %29, %c8192 : index
    llvm.cond_br %30, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %c8191_5 = arith.constant 8191 : index
    %31 = arith.muli %29, %c8191_5 : index
    %32 = arith.addi %31, %23 : index
    %reinterpret_cast_6 = memref.reinterpret_cast %alloc to offset: [%32], sizes: [512, %26], strides: [8191, 1] : memref<8192x8191xf64> to memref<512x?xf64, strided<[8191, 1], offset: ?>>
    %c8190_7 = arith.constant 8190 : index
    %33 = arith.muli %29, %c8190_7 : index
    %34 = arith.addi %33, %19 : index
    %reinterpret_cast_8 = memref.reinterpret_cast %alloc_3 to offset: [%34], sizes: [512, %22], strides: [8190, 1] : memref<8192x8190xf64> to memref<512x?xf64, strided<[8190, 1], offset: ?>>
    cf.br ^bb25(%c0 : index)
  ^bb25(%35: index):  // 2 preds: ^bb24, ^bb32
    %36 = arith.cmpi slt, %35, %c512 : index
    llvm.cond_br %36, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%37: index):  // 2 preds: ^bb26, ^bb31
    %38 = arith.cmpi slt, %37, %22 : index
    llvm.cond_br %38, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    cf.br ^bb29(%c0 : index)
  ^bb29(%39: index):  // 2 preds: ^bb28, ^bb30
    %40 = arith.cmpi slt, %39, %26 : index
    llvm.cond_br %40, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %41 = memref.load %reinterpret_cast_6[%35, %39] : memref<512x?xf64, strided<[8191, 1], offset: ?>>
    %42 = memref.load %reinterpret_cast[%39, %37] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
    %43 = memref.load %reinterpret_cast_8[%35, %37] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
    %44 = arith.mulf %41, %42 : f64
    %45 = arith.addf %43, %44 : f64
    memref.store %45, %reinterpret_cast_8[%35, %37] : memref<512x?xf64, strided<[8190, 1], offset: ?>>
    %46 = arith.addi %39, %c1 : index
    cf.br ^bb29(%46 : index)
  ^bb31:  // pred: ^bb29
    %47 = arith.addi %37, %c1 : index
    cf.br ^bb27(%47 : index)
  ^bb32:  // pred: ^bb27
    %48 = arith.addi %35, %c1 : index
    cf.br ^bb25(%48 : index)
  ^bb33:  // pred: ^bb25
    %49 = arith.addi %29, %c512 : index
    cf.br ^bb23(%49 : index)
  ^bb34:  // pred: ^bb23
    %50 = arith.addi %23, %c512 : index
    cf.br ^bb21(%50 : index)
  ^bb35:  // pred: ^bb21
    %51 = arith.addi %19, %c512 : index
    cf.br ^bb19(%51 : index)
  ^bb36:  // pred: ^bb19
    %52 = call @getTime() : () -> f64
    %alloc_9 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_9[%c0] : memref<1xf64>
    cf.br ^bb37(%c0 : index)
  ^bb37(%53: index):  // 2 preds: ^bb36, ^bb41
    %54 = arith.cmpi slt, %53, %c8192 : index
    llvm.cond_br %54, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    cf.br ^bb39(%c0 : index)
  ^bb39(%55: index):  // 2 preds: ^bb38, ^bb40
    %56 = arith.cmpi slt, %55, %c8190 : index
    llvm.cond_br %56, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %57 = memref.load %alloc_3[%53, %55] : memref<8192x8190xf64>
    %58 = memref.load %alloc_9[%c0] : memref<1xf64>
    %59 = arith.addf %57, %58 : f64
    memref.store %59, %alloc_9[%c0] : memref<1xf64>
    %60 = arith.addi %55, %c1 : index
    cf.br ^bb39(%60 : index)
  ^bb41:  // pred: ^bb39
    %61 = arith.addi %53, %c1 : index
    cf.br ^bb37(%61 : index)
  ^bb42:  // pred: ^bb37
    %62 = memref.load %alloc_9[%c0] : memref<1xf64>
    call @printF64(%62) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%18, %52) : (f64, f64) -> ()
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
    %c8191 = arith.constant 8191 : index
    %c8190 = arith.constant 8190 : index
    %c0 = arith.constant 0 : index
    %0 = builtin.unrealized_conversion_cast %c0 : index to i64
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %1 = llvm.mlir.constant(8192 : index) : i64
    %2 = llvm.mlir.constant(8191 : index) : i64
    %3 = llvm.mlir.constant(1 : index) : i64
    %4 = llvm.mlir.constant(67100672 : index) : i64
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
    %32 = arith.cmpi slt, %30, %c8191 : index
    llvm.cond_br %32, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %33 = llvm.extractvalue %26[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %34 = llvm.mlir.constant(8191 : index) : i64
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
    %40 = llvm.mlir.constant(8191 : index) : i64
    %41 = llvm.mlir.constant(8190 : index) : i64
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.mlir.constant(67084290 : index) : i64
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
    %68 = arith.cmpi slt, %66, %c8191 : index
    llvm.cond_br %68, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    cf.br ^bb9(%c0 : index)
  ^bb9(%69: index):  // 2 preds: ^bb8, ^bb10
    %70 = builtin.unrealized_conversion_cast %69 : index to i64
    %71 = arith.cmpi slt, %69, %c8190 : index
    llvm.cond_br %71, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %72 = llvm.extractvalue %65[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %73 = llvm.mlir.constant(8190 : index) : i64
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
    %80 = llvm.mlir.constant(8190 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(67092480 : index) : i64
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
    %110 = arith.cmpi slt, %108, %c8190 : index
    llvm.cond_br %110, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %111 = llvm.extractvalue %104[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %112 = llvm.mlir.constant(8190 : index) : i64
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
    %120 = arith.cmpi slt, %119, %c8190 : index
    llvm.cond_br %120, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    %121 = arith.subi %c8190, %119 : index
    %122 = arith.minsi %121, %c512 : index
    %123 = builtin.unrealized_conversion_cast %122 : index to i64
    cf.br ^bb21(%c0 : index)
  ^bb21(%124: index):  // 2 preds: ^bb20, ^bb34
    %125 = arith.cmpi slt, %124, %c8191 : index
    llvm.cond_br %125, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %126 = arith.subi %c8191, %124 : index
    %127 = arith.minsi %126, %c512 : index
    %128 = builtin.unrealized_conversion_cast %127 : index to i64
    %c8190_2 = arith.constant 8190 : index
    %129 = arith.muli %124, %c8190_2 : index
    %130 = arith.addi %129, %119 : index
    %131 = builtin.unrealized_conversion_cast %130 : index to i64
    %132 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %133 = llvm.extractvalue %65[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %134 = llvm.extractvalue %65[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %135 = llvm.insertvalue %133, %132[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %136 = llvm.insertvalue %134, %135[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %137 = llvm.insertvalue %131, %136[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %138 = llvm.insertvalue %128, %137[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %139 = llvm.mlir.constant(8190 : index) : i64
    %140 = llvm.insertvalue %139, %138[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %141 = llvm.insertvalue %123, %140[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.insertvalue %142, %141[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    cf.br ^bb23(%c0 : index)
  ^bb23(%144: index):  // 2 preds: ^bb22, ^bb33
    %145 = arith.cmpi slt, %144, %c8192 : index
    llvm.cond_br %145, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %c8191_3 = arith.constant 8191 : index
    %146 = arith.muli %144, %c8191_3 : index
    %147 = arith.addi %146, %124 : index
    %148 = builtin.unrealized_conversion_cast %147 : index to i64
    %149 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %150 = llvm.extractvalue %26[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %151 = llvm.extractvalue %26[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %152 = llvm.insertvalue %150, %149[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %153 = llvm.insertvalue %151, %152[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %154 = llvm.insertvalue %148, %153[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %155 = llvm.mlir.constant(512 : index) : i64
    %156 = llvm.insertvalue %155, %154[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %157 = llvm.mlir.constant(8191 : index) : i64
    %158 = llvm.insertvalue %157, %156[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %159 = llvm.insertvalue %128, %158[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.insertvalue %160, %159[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %c8190_4 = arith.constant 8190 : index
    %162 = arith.muli %144, %c8190_4 : index
    %163 = arith.addi %162, %119 : index
    %164 = builtin.unrealized_conversion_cast %163 : index to i64
    %165 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %166 = llvm.extractvalue %104[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %167 = llvm.extractvalue %104[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %168 = llvm.insertvalue %166, %165[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %169 = llvm.insertvalue %167, %168[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %170 = llvm.insertvalue %164, %169[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %171 = llvm.mlir.constant(512 : index) : i64
    %172 = llvm.insertvalue %171, %170[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %173 = llvm.mlir.constant(8190 : index) : i64
    %174 = llvm.insertvalue %173, %172[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %175 = llvm.insertvalue %123, %174[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.insertvalue %176, %175[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    cf.br ^bb25(%c0 : index)
  ^bb25(%178: index):  // 2 preds: ^bb24, ^bb32
    %179 = builtin.unrealized_conversion_cast %178 : index to i64
    %180 = arith.cmpi slt, %178, %c512 : index
    llvm.cond_br %180, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%181: index):  // 2 preds: ^bb26, ^bb31
    %182 = builtin.unrealized_conversion_cast %181 : index to i64
    %183 = arith.cmpi slt, %181, %122 : index
    llvm.cond_br %183, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    cf.br ^bb29(%c0 : index)
  ^bb29(%184: index):  // 2 preds: ^bb28, ^bb30
    %185 = builtin.unrealized_conversion_cast %184 : index to i64
    %186 = arith.cmpi slt, %184, %127 : index
    llvm.cond_br %186, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %187 = llvm.extractvalue %161[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %188 = llvm.extractvalue %161[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %189 = llvm.getelementptr %187[%188] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %190 = llvm.mlir.constant(8191 : index) : i64
    %191 = llvm.mul %179, %190 : i64
    %192 = llvm.add %191, %185 : i64
    %193 = llvm.getelementptr %189[%192] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %194 = llvm.load %193 : !llvm.ptr -> f64
    %195 = llvm.extractvalue %143[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %196 = llvm.extractvalue %143[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %197 = llvm.getelementptr %195[%196] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %198 = llvm.mlir.constant(8190 : index) : i64
    %199 = llvm.mul %185, %198 : i64
    %200 = llvm.add %199, %182 : i64
    %201 = llvm.getelementptr %197[%200] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %202 = llvm.load %201 : !llvm.ptr -> f64
    %203 = llvm.extractvalue %177[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %204 = llvm.extractvalue %177[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %205 = llvm.getelementptr %203[%204] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %206 = llvm.mlir.constant(8190 : index) : i64
    %207 = llvm.mul %179, %206 : i64
    %208 = llvm.add %207, %182 : i64
    %209 = llvm.getelementptr %205[%208] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %210 = llvm.load %209 : !llvm.ptr -> f64
    %211 = arith.mulf %194, %202 : f64
    %212 = arith.addf %210, %211 : f64
    %213 = llvm.extractvalue %177[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %214 = llvm.extractvalue %177[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %215 = llvm.getelementptr %213[%214] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %216 = llvm.mlir.constant(8190 : index) : i64
    %217 = llvm.mul %179, %216 : i64
    %218 = llvm.add %217, %182 : i64
    %219 = llvm.getelementptr %215[%218] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %212, %219 : f64, !llvm.ptr
    %220 = arith.addi %184, %c1 : index
    cf.br ^bb29(%220 : index)
  ^bb31:  // pred: ^bb29
    %221 = arith.addi %181, %c1 : index
    cf.br ^bb27(%221 : index)
  ^bb32:  // pred: ^bb27
    %222 = arith.addi %178, %c1 : index
    cf.br ^bb25(%222 : index)
  ^bb33:  // pred: ^bb25
    %223 = arith.addi %144, %c512 : index
    cf.br ^bb23(%223 : index)
  ^bb34:  // pred: ^bb23
    %224 = arith.addi %124, %c512 : index
    cf.br ^bb21(%224 : index)
  ^bb35:  // pred: ^bb21
    %225 = arith.addi %119, %c512 : index
    cf.br ^bb19(%225 : index)
  ^bb36:  // pred: ^bb19
    %226 = call @getTime() : () -> f64
    %227 = llvm.mlir.constant(1 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    %229 = llvm.mlir.zero : !llvm.ptr
    %230 = llvm.getelementptr %229[%227] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %231 = llvm.ptrtoint %230 : !llvm.ptr to i64
    %232 = llvm.call @malloc(%231) : (i64) -> !llvm.ptr
    %233 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %234 = llvm.insertvalue %232, %233[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %235 = llvm.insertvalue %232, %234[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %236 = llvm.mlir.constant(0 : index) : i64
    %237 = llvm.insertvalue %236, %235[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %238 = llvm.insertvalue %227, %237[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %239 = llvm.insertvalue %228, %238[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %240 = llvm.extractvalue %239[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %241 = llvm.getelementptr %240[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst, %241 : f64, !llvm.ptr
    cf.br ^bb37(%c0 : index)
  ^bb37(%242: index):  // 2 preds: ^bb36, ^bb41
    %243 = builtin.unrealized_conversion_cast %242 : index to i64
    %244 = arith.cmpi slt, %242, %c8192 : index
    llvm.cond_br %244, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    cf.br ^bb39(%c0 : index)
  ^bb39(%245: index):  // 2 preds: ^bb38, ^bb40
    %246 = builtin.unrealized_conversion_cast %245 : index to i64
    %247 = arith.cmpi slt, %245, %c8190 : index
    llvm.cond_br %247, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %248 = llvm.extractvalue %104[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %249 = llvm.mlir.constant(8190 : index) : i64
    %250 = llvm.mul %243, %249 : i64
    %251 = llvm.add %250, %246 : i64
    %252 = llvm.getelementptr %248[%251] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %253 = llvm.load %252 : !llvm.ptr -> f64
    %254 = llvm.extractvalue %239[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %255 = llvm.getelementptr %254[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %256 = llvm.load %255 : !llvm.ptr -> f64
    %257 = arith.addf %253, %256 : f64
    %258 = llvm.extractvalue %239[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %259 = llvm.getelementptr %258[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %257, %259 : f64, !llvm.ptr
    %260 = arith.addi %245, %c1 : index
    cf.br ^bb39(%260 : index)
  ^bb41:  // pred: ^bb39
    %261 = arith.addi %242, %c1 : index
    cf.br ^bb37(%261 : index)
  ^bb42:  // pred: ^bb37
    %262 = llvm.extractvalue %239[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %263 = llvm.getelementptr %262[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %264 = llvm.load %263 : !llvm.ptr -> f64
    call @printF64(%264) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%118, %226) : (f64, f64) -> ()
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
    %3 = llvm.mlir.constant(8191 : index) : i64
    %4 = llvm.mlir.constant(8190 : index) : i64
    %5 = llvm.mlir.constant(0 : index) : i64
    %6 = builtin.unrealized_conversion_cast %5 : i64 to index
    %7 = builtin.unrealized_conversion_cast %6 : index to i64
    %8 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %9 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %10 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %11 = llvm.mlir.constant(8192 : index) : i64
    %12 = llvm.mlir.constant(8191 : index) : i64
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.mlir.constant(67100672 : index) : i64
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
    llvm.br ^bb1(%5 : i64)
  ^bb1(%37: i64):  // 2 preds: ^bb0, ^bb5
    %38 = builtin.unrealized_conversion_cast %37 : i64 to index
    %39 = builtin.unrealized_conversion_cast %38 : index to i64
    %40 = llvm.icmp "slt" %37, %2 : i64
    llvm.cond_br %40, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%5 : i64)
  ^bb3(%41: i64):  // 2 preds: ^bb2, ^bb4
    %42 = builtin.unrealized_conversion_cast %41 : i64 to index
    %43 = builtin.unrealized_conversion_cast %42 : index to i64
    %44 = llvm.icmp "slt" %41, %3 : i64
    llvm.cond_br %44, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %45 = llvm.extractvalue %36[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %46 = llvm.mlir.constant(8191 : index) : i64
    %47 = llvm.mul %39, %46 : i64
    %48 = llvm.add %47, %43 : i64
    %49 = llvm.getelementptr %45[%48] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %10, %49 : f64, !llvm.ptr
    %50 = llvm.add %41, %0 : i64
    llvm.br ^bb3(%50 : i64)
  ^bb5:  // pred: ^bb3
    %51 = llvm.add %37, %0 : i64
    llvm.br ^bb1(%51 : i64)
  ^bb6:  // pred: ^bb1
    %52 = llvm.mlir.constant(8191 : index) : i64
    %53 = llvm.mlir.constant(8190 : index) : i64
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.mlir.constant(67084290 : index) : i64
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
    llvm.br ^bb7(%5 : i64)
  ^bb7(%78: i64):  // 2 preds: ^bb6, ^bb11
    %79 = builtin.unrealized_conversion_cast %78 : i64 to index
    %80 = builtin.unrealized_conversion_cast %79 : index to i64
    %81 = llvm.icmp "slt" %78, %3 : i64
    llvm.cond_br %81, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%5 : i64)
  ^bb9(%82: i64):  // 2 preds: ^bb8, ^bb10
    %83 = builtin.unrealized_conversion_cast %82 : i64 to index
    %84 = builtin.unrealized_conversion_cast %83 : index to i64
    %85 = llvm.icmp "slt" %82, %4 : i64
    llvm.cond_br %85, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %86 = llvm.extractvalue %77[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %87 = llvm.mlir.constant(8190 : index) : i64
    %88 = llvm.mul %80, %87 : i64
    %89 = llvm.add %88, %84 : i64
    %90 = llvm.getelementptr %86[%89] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %9, %90 : f64, !llvm.ptr
    %91 = llvm.add %82, %0 : i64
    llvm.br ^bb9(%91 : i64)
  ^bb11:  // pred: ^bb9
    %92 = llvm.add %78, %0 : i64
    llvm.br ^bb7(%92 : i64)
  ^bb12:  // pred: ^bb7
    %93 = llvm.mlir.constant(8192 : index) : i64
    %94 = llvm.mlir.constant(8190 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.constant(67092480 : index) : i64
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
    llvm.br ^bb13(%5 : i64)
  ^bb13(%119: i64):  // 2 preds: ^bb12, ^bb17
    %120 = builtin.unrealized_conversion_cast %119 : i64 to index
    %121 = builtin.unrealized_conversion_cast %120 : index to i64
    %122 = llvm.icmp "slt" %119, %2 : i64
    llvm.cond_br %122, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%5 : i64)
  ^bb15(%123: i64):  // 2 preds: ^bb14, ^bb16
    %124 = builtin.unrealized_conversion_cast %123 : i64 to index
    %125 = builtin.unrealized_conversion_cast %124 : index to i64
    %126 = llvm.icmp "slt" %123, %4 : i64
    llvm.cond_br %126, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %127 = llvm.extractvalue %118[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %128 = llvm.mlir.constant(8190 : index) : i64
    %129 = llvm.mul %121, %128 : i64
    %130 = llvm.add %129, %125 : i64
    %131 = llvm.getelementptr %127[%130] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %131 : f64, !llvm.ptr
    %132 = llvm.add %123, %0 : i64
    llvm.br ^bb15(%132 : i64)
  ^bb17:  // pred: ^bb15
    %133 = llvm.add %119, %0 : i64
    llvm.br ^bb13(%133 : i64)
  ^bb18:  // pred: ^bb13
    %134 = llvm.call @getTime() : () -> f64
    llvm.br ^bb19(%5 : i64)
  ^bb19(%135: i64):  // 2 preds: ^bb18, ^bb35
    %136 = llvm.icmp "slt" %135, %4 : i64
    llvm.cond_br %136, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    %137 = llvm.sub %4, %135 : i64
    %138 = llvm.intr.smin(%137, %1)  : (i64, i64) -> i64
    %139 = builtin.unrealized_conversion_cast %138 : i64 to index
    %140 = builtin.unrealized_conversion_cast %139 : index to i64
    llvm.br ^bb21(%5 : i64)
  ^bb21(%141: i64):  // 2 preds: ^bb20, ^bb34
    %142 = llvm.icmp "slt" %141, %3 : i64
    llvm.cond_br %142, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %143 = llvm.sub %3, %141 : i64
    %144 = llvm.intr.smin(%143, %1)  : (i64, i64) -> i64
    %145 = builtin.unrealized_conversion_cast %144 : i64 to index
    %146 = builtin.unrealized_conversion_cast %145 : index to i64
    %147 = llvm.mlir.constant(8190 : index) : i64
    %148 = llvm.mul %141, %147 : i64
    %149 = llvm.add %148, %135 : i64
    %150 = builtin.unrealized_conversion_cast %149 : i64 to index
    %151 = builtin.unrealized_conversion_cast %150 : index to i64
    %152 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %153 = llvm.extractvalue %77[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %154 = llvm.extractvalue %77[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %155 = llvm.insertvalue %153, %152[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %156 = llvm.insertvalue %154, %155[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %157 = llvm.insertvalue %151, %156[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %158 = llvm.insertvalue %146, %157[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %159 = llvm.mlir.constant(8190 : index) : i64
    %160 = llvm.insertvalue %159, %158[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %161 = llvm.insertvalue %140, %160[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.insertvalue %162, %161[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.br ^bb23(%5 : i64)
  ^bb23(%164: i64):  // 2 preds: ^bb22, ^bb33
    %165 = llvm.icmp "slt" %164, %2 : i64
    llvm.cond_br %165, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %166 = llvm.mlir.constant(8191 : index) : i64
    %167 = llvm.mul %164, %166 : i64
    %168 = llvm.add %167, %141 : i64
    %169 = builtin.unrealized_conversion_cast %168 : i64 to index
    %170 = builtin.unrealized_conversion_cast %169 : index to i64
    %171 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %172 = llvm.extractvalue %36[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %173 = llvm.extractvalue %36[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %174 = llvm.insertvalue %172, %171[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %175 = llvm.insertvalue %173, %174[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %176 = llvm.insertvalue %170, %175[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %177 = llvm.mlir.constant(512 : index) : i64
    %178 = llvm.insertvalue %177, %176[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %179 = llvm.mlir.constant(8191 : index) : i64
    %180 = llvm.insertvalue %179, %178[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %181 = llvm.insertvalue %146, %180[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.insertvalue %182, %181[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %184 = llvm.mlir.constant(8190 : index) : i64
    %185 = llvm.mul %164, %184 : i64
    %186 = llvm.add %185, %135 : i64
    %187 = builtin.unrealized_conversion_cast %186 : i64 to index
    %188 = builtin.unrealized_conversion_cast %187 : index to i64
    %189 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %190 = llvm.extractvalue %118[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %191 = llvm.extractvalue %118[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %192 = llvm.insertvalue %190, %189[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %193 = llvm.insertvalue %191, %192[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %194 = llvm.insertvalue %188, %193[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %195 = llvm.mlir.constant(512 : index) : i64
    %196 = llvm.insertvalue %195, %194[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %197 = llvm.mlir.constant(8190 : index) : i64
    %198 = llvm.insertvalue %197, %196[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %199 = llvm.insertvalue %140, %198[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.insertvalue %200, %199[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.br ^bb25(%5 : i64)
  ^bb25(%202: i64):  // 2 preds: ^bb24, ^bb32
    %203 = builtin.unrealized_conversion_cast %202 : i64 to index
    %204 = builtin.unrealized_conversion_cast %203 : index to i64
    %205 = llvm.icmp "slt" %202, %1 : i64
    llvm.cond_br %205, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%5 : i64)
  ^bb27(%206: i64):  // 2 preds: ^bb26, ^bb31
    %207 = builtin.unrealized_conversion_cast %206 : i64 to index
    %208 = builtin.unrealized_conversion_cast %207 : index to i64
    %209 = llvm.icmp "slt" %206, %138 : i64
    llvm.cond_br %209, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    llvm.br ^bb29(%5 : i64)
  ^bb29(%210: i64):  // 2 preds: ^bb28, ^bb30
    %211 = builtin.unrealized_conversion_cast %210 : i64 to index
    %212 = builtin.unrealized_conversion_cast %211 : index to i64
    %213 = llvm.icmp "slt" %210, %144 : i64
    llvm.cond_br %213, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %214 = llvm.extractvalue %183[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %215 = llvm.extractvalue %183[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %216 = llvm.getelementptr %214[%215] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %217 = llvm.mlir.constant(8191 : index) : i64
    %218 = llvm.mul %204, %217 : i64
    %219 = llvm.add %218, %212 : i64
    %220 = llvm.getelementptr %216[%219] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %221 = llvm.load %220 : !llvm.ptr -> f64
    %222 = llvm.extractvalue %163[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %223 = llvm.extractvalue %163[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %224 = llvm.getelementptr %222[%223] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %225 = llvm.mlir.constant(8190 : index) : i64
    %226 = llvm.mul %212, %225 : i64
    %227 = llvm.add %226, %208 : i64
    %228 = llvm.getelementptr %224[%227] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %229 = llvm.load %228 : !llvm.ptr -> f64
    %230 = llvm.extractvalue %201[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %231 = llvm.extractvalue %201[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %232 = llvm.getelementptr %230[%231] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %233 = llvm.mlir.constant(8190 : index) : i64
    %234 = llvm.mul %204, %233 : i64
    %235 = llvm.add %234, %208 : i64
    %236 = llvm.getelementptr %232[%235] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %237 = llvm.load %236 : !llvm.ptr -> f64
    %238 = llvm.fmul %221, %229  : f64
    %239 = llvm.fadd %237, %238  : f64
    %240 = llvm.extractvalue %201[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %241 = llvm.extractvalue %201[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %242 = llvm.getelementptr %240[%241] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %243 = llvm.mlir.constant(8190 : index) : i64
    %244 = llvm.mul %204, %243 : i64
    %245 = llvm.add %244, %208 : i64
    %246 = llvm.getelementptr %242[%245] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %239, %246 : f64, !llvm.ptr
    %247 = llvm.add %210, %0 : i64
    llvm.br ^bb29(%247 : i64)
  ^bb31:  // pred: ^bb29
    %248 = llvm.add %206, %0 : i64
    llvm.br ^bb27(%248 : i64)
  ^bb32:  // pred: ^bb27
    %249 = llvm.add %202, %0 : i64
    llvm.br ^bb25(%249 : i64)
  ^bb33:  // pred: ^bb25
    %250 = llvm.add %164, %1 : i64
    llvm.br ^bb23(%250 : i64)
  ^bb34:  // pred: ^bb23
    %251 = llvm.add %141, %1 : i64
    llvm.br ^bb21(%251 : i64)
  ^bb35:  // pred: ^bb21
    %252 = llvm.add %135, %1 : i64
    llvm.br ^bb19(%252 : i64)
  ^bb36:  // pred: ^bb19
    %253 = llvm.call @getTime() : () -> f64
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mlir.zero : !llvm.ptr
    %257 = llvm.getelementptr %256[%254] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %258 = llvm.ptrtoint %257 : !llvm.ptr to i64
    %259 = llvm.call @malloc(%258) : (i64) -> !llvm.ptr
    %260 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %261 = llvm.insertvalue %259, %260[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %262 = llvm.insertvalue %259, %261[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %263 = llvm.mlir.constant(0 : index) : i64
    %264 = llvm.insertvalue %263, %262[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %265 = llvm.insertvalue %254, %264[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %266 = llvm.insertvalue %255, %265[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %267 = llvm.extractvalue %266[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %268 = llvm.getelementptr %267[%7] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %268 : f64, !llvm.ptr
    llvm.br ^bb37(%5 : i64)
  ^bb37(%269: i64):  // 2 preds: ^bb36, ^bb41
    %270 = builtin.unrealized_conversion_cast %269 : i64 to index
    %271 = builtin.unrealized_conversion_cast %270 : index to i64
    %272 = llvm.icmp "slt" %269, %2 : i64
    llvm.cond_br %272, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    llvm.br ^bb39(%5 : i64)
  ^bb39(%273: i64):  // 2 preds: ^bb38, ^bb40
    %274 = builtin.unrealized_conversion_cast %273 : i64 to index
    %275 = builtin.unrealized_conversion_cast %274 : index to i64
    %276 = llvm.icmp "slt" %273, %4 : i64
    llvm.cond_br %276, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %277 = llvm.extractvalue %118[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %278 = llvm.mlir.constant(8190 : index) : i64
    %279 = llvm.mul %271, %278 : i64
    %280 = llvm.add %279, %275 : i64
    %281 = llvm.getelementptr %277[%280] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %282 = llvm.load %281 : !llvm.ptr -> f64
    %283 = llvm.extractvalue %266[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %284 = llvm.getelementptr %283[%7] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %285 = llvm.load %284 : !llvm.ptr -> f64
    %286 = llvm.fadd %282, %285  : f64
    %287 = llvm.extractvalue %266[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %288 = llvm.getelementptr %287[%7] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %286, %288 : f64, !llvm.ptr
    %289 = llvm.add %273, %0 : i64
    llvm.br ^bb39(%289 : i64)
  ^bb41:  // pred: ^bb39
    %290 = llvm.add %269, %0 : i64
    llvm.br ^bb37(%290 : i64)
  ^bb42:  // pred: ^bb37
    %291 = llvm.extractvalue %266[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %292 = llvm.getelementptr %291[%7] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %293 = llvm.load %292 : !llvm.ptr -> f64
    llvm.call @printF64(%293) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%134, %253) : (f64, f64) -> ()
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
    %3 = llvm.mlir.constant(8191 : index) : i64
    %4 = llvm.mlir.constant(8190 : index) : i64
    %5 = llvm.mlir.constant(0 : index) : i64
    %6 = builtin.unrealized_conversion_cast %5 : i64 to index
    %7 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %8 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %9 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %10 = llvm.mlir.constant(8192 : index) : i64
    %11 = llvm.mlir.constant(8191 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.mlir.constant(67100672 : index) : i64
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
    llvm.br ^bb1(%5 : i64)
  ^bb1(%36: i64):  // 2 preds: ^bb0, ^bb5
    %37 = builtin.unrealized_conversion_cast %36 : i64 to index
    %38 = llvm.icmp "slt" %36, %2 : i64
    llvm.cond_br %38, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%5 : i64)
  ^bb3(%39: i64):  // 2 preds: ^bb2, ^bb4
    %40 = builtin.unrealized_conversion_cast %39 : i64 to index
    %41 = llvm.icmp "slt" %39, %3 : i64
    llvm.cond_br %41, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %42 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %43 = llvm.mlir.constant(8191 : index) : i64
    %44 = llvm.mul %36, %43 : i64
    %45 = llvm.add %44, %39 : i64
    %46 = llvm.getelementptr %42[%45] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %9, %46 : f64, !llvm.ptr
    %47 = llvm.add %39, %0 : i64
    llvm.br ^bb3(%47 : i64)
  ^bb5:  // pred: ^bb3
    %48 = llvm.add %36, %0 : i64
    llvm.br ^bb1(%48 : i64)
  ^bb6:  // pred: ^bb1
    %49 = llvm.mlir.constant(8191 : index) : i64
    %50 = llvm.mlir.constant(8190 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.mlir.constant(67084290 : index) : i64
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
    llvm.br ^bb7(%5 : i64)
  ^bb7(%75: i64):  // 2 preds: ^bb6, ^bb11
    %76 = builtin.unrealized_conversion_cast %75 : i64 to index
    %77 = llvm.icmp "slt" %75, %3 : i64
    llvm.cond_br %77, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%5 : i64)
  ^bb9(%78: i64):  // 2 preds: ^bb8, ^bb10
    %79 = builtin.unrealized_conversion_cast %78 : i64 to index
    %80 = llvm.icmp "slt" %78, %4 : i64
    llvm.cond_br %80, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %81 = llvm.extractvalue %74[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %82 = llvm.mlir.constant(8190 : index) : i64
    %83 = llvm.mul %75, %82 : i64
    %84 = llvm.add %83, %78 : i64
    %85 = llvm.getelementptr %81[%84] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %85 : f64, !llvm.ptr
    %86 = llvm.add %78, %0 : i64
    llvm.br ^bb9(%86 : i64)
  ^bb11:  // pred: ^bb9
    %87 = llvm.add %75, %0 : i64
    llvm.br ^bb7(%87 : i64)
  ^bb12:  // pred: ^bb7
    %88 = llvm.mlir.constant(8192 : index) : i64
    %89 = llvm.mlir.constant(8190 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.mlir.constant(67092480 : index) : i64
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
    llvm.br ^bb13(%5 : i64)
  ^bb13(%114: i64):  // 2 preds: ^bb12, ^bb17
    %115 = builtin.unrealized_conversion_cast %114 : i64 to index
    %116 = llvm.icmp "slt" %114, %2 : i64
    llvm.cond_br %116, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%5 : i64)
  ^bb15(%117: i64):  // 2 preds: ^bb14, ^bb16
    %118 = builtin.unrealized_conversion_cast %117 : i64 to index
    %119 = llvm.icmp "slt" %117, %4 : i64
    llvm.cond_br %119, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %120 = llvm.extractvalue %113[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %121 = llvm.mlir.constant(8190 : index) : i64
    %122 = llvm.mul %114, %121 : i64
    %123 = llvm.add %122, %117 : i64
    %124 = llvm.getelementptr %120[%123] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %124 : f64, !llvm.ptr
    %125 = llvm.add %117, %0 : i64
    llvm.br ^bb15(%125 : i64)
  ^bb17:  // pred: ^bb15
    %126 = llvm.add %114, %0 : i64
    llvm.br ^bb13(%126 : i64)
  ^bb18:  // pred: ^bb13
    %127 = llvm.call @getTime() : () -> f64
    llvm.br ^bb19(%5 : i64)
  ^bb19(%128: i64):  // 2 preds: ^bb18, ^bb35
    %129 = llvm.icmp "slt" %128, %4 : i64
    llvm.cond_br %129, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    %130 = llvm.sub %4, %128 : i64
    %131 = llvm.intr.smin(%130, %1)  : (i64, i64) -> i64
    %132 = builtin.unrealized_conversion_cast %131 : i64 to index
    llvm.br ^bb21(%5 : i64)
  ^bb21(%133: i64):  // 2 preds: ^bb20, ^bb34
    %134 = llvm.icmp "slt" %133, %3 : i64
    llvm.cond_br %134, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %135 = llvm.sub %3, %133 : i64
    %136 = llvm.intr.smin(%135, %1)  : (i64, i64) -> i64
    %137 = builtin.unrealized_conversion_cast %136 : i64 to index
    %138 = llvm.mlir.constant(8190 : index) : i64
    %139 = llvm.mul %133, %138 : i64
    %140 = llvm.add %139, %128 : i64
    %141 = builtin.unrealized_conversion_cast %140 : i64 to index
    %142 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %143 = llvm.extractvalue %74[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %144 = llvm.extractvalue %74[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %145 = llvm.insertvalue %143, %142[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %146 = llvm.insertvalue %144, %145[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %147 = llvm.insertvalue %140, %146[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %148 = llvm.insertvalue %136, %147[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %149 = llvm.mlir.constant(8190 : index) : i64
    %150 = llvm.insertvalue %149, %148[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %151 = llvm.insertvalue %131, %150[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.insertvalue %152, %151[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.br ^bb23(%5 : i64)
  ^bb23(%154: i64):  // 2 preds: ^bb22, ^bb33
    %155 = llvm.icmp "slt" %154, %2 : i64
    llvm.cond_br %155, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %156 = llvm.mlir.constant(8191 : index) : i64
    %157 = llvm.mul %154, %156 : i64
    %158 = llvm.add %157, %133 : i64
    %159 = builtin.unrealized_conversion_cast %158 : i64 to index
    %160 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %161 = llvm.extractvalue %35[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %162 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %163 = llvm.insertvalue %161, %160[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %164 = llvm.insertvalue %162, %163[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %165 = llvm.insertvalue %158, %164[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %166 = llvm.mlir.constant(512 : index) : i64
    %167 = llvm.insertvalue %166, %165[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %168 = llvm.mlir.constant(8191 : index) : i64
    %169 = llvm.insertvalue %168, %167[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %170 = llvm.insertvalue %136, %169[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.insertvalue %171, %170[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %173 = llvm.mlir.constant(8190 : index) : i64
    %174 = llvm.mul %154, %173 : i64
    %175 = llvm.add %174, %128 : i64
    %176 = builtin.unrealized_conversion_cast %175 : i64 to index
    %177 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %178 = llvm.extractvalue %113[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %179 = llvm.extractvalue %113[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %180 = llvm.insertvalue %178, %177[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %181 = llvm.insertvalue %179, %180[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %182 = llvm.insertvalue %175, %181[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %183 = llvm.mlir.constant(512 : index) : i64
    %184 = llvm.insertvalue %183, %182[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %185 = llvm.mlir.constant(8190 : index) : i64
    %186 = llvm.insertvalue %185, %184[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %187 = llvm.insertvalue %131, %186[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.insertvalue %188, %187[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.br ^bb25(%5 : i64)
  ^bb25(%190: i64):  // 2 preds: ^bb24, ^bb32
    %191 = builtin.unrealized_conversion_cast %190 : i64 to index
    %192 = llvm.icmp "slt" %190, %1 : i64
    llvm.cond_br %192, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%5 : i64)
  ^bb27(%193: i64):  // 2 preds: ^bb26, ^bb31
    %194 = builtin.unrealized_conversion_cast %193 : i64 to index
    %195 = llvm.icmp "slt" %193, %131 : i64
    llvm.cond_br %195, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    llvm.br ^bb29(%5 : i64)
  ^bb29(%196: i64):  // 2 preds: ^bb28, ^bb30
    %197 = builtin.unrealized_conversion_cast %196 : i64 to index
    %198 = llvm.icmp "slt" %196, %136 : i64
    llvm.cond_br %198, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %199 = llvm.extractvalue %172[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %200 = llvm.extractvalue %172[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %201 = llvm.getelementptr %199[%200] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %202 = llvm.mlir.constant(8191 : index) : i64
    %203 = llvm.mul %190, %202 : i64
    %204 = llvm.add %203, %196 : i64
    %205 = llvm.getelementptr %201[%204] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %206 = llvm.load %205 : !llvm.ptr -> f64
    %207 = llvm.extractvalue %153[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %208 = llvm.extractvalue %153[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %209 = llvm.getelementptr %207[%208] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %210 = llvm.mlir.constant(8190 : index) : i64
    %211 = llvm.mul %196, %210 : i64
    %212 = llvm.add %211, %193 : i64
    %213 = llvm.getelementptr %209[%212] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %214 = llvm.load %213 : !llvm.ptr -> f64
    %215 = llvm.extractvalue %189[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %216 = llvm.extractvalue %189[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %217 = llvm.getelementptr %215[%216] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %218 = llvm.mlir.constant(8190 : index) : i64
    %219 = llvm.mul %190, %218 : i64
    %220 = llvm.add %219, %193 : i64
    %221 = llvm.getelementptr %217[%220] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %222 = llvm.load %221 : !llvm.ptr -> f64
    %223 = llvm.fmul %206, %214  : f64
    %224 = llvm.fadd %222, %223  : f64
    %225 = llvm.extractvalue %189[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %226 = llvm.extractvalue %189[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %227 = llvm.getelementptr %225[%226] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %228 = llvm.mlir.constant(8190 : index) : i64
    %229 = llvm.mul %190, %228 : i64
    %230 = llvm.add %229, %193 : i64
    %231 = llvm.getelementptr %227[%230] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %224, %231 : f64, !llvm.ptr
    %232 = llvm.add %196, %0 : i64
    llvm.br ^bb29(%232 : i64)
  ^bb31:  // pred: ^bb29
    %233 = llvm.add %193, %0 : i64
    llvm.br ^bb27(%233 : i64)
  ^bb32:  // pred: ^bb27
    %234 = llvm.add %190, %0 : i64
    llvm.br ^bb25(%234 : i64)
  ^bb33:  // pred: ^bb25
    %235 = llvm.add %154, %1 : i64
    llvm.br ^bb23(%235 : i64)
  ^bb34:  // pred: ^bb23
    %236 = llvm.add %133, %1 : i64
    llvm.br ^bb21(%236 : i64)
  ^bb35:  // pred: ^bb21
    %237 = llvm.add %128, %1 : i64
    llvm.br ^bb19(%237 : i64)
  ^bb36:  // pred: ^bb19
    %238 = llvm.call @getTime() : () -> f64
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.mlir.zero : !llvm.ptr
    %242 = llvm.getelementptr %241[%239] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %243 = llvm.ptrtoint %242 : !llvm.ptr to i64
    %244 = llvm.call @malloc(%243) : (i64) -> !llvm.ptr
    %245 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %246 = llvm.insertvalue %244, %245[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %247 = llvm.insertvalue %244, %246[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %248 = llvm.mlir.constant(0 : index) : i64
    %249 = llvm.insertvalue %248, %247[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %250 = llvm.insertvalue %239, %249[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %251 = llvm.insertvalue %240, %250[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %252 = llvm.extractvalue %251[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %253 = llvm.getelementptr %252[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %253 : f64, !llvm.ptr
    llvm.br ^bb37(%5 : i64)
  ^bb37(%254: i64):  // 2 preds: ^bb36, ^bb41
    %255 = builtin.unrealized_conversion_cast %254 : i64 to index
    %256 = llvm.icmp "slt" %254, %2 : i64
    llvm.cond_br %256, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    llvm.br ^bb39(%5 : i64)
  ^bb39(%257: i64):  // 2 preds: ^bb38, ^bb40
    %258 = builtin.unrealized_conversion_cast %257 : i64 to index
    %259 = llvm.icmp "slt" %257, %4 : i64
    llvm.cond_br %259, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %260 = llvm.extractvalue %113[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %261 = llvm.mlir.constant(8190 : index) : i64
    %262 = llvm.mul %254, %261 : i64
    %263 = llvm.add %262, %257 : i64
    %264 = llvm.getelementptr %260[%263] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %265 = llvm.load %264 : !llvm.ptr -> f64
    %266 = llvm.extractvalue %251[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %267 = llvm.getelementptr %266[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %268 = llvm.load %267 : !llvm.ptr -> f64
    %269 = llvm.fadd %265, %268  : f64
    %270 = llvm.extractvalue %251[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %271 = llvm.getelementptr %270[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %269, %271 : f64, !llvm.ptr
    %272 = llvm.add %257, %0 : i64
    llvm.br ^bb39(%272 : i64)
  ^bb41:  // pred: ^bb39
    %273 = llvm.add %254, %0 : i64
    llvm.br ^bb37(%273 : i64)
  ^bb42:  // pred: ^bb37
    %274 = llvm.extractvalue %251[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %275 = llvm.getelementptr %274[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %276 = llvm.load %275 : !llvm.ptr -> f64
    llvm.call @printF64(%276) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%127, %238) : (f64, f64) -> ()
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
    %3 = llvm.mlir.constant(8191 : index) : i64
    %4 = llvm.mlir.constant(8190 : index) : i64
    %5 = llvm.mlir.constant(0 : index) : i64
    %6 = builtin.unrealized_conversion_cast %5 : i64 to index
    %7 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %8 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %9 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %10 = llvm.mlir.constant(8192 : index) : i64
    %11 = llvm.mlir.constant(8191 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.mlir.constant(67100672 : index) : i64
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
    llvm.br ^bb1(%5 : i64)
  ^bb1(%36: i64):  // 2 preds: ^bb0, ^bb5
    %37 = builtin.unrealized_conversion_cast %36 : i64 to index
    %38 = llvm.icmp "slt" %36, %2 : i64
    llvm.cond_br %38, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%5 : i64)
  ^bb3(%39: i64):  // 2 preds: ^bb2, ^bb4
    %40 = builtin.unrealized_conversion_cast %39 : i64 to index
    %41 = llvm.icmp "slt" %39, %3 : i64
    llvm.cond_br %41, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %42 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %43 = llvm.mlir.constant(8191 : index) : i64
    %44 = llvm.mul %36, %43 : i64
    %45 = llvm.add %44, %39 : i64
    %46 = llvm.getelementptr %42[%45] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %9, %46 : f64, !llvm.ptr
    %47 = llvm.add %39, %0 : i64
    llvm.br ^bb3(%47 : i64)
  ^bb5:  // pred: ^bb3
    %48 = llvm.add %36, %0 : i64
    llvm.br ^bb1(%48 : i64)
  ^bb6:  // pred: ^bb1
    %49 = llvm.mlir.constant(8191 : index) : i64
    %50 = llvm.mlir.constant(8190 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.mlir.constant(67084290 : index) : i64
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
    llvm.br ^bb7(%5 : i64)
  ^bb7(%75: i64):  // 2 preds: ^bb6, ^bb11
    %76 = builtin.unrealized_conversion_cast %75 : i64 to index
    %77 = llvm.icmp "slt" %75, %3 : i64
    llvm.cond_br %77, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%5 : i64)
  ^bb9(%78: i64):  // 2 preds: ^bb8, ^bb10
    %79 = builtin.unrealized_conversion_cast %78 : i64 to index
    %80 = llvm.icmp "slt" %78, %4 : i64
    llvm.cond_br %80, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %81 = llvm.extractvalue %74[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %82 = llvm.mlir.constant(8190 : index) : i64
    %83 = llvm.mul %75, %82 : i64
    %84 = llvm.add %83, %78 : i64
    %85 = llvm.getelementptr %81[%84] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %85 : f64, !llvm.ptr
    %86 = llvm.add %78, %0 : i64
    llvm.br ^bb9(%86 : i64)
  ^bb11:  // pred: ^bb9
    %87 = llvm.add %75, %0 : i64
    llvm.br ^bb7(%87 : i64)
  ^bb12:  // pred: ^bb7
    %88 = llvm.mlir.constant(8192 : index) : i64
    %89 = llvm.mlir.constant(8190 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.mlir.constant(67092480 : index) : i64
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
    llvm.br ^bb13(%5 : i64)
  ^bb13(%114: i64):  // 2 preds: ^bb12, ^bb17
    %115 = builtin.unrealized_conversion_cast %114 : i64 to index
    %116 = llvm.icmp "slt" %114, %2 : i64
    llvm.cond_br %116, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%5 : i64)
  ^bb15(%117: i64):  // 2 preds: ^bb14, ^bb16
    %118 = builtin.unrealized_conversion_cast %117 : i64 to index
    %119 = llvm.icmp "slt" %117, %4 : i64
    llvm.cond_br %119, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %120 = llvm.extractvalue %113[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %121 = llvm.mlir.constant(8190 : index) : i64
    %122 = llvm.mul %114, %121 : i64
    %123 = llvm.add %122, %117 : i64
    %124 = llvm.getelementptr %120[%123] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %124 : f64, !llvm.ptr
    %125 = llvm.add %117, %0 : i64
    llvm.br ^bb15(%125 : i64)
  ^bb17:  // pred: ^bb15
    %126 = llvm.add %114, %0 : i64
    llvm.br ^bb13(%126 : i64)
  ^bb18:  // pred: ^bb13
    %127 = llvm.call @getTime() : () -> f64
    llvm.br ^bb19(%5 : i64)
  ^bb19(%128: i64):  // 2 preds: ^bb18, ^bb35
    %129 = llvm.icmp "slt" %128, %4 : i64
    llvm.cond_br %129, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    %130 = llvm.sub %4, %128 : i64
    %131 = llvm.intr.smin(%130, %1)  : (i64, i64) -> i64
    %132 = builtin.unrealized_conversion_cast %131 : i64 to index
    llvm.br ^bb21(%5 : i64)
  ^bb21(%133: i64):  // 2 preds: ^bb20, ^bb34
    %134 = llvm.icmp "slt" %133, %3 : i64
    llvm.cond_br %134, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %135 = llvm.sub %3, %133 : i64
    %136 = llvm.intr.smin(%135, %1)  : (i64, i64) -> i64
    %137 = builtin.unrealized_conversion_cast %136 : i64 to index
    %138 = llvm.mlir.constant(8190 : index) : i64
    %139 = llvm.mul %133, %138 : i64
    %140 = llvm.add %139, %128 : i64
    %141 = builtin.unrealized_conversion_cast %140 : i64 to index
    %142 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %143 = llvm.extractvalue %74[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %144 = llvm.extractvalue %74[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %145 = llvm.insertvalue %143, %142[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %146 = llvm.insertvalue %144, %145[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %147 = llvm.insertvalue %140, %146[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %148 = llvm.insertvalue %136, %147[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %149 = llvm.mlir.constant(8190 : index) : i64
    %150 = llvm.insertvalue %149, %148[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %151 = llvm.insertvalue %131, %150[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.insertvalue %152, %151[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.br ^bb23(%5 : i64)
  ^bb23(%154: i64):  // 2 preds: ^bb22, ^bb33
    %155 = llvm.icmp "slt" %154, %2 : i64
    llvm.cond_br %155, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %156 = llvm.mlir.constant(8191 : index) : i64
    %157 = llvm.mul %154, %156 : i64
    %158 = llvm.add %157, %133 : i64
    %159 = builtin.unrealized_conversion_cast %158 : i64 to index
    %160 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %161 = llvm.extractvalue %35[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %162 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %163 = llvm.insertvalue %161, %160[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %164 = llvm.insertvalue %162, %163[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %165 = llvm.insertvalue %158, %164[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %166 = llvm.mlir.constant(512 : index) : i64
    %167 = llvm.insertvalue %166, %165[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %168 = llvm.mlir.constant(8191 : index) : i64
    %169 = llvm.insertvalue %168, %167[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %170 = llvm.insertvalue %136, %169[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.insertvalue %171, %170[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %173 = llvm.mlir.constant(8190 : index) : i64
    %174 = llvm.mul %154, %173 : i64
    %175 = llvm.add %174, %128 : i64
    %176 = builtin.unrealized_conversion_cast %175 : i64 to index
    %177 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %178 = llvm.extractvalue %113[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %179 = llvm.extractvalue %113[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %180 = llvm.insertvalue %178, %177[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %181 = llvm.insertvalue %179, %180[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %182 = llvm.insertvalue %175, %181[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %183 = llvm.mlir.constant(512 : index) : i64
    %184 = llvm.insertvalue %183, %182[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %185 = llvm.mlir.constant(8190 : index) : i64
    %186 = llvm.insertvalue %185, %184[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %187 = llvm.insertvalue %131, %186[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.insertvalue %188, %187[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.br ^bb25(%5 : i64)
  ^bb25(%190: i64):  // 2 preds: ^bb24, ^bb32
    %191 = builtin.unrealized_conversion_cast %190 : i64 to index
    %192 = llvm.icmp "slt" %190, %1 : i64
    llvm.cond_br %192, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%5 : i64)
  ^bb27(%193: i64):  // 2 preds: ^bb26, ^bb31
    %194 = builtin.unrealized_conversion_cast %193 : i64 to index
    %195 = llvm.icmp "slt" %193, %131 : i64
    llvm.cond_br %195, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    llvm.br ^bb29(%5 : i64)
  ^bb29(%196: i64):  // 2 preds: ^bb28, ^bb30
    %197 = builtin.unrealized_conversion_cast %196 : i64 to index
    %198 = llvm.icmp "slt" %196, %136 : i64
    llvm.cond_br %198, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %199 = llvm.extractvalue %172[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %200 = llvm.extractvalue %172[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %201 = llvm.getelementptr %199[%200] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %202 = llvm.mlir.constant(8191 : index) : i64
    %203 = llvm.mul %190, %202 : i64
    %204 = llvm.add %203, %196 : i64
    %205 = llvm.getelementptr %201[%204] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %206 = llvm.load %205 : !llvm.ptr -> f64
    %207 = llvm.extractvalue %153[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %208 = llvm.extractvalue %153[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %209 = llvm.getelementptr %207[%208] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %210 = llvm.mlir.constant(8190 : index) : i64
    %211 = llvm.mul %196, %210 : i64
    %212 = llvm.add %211, %193 : i64
    %213 = llvm.getelementptr %209[%212] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %214 = llvm.load %213 : !llvm.ptr -> f64
    %215 = llvm.extractvalue %189[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %216 = llvm.extractvalue %189[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %217 = llvm.getelementptr %215[%216] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %218 = llvm.mlir.constant(8190 : index) : i64
    %219 = llvm.mul %190, %218 : i64
    %220 = llvm.add %219, %193 : i64
    %221 = llvm.getelementptr %217[%220] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %222 = llvm.load %221 : !llvm.ptr -> f64
    %223 = llvm.fmul %206, %214  : f64
    %224 = llvm.fadd %222, %223  : f64
    %225 = llvm.extractvalue %189[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %226 = llvm.extractvalue %189[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %227 = llvm.getelementptr %225[%226] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %228 = llvm.mlir.constant(8190 : index) : i64
    %229 = llvm.mul %190, %228 : i64
    %230 = llvm.add %229, %193 : i64
    %231 = llvm.getelementptr %227[%230] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %224, %231 : f64, !llvm.ptr
    %232 = llvm.add %196, %0 : i64
    llvm.br ^bb29(%232 : i64)
  ^bb31:  // pred: ^bb29
    %233 = llvm.add %193, %0 : i64
    llvm.br ^bb27(%233 : i64)
  ^bb32:  // pred: ^bb27
    %234 = llvm.add %190, %0 : i64
    llvm.br ^bb25(%234 : i64)
  ^bb33:  // pred: ^bb25
    %235 = llvm.add %154, %1 : i64
    llvm.br ^bb23(%235 : i64)
  ^bb34:  // pred: ^bb23
    %236 = llvm.add %133, %1 : i64
    llvm.br ^bb21(%236 : i64)
  ^bb35:  // pred: ^bb21
    %237 = llvm.add %128, %1 : i64
    llvm.br ^bb19(%237 : i64)
  ^bb36:  // pred: ^bb19
    %238 = llvm.call @getTime() : () -> f64
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.mlir.zero : !llvm.ptr
    %242 = llvm.getelementptr %241[%239] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %243 = llvm.ptrtoint %242 : !llvm.ptr to i64
    %244 = llvm.call @malloc(%243) : (i64) -> !llvm.ptr
    %245 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %246 = llvm.insertvalue %244, %245[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %247 = llvm.insertvalue %244, %246[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %248 = llvm.mlir.constant(0 : index) : i64
    %249 = llvm.insertvalue %248, %247[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %250 = llvm.insertvalue %239, %249[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %251 = llvm.insertvalue %240, %250[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %252 = llvm.extractvalue %251[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %253 = llvm.getelementptr %252[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %253 : f64, !llvm.ptr
    llvm.br ^bb37(%5 : i64)
  ^bb37(%254: i64):  // 2 preds: ^bb36, ^bb41
    %255 = builtin.unrealized_conversion_cast %254 : i64 to index
    %256 = llvm.icmp "slt" %254, %2 : i64
    llvm.cond_br %256, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    llvm.br ^bb39(%5 : i64)
  ^bb39(%257: i64):  // 2 preds: ^bb38, ^bb40
    %258 = builtin.unrealized_conversion_cast %257 : i64 to index
    %259 = llvm.icmp "slt" %257, %4 : i64
    llvm.cond_br %259, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %260 = llvm.extractvalue %113[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %261 = llvm.mlir.constant(8190 : index) : i64
    %262 = llvm.mul %254, %261 : i64
    %263 = llvm.add %262, %257 : i64
    %264 = llvm.getelementptr %260[%263] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %265 = llvm.load %264 : !llvm.ptr -> f64
    %266 = llvm.extractvalue %251[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %267 = llvm.getelementptr %266[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %268 = llvm.load %267 : !llvm.ptr -> f64
    %269 = llvm.fadd %265, %268  : f64
    %270 = llvm.extractvalue %251[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %271 = llvm.getelementptr %270[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %269, %271 : f64, !llvm.ptr
    %272 = llvm.add %257, %0 : i64
    llvm.br ^bb39(%272 : i64)
  ^bb41:  // pred: ^bb39
    %273 = llvm.add %254, %0 : i64
    llvm.br ^bb37(%273 : i64)
  ^bb42:  // pred: ^bb37
    %274 = llvm.extractvalue %251[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %275 = llvm.getelementptr %274[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %276 = llvm.load %275 : !llvm.ptr -> f64
    llvm.call @printF64(%276) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%127, %238) : (f64, f64) -> ()
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
    %3 = llvm.mlir.constant(8191 : index) : i64
    %4 = llvm.mlir.constant(8190 : index) : i64
    %5 = llvm.mlir.constant(0 : index) : i64
    %6 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %7 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %8 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %9 = llvm.mlir.constant(8192 : index) : i64
    %10 = llvm.mlir.constant(8191 : index) : i64
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.mlir.constant(67100672 : index) : i64
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
    llvm.br ^bb1(%5 : i64)
  ^bb1(%35: i64):  // 2 preds: ^bb0, ^bb5
    %36 = llvm.icmp "slt" %35, %2 : i64
    llvm.cond_br %36, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%5 : i64)
  ^bb3(%37: i64):  // 2 preds: ^bb2, ^bb4
    %38 = llvm.icmp "slt" %37, %3 : i64
    llvm.cond_br %38, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %39 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %40 = llvm.mlir.constant(8191 : index) : i64
    %41 = llvm.mul %35, %40 : i64
    %42 = llvm.add %41, %37 : i64
    %43 = llvm.getelementptr %39[%42] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %43 : f64, !llvm.ptr
    %44 = llvm.add %37, %0 : i64
    llvm.br ^bb3(%44 : i64)
  ^bb5:  // pred: ^bb3
    %45 = llvm.add %35, %0 : i64
    llvm.br ^bb1(%45 : i64)
  ^bb6:  // pred: ^bb1
    %46 = llvm.mlir.constant(8191 : index) : i64
    %47 = llvm.mlir.constant(8190 : index) : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.mlir.constant(67084290 : index) : i64
    %50 = llvm.mlir.zero : !llvm.ptr
    %51 = llvm.getelementptr %50[%49] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %52 = llvm.ptrtoint %51 : !llvm.ptr to i64
    %53 = llvm.mlir.constant(32 : index) : i64
    %54 = llvm.add %52, %53 : i64
    %55 = llvm.call @malloc(%54) : (i64) -> !llvm.ptr
    %56 = llvm.ptrtoint %55 : !llvm.ptr to i64
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.sub %53, %57 : i64
    %59 = llvm.add %56, %58 : i64
    %60 = llvm.urem %59, %53  : i64
    %61 = llvm.sub %59, %60 : i64
    %62 = llvm.inttoptr %61 : i64 to !llvm.ptr
    %63 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %64 = llvm.insertvalue %55, %63[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %65 = llvm.insertvalue %62, %64[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.insertvalue %66, %65[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %68 = llvm.insertvalue %46, %67[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %69 = llvm.insertvalue %47, %68[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %70 = llvm.insertvalue %47, %69[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %71 = llvm.insertvalue %48, %70[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.br ^bb7(%5 : i64)
  ^bb7(%72: i64):  // 2 preds: ^bb6, ^bb11
    %73 = llvm.icmp "slt" %72, %3 : i64
    llvm.cond_br %73, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%5 : i64)
  ^bb9(%74: i64):  // 2 preds: ^bb8, ^bb10
    %75 = llvm.icmp "slt" %74, %4 : i64
    llvm.cond_br %75, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %76 = llvm.extractvalue %71[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %77 = llvm.mlir.constant(8190 : index) : i64
    %78 = llvm.mul %72, %77 : i64
    %79 = llvm.add %78, %74 : i64
    %80 = llvm.getelementptr %76[%79] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %80 : f64, !llvm.ptr
    %81 = llvm.add %74, %0 : i64
    llvm.br ^bb9(%81 : i64)
  ^bb11:  // pred: ^bb9
    %82 = llvm.add %72, %0 : i64
    llvm.br ^bb7(%82 : i64)
  ^bb12:  // pred: ^bb7
    %83 = llvm.mlir.constant(8192 : index) : i64
    %84 = llvm.mlir.constant(8190 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(67092480 : index) : i64
    %87 = llvm.mlir.zero : !llvm.ptr
    %88 = llvm.getelementptr %87[%86] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %89 = llvm.ptrtoint %88 : !llvm.ptr to i64
    %90 = llvm.mlir.constant(32 : index) : i64
    %91 = llvm.add %89, %90 : i64
    %92 = llvm.call @malloc(%91) : (i64) -> !llvm.ptr
    %93 = llvm.ptrtoint %92 : !llvm.ptr to i64
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.sub %90, %94 : i64
    %96 = llvm.add %93, %95 : i64
    %97 = llvm.urem %96, %90  : i64
    %98 = llvm.sub %96, %97 : i64
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
    llvm.br ^bb13(%5 : i64)
  ^bb13(%109: i64):  // 2 preds: ^bb12, ^bb17
    %110 = llvm.icmp "slt" %109, %2 : i64
    llvm.cond_br %110, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%5 : i64)
  ^bb15(%111: i64):  // 2 preds: ^bb14, ^bb16
    %112 = llvm.icmp "slt" %111, %4 : i64
    llvm.cond_br %112, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %113 = llvm.extractvalue %108[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %114 = llvm.mlir.constant(8190 : index) : i64
    %115 = llvm.mul %109, %114 : i64
    %116 = llvm.add %115, %111 : i64
    %117 = llvm.getelementptr %113[%116] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %117 : f64, !llvm.ptr
    %118 = llvm.add %111, %0 : i64
    llvm.br ^bb15(%118 : i64)
  ^bb17:  // pred: ^bb15
    %119 = llvm.add %109, %0 : i64
    llvm.br ^bb13(%119 : i64)
  ^bb18:  // pred: ^bb13
    %120 = llvm.call @getTime() : () -> f64
    llvm.br ^bb19(%5 : i64)
  ^bb19(%121: i64):  // 2 preds: ^bb18, ^bb35
    %122 = llvm.icmp "slt" %121, %4 : i64
    llvm.cond_br %122, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    %123 = llvm.sub %4, %121 : i64
    %124 = llvm.intr.smin(%123, %1)  : (i64, i64) -> i64
    llvm.br ^bb21(%5 : i64)
  ^bb21(%125: i64):  // 2 preds: ^bb20, ^bb34
    %126 = llvm.icmp "slt" %125, %3 : i64
    llvm.cond_br %126, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %127 = llvm.sub %3, %125 : i64
    %128 = llvm.intr.smin(%127, %1)  : (i64, i64) -> i64
    %129 = llvm.mlir.constant(8190 : index) : i64
    %130 = llvm.mul %125, %129 : i64
    %131 = llvm.add %130, %121 : i64
    %132 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %133 = llvm.extractvalue %71[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %134 = llvm.extractvalue %71[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %135 = llvm.insertvalue %133, %132[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %136 = llvm.insertvalue %134, %135[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %137 = llvm.insertvalue %131, %136[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %138 = llvm.insertvalue %128, %137[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %139 = llvm.mlir.constant(8190 : index) : i64
    %140 = llvm.insertvalue %139, %138[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %141 = llvm.insertvalue %124, %140[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.insertvalue %142, %141[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.br ^bb23(%5 : i64)
  ^bb23(%144: i64):  // 2 preds: ^bb22, ^bb33
    %145 = llvm.icmp "slt" %144, %2 : i64
    llvm.cond_br %145, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %146 = llvm.mlir.constant(8191 : index) : i64
    %147 = llvm.mul %144, %146 : i64
    %148 = llvm.add %147, %125 : i64
    %149 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %150 = llvm.extractvalue %34[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %151 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %152 = llvm.insertvalue %150, %149[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %153 = llvm.insertvalue %151, %152[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %154 = llvm.insertvalue %148, %153[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %155 = llvm.mlir.constant(512 : index) : i64
    %156 = llvm.insertvalue %155, %154[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %157 = llvm.mlir.constant(8191 : index) : i64
    %158 = llvm.insertvalue %157, %156[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %159 = llvm.insertvalue %128, %158[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.insertvalue %160, %159[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %162 = llvm.mlir.constant(8190 : index) : i64
    %163 = llvm.mul %144, %162 : i64
    %164 = llvm.add %163, %121 : i64
    %165 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %166 = llvm.extractvalue %108[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %167 = llvm.extractvalue %108[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %168 = llvm.insertvalue %166, %165[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %169 = llvm.insertvalue %167, %168[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %170 = llvm.insertvalue %164, %169[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %171 = llvm.mlir.constant(512 : index) : i64
    %172 = llvm.insertvalue %171, %170[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %173 = llvm.mlir.constant(8190 : index) : i64
    %174 = llvm.insertvalue %173, %172[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %175 = llvm.insertvalue %124, %174[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.insertvalue %176, %175[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.br ^bb25(%5 : i64)
  ^bb25(%178: i64):  // 2 preds: ^bb24, ^bb32
    %179 = llvm.icmp "slt" %178, %1 : i64
    llvm.cond_br %179, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%5 : i64)
  ^bb27(%180: i64):  // 2 preds: ^bb26, ^bb31
    %181 = llvm.icmp "slt" %180, %124 : i64
    llvm.cond_br %181, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    llvm.br ^bb29(%5 : i64)
  ^bb29(%182: i64):  // 2 preds: ^bb28, ^bb30
    %183 = llvm.icmp "slt" %182, %128 : i64
    llvm.cond_br %183, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %184 = llvm.extractvalue %161[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %185 = llvm.extractvalue %161[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %186 = llvm.getelementptr %184[%185] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %187 = llvm.mlir.constant(8191 : index) : i64
    %188 = llvm.mul %178, %187 : i64
    %189 = llvm.add %188, %182 : i64
    %190 = llvm.getelementptr %186[%189] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %191 = llvm.load %190 : !llvm.ptr -> f64
    %192 = llvm.extractvalue %143[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %193 = llvm.extractvalue %143[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %194 = llvm.getelementptr %192[%193] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %195 = llvm.mlir.constant(8190 : index) : i64
    %196 = llvm.mul %182, %195 : i64
    %197 = llvm.add %196, %180 : i64
    %198 = llvm.getelementptr %194[%197] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %199 = llvm.load %198 : !llvm.ptr -> f64
    %200 = llvm.extractvalue %177[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %201 = llvm.extractvalue %177[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %202 = llvm.getelementptr %200[%201] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %203 = llvm.mlir.constant(8190 : index) : i64
    %204 = llvm.mul %178, %203 : i64
    %205 = llvm.add %204, %180 : i64
    %206 = llvm.getelementptr %202[%205] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %207 = llvm.load %206 : !llvm.ptr -> f64
    %208 = llvm.fmul %191, %199  : f64
    %209 = llvm.fadd %207, %208  : f64
    %210 = llvm.extractvalue %177[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %211 = llvm.extractvalue %177[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %212 = llvm.getelementptr %210[%211] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %213 = llvm.mlir.constant(8190 : index) : i64
    %214 = llvm.mul %178, %213 : i64
    %215 = llvm.add %214, %180 : i64
    %216 = llvm.getelementptr %212[%215] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %209, %216 : f64, !llvm.ptr
    %217 = llvm.add %182, %0 : i64
    llvm.br ^bb29(%217 : i64)
  ^bb31:  // pred: ^bb29
    %218 = llvm.add %180, %0 : i64
    llvm.br ^bb27(%218 : i64)
  ^bb32:  // pred: ^bb27
    %219 = llvm.add %178, %0 : i64
    llvm.br ^bb25(%219 : i64)
  ^bb33:  // pred: ^bb25
    %220 = llvm.add %144, %1 : i64
    llvm.br ^bb23(%220 : i64)
  ^bb34:  // pred: ^bb23
    %221 = llvm.add %125, %1 : i64
    llvm.br ^bb21(%221 : i64)
  ^bb35:  // pred: ^bb21
    %222 = llvm.add %121, %1 : i64
    llvm.br ^bb19(%222 : i64)
  ^bb36:  // pred: ^bb19
    %223 = llvm.call @getTime() : () -> f64
    %224 = llvm.mlir.constant(1 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.mlir.zero : !llvm.ptr
    %227 = llvm.getelementptr %226[%224] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %228 = llvm.ptrtoint %227 : !llvm.ptr to i64
    %229 = llvm.call @malloc(%228) : (i64) -> !llvm.ptr
    %230 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %231 = llvm.insertvalue %229, %230[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %232 = llvm.insertvalue %229, %231[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %233 = llvm.mlir.constant(0 : index) : i64
    %234 = llvm.insertvalue %233, %232[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %235 = llvm.insertvalue %224, %234[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %236 = llvm.insertvalue %225, %235[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %237 = llvm.extractvalue %236[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %238 = llvm.getelementptr %237[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %238 : f64, !llvm.ptr
    llvm.br ^bb37(%5 : i64)
  ^bb37(%239: i64):  // 2 preds: ^bb36, ^bb41
    %240 = llvm.icmp "slt" %239, %2 : i64
    llvm.cond_br %240, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    llvm.br ^bb39(%5 : i64)
  ^bb39(%241: i64):  // 2 preds: ^bb38, ^bb40
    %242 = llvm.icmp "slt" %241, %4 : i64
    llvm.cond_br %242, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %243 = llvm.extractvalue %108[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %244 = llvm.mlir.constant(8190 : index) : i64
    %245 = llvm.mul %239, %244 : i64
    %246 = llvm.add %245, %241 : i64
    %247 = llvm.getelementptr %243[%246] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %248 = llvm.load %247 : !llvm.ptr -> f64
    %249 = llvm.extractvalue %236[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %250 = llvm.getelementptr %249[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %251 = llvm.load %250 : !llvm.ptr -> f64
    %252 = llvm.fadd %248, %251  : f64
    %253 = llvm.extractvalue %236[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %254 = llvm.getelementptr %253[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %252, %254 : f64, !llvm.ptr
    %255 = llvm.add %241, %0 : i64
    llvm.br ^bb39(%255 : i64)
  ^bb41:  // pred: ^bb39
    %256 = llvm.add %239, %0 : i64
    llvm.br ^bb37(%256 : i64)
  ^bb42:  // pred: ^bb37
    %257 = llvm.extractvalue %236[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %258 = llvm.getelementptr %257[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %259 = llvm.load %258 : !llvm.ptr -> f64
    llvm.call @printF64(%259) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%120, %223) : (f64, f64) -> ()
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
    %3 = llvm.mlir.constant(8191 : index) : i64
    %4 = llvm.mlir.constant(8190 : index) : i64
    %5 = llvm.mlir.constant(0 : index) : i64
    %6 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %7 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %8 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %9 = llvm.mlir.constant(8192 : index) : i64
    %10 = llvm.mlir.constant(8191 : index) : i64
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.mlir.constant(67100672 : index) : i64
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
    llvm.br ^bb1(%5 : i64)
  ^bb1(%35: i64):  // 2 preds: ^bb0, ^bb5
    %36 = llvm.icmp "slt" %35, %2 : i64
    llvm.cond_br %36, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%5 : i64)
  ^bb3(%37: i64):  // 2 preds: ^bb2, ^bb4
    %38 = llvm.icmp "slt" %37, %3 : i64
    llvm.cond_br %38, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %39 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %40 = llvm.mlir.constant(8191 : index) : i64
    %41 = llvm.mul %35, %40 : i64
    %42 = llvm.add %41, %37 : i64
    %43 = llvm.getelementptr %39[%42] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %43 : f64, !llvm.ptr
    %44 = llvm.add %37, %0 : i64
    llvm.br ^bb3(%44 : i64)
  ^bb5:  // pred: ^bb3
    %45 = llvm.add %35, %0 : i64
    llvm.br ^bb1(%45 : i64)
  ^bb6:  // pred: ^bb1
    %46 = llvm.mlir.constant(8191 : index) : i64
    %47 = llvm.mlir.constant(8190 : index) : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.mlir.constant(67084290 : index) : i64
    %50 = llvm.mlir.zero : !llvm.ptr
    %51 = llvm.getelementptr %50[%49] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %52 = llvm.ptrtoint %51 : !llvm.ptr to i64
    %53 = llvm.mlir.constant(32 : index) : i64
    %54 = llvm.add %52, %53 : i64
    %55 = llvm.call @malloc(%54) : (i64) -> !llvm.ptr
    %56 = llvm.ptrtoint %55 : !llvm.ptr to i64
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.sub %53, %57 : i64
    %59 = llvm.add %56, %58 : i64
    %60 = llvm.urem %59, %53  : i64
    %61 = llvm.sub %59, %60 : i64
    %62 = llvm.inttoptr %61 : i64 to !llvm.ptr
    %63 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %64 = llvm.insertvalue %55, %63[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %65 = llvm.insertvalue %62, %64[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.insertvalue %66, %65[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %68 = llvm.insertvalue %46, %67[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %69 = llvm.insertvalue %47, %68[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %70 = llvm.insertvalue %47, %69[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %71 = llvm.insertvalue %48, %70[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.br ^bb7(%5 : i64)
  ^bb7(%72: i64):  // 2 preds: ^bb6, ^bb11
    %73 = llvm.icmp "slt" %72, %3 : i64
    llvm.cond_br %73, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%5 : i64)
  ^bb9(%74: i64):  // 2 preds: ^bb8, ^bb10
    %75 = llvm.icmp "slt" %74, %4 : i64
    llvm.cond_br %75, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %76 = llvm.extractvalue %71[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %77 = llvm.mlir.constant(8190 : index) : i64
    %78 = llvm.mul %72, %77 : i64
    %79 = llvm.add %78, %74 : i64
    %80 = llvm.getelementptr %76[%79] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %80 : f64, !llvm.ptr
    %81 = llvm.add %74, %0 : i64
    llvm.br ^bb9(%81 : i64)
  ^bb11:  // pred: ^bb9
    %82 = llvm.add %72, %0 : i64
    llvm.br ^bb7(%82 : i64)
  ^bb12:  // pred: ^bb7
    %83 = llvm.mlir.constant(8192 : index) : i64
    %84 = llvm.mlir.constant(8190 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(67092480 : index) : i64
    %87 = llvm.mlir.zero : !llvm.ptr
    %88 = llvm.getelementptr %87[%86] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %89 = llvm.ptrtoint %88 : !llvm.ptr to i64
    %90 = llvm.mlir.constant(32 : index) : i64
    %91 = llvm.add %89, %90 : i64
    %92 = llvm.call @malloc(%91) : (i64) -> !llvm.ptr
    %93 = llvm.ptrtoint %92 : !llvm.ptr to i64
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.sub %90, %94 : i64
    %96 = llvm.add %93, %95 : i64
    %97 = llvm.urem %96, %90  : i64
    %98 = llvm.sub %96, %97 : i64
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
    llvm.br ^bb13(%5 : i64)
  ^bb13(%109: i64):  // 2 preds: ^bb12, ^bb17
    %110 = llvm.icmp "slt" %109, %2 : i64
    llvm.cond_br %110, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%5 : i64)
  ^bb15(%111: i64):  // 2 preds: ^bb14, ^bb16
    %112 = llvm.icmp "slt" %111, %4 : i64
    llvm.cond_br %112, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %113 = llvm.extractvalue %108[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %114 = llvm.mlir.constant(8190 : index) : i64
    %115 = llvm.mul %109, %114 : i64
    %116 = llvm.add %115, %111 : i64
    %117 = llvm.getelementptr %113[%116] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %117 : f64, !llvm.ptr
    %118 = llvm.add %111, %0 : i64
    llvm.br ^bb15(%118 : i64)
  ^bb17:  // pred: ^bb15
    %119 = llvm.add %109, %0 : i64
    llvm.br ^bb13(%119 : i64)
  ^bb18:  // pred: ^bb13
    %120 = llvm.call @getTime() : () -> f64
    llvm.br ^bb19(%5 : i64)
  ^bb19(%121: i64):  // 2 preds: ^bb18, ^bb35
    %122 = llvm.icmp "slt" %121, %4 : i64
    llvm.cond_br %122, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    %123 = llvm.sub %4, %121 : i64
    %124 = llvm.intr.smin(%123, %1)  : (i64, i64) -> i64
    llvm.br ^bb21(%5 : i64)
  ^bb21(%125: i64):  // 2 preds: ^bb20, ^bb34
    %126 = llvm.icmp "slt" %125, %3 : i64
    llvm.cond_br %126, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %127 = llvm.sub %3, %125 : i64
    %128 = llvm.intr.smin(%127, %1)  : (i64, i64) -> i64
    %129 = llvm.mlir.constant(8190 : index) : i64
    %130 = llvm.mul %125, %129 : i64
    %131 = llvm.add %130, %121 : i64
    %132 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %133 = llvm.extractvalue %71[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %134 = llvm.extractvalue %71[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %135 = llvm.insertvalue %133, %132[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %136 = llvm.insertvalue %134, %135[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %137 = llvm.insertvalue %131, %136[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %138 = llvm.insertvalue %128, %137[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %139 = llvm.mlir.constant(8190 : index) : i64
    %140 = llvm.insertvalue %139, %138[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %141 = llvm.insertvalue %124, %140[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.insertvalue %142, %141[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.br ^bb23(%5 : i64)
  ^bb23(%144: i64):  // 2 preds: ^bb22, ^bb33
    %145 = llvm.icmp "slt" %144, %2 : i64
    llvm.cond_br %145, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %146 = llvm.mlir.constant(8191 : index) : i64
    %147 = llvm.mul %144, %146 : i64
    %148 = llvm.add %147, %125 : i64
    %149 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %150 = llvm.extractvalue %34[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %151 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %152 = llvm.insertvalue %150, %149[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %153 = llvm.insertvalue %151, %152[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %154 = llvm.insertvalue %148, %153[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %155 = llvm.mlir.constant(512 : index) : i64
    %156 = llvm.insertvalue %155, %154[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %157 = llvm.mlir.constant(8191 : index) : i64
    %158 = llvm.insertvalue %157, %156[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %159 = llvm.insertvalue %128, %158[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.insertvalue %160, %159[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %162 = llvm.mlir.constant(8190 : index) : i64
    %163 = llvm.mul %144, %162 : i64
    %164 = llvm.add %163, %121 : i64
    %165 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %166 = llvm.extractvalue %108[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %167 = llvm.extractvalue %108[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %168 = llvm.insertvalue %166, %165[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %169 = llvm.insertvalue %167, %168[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %170 = llvm.insertvalue %164, %169[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %171 = llvm.mlir.constant(512 : index) : i64
    %172 = llvm.insertvalue %171, %170[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %173 = llvm.mlir.constant(8190 : index) : i64
    %174 = llvm.insertvalue %173, %172[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %175 = llvm.insertvalue %124, %174[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.insertvalue %176, %175[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.br ^bb25(%5 : i64)
  ^bb25(%178: i64):  // 2 preds: ^bb24, ^bb32
    %179 = llvm.icmp "slt" %178, %1 : i64
    llvm.cond_br %179, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%5 : i64)
  ^bb27(%180: i64):  // 2 preds: ^bb26, ^bb31
    %181 = llvm.icmp "slt" %180, %124 : i64
    llvm.cond_br %181, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    llvm.br ^bb29(%5 : i64)
  ^bb29(%182: i64):  // 2 preds: ^bb28, ^bb30
    %183 = llvm.icmp "slt" %182, %128 : i64
    llvm.cond_br %183, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %184 = llvm.extractvalue %161[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %185 = llvm.extractvalue %161[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %186 = llvm.getelementptr %184[%185] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %187 = llvm.mlir.constant(8191 : index) : i64
    %188 = llvm.mul %178, %187 : i64
    %189 = llvm.add %188, %182 : i64
    %190 = llvm.getelementptr %186[%189] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %191 = llvm.load %190 : !llvm.ptr -> f64
    %192 = llvm.extractvalue %143[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %193 = llvm.extractvalue %143[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %194 = llvm.getelementptr %192[%193] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %195 = llvm.mlir.constant(8190 : index) : i64
    %196 = llvm.mul %182, %195 : i64
    %197 = llvm.add %196, %180 : i64
    %198 = llvm.getelementptr %194[%197] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %199 = llvm.load %198 : !llvm.ptr -> f64
    %200 = llvm.extractvalue %177[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %201 = llvm.extractvalue %177[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %202 = llvm.getelementptr %200[%201] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %203 = llvm.mlir.constant(8190 : index) : i64
    %204 = llvm.mul %178, %203 : i64
    %205 = llvm.add %204, %180 : i64
    %206 = llvm.getelementptr %202[%205] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %207 = llvm.load %206 : !llvm.ptr -> f64
    %208 = llvm.fmul %191, %199  : f64
    %209 = llvm.fadd %207, %208  : f64
    %210 = llvm.extractvalue %177[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %211 = llvm.extractvalue %177[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %212 = llvm.getelementptr %210[%211] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %213 = llvm.mlir.constant(8190 : index) : i64
    %214 = llvm.mul %178, %213 : i64
    %215 = llvm.add %214, %180 : i64
    %216 = llvm.getelementptr %212[%215] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %209, %216 : f64, !llvm.ptr
    %217 = llvm.add %182, %0 : i64
    llvm.br ^bb29(%217 : i64)
  ^bb31:  // pred: ^bb29
    %218 = llvm.add %180, %0 : i64
    llvm.br ^bb27(%218 : i64)
  ^bb32:  // pred: ^bb27
    %219 = llvm.add %178, %0 : i64
    llvm.br ^bb25(%219 : i64)
  ^bb33:  // pred: ^bb25
    %220 = llvm.add %144, %1 : i64
    llvm.br ^bb23(%220 : i64)
  ^bb34:  // pred: ^bb23
    %221 = llvm.add %125, %1 : i64
    llvm.br ^bb21(%221 : i64)
  ^bb35:  // pred: ^bb21
    %222 = llvm.add %121, %1 : i64
    llvm.br ^bb19(%222 : i64)
  ^bb36:  // pred: ^bb19
    %223 = llvm.call @getTime() : () -> f64
    %224 = llvm.mlir.constant(1 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.mlir.zero : !llvm.ptr
    %227 = llvm.getelementptr %226[%224] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %228 = llvm.ptrtoint %227 : !llvm.ptr to i64
    %229 = llvm.call @malloc(%228) : (i64) -> !llvm.ptr
    %230 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %231 = llvm.insertvalue %229, %230[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %232 = llvm.insertvalue %229, %231[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %233 = llvm.mlir.constant(0 : index) : i64
    %234 = llvm.insertvalue %233, %232[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %235 = llvm.insertvalue %224, %234[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %236 = llvm.insertvalue %225, %235[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %237 = llvm.extractvalue %236[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %238 = llvm.getelementptr %237[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %238 : f64, !llvm.ptr
    llvm.br ^bb37(%5 : i64)
  ^bb37(%239: i64):  // 2 preds: ^bb36, ^bb41
    %240 = llvm.icmp "slt" %239, %2 : i64
    llvm.cond_br %240, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    llvm.br ^bb39(%5 : i64)
  ^bb39(%241: i64):  // 2 preds: ^bb38, ^bb40
    %242 = llvm.icmp "slt" %241, %4 : i64
    llvm.cond_br %242, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %243 = llvm.extractvalue %108[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %244 = llvm.mlir.constant(8190 : index) : i64
    %245 = llvm.mul %239, %244 : i64
    %246 = llvm.add %245, %241 : i64
    %247 = llvm.getelementptr %243[%246] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %248 = llvm.load %247 : !llvm.ptr -> f64
    %249 = llvm.extractvalue %236[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %250 = llvm.getelementptr %249[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %251 = llvm.load %250 : !llvm.ptr -> f64
    %252 = llvm.fadd %248, %251  : f64
    %253 = llvm.extractvalue %236[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %254 = llvm.getelementptr %253[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %252, %254 : f64, !llvm.ptr
    %255 = llvm.add %241, %0 : i64
    llvm.br ^bb39(%255 : i64)
  ^bb41:  // pred: ^bb39
    %256 = llvm.add %239, %0 : i64
    llvm.br ^bb37(%256 : i64)
  ^bb42:  // pred: ^bb37
    %257 = llvm.extractvalue %236[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %258 = llvm.getelementptr %257[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %259 = llvm.load %258 : !llvm.ptr -> f64
    llvm.call @printF64(%259) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%120, %223) : (f64, f64) -> ()
    llvm.return
  }
  llvm.func @getTime() -> f64 attributes {sym_visibility = "private"}
  llvm.func @printElapsedTime(f64, f64) attributes {sym_visibility = "private"}
  llvm.func @printF64(f64) attributes {sym_visibility = "private"}
  llvm.func @printNewline() attributes {sym_visibility = "private"}
}
