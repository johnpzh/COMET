// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
#map = affine_map<(d0, d1, d2) -> (d0, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8193x8191xf64>
    %4 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8191x8190xf64>
    %5 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8193x8190xf64>
    "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8193x8191xf64>) -> ()
    "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<8191x8190xf64>) -> ()
    "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8193x8190xf64>) -> ()
    %6 = "ta.getTime"() : () -> f64
    %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8193x8191xf64>, tensor<8191x8190xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8193x8190xf64>
    "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8193x8190xf64>, tensor<8193x8190xf64>) -> ()
    %8 = "ta.getTime"() : () -> f64
    %9 = "ta.reduce"(%5) : (tensor<8193x8190xf64>) -> f64
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
  %3 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8193x8191xf64>
  %4 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8191x8190xf64>
  %5 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8193x8190xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8193x8191xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<8191x8190xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8193x8190xf64>) -> ()
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8193x8191xf64>, tensor<8191x8190xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8193x8190xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8193x8190xf64>, tensor<8193x8190xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<8193x8190xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8193x8191xf64>
  %4 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8191x8190xf64>
  %5 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8193x8190xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8193x8191xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<8191x8190xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8193x8190xf64>) -> ()
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8193x8191xf64>, tensor<8191x8190xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8193x8190xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8193x8190xf64>, tensor<8193x8190xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<8193x8190xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8193x8191xf64>
  %4 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8191x8190xf64>
  %5 = "ta.dense_tensor_decl"() <{allocator = "default", format = "Dense"}> : () -> tensor<8193x8190xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8193x8191xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<8191x8190xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8193x8190xf64>) -> ()
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8193x8191xf64>, tensor<8191x8190xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8193x8190xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8193x8190xf64>, tensor<8193x8190xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<8193x8190xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8193x8191xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  %4 = bufferization.to_tensor %alloc_0 restrict writable : memref<8191x8190xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
  %5 = bufferization.to_tensor %alloc_1 restrict writable : memref<8193x8190xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8193x8191xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<8191x8190xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8193x8190xf64>) -> ()
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8193x8191xf64>, tensor<8191x8190xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8193x8190xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8193x8190xf64>, tensor<8193x8190xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<8193x8190xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8193x8191xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  %4 = bufferization.to_tensor %alloc_0 restrict writable : memref<8191x8190xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
  %5 = bufferization.to_tensor %alloc_1 restrict writable : memref<8193x8190xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8193x8191xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<8191x8190xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8193x8190xf64>) -> ()
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8193x8191xf64>, tensor<8191x8190xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8193x8190xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8193x8190xf64>, tensor<8193x8190xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<8193x8190xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8193x8191xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  %4 = bufferization.to_tensor %alloc_0 restrict writable : memref<8191x8190xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
  %5 = bufferization.to_tensor %alloc_1 restrict writable : memref<8193x8190xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8193x8191xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<8191x8190xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8193x8190xf64>) -> ()
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8193x8191xf64>, tensor<8191x8190xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8193x8190xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8193x8190xf64>, tensor<8193x8190xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<8193x8190xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8193x8191xf64>)
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8193x8191xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  %cst_1 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_1 : f64) outs(%alloc_0 : memref<8191x8190xf64>)
  %4 = bufferization.to_tensor %alloc_0 restrict writable : memref<8191x8190xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_2 : memref<8193x8190xf64>)
  %5 = bufferization.to_tensor %alloc_2 restrict writable : memref<8193x8190xf64>
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8193x8191xf64>, tensor<8191x8190xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8193x8190xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8193x8190xf64>, tensor<8193x8190xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<8193x8190xf64>) -> f64
  "ta.print"(%9) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8193x8191xf64>)
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8193x8191xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  %cst_1 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_1 : f64) outs(%alloc_0 : memref<8191x8190xf64>)
  %4 = bufferization.to_tensor %alloc_0 restrict writable : memref<8191x8190xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_2 : memref<8193x8190xf64>)
  %5 = bufferization.to_tensor %alloc_2 restrict writable : memref<8193x8190xf64>
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8193x8191xf64>, tensor<8191x8190xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8193x8190xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8193x8190xf64>, tensor<8193x8190xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<8193x8190xf64>) -> f64
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
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8193x8191xf64>)
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8193x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %4 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8193x8190xf64>)
  %5 = bufferization.to_tensor %alloc_3 restrict writable : memref<8193x8190xf64>
  %6 = "ta.getTime"() : () -> f64
  %7 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8193x8191xf64>, tensor<8191x8190xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8193x8190xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8193x8190xf64>, tensor<8193x8190xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.reduce"(%5) : (tensor<8193x8190xf64>) -> f64
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
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8193x8191xf64>)
  %3 = bufferization.to_tensor %alloc restrict writable : memref<8193x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %4 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8193x8190xf64>)
  %5 = bufferization.to_tensor %alloc_3 restrict writable : memref<8193x8190xf64>
  %6 = "ta.getTime"() : () -> f64
  %c0 = arith.constant 0 : index
  %dim = tensor.dim %3, %c0 : tensor<8193x8191xf64>
  %c1 = arith.constant 1 : index
  %dim_4 = tensor.dim %3, %c1 : tensor<8193x8191xf64>
  %c0_5 = arith.constant 0 : index
  %dim_6 = tensor.dim %4, %c0_5 : tensor<8191x8190xf64>
  %c1_7 = arith.constant 1 : index
  %dim_8 = tensor.dim %4, %c1_7 : tensor<8191x8190xf64>
  %c0_9 = arith.constant 0 : index
  %dim_10 = tensor.dim %5, %c0_9 : tensor<8193x8190xf64>
  %c1_11 = arith.constant 1 : index
  %dim_12 = tensor.dim %5, %c1_11 : tensor<8193x8190xf64>
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
  %31 = scf.index_switch %29 -> tensor<8193x8190xf64> 
  case 0 {
    %34 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__with_tiling__"} ins(%3, %4 : tensor<8193x8191xf64>, tensor<8191x8190xf64>) outs(%5 : tensor<8193x8190xf64>) -> tensor<8193x8190xf64>
    scf.yield %34 : tensor<8193x8190xf64>
  }
  case 1 {
    %34 = tensor.empty() : tensor<8191x8193xf64>
    %transposed = linalg.transpose ins(%3 : tensor<8193x8191xf64>) outs(%34 : tensor<8191x8193xf64>) permutation = [1, 0] 
    %35 = tensor.empty() : tensor<8190x8191xf64>
    %transposed_23 = linalg.transpose ins(%4 : tensor<8191x8190xf64>) outs(%35 : tensor<8190x8191xf64>) permutation = [1, 0] 
    %36 = tensor.empty() : tensor<8190x8193xf64>
    %cst_24 = arith.constant 0.000000e+00 : f64
    %37 = linalg.fill ins(%cst_24 : f64) outs(%36 : tensor<8190x8193xf64>) -> tensor<8190x8193xf64>
    %38 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__with_tiling__"} ins(%transposed_23, %transposed : tensor<8190x8191xf64>, tensor<8191x8193xf64>) outs(%37 : tensor<8190x8193xf64>) -> tensor<8190x8193xf64>
    %transposed_25 = linalg.transpose ins(%38 : tensor<8190x8193xf64>) outs(%5 : tensor<8193x8190xf64>) permutation = [1, 0] 
    scf.yield %transposed_25 : tensor<8193x8190xf64>
  }
  default {
    scf.yield %5 : tensor<8193x8190xf64>
  }
  "ta.set_op"(%31, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8193x8190xf64>, tensor<8193x8190xf64>) -> ()
  %32 = "ta.getTime"() : () -> f64
  %33 = "ta.reduce"(%5) : (tensor<8193x8190xf64>) -> f64
  "ta.print"(%33) : (f64) -> ()
  "ta.print_elapsed_time"(%6, %32) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LinAlgMatmulTilingPass () //----- //
func.func @main() {
  %c512 = arith.constant 512 : index
  %c8190 = arith.constant 8190 : index
  %c8191 = arith.constant 8191 : index
  %c8193 = arith.constant 8193 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8193x8191xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8193x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8193x8190xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8193x8190xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = scf.index_switch %c0 -> tensor<8193x8190xf64> 
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c8193 step %c512 iter_args(%arg1 = %2) -> (tensor<8193x8190xf64>) {
      %8 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8193x8190xf64>) {
        %9 = scf.for %arg4 = %c0 to %c8190 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8193x8190xf64>) {
          %10 = affine.min affine_map<(d0) -> (-d0 + 8193, 512)>(%arg0)
          %11 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %12 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg4)
          %extracted_slice = tensor.extract_slice %0[%arg0, %arg2] [%10, %11] [1, 1] : tensor<8193x8191xf64> to tensor<?x?xf64>
          %extracted_slice_4 = tensor.extract_slice %1[%arg2, %arg4] [%11, %12] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %arg5[%arg0, %arg4] [%10, %12] [1, 1] : tensor<8193x8190xf64> to tensor<?x?xf64>
          %13 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_4 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_5 : tensor<?x?xf64>) -> tensor<?x?xf64>
          %inserted_slice = tensor.insert_slice %13 into %arg5[%arg0, %arg4] [%10, %12] [1, 1] : tensor<?x?xf64> into tensor<8193x8190xf64>
          scf.yield %inserted_slice : tensor<8193x8190xf64>
        }
        scf.yield %9 : tensor<8193x8190xf64>
      }
      scf.yield %8 : tensor<8193x8190xf64>
    }
    scf.yield %7 : tensor<8193x8190xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<8191x8193xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8193x8191xf64>) outs(%7 : tensor<8191x8193xf64>) permutation = [1, 0] 
    %8 = tensor.empty() : tensor<8190x8191xf64>
    %transposed_4 = linalg.transpose ins(%1 : tensor<8191x8190xf64>) outs(%8 : tensor<8190x8191xf64>) permutation = [1, 0] 
    %9 = tensor.empty() : tensor<8190x8193xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<8190x8193xf64>) -> tensor<8190x8193xf64>
    %11 = scf.for %arg0 = %c0 to %c8190 step %c512 iter_args(%arg1 = %10) -> (tensor<8190x8193xf64>) {
      %12 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8190x8193xf64>) {
        %13 = scf.for %arg4 = %c0 to %c8193 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8190x8193xf64>) {
          %14 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg0)
          %15 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %16 = affine.min affine_map<(d0) -> (-d0 + 8193, 512)>(%arg4)
          %extracted_slice = tensor.extract_slice %transposed_4[%arg0, %arg2] [%14, %15] [1, 1] : tensor<8190x8191xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %transposed[%arg2, %arg4] [%15, %16] [1, 1] : tensor<8191x8193xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %arg5[%arg0, %arg4] [%14, %16] [1, 1] : tensor<8190x8193xf64> to tensor<?x?xf64>
          %17 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_6 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_7 : tensor<?x?xf64>) -> tensor<?x?xf64>
          %inserted_slice = tensor.insert_slice %17 into %arg5[%arg0, %arg4] [%14, %16] [1, 1] : tensor<?x?xf64> into tensor<8190x8193xf64>
          scf.yield %inserted_slice : tensor<8190x8193xf64>
        }
        scf.yield %13 : tensor<8190x8193xf64>
      }
      scf.yield %12 : tensor<8190x8193xf64>
    }
    %transposed_5 = linalg.transpose ins(%11 : tensor<8190x8193xf64>) outs(%2 : tensor<8193x8190xf64>) permutation = [1, 0] 
    scf.yield %transposed_5 : tensor<8193x8190xf64>
  }
  default {
    scf.yield %2 : tensor<8193x8190xf64>
  }
  "ta.set_op"(%4, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<8193x8190xf64>, tensor<8193x8190xf64>) -> ()
  %5 = "ta.getTime"() : () -> f64
  %6 = "ta.reduce"(%2) : (tensor<8193x8190xf64>) -> f64
  "ta.print"(%6) : (f64) -> ()
  "ta.print_elapsed_time"(%3, %5) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func @main() {
  %c512 = arith.constant 512 : index
  %c8190 = arith.constant 8190 : index
  %c8191 = arith.constant 8191 : index
  %c8193 = arith.constant 8193 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8193x8191xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8193x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8193x8190xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8193x8190xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = scf.index_switch %c0 -> tensor<8193x8190xf64> 
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c8193 step %c512 iter_args(%arg1 = %2) -> (tensor<8193x8190xf64>) {
      %8 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8193x8190xf64>) {
        %9 = scf.for %arg4 = %c0 to %c8190 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8193x8190xf64>) {
          %10 = affine.min affine_map<(d0) -> (-d0 + 8193, 512)>(%arg0)
          %11 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %12 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg4)
          %extracted_slice = tensor.extract_slice %0[%arg0, %arg2] [%10, %11] [1, 1] : tensor<8193x8191xf64> to tensor<?x?xf64>
          %extracted_slice_9 = tensor.extract_slice %1[%arg2, %arg4] [%11, %12] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
          %extracted_slice_10 = tensor.extract_slice %arg5[%arg0, %arg4] [%10, %12] [1, 1] : tensor<8193x8190xf64> to tensor<?x?xf64>
          %13 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_9 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_10 : tensor<?x?xf64>) -> tensor<?x?xf64>
          %inserted_slice = tensor.insert_slice %13 into %arg5[%arg0, %arg4] [%10, %12] [1, 1] : tensor<?x?xf64> into tensor<8193x8190xf64>
          scf.yield %inserted_slice : tensor<8193x8190xf64>
        }
        scf.yield %9 : tensor<8193x8190xf64>
      }
      scf.yield %8 : tensor<8193x8190xf64>
    }
    scf.yield %7 : tensor<8193x8190xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<8191x8193xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8193x8191xf64>) outs(%7 : tensor<8191x8193xf64>) permutation = [1, 0] 
    %8 = tensor.empty() : tensor<8190x8191xf64>
    %transposed_9 = linalg.transpose ins(%1 : tensor<8191x8190xf64>) outs(%8 : tensor<8190x8191xf64>) permutation = [1, 0] 
    %9 = tensor.empty() : tensor<8190x8193xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<8190x8193xf64>) -> tensor<8190x8193xf64>
    %11 = scf.for %arg0 = %c0 to %c8190 step %c512 iter_args(%arg1 = %10) -> (tensor<8190x8193xf64>) {
      %12 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8190x8193xf64>) {
        %13 = scf.for %arg4 = %c0 to %c8193 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8190x8193xf64>) {
          %14 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg0)
          %15 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %16 = affine.min affine_map<(d0) -> (-d0 + 8193, 512)>(%arg4)
          %extracted_slice = tensor.extract_slice %transposed_9[%arg0, %arg2] [%14, %15] [1, 1] : tensor<8190x8191xf64> to tensor<?x?xf64>
          %extracted_slice_11 = tensor.extract_slice %transposed[%arg2, %arg4] [%15, %16] [1, 1] : tensor<8191x8193xf64> to tensor<?x?xf64>
          %extracted_slice_12 = tensor.extract_slice %arg5[%arg0, %arg4] [%14, %16] [1, 1] : tensor<8190x8193xf64> to tensor<?x?xf64>
          %17 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_11 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_12 : tensor<?x?xf64>) -> tensor<?x?xf64>
          %inserted_slice = tensor.insert_slice %17 into %arg5[%arg0, %arg4] [%14, %16] [1, 1] : tensor<?x?xf64> into tensor<8190x8193xf64>
          scf.yield %inserted_slice : tensor<8190x8193xf64>
        }
        scf.yield %13 : tensor<8190x8193xf64>
      }
      scf.yield %12 : tensor<8190x8193xf64>
    }
    %transposed_10 = linalg.transpose ins(%11 : tensor<8190x8193xf64>) outs(%2 : tensor<8193x8190xf64>) permutation = [1, 0] 
    scf.yield %transposed_10 : tensor<8193x8190xf64>
  }
  default {
    scf.yield %2 : tensor<8193x8190xf64>
  }
  %5 = "ta.getTime"() : () -> f64
  %c0_4 = arith.constant 0 : index
  %alloc_5 = memref.alloc() : memref<1xf64>
  %cst_6 = arith.constant 0.000000e+00 : f64
  memref.store %cst_6, %alloc_5[%c0_4] : memref<1xf64>
  %c0_7 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c0_8 = arith.constant 0 : index
  %dim = tensor.dim %4, %c0_8 : tensor<8193x8190xf64>
  scf.for %arg0 = %c0_7 to %dim step %c1 {
    %c1_9 = arith.constant 1 : index
    %dim_10 = tensor.dim %4, %c1_9 : tensor<8193x8190xf64>
    scf.for %arg1 = %c0_7 to %dim_10 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8193x8190xf64>
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
  %c8190 = arith.constant 8190 : index
  %c8191 = arith.constant 8191 : index
  %c8193 = arith.constant 8193 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8193x8191xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8193x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8193x8190xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8193x8190xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = scf.index_switch %c0 -> tensor<8193x8190xf64> 
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c8193 step %c512 iter_args(%arg1 = %2) -> (tensor<8193x8190xf64>) {
      %8 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8193x8190xf64>) {
        %9 = scf.for %arg4 = %c0 to %c8190 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8193x8190xf64>) {
          %10 = affine.min affine_map<(d0) -> (-d0 + 8193, 512)>(%arg0)
          %11 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %12 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg4)
          %extracted_slice = tensor.extract_slice %0[%arg0, %arg2] [%10, %11] [1, 1] : tensor<8193x8191xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg4] [%11, %12] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg0, %arg4] [%10, %12] [1, 1] : tensor<8193x8190xf64> to tensor<?x?xf64>
          %13 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_5 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_6 : tensor<?x?xf64>) -> tensor<?x?xf64>
          %inserted_slice = tensor.insert_slice %13 into %arg5[%arg0, %arg4] [%10, %12] [1, 1] : tensor<?x?xf64> into tensor<8193x8190xf64>
          scf.yield %inserted_slice : tensor<8193x8190xf64>
        }
        scf.yield %9 : tensor<8193x8190xf64>
      }
      scf.yield %8 : tensor<8193x8190xf64>
    }
    scf.yield %7 : tensor<8193x8190xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<8191x8193xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8193x8191xf64>) outs(%7 : tensor<8191x8193xf64>) permutation = [1, 0] 
    %8 = tensor.empty() : tensor<8190x8191xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<8191x8190xf64>) outs(%8 : tensor<8190x8191xf64>) permutation = [1, 0] 
    %9 = tensor.empty() : tensor<8190x8193xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<8190x8193xf64>) -> tensor<8190x8193xf64>
    %11 = scf.for %arg0 = %c0 to %c8190 step %c512 iter_args(%arg1 = %10) -> (tensor<8190x8193xf64>) {
      %12 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8190x8193xf64>) {
        %13 = scf.for %arg4 = %c0 to %c8193 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8190x8193xf64>) {
          %14 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg0)
          %15 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %16 = affine.min affine_map<(d0) -> (-d0 + 8193, 512)>(%arg4)
          %extracted_slice = tensor.extract_slice %transposed_5[%arg0, %arg2] [%14, %15] [1, 1] : tensor<8190x8191xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg4] [%15, %16] [1, 1] : tensor<8191x8193xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg0, %arg4] [%14, %16] [1, 1] : tensor<8190x8193xf64> to tensor<?x?xf64>
          %17 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_7 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_8 : tensor<?x?xf64>) -> tensor<?x?xf64>
          %inserted_slice = tensor.insert_slice %17 into %arg5[%arg0, %arg4] [%14, %16] [1, 1] : tensor<?x?xf64> into tensor<8190x8193xf64>
          scf.yield %inserted_slice : tensor<8190x8193xf64>
        }
        scf.yield %13 : tensor<8190x8193xf64>
      }
      scf.yield %12 : tensor<8190x8193xf64>
    }
    %transposed_6 = linalg.transpose ins(%11 : tensor<8190x8193xf64>) outs(%2 : tensor<8193x8190xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<8193x8190xf64>
  }
  default {
    scf.yield %2 : tensor<8193x8190xf64>
  }
  %5 = "ta.getTime"() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8193 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8193x8190xf64>
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
  %c8190 = arith.constant 8190 : index
  %c8191 = arith.constant 8191 : index
  %c8193 = arith.constant 8193 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8193x8191xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8193x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8193x8190xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8193x8190xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = scf.index_switch %c0 -> tensor<8193x8190xf64> 
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c8193 step %c512 iter_args(%arg1 = %2) -> (tensor<8193x8190xf64>) {
      %8 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8193x8190xf64>) {
        %9 = scf.for %arg4 = %c0 to %c8190 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8193x8190xf64>) {
          %10 = affine.min affine_map<(d0) -> (-d0 + 8193, 512)>(%arg0)
          %11 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %12 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg4)
          %extracted_slice = tensor.extract_slice %0[%arg0, %arg2] [%10, %11] [1, 1] : tensor<8193x8191xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg4] [%11, %12] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg0, %arg4] [%10, %12] [1, 1] : tensor<8193x8190xf64> to tensor<?x?xf64>
          %13 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_5 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_6 : tensor<?x?xf64>) -> tensor<?x?xf64>
          %inserted_slice = tensor.insert_slice %13 into %arg5[%arg0, %arg4] [%10, %12] [1, 1] : tensor<?x?xf64> into tensor<8193x8190xf64>
          scf.yield %inserted_slice : tensor<8193x8190xf64>
        }
        scf.yield %9 : tensor<8193x8190xf64>
      }
      scf.yield %8 : tensor<8193x8190xf64>
    }
    scf.yield %7 : tensor<8193x8190xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<8191x8193xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8193x8191xf64>) outs(%7 : tensor<8191x8193xf64>) permutation = [1, 0] 
    %8 = tensor.empty() : tensor<8190x8191xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<8191x8190xf64>) outs(%8 : tensor<8190x8191xf64>) permutation = [1, 0] 
    %9 = tensor.empty() : tensor<8190x8193xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<8190x8193xf64>) -> tensor<8190x8193xf64>
    %11 = scf.for %arg0 = %c0 to %c8190 step %c512 iter_args(%arg1 = %10) -> (tensor<8190x8193xf64>) {
      %12 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8190x8193xf64>) {
        %13 = scf.for %arg4 = %c0 to %c8193 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8190x8193xf64>) {
          %14 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg0)
          %15 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %16 = affine.min affine_map<(d0) -> (-d0 + 8193, 512)>(%arg4)
          %extracted_slice = tensor.extract_slice %transposed_5[%arg0, %arg2] [%14, %15] [1, 1] : tensor<8190x8191xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg4] [%15, %16] [1, 1] : tensor<8191x8193xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg0, %arg4] [%14, %16] [1, 1] : tensor<8190x8193xf64> to tensor<?x?xf64>
          %17 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_7 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_8 : tensor<?x?xf64>) -> tensor<?x?xf64>
          %inserted_slice = tensor.insert_slice %17 into %arg5[%arg0, %arg4] [%14, %16] [1, 1] : tensor<?x?xf64> into tensor<8190x8193xf64>
          scf.yield %inserted_slice : tensor<8190x8193xf64>
        }
        scf.yield %13 : tensor<8190x8193xf64>
      }
      scf.yield %12 : tensor<8190x8193xf64>
    }
    %transposed_6 = linalg.transpose ins(%11 : tensor<8190x8193xf64>) outs(%2 : tensor<8193x8190xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<8193x8190xf64>
  }
  default {
    scf.yield %2 : tensor<8193x8190xf64>
  }
  %5 = "ta.getTime"() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8193 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8193x8190xf64>
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
  %c8190 = arith.constant 8190 : index
  %c8191 = arith.constant 8191 : index
  %c8193 = arith.constant 8193 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8193x8191xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8193x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8193x8190xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8193x8190xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = scf.index_switch %c0 -> tensor<8193x8190xf64> 
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c8193 step %c512 iter_args(%arg1 = %2) -> (tensor<8193x8190xf64>) {
      %8 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8193x8190xf64>) {
        %9 = scf.for %arg4 = %c0 to %c8190 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8193x8190xf64>) {
          %10 = affine.min affine_map<(d0) -> (-d0 + 8193, 512)>(%arg0)
          %11 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %12 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg4)
          %extracted_slice = tensor.extract_slice %0[%arg0, %arg2] [%10, %11] [1, 1] : tensor<8193x8191xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg4] [%11, %12] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg0, %arg4] [%10, %12] [1, 1] : tensor<8193x8190xf64> to tensor<?x?xf64>
          %13 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_5 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_6 : tensor<?x?xf64>) -> tensor<?x?xf64>
          %inserted_slice = tensor.insert_slice %13 into %arg5[%arg0, %arg4] [%10, %12] [1, 1] : tensor<?x?xf64> into tensor<8193x8190xf64>
          scf.yield %inserted_slice : tensor<8193x8190xf64>
        }
        scf.yield %9 : tensor<8193x8190xf64>
      }
      scf.yield %8 : tensor<8193x8190xf64>
    }
    scf.yield %7 : tensor<8193x8190xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<8191x8193xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8193x8191xf64>) outs(%7 : tensor<8191x8193xf64>) permutation = [1, 0] 
    %8 = tensor.empty() : tensor<8190x8191xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<8191x8190xf64>) outs(%8 : tensor<8190x8191xf64>) permutation = [1, 0] 
    %9 = tensor.empty() : tensor<8190x8193xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<8190x8193xf64>) -> tensor<8190x8193xf64>
    %11 = scf.for %arg0 = %c0 to %c8190 step %c512 iter_args(%arg1 = %10) -> (tensor<8190x8193xf64>) {
      %12 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8190x8193xf64>) {
        %13 = scf.for %arg4 = %c0 to %c8193 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8190x8193xf64>) {
          %14 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg0)
          %15 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %16 = affine.min affine_map<(d0) -> (-d0 + 8193, 512)>(%arg4)
          %extracted_slice = tensor.extract_slice %transposed_5[%arg0, %arg2] [%14, %15] [1, 1] : tensor<8190x8191xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg4] [%15, %16] [1, 1] : tensor<8191x8193xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg0, %arg4] [%14, %16] [1, 1] : tensor<8190x8193xf64> to tensor<?x?xf64>
          %17 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_7 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_8 : tensor<?x?xf64>) -> tensor<?x?xf64>
          %inserted_slice = tensor.insert_slice %17 into %arg5[%arg0, %arg4] [%14, %16] [1, 1] : tensor<?x?xf64> into tensor<8190x8193xf64>
          scf.yield %inserted_slice : tensor<8190x8193xf64>
        }
        scf.yield %13 : tensor<8190x8193xf64>
      }
      scf.yield %12 : tensor<8190x8193xf64>
    }
    %transposed_6 = linalg.transpose ins(%11 : tensor<8190x8193xf64>) outs(%2 : tensor<8193x8190xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<8193x8190xf64>
  }
  default {
    scf.yield %2 : tensor<8193x8190xf64>
  }
  %5 = "ta.getTime"() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8193 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8193x8190xf64>
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
  %c8190 = arith.constant 8190 : index
  %c8191 = arith.constant 8191 : index
  %c8193 = arith.constant 8193 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8193x8191xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8193x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8193x8190xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8193x8190xf64>
  %3 = "ta.getTime"() : () -> f64
  %4 = scf.index_switch %c0 -> tensor<8193x8190xf64> 
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c8193 step %c512 iter_args(%arg1 = %2) -> (tensor<8193x8190xf64>) {
      %8 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8193x8190xf64>) {
        %9 = scf.for %arg4 = %c0 to %c8190 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8193x8190xf64>) {
          %10 = affine.min affine_map<(d0) -> (-d0 + 8193, 512)>(%arg0)
          %11 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %12 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg4)
          %extracted_slice = tensor.extract_slice %0[%arg0, %arg2] [%10, %11] [1, 1] : tensor<8193x8191xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg4] [%11, %12] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg0, %arg4] [%10, %12] [1, 1] : tensor<8193x8190xf64> to tensor<?x?xf64>
          %13 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_5 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_6 : tensor<?x?xf64>) -> tensor<?x?xf64>
          %inserted_slice = tensor.insert_slice %13 into %arg5[%arg0, %arg4] [%10, %12] [1, 1] : tensor<?x?xf64> into tensor<8193x8190xf64>
          scf.yield %inserted_slice : tensor<8193x8190xf64>
        }
        scf.yield %9 : tensor<8193x8190xf64>
      }
      scf.yield %8 : tensor<8193x8190xf64>
    }
    scf.yield %7 : tensor<8193x8190xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<8191x8193xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8193x8191xf64>) outs(%7 : tensor<8191x8193xf64>) permutation = [1, 0] 
    %8 = tensor.empty() : tensor<8190x8191xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<8191x8190xf64>) outs(%8 : tensor<8190x8191xf64>) permutation = [1, 0] 
    %9 = tensor.empty() : tensor<8190x8193xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<8190x8193xf64>) -> tensor<8190x8193xf64>
    %11 = scf.for %arg0 = %c0 to %c8190 step %c512 iter_args(%arg1 = %10) -> (tensor<8190x8193xf64>) {
      %12 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8190x8193xf64>) {
        %13 = scf.for %arg4 = %c0 to %c8193 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8190x8193xf64>) {
          %14 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg0)
          %15 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %16 = affine.min affine_map<(d0) -> (-d0 + 8193, 512)>(%arg4)
          %extracted_slice = tensor.extract_slice %transposed_5[%arg0, %arg2] [%14, %15] [1, 1] : tensor<8190x8191xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg4] [%15, %16] [1, 1] : tensor<8191x8193xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg0, %arg4] [%14, %16] [1, 1] : tensor<8190x8193xf64> to tensor<?x?xf64>
          %17 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_7 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_8 : tensor<?x?xf64>) -> tensor<?x?xf64>
          %inserted_slice = tensor.insert_slice %17 into %arg5[%arg0, %arg4] [%14, %16] [1, 1] : tensor<?x?xf64> into tensor<8190x8193xf64>
          scf.yield %inserted_slice : tensor<8190x8193xf64>
        }
        scf.yield %13 : tensor<8190x8193xf64>
      }
      scf.yield %12 : tensor<8190x8193xf64>
    }
    %transposed_6 = linalg.transpose ins(%11 : tensor<8190x8193xf64>) outs(%2 : tensor<8193x8190xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<8193x8190xf64>
  }
  default {
    scf.yield %2 : tensor<8193x8190xf64>
  }
  %5 = "ta.getTime"() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8193 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8193x8190xf64>
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
  %c8190 = arith.constant 8190 : index
  %c8191 = arith.constant 8191 : index
  %c8193 = arith.constant 8193 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8193x8191xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8193x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8193x8190xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8193x8190xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.index_switch %c0 -> tensor<8193x8190xf64> 
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c8193 step %c512 iter_args(%arg1 = %2) -> (tensor<8193x8190xf64>) {
      %8 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8193x8190xf64>) {
        %9 = scf.for %arg4 = %c0 to %c8190 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8193x8190xf64>) {
          %10 = affine.min affine_map<(d0) -> (-d0 + 8193, 512)>(%arg0)
          %11 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %12 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg4)
          %extracted_slice = tensor.extract_slice %0[%arg0, %arg2] [%10, %11] [1, 1] : tensor<8193x8191xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg4] [%11, %12] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg0, %arg4] [%10, %12] [1, 1] : tensor<8193x8190xf64> to tensor<?x?xf64>
          %13 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_5 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_6 : tensor<?x?xf64>) -> tensor<?x?xf64>
          %inserted_slice = tensor.insert_slice %13 into %arg5[%arg0, %arg4] [%10, %12] [1, 1] : tensor<?x?xf64> into tensor<8193x8190xf64>
          scf.yield %inserted_slice : tensor<8193x8190xf64>
        }
        scf.yield %9 : tensor<8193x8190xf64>
      }
      scf.yield %8 : tensor<8193x8190xf64>
    }
    scf.yield %7 : tensor<8193x8190xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<8191x8193xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8193x8191xf64>) outs(%7 : tensor<8191x8193xf64>) permutation = [1, 0] 
    %8 = tensor.empty() : tensor<8190x8191xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<8191x8190xf64>) outs(%8 : tensor<8190x8191xf64>) permutation = [1, 0] 
    %9 = tensor.empty() : tensor<8190x8193xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<8190x8193xf64>) -> tensor<8190x8193xf64>
    %11 = scf.for %arg0 = %c0 to %c8190 step %c512 iter_args(%arg1 = %10) -> (tensor<8190x8193xf64>) {
      %12 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8190x8193xf64>) {
        %13 = scf.for %arg4 = %c0 to %c8193 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8190x8193xf64>) {
          %14 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg0)
          %15 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %16 = affine.min affine_map<(d0) -> (-d0 + 8193, 512)>(%arg4)
          %extracted_slice = tensor.extract_slice %transposed_5[%arg0, %arg2] [%14, %15] [1, 1] : tensor<8190x8191xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg4] [%15, %16] [1, 1] : tensor<8191x8193xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg0, %arg4] [%14, %16] [1, 1] : tensor<8190x8193xf64> to tensor<?x?xf64>
          %17 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_7 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_8 : tensor<?x?xf64>) -> tensor<?x?xf64>
          %inserted_slice = tensor.insert_slice %17 into %arg5[%arg0, %arg4] [%14, %16] [1, 1] : tensor<?x?xf64> into tensor<8190x8193xf64>
          scf.yield %inserted_slice : tensor<8190x8193xf64>
        }
        scf.yield %13 : tensor<8190x8193xf64>
      }
      scf.yield %12 : tensor<8190x8193xf64>
    }
    %transposed_6 = linalg.transpose ins(%11 : tensor<8190x8193xf64>) outs(%2 : tensor<8193x8190xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<8193x8190xf64>
  }
  default {
    scf.yield %2 : tensor<8193x8190xf64>
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8193 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8193x8190xf64>
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
  %c8190 = arith.constant 8190 : index
  %c8191 = arith.constant 8191 : index
  %c8193 = arith.constant 8193 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8193x8191xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8193x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8193x8190xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8193x8190xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.index_switch %c0 -> tensor<8193x8190xf64> 
  case 0 {
    %7 = scf.for %arg0 = %c0 to %c8193 step %c512 iter_args(%arg1 = %2) -> (tensor<8193x8190xf64>) {
      %8 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8193x8190xf64>) {
        %9 = scf.for %arg4 = %c0 to %c8190 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8193x8190xf64>) {
          %10 = affine.min affine_map<(d0) -> (-d0 + 8193, 512)>(%arg0)
          %11 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %12 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg4)
          %extracted_slice = tensor.extract_slice %0[%arg0, %arg2] [%10, %11] [1, 1] : tensor<8193x8191xf64> to tensor<?x?xf64>
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg4] [%11, %12] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg0, %arg4] [%10, %12] [1, 1] : tensor<8193x8190xf64> to tensor<?x?xf64>
          %13 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_5 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_6 : tensor<?x?xf64>) -> tensor<?x?xf64>
          %inserted_slice = tensor.insert_slice %13 into %arg5[%arg0, %arg4] [%10, %12] [1, 1] : tensor<?x?xf64> into tensor<8193x8190xf64>
          scf.yield %inserted_slice : tensor<8193x8190xf64>
        }
        scf.yield %9 : tensor<8193x8190xf64>
      }
      scf.yield %8 : tensor<8193x8190xf64>
    }
    scf.yield %7 : tensor<8193x8190xf64>
  }
  case 1 {
    %7 = tensor.empty() : tensor<8191x8193xf64>
    %transposed = linalg.transpose ins(%0 : tensor<8193x8191xf64>) outs(%7 : tensor<8191x8193xf64>) permutation = [1, 0] 
    %8 = tensor.empty() : tensor<8190x8191xf64>
    %transposed_5 = linalg.transpose ins(%1 : tensor<8191x8190xf64>) outs(%8 : tensor<8190x8191xf64>) permutation = [1, 0] 
    %9 = tensor.empty() : tensor<8190x8193xf64>
    %10 = linalg.fill ins(%cst : f64) outs(%9 : tensor<8190x8193xf64>) -> tensor<8190x8193xf64>
    %11 = scf.for %arg0 = %c0 to %c8190 step %c512 iter_args(%arg1 = %10) -> (tensor<8190x8193xf64>) {
      %12 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8190x8193xf64>) {
        %13 = scf.for %arg4 = %c0 to %c8193 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8190x8193xf64>) {
          %14 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg0)
          %15 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
          %16 = affine.min affine_map<(d0) -> (-d0 + 8193, 512)>(%arg4)
          %extracted_slice = tensor.extract_slice %transposed_5[%arg0, %arg2] [%14, %15] [1, 1] : tensor<8190x8191xf64> to tensor<?x?xf64>
          %extracted_slice_7 = tensor.extract_slice %transposed[%arg2, %arg4] [%15, %16] [1, 1] : tensor<8191x8193xf64> to tensor<?x?xf64>
          %extracted_slice_8 = tensor.extract_slice %arg5[%arg0, %arg4] [%14, %16] [1, 1] : tensor<8190x8193xf64> to tensor<?x?xf64>
          %17 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_7 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_8 : tensor<?x?xf64>) -> tensor<?x?xf64>
          %inserted_slice = tensor.insert_slice %17 into %arg5[%arg0, %arg4] [%14, %16] [1, 1] : tensor<?x?xf64> into tensor<8190x8193xf64>
          scf.yield %inserted_slice : tensor<8190x8193xf64>
        }
        scf.yield %13 : tensor<8190x8193xf64>
      }
      scf.yield %12 : tensor<8190x8193xf64>
    }
    %transposed_6 = linalg.transpose ins(%11 : tensor<8190x8193xf64>) outs(%2 : tensor<8193x8190xf64>) permutation = [1, 0] 
    scf.yield %transposed_6 : tensor<8193x8190xf64>
  }
  default {
    scf.yield %2 : tensor<8193x8190xf64>
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8193 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8193x8190xf64>
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
  %c8190 = arith.constant 8190 : index
  %c8191 = arith.constant 8191 : index
  %c8193 = arith.constant 8193 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8193x8191xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8193x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8193x8190xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8193x8190xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.for %arg0 = %c0 to %c8193 step %c512 iter_args(%arg1 = %2) -> (tensor<8193x8190xf64>) {
    %7 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8193x8190xf64>) {
      %8 = scf.for %arg4 = %c0 to %c8190 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8193x8190xf64>) {
        %9 = affine.min affine_map<(d0) -> (-d0 + 8193, 512)>(%arg0)
        %10 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
        %11 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg4)
        %extracted_slice = tensor.extract_slice %0[%arg0, %arg2] [%9, %10] [1, 1] : tensor<8193x8191xf64> to tensor<?x?xf64>
        %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg4] [%10, %11] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
        %extracted_slice_6 = tensor.extract_slice %arg5[%arg0, %arg4] [%9, %11] [1, 1] : tensor<8193x8190xf64> to tensor<?x?xf64>
        %12 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_5 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_6 : tensor<?x?xf64>) -> tensor<?x?xf64>
        %inserted_slice = tensor.insert_slice %12 into %arg5[%arg0, %arg4] [%9, %11] [1, 1] : tensor<?x?xf64> into tensor<8193x8190xf64>
        scf.yield %inserted_slice : tensor<8193x8190xf64>
      }
      scf.yield %8 : tensor<8193x8190xf64>
    }
    scf.yield %7 : tensor<8193x8190xf64>
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8193 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8193x8190xf64>
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
  %c8190 = arith.constant 8190 : index
  %c8191 = arith.constant 8191 : index
  %c8193 = arith.constant 8193 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8193x8191xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8193x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8193x8190xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8193x8190xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.for %arg0 = %c0 to %c8193 step %c512 iter_args(%arg1 = %2) -> (tensor<8193x8190xf64>) {
    %7 = affine.min affine_map<(d0) -> (-d0 + 8193, 512)>(%arg0)
    %8 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8193x8190xf64>) {
      %9 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
      %extracted_slice = tensor.extract_slice %0[%arg0, %arg2] [%7, %9] [1, 1] : tensor<8193x8191xf64> to tensor<?x?xf64>
      %10 = scf.for %arg4 = %c0 to %c8190 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8193x8190xf64>) {
        %11 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg4)
        %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg4] [%9, %11] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
        %extracted_slice_6 = tensor.extract_slice %arg5[%arg0, %arg4] [%7, %11] [1, 1] : tensor<8193x8190xf64> to tensor<?x?xf64>
        %12 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_5 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_6 : tensor<?x?xf64>) -> tensor<?x?xf64>
        %inserted_slice = tensor.insert_slice %12 into %arg5[%arg0, %arg4] [%7, %11] [1, 1] : tensor<?x?xf64> into tensor<8193x8190xf64>
        scf.yield %inserted_slice : tensor<8193x8190xf64>
      }
      scf.yield %10 : tensor<8193x8190xf64>
    }
    scf.yield %8 : tensor<8193x8190xf64>
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8193 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8193x8190xf64>
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
  %c8190 = arith.constant 8190 : index
  %c8191 = arith.constant 8191 : index
  %c8193 = arith.constant 8193 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8193x8191xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8193x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8193x8190xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8193x8190xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.for %arg0 = %c0 to %c8193 step %c512 iter_args(%arg1 = %2) -> (tensor<8193x8190xf64>) {
    %7 = affine.min affine_map<(d0) -> (-d0 + 8193, 512)>(%arg0)
    %8 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8193x8190xf64>) {
      %9 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
      %extracted_slice = tensor.extract_slice %0[%arg0, %arg2] [%7, %9] [1, 1] : tensor<8193x8191xf64> to tensor<?x?xf64>
      %10 = scf.for %arg4 = %c0 to %c8190 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8193x8190xf64>) {
        %11 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg4)
        %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg4] [%9, %11] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
        %extracted_slice_6 = tensor.extract_slice %arg5[%arg0, %arg4] [%7, %11] [1, 1] : tensor<8193x8190xf64> to tensor<?x?xf64>
        %12 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_5 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_6 : tensor<?x?xf64>) -> tensor<?x?xf64>
        %inserted_slice = tensor.insert_slice %12 into %arg5[%arg0, %arg4] [%7, %11] [1, 1] : tensor<?x?xf64> into tensor<8193x8190xf64>
        scf.yield %inserted_slice : tensor<8193x8190xf64>
      }
      scf.yield %10 : tensor<8193x8190xf64>
    }
    scf.yield %8 : tensor<8193x8190xf64>
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8193 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8193x8190xf64>
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
  %c8190 = arith.constant 8190 : index
  %c8191 = arith.constant 8191 : index
  %c8193 = arith.constant 8193 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8193x8191xf64>)
  %0 = bufferization.to_tensor %alloc restrict writable : memref<8193x8191xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8193x8190xf64>)
  %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8193x8190xf64>
  %3 = call @getTime() : () -> f64
  %4 = scf.for %arg0 = %c0 to %c8193 step %c512 iter_args(%arg1 = %2) -> (tensor<8193x8190xf64>) {
    %7 = affine.min affine_map<(d0) -> (-d0 + 8193, 512)>(%arg0)
    %8 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8193x8190xf64>) {
      %9 = affine.min affine_map<(d0) -> (-d0 + 8191, 512)>(%arg2)
      %extracted_slice = tensor.extract_slice %0[%arg0, %arg2] [%7, %9] [1, 1] : tensor<8193x8191xf64> to tensor<?x?xf64>
      %10 = scf.for %arg4 = %c0 to %c8190 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8193x8190xf64>) {
        %11 = affine.min affine_map<(d0) -> (-d0 + 8190, 512)>(%arg4)
        %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg4] [%9, %11] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
        %extracted_slice_6 = tensor.extract_slice %arg5[%arg0, %arg4] [%7, %11] [1, 1] : tensor<8193x8190xf64> to tensor<?x?xf64>
        %12 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_5 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_6 : tensor<?x?xf64>) -> tensor<?x?xf64>
        %inserted_slice = tensor.insert_slice %12 into %arg5[%arg0, %arg4] [%7, %11] [1, 1] : tensor<?x?xf64> into tensor<8193x8190xf64>
        scf.yield %inserted_slice : tensor<8193x8190xf64>
      }
      scf.yield %10 : tensor<8193x8190xf64>
    }
    scf.yield %8 : tensor<8193x8190xf64>
  }
  %5 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8193 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8193x8190xf64>
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
#map = affine_map<(d0) -> (-d0 + 8193, 512)>
#map1 = affine_map<(d0) -> (-d0 + 8191, 512)>
#map2 = affine_map<(d0) -> (-d0 + 8190, 512)>
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8190 = arith.constant 8190 : index
    %c8191 = arith.constant 8191 : index
    %c8193 = arith.constant 8193 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8193x8191xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<8193x8191xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8193x8190xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8193x8190xf64>
    %3 = call @getTime() : () -> f64
    %4 = scf.for %arg0 = %c0 to %c8193 step %c512 iter_args(%arg1 = %2) -> (tensor<8193x8190xf64>) {
      %7 = affine.min #map(%arg0)
      %8 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8193x8190xf64>) {
        %9 = affine.min #map1(%arg2)
        %extracted_slice = tensor.extract_slice %0[%arg0, %arg2] [%7, %9] [1, 1] : tensor<8193x8191xf64> to tensor<?x?xf64>
        %10 = scf.for %arg4 = %c0 to %c8190 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8193x8190xf64>) {
          %11 = affine.min #map2(%arg4)
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg4] [%9, %11] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg0, %arg4] [%7, %11] [1, 1] : tensor<8193x8190xf64> to tensor<?x?xf64>
          %12 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_5 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_6 : tensor<?x?xf64>) -> tensor<?x?xf64>
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg0, %arg4] [%7, %11] [1, 1] : tensor<?x?xf64> into tensor<8193x8190xf64>
          scf.yield %inserted_slice : tensor<8193x8190xf64>
        }
        scf.yield %10 : tensor<8193x8190xf64>
      }
      scf.yield %8 : tensor<8193x8190xf64>
    }
    %5 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8193x8190xf64>
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
#map = affine_map<(d0) -> (-d0 + 8193, 512)>
#map1 = affine_map<(d0) -> (-d0 + 8191, 512)>
#map2 = affine_map<(d0) -> (-d0 + 8190, 512)>
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8190 = arith.constant 8190 : index
    %c8191 = arith.constant 8191 : index
    %c8193 = arith.constant 8193 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8193x8191xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<8193x8191xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8193x8190xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8193x8190xf64>
    %3 = call @getTime() : () -> f64
    %4 = scf.for %arg0 = %c0 to %c8193 step %c512 iter_args(%arg1 = %2) -> (tensor<8193x8190xf64>) {
      %7 = affine.min #map(%arg0)
      %8 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8193x8190xf64>) {
        %9 = affine.min #map1(%arg2)
        %extracted_slice = tensor.extract_slice %0[%arg0, %arg2] [%7, %9] [1, 1] : tensor<8193x8191xf64> to tensor<?x?xf64>
        %10 = scf.for %arg4 = %c0 to %c8190 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8193x8190xf64>) {
          %11 = affine.min #map2(%arg4)
          %extracted_slice_5 = tensor.extract_slice %1[%arg2, %arg4] [%9, %11] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
          %extracted_slice_6 = tensor.extract_slice %arg5[%arg0, %arg4] [%7, %11] [1, 1] : tensor<8193x8190xf64> to tensor<?x?xf64>
          %12 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_5 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_6 : tensor<?x?xf64>) -> tensor<?x?xf64>
          %inserted_slice = tensor.insert_slice %12 into %arg5[%arg0, %arg4] [%7, %11] [1, 1] : tensor<?x?xf64> into tensor<8193x8190xf64>
          scf.yield %inserted_slice : tensor<8193x8190xf64>
        }
        scf.yield %10 : tensor<8193x8190xf64>
      }
      scf.yield %8 : tensor<8193x8190xf64>
    }
    %5 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8193x8190xf64>
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
    %c8190 = arith.constant 8190 : index
    %c8191 = arith.constant 8191 : index
    %c8193 = arith.constant 8193 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8193x8191xf64>)
    %0 = bufferization.to_tensor %alloc restrict writable : memref<8193x8191xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
    %1 = bufferization.to_tensor %alloc_2 restrict writable : memref<8191x8190xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8193x8190xf64>)
    %2 = bufferization.to_tensor %alloc_3 restrict writable : memref<8193x8190xf64>
    %3 = call @getTime() : () -> f64
    %4 = scf.for %arg0 = %c0 to %c8193 step %c512 iter_args(%arg1 = %2) -> (tensor<8193x8190xf64>) {
      %c-1 = arith.constant -1 : index
      %7 = arith.muli %arg0, %c-1 : index
      %c8193_5 = arith.constant 8193 : index
      %8 = arith.addi %7, %c8193_5 : index
      %c512_6 = arith.constant 512 : index
      %9 = arith.minsi %8, %c512_6 : index
      %10 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (tensor<8193x8190xf64>) {
        %c-1_7 = arith.constant -1 : index
        %11 = arith.muli %arg2, %c-1_7 : index
        %c8191_8 = arith.constant 8191 : index
        %12 = arith.addi %11, %c8191_8 : index
        %c512_9 = arith.constant 512 : index
        %13 = arith.minsi %12, %c512_9 : index
        %extracted_slice = tensor.extract_slice %0[%arg0, %arg2] [%9, %13] [1, 1] : tensor<8193x8191xf64> to tensor<?x?xf64>
        %14 = scf.for %arg4 = %c0 to %c8190 step %c512 iter_args(%arg5 = %arg3) -> (tensor<8193x8190xf64>) {
          %c-1_10 = arith.constant -1 : index
          %15 = arith.muli %arg4, %c-1_10 : index
          %c8190_11 = arith.constant 8190 : index
          %16 = arith.addi %15, %c8190_11 : index
          %c512_12 = arith.constant 512 : index
          %17 = arith.minsi %16, %c512_12 : index
          %extracted_slice_13 = tensor.extract_slice %1[%arg2, %arg4] [%13, %17] [1, 1] : tensor<8191x8190xf64> to tensor<?x?xf64>
          %extracted_slice_14 = tensor.extract_slice %arg5[%arg0, %arg4] [%9, %17] [1, 1] : tensor<8193x8190xf64> to tensor<?x?xf64>
          %18 = linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%extracted_slice, %extracted_slice_13 : tensor<?x?xf64>, tensor<?x?xf64>) outs(%extracted_slice_14 : tensor<?x?xf64>) -> tensor<?x?xf64>
          %inserted_slice = tensor.insert_slice %18 into %arg5[%arg0, %arg4] [%9, %17] [1, 1] : tensor<?x?xf64> into tensor<8193x8190xf64>
          scf.yield %inserted_slice : tensor<8193x8190xf64>
        }
        scf.yield %14 : tensor<8193x8190xf64>
      }
      scf.yield %10 : tensor<8193x8190xf64>
    }
    %5 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %extracted = tensor.extract %4[%arg0, %arg1] : tensor<8193x8190xf64>
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
    %c8190 = arith.constant 8190 : index
    %c8191 = arith.constant 8191 : index
    %c8193 = arith.constant 8193 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8193x8191xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8193x8190xf64>)
    %0 = call @getTime() : () -> f64
    %1 = scf.for %arg0 = %c0 to %c8193 step %c512 iter_args(%arg1 = %alloc_3) -> (memref<8193x8190xf64>) {
      %c-1 = arith.constant -1 : index
      %4 = arith.muli %arg0, %c-1 : index
      %c8193_5 = arith.constant 8193 : index
      %5 = arith.addi %4, %c8193_5 : index
      %c512_6 = arith.constant 512 : index
      %6 = arith.minsi %5, %c512_6 : index
      %7 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (memref<8193x8190xf64>) {
        %c-1_7 = arith.constant -1 : index
        %8 = arith.muli %arg2, %c-1_7 : index
        %c8191_8 = arith.constant 8191 : index
        %9 = arith.addi %8, %c8191_8 : index
        %c512_9 = arith.constant 512 : index
        %10 = arith.minsi %9, %c512_9 : index
        %subview = memref.subview %alloc[%arg0, %arg2] [%6, %10] [1, 1] : memref<8193x8191xf64> to memref<?x?xf64, strided<[8191, 1], offset: ?>>
        %11 = scf.for %arg4 = %c0 to %c8190 step %c512 iter_args(%arg5 = %arg3) -> (memref<8193x8190xf64>) {
          %c-1_10 = arith.constant -1 : index
          %12 = arith.muli %arg4, %c-1_10 : index
          %c8190_11 = arith.constant 8190 : index
          %13 = arith.addi %12, %c8190_11 : index
          %c512_12 = arith.constant 512 : index
          %14 = arith.minsi %13, %c512_12 : index
          %subview_13 = memref.subview %alloc_2[%arg2, %arg4] [%10, %14] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          %subview_14 = memref.subview %arg5[%arg0, %arg4] [%6, %14] [1, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%subview, %subview_13 : memref<?x?xf64, strided<[8191, 1], offset: ?>>, memref<?x?xf64, strided<[8190, 1], offset: ?>>) outs(%subview_14 : memref<?x?xf64, strided<[8190, 1], offset: ?>>)
          %subview_15 = memref.subview %arg5[%arg0, %arg4] [%6, %14] [1, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          memref.copy %subview_14, %subview_15 : memref<?x?xf64, strided<[8190, 1], offset: ?>> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          scf.yield %arg5 : memref<8193x8190xf64>
        }
        scf.yield %11 : memref<8193x8190xf64>
      }
      scf.yield %7 : memref<8193x8190xf64>
    }
    %2 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %4 = memref.load %1[%arg0, %arg1] : memref<8193x8190xf64>
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
  %c8190 = arith.constant 8190 : index
  %c8191 = arith.constant 8191 : index
  %c8193 = arith.constant 8193 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8193x8191xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8193x8190xf64>)
  %0 = call @getTime() : () -> f64
  %1 = scf.for %arg0 = %c0 to %c8193 step %c512 iter_args(%arg1 = %alloc_3) -> (memref<8193x8190xf64>) {
    %c-1 = arith.constant -1 : index
    %4 = arith.muli %arg0, %c-1 : index
    %c8193_5 = arith.constant 8193 : index
    %5 = arith.addi %4, %c8193_5 : index
    %c512_6 = arith.constant 512 : index
    %6 = arith.minsi %5, %c512_6 : index
    %7 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (memref<8193x8190xf64>) {
      %c-1_7 = arith.constant -1 : index
      %8 = arith.muli %arg2, %c-1_7 : index
      %c8191_8 = arith.constant 8191 : index
      %9 = arith.addi %8, %c8191_8 : index
      %c512_9 = arith.constant 512 : index
      %10 = arith.minsi %9, %c512_9 : index
      %subview = memref.subview %alloc[%arg0, %arg2] [%6, %10] [1, 1] : memref<8193x8191xf64> to memref<?x?xf64, strided<[8191, 1], offset: ?>>
      %11 = scf.for %arg4 = %c0 to %c8190 step %c512 iter_args(%arg5 = %arg3) -> (memref<8193x8190xf64>) {
        %c-1_10 = arith.constant -1 : index
        %12 = arith.muli %arg4, %c-1_10 : index
        %c8190_11 = arith.constant 8190 : index
        %13 = arith.addi %12, %c8190_11 : index
        %c512_12 = arith.constant 512 : index
        %14 = arith.minsi %13, %c512_12 : index
        %subview_13 = memref.subview %alloc_2[%arg2, %arg4] [%10, %14] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        %subview_14 = memref.subview %arg5[%arg0, %arg4] [%6, %14] [1, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%subview, %subview_13 : memref<?x?xf64, strided<[8191, 1], offset: ?>>, memref<?x?xf64, strided<[8190, 1], offset: ?>>) outs(%subview_14 : memref<?x?xf64, strided<[8190, 1], offset: ?>>)
        %subview_15 = memref.subview %arg5[%arg0, %arg4] [%6, %14] [1, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        memref.copy %subview_14, %subview_15 : memref<?x?xf64, strided<[8190, 1], offset: ?>> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        scf.yield %arg5 : memref<8193x8190xf64>
      }
      scf.yield %11 : memref<8193x8190xf64>
    }
    scf.yield %7 : memref<8193x8190xf64>
  }
  %2 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8193 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %4 = memref.load %1[%arg0, %arg1] : memref<8193x8190xf64>
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
  %c8190 = arith.constant 8190 : index
  %c8191 = arith.constant 8191 : index
  %c8193 = arith.constant 8193 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8193x8191xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8193x8190xf64>)
  %0 = call @getTime() : () -> f64
  %1 = scf.for %arg0 = %c0 to %c8193 step %c512 iter_args(%arg1 = %alloc_3) -> (memref<8193x8190xf64>) {
    %c-1 = arith.constant -1 : index
    %4 = arith.muli %arg0, %c-1 : index
    %c8193_5 = arith.constant 8193 : index
    %5 = arith.addi %4, %c8193_5 : index
    %c512_6 = arith.constant 512 : index
    %6 = arith.minsi %5, %c512_6 : index
    %7 = scf.for %arg2 = %c0 to %c8191 step %c512 iter_args(%arg3 = %arg1) -> (memref<8193x8190xf64>) {
      %c-1_7 = arith.constant -1 : index
      %8 = arith.muli %arg2, %c-1_7 : index
      %c8191_8 = arith.constant 8191 : index
      %9 = arith.addi %8, %c8191_8 : index
      %c512_9 = arith.constant 512 : index
      %10 = arith.minsi %9, %c512_9 : index
      %subview = memref.subview %alloc[%arg0, %arg2] [%6, %10] [1, 1] : memref<8193x8191xf64> to memref<?x?xf64, strided<[8191, 1], offset: ?>>
      %11 = scf.for %arg4 = %c0 to %c8190 step %c512 iter_args(%arg5 = %arg3) -> (memref<8193x8190xf64>) {
        %c-1_10 = arith.constant -1 : index
        %12 = arith.muli %arg4, %c-1_10 : index
        %c8190_11 = arith.constant 8190 : index
        %13 = arith.addi %12, %c8190_11 : index
        %c512_12 = arith.constant 512 : index
        %14 = arith.minsi %13, %c512_12 : index
        %subview_13 = memref.subview %alloc_2[%arg2, %arg4] [%10, %14] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        %subview_14 = memref.subview %arg5[%arg0, %arg4] [%6, %14] [1, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%subview, %subview_13 : memref<?x?xf64, strided<[8191, 1], offset: ?>>, memref<?x?xf64, strided<[8190, 1], offset: ?>>) outs(%subview_14 : memref<?x?xf64, strided<[8190, 1], offset: ?>>)
        %subview_15 = memref.subview %arg5[%arg0, %arg4] [%6, %14] [1, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        memref.copy %subview_14, %subview_15 : memref<?x?xf64, strided<[8190, 1], offset: ?>> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        scf.yield %arg5 : memref<8193x8190xf64>
      }
      scf.yield %11 : memref<8193x8190xf64>
    }
    scf.yield %7 : memref<8193x8190xf64>
  }
  %2 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8193 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %4 = memref.load %1[%arg0, %arg1] : memref<8193x8190xf64>
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
    %c8190 = arith.constant 8190 : index
    %c8191 = arith.constant 8191 : index
    %c8193 = arith.constant 8193 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8193x8191xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8193x8190xf64>)
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8193 step %c512 {
      %3 = arith.subi %c8193, %arg0 : index
      %4 = arith.minsi %3, %c512 : index
      scf.for %arg1 = %c0 to %c8191 step %c512 {
        %5 = arith.subi %c8191, %arg1 : index
        %6 = arith.minsi %5, %c512 : index
        %subview = memref.subview %alloc[%arg0, %arg1] [%4, %6] [1, 1] : memref<8193x8191xf64> to memref<?x?xf64, strided<[8191, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8190 step %c512 {
          %7 = arith.subi %c8190, %arg2 : index
          %8 = arith.minsi %7, %c512 : index
          %subview_5 = memref.subview %alloc_2[%arg1, %arg2] [%6, %8] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg0, %arg2] [%4, %8] [1, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%subview, %subview_5 : memref<?x?xf64, strided<[8191, 1], offset: ?>>, memref<?x?xf64, strided<[8190, 1], offset: ?>>) outs(%subview_6 : memref<?x?xf64, strided<[8190, 1], offset: ?>>)
          %subview_7 = memref.subview %alloc_3[%arg0, %arg2] [%4, %8] [1, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          memref.copy %subview_6, %subview_7 : memref<?x?xf64, strided<[8190, 1], offset: ?>> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8193x8190xf64>
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
    %c8190 = arith.constant 8190 : index
    %c8191 = arith.constant 8191 : index
    %c8193 = arith.constant 8193 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8193x8191xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8193x8190xf64>)
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8193 step %c512 {
      %3 = arith.subi %c8193, %arg0 : index
      %4 = arith.minsi %3, %c512 : index
      scf.for %arg1 = %c0 to %c8191 step %c512 {
        %5 = arith.subi %c8191, %arg1 : index
        %6 = arith.minsi %5, %c512 : index
        %subview = memref.subview %alloc[%arg0, %arg1] [%4, %6] [1, 1] : memref<8193x8191xf64> to memref<?x?xf64, strided<[8191, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8190 step %c512 {
          %7 = arith.subi %c8190, %arg2 : index
          %8 = arith.minsi %7, %c512 : index
          %subview_5 = memref.subview %alloc_2[%arg1, %arg2] [%6, %8] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg0, %arg2] [%4, %8] [1, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%subview, %subview_5 : memref<?x?xf64, strided<[8191, 1], offset: ?>>, memref<?x?xf64, strided<[8190, 1], offset: ?>>) outs(%subview_6 : memref<?x?xf64, strided<[8190, 1], offset: ?>>)
          memref.copy %subview_6, %subview_6 : memref<?x?xf64, strided<[8190, 1], offset: ?>> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8193x8190xf64>
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
    %c8190 = arith.constant 8190 : index
    %c8191 = arith.constant 8191 : index
    %c8193 = arith.constant 8193 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8193x8191xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8193x8190xf64>)
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8193 step %c512 {
      %3 = arith.subi %c8193, %arg0 : index
      %4 = arith.minsi %3, %c512 : index
      scf.for %arg1 = %c0 to %c8191 step %c512 {
        %5 = arith.subi %c8191, %arg1 : index
        %6 = arith.minsi %5, %c512 : index
        %subview = memref.subview %alloc[%arg0, %arg1] [%4, %6] [1, 1] : memref<8193x8191xf64> to memref<?x?xf64, strided<[8191, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8190 step %c512 {
          %7 = arith.subi %c8190, %arg2 : index
          %8 = arith.minsi %7, %c512 : index
          %subview_5 = memref.subview %alloc_2[%arg1, %arg2] [%6, %8] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg0, %arg2] [%4, %8] [1, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%subview, %subview_5 : memref<?x?xf64, strided<[8191, 1], offset: ?>>, memref<?x?xf64, strided<[8190, 1], offset: ?>>) outs(%subview_6 : memref<?x?xf64, strided<[8190, 1], offset: ?>>)
          memref.copy %subview_6, %subview_6 : memref<?x?xf64, strided<[8190, 1], offset: ?>> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8193x8190xf64>
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
    %c8190 = arith.constant 8190 : index
    %c8191 = arith.constant 8191 : index
    %c8193 = arith.constant 8193 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8193x8191xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8193x8190xf64>)
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8193 step %c512 {
      %3 = arith.subi %c8193, %arg0 : index
      %4 = arith.minsi %3, %c512 : index
      scf.for %arg1 = %c0 to %c8191 step %c512 {
        %5 = arith.subi %c8191, %arg1 : index
        %6 = arith.minsi %5, %c512 : index
        %subview = memref.subview %alloc[%arg0, %arg1] [%4, %6] [1, 1] : memref<8193x8191xf64> to memref<?x?xf64, strided<[8191, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8190 step %c512 {
          %7 = arith.subi %c8190, %arg2 : index
          %8 = arith.minsi %7, %c512 : index
          %subview_5 = memref.subview %alloc_2[%arg1, %arg2] [%6, %8] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg0, %arg2] [%4, %8] [1, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%subview, %subview_5 : memref<?x?xf64, strided<[8191, 1], offset: ?>>, memref<?x?xf64, strided<[8190, 1], offset: ?>>) outs(%subview_6 : memref<?x?xf64, strided<[8190, 1], offset: ?>>)
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8193x8190xf64>
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
  %c1 = arith.constant 1 : index
  %c512 = arith.constant 512 : index
  %c8190 = arith.constant 8190 : index
  %c8191 = arith.constant 8191 : index
  %c8193 = arith.constant 8193 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8193x8191xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<8191x8190xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8193x8190xf64>)
  %0 = call @getTime() : () -> f64
  scf.for %arg0 = %c0 to %c8193 step %c512 {
    %3 = arith.subi %c8193, %arg0 : index
    %4 = arith.minsi %3, %c512 : index
    scf.for %arg1 = %c0 to %c8191 step %c512 {
      %5 = arith.subi %c8191, %arg1 : index
      %6 = arith.minsi %5, %c512 : index
      %subview = memref.subview %alloc[%arg0, %arg1] [%4, %6] [1, 1] : memref<8193x8191xf64> to memref<?x?xf64, strided<[8191, 1], offset: ?>>
      scf.for %arg2 = %c0 to %c8190 step %c512 {
        %7 = arith.subi %c8190, %arg2 : index
        %8 = arith.minsi %7, %c512 : index
        %subview_5 = memref.subview %alloc_2[%arg1, %arg2] [%6, %8] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        %subview_6 = memref.subview %alloc_3[%arg0, %arg2] [%4, %8] [1, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__L2__with_tiling__"} ins(%subview, %subview_5 : memref<?x?xf64, strided<[8191, 1], offset: ?>>, memref<?x?xf64, strided<[8190, 1], offset: ?>>) outs(%subview_6 : memref<?x?xf64, strided<[8190, 1], offset: ?>>)
      }
    }
  }
  %1 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8193 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8193x8190xf64>
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
  %c8190 = arith.constant 8190 : index
  %c8191 = arith.constant 8191 : index
  %c8193 = arith.constant 8193 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
  scf.for %arg0 = %c0 to %c8193 step %c1 {
    scf.for %arg1 = %c0 to %c8191 step %c1 {
      memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8193x8191xf64>
    }
  }
  %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
  scf.for %arg0 = %c0 to %c8191 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8191x8190xf64>
    }
  }
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
  scf.for %arg0 = %c0 to %c8193 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8193x8190xf64>
    }
  }
  %0 = call @getTime() : () -> f64
  scf.for %arg0 = %c0 to %c8193 step %c512 {
    %3 = arith.subi %c8193, %arg0 : index
    %4 = arith.minsi %3, %c512 : index
    scf.for %arg1 = %c0 to %c8191 step %c512 {
      %5 = arith.subi %c8191, %arg1 : index
      %6 = arith.minsi %5, %c512 : index
      %subview = memref.subview %alloc[%arg0, %arg1] [%4, %6] [1, 1] : memref<8193x8191xf64> to memref<?x?xf64, strided<[8191, 1], offset: ?>>
      scf.for %arg2 = %c0 to %c8190 step %c512 {
        %7 = arith.subi %c8190, %arg2 : index
        %8 = arith.minsi %7, %c512 : index
        %subview_5 = memref.subview %alloc_2[%arg1, %arg2] [%6, %8] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        %subview_6 = memref.subview %alloc_3[%arg0, %arg2] [%4, %8] [1, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
        scf.for %arg3 = %c0 to %4 step %c1 {
          scf.for %arg4 = %c0 to %8 step %c1 {
            scf.for %arg5 = %c0 to %6 step %c1 {
              %9 = memref.load %subview[%arg3, %arg5] : memref<?x?xf64, strided<[8191, 1], offset: ?>>
              %10 = memref.load %subview_5[%arg5, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
              %11 = memref.load %subview_6[%arg3, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
              %12 = arith.mulf %9, %10 : f64
              %13 = arith.addf %11, %12 : f64
              memref.store %13, %subview_6[%arg3, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
            }
          }
        }
      }
    }
  }
  %1 = call @getTime() : () -> f64
  %alloc_4 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_4[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %c8193 step %c1 {
    scf.for %arg1 = %c0 to %c8190 step %c1 {
      %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8193x8190xf64>
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
    %c8190 = arith.constant 8190 : index
    %c8191 = arith.constant 8191 : index
    %c8193 = arith.constant 8193 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8191 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8193x8191xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    scf.for %arg0 = %c0 to %c8191 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8191x8190xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8193x8190xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8193 step %c512 {
      %3 = arith.subi %c8193, %arg0 : index
      %4 = arith.minsi %3, %c512 : index
      scf.for %arg1 = %c0 to %c8191 step %c512 {
        %5 = arith.subi %c8191, %arg1 : index
        %6 = arith.minsi %5, %c512 : index
        %subview = memref.subview %alloc[%arg0, %arg1] [%4, %6] [1, 1] : memref<8193x8191xf64> to memref<?x?xf64, strided<[8191, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8190 step %c512 {
          %7 = arith.subi %c8190, %arg2 : index
          %8 = arith.minsi %7, %c512 : index
          %subview_5 = memref.subview %alloc_2[%arg1, %arg2] [%6, %8] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg0, %arg2] [%4, %8] [1, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          scf.for %arg3 = %c0 to %4 step %c1 {
            scf.for %arg4 = %c0 to %8 step %c1 {
              scf.for %arg5 = %c0 to %6 step %c1 {
                %9 = memref.load %subview[%arg3, %arg5] : memref<?x?xf64, strided<[8191, 1], offset: ?>>
                %10 = memref.load %subview_5[%arg5, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
                %11 = memref.load %subview_6[%arg3, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
                %12 = arith.mulf %9, %10 : f64
                %13 = arith.addf %11, %12 : f64
                memref.store %13, %subview_6[%arg3, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
              }
            }
          }
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8193x8190xf64>
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
    %c8190 = arith.constant 8190 : index
    %c8191 = arith.constant 8191 : index
    %c8193 = arith.constant 8193 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8191 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8193x8191xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    scf.for %arg0 = %c0 to %c8191 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8191x8190xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8193x8190xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8193 step %c512 {
      %3 = arith.subi %c8193, %arg0 : index
      %4 = arith.minsi %3, %c512 : index
      scf.for %arg1 = %c0 to %c8191 step %c512 {
        %5 = arith.subi %c8191, %arg1 : index
        %6 = arith.minsi %5, %c512 : index
        %subview = memref.subview %alloc[%arg0, %arg1] [%4, %6] [1, 1] : memref<8193x8191xf64> to memref<?x?xf64, strided<[8191, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8190 step %c512 {
          %7 = arith.subi %c8190, %arg2 : index
          %8 = arith.minsi %7, %c512 : index
          %subview_5 = memref.subview %alloc_2[%arg1, %arg2] [%6, %8] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg0, %arg2] [%4, %8] [1, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          scf.for %arg3 = %c0 to %4 step %c1 {
            scf.for %arg4 = %c0 to %8 step %c1 {
              scf.for %arg5 = %c0 to %6 step %c1 {
                %9 = memref.load %subview[%arg3, %arg5] : memref<?x?xf64, strided<[8191, 1], offset: ?>>
                %10 = memref.load %subview_5[%arg5, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
                %11 = memref.load %subview_6[%arg3, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
                %12 = arith.mulf %9, %10 : f64
                %13 = arith.addf %11, %12 : f64
                memref.store %13, %subview_6[%arg3, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
              }
            }
          }
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8193x8190xf64>
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
    %c8190 = arith.constant 8190 : index
    %c8191 = arith.constant 8191 : index
    %c8193 = arith.constant 8193 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8191 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8193x8191xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    scf.for %arg0 = %c0 to %c8191 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8191x8190xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8193x8190xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8193 step %c512 {
      %3 = arith.subi %c8193, %arg0 : index
      %4 = arith.minsi %3, %c512 : index
      scf.for %arg1 = %c0 to %c8191 step %c512 {
        %5 = arith.subi %c8191, %arg1 : index
        %6 = arith.minsi %5, %c512 : index
        %subview = memref.subview %alloc[%arg0, %arg1] [%4, %6] [1, 1] : memref<8193x8191xf64> to memref<?x?xf64, strided<[8191, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8190 step %c512 {
          %7 = arith.subi %c8190, %arg2 : index
          %8 = arith.minsi %7, %c512 : index
          %subview_5 = memref.subview %alloc_2[%arg1, %arg2] [%6, %8] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg0, %arg2] [%4, %8] [1, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          scf.for %arg3 = %c0 to %4 step %c1 {
            scf.for %arg4 = %c0 to %8 step %c1 {
              scf.for %arg5 = %c0 to %6 step %c1 {
                %9 = memref.load %subview[%arg3, %arg5] : memref<?x?xf64, strided<[8191, 1], offset: ?>>
                %10 = memref.load %subview_5[%arg5, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
                %11 = memref.load %subview_6[%arg3, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
                %12 = arith.mulf %9, %10 : f64
                %13 = arith.addf %11, %12 : f64
                memref.store %13, %subview_6[%arg3, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
              }
            }
          }
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8193x8190xf64>
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
    %c8190 = arith.constant 8190 : index
    %c8191 = arith.constant 8191 : index
    %c8193 = arith.constant 8193 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8191 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8193x8191xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    scf.for %arg0 = %c0 to %c8191 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8191x8190xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8193x8190xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8193 step %c512 {
      %3 = arith.subi %c8193, %arg0 : index
      %4 = arith.minsi %3, %c512 : index
      scf.for %arg1 = %c0 to %c8191 step %c512 {
        %5 = arith.subi %c8191, %arg1 : index
        %6 = arith.minsi %5, %c512 : index
        %subview = memref.subview %alloc[%arg0, %arg1] [%4, %6] [1, 1] : memref<8193x8191xf64> to memref<?x?xf64, strided<[8191, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8190 step %c512 {
          %7 = arith.subi %c8190, %arg2 : index
          %8 = arith.minsi %7, %c512 : index
          %subview_5 = memref.subview %alloc_2[%arg1, %arg2] [%6, %8] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg0, %arg2] [%4, %8] [1, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          scf.for %arg3 = %c0 to %4 step %c1 {
            scf.for %arg4 = %c0 to %8 step %c1 {
              scf.for %arg5 = %c0 to %6 step %c1 {
                %9 = memref.load %subview[%arg3, %arg5] : memref<?x?xf64, strided<[8191, 1], offset: ?>>
                %10 = memref.load %subview_5[%arg5, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
                %11 = memref.load %subview_6[%arg3, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
                %12 = arith.mulf %9, %10 : f64
                %13 = arith.addf %11, %12 : f64
                memref.store %13, %subview_6[%arg3, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
              }
            }
          }
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8193x8190xf64>
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
    %c8190 = arith.constant 8190 : index
    %c8191 = arith.constant 8191 : index
    %c8193 = arith.constant 8193 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8191 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8193x8191xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    scf.for %arg0 = %c0 to %c8191 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8191x8190xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8193x8190xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8193 step %c512 {
      %3 = arith.subi %c8193, %arg0 : index
      %4 = arith.minsi %3, %c512 : index
      scf.for %arg1 = %c0 to %c8191 step %c512 {
        %5 = arith.subi %c8191, %arg1 : index
        %6 = arith.minsi %5, %c512 : index
        %subview = memref.subview %alloc[%arg0, %arg1] [%4, %6] [1, 1] : memref<8193x8191xf64> to memref<?x?xf64, strided<[8191, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8190 step %c512 {
          %7 = arith.subi %c8190, %arg2 : index
          %8 = arith.minsi %7, %c512 : index
          %subview_5 = memref.subview %alloc_2[%arg1, %arg2] [%6, %8] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg0, %arg2] [%4, %8] [1, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          scf.for %arg3 = %c0 to %4 step %c1 {
            scf.for %arg4 = %c0 to %8 step %c1 {
              scf.for %arg5 = %c0 to %6 step %c1 {
                %9 = memref.load %subview[%arg3, %arg5] : memref<?x?xf64, strided<[8191, 1], offset: ?>>
                %10 = memref.load %subview_5[%arg5, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
                %11 = memref.load %subview_6[%arg3, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
                %12 = arith.mulf %9, %10 : f64
                %13 = arith.addf %11, %12 : f64
                memref.store %13, %subview_6[%arg3, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
              }
            }
          }
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8193x8190xf64>
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
    %c8190 = arith.constant 8190 : index
    %c8191 = arith.constant 8191 : index
    %c8193 = arith.constant 8193 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8191 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8193x8191xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    scf.for %arg0 = %c0 to %c8191 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8191x8190xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8193x8190xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8193 step %c512 {
      %3 = arith.subi %c8193, %arg0 : index
      %4 = arith.minsi %3, %c512 : index
      scf.for %arg1 = %c0 to %c8191 step %c512 {
        %5 = arith.subi %c8191, %arg1 : index
        %6 = arith.minsi %5, %c512 : index
        %subview = memref.subview %alloc[%arg0, %arg1] [%4, %6] [1, 1] : memref<8193x8191xf64> to memref<?x?xf64, strided<[8191, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8190 step %c512 {
          %7 = arith.subi %c8190, %arg2 : index
          %8 = arith.minsi %7, %c512 : index
          %subview_5 = memref.subview %alloc_2[%arg1, %arg2] [%6, %8] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg0, %arg2] [%4, %8] [1, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          scf.for %arg3 = %c0 to %4 step %c1 {
            scf.for %arg4 = %c0 to %8 step %c1 {
              scf.for %arg5 = %c0 to %6 step %c1 {
                %9 = memref.load %subview[%arg3, %arg5] : memref<?x?xf64, strided<[8191, 1], offset: ?>>
                %10 = memref.load %subview_5[%arg5, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
                %11 = memref.load %subview_6[%arg3, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
                %12 = arith.mulf %9, %10 : f64
                %13 = arith.addf %11, %12 : f64
                memref.store %13, %subview_6[%arg3, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
              }
            }
          }
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8193x8190xf64>
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
    %c8190 = arith.constant 8190 : index
    %c8191 = arith.constant 8191 : index
    %c8193 = arith.constant 8193 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8191 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8193x8191xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    scf.for %arg0 = %c0 to %c8191 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8191x8190xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8193x8190xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8193 step %c512 {
      %3 = arith.subi %c8193, %arg0 : index
      %4 = arith.minsi %3, %c512 : index
      scf.for %arg1 = %c0 to %c8191 step %c512 {
        %5 = arith.subi %c8191, %arg1 : index
        %6 = arith.minsi %5, %c512 : index
        %subview = memref.subview %alloc[%arg0, %arg1] [%4, %6] [1, 1] : memref<8193x8191xf64> to memref<?x?xf64, strided<[8191, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8190 step %c512 {
          %7 = arith.subi %c8190, %arg2 : index
          %8 = arith.minsi %7, %c512 : index
          %subview_5 = memref.subview %alloc_2[%arg1, %arg2] [%6, %8] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg0, %arg2] [%4, %8] [1, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          scf.for %arg3 = %c0 to %4 step %c1 {
            scf.for %arg4 = %c0 to %8 step %c1 {
              scf.for %arg5 = %c0 to %6 step %c1 {
                %9 = memref.load %subview[%arg3, %arg5] : memref<?x?xf64, strided<[8191, 1], offset: ?>>
                %10 = memref.load %subview_5[%arg5, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
                %11 = memref.load %subview_6[%arg3, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
                %12 = arith.mulf %9, %10 : f64
                %13 = arith.addf %11, %12 : f64
                memref.store %13, %subview_6[%arg3, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
              }
            }
          }
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8193x8190xf64>
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
    %c8190 = arith.constant 8190 : index
    %c8191 = arith.constant 8191 : index
    %c8193 = arith.constant 8193 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8191 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8193x8191xf64>
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8191x8190xf64>
    scf.for %arg0 = %c0 to %c8191 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<8191x8190xf64>
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8193x8190xf64>
      }
    }
    %0 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %c8193 step %c512 {
      %3 = arith.subi %c8193, %arg0 : index
      %4 = arith.minsi %3, %c512 : index
      scf.for %arg1 = %c0 to %c8191 step %c512 {
        %5 = arith.subi %c8191, %arg1 : index
        %6 = arith.minsi %5, %c512 : index
        %subview = memref.subview %alloc[%arg0, %arg1] [%4, %6] [1, 1] : memref<8193x8191xf64> to memref<?x?xf64, strided<[8191, 1], offset: ?>>
        scf.for %arg2 = %c0 to %c8190 step %c512 {
          %7 = arith.subi %c8190, %arg2 : index
          %8 = arith.minsi %7, %c512 : index
          %subview_5 = memref.subview %alloc_2[%arg1, %arg2] [%6, %8] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          %subview_6 = memref.subview %alloc_3[%arg0, %arg2] [%4, %8] [1, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
          scf.for %arg3 = %c0 to %4 step %c1 {
            scf.for %arg4 = %c0 to %8 step %c1 {
              scf.for %arg5 = %c0 to %6 step %c1 {
                %9 = memref.load %subview[%arg3, %arg5] : memref<?x?xf64, strided<[8191, 1], offset: ?>>
                %10 = memref.load %subview_5[%arg5, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
                %11 = memref.load %subview_6[%arg3, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
                %12 = arith.mulf %9, %10 : f64
                %13 = arith.addf %11, %12 : f64
                memref.store %13, %subview_6[%arg3, %arg4] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
              }
            }
          }
        }
      }
    }
    %1 = call @getTime() : () -> f64
    %alloc_4 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_4[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c8193 step %c1 {
      scf.for %arg1 = %c0 to %c8190 step %c1 {
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<8193x8190xf64>
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
    %c8190 = arith.constant 8190 : index
    %c8191 = arith.constant 8191 : index
    %c8193 = arith.constant 8193 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c8193 : index
    cf.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c8191 : index
    cf.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<8193x8191xf64>
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
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c8193 : index
    cf.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c8190 : index
    cf.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<8193x8190xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    %18 = call @getTime() : () -> f64
    cf.br ^bb19(%c0 : index)
  ^bb19(%19: index):  // 2 preds: ^bb18, ^bb35
    %20 = arith.cmpi slt, %19, %c8193 : index
    cf.cond_br %20, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    %21 = arith.subi %c8193, %19 : index
    %22 = arith.minsi %21, %c512 : index
    cf.br ^bb21(%c0 : index)
  ^bb21(%23: index):  // 2 preds: ^bb20, ^bb34
    %24 = arith.cmpi slt, %23, %c8191 : index
    cf.cond_br %24, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %25 = arith.subi %c8191, %23 : index
    %26 = arith.minsi %25, %c512 : index
    %subview = memref.subview %alloc[%19, %23] [%22, %26] [1, 1] : memref<8193x8191xf64> to memref<?x?xf64, strided<[8191, 1], offset: ?>>
    cf.br ^bb23(%c0 : index)
  ^bb23(%27: index):  // 2 preds: ^bb22, ^bb33
    %28 = arith.cmpi slt, %27, %c8190 : index
    cf.cond_br %28, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %29 = arith.subi %c8190, %27 : index
    %30 = arith.minsi %29, %c512 : index
    %subview_4 = memref.subview %alloc_2[%23, %27] [%26, %30] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
    %subview_5 = memref.subview %alloc_3[%19, %27] [%22, %30] [1, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
    cf.br ^bb25(%c0 : index)
  ^bb25(%31: index):  // 2 preds: ^bb24, ^bb32
    %32 = arith.cmpi slt, %31, %22 : index
    cf.cond_br %32, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%33: index):  // 2 preds: ^bb26, ^bb31
    %34 = arith.cmpi slt, %33, %30 : index
    cf.cond_br %34, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    cf.br ^bb29(%c0 : index)
  ^bb29(%35: index):  // 2 preds: ^bb28, ^bb30
    %36 = arith.cmpi slt, %35, %26 : index
    cf.cond_br %36, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %37 = memref.load %subview[%31, %35] : memref<?x?xf64, strided<[8191, 1], offset: ?>>
    %38 = memref.load %subview_4[%35, %33] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
    %39 = memref.load %subview_5[%31, %33] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
    %40 = arith.mulf %37, %38 : f64
    %41 = arith.addf %39, %40 : f64
    memref.store %41, %subview_5[%31, %33] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
    %42 = arith.addi %35, %c1 : index
    cf.br ^bb29(%42 : index)
  ^bb31:  // pred: ^bb29
    %43 = arith.addi %33, %c1 : index
    cf.br ^bb27(%43 : index)
  ^bb32:  // pred: ^bb27
    %44 = arith.addi %31, %c1 : index
    cf.br ^bb25(%44 : index)
  ^bb33:  // pred: ^bb25
    %45 = arith.addi %27, %c512 : index
    cf.br ^bb23(%45 : index)
  ^bb34:  // pred: ^bb23
    %46 = arith.addi %23, %c512 : index
    cf.br ^bb21(%46 : index)
  ^bb35:  // pred: ^bb21
    %47 = arith.addi %19, %c512 : index
    cf.br ^bb19(%47 : index)
  ^bb36:  // pred: ^bb19
    %48 = call @getTime() : () -> f64
    %alloc_6 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_6[%c0] : memref<1xf64>
    cf.br ^bb37(%c0 : index)
  ^bb37(%49: index):  // 2 preds: ^bb36, ^bb41
    %50 = arith.cmpi slt, %49, %c8193 : index
    cf.cond_br %50, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    cf.br ^bb39(%c0 : index)
  ^bb39(%51: index):  // 2 preds: ^bb38, ^bb40
    %52 = arith.cmpi slt, %51, %c8190 : index
    cf.cond_br %52, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %53 = memref.load %alloc_3[%49, %51] : memref<8193x8190xf64>
    %54 = memref.load %alloc_6[%c0] : memref<1xf64>
    %55 = arith.addf %53, %54 : f64
    memref.store %55, %alloc_6[%c0] : memref<1xf64>
    %56 = arith.addi %51, %c1 : index
    cf.br ^bb39(%56 : index)
  ^bb41:  // pred: ^bb39
    %57 = arith.addi %49, %c1 : index
    cf.br ^bb37(%57 : index)
  ^bb42:  // pred: ^bb37
    %58 = memref.load %alloc_6[%c0] : memref<1xf64>
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


// -----// IR Dump After ConvertVectorToLLVMPass (convert-vector-to-llvm) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8190 = arith.constant 8190 : index
    %c8191 = arith.constant 8191 : index
    %c8193 = arith.constant 8193 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c8193 : index
    cf.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c8191 : index
    cf.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<8193x8191xf64>
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
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c8193 : index
    cf.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c8190 : index
    cf.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<8193x8190xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    %18 = call @getTime() : () -> f64
    cf.br ^bb19(%c0 : index)
  ^bb19(%19: index):  // 2 preds: ^bb18, ^bb35
    %20 = arith.cmpi slt, %19, %c8193 : index
    cf.cond_br %20, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    %21 = arith.subi %c8193, %19 : index
    %22 = arith.minsi %21, %c512 : index
    cf.br ^bb21(%c0 : index)
  ^bb21(%23: index):  // 2 preds: ^bb20, ^bb34
    %24 = arith.cmpi slt, %23, %c8191 : index
    cf.cond_br %24, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %25 = arith.subi %c8191, %23 : index
    %26 = arith.minsi %25, %c512 : index
    %subview = memref.subview %alloc[%19, %23] [%22, %26] [1, 1] : memref<8193x8191xf64> to memref<?x?xf64, strided<[8191, 1], offset: ?>>
    cf.br ^bb23(%c0 : index)
  ^bb23(%27: index):  // 2 preds: ^bb22, ^bb33
    %28 = arith.cmpi slt, %27, %c8190 : index
    cf.cond_br %28, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %29 = arith.subi %c8190, %27 : index
    %30 = arith.minsi %29, %c512 : index
    %subview_4 = memref.subview %alloc_2[%23, %27] [%26, %30] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
    %subview_5 = memref.subview %alloc_3[%19, %27] [%22, %30] [1, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
    cf.br ^bb25(%c0 : index)
  ^bb25(%31: index):  // 2 preds: ^bb24, ^bb32
    %32 = arith.cmpi slt, %31, %22 : index
    cf.cond_br %32, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%33: index):  // 2 preds: ^bb26, ^bb31
    %34 = arith.cmpi slt, %33, %30 : index
    cf.cond_br %34, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    cf.br ^bb29(%c0 : index)
  ^bb29(%35: index):  // 2 preds: ^bb28, ^bb30
    %36 = arith.cmpi slt, %35, %26 : index
    cf.cond_br %36, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %37 = memref.load %subview[%31, %35] : memref<?x?xf64, strided<[8191, 1], offset: ?>>
    %38 = memref.load %subview_4[%35, %33] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
    %39 = memref.load %subview_5[%31, %33] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
    %40 = arith.mulf %37, %38 : f64
    %41 = arith.addf %39, %40 : f64
    memref.store %41, %subview_5[%31, %33] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
    %42 = arith.addi %35, %c1 : index
    cf.br ^bb29(%42 : index)
  ^bb31:  // pred: ^bb29
    %43 = arith.addi %33, %c1 : index
    cf.br ^bb27(%43 : index)
  ^bb32:  // pred: ^bb27
    %44 = arith.addi %31, %c1 : index
    cf.br ^bb25(%44 : index)
  ^bb33:  // pred: ^bb25
    %45 = arith.addi %27, %c512 : index
    cf.br ^bb23(%45 : index)
  ^bb34:  // pred: ^bb23
    %46 = arith.addi %23, %c512 : index
    cf.br ^bb21(%46 : index)
  ^bb35:  // pred: ^bb21
    %47 = arith.addi %19, %c512 : index
    cf.br ^bb19(%47 : index)
  ^bb36:  // pred: ^bb19
    %48 = call @getTime() : () -> f64
    %alloc_6 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_6[%c0] : memref<1xf64>
    cf.br ^bb37(%c0 : index)
  ^bb37(%49: index):  // 2 preds: ^bb36, ^bb41
    %50 = arith.cmpi slt, %49, %c8193 : index
    cf.cond_br %50, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    cf.br ^bb39(%c0 : index)
  ^bb39(%51: index):  // 2 preds: ^bb38, ^bb40
    %52 = arith.cmpi slt, %51, %c8190 : index
    cf.cond_br %52, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %53 = memref.load %alloc_3[%49, %51] : memref<8193x8190xf64>
    %54 = memref.load %alloc_6[%c0] : memref<1xf64>
    %55 = arith.addf %53, %54 : f64
    memref.store %55, %alloc_6[%c0] : memref<1xf64>
    %56 = arith.addi %51, %c1 : index
    cf.br ^bb39(%56 : index)
  ^bb41:  // pred: ^bb39
    %57 = arith.addi %49, %c1 : index
    cf.br ^bb37(%57 : index)
  ^bb42:  // pred: ^bb37
    %58 = memref.load %alloc_6[%c0] : memref<1xf64>
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


// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @printNewline()

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @getTime() -> f64

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @printF64(f64)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @printElapsedTime(f64, f64)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c512 = arith.constant 512 : index
  %c8190 = arith.constant 8190 : index
  %c8191 = arith.constant 8191 : index
  %c8193 = arith.constant 8193 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
  cf.br ^bb1(%c0 : index)
^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
  %1 = arith.cmpi slt, %0, %c8193 : index
  cf.cond_br %1, ^bb2, ^bb6
^bb2:  // pred: ^bb1
  cf.br ^bb3(%c0 : index)
^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
  %3 = arith.cmpi slt, %2, %c8191 : index
  cf.cond_br %3, ^bb4, ^bb5
^bb4:  // pred: ^bb3
  memref.store %cst_1, %alloc[%0, %2] : memref<8193x8191xf64>
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
  %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
  cf.br ^bb13(%c0 : index)
^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
  %13 = arith.cmpi slt, %12, %c8193 : index
  cf.cond_br %13, ^bb14, ^bb18
^bb14:  // pred: ^bb13
  cf.br ^bb15(%c0 : index)
^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
  %15 = arith.cmpi slt, %14, %c8190 : index
  cf.cond_br %15, ^bb16, ^bb17
^bb16:  // pred: ^bb15
  memref.store %cst, %alloc_3[%12, %14] : memref<8193x8190xf64>
  %16 = arith.addi %14, %c1 : index
  cf.br ^bb15(%16 : index)
^bb17:  // pred: ^bb15
  %17 = arith.addi %12, %c1 : index
  cf.br ^bb13(%17 : index)
^bb18:  // pred: ^bb13
  %18 = call @getTime() : () -> f64
  cf.br ^bb19(%c0 : index)
^bb19(%19: index):  // 2 preds: ^bb18, ^bb35
  %20 = arith.cmpi slt, %19, %c8193 : index
  cf.cond_br %20, ^bb20, ^bb36
^bb20:  // pred: ^bb19
  %21 = arith.subi %c8193, %19 : index
  %22 = arith.minsi %21, %c512 : index
  cf.br ^bb21(%c0 : index)
^bb21(%23: index):  // 2 preds: ^bb20, ^bb34
  %24 = arith.cmpi slt, %23, %c8191 : index
  cf.cond_br %24, ^bb22, ^bb35
^bb22:  // pred: ^bb21
  %25 = arith.subi %c8191, %23 : index
  %26 = arith.minsi %25, %c512 : index
  %subview = memref.subview %alloc[%19, %23] [%22, %26] [1, 1] : memref<8193x8191xf64> to memref<?x?xf64, strided<[8191, 1], offset: ?>>
  cf.br ^bb23(%c0 : index)
^bb23(%27: index):  // 2 preds: ^bb22, ^bb33
  %28 = arith.cmpi slt, %27, %c8190 : index
  cf.cond_br %28, ^bb24, ^bb34
^bb24:  // pred: ^bb23
  %29 = arith.subi %c8190, %27 : index
  %30 = arith.minsi %29, %c512 : index
  %subview_4 = memref.subview %alloc_2[%23, %27] [%26, %30] [1, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
  %subview_5 = memref.subview %alloc_3[%19, %27] [%22, %30] [1, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
  cf.br ^bb25(%c0 : index)
^bb25(%31: index):  // 2 preds: ^bb24, ^bb32
  %32 = arith.cmpi slt, %31, %22 : index
  cf.cond_br %32, ^bb26, ^bb33
^bb26:  // pred: ^bb25
  cf.br ^bb27(%c0 : index)
^bb27(%33: index):  // 2 preds: ^bb26, ^bb31
  %34 = arith.cmpi slt, %33, %30 : index
  cf.cond_br %34, ^bb28, ^bb32
^bb28:  // pred: ^bb27
  cf.br ^bb29(%c0 : index)
^bb29(%35: index):  // 2 preds: ^bb28, ^bb30
  %36 = arith.cmpi slt, %35, %26 : index
  cf.cond_br %36, ^bb30, ^bb31
^bb30:  // pred: ^bb29
  %37 = memref.load %subview[%31, %35] : memref<?x?xf64, strided<[8191, 1], offset: ?>>
  %38 = memref.load %subview_4[%35, %33] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
  %39 = memref.load %subview_5[%31, %33] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
  %40 = arith.mulf %37, %38 : f64
  %41 = arith.addf %39, %40 : f64
  memref.store %41, %subview_5[%31, %33] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
  %42 = arith.addi %35, %c1 : index
  cf.br ^bb29(%42 : index)
^bb31:  // pred: ^bb29
  %43 = arith.addi %33, %c1 : index
  cf.br ^bb27(%43 : index)
^bb32:  // pred: ^bb27
  %44 = arith.addi %31, %c1 : index
  cf.br ^bb25(%44 : index)
^bb33:  // pred: ^bb25
  %45 = arith.addi %27, %c512 : index
  cf.br ^bb23(%45 : index)
^bb34:  // pred: ^bb23
  %46 = arith.addi %23, %c512 : index
  cf.br ^bb21(%46 : index)
^bb35:  // pred: ^bb21
  %47 = arith.addi %19, %c512 : index
  cf.br ^bb19(%47 : index)
^bb36:  // pred: ^bb19
  %48 = call @getTime() : () -> f64
  %alloc_6 = memref.alloc() : memref<1xf64>
  memref.store %cst, %alloc_6[%c0] : memref<1xf64>
  cf.br ^bb37(%c0 : index)
^bb37(%49: index):  // 2 preds: ^bb36, ^bb41
  %50 = arith.cmpi slt, %49, %c8193 : index
  cf.cond_br %50, ^bb38, ^bb42
^bb38:  // pred: ^bb37
  cf.br ^bb39(%c0 : index)
^bb39(%51: index):  // 2 preds: ^bb38, ^bb40
  %52 = arith.cmpi slt, %51, %c8190 : index
  cf.cond_br %52, ^bb40, ^bb41
^bb40:  // pred: ^bb39
  %53 = memref.load %alloc_3[%49, %51] : memref<8193x8190xf64>
  %54 = memref.load %alloc_6[%c0] : memref<1xf64>
  %55 = arith.addf %53, %54 : f64
  memref.store %55, %alloc_6[%c0] : memref<1xf64>
  %56 = arith.addi %51, %c1 : index
  cf.br ^bb39(%56 : index)
^bb41:  // pred: ^bb39
  %57 = arith.addi %49, %c1 : index
  cf.br ^bb37(%57 : index)
^bb42:  // pred: ^bb37
  %58 = memref.load %alloc_6[%c0] : memref<1xf64>
  call @printF64(%58) : (f64) -> ()
  call @printNewline() : () -> ()
  call @printElapsedTime(%18, %48) : (f64, f64) -> ()
  return
}

// -----// IR Dump After ExpandStridedMetadata (expand-strided-metadata) //----- //
#map = affine_map<()[s0, s1] -> (s0 * 8191 + s1)>
#map1 = affine_map<()[s0, s1] -> (s0 * 8190 + s1)>
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c8190 = arith.constant 8190 : index
    %c8191 = arith.constant 8191 : index
    %c8193 = arith.constant 8193 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c8193 : index
    cf.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c8191 : index
    cf.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<8193x8191xf64>
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
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c8193 : index
    cf.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c8190 : index
    cf.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<8193x8190xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    %18 = call @getTime() : () -> f64
    cf.br ^bb19(%c0 : index)
  ^bb19(%19: index):  // 2 preds: ^bb18, ^bb35
    %20 = arith.cmpi slt, %19, %c8193 : index
    cf.cond_br %20, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    %21 = arith.subi %c8193, %19 : index
    %22 = arith.minsi %21, %c512 : index
    cf.br ^bb21(%c0 : index)
  ^bb21(%23: index):  // 2 preds: ^bb20, ^bb34
    %24 = arith.cmpi slt, %23, %c8191 : index
    cf.cond_br %24, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %25 = arith.subi %c8191, %23 : index
    %26 = arith.minsi %25, %c512 : index
    %27 = affine.apply #map()[%19, %23]
    %reinterpret_cast = memref.reinterpret_cast %alloc to offset: [%27], sizes: [%22, %26], strides: [8191, 1] : memref<8193x8191xf64> to memref<?x?xf64, strided<[8191, 1], offset: ?>>
    cf.br ^bb23(%c0 : index)
  ^bb23(%28: index):  // 2 preds: ^bb22, ^bb33
    %29 = arith.cmpi slt, %28, %c8190 : index
    cf.cond_br %29, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %30 = arith.subi %c8190, %28 : index
    %31 = arith.minsi %30, %c512 : index
    %32 = affine.apply #map1()[%23, %28]
    %reinterpret_cast_4 = memref.reinterpret_cast %alloc_2 to offset: [%32], sizes: [%26, %31], strides: [8190, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
    %33 = affine.apply #map1()[%19, %28]
    %reinterpret_cast_5 = memref.reinterpret_cast %alloc_3 to offset: [%33], sizes: [%22, %31], strides: [8190, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
    cf.br ^bb25(%c0 : index)
  ^bb25(%34: index):  // 2 preds: ^bb24, ^bb32
    %35 = arith.cmpi slt, %34, %22 : index
    cf.cond_br %35, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%36: index):  // 2 preds: ^bb26, ^bb31
    %37 = arith.cmpi slt, %36, %31 : index
    cf.cond_br %37, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    cf.br ^bb29(%c0 : index)
  ^bb29(%38: index):  // 2 preds: ^bb28, ^bb30
    %39 = arith.cmpi slt, %38, %26 : index
    cf.cond_br %39, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %40 = memref.load %reinterpret_cast[%34, %38] : memref<?x?xf64, strided<[8191, 1], offset: ?>>
    %41 = memref.load %reinterpret_cast_4[%38, %36] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
    %42 = memref.load %reinterpret_cast_5[%34, %36] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
    %43 = arith.mulf %40, %41 : f64
    %44 = arith.addf %42, %43 : f64
    memref.store %44, %reinterpret_cast_5[%34, %36] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
    %45 = arith.addi %38, %c1 : index
    cf.br ^bb29(%45 : index)
  ^bb31:  // pred: ^bb29
    %46 = arith.addi %36, %c1 : index
    cf.br ^bb27(%46 : index)
  ^bb32:  // pred: ^bb27
    %47 = arith.addi %34, %c1 : index
    cf.br ^bb25(%47 : index)
  ^bb33:  // pred: ^bb25
    %48 = arith.addi %28, %c512 : index
    cf.br ^bb23(%48 : index)
  ^bb34:  // pred: ^bb23
    %49 = arith.addi %23, %c512 : index
    cf.br ^bb21(%49 : index)
  ^bb35:  // pred: ^bb21
    %50 = arith.addi %19, %c512 : index
    cf.br ^bb19(%50 : index)
  ^bb36:  // pred: ^bb19
    %51 = call @getTime() : () -> f64
    %alloc_6 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_6[%c0] : memref<1xf64>
    cf.br ^bb37(%c0 : index)
  ^bb37(%52: index):  // 2 preds: ^bb36, ^bb41
    %53 = arith.cmpi slt, %52, %c8193 : index
    cf.cond_br %53, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    cf.br ^bb39(%c0 : index)
  ^bb39(%54: index):  // 2 preds: ^bb38, ^bb40
    %55 = arith.cmpi slt, %54, %c8190 : index
    cf.cond_br %55, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %56 = memref.load %alloc_3[%52, %54] : memref<8193x8190xf64>
    %57 = memref.load %alloc_6[%c0] : memref<1xf64>
    %58 = arith.addf %56, %57 : f64
    memref.store %58, %alloc_6[%c0] : memref<1xf64>
    %59 = arith.addi %54, %c1 : index
    cf.br ^bb39(%59 : index)
  ^bb41:  // pred: ^bb39
    %60 = arith.addi %52, %c1 : index
    cf.br ^bb37(%60 : index)
  ^bb42:  // pred: ^bb37
    %61 = memref.load %alloc_6[%c0] : memref<1xf64>
    call @printF64(%61) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%18, %51) : (f64, f64) -> ()
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
    %c8190 = arith.constant 8190 : index
    %c8191 = arith.constant 8191 : index
    %c8193 = arith.constant 8193 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c8193 : index
    cf.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c8191 : index
    cf.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<8193x8191xf64>
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
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c8193 : index
    cf.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c8190 : index
    cf.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<8193x8190xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    %18 = call @getTime() : () -> f64
    cf.br ^bb19(%c0 : index)
  ^bb19(%19: index):  // 2 preds: ^bb18, ^bb35
    %20 = arith.cmpi slt, %19, %c8193 : index
    cf.cond_br %20, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    %21 = arith.subi %c8193, %19 : index
    %22 = arith.minsi %21, %c512 : index
    cf.br ^bb21(%c0 : index)
  ^bb21(%23: index):  // 2 preds: ^bb20, ^bb34
    %24 = arith.cmpi slt, %23, %c8191 : index
    cf.cond_br %24, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %25 = arith.subi %c8191, %23 : index
    %26 = arith.minsi %25, %c512 : index
    %c8191_4 = arith.constant 8191 : index
    %27 = arith.muli %19, %c8191_4 : index
    %28 = arith.addi %27, %23 : index
    %reinterpret_cast = memref.reinterpret_cast %alloc to offset: [%28], sizes: [%22, %26], strides: [8191, 1] : memref<8193x8191xf64> to memref<?x?xf64, strided<[8191, 1], offset: ?>>
    cf.br ^bb23(%c0 : index)
  ^bb23(%29: index):  // 2 preds: ^bb22, ^bb33
    %30 = arith.cmpi slt, %29, %c8190 : index
    cf.cond_br %30, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %31 = arith.subi %c8190, %29 : index
    %32 = arith.minsi %31, %c512 : index
    %c8190_5 = arith.constant 8190 : index
    %33 = arith.muli %23, %c8190_5 : index
    %34 = arith.addi %33, %29 : index
    %reinterpret_cast_6 = memref.reinterpret_cast %alloc_2 to offset: [%34], sizes: [%26, %32], strides: [8190, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
    %c8190_7 = arith.constant 8190 : index
    %35 = arith.muli %19, %c8190_7 : index
    %36 = arith.addi %35, %29 : index
    %reinterpret_cast_8 = memref.reinterpret_cast %alloc_3 to offset: [%36], sizes: [%22, %32], strides: [8190, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
    cf.br ^bb25(%c0 : index)
  ^bb25(%37: index):  // 2 preds: ^bb24, ^bb32
    %38 = arith.cmpi slt, %37, %22 : index
    cf.cond_br %38, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%39: index):  // 2 preds: ^bb26, ^bb31
    %40 = arith.cmpi slt, %39, %32 : index
    cf.cond_br %40, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    cf.br ^bb29(%c0 : index)
  ^bb29(%41: index):  // 2 preds: ^bb28, ^bb30
    %42 = arith.cmpi slt, %41, %26 : index
    cf.cond_br %42, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %43 = memref.load %reinterpret_cast[%37, %41] : memref<?x?xf64, strided<[8191, 1], offset: ?>>
    %44 = memref.load %reinterpret_cast_6[%41, %39] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
    %45 = memref.load %reinterpret_cast_8[%37, %39] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
    %46 = arith.mulf %43, %44 : f64
    %47 = arith.addf %45, %46 : f64
    memref.store %47, %reinterpret_cast_8[%37, %39] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
    %48 = arith.addi %41, %c1 : index
    cf.br ^bb29(%48 : index)
  ^bb31:  // pred: ^bb29
    %49 = arith.addi %39, %c1 : index
    cf.br ^bb27(%49 : index)
  ^bb32:  // pred: ^bb27
    %50 = arith.addi %37, %c1 : index
    cf.br ^bb25(%50 : index)
  ^bb33:  // pred: ^bb25
    %51 = arith.addi %29, %c512 : index
    cf.br ^bb23(%51 : index)
  ^bb34:  // pred: ^bb23
    %52 = arith.addi %23, %c512 : index
    cf.br ^bb21(%52 : index)
  ^bb35:  // pred: ^bb21
    %53 = arith.addi %19, %c512 : index
    cf.br ^bb19(%53 : index)
  ^bb36:  // pred: ^bb19
    %54 = call @getTime() : () -> f64
    %alloc_9 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_9[%c0] : memref<1xf64>
    cf.br ^bb37(%c0 : index)
  ^bb37(%55: index):  // 2 preds: ^bb36, ^bb41
    %56 = arith.cmpi slt, %55, %c8193 : index
    cf.cond_br %56, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    cf.br ^bb39(%c0 : index)
  ^bb39(%57: index):  // 2 preds: ^bb38, ^bb40
    %58 = arith.cmpi slt, %57, %c8190 : index
    cf.cond_br %58, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %59 = memref.load %alloc_3[%55, %57] : memref<8193x8190xf64>
    %60 = memref.load %alloc_9[%c0] : memref<1xf64>
    %61 = arith.addf %59, %60 : f64
    memref.store %61, %alloc_9[%c0] : memref<1xf64>
    %62 = arith.addi %57, %c1 : index
    cf.br ^bb39(%62 : index)
  ^bb41:  // pred: ^bb39
    %63 = arith.addi %55, %c1 : index
    cf.br ^bb37(%63 : index)
  ^bb42:  // pred: ^bb37
    %64 = memref.load %alloc_9[%c0] : memref<1xf64>
    call @printF64(%64) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%18, %54) : (f64, f64) -> ()
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
    %c8190 = arith.constant 8190 : index
    %c8191 = arith.constant 8191 : index
    %c8193 = arith.constant 8193 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8191xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c8193 : index
    llvm.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    cf.br ^bb3(%c0 : index)
  ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
    %3 = arith.cmpi slt, %2, %c8191 : index
    llvm.cond_br %3, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    memref.store %cst_1, %alloc[%0, %2] : memref<8193x8191xf64>
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
    %alloc_3 = memref.alloc() {alignment = 32 : i64, allocator = "default"} : memref<8193x8190xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb17
    %13 = arith.cmpi slt, %12, %c8193 : index
    llvm.cond_br %13, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb16
    %15 = arith.cmpi slt, %14, %c8190 : index
    llvm.cond_br %15, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    memref.store %cst, %alloc_3[%12, %14] : memref<8193x8190xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb15(%16 : index)
  ^bb17:  // pred: ^bb15
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb13(%17 : index)
  ^bb18:  // pred: ^bb13
    %18 = call @getTime() : () -> f64
    cf.br ^bb19(%c0 : index)
  ^bb19(%19: index):  // 2 preds: ^bb18, ^bb35
    %20 = arith.cmpi slt, %19, %c8193 : index
    llvm.cond_br %20, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    %21 = arith.subi %c8193, %19 : index
    %22 = arith.minsi %21, %c512 : index
    cf.br ^bb21(%c0 : index)
  ^bb21(%23: index):  // 2 preds: ^bb20, ^bb34
    %24 = arith.cmpi slt, %23, %c8191 : index
    llvm.cond_br %24, ^bb22, ^bb35
  ^bb22:  // pred: ^bb21
    %25 = arith.subi %c8191, %23 : index
    %26 = arith.minsi %25, %c512 : index
    %c8191_4 = arith.constant 8191 : index
    %27 = arith.muli %19, %c8191_4 : index
    %28 = arith.addi %27, %23 : index
    %reinterpret_cast = memref.reinterpret_cast %alloc to offset: [%28], sizes: [%22, %26], strides: [8191, 1] : memref<8193x8191xf64> to memref<?x?xf64, strided<[8191, 1], offset: ?>>
    cf.br ^bb23(%c0 : index)
  ^bb23(%29: index):  // 2 preds: ^bb22, ^bb33
    %30 = arith.cmpi slt, %29, %c8190 : index
    llvm.cond_br %30, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %31 = arith.subi %c8190, %29 : index
    %32 = arith.minsi %31, %c512 : index
    %c8190_5 = arith.constant 8190 : index
    %33 = arith.muli %23, %c8190_5 : index
    %34 = arith.addi %33, %29 : index
    %reinterpret_cast_6 = memref.reinterpret_cast %alloc_2 to offset: [%34], sizes: [%26, %32], strides: [8190, 1] : memref<8191x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
    %c8190_7 = arith.constant 8190 : index
    %35 = arith.muli %19, %c8190_7 : index
    %36 = arith.addi %35, %29 : index
    %reinterpret_cast_8 = memref.reinterpret_cast %alloc_3 to offset: [%36], sizes: [%22, %32], strides: [8190, 1] : memref<8193x8190xf64> to memref<?x?xf64, strided<[8190, 1], offset: ?>>
    cf.br ^bb25(%c0 : index)
  ^bb25(%37: index):  // 2 preds: ^bb24, ^bb32
    %38 = arith.cmpi slt, %37, %22 : index
    llvm.cond_br %38, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%39: index):  // 2 preds: ^bb26, ^bb31
    %40 = arith.cmpi slt, %39, %32 : index
    llvm.cond_br %40, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    cf.br ^bb29(%c0 : index)
  ^bb29(%41: index):  // 2 preds: ^bb28, ^bb30
    %42 = arith.cmpi slt, %41, %26 : index
    llvm.cond_br %42, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %43 = memref.load %reinterpret_cast[%37, %41] : memref<?x?xf64, strided<[8191, 1], offset: ?>>
    %44 = memref.load %reinterpret_cast_6[%41, %39] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
    %45 = memref.load %reinterpret_cast_8[%37, %39] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
    %46 = arith.mulf %43, %44 : f64
    %47 = arith.addf %45, %46 : f64
    memref.store %47, %reinterpret_cast_8[%37, %39] : memref<?x?xf64, strided<[8190, 1], offset: ?>>
    %48 = arith.addi %41, %c1 : index
    cf.br ^bb29(%48 : index)
  ^bb31:  // pred: ^bb29
    %49 = arith.addi %39, %c1 : index
    cf.br ^bb27(%49 : index)
  ^bb32:  // pred: ^bb27
    %50 = arith.addi %37, %c1 : index
    cf.br ^bb25(%50 : index)
  ^bb33:  // pred: ^bb25
    %51 = arith.addi %29, %c512 : index
    cf.br ^bb23(%51 : index)
  ^bb34:  // pred: ^bb23
    %52 = arith.addi %23, %c512 : index
    cf.br ^bb21(%52 : index)
  ^bb35:  // pred: ^bb21
    %53 = arith.addi %19, %c512 : index
    cf.br ^bb19(%53 : index)
  ^bb36:  // pred: ^bb19
    %54 = call @getTime() : () -> f64
    %alloc_9 = memref.alloc() : memref<1xf64>
    memref.store %cst, %alloc_9[%c0] : memref<1xf64>
    cf.br ^bb37(%c0 : index)
  ^bb37(%55: index):  // 2 preds: ^bb36, ^bb41
    %56 = arith.cmpi slt, %55, %c8193 : index
    llvm.cond_br %56, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    cf.br ^bb39(%c0 : index)
  ^bb39(%57: index):  // 2 preds: ^bb38, ^bb40
    %58 = arith.cmpi slt, %57, %c8190 : index
    llvm.cond_br %58, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %59 = memref.load %alloc_3[%55, %57] : memref<8193x8190xf64>
    %60 = memref.load %alloc_9[%c0] : memref<1xf64>
    %61 = arith.addf %59, %60 : f64
    memref.store %61, %alloc_9[%c0] : memref<1xf64>
    %62 = arith.addi %57, %c1 : index
    cf.br ^bb39(%62 : index)
  ^bb41:  // pred: ^bb39
    %63 = arith.addi %55, %c1 : index
    cf.br ^bb37(%63 : index)
  ^bb42:  // pred: ^bb37
    %64 = memref.load %alloc_9[%c0] : memref<1xf64>
    call @printF64(%64) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%18, %54) : (f64, f64) -> ()
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
    %c8190 = arith.constant 8190 : index
    %c8191 = arith.constant 8191 : index
    %c8193 = arith.constant 8193 : index
    %c0 = arith.constant 0 : index
    %0 = builtin.unrealized_conversion_cast %c0 : index to i64
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %1 = llvm.mlir.constant(8193 : index) : i64
    %2 = llvm.mlir.constant(8191 : index) : i64
    %3 = llvm.mlir.constant(1 : index) : i64
    %4 = llvm.mlir.constant(67108863 : index) : i64
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
    %29 = arith.cmpi slt, %27, %c8193 : index
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
    %79 = llvm.mlir.constant(8193 : index) : i64
    %80 = llvm.mlir.constant(8190 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(67100670 : index) : i64
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
    %107 = arith.cmpi slt, %105, %c8193 : index
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
    %120 = arith.cmpi slt, %119, %c8193 : index
    llvm.cond_br %120, ^bb20, ^bb36
  ^bb20:  // pred: ^bb19
    %121 = arith.subi %c8193, %119 : index
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
    %c8191_2 = arith.constant 8191 : index
    %129 = arith.muli %119, %c8191_2 : index
    %130 = arith.addi %129, %124 : index
    %131 = builtin.unrealized_conversion_cast %130 : index to i64
    %132 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %133 = llvm.extractvalue %26[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %134 = llvm.extractvalue %26[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %135 = llvm.insertvalue %133, %132[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %136 = llvm.insertvalue %134, %135[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %137 = llvm.insertvalue %131, %136[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %138 = llvm.insertvalue %123, %137[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %139 = llvm.mlir.constant(8191 : index) : i64
    %140 = llvm.insertvalue %139, %138[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %141 = llvm.insertvalue %128, %140[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.insertvalue %142, %141[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    cf.br ^bb23(%c0 : index)
  ^bb23(%144: index):  // 2 preds: ^bb22, ^bb33
    %145 = arith.cmpi slt, %144, %c8190 : index
    llvm.cond_br %145, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %146 = arith.subi %c8190, %144 : index
    %147 = arith.minsi %146, %c512 : index
    %148 = builtin.unrealized_conversion_cast %147 : index to i64
    %c8190_3 = arith.constant 8190 : index
    %149 = arith.muli %124, %c8190_3 : index
    %150 = arith.addi %149, %144 : index
    %151 = builtin.unrealized_conversion_cast %150 : index to i64
    %152 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %153 = llvm.extractvalue %65[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %154 = llvm.extractvalue %65[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %155 = llvm.insertvalue %153, %152[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %156 = llvm.insertvalue %154, %155[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %157 = llvm.insertvalue %151, %156[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %158 = llvm.insertvalue %128, %157[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %159 = llvm.mlir.constant(8190 : index) : i64
    %160 = llvm.insertvalue %159, %158[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %161 = llvm.insertvalue %148, %160[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.insertvalue %162, %161[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %c8190_4 = arith.constant 8190 : index
    %164 = arith.muli %119, %c8190_4 : index
    %165 = arith.addi %164, %144 : index
    %166 = builtin.unrealized_conversion_cast %165 : index to i64
    %167 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %168 = llvm.extractvalue %104[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %169 = llvm.extractvalue %104[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %170 = llvm.insertvalue %168, %167[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %171 = llvm.insertvalue %169, %170[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %172 = llvm.insertvalue %166, %171[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %173 = llvm.insertvalue %123, %172[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %174 = llvm.mlir.constant(8190 : index) : i64
    %175 = llvm.insertvalue %174, %173[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %176 = llvm.insertvalue %148, %175[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.insertvalue %177, %176[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    cf.br ^bb25(%c0 : index)
  ^bb25(%179: index):  // 2 preds: ^bb24, ^bb32
    %180 = builtin.unrealized_conversion_cast %179 : index to i64
    %181 = arith.cmpi slt, %179, %122 : index
    llvm.cond_br %181, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%182: index):  // 2 preds: ^bb26, ^bb31
    %183 = builtin.unrealized_conversion_cast %182 : index to i64
    %184 = arith.cmpi slt, %182, %147 : index
    llvm.cond_br %184, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    cf.br ^bb29(%c0 : index)
  ^bb29(%185: index):  // 2 preds: ^bb28, ^bb30
    %186 = builtin.unrealized_conversion_cast %185 : index to i64
    %187 = arith.cmpi slt, %185, %127 : index
    llvm.cond_br %187, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %188 = llvm.extractvalue %143[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %189 = llvm.extractvalue %143[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %190 = llvm.getelementptr %188[%189] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %191 = llvm.mlir.constant(8191 : index) : i64
    %192 = llvm.mul %180, %191 : i64
    %193 = llvm.add %192, %186 : i64
    %194 = llvm.getelementptr %190[%193] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %195 = llvm.load %194 : !llvm.ptr -> f64
    %196 = llvm.extractvalue %163[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %197 = llvm.extractvalue %163[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %198 = llvm.getelementptr %196[%197] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %199 = llvm.mlir.constant(8190 : index) : i64
    %200 = llvm.mul %186, %199 : i64
    %201 = llvm.add %200, %183 : i64
    %202 = llvm.getelementptr %198[%201] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %203 = llvm.load %202 : !llvm.ptr -> f64
    %204 = llvm.extractvalue %178[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %205 = llvm.extractvalue %178[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %206 = llvm.getelementptr %204[%205] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %207 = llvm.mlir.constant(8190 : index) : i64
    %208 = llvm.mul %180, %207 : i64
    %209 = llvm.add %208, %183 : i64
    %210 = llvm.getelementptr %206[%209] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %211 = llvm.load %210 : !llvm.ptr -> f64
    %212 = arith.mulf %195, %203 : f64
    %213 = arith.addf %211, %212 : f64
    %214 = llvm.extractvalue %178[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %215 = llvm.extractvalue %178[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %216 = llvm.getelementptr %214[%215] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %217 = llvm.mlir.constant(8190 : index) : i64
    %218 = llvm.mul %180, %217 : i64
    %219 = llvm.add %218, %183 : i64
    %220 = llvm.getelementptr %216[%219] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %213, %220 : f64, !llvm.ptr
    %221 = arith.addi %185, %c1 : index
    cf.br ^bb29(%221 : index)
  ^bb31:  // pred: ^bb29
    %222 = arith.addi %182, %c1 : index
    cf.br ^bb27(%222 : index)
  ^bb32:  // pred: ^bb27
    %223 = arith.addi %179, %c1 : index
    cf.br ^bb25(%223 : index)
  ^bb33:  // pred: ^bb25
    %224 = arith.addi %144, %c512 : index
    cf.br ^bb23(%224 : index)
  ^bb34:  // pred: ^bb23
    %225 = arith.addi %124, %c512 : index
    cf.br ^bb21(%225 : index)
  ^bb35:  // pred: ^bb21
    %226 = arith.addi %119, %c512 : index
    cf.br ^bb19(%226 : index)
  ^bb36:  // pred: ^bb19
    %227 = call @getTime() : () -> f64
    %228 = llvm.mlir.constant(1 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.mlir.zero : !llvm.ptr
    %231 = llvm.getelementptr %230[%228] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %232 = llvm.ptrtoint %231 : !llvm.ptr to i64
    %233 = llvm.call @malloc(%232) : (i64) -> !llvm.ptr
    %234 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %235 = llvm.insertvalue %233, %234[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %236 = llvm.insertvalue %233, %235[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %237 = llvm.mlir.constant(0 : index) : i64
    %238 = llvm.insertvalue %237, %236[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %239 = llvm.insertvalue %228, %238[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %240 = llvm.insertvalue %229, %239[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %241 = llvm.extractvalue %240[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %242 = llvm.getelementptr %241[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst, %242 : f64, !llvm.ptr
    cf.br ^bb37(%c0 : index)
  ^bb37(%243: index):  // 2 preds: ^bb36, ^bb41
    %244 = builtin.unrealized_conversion_cast %243 : index to i64
    %245 = arith.cmpi slt, %243, %c8193 : index
    llvm.cond_br %245, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    cf.br ^bb39(%c0 : index)
  ^bb39(%246: index):  // 2 preds: ^bb38, ^bb40
    %247 = builtin.unrealized_conversion_cast %246 : index to i64
    %248 = arith.cmpi slt, %246, %c8190 : index
    llvm.cond_br %248, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %249 = llvm.extractvalue %104[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %250 = llvm.mlir.constant(8190 : index) : i64
    %251 = llvm.mul %244, %250 : i64
    %252 = llvm.add %251, %247 : i64
    %253 = llvm.getelementptr %249[%252] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %254 = llvm.load %253 : !llvm.ptr -> f64
    %255 = llvm.extractvalue %240[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %256 = llvm.getelementptr %255[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %257 = llvm.load %256 : !llvm.ptr -> f64
    %258 = arith.addf %254, %257 : f64
    %259 = llvm.extractvalue %240[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %260 = llvm.getelementptr %259[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %258, %260 : f64, !llvm.ptr
    %261 = arith.addi %246, %c1 : index
    cf.br ^bb39(%261 : index)
  ^bb41:  // pred: ^bb39
    %262 = arith.addi %243, %c1 : index
    cf.br ^bb37(%262 : index)
  ^bb42:  // pred: ^bb37
    %263 = llvm.extractvalue %240[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %264 = llvm.getelementptr %263[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %265 = llvm.load %264 : !llvm.ptr -> f64
    call @printF64(%265) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%118, %227) : (f64, f64) -> ()
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
    %2 = llvm.mlir.constant(8190 : index) : i64
    %3 = llvm.mlir.constant(8191 : index) : i64
    %4 = llvm.mlir.constant(8193 : index) : i64
    %5 = llvm.mlir.constant(0 : index) : i64
    %6 = builtin.unrealized_conversion_cast %5 : i64 to index
    %7 = builtin.unrealized_conversion_cast %6 : index to i64
    %8 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %9 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %10 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %11 = llvm.mlir.constant(8193 : index) : i64
    %12 = llvm.mlir.constant(8191 : index) : i64
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.mlir.constant(67108863 : index) : i64
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
    %40 = llvm.icmp "slt" %37, %4 : i64
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
    %85 = llvm.icmp "slt" %82, %2 : i64
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
    %93 = llvm.mlir.constant(8193 : index) : i64
    %94 = llvm.mlir.constant(8190 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.constant(67100670 : index) : i64
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
    %122 = llvm.icmp "slt" %119, %4 : i64
    llvm.cond_br %122, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%5 : i64)
  ^bb15(%123: i64):  // 2 preds: ^bb14, ^bb16
    %124 = builtin.unrealized_conversion_cast %123 : i64 to index
    %125 = builtin.unrealized_conversion_cast %124 : index to i64
    %126 = llvm.icmp "slt" %123, %2 : i64
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
    %147 = llvm.mlir.constant(8191 : index) : i64
    %148 = llvm.mul %135, %147 : i64
    %149 = llvm.add %148, %141 : i64
    %150 = builtin.unrealized_conversion_cast %149 : i64 to index
    %151 = builtin.unrealized_conversion_cast %150 : index to i64
    %152 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %153 = llvm.extractvalue %36[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %154 = llvm.extractvalue %36[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %155 = llvm.insertvalue %153, %152[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %156 = llvm.insertvalue %154, %155[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %157 = llvm.insertvalue %151, %156[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %158 = llvm.insertvalue %140, %157[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %159 = llvm.mlir.constant(8191 : index) : i64
    %160 = llvm.insertvalue %159, %158[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %161 = llvm.insertvalue %146, %160[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.insertvalue %162, %161[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb23(%5 : i64)
  ^bb23(%164: i64):  // 2 preds: ^bb22, ^bb33
    %165 = llvm.icmp "slt" %164, %2 : i64
    llvm.cond_br %165, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %166 = llvm.sub %2, %164 : i64
    %167 = llvm.intr.smin(%166, %1)  : (i64, i64) -> i64
    %168 = builtin.unrealized_conversion_cast %167 : i64 to index
    %169 = builtin.unrealized_conversion_cast %168 : index to i64
    %170 = llvm.mlir.constant(8190 : index) : i64
    %171 = llvm.mul %141, %170 : i64
    %172 = llvm.add %171, %164 : i64
    %173 = builtin.unrealized_conversion_cast %172 : i64 to index
    %174 = builtin.unrealized_conversion_cast %173 : index to i64
    %175 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %176 = llvm.extractvalue %77[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %177 = llvm.extractvalue %77[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %178 = llvm.insertvalue %176, %175[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %179 = llvm.insertvalue %177, %178[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %180 = llvm.insertvalue %174, %179[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %181 = llvm.insertvalue %146, %180[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %182 = llvm.mlir.constant(8190 : index) : i64
    %183 = llvm.insertvalue %182, %181[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %184 = llvm.insertvalue %169, %183[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.insertvalue %185, %184[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %187 = llvm.mlir.constant(8190 : index) : i64
    %188 = llvm.mul %135, %187 : i64
    %189 = llvm.add %188, %164 : i64
    %190 = builtin.unrealized_conversion_cast %189 : i64 to index
    %191 = builtin.unrealized_conversion_cast %190 : index to i64
    %192 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %193 = llvm.extractvalue %118[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %194 = llvm.extractvalue %118[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %195 = llvm.insertvalue %193, %192[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %196 = llvm.insertvalue %194, %195[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %197 = llvm.insertvalue %191, %196[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %198 = llvm.insertvalue %140, %197[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %199 = llvm.mlir.constant(8190 : index) : i64
    %200 = llvm.insertvalue %199, %198[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %201 = llvm.insertvalue %169, %200[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.insertvalue %202, %201[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb25(%5 : i64)
  ^bb25(%204: i64):  // 2 preds: ^bb24, ^bb32
    %205 = builtin.unrealized_conversion_cast %204 : i64 to index
    %206 = builtin.unrealized_conversion_cast %205 : index to i64
    %207 = llvm.icmp "slt" %204, %138 : i64
    llvm.cond_br %207, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%5 : i64)
  ^bb27(%208: i64):  // 2 preds: ^bb26, ^bb31
    %209 = builtin.unrealized_conversion_cast %208 : i64 to index
    %210 = builtin.unrealized_conversion_cast %209 : index to i64
    %211 = llvm.icmp "slt" %208, %167 : i64
    llvm.cond_br %211, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    llvm.br ^bb29(%5 : i64)
  ^bb29(%212: i64):  // 2 preds: ^bb28, ^bb30
    %213 = builtin.unrealized_conversion_cast %212 : i64 to index
    %214 = builtin.unrealized_conversion_cast %213 : index to i64
    %215 = llvm.icmp "slt" %212, %144 : i64
    llvm.cond_br %215, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %216 = llvm.extractvalue %163[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %217 = llvm.extractvalue %163[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %218 = llvm.getelementptr %216[%217] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %219 = llvm.mlir.constant(8191 : index) : i64
    %220 = llvm.mul %206, %219 : i64
    %221 = llvm.add %220, %214 : i64
    %222 = llvm.getelementptr %218[%221] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %223 = llvm.load %222 : !llvm.ptr -> f64
    %224 = llvm.extractvalue %186[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %225 = llvm.extractvalue %186[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %226 = llvm.getelementptr %224[%225] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %227 = llvm.mlir.constant(8190 : index) : i64
    %228 = llvm.mul %214, %227 : i64
    %229 = llvm.add %228, %210 : i64
    %230 = llvm.getelementptr %226[%229] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %231 = llvm.load %230 : !llvm.ptr -> f64
    %232 = llvm.extractvalue %203[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %233 = llvm.extractvalue %203[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %234 = llvm.getelementptr %232[%233] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %235 = llvm.mlir.constant(8190 : index) : i64
    %236 = llvm.mul %206, %235 : i64
    %237 = llvm.add %236, %210 : i64
    %238 = llvm.getelementptr %234[%237] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %239 = llvm.load %238 : !llvm.ptr -> f64
    %240 = llvm.fmul %223, %231  : f64
    %241 = llvm.fadd %239, %240  : f64
    %242 = llvm.extractvalue %203[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %243 = llvm.extractvalue %203[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %244 = llvm.getelementptr %242[%243] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %245 = llvm.mlir.constant(8190 : index) : i64
    %246 = llvm.mul %206, %245 : i64
    %247 = llvm.add %246, %210 : i64
    %248 = llvm.getelementptr %244[%247] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %241, %248 : f64, !llvm.ptr
    %249 = llvm.add %212, %0 : i64
    llvm.br ^bb29(%249 : i64)
  ^bb31:  // pred: ^bb29
    %250 = llvm.add %208, %0 : i64
    llvm.br ^bb27(%250 : i64)
  ^bb32:  // pred: ^bb27
    %251 = llvm.add %204, %0 : i64
    llvm.br ^bb25(%251 : i64)
  ^bb33:  // pred: ^bb25
    %252 = llvm.add %164, %1 : i64
    llvm.br ^bb23(%252 : i64)
  ^bb34:  // pred: ^bb23
    %253 = llvm.add %141, %1 : i64
    llvm.br ^bb21(%253 : i64)
  ^bb35:  // pred: ^bb21
    %254 = llvm.add %135, %1 : i64
    llvm.br ^bb19(%254 : i64)
  ^bb36:  // pred: ^bb19
    %255 = llvm.call @getTime() : () -> f64
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.mlir.zero : !llvm.ptr
    %259 = llvm.getelementptr %258[%256] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %260 = llvm.ptrtoint %259 : !llvm.ptr to i64
    %261 = llvm.call @malloc(%260) : (i64) -> !llvm.ptr
    %262 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %263 = llvm.insertvalue %261, %262[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %264 = llvm.insertvalue %261, %263[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %265 = llvm.mlir.constant(0 : index) : i64
    %266 = llvm.insertvalue %265, %264[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.insertvalue %256, %266[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %268 = llvm.insertvalue %257, %267[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %269 = llvm.extractvalue %268[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %270 = llvm.getelementptr %269[%7] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %8, %270 : f64, !llvm.ptr
    llvm.br ^bb37(%5 : i64)
  ^bb37(%271: i64):  // 2 preds: ^bb36, ^bb41
    %272 = builtin.unrealized_conversion_cast %271 : i64 to index
    %273 = builtin.unrealized_conversion_cast %272 : index to i64
    %274 = llvm.icmp "slt" %271, %4 : i64
    llvm.cond_br %274, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    llvm.br ^bb39(%5 : i64)
  ^bb39(%275: i64):  // 2 preds: ^bb38, ^bb40
    %276 = builtin.unrealized_conversion_cast %275 : i64 to index
    %277 = builtin.unrealized_conversion_cast %276 : index to i64
    %278 = llvm.icmp "slt" %275, %2 : i64
    llvm.cond_br %278, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %279 = llvm.extractvalue %118[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %280 = llvm.mlir.constant(8190 : index) : i64
    %281 = llvm.mul %273, %280 : i64
    %282 = llvm.add %281, %277 : i64
    %283 = llvm.getelementptr %279[%282] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %284 = llvm.load %283 : !llvm.ptr -> f64
    %285 = llvm.extractvalue %268[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %286 = llvm.getelementptr %285[%7] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %287 = llvm.load %286 : !llvm.ptr -> f64
    %288 = llvm.fadd %284, %287  : f64
    %289 = llvm.extractvalue %268[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %290 = llvm.getelementptr %289[%7] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %288, %290 : f64, !llvm.ptr
    %291 = llvm.add %275, %0 : i64
    llvm.br ^bb39(%291 : i64)
  ^bb41:  // pred: ^bb39
    %292 = llvm.add %271, %0 : i64
    llvm.br ^bb37(%292 : i64)
  ^bb42:  // pred: ^bb37
    %293 = llvm.extractvalue %268[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %294 = llvm.getelementptr %293[%7] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %295 = llvm.load %294 : !llvm.ptr -> f64
    llvm.call @printF64(%295) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%134, %255) : (f64, f64) -> ()
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
    %2 = llvm.mlir.constant(8190 : index) : i64
    %3 = llvm.mlir.constant(8191 : index) : i64
    %4 = llvm.mlir.constant(8193 : index) : i64
    %5 = llvm.mlir.constant(0 : index) : i64
    %6 = builtin.unrealized_conversion_cast %5 : i64 to index
    %7 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %8 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %9 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %10 = llvm.mlir.constant(8193 : index) : i64
    %11 = llvm.mlir.constant(8191 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.mlir.constant(67108863 : index) : i64
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
    %38 = llvm.icmp "slt" %36, %4 : i64
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
    %80 = llvm.icmp "slt" %78, %2 : i64
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
    %88 = llvm.mlir.constant(8193 : index) : i64
    %89 = llvm.mlir.constant(8190 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.mlir.constant(67100670 : index) : i64
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
    %116 = llvm.icmp "slt" %114, %4 : i64
    llvm.cond_br %116, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%5 : i64)
  ^bb15(%117: i64):  // 2 preds: ^bb14, ^bb16
    %118 = builtin.unrealized_conversion_cast %117 : i64 to index
    %119 = llvm.icmp "slt" %117, %2 : i64
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
    %138 = llvm.mlir.constant(8191 : index) : i64
    %139 = llvm.mul %128, %138 : i64
    %140 = llvm.add %139, %133 : i64
    %141 = builtin.unrealized_conversion_cast %140 : i64 to index
    %142 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %143 = llvm.extractvalue %35[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %144 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %145 = llvm.insertvalue %143, %142[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %146 = llvm.insertvalue %144, %145[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %147 = llvm.insertvalue %140, %146[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %148 = llvm.insertvalue %131, %147[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %149 = llvm.mlir.constant(8191 : index) : i64
    %150 = llvm.insertvalue %149, %148[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %151 = llvm.insertvalue %136, %150[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.insertvalue %152, %151[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb23(%5 : i64)
  ^bb23(%154: i64):  // 2 preds: ^bb22, ^bb33
    %155 = llvm.icmp "slt" %154, %2 : i64
    llvm.cond_br %155, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %156 = llvm.sub %2, %154 : i64
    %157 = llvm.intr.smin(%156, %1)  : (i64, i64) -> i64
    %158 = builtin.unrealized_conversion_cast %157 : i64 to index
    %159 = llvm.mlir.constant(8190 : index) : i64
    %160 = llvm.mul %133, %159 : i64
    %161 = llvm.add %160, %154 : i64
    %162 = builtin.unrealized_conversion_cast %161 : i64 to index
    %163 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %164 = llvm.extractvalue %74[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %165 = llvm.extractvalue %74[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %166 = llvm.insertvalue %164, %163[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %167 = llvm.insertvalue %165, %166[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %168 = llvm.insertvalue %161, %167[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %169 = llvm.insertvalue %136, %168[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %170 = llvm.mlir.constant(8190 : index) : i64
    %171 = llvm.insertvalue %170, %169[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %172 = llvm.insertvalue %157, %171[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.insertvalue %173, %172[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %175 = llvm.mlir.constant(8190 : index) : i64
    %176 = llvm.mul %128, %175 : i64
    %177 = llvm.add %176, %154 : i64
    %178 = builtin.unrealized_conversion_cast %177 : i64 to index
    %179 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %180 = llvm.extractvalue %113[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %181 = llvm.extractvalue %113[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %182 = llvm.insertvalue %180, %179[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %183 = llvm.insertvalue %181, %182[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %184 = llvm.insertvalue %177, %183[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %185 = llvm.insertvalue %131, %184[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %186 = llvm.mlir.constant(8190 : index) : i64
    %187 = llvm.insertvalue %186, %185[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %188 = llvm.insertvalue %157, %187[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %189 = llvm.mlir.constant(1 : index) : i64
    %190 = llvm.insertvalue %189, %188[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb25(%5 : i64)
  ^bb25(%191: i64):  // 2 preds: ^bb24, ^bb32
    %192 = builtin.unrealized_conversion_cast %191 : i64 to index
    %193 = llvm.icmp "slt" %191, %131 : i64
    llvm.cond_br %193, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%5 : i64)
  ^bb27(%194: i64):  // 2 preds: ^bb26, ^bb31
    %195 = builtin.unrealized_conversion_cast %194 : i64 to index
    %196 = llvm.icmp "slt" %194, %157 : i64
    llvm.cond_br %196, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    llvm.br ^bb29(%5 : i64)
  ^bb29(%197: i64):  // 2 preds: ^bb28, ^bb30
    %198 = builtin.unrealized_conversion_cast %197 : i64 to index
    %199 = llvm.icmp "slt" %197, %136 : i64
    llvm.cond_br %199, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %200 = llvm.extractvalue %153[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %201 = llvm.extractvalue %153[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %202 = llvm.getelementptr %200[%201] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %203 = llvm.mlir.constant(8191 : index) : i64
    %204 = llvm.mul %191, %203 : i64
    %205 = llvm.add %204, %197 : i64
    %206 = llvm.getelementptr %202[%205] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %207 = llvm.load %206 : !llvm.ptr -> f64
    %208 = llvm.extractvalue %174[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %209 = llvm.extractvalue %174[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %210 = llvm.getelementptr %208[%209] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %211 = llvm.mlir.constant(8190 : index) : i64
    %212 = llvm.mul %197, %211 : i64
    %213 = llvm.add %212, %194 : i64
    %214 = llvm.getelementptr %210[%213] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %215 = llvm.load %214 : !llvm.ptr -> f64
    %216 = llvm.extractvalue %190[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %217 = llvm.extractvalue %190[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %218 = llvm.getelementptr %216[%217] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %219 = llvm.mlir.constant(8190 : index) : i64
    %220 = llvm.mul %191, %219 : i64
    %221 = llvm.add %220, %194 : i64
    %222 = llvm.getelementptr %218[%221] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %223 = llvm.load %222 : !llvm.ptr -> f64
    %224 = llvm.fmul %207, %215  : f64
    %225 = llvm.fadd %223, %224  : f64
    %226 = llvm.extractvalue %190[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %227 = llvm.extractvalue %190[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %228 = llvm.getelementptr %226[%227] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %229 = llvm.mlir.constant(8190 : index) : i64
    %230 = llvm.mul %191, %229 : i64
    %231 = llvm.add %230, %194 : i64
    %232 = llvm.getelementptr %228[%231] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %225, %232 : f64, !llvm.ptr
    %233 = llvm.add %197, %0 : i64
    llvm.br ^bb29(%233 : i64)
  ^bb31:  // pred: ^bb29
    %234 = llvm.add %194, %0 : i64
    llvm.br ^bb27(%234 : i64)
  ^bb32:  // pred: ^bb27
    %235 = llvm.add %191, %0 : i64
    llvm.br ^bb25(%235 : i64)
  ^bb33:  // pred: ^bb25
    %236 = llvm.add %154, %1 : i64
    llvm.br ^bb23(%236 : i64)
  ^bb34:  // pred: ^bb23
    %237 = llvm.add %133, %1 : i64
    llvm.br ^bb21(%237 : i64)
  ^bb35:  // pred: ^bb21
    %238 = llvm.add %128, %1 : i64
    llvm.br ^bb19(%238 : i64)
  ^bb36:  // pred: ^bb19
    %239 = llvm.call @getTime() : () -> f64
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    %242 = llvm.mlir.zero : !llvm.ptr
    %243 = llvm.getelementptr %242[%240] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %244 = llvm.ptrtoint %243 : !llvm.ptr to i64
    %245 = llvm.call @malloc(%244) : (i64) -> !llvm.ptr
    %246 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %247 = llvm.insertvalue %245, %246[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %248 = llvm.insertvalue %245, %247[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %249 = llvm.mlir.constant(0 : index) : i64
    %250 = llvm.insertvalue %249, %248[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.insertvalue %240, %250[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %252 = llvm.insertvalue %241, %251[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %253 = llvm.extractvalue %252[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %254 = llvm.getelementptr %253[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %254 : f64, !llvm.ptr
    llvm.br ^bb37(%5 : i64)
  ^bb37(%255: i64):  // 2 preds: ^bb36, ^bb41
    %256 = builtin.unrealized_conversion_cast %255 : i64 to index
    %257 = llvm.icmp "slt" %255, %4 : i64
    llvm.cond_br %257, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    llvm.br ^bb39(%5 : i64)
  ^bb39(%258: i64):  // 2 preds: ^bb38, ^bb40
    %259 = builtin.unrealized_conversion_cast %258 : i64 to index
    %260 = llvm.icmp "slt" %258, %2 : i64
    llvm.cond_br %260, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %261 = llvm.extractvalue %113[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %262 = llvm.mlir.constant(8190 : index) : i64
    %263 = llvm.mul %255, %262 : i64
    %264 = llvm.add %263, %258 : i64
    %265 = llvm.getelementptr %261[%264] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %266 = llvm.load %265 : !llvm.ptr -> f64
    %267 = llvm.extractvalue %252[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %268 = llvm.getelementptr %267[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %269 = llvm.load %268 : !llvm.ptr -> f64
    %270 = llvm.fadd %266, %269  : f64
    %271 = llvm.extractvalue %252[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %272 = llvm.getelementptr %271[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %270, %272 : f64, !llvm.ptr
    %273 = llvm.add %258, %0 : i64
    llvm.br ^bb39(%273 : i64)
  ^bb41:  // pred: ^bb39
    %274 = llvm.add %255, %0 : i64
    llvm.br ^bb37(%274 : i64)
  ^bb42:  // pred: ^bb37
    %275 = llvm.extractvalue %252[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %276 = llvm.getelementptr %275[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %277 = llvm.load %276 : !llvm.ptr -> f64
    llvm.call @printF64(%277) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%127, %239) : (f64, f64) -> ()
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
    %2 = llvm.mlir.constant(8190 : index) : i64
    %3 = llvm.mlir.constant(8191 : index) : i64
    %4 = llvm.mlir.constant(8193 : index) : i64
    %5 = llvm.mlir.constant(0 : index) : i64
    %6 = builtin.unrealized_conversion_cast %5 : i64 to index
    %7 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %8 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %9 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %10 = llvm.mlir.constant(8193 : index) : i64
    %11 = llvm.mlir.constant(8191 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.mlir.constant(67108863 : index) : i64
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
    %38 = llvm.icmp "slt" %36, %4 : i64
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
    %80 = llvm.icmp "slt" %78, %2 : i64
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
    %88 = llvm.mlir.constant(8193 : index) : i64
    %89 = llvm.mlir.constant(8190 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.mlir.constant(67100670 : index) : i64
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
    %116 = llvm.icmp "slt" %114, %4 : i64
    llvm.cond_br %116, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%5 : i64)
  ^bb15(%117: i64):  // 2 preds: ^bb14, ^bb16
    %118 = builtin.unrealized_conversion_cast %117 : i64 to index
    %119 = llvm.icmp "slt" %117, %2 : i64
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
    %138 = llvm.mlir.constant(8191 : index) : i64
    %139 = llvm.mul %128, %138 : i64
    %140 = llvm.add %139, %133 : i64
    %141 = builtin.unrealized_conversion_cast %140 : i64 to index
    %142 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %143 = llvm.extractvalue %35[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %144 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %145 = llvm.insertvalue %143, %142[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %146 = llvm.insertvalue %144, %145[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %147 = llvm.insertvalue %140, %146[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %148 = llvm.insertvalue %131, %147[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %149 = llvm.mlir.constant(8191 : index) : i64
    %150 = llvm.insertvalue %149, %148[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %151 = llvm.insertvalue %136, %150[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.insertvalue %152, %151[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb23(%5 : i64)
  ^bb23(%154: i64):  // 2 preds: ^bb22, ^bb33
    %155 = llvm.icmp "slt" %154, %2 : i64
    llvm.cond_br %155, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %156 = llvm.sub %2, %154 : i64
    %157 = llvm.intr.smin(%156, %1)  : (i64, i64) -> i64
    %158 = builtin.unrealized_conversion_cast %157 : i64 to index
    %159 = llvm.mlir.constant(8190 : index) : i64
    %160 = llvm.mul %133, %159 : i64
    %161 = llvm.add %160, %154 : i64
    %162 = builtin.unrealized_conversion_cast %161 : i64 to index
    %163 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %164 = llvm.extractvalue %74[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %165 = llvm.extractvalue %74[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %166 = llvm.insertvalue %164, %163[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %167 = llvm.insertvalue %165, %166[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %168 = llvm.insertvalue %161, %167[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %169 = llvm.insertvalue %136, %168[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %170 = llvm.mlir.constant(8190 : index) : i64
    %171 = llvm.insertvalue %170, %169[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %172 = llvm.insertvalue %157, %171[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.insertvalue %173, %172[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %175 = llvm.mlir.constant(8190 : index) : i64
    %176 = llvm.mul %128, %175 : i64
    %177 = llvm.add %176, %154 : i64
    %178 = builtin.unrealized_conversion_cast %177 : i64 to index
    %179 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %180 = llvm.extractvalue %113[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %181 = llvm.extractvalue %113[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %182 = llvm.insertvalue %180, %179[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %183 = llvm.insertvalue %181, %182[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %184 = llvm.insertvalue %177, %183[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %185 = llvm.insertvalue %131, %184[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %186 = llvm.mlir.constant(8190 : index) : i64
    %187 = llvm.insertvalue %186, %185[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %188 = llvm.insertvalue %157, %187[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %189 = llvm.mlir.constant(1 : index) : i64
    %190 = llvm.insertvalue %189, %188[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb25(%5 : i64)
  ^bb25(%191: i64):  // 2 preds: ^bb24, ^bb32
    %192 = builtin.unrealized_conversion_cast %191 : i64 to index
    %193 = llvm.icmp "slt" %191, %131 : i64
    llvm.cond_br %193, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%5 : i64)
  ^bb27(%194: i64):  // 2 preds: ^bb26, ^bb31
    %195 = builtin.unrealized_conversion_cast %194 : i64 to index
    %196 = llvm.icmp "slt" %194, %157 : i64
    llvm.cond_br %196, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    llvm.br ^bb29(%5 : i64)
  ^bb29(%197: i64):  // 2 preds: ^bb28, ^bb30
    %198 = builtin.unrealized_conversion_cast %197 : i64 to index
    %199 = llvm.icmp "slt" %197, %136 : i64
    llvm.cond_br %199, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %200 = llvm.extractvalue %153[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %201 = llvm.extractvalue %153[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %202 = llvm.getelementptr %200[%201] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %203 = llvm.mlir.constant(8191 : index) : i64
    %204 = llvm.mul %191, %203 : i64
    %205 = llvm.add %204, %197 : i64
    %206 = llvm.getelementptr %202[%205] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %207 = llvm.load %206 : !llvm.ptr -> f64
    %208 = llvm.extractvalue %174[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %209 = llvm.extractvalue %174[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %210 = llvm.getelementptr %208[%209] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %211 = llvm.mlir.constant(8190 : index) : i64
    %212 = llvm.mul %197, %211 : i64
    %213 = llvm.add %212, %194 : i64
    %214 = llvm.getelementptr %210[%213] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %215 = llvm.load %214 : !llvm.ptr -> f64
    %216 = llvm.extractvalue %190[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %217 = llvm.extractvalue %190[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %218 = llvm.getelementptr %216[%217] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %219 = llvm.mlir.constant(8190 : index) : i64
    %220 = llvm.mul %191, %219 : i64
    %221 = llvm.add %220, %194 : i64
    %222 = llvm.getelementptr %218[%221] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %223 = llvm.load %222 : !llvm.ptr -> f64
    %224 = llvm.fmul %207, %215  : f64
    %225 = llvm.fadd %223, %224  : f64
    %226 = llvm.extractvalue %190[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %227 = llvm.extractvalue %190[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %228 = llvm.getelementptr %226[%227] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %229 = llvm.mlir.constant(8190 : index) : i64
    %230 = llvm.mul %191, %229 : i64
    %231 = llvm.add %230, %194 : i64
    %232 = llvm.getelementptr %228[%231] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %225, %232 : f64, !llvm.ptr
    %233 = llvm.add %197, %0 : i64
    llvm.br ^bb29(%233 : i64)
  ^bb31:  // pred: ^bb29
    %234 = llvm.add %194, %0 : i64
    llvm.br ^bb27(%234 : i64)
  ^bb32:  // pred: ^bb27
    %235 = llvm.add %191, %0 : i64
    llvm.br ^bb25(%235 : i64)
  ^bb33:  // pred: ^bb25
    %236 = llvm.add %154, %1 : i64
    llvm.br ^bb23(%236 : i64)
  ^bb34:  // pred: ^bb23
    %237 = llvm.add %133, %1 : i64
    llvm.br ^bb21(%237 : i64)
  ^bb35:  // pred: ^bb21
    %238 = llvm.add %128, %1 : i64
    llvm.br ^bb19(%238 : i64)
  ^bb36:  // pred: ^bb19
    %239 = llvm.call @getTime() : () -> f64
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    %242 = llvm.mlir.zero : !llvm.ptr
    %243 = llvm.getelementptr %242[%240] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %244 = llvm.ptrtoint %243 : !llvm.ptr to i64
    %245 = llvm.call @malloc(%244) : (i64) -> !llvm.ptr
    %246 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %247 = llvm.insertvalue %245, %246[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %248 = llvm.insertvalue %245, %247[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %249 = llvm.mlir.constant(0 : index) : i64
    %250 = llvm.insertvalue %249, %248[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.insertvalue %240, %250[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %252 = llvm.insertvalue %241, %251[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %253 = llvm.extractvalue %252[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %254 = llvm.getelementptr %253[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %254 : f64, !llvm.ptr
    llvm.br ^bb37(%5 : i64)
  ^bb37(%255: i64):  // 2 preds: ^bb36, ^bb41
    %256 = builtin.unrealized_conversion_cast %255 : i64 to index
    %257 = llvm.icmp "slt" %255, %4 : i64
    llvm.cond_br %257, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    llvm.br ^bb39(%5 : i64)
  ^bb39(%258: i64):  // 2 preds: ^bb38, ^bb40
    %259 = builtin.unrealized_conversion_cast %258 : i64 to index
    %260 = llvm.icmp "slt" %258, %2 : i64
    llvm.cond_br %260, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %261 = llvm.extractvalue %113[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %262 = llvm.mlir.constant(8190 : index) : i64
    %263 = llvm.mul %255, %262 : i64
    %264 = llvm.add %263, %258 : i64
    %265 = llvm.getelementptr %261[%264] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %266 = llvm.load %265 : !llvm.ptr -> f64
    %267 = llvm.extractvalue %252[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %268 = llvm.getelementptr %267[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %269 = llvm.load %268 : !llvm.ptr -> f64
    %270 = llvm.fadd %266, %269  : f64
    %271 = llvm.extractvalue %252[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %272 = llvm.getelementptr %271[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %270, %272 : f64, !llvm.ptr
    %273 = llvm.add %258, %0 : i64
    llvm.br ^bb39(%273 : i64)
  ^bb41:  // pred: ^bb39
    %274 = llvm.add %255, %0 : i64
    llvm.br ^bb37(%274 : i64)
  ^bb42:  // pred: ^bb37
    %275 = llvm.extractvalue %252[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %276 = llvm.getelementptr %275[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %277 = llvm.load %276 : !llvm.ptr -> f64
    llvm.call @printF64(%277) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%127, %239) : (f64, f64) -> ()
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
    %2 = llvm.mlir.constant(8190 : index) : i64
    %3 = llvm.mlir.constant(8191 : index) : i64
    %4 = llvm.mlir.constant(8193 : index) : i64
    %5 = llvm.mlir.constant(0 : index) : i64
    %6 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %7 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %8 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %9 = llvm.mlir.constant(8193 : index) : i64
    %10 = llvm.mlir.constant(8191 : index) : i64
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.mlir.constant(67108863 : index) : i64
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
    %36 = llvm.icmp "slt" %35, %4 : i64
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
    %75 = llvm.icmp "slt" %74, %2 : i64
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
    %83 = llvm.mlir.constant(8193 : index) : i64
    %84 = llvm.mlir.constant(8190 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(67100670 : index) : i64
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
    %110 = llvm.icmp "slt" %109, %4 : i64
    llvm.cond_br %110, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%5 : i64)
  ^bb15(%111: i64):  // 2 preds: ^bb14, ^bb16
    %112 = llvm.icmp "slt" %111, %2 : i64
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
    %129 = llvm.mlir.constant(8191 : index) : i64
    %130 = llvm.mul %121, %129 : i64
    %131 = llvm.add %130, %125 : i64
    %132 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %133 = llvm.extractvalue %34[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %134 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %135 = llvm.insertvalue %133, %132[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %136 = llvm.insertvalue %134, %135[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %137 = llvm.insertvalue %131, %136[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %138 = llvm.insertvalue %124, %137[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %139 = llvm.mlir.constant(8191 : index) : i64
    %140 = llvm.insertvalue %139, %138[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %141 = llvm.insertvalue %128, %140[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.insertvalue %142, %141[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb23(%5 : i64)
  ^bb23(%144: i64):  // 2 preds: ^bb22, ^bb33
    %145 = llvm.icmp "slt" %144, %2 : i64
    llvm.cond_br %145, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %146 = llvm.sub %2, %144 : i64
    %147 = llvm.intr.smin(%146, %1)  : (i64, i64) -> i64
    %148 = llvm.mlir.constant(8190 : index) : i64
    %149 = llvm.mul %125, %148 : i64
    %150 = llvm.add %149, %144 : i64
    %151 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %152 = llvm.extractvalue %71[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %153 = llvm.extractvalue %71[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %154 = llvm.insertvalue %152, %151[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %155 = llvm.insertvalue %153, %154[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %156 = llvm.insertvalue %150, %155[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %157 = llvm.insertvalue %128, %156[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %158 = llvm.mlir.constant(8190 : index) : i64
    %159 = llvm.insertvalue %158, %157[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %160 = llvm.insertvalue %147, %159[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.insertvalue %161, %160[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %163 = llvm.mlir.constant(8190 : index) : i64
    %164 = llvm.mul %121, %163 : i64
    %165 = llvm.add %164, %144 : i64
    %166 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %167 = llvm.extractvalue %108[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %168 = llvm.extractvalue %108[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %169 = llvm.insertvalue %167, %166[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %170 = llvm.insertvalue %168, %169[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %171 = llvm.insertvalue %165, %170[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %172 = llvm.insertvalue %124, %171[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %173 = llvm.mlir.constant(8190 : index) : i64
    %174 = llvm.insertvalue %173, %172[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %175 = llvm.insertvalue %147, %174[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.insertvalue %176, %175[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb25(%5 : i64)
  ^bb25(%178: i64):  // 2 preds: ^bb24, ^bb32
    %179 = llvm.icmp "slt" %178, %124 : i64
    llvm.cond_br %179, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%5 : i64)
  ^bb27(%180: i64):  // 2 preds: ^bb26, ^bb31
    %181 = llvm.icmp "slt" %180, %147 : i64
    llvm.cond_br %181, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    llvm.br ^bb29(%5 : i64)
  ^bb29(%182: i64):  // 2 preds: ^bb28, ^bb30
    %183 = llvm.icmp "slt" %182, %128 : i64
    llvm.cond_br %183, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %184 = llvm.extractvalue %143[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %185 = llvm.extractvalue %143[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %186 = llvm.getelementptr %184[%185] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %187 = llvm.mlir.constant(8191 : index) : i64
    %188 = llvm.mul %178, %187 : i64
    %189 = llvm.add %188, %182 : i64
    %190 = llvm.getelementptr %186[%189] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %191 = llvm.load %190 : !llvm.ptr -> f64
    %192 = llvm.extractvalue %162[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %193 = llvm.extractvalue %162[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
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
    %240 = llvm.icmp "slt" %239, %4 : i64
    llvm.cond_br %240, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    llvm.br ^bb39(%5 : i64)
  ^bb39(%241: i64):  // 2 preds: ^bb38, ^bb40
    %242 = llvm.icmp "slt" %241, %2 : i64
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
    %2 = llvm.mlir.constant(8190 : index) : i64
    %3 = llvm.mlir.constant(8191 : index) : i64
    %4 = llvm.mlir.constant(8193 : index) : i64
    %5 = llvm.mlir.constant(0 : index) : i64
    %6 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %7 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %8 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %9 = llvm.mlir.constant(8193 : index) : i64
    %10 = llvm.mlir.constant(8191 : index) : i64
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.mlir.constant(67108863 : index) : i64
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
    %36 = llvm.icmp "slt" %35, %4 : i64
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
    %75 = llvm.icmp "slt" %74, %2 : i64
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
    %83 = llvm.mlir.constant(8193 : index) : i64
    %84 = llvm.mlir.constant(8190 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(67100670 : index) : i64
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
    %110 = llvm.icmp "slt" %109, %4 : i64
    llvm.cond_br %110, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%5 : i64)
  ^bb15(%111: i64):  // 2 preds: ^bb14, ^bb16
    %112 = llvm.icmp "slt" %111, %2 : i64
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
    %129 = llvm.mlir.constant(8191 : index) : i64
    %130 = llvm.mul %121, %129 : i64
    %131 = llvm.add %130, %125 : i64
    %132 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %133 = llvm.extractvalue %34[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %134 = llvm.extractvalue %34[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %135 = llvm.insertvalue %133, %132[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %136 = llvm.insertvalue %134, %135[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %137 = llvm.insertvalue %131, %136[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %138 = llvm.insertvalue %124, %137[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %139 = llvm.mlir.constant(8191 : index) : i64
    %140 = llvm.insertvalue %139, %138[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %141 = llvm.insertvalue %128, %140[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.insertvalue %142, %141[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb23(%5 : i64)
  ^bb23(%144: i64):  // 2 preds: ^bb22, ^bb33
    %145 = llvm.icmp "slt" %144, %2 : i64
    llvm.cond_br %145, ^bb24, ^bb34
  ^bb24:  // pred: ^bb23
    %146 = llvm.sub %2, %144 : i64
    %147 = llvm.intr.smin(%146, %1)  : (i64, i64) -> i64
    %148 = llvm.mlir.constant(8190 : index) : i64
    %149 = llvm.mul %125, %148 : i64
    %150 = llvm.add %149, %144 : i64
    %151 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %152 = llvm.extractvalue %71[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %153 = llvm.extractvalue %71[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %154 = llvm.insertvalue %152, %151[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %155 = llvm.insertvalue %153, %154[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %156 = llvm.insertvalue %150, %155[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %157 = llvm.insertvalue %128, %156[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %158 = llvm.mlir.constant(8190 : index) : i64
    %159 = llvm.insertvalue %158, %157[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %160 = llvm.insertvalue %147, %159[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.insertvalue %161, %160[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %163 = llvm.mlir.constant(8190 : index) : i64
    %164 = llvm.mul %121, %163 : i64
    %165 = llvm.add %164, %144 : i64
    %166 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %167 = llvm.extractvalue %108[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %168 = llvm.extractvalue %108[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %169 = llvm.insertvalue %167, %166[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %170 = llvm.insertvalue %168, %169[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %171 = llvm.insertvalue %165, %170[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %172 = llvm.insertvalue %124, %171[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %173 = llvm.mlir.constant(8190 : index) : i64
    %174 = llvm.insertvalue %173, %172[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %175 = llvm.insertvalue %147, %174[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.insertvalue %176, %175[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb25(%5 : i64)
  ^bb25(%178: i64):  // 2 preds: ^bb24, ^bb32
    %179 = llvm.icmp "slt" %178, %124 : i64
    llvm.cond_br %179, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%5 : i64)
  ^bb27(%180: i64):  // 2 preds: ^bb26, ^bb31
    %181 = llvm.icmp "slt" %180, %147 : i64
    llvm.cond_br %181, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    llvm.br ^bb29(%5 : i64)
  ^bb29(%182: i64):  // 2 preds: ^bb28, ^bb30
    %183 = llvm.icmp "slt" %182, %128 : i64
    llvm.cond_br %183, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %184 = llvm.extractvalue %143[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %185 = llvm.extractvalue %143[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %186 = llvm.getelementptr %184[%185] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %187 = llvm.mlir.constant(8191 : index) : i64
    %188 = llvm.mul %178, %187 : i64
    %189 = llvm.add %188, %182 : i64
    %190 = llvm.getelementptr %186[%189] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %191 = llvm.load %190 : !llvm.ptr -> f64
    %192 = llvm.extractvalue %162[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %193 = llvm.extractvalue %162[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
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
    %240 = llvm.icmp "slt" %239, %4 : i64
    llvm.cond_br %240, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    llvm.br ^bb39(%5 : i64)
  ^bb39(%241: i64):  // 2 preds: ^bb38, ^bb40
    %242 = llvm.icmp "slt" %241, %2 : i64
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
