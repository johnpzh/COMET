// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
#map = affine_map<(d0, d1, d2, d3, d4) -> (d2, d1, d3, d4)>
#map1 = affine_map<(d0, d1, d2, d3, d4) -> (d3, d4, d1, d0)>
#map2 = affine_map<(d0, d1, d2, d3, d4) -> (d2, d0)>
module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.index_label"() : () -> !ta.index
    %4 = "ta.index_label"() : () -> !ta.index
    %5 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<16x16x16x16xf64>
    %6 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<16x16x16x16xf64>
    %7 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<16x16xf64>
    "ta.fill"(%5) <{value = 2.300000e+00 : f64}> : (tensor<16x16x16x16xf64>) -> ()
    "ta.fill"(%6) <{value = 3.400000e+00 : f64}> : (tensor<16x16x16x16xf64>) -> ()
    "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<16x16xf64>) -> ()
    %8 = "ta.mul"(%5, %6, %0, %1, %2, %3, %2, %3, %1, %4, %0, %4) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 1, 1, 10, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<16x16x16x16xf64>, tensor<16x16x16x16xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<16x16xf64>
    "ta.set_op"(%8, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<16x16xf64>, tensor<16x16xf64>) -> ()
    "ta.print"(%7) : (tensor<16x16xf64>) -> ()
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
  %5 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<16x16x16x16xf64>
  %6 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<16x16x16x16xf64>
  %7 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<16x16xf64>
  "ta.fill"(%5) <{value = 2.300000e+00 : f64}> : (tensor<16x16x16x16xf64>) -> ()
  "ta.fill"(%6) <{value = 3.400000e+00 : f64}> : (tensor<16x16x16x16xf64>) -> ()
  "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<16x16xf64>) -> ()
  %8 = "ta.mul"(%5, %6, %0, %1, %2, %3, %2, %3, %1, %4, %0, %4) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d2, d1, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d3, d4, d1, d0)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d0)>], operandSegmentSizes = array<i32: 1, 1, 10, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<16x16x16x16xf64>, tensor<16x16x16x16xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<16x16xf64>
  "ta.set_op"(%8, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<16x16xf64>, tensor<16x16xf64>) -> ()
  "ta.print"(%7) : (tensor<16x16xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.index_label"() : () -> !ta.index
  %4 = "ta.index_label"() : () -> !ta.index
  %5 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<16x16x16x16xf64>
  %6 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<16x16x16x16xf64>
  %7 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<16x16xf64>
  "ta.fill"(%5) <{value = 2.300000e+00 : f64}> : (tensor<16x16x16x16xf64>) -> ()
  "ta.fill"(%6) <{value = 3.400000e+00 : f64}> : (tensor<16x16x16x16xf64>) -> ()
  "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<16x16xf64>) -> ()
  %8 = "ta.mul"(%5, %6, %0, %1, %2, %3, %2, %3, %1, %4, %0, %4) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d2, d1, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d3, d4, d1, d0)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d0)>], operandSegmentSizes = array<i32: 1, 1, 10, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<16x16x16x16xf64>, tensor<16x16x16x16xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<16x16xf64>
  "ta.set_op"(%8, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<16x16xf64>, tensor<16x16xf64>) -> ()
  "ta.print"(%7) : (tensor<16x16xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.index_label"() : () -> !ta.index
  %4 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  %5 = bufferization.to_tensor %alloc restrict writable : memref<16x16x16x16xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  %6 = bufferization.to_tensor %alloc_0 restrict writable : memref<16x16x16x16xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  %7 = bufferization.to_tensor %alloc_1 restrict writable : memref<16x16xf64>
  "ta.fill"(%5) <{value = 2.300000e+00 : f64}> : (tensor<16x16x16x16xf64>) -> ()
  "ta.fill"(%6) <{value = 3.400000e+00 : f64}> : (tensor<16x16x16x16xf64>) -> ()
  "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<16x16xf64>) -> ()
  %8 = "ta.mul"(%5, %6, %0, %1, %2, %3, %2, %3, %1, %4, %0, %4) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d2, d1, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d3, d4, d1, d0)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d0)>], operandSegmentSizes = array<i32: 1, 1, 10, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<16x16x16x16xf64>, tensor<16x16x16x16xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<16x16xf64>
  "ta.set_op"(%8, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<16x16xf64>, tensor<16x16xf64>) -> ()
  "ta.print"(%7) : (tensor<16x16xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.index_label"() : () -> !ta.index
  %4 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  %5 = bufferization.to_tensor %alloc restrict writable : memref<16x16x16x16xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  %6 = bufferization.to_tensor %alloc_0 restrict writable : memref<16x16x16x16xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  %7 = bufferization.to_tensor %alloc_1 restrict writable : memref<16x16xf64>
  "ta.fill"(%5) <{value = 2.300000e+00 : f64}> : (tensor<16x16x16x16xf64>) -> ()
  "ta.fill"(%6) <{value = 3.400000e+00 : f64}> : (tensor<16x16x16x16xf64>) -> ()
  "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<16x16xf64>) -> ()
  %8 = "ta.mul"(%5, %6, %0, %1, %2, %3, %2, %3, %1, %4, %0, %4) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d2, d1, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d3, d4, d1, d0)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d0)>], operandSegmentSizes = array<i32: 1, 1, 10, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<16x16x16x16xf64>, tensor<16x16x16x16xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<16x16xf64>
  "ta.set_op"(%8, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<16x16xf64>, tensor<16x16xf64>) -> ()
  "ta.print"(%7) : (tensor<16x16xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.index_label"() : () -> !ta.index
  %4 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  %5 = bufferization.to_tensor %alloc restrict writable : memref<16x16x16x16xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  %6 = bufferization.to_tensor %alloc_0 restrict writable : memref<16x16x16x16xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  %7 = bufferization.to_tensor %alloc_1 restrict writable : memref<16x16xf64>
  "ta.fill"(%5) <{value = 2.300000e+00 : f64}> : (tensor<16x16x16x16xf64>) -> ()
  "ta.fill"(%6) <{value = 3.400000e+00 : f64}> : (tensor<16x16x16x16xf64>) -> ()
  "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<16x16xf64>) -> ()
  %8 = "ta.mul"(%5, %6, %0, %1, %2, %3, %2, %3, %1, %4, %0, %4) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d2, d1, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d3, d4, d1, d0)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d0)>], operandSegmentSizes = array<i32: 1, 1, 10, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<16x16x16x16xf64>, tensor<16x16x16x16xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<16x16xf64>
  "ta.set_op"(%8, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<16x16xf64>, tensor<16x16xf64>) -> ()
  "ta.print"(%7) : (tensor<16x16xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.index_label"() : () -> !ta.index
  %4 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  %cst = arith.constant 2.300000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<16x16x16x16xf64>)
  %5 = bufferization.to_tensor %alloc restrict writable : memref<16x16x16x16xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  %cst_1 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_1 : f64) outs(%alloc_0 : memref<16x16x16x16xf64>)
  %6 = bufferization.to_tensor %alloc_0 restrict writable : memref<16x16x16x16xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_2 : memref<16x16xf64>)
  %7 = bufferization.to_tensor %alloc_2 restrict writable : memref<16x16xf64>
  %8 = "ta.mul"(%5, %6, %0, %1, %2, %3, %2, %3, %1, %4, %0, %4) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d2, d1, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d3, d4, d1, d0)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d0)>], operandSegmentSizes = array<i32: 1, 1, 10, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<16x16x16x16xf64>, tensor<16x16x16x16xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<16x16xf64>
  "ta.set_op"(%8, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<16x16xf64>, tensor<16x16xf64>) -> ()
  "ta.print"(%7) : (tensor<16x16xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.index_label"() : () -> !ta.index
  %4 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  %cst = arith.constant 2.300000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<16x16x16x16xf64>)
  %5 = bufferization.to_tensor %alloc restrict writable : memref<16x16x16x16xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  %cst_1 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_1 : f64) outs(%alloc_0 : memref<16x16x16x16xf64>)
  %6 = bufferization.to_tensor %alloc_0 restrict writable : memref<16x16x16x16xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_2 : memref<16x16xf64>)
  %7 = bufferization.to_tensor %alloc_2 restrict writable : memref<16x16xf64>
  %8 = "ta.mul"(%5, %6, %0, %1, %2, %3, %2, %3, %1, %4, %0, %4) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d2, d1, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d3, d4, d1, d0)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d0)>], operandSegmentSizes = array<i32: 1, 1, 10, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<16x16x16x16xf64>, tensor<16x16x16x16xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<16x16xf64>
  "ta.set_op"(%8, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<16x16xf64>, tensor<16x16xf64>) -> ()
  "ta.print"(%7) : (tensor<16x16xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TALoweringTTGTPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.index_label"() : () -> !ta.index
  %4 = "ta.index_label"() : () -> !ta.index
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  %cst = arith.constant 2.300000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<16x16x16x16xf64>)
  %5 = bufferization.to_tensor %alloc restrict writable : memref<16x16x16x16xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  %cst_1 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_1 : f64) outs(%alloc_0 : memref<16x16x16x16xf64>)
  %6 = bufferization.to_tensor %alloc_0 restrict writable : memref<16x16x16x16xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_2 : memref<16x16xf64>)
  %7 = bufferization.to_tensor %alloc_2 restrict writable : memref<16x16xf64>
  %8 = bufferization.to_memref %5 : memref<16x16x16x16xf64>
  %9 = bufferization.to_memref %6 : memref<16x16x16x16xf64>
  %10 = bufferization.to_memref %7 : memref<16x16xf64>
  %alloc_4 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  linalg.transpose ins(%8 : memref<16x16x16x16xf64>) outs(%alloc_4 : memref<16x16x16x16xf64>) permutation = [0, 2, 3, 1] 
  %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x16x16x16xf64> into memref<16x4096xf64>
  %collapse_shape_5 = memref.collapse_shape %9 [[0, 1, 2], [3]] : memref<16x16x16x16xf64> into memref<4096x16xf64>
  linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__with_tiling__"} ins(%collapse_shape, %collapse_shape_5 : memref<16x4096xf64>, memref<4096x16xf64>) outs(%10 : memref<16x16xf64>)
  "ta.print"(%7) : (tensor<16x16xf64>) -> ()
  memref.dealloc %alloc_4 : memref<16x16x16x16xf64>
  return
}

// -----// IR Dump After (anonymous namespace)::LinAlgMatmulTilingPass () //----- //
func.func @main() {
  %c8 = arith.constant 8 : index
  %c6 = arith.constant 6 : index
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c4096 = arith.constant 4096 : index
  %c8184 = arith.constant 8184 : index
  %c16 = arith.constant 16 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x16x16xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<16x16x16x16xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x16xf64>)
  %0 = bufferization.to_tensor %alloc_3 restrict writable : memref<16x16xf64>
  %alloc_4 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  linalg.transpose ins(%alloc : memref<16x16x16x16xf64>) outs(%alloc_4 : memref<16x16x16x16xf64>) permutation = [0, 2, 3, 1] 
  %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x16x16x16xf64> into memref<16x4096xf64>
  %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<16x16x16x16xf64> into memref<4096x16xf64>
  scf.for %arg0 = %c0 to %c16 step %c8184 {
    %1 = affine.min affine_map<(d0) -> (8184, -d0 + 16)>(%arg0)
    scf.for %arg1 = %c0 to %c4096 step %c3072 {
      %2 = affine.min affine_map<(d0) -> (3072, -d0 + 4096)>(%arg1)
      scf.for %arg2 = %c0 to %c16 step %c256 {
        %3 = affine.min affine_map<(d0) -> (256, -d0 + 16)>(%arg2)
        %subview = memref.subview %collapse_shape[%arg2, %arg1] [%3, %2] [1, 1] : memref<16x4096xf64> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
        %subview_6 = memref.subview %collapse_shape_5[%arg1, %arg0] [%2, %1] [1, 1] : memref<4096x16xf64> to memref<?x?xf64, strided<[16, 1], offset: ?>>
        %subview_7 = memref.subview %alloc_3[%arg2, %arg0] [%3, %1] [1, 1] : memref<16x16xf64> to memref<?x?xf64, strided<[16, 1], offset: ?>>
        scf.for %arg3 = %c0 to %1 step %c6 {
          %4 = affine.min affine_map<(d0)[s0] -> (6, -d0 + s0)>(%arg3)[%1]
          scf.for %arg4 = %c0 to %3 step %c8 {
            %5 = affine.min affine_map<(d0)[s0] -> (8, -d0 + s0)>(%arg4)[%3]
            scf.for %arg5 = %c0 to %2 step %c3072 {
              %6 = affine.min affine_map<(d0)[s0] -> (3072, -d0 + s0)>(%arg5)[%2]
              %subview_8 = memref.subview %subview[%arg4, %arg5] [%5, %6] [1, 1] : memref<?x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
              %subview_9 = memref.subview %subview_6[%arg5, %arg3] [%6, %4] [1, 1] : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[16, 1], offset: ?>>
              %subview_10 = memref.subview %subview_7[%arg4, %arg3] [%5, %4] [1, 1] : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[16, 1], offset: ?>>
              linalg.matmul {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, __with_tiling__ = "__micro_kernel__"} ins(%subview_8, %subview_9 : memref<?x?xf64, strided<[4096, 1], offset: ?>>, memref<?x?xf64, strided<[16, 1], offset: ?>>) outs(%subview_10 : memref<?x?xf64, strided<[16, 1], offset: ?>>)
            }
          }
        }
      }
    }
  }
  "ta.print"(%0) : (tensor<16x16xf64>) -> ()
  memref.dealloc %alloc_4 : memref<16x16x16x16xf64>
  return
}

// -----// IR Dump After (anonymous namespace)::LinAlgMatmulMicroKernelPass () //----- //
func.func @main() {
  %c6_i32 = arith.constant 6 : i32
  %c8_i32 = arith.constant 8 : i32
  %c8 = arith.constant 8 : index
  %c6 = arith.constant 6 : index
  %c256 = arith.constant 256 : index
  %c3072 = arith.constant 3072 : index
  %c4096 = arith.constant 4096 : index
  %c8184 = arith.constant 8184 : index
  %c16 = arith.constant 16 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x16x16xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<16x16x16x16xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x16xf64>)
  %0 = bufferization.to_tensor %alloc_3 restrict writable : memref<16x16xf64>
  %alloc_4 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  linalg.transpose ins(%alloc : memref<16x16x16x16xf64>) outs(%alloc_4 : memref<16x16x16x16xf64>) permutation = [0, 2, 3, 1] 
  %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x16x16x16xf64> into memref<16x4096xf64>
  %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<16x16x16x16xf64> into memref<4096x16xf64>
  scf.for %arg0 = %c0 to %c16 step %c8184 {
    %1 = affine.min affine_map<(d0) -> (8184, -d0 + 16)>(%arg0)
    scf.for %arg1 = %c0 to %c4096 step %c3072 {
      %2 = affine.min affine_map<(d0) -> (3072, -d0 + 4096)>(%arg1)
      scf.for %arg2 = %c0 to %c16 step %c256 {
        %3 = affine.min affine_map<(d0) -> (256, -d0 + 16)>(%arg2)
        %subview = memref.subview %collapse_shape[%arg2, %arg1] [%3, %2] [1, 1] : memref<16x4096xf64> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
        %subview_6 = memref.subview %collapse_shape_5[%arg1, %arg0] [%2, %1] [1, 1] : memref<4096x16xf64> to memref<?x?xf64, strided<[16, 1], offset: ?>>
        %subview_7 = memref.subview %alloc_3[%arg2, %arg0] [%3, %1] [1, 1] : memref<16x16xf64> to memref<?x?xf64, strided<[16, 1], offset: ?>>
        scf.for %arg3 = %c0 to %1 step %c6 {
          %4 = affine.min affine_map<(d0)[s0] -> (6, -d0 + s0)>(%arg3)[%1]
          scf.for %arg4 = %c0 to %3 step %c8 {
            %5 = affine.min affine_map<(d0)[s0] -> (8, -d0 + s0)>(%arg4)[%3]
            scf.for %arg5 = %c0 to %2 step %c3072 {
              %6 = affine.min affine_map<(d0)[s0] -> (3072, -d0 + s0)>(%arg5)[%2]
              %subview_8 = memref.subview %subview[%arg4, %arg5] [%5, %6] [1, 1] : memref<?x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
              %subview_9 = memref.subview %subview_6[%arg5, %arg3] [%6, %4] [1, 1] : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[16, 1], offset: ?>>
              %subview_10 = memref.subview %subview_7[%arg4, %arg3] [%5, %4] [1, 1] : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[16, 1], offset: ?>>
              %cast = memref.cast %subview_8 : memref<?x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
              %cast_11 = memref.cast %subview_9 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
              %cast_12 = memref.cast %subview_10 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
              func.call @linalg_matmul_viewsxs_viewsxs_viewsxs(%cast, %cast_11, %cast_12, %c8_i32, %c6_i32) : (memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) -> ()
            }
          }
        }
      }
    }
  }
  "ta.print"(%0) : (tensor<16x16xf64>) -> ()
  memref.dealloc %alloc_4 : memref<16x16x16x16xf64>
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %c16 = arith.constant 16 : index
  %c6_i32 = arith.constant 6 : i32
  %c8_i32 = arith.constant 8 : i32
  %c8 = arith.constant 8 : index
  %c6 = arith.constant 6 : index
  %c3072 = arith.constant 3072 : index
  %c4096 = arith.constant 4096 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x16x16xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<16x16x16x16xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x16xf64>)
  %0 = bufferization.to_tensor %alloc_3 restrict writable : memref<16x16xf64>
  %alloc_4 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  linalg.transpose ins(%alloc : memref<16x16x16x16xf64>) outs(%alloc_4 : memref<16x16x16x16xf64>) permutation = [0, 2, 3, 1] 
  %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x16x16x16xf64> into memref<16x4096xf64>
  %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<16x16x16x16xf64> into memref<4096x16xf64>
  scf.for %arg0 = %c0 to %c4096 step %c3072 {
    %1 = affine.min affine_map<(d0) -> (-d0 + 4096, 3072)>(%arg0)
    %subview = memref.subview %collapse_shape[0, %arg0] [16, %1] [1, 1] : memref<16x4096xf64> to memref<16x?xf64, strided<[4096, 1], offset: ?>>
    %subview_6 = memref.subview %collapse_shape_5[%arg0, 0] [%1, 16] [1, 1] : memref<4096x16xf64> to memref<?x16xf64, strided<[16, 1], offset: ?>>
    scf.for %arg1 = %c0 to %c16 step %c6 {
      %2 = affine.min affine_map<(d0) -> (-d0 + 16, 6)>(%arg1)
      scf.for %arg2 = %c0 to %c16 step %c8 {
        %3 = affine.min affine_map<(d0) -> (-d0 + 16, 8)>(%arg2)
        scf.for %arg3 = %c0 to %1 step %c3072 {
          %4 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg3)[%1]
          %subview_7 = memref.subview %subview[%arg2, %arg3] [%3, %4] [1, 1] : memref<16x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
          %subview_8 = memref.subview %subview_6[%arg3, %arg1] [%4, %2] [1, 1] : memref<?x16xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[16, 1], offset: ?>>
          %subview_9 = memref.subview %alloc_3[%arg2, %arg1] [%3, %2] [1, 1] : memref<16x16xf64> to memref<?x?xf64, strided<[16, 1], offset: ?>>
          %cast = memref.cast %subview_7 : memref<?x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
          %cast_10 = memref.cast %subview_8 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
          %cast_11 = memref.cast %subview_9 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
          func.call @linalg_matmul_viewsxs_viewsxs_viewsxs(%cast, %cast_10, %cast_11, %c8_i32, %c6_i32) : (memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) -> ()
        }
      }
    }
  }
  "ta.print"(%0) : (tensor<16x16xf64>) -> ()
  memref.dealloc %alloc_4 : memref<16x16x16x16xf64>
  return
}

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
#map = affine_map<(d0) -> (-d0 + 4096, 3072)>
#map1 = affine_map<(d0) -> (-d0 + 16, 6)>
#map2 = affine_map<(d0) -> (-d0 + 16, 8)>
#map3 = affine_map<(d0)[s0] -> (-d0 + s0, 3072)>
module {
  func.func @main() {
    %c16 = arith.constant 16 : index
    %c6_i32 = arith.constant 6 : i32
    %c8_i32 = arith.constant 8 : i32
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x16x16xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<16x16x16x16xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x16xf64>)
    %0 = bufferization.to_tensor %alloc_3 restrict writable : memref<16x16xf64>
    %alloc_4 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    linalg.transpose ins(%alloc : memref<16x16x16x16xf64>) outs(%alloc_4 : memref<16x16x16x16xf64>) permutation = [0, 2, 3, 1] 
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x16x16x16xf64> into memref<16x4096xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<16x16x16x16xf64> into memref<4096x16xf64>
    scf.for %arg0 = %c0 to %c4096 step %c3072 {
      %1 = affine.min #map(%arg0)
      %subview = memref.subview %collapse_shape[0, %arg0] [16, %1] [1, 1] : memref<16x4096xf64> to memref<16x?xf64, strided<[4096, 1], offset: ?>>
      %subview_6 = memref.subview %collapse_shape_5[%arg0, 0] [%1, 16] [1, 1] : memref<4096x16xf64> to memref<?x16xf64, strided<[16, 1], offset: ?>>
      scf.for %arg1 = %c0 to %c16 step %c6 {
        %2 = affine.min #map1(%arg1)
        scf.for %arg2 = %c0 to %c16 step %c8 {
          %3 = affine.min #map2(%arg2)
          scf.for %arg3 = %c0 to %1 step %c3072 {
            %4 = affine.min #map3(%arg3)[%1]
            %subview_7 = memref.subview %subview[%arg2, %arg3] [%3, %4] [1, 1] : memref<16x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
            %subview_8 = memref.subview %subview_6[%arg3, %arg1] [%4, %2] [1, 1] : memref<?x16xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[16, 1], offset: ?>>
            %subview_9 = memref.subview %alloc_3[%arg2, %arg1] [%3, %2] [1, 1] : memref<16x16xf64> to memref<?x?xf64, strided<[16, 1], offset: ?>>
            %cast = memref.cast %subview_7 : memref<?x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
            %cast_10 = memref.cast %subview_8 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
            %cast_11 = memref.cast %subview_9 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
            func.call @linalg_matmul_viewsxs_viewsxs_viewsxs(%cast, %cast_10, %cast_11, %c8_i32, %c6_i32) : (memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) -> ()
          }
        }
      }
    }
    "ta.print"(%0) : (tensor<16x16xf64>) -> ()
    memref.dealloc %alloc_4 : memref<16x16x16x16xf64>
    return
  }
  func.func private @getTime() -> f64
  func.func private @linalg_matmul_viewsxs_viewsxs_viewsxs(memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) attributes {llvm.emit_c_interface}
  func.func private @print_flops(f64)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
#map = affine_map<(d0) -> (-d0 + 4096, 3072)>
#map1 = affine_map<(d0) -> (-d0 + 16, 6)>
#map2 = affine_map<(d0) -> (-d0 + 16, 8)>
#map3 = affine_map<(d0)[s0] -> (-d0 + s0, 3072)>
module {
  func.func @main() {
    %c16 = arith.constant 16 : index
    %c6_i32 = arith.constant 6 : i32
    %c8_i32 = arith.constant 8 : i32
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x16x16xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<16x16x16x16xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x16xf64>)
    %0 = bufferization.to_tensor %alloc_3 restrict writable : memref<16x16xf64>
    %alloc_4 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    linalg.transpose ins(%alloc : memref<16x16x16x16xf64>) outs(%alloc_4 : memref<16x16x16x16xf64>) permutation = [0, 2, 3, 1] 
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x16x16x16xf64> into memref<16x4096xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<16x16x16x16xf64> into memref<4096x16xf64>
    scf.for %arg0 = %c0 to %c4096 step %c3072 {
      %1 = affine.min #map(%arg0)
      %subview = memref.subview %collapse_shape[0, %arg0] [16, %1] [1, 1] : memref<16x4096xf64> to memref<16x?xf64, strided<[4096, 1], offset: ?>>
      %subview_6 = memref.subview %collapse_shape_5[%arg0, 0] [%1, 16] [1, 1] : memref<4096x16xf64> to memref<?x16xf64, strided<[16, 1], offset: ?>>
      scf.for %arg1 = %c0 to %c16 step %c6 {
        %2 = affine.min #map1(%arg1)
        scf.for %arg2 = %c0 to %c16 step %c8 {
          %3 = affine.min #map2(%arg2)
          scf.for %arg3 = %c0 to %1 step %c3072 {
            %4 = affine.min #map3(%arg3)[%1]
            %subview_7 = memref.subview %subview[%arg2, %arg3] [%3, %4] [1, 1] : memref<16x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
            %subview_8 = memref.subview %subview_6[%arg3, %arg1] [%4, %2] [1, 1] : memref<?x16xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[16, 1], offset: ?>>
            %subview_9 = memref.subview %alloc_3[%arg2, %arg1] [%3, %2] [1, 1] : memref<16x16xf64> to memref<?x?xf64, strided<[16, 1], offset: ?>>
            %cast = memref.cast %subview_7 : memref<?x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
            %cast_10 = memref.cast %subview_8 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
            %cast_11 = memref.cast %subview_9 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
            func.call @linalg_matmul_viewsxs_viewsxs_viewsxs(%cast, %cast_10, %cast_11, %c8_i32, %c6_i32) : (memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) -> ()
          }
        }
      }
    }
    "ta.print"(%0) : (tensor<16x16xf64>) -> ()
    memref.dealloc %alloc_4 : memref<16x16x16x16xf64>
    return
  }
  func.func private @getTime() -> f64
  func.func private @linalg_matmul_viewsxs_viewsxs_viewsxs(memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) attributes {llvm.emit_c_interface}
  func.func private @print_flops(f64)
}


// -----// IR Dump After OneShotBufferize (one-shot-bufferize) //----- //
#map = affine_map<(d0) -> (-d0 + 4096, 3072)>
#map1 = affine_map<(d0) -> (-d0 + 16, 6)>
#map2 = affine_map<(d0) -> (-d0 + 16, 8)>
#map3 = affine_map<(d0)[s0] -> (-d0 + s0, 3072)>
module {
  func.func @main() {
    %c16 = arith.constant 16 : index
    %c6_i32 = arith.constant 6 : i32
    %c8_i32 = arith.constant 8 : i32
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x16x16xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<16x16x16x16xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x16xf64>)
    %0 = bufferization.to_tensor %alloc_3 restrict writable : memref<16x16xf64>
    %alloc_4 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    linalg.transpose ins(%alloc : memref<16x16x16x16xf64>) outs(%alloc_4 : memref<16x16x16x16xf64>) permutation = [0, 2, 3, 1] 
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x16x16x16xf64> into memref<16x4096xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<16x16x16x16xf64> into memref<4096x16xf64>
    scf.for %arg0 = %c0 to %c4096 step %c3072 {
      %1 = affine.min #map(%arg0)
      %subview = memref.subview %collapse_shape[0, %arg0] [16, %1] [1, 1] : memref<16x4096xf64> to memref<16x?xf64, strided<[4096, 1], offset: ?>>
      %subview_6 = memref.subview %collapse_shape_5[%arg0, 0] [%1, 16] [1, 1] : memref<4096x16xf64> to memref<?x16xf64, strided<[16, 1], offset: ?>>
      scf.for %arg1 = %c0 to %c16 step %c6 {
        %2 = affine.min #map1(%arg1)
        scf.for %arg2 = %c0 to %c16 step %c8 {
          %3 = affine.min #map2(%arg2)
          scf.for %arg3 = %c0 to %1 step %c3072 {
            %4 = affine.min #map3(%arg3)[%1]
            %subview_7 = memref.subview %subview[%arg2, %arg3] [%3, %4] [1, 1] : memref<16x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
            %subview_8 = memref.subview %subview_6[%arg3, %arg1] [%4, %2] [1, 1] : memref<?x16xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[16, 1], offset: ?>>
            %subview_9 = memref.subview %alloc_3[%arg2, %arg1] [%3, %2] [1, 1] : memref<16x16xf64> to memref<?x?xf64, strided<[16, 1], offset: ?>>
            %cast = memref.cast %subview_7 : memref<?x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
            %cast_10 = memref.cast %subview_8 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
            %cast_11 = memref.cast %subview_9 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
            func.call @linalg_matmul_viewsxs_viewsxs_viewsxs(%cast, %cast_10, %cast_11, %c8_i32, %c6_i32) : (memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) -> ()
          }
        }
      }
    }
    "ta.print"(%0) : (tensor<16x16xf64>) -> ()
    memref.dealloc %alloc_4 : memref<16x16x16x16xf64>
    return
  }
  func.func private @getTime() -> f64
  func.func private @linalg_matmul_viewsxs_viewsxs_viewsxs(memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) attributes {llvm.emit_c_interface}
  func.func private @print_flops(f64)
}


// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @print_flops(f64)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @getTime() -> f64

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @linalg_matmul_viewsxs_viewsxs_viewsxs(memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) attributes {llvm.emit_c_interface}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @print_flops(f64)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @linalg_matmul_viewsxs_viewsxs_viewsxs(memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) attributes {llvm.emit_c_interface}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @getTime() -> f64

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func @main() {
  %c16 = arith.constant 16 : index
  %c6_i32 = arith.constant 6 : i32
  %c8_i32 = arith.constant 8 : i32
  %c8 = arith.constant 8 : index
  %c6 = arith.constant 6 : index
  %c3072 = arith.constant 3072 : index
  %c4096 = arith.constant 4096 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x16x16xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<16x16x16x16xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x16xf64>)
  %0 = bufferization.to_tensor %alloc_3 restrict writable : memref<16x16xf64>
  %alloc_4 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  linalg.transpose ins(%alloc : memref<16x16x16x16xf64>) outs(%alloc_4 : memref<16x16x16x16xf64>) permutation = [0, 2, 3, 1] 
  %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x16x16x16xf64> into memref<16x4096xf64>
  %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<16x16x16x16xf64> into memref<4096x16xf64>
  scf.for %arg0 = %c0 to %c4096 step %c3072 {
    %1 = affine.min affine_map<(d0) -> (-d0 + 4096, 3072)>(%arg0)
    %subview = memref.subview %collapse_shape[0, %arg0] [16, %1] [1, 1] : memref<16x4096xf64> to memref<16x?xf64, strided<[4096, 1], offset: ?>>
    %subview_6 = memref.subview %collapse_shape_5[%arg0, 0] [%1, 16] [1, 1] : memref<4096x16xf64> to memref<?x16xf64, strided<[16, 1], offset: ?>>
    scf.for %arg1 = %c0 to %c16 step %c6 {
      %2 = affine.min affine_map<(d0) -> (-d0 + 16, 6)>(%arg1)
      scf.for %arg2 = %c0 to %c16 step %c8 {
        %3 = affine.min affine_map<(d0) -> (-d0 + 16, 8)>(%arg2)
        scf.for %arg3 = %c0 to %1 step %c3072 {
          %4 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg3)[%1]
          %subview_7 = memref.subview %subview[%arg2, %arg3] [%3, %4] [1, 1] : memref<16x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
          %subview_8 = memref.subview %subview_6[%arg3, %arg1] [%4, %2] [1, 1] : memref<?x16xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[16, 1], offset: ?>>
          %subview_9 = memref.subview %alloc_3[%arg2, %arg1] [%3, %2] [1, 1] : memref<16x16xf64> to memref<?x?xf64, strided<[16, 1], offset: ?>>
          %cast = memref.cast %subview_7 : memref<?x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
          %cast_10 = memref.cast %subview_8 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
          %cast_11 = memref.cast %subview_9 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
          func.call @linalg_matmul_viewsxs_viewsxs_viewsxs(%cast, %cast_10, %cast_11, %c8_i32, %c6_i32) : (memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) -> ()
        }
      }
    }
  }
  "ta.print"(%0) : (tensor<16x16xf64>) -> ()
  memref.dealloc %alloc_4 : memref<16x16x16x16xf64>
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %c16 = arith.constant 16 : index
  %c6_i32 = arith.constant 6 : i32
  %c8_i32 = arith.constant 8 : i32
  %c8 = arith.constant 8 : index
  %c6 = arith.constant 6 : index
  %c3072 = arith.constant 3072 : index
  %c4096 = arith.constant 4096 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x16x16xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<16x16x16x16xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x16xf64>)
  %0 = bufferization.to_tensor %alloc_3 restrict writable : memref<16x16xf64>
  %alloc_4 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  linalg.transpose ins(%alloc : memref<16x16x16x16xf64>) outs(%alloc_4 : memref<16x16x16x16xf64>) permutation = [0, 2, 3, 1] 
  %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x16x16x16xf64> into memref<16x4096xf64>
  %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<16x16x16x16xf64> into memref<4096x16xf64>
  scf.for %arg0 = %c0 to %c4096 step %c3072 {
    %2 = affine.min affine_map<(d0) -> (-d0 + 4096, 3072)>(%arg0)
    %subview = memref.subview %collapse_shape[0, %arg0] [16, %2] [1, 1] : memref<16x4096xf64> to memref<16x?xf64, strided<[4096, 1], offset: ?>>
    %subview_6 = memref.subview %collapse_shape_5[%arg0, 0] [%2, 16] [1, 1] : memref<4096x16xf64> to memref<?x16xf64, strided<[16, 1], offset: ?>>
    scf.for %arg1 = %c0 to %c16 step %c6 {
      %3 = affine.min affine_map<(d0) -> (-d0 + 16, 6)>(%arg1)
      scf.for %arg2 = %c0 to %c16 step %c8 {
        %4 = affine.min affine_map<(d0) -> (-d0 + 16, 8)>(%arg2)
        scf.for %arg3 = %c0 to %2 step %c3072 {
          %5 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg3)[%2]
          %subview_7 = memref.subview %subview[%arg2, %arg3] [%4, %5] [1, 1] : memref<16x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
          %subview_8 = memref.subview %subview_6[%arg3, %arg1] [%5, %3] [1, 1] : memref<?x16xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[16, 1], offset: ?>>
          %subview_9 = memref.subview %alloc_3[%arg2, %arg1] [%4, %3] [1, 1] : memref<16x16xf64> to memref<?x?xf64, strided<[16, 1], offset: ?>>
          %cast_10 = memref.cast %subview_7 : memref<?x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
          %cast_11 = memref.cast %subview_8 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
          %cast_12 = memref.cast %subview_9 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
          func.call @linalg_matmul_viewsxs_viewsxs_viewsxs(%cast_10, %cast_11, %cast_12, %c8_i32, %c6_i32) : (memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) -> ()
        }
      }
    }
  }
  %1 = bufferization.to_memref %0 : memref<16x16xf64>
  %cast = memref.cast %1 : memref<16x16xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
  memref.dealloc %alloc_4 : memref<16x16x16x16xf64>
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
#map = affine_map<(d0) -> (-d0 + 4096, 3072)>
#map1 = affine_map<(d0) -> (-d0 + 16, 6)>
#map2 = affine_map<(d0) -> (-d0 + 16, 8)>
#map3 = affine_map<(d0)[s0] -> (-d0 + s0, 3072)>
module {
  func.func @main() {
    %c16 = arith.constant 16 : index
    %c6_i32 = arith.constant 6 : i32
    %c8_i32 = arith.constant 8 : i32
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x16x16xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<16x16x16x16xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x16xf64>)
    %alloc_4 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    linalg.transpose ins(%alloc : memref<16x16x16x16xf64>) outs(%alloc_4 : memref<16x16x16x16xf64>) permutation = [0, 2, 3, 1] 
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x16x16x16xf64> into memref<16x4096xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<16x16x16x16xf64> into memref<4096x16xf64>
    scf.for %arg0 = %c0 to %c4096 step %c3072 {
      %0 = affine.min #map(%arg0)
      %subview = memref.subview %collapse_shape[0, %arg0] [16, %0] [1, 1] : memref<16x4096xf64> to memref<16x?xf64, strided<[4096, 1], offset: ?>>
      %subview_6 = memref.subview %collapse_shape_5[%arg0, 0] [%0, 16] [1, 1] : memref<4096x16xf64> to memref<?x16xf64, strided<[16, 1], offset: ?>>
      scf.for %arg1 = %c0 to %c16 step %c6 {
        %1 = affine.min #map1(%arg1)
        scf.for %arg2 = %c0 to %c16 step %c8 {
          %2 = affine.min #map2(%arg2)
          scf.for %arg3 = %c0 to %0 step %c3072 {
            %3 = affine.min #map3(%arg3)[%0]
            %subview_7 = memref.subview %subview[%arg2, %arg3] [%2, %3] [1, 1] : memref<16x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
            %subview_8 = memref.subview %subview_6[%arg3, %arg1] [%3, %1] [1, 1] : memref<?x16xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[16, 1], offset: ?>>
            %subview_9 = memref.subview %alloc_3[%arg2, %arg1] [%2, %1] [1, 1] : memref<16x16xf64> to memref<?x?xf64, strided<[16, 1], offset: ?>>
            %cast_10 = memref.cast %subview_7 : memref<?x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
            %cast_11 = memref.cast %subview_8 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
            %cast_12 = memref.cast %subview_9 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
            func.call @linalg_matmul_viewsxs_viewsxs_viewsxs(%cast_10, %cast_11, %cast_12, %c8_i32, %c6_i32) : (memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) -> ()
          }
        }
      }
    }
    %cast = memref.cast %alloc_3 : memref<16x16xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    memref.dealloc %alloc_4 : memref<16x16x16x16xf64>
    return
  }
  func.func private @getTime() -> f64
  func.func private @linalg_matmul_viewsxs_viewsxs_viewsxs(memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) attributes {llvm.emit_c_interface}
  func.func private @print_flops(f64)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After CSE (cse) //----- //
#map = affine_map<(d0) -> (-d0 + 4096, 3072)>
#map1 = affine_map<(d0) -> (-d0 + 16, 6)>
#map2 = affine_map<(d0) -> (-d0 + 16, 8)>
#map3 = affine_map<(d0)[s0] -> (-d0 + s0, 3072)>
module {
  func.func @main() {
    %c16 = arith.constant 16 : index
    %c6_i32 = arith.constant 6 : i32
    %c8_i32 = arith.constant 8 : i32
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x16x16xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<16x16x16x16xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x16xf64>)
    %alloc_4 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    linalg.transpose ins(%alloc : memref<16x16x16x16xf64>) outs(%alloc_4 : memref<16x16x16x16xf64>) permutation = [0, 2, 3, 1] 
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x16x16x16xf64> into memref<16x4096xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<16x16x16x16xf64> into memref<4096x16xf64>
    scf.for %arg0 = %c0 to %c4096 step %c3072 {
      %0 = affine.min #map(%arg0)
      %subview = memref.subview %collapse_shape[0, %arg0] [16, %0] [1, 1] : memref<16x4096xf64> to memref<16x?xf64, strided<[4096, 1], offset: ?>>
      %subview_6 = memref.subview %collapse_shape_5[%arg0, 0] [%0, 16] [1, 1] : memref<4096x16xf64> to memref<?x16xf64, strided<[16, 1], offset: ?>>
      scf.for %arg1 = %c0 to %c16 step %c6 {
        %1 = affine.min #map1(%arg1)
        scf.for %arg2 = %c0 to %c16 step %c8 {
          %2 = affine.min #map2(%arg2)
          scf.for %arg3 = %c0 to %0 step %c3072 {
            %3 = affine.min #map3(%arg3)[%0]
            %subview_7 = memref.subview %subview[%arg2, %arg3] [%2, %3] [1, 1] : memref<16x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
            %subview_8 = memref.subview %subview_6[%arg3, %arg1] [%3, %1] [1, 1] : memref<?x16xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[16, 1], offset: ?>>
            %subview_9 = memref.subview %alloc_3[%arg2, %arg1] [%2, %1] [1, 1] : memref<16x16xf64> to memref<?x?xf64, strided<[16, 1], offset: ?>>
            %cast_10 = memref.cast %subview_7 : memref<?x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
            %cast_11 = memref.cast %subview_8 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
            %cast_12 = memref.cast %subview_9 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
            func.call @linalg_matmul_viewsxs_viewsxs_viewsxs(%cast_10, %cast_11, %cast_12, %c8_i32, %c6_i32) : (memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) -> ()
          }
        }
      }
    }
    %cast = memref.cast %alloc_3 : memref<16x16xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    memref.dealloc %alloc_4 : memref<16x16x16x16xf64>
    return
  }
  func.func private @getTime() -> f64
  func.func private @linalg_matmul_viewsxs_viewsxs_viewsxs(memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) attributes {llvm.emit_c_interface}
  func.func private @print_flops(f64)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
#map = affine_map<(d0) -> (-d0 + 4096, 3072)>
#map1 = affine_map<(d0) -> (-d0 + 16, 6)>
#map2 = affine_map<(d0) -> (-d0 + 16, 8)>
#map3 = affine_map<(d0)[s0] -> (-d0 + s0, 3072)>
module {
  func.func @main() {
    %c16 = arith.constant 16 : index
    %c6_i32 = arith.constant 6 : i32
    %c8_i32 = arith.constant 8 : i32
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x16x16xf64>)
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<16x16x16x16xf64>)
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x16xf64>)
    %alloc_4 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    linalg.transpose ins(%alloc : memref<16x16x16x16xf64>) outs(%alloc_4 : memref<16x16x16x16xf64>) permutation = [0, 2, 3, 1] 
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x16x16x16xf64> into memref<16x4096xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<16x16x16x16xf64> into memref<4096x16xf64>
    scf.for %arg0 = %c0 to %c4096 step %c3072 {
      %0 = affine.min #map(%arg0)
      %subview = memref.subview %collapse_shape[0, %arg0] [16, %0] [1, 1] : memref<16x4096xf64> to memref<16x?xf64, strided<[4096, 1], offset: ?>>
      %subview_6 = memref.subview %collapse_shape_5[%arg0, 0] [%0, 16] [1, 1] : memref<4096x16xf64> to memref<?x16xf64, strided<[16, 1], offset: ?>>
      scf.for %arg1 = %c0 to %c16 step %c6 {
        %1 = affine.min #map1(%arg1)
        scf.for %arg2 = %c0 to %c16 step %c8 {
          %2 = affine.min #map2(%arg2)
          scf.for %arg3 = %c0 to %0 step %c3072 {
            %3 = affine.min #map3(%arg3)[%0]
            %subview_7 = memref.subview %subview[%arg2, %arg3] [%2, %3] [1, 1] : memref<16x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
            %subview_8 = memref.subview %subview_6[%arg3, %arg1] [%3, %1] [1, 1] : memref<?x16xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[16, 1], offset: ?>>
            %subview_9 = memref.subview %alloc_3[%arg2, %arg1] [%2, %1] [1, 1] : memref<16x16xf64> to memref<?x?xf64, strided<[16, 1], offset: ?>>
            %cast_10 = memref.cast %subview_7 : memref<?x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
            %cast_11 = memref.cast %subview_8 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
            %cast_12 = memref.cast %subview_9 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
            func.call @linalg_matmul_viewsxs_viewsxs_viewsxs(%cast_10, %cast_11, %cast_12, %c8_i32, %c6_i32) : (memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) -> ()
          }
        }
      }
    }
    %cast = memref.cast %alloc_3 : memref<16x16xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    memref.dealloc %alloc_4 : memref<16x16x16x16xf64>
    return
  }
  func.func private @getTime() -> f64
  func.func private @linalg_matmul_viewsxs_viewsxs_viewsxs(memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) attributes {llvm.emit_c_interface}
  func.func private @print_flops(f64)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @print_flops(f64)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @getTime() -> f64

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @linalg_matmul_viewsxs_viewsxs_viewsxs(memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) attributes {llvm.emit_c_interface}

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
func.func private @getTime() -> f64

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
func.func private @print_flops(f64)

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
func.func private @linalg_matmul_viewsxs_viewsxs_viewsxs(memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) attributes {llvm.emit_c_interface}

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func @main() {
  %c16 = arith.constant 16 : index
  %c6_i32 = arith.constant 6 : i32
  %c8_i32 = arith.constant 8 : i32
  %c8 = arith.constant 8 : index
  %c6 = arith.constant 6 : index
  %c3072 = arith.constant 3072 : index
  %c4096 = arith.constant 4096 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x16x16xf64>)
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<16x16x16x16xf64>)
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x16xf64>)
  %alloc_4 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  linalg.transpose ins(%alloc : memref<16x16x16x16xf64>) outs(%alloc_4 : memref<16x16x16x16xf64>) permutation = [0, 2, 3, 1] 
  %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x16x16x16xf64> into memref<16x4096xf64>
  %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<16x16x16x16xf64> into memref<4096x16xf64>
  scf.for %arg0 = %c0 to %c4096 step %c3072 {
    %0 = affine.min affine_map<(d0) -> (-d0 + 4096, 3072)>(%arg0)
    %subview = memref.subview %collapse_shape[0, %arg0] [16, %0] [1, 1] : memref<16x4096xf64> to memref<16x?xf64, strided<[4096, 1], offset: ?>>
    %subview_6 = memref.subview %collapse_shape_5[%arg0, 0] [%0, 16] [1, 1] : memref<4096x16xf64> to memref<?x16xf64, strided<[16, 1], offset: ?>>
    scf.for %arg1 = %c0 to %c16 step %c6 {
      %1 = affine.min affine_map<(d0) -> (-d0 + 16, 6)>(%arg1)
      scf.for %arg2 = %c0 to %c16 step %c8 {
        %2 = affine.min affine_map<(d0) -> (-d0 + 16, 8)>(%arg2)
        scf.for %arg3 = %c0 to %0 step %c3072 {
          %3 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg3)[%0]
          %subview_7 = memref.subview %subview[%arg2, %arg3] [%2, %3] [1, 1] : memref<16x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
          %subview_8 = memref.subview %subview_6[%arg3, %arg1] [%3, %1] [1, 1] : memref<?x16xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[16, 1], offset: ?>>
          %subview_9 = memref.subview %alloc_3[%arg2, %arg1] [%2, %1] [1, 1] : memref<16x16xf64> to memref<?x?xf64, strided<[16, 1], offset: ?>>
          %cast_10 = memref.cast %subview_7 : memref<?x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
          %cast_11 = memref.cast %subview_8 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
          %cast_12 = memref.cast %subview_9 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
          func.call @linalg_matmul_viewsxs_viewsxs_viewsxs(%cast_10, %cast_11, %cast_12, %c8_i32, %c6_i32) : (memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) -> ()
        }
      }
    }
  }
  %cast = memref.cast %alloc_3 : memref<16x16xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
  memref.dealloc %alloc_4 : memref<16x16x16x16xf64>
  return
}

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c16 = arith.constant 16 : index
  %c6_i32 = arith.constant 6 : i32
  %c8_i32 = arith.constant 8 : i32
  %c8 = arith.constant 8 : index
  %c6 = arith.constant 6 : index
  %c3072 = arith.constant 3072 : index
  %c4096 = arith.constant 4096 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  scf.for %arg0 = %c0 to %c16 step %c1 {
    scf.for %arg1 = %c0 to %c16 step %c1 {
      scf.for %arg2 = %c0 to %c16 step %c1 {
        scf.for %arg3 = %c0 to %c16 step %c1 {
          memref.store %cst_1, %alloc[%arg0, %arg1, %arg2, %arg3] : memref<16x16x16x16xf64>
        }
      }
    }
  }
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  scf.for %arg0 = %c0 to %c16 step %c1 {
    scf.for %arg1 = %c0 to %c16 step %c1 {
      scf.for %arg2 = %c0 to %c16 step %c1 {
        scf.for %arg3 = %c0 to %c16 step %c1 {
          memref.store %cst_0, %alloc_2[%arg0, %arg1, %arg2, %arg3] : memref<16x16x16x16xf64>
        }
      }
    }
  }
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  scf.for %arg0 = %c0 to %c16 step %c1 {
    scf.for %arg1 = %c0 to %c16 step %c1 {
      memref.store %cst, %alloc_3[%arg0, %arg1] : memref<16x16xf64>
    }
  }
  %alloc_4 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  scf.for %arg0 = %c0 to %c16 step %c1 {
    scf.for %arg1 = %c0 to %c16 step %c1 {
      scf.for %arg2 = %c0 to %c16 step %c1 {
        scf.for %arg3 = %c0 to %c16 step %c1 {
          %0 = memref.load %alloc[%arg0, %arg1, %arg2, %arg3] : memref<16x16x16x16xf64>
          memref.store %0, %alloc_4[%arg0, %arg2, %arg3, %arg1] : memref<16x16x16x16xf64>
        }
      }
    }
  }
  %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x16x16x16xf64> into memref<16x4096xf64>
  %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<16x16x16x16xf64> into memref<4096x16xf64>
  scf.for %arg0 = %c0 to %c4096 step %c3072 {
    %0 = affine.min affine_map<(d0) -> (-d0 + 4096, 3072)>(%arg0)
    %subview = memref.subview %collapse_shape[0, %arg0] [16, %0] [1, 1] : memref<16x4096xf64> to memref<16x?xf64, strided<[4096, 1], offset: ?>>
    %subview_6 = memref.subview %collapse_shape_5[%arg0, 0] [%0, 16] [1, 1] : memref<4096x16xf64> to memref<?x16xf64, strided<[16, 1], offset: ?>>
    scf.for %arg1 = %c0 to %c16 step %c6 {
      %1 = affine.min affine_map<(d0) -> (-d0 + 16, 6)>(%arg1)
      scf.for %arg2 = %c0 to %c16 step %c8 {
        %2 = affine.min affine_map<(d0) -> (-d0 + 16, 8)>(%arg2)
        scf.for %arg3 = %c0 to %0 step %c3072 {
          %3 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg3)[%0]
          %subview_7 = memref.subview %subview[%arg2, %arg3] [%2, %3] [1, 1] : memref<16x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
          %subview_8 = memref.subview %subview_6[%arg3, %arg1] [%3, %1] [1, 1] : memref<?x16xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[16, 1], offset: ?>>
          %subview_9 = memref.subview %alloc_3[%arg2, %arg1] [%2, %1] [1, 1] : memref<16x16xf64> to memref<?x?xf64, strided<[16, 1], offset: ?>>
          %cast_10 = memref.cast %subview_7 : memref<?x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
          %cast_11 = memref.cast %subview_8 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
          %cast_12 = memref.cast %subview_9 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
          func.call @linalg_matmul_viewsxs_viewsxs_viewsxs(%cast_10, %cast_11, %cast_12, %c8_i32, %c6_i32) : (memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) -> ()
        }
      }
    }
  }
  %cast = memref.cast %alloc_3 : memref<16x16xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
  memref.dealloc %alloc_4 : memref<16x16x16x16xf64>
  return
}

// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c16 = arith.constant 16 : index
    %c6_i32 = arith.constant 6 : i32
    %c8_i32 = arith.constant 8 : i32
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c16 step %c1 {
        scf.for %arg2 = %c0 to %c16 step %c1 {
          scf.for %arg3 = %c0 to %c16 step %c1 {
            memref.store %cst_1, %alloc[%arg0, %arg1, %arg2, %arg3] : memref<16x16x16x16xf64>
          }
        }
      }
    }
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c16 step %c1 {
        scf.for %arg2 = %c0 to %c16 step %c1 {
          scf.for %arg3 = %c0 to %c16 step %c1 {
            memref.store %cst_0, %alloc_2[%arg0, %arg1, %arg2, %arg3] : memref<16x16x16x16xf64>
          }
        }
      }
    }
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c16 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<16x16xf64>
      }
    }
    %alloc_4 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    scf.for %arg0 = %c0 to %c16 step %c1 {
      scf.for %arg1 = %c0 to %c16 step %c1 {
        scf.for %arg2 = %c0 to %c16 step %c1 {
          scf.for %arg3 = %c0 to %c16 step %c1 {
            %0 = memref.load %alloc[%arg0, %arg1, %arg2, %arg3] : memref<16x16x16x16xf64>
            memref.store %0, %alloc_4[%arg0, %arg2, %arg3, %arg1] : memref<16x16x16x16xf64>
          }
        }
      }
    }
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x16x16x16xf64> into memref<16x4096xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<16x16x16x16xf64> into memref<4096x16xf64>
    scf.for %arg0 = %c0 to %c4096 step %c3072 {
      %c-1 = arith.constant -1 : index
      %0 = arith.muli %arg0, %c-1 : index
      %c4096_6 = arith.constant 4096 : index
      %1 = arith.addi %0, %c4096_6 : index
      %c3072_7 = arith.constant 3072 : index
      %2 = arith.cmpi slt, %1, %c3072_7 : index
      %3 = arith.select %2, %1, %c3072_7 : index
      %subview = memref.subview %collapse_shape[0, %arg0] [16, %3] [1, 1] : memref<16x4096xf64> to memref<16x?xf64, strided<[4096, 1], offset: ?>>
      %subview_8 = memref.subview %collapse_shape_5[%arg0, 0] [%3, 16] [1, 1] : memref<4096x16xf64> to memref<?x16xf64, strided<[16, 1], offset: ?>>
      scf.for %arg1 = %c0 to %c16 step %c6 {
        %c-1_9 = arith.constant -1 : index
        %4 = arith.muli %arg1, %c-1_9 : index
        %c16_10 = arith.constant 16 : index
        %5 = arith.addi %4, %c16_10 : index
        %c6_11 = arith.constant 6 : index
        %6 = arith.cmpi slt, %5, %c6_11 : index
        %7 = arith.select %6, %5, %c6_11 : index
        scf.for %arg2 = %c0 to %c16 step %c8 {
          %c-1_12 = arith.constant -1 : index
          %8 = arith.muli %arg2, %c-1_12 : index
          %c16_13 = arith.constant 16 : index
          %9 = arith.addi %8, %c16_13 : index
          %c8_14 = arith.constant 8 : index
          %10 = arith.cmpi slt, %9, %c8_14 : index
          %11 = arith.select %10, %9, %c8_14 : index
          scf.for %arg3 = %c0 to %3 step %c3072 {
            %c-1_15 = arith.constant -1 : index
            %12 = arith.muli %arg3, %c-1_15 : index
            %13 = arith.addi %12, %3 : index
            %c3072_16 = arith.constant 3072 : index
            %14 = arith.cmpi slt, %13, %c3072_16 : index
            %15 = arith.select %14, %13, %c3072_16 : index
            %subview_17 = memref.subview %subview[%arg2, %arg3] [%11, %15] [1, 1] : memref<16x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
            %subview_18 = memref.subview %subview_8[%arg3, %arg1] [%15, %7] [1, 1] : memref<?x16xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[16, 1], offset: ?>>
            %subview_19 = memref.subview %alloc_3[%arg2, %arg1] [%11, %7] [1, 1] : memref<16x16xf64> to memref<?x?xf64, strided<[16, 1], offset: ?>>
            %cast_20 = memref.cast %subview_17 : memref<?x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
            %cast_21 = memref.cast %subview_18 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
            %cast_22 = memref.cast %subview_19 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
            func.call @linalg_matmul_viewsxs_viewsxs_viewsxs(%cast_20, %cast_21, %cast_22, %c8_i32, %c6_i32) : (memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) -> ()
          }
        }
      }
    }
    %cast = memref.cast %alloc_3 : memref<16x16xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    memref.dealloc %alloc_4 : memref<16x16x16x16xf64>
    return
  }
  func.func private @getTime() -> f64
  func.func private @linalg_matmul_viewsxs_viewsxs_viewsxs(memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) attributes {llvm.emit_c_interface}
  func.func private @print_flops(f64)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After SCFToControlFlow (convert-scf-to-cf) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c16 = arith.constant 16 : index
    %c6_i32 = arith.constant 6 : i32
    %c8_i32 = arith.constant 8 : i32
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
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
    %5 = arith.cmpi slt, %4, %c16 : index
    cf.cond_br %5, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    cf.br ^bb7(%c0 : index)
  ^bb7(%6: index):  // 2 preds: ^bb6, ^bb8
    %7 = arith.cmpi slt, %6, %c16 : index
    cf.cond_br %7, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %cst_1, %alloc[%0, %2, %4, %6] : memref<16x16x16x16xf64>
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
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%12: index):  // 2 preds: ^bb12, ^bb23
    %13 = arith.cmpi slt, %12, %c16 : index
    cf.cond_br %13, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    cf.br ^bb15(%c0 : index)
  ^bb15(%14: index):  // 2 preds: ^bb14, ^bb22
    %15 = arith.cmpi slt, %14, %c16 : index
    cf.cond_br %15, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    cf.br ^bb17(%c0 : index)
  ^bb17(%16: index):  // 2 preds: ^bb16, ^bb21
    %17 = arith.cmpi slt, %16, %c16 : index
    cf.cond_br %17, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    cf.br ^bb19(%c0 : index)
  ^bb19(%18: index):  // 2 preds: ^bb18, ^bb20
    %19 = arith.cmpi slt, %18, %c16 : index
    cf.cond_br %19, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %cst_0, %alloc_2[%12, %14, %16, %18] : memref<16x16x16x16xf64>
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
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%24: index):  // 2 preds: ^bb24, ^bb29
    %25 = arith.cmpi slt, %24, %c16 : index
    cf.cond_br %25, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    cf.br ^bb27(%c0 : index)
  ^bb27(%26: index):  // 2 preds: ^bb26, ^bb28
    %27 = arith.cmpi slt, %26, %c16 : index
    cf.cond_br %27, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    memref.store %cst, %alloc_3[%24, %26] : memref<16x16xf64>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb27(%28 : index)
  ^bb29:  // pred: ^bb27
    %29 = arith.addi %24, %c1 : index
    cf.br ^bb25(%29 : index)
  ^bb30:  // pred: ^bb25
    %alloc_4 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    cf.br ^bb31(%c0 : index)
  ^bb31(%30: index):  // 2 preds: ^bb30, ^bb41
    %31 = arith.cmpi slt, %30, %c16 : index
    cf.cond_br %31, ^bb32, ^bb42
  ^bb32:  // pred: ^bb31
    cf.br ^bb33(%c0 : index)
  ^bb33(%32: index):  // 2 preds: ^bb32, ^bb40
    %33 = arith.cmpi slt, %32, %c16 : index
    cf.cond_br %33, ^bb34, ^bb41
  ^bb34:  // pred: ^bb33
    cf.br ^bb35(%c0 : index)
  ^bb35(%34: index):  // 2 preds: ^bb34, ^bb39
    %35 = arith.cmpi slt, %34, %c16 : index
    cf.cond_br %35, ^bb36, ^bb40
  ^bb36:  // pred: ^bb35
    cf.br ^bb37(%c0 : index)
  ^bb37(%36: index):  // 2 preds: ^bb36, ^bb38
    %37 = arith.cmpi slt, %36, %c16 : index
    cf.cond_br %37, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %38 = memref.load %alloc[%30, %32, %34, %36] : memref<16x16x16x16xf64>
    memref.store %38, %alloc_4[%30, %34, %36, %32] : memref<16x16x16x16xf64>
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
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x16x16x16xf64> into memref<16x4096xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<16x16x16x16xf64> into memref<4096x16xf64>
    cf.br ^bb43(%c0 : index)
  ^bb43(%43: index):  // 2 preds: ^bb42, ^bb53
    %44 = arith.cmpi slt, %43, %c4096 : index
    cf.cond_br %44, ^bb44, ^bb54
  ^bb44:  // pred: ^bb43
    %c-1 = arith.constant -1 : index
    %45 = arith.muli %43, %c-1 : index
    %c4096_6 = arith.constant 4096 : index
    %46 = arith.addi %45, %c4096_6 : index
    %c3072_7 = arith.constant 3072 : index
    %47 = arith.cmpi slt, %46, %c3072_7 : index
    %48 = arith.select %47, %46, %c3072_7 : index
    %subview = memref.subview %collapse_shape[0, %43] [16, %48] [1, 1] : memref<16x4096xf64> to memref<16x?xf64, strided<[4096, 1], offset: ?>>
    %subview_8 = memref.subview %collapse_shape_5[%43, 0] [%48, 16] [1, 1] : memref<4096x16xf64> to memref<?x16xf64, strided<[16, 1], offset: ?>>
    cf.br ^bb45(%c0 : index)
  ^bb45(%49: index):  // 2 preds: ^bb44, ^bb52
    %50 = arith.cmpi slt, %49, %c16 : index
    cf.cond_br %50, ^bb46, ^bb53
  ^bb46:  // pred: ^bb45
    %c-1_9 = arith.constant -1 : index
    %51 = arith.muli %49, %c-1_9 : index
    %c16_10 = arith.constant 16 : index
    %52 = arith.addi %51, %c16_10 : index
    %c6_11 = arith.constant 6 : index
    %53 = arith.cmpi slt, %52, %c6_11 : index
    %54 = arith.select %53, %52, %c6_11 : index
    cf.br ^bb47(%c0 : index)
  ^bb47(%55: index):  // 2 preds: ^bb46, ^bb51
    %56 = arith.cmpi slt, %55, %c16 : index
    cf.cond_br %56, ^bb48, ^bb52
  ^bb48:  // pred: ^bb47
    %c-1_12 = arith.constant -1 : index
    %57 = arith.muli %55, %c-1_12 : index
    %c16_13 = arith.constant 16 : index
    %58 = arith.addi %57, %c16_13 : index
    %c8_14 = arith.constant 8 : index
    %59 = arith.cmpi slt, %58, %c8_14 : index
    %60 = arith.select %59, %58, %c8_14 : index
    cf.br ^bb49(%c0 : index)
  ^bb49(%61: index):  // 2 preds: ^bb48, ^bb50
    %62 = arith.cmpi slt, %61, %48 : index
    cf.cond_br %62, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %c-1_15 = arith.constant -1 : index
    %63 = arith.muli %61, %c-1_15 : index
    %64 = arith.addi %63, %48 : index
    %c3072_16 = arith.constant 3072 : index
    %65 = arith.cmpi slt, %64, %c3072_16 : index
    %66 = arith.select %65, %64, %c3072_16 : index
    %subview_17 = memref.subview %subview[%55, %61] [%60, %66] [1, 1] : memref<16x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
    %subview_18 = memref.subview %subview_8[%61, %49] [%66, %54] [1, 1] : memref<?x16xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[16, 1], offset: ?>>
    %subview_19 = memref.subview %alloc_3[%55, %49] [%60, %54] [1, 1] : memref<16x16xf64> to memref<?x?xf64, strided<[16, 1], offset: ?>>
    %cast = memref.cast %subview_17 : memref<?x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    %cast_20 = memref.cast %subview_18 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    %cast_21 = memref.cast %subview_19 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    call @linalg_matmul_viewsxs_viewsxs_viewsxs(%cast, %cast_20, %cast_21, %c8_i32, %c6_i32) : (memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) -> ()
    %67 = arith.addi %61, %c3072 : index
    cf.br ^bb49(%67 : index)
  ^bb51:  // pred: ^bb49
    %68 = arith.addi %55, %c8 : index
    cf.br ^bb47(%68 : index)
  ^bb52:  // pred: ^bb47
    %69 = arith.addi %49, %c6 : index
    cf.br ^bb45(%69 : index)
  ^bb53:  // pred: ^bb45
    %70 = arith.addi %43, %c3072 : index
    cf.br ^bb43(%70 : index)
  ^bb54:  // pred: ^bb43
    %cast_22 = memref.cast %alloc_3 : memref<16x16xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_22) : (memref<*xf64>) -> ()
    memref.dealloc %alloc_4 : memref<16x16x16x16xf64>
    return
  }
  func.func private @getTime() -> f64
  func.func private @linalg_matmul_viewsxs_viewsxs_viewsxs(memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) attributes {llvm.emit_c_interface}
  func.func private @print_flops(f64)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c16 = arith.constant 16 : index
    %c6_i32 = arith.constant 6 : i32
    %c8_i32 = arith.constant 8 : i32
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
    %1 = arith.cmpi slt, %0, %c16 : index
    cf.cond_br %1, ^bb2(%c0 : index), ^bb9
  ^bb2(%2: index):  // 2 preds: ^bb1, ^bb7
    %3 = arith.cmpi slt, %2, %c16 : index
    cf.cond_br %3, ^bb3(%c0 : index), ^bb8
  ^bb3(%4: index):  // 2 preds: ^bb2, ^bb6
    %5 = arith.cmpi slt, %4, %c16 : index
    cf.cond_br %5, ^bb4(%c0 : index), ^bb7
  ^bb4(%6: index):  // 2 preds: ^bb3, ^bb5
    %7 = arith.cmpi slt, %6, %c16 : index
    cf.cond_br %7, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %cst_1, %alloc[%0, %2, %4, %6] : memref<16x16x16x16xf64>
    %8 = arith.addi %6, %c1 : index
    cf.br ^bb4(%8 : index)
  ^bb6:  // pred: ^bb4
    %9 = arith.addi %4, %c1 : index
    cf.br ^bb3(%9 : index)
  ^bb7:  // pred: ^bb3
    %10 = arith.addi %2, %c1 : index
    cf.br ^bb2(%10 : index)
  ^bb8:  // pred: ^bb2
    %11 = arith.addi %0, %c1 : index
    cf.br ^bb1(%11 : index)
  ^bb9:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    cf.br ^bb10(%c0 : index)
  ^bb10(%12: index):  // 2 preds: ^bb9, ^bb17
    %13 = arith.cmpi slt, %12, %c16 : index
    cf.cond_br %13, ^bb11(%c0 : index), ^bb18
  ^bb11(%14: index):  // 2 preds: ^bb10, ^bb16
    %15 = arith.cmpi slt, %14, %c16 : index
    cf.cond_br %15, ^bb12(%c0 : index), ^bb17
  ^bb12(%16: index):  // 2 preds: ^bb11, ^bb15
    %17 = arith.cmpi slt, %16, %c16 : index
    cf.cond_br %17, ^bb13(%c0 : index), ^bb16
  ^bb13(%18: index):  // 2 preds: ^bb12, ^bb14
    %19 = arith.cmpi slt, %18, %c16 : index
    cf.cond_br %19, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %cst_0, %alloc_2[%12, %14, %16, %18] : memref<16x16x16x16xf64>
    %20 = arith.addi %18, %c1 : index
    cf.br ^bb13(%20 : index)
  ^bb15:  // pred: ^bb13
    %21 = arith.addi %16, %c1 : index
    cf.br ^bb12(%21 : index)
  ^bb16:  // pred: ^bb12
    %22 = arith.addi %14, %c1 : index
    cf.br ^bb11(%22 : index)
  ^bb17:  // pred: ^bb11
    %23 = arith.addi %12, %c1 : index
    cf.br ^bb10(%23 : index)
  ^bb18:  // pred: ^bb10
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%24: index):  // 2 preds: ^bb18, ^bb22
    %25 = arith.cmpi slt, %24, %c16 : index
    cf.cond_br %25, ^bb20(%c0 : index), ^bb23
  ^bb20(%26: index):  // 2 preds: ^bb19, ^bb21
    %27 = arith.cmpi slt, %26, %c16 : index
    cf.cond_br %27, ^bb21, ^bb22
  ^bb21:  // pred: ^bb20
    memref.store %cst, %alloc_3[%24, %26] : memref<16x16xf64>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb20(%28 : index)
  ^bb22:  // pred: ^bb20
    %29 = arith.addi %24, %c1 : index
    cf.br ^bb19(%29 : index)
  ^bb23:  // pred: ^bb19
    %alloc_4 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    cf.br ^bb24(%c0 : index)
  ^bb24(%30: index):  // 2 preds: ^bb23, ^bb31
    %31 = arith.cmpi slt, %30, %c16 : index
    cf.cond_br %31, ^bb25(%c0 : index), ^bb32
  ^bb25(%32: index):  // 2 preds: ^bb24, ^bb30
    %33 = arith.cmpi slt, %32, %c16 : index
    cf.cond_br %33, ^bb26(%c0 : index), ^bb31
  ^bb26(%34: index):  // 2 preds: ^bb25, ^bb29
    %35 = arith.cmpi slt, %34, %c16 : index
    cf.cond_br %35, ^bb27(%c0 : index), ^bb30
  ^bb27(%36: index):  // 2 preds: ^bb26, ^bb28
    %37 = arith.cmpi slt, %36, %c16 : index
    cf.cond_br %37, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %38 = memref.load %alloc[%30, %32, %34, %36] : memref<16x16x16x16xf64>
    memref.store %38, %alloc_4[%30, %34, %36, %32] : memref<16x16x16x16xf64>
    %39 = arith.addi %36, %c1 : index
    cf.br ^bb27(%39 : index)
  ^bb29:  // pred: ^bb27
    %40 = arith.addi %34, %c1 : index
    cf.br ^bb26(%40 : index)
  ^bb30:  // pred: ^bb26
    %41 = arith.addi %32, %c1 : index
    cf.br ^bb25(%41 : index)
  ^bb31:  // pred: ^bb25
    %42 = arith.addi %30, %c1 : index
    cf.br ^bb24(%42 : index)
  ^bb32:  // pred: ^bb24
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x16x16x16xf64> into memref<16x4096xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<16x16x16x16xf64> into memref<4096x16xf64>
    cf.br ^bb33(%c0 : index)
  ^bb33(%43: index):  // 2 preds: ^bb32, ^bb43
    %44 = arith.cmpi slt, %43, %c4096 : index
    cf.cond_br %44, ^bb34, ^bb44
  ^bb34:  // pred: ^bb33
    %45 = arith.subi %c4096, %43 : index
    %46 = arith.cmpi slt, %45, %c3072 : index
    %47 = arith.select %46, %45, %c3072 : index
    %subview = memref.subview %collapse_shape[0, %43] [16, %47] [1, 1] : memref<16x4096xf64> to memref<16x?xf64, strided<[4096, 1], offset: ?>>
    %subview_6 = memref.subview %collapse_shape_5[%43, 0] [%47, 16] [1, 1] : memref<4096x16xf64> to memref<?x16xf64, strided<[16, 1], offset: ?>>
    cf.br ^bb35(%c0 : index)
  ^bb35(%48: index):  // 2 preds: ^bb34, ^bb42
    %49 = arith.cmpi slt, %48, %c16 : index
    cf.cond_br %49, ^bb36, ^bb43
  ^bb36:  // pred: ^bb35
    %50 = arith.subi %c16, %48 : index
    %51 = arith.cmpi slt, %50, %c6 : index
    %52 = arith.select %51, %50, %c6 : index
    cf.br ^bb37(%c0 : index)
  ^bb37(%53: index):  // 2 preds: ^bb36, ^bb41
    %54 = arith.cmpi slt, %53, %c16 : index
    cf.cond_br %54, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    %55 = arith.subi %c16, %53 : index
    %56 = arith.cmpi slt, %55, %c8 : index
    %57 = arith.select %56, %55, %c8 : index
    cf.br ^bb39(%c0 : index)
  ^bb39(%58: index):  // 2 preds: ^bb38, ^bb40
    %59 = arith.cmpi slt, %58, %47 : index
    cf.cond_br %59, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %60 = arith.subi %47, %58 : index
    %61 = arith.cmpi slt, %60, %c3072 : index
    %62 = arith.select %61, %60, %c3072 : index
    %subview_7 = memref.subview %subview[%53, %58] [%57, %62] [1, 1] : memref<16x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
    %subview_8 = memref.subview %subview_6[%58, %48] [%62, %52] [1, 1] : memref<?x16xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[16, 1], offset: ?>>
    %subview_9 = memref.subview %alloc_3[%53, %48] [%57, %52] [1, 1] : memref<16x16xf64> to memref<?x?xf64, strided<[16, 1], offset: ?>>
    %cast = memref.cast %subview_7 : memref<?x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    %cast_10 = memref.cast %subview_8 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    %cast_11 = memref.cast %subview_9 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    call @linalg_matmul_viewsxs_viewsxs_viewsxs(%cast, %cast_10, %cast_11, %c8_i32, %c6_i32) : (memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) -> ()
    %63 = arith.addi %58, %c3072 : index
    cf.br ^bb39(%63 : index)
  ^bb41:  // pred: ^bb39
    %64 = arith.addi %53, %c8 : index
    cf.br ^bb37(%64 : index)
  ^bb42:  // pred: ^bb37
    %65 = arith.addi %48, %c6 : index
    cf.br ^bb35(%65 : index)
  ^bb43:  // pred: ^bb35
    %66 = arith.addi %43, %c3072 : index
    cf.br ^bb33(%66 : index)
  ^bb44:  // pred: ^bb33
    %cast_12 = memref.cast %alloc_3 : memref<16x16xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_12) : (memref<*xf64>) -> ()
    memref.dealloc %alloc_4 : memref<16x16x16x16xf64>
    return
  }
  func.func private @getTime() -> f64
  func.func private @linalg_matmul_viewsxs_viewsxs_viewsxs(memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) attributes {llvm.emit_c_interface}
  func.func private @print_flops(f64)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c16 = arith.constant 16 : index
    %c6_i32 = arith.constant 6 : i32
    %c8_i32 = arith.constant 8 : i32
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
    %1 = arith.cmpi slt, %0, %c16 : index
    cf.cond_br %1, ^bb2(%c0 : index), ^bb9
  ^bb2(%2: index):  // 2 preds: ^bb1, ^bb7
    %3 = arith.cmpi slt, %2, %c16 : index
    cf.cond_br %3, ^bb3(%c0 : index), ^bb8
  ^bb3(%4: index):  // 2 preds: ^bb2, ^bb6
    %5 = arith.cmpi slt, %4, %c16 : index
    cf.cond_br %5, ^bb4(%c0 : index), ^bb7
  ^bb4(%6: index):  // 2 preds: ^bb3, ^bb5
    %7 = arith.cmpi slt, %6, %c16 : index
    cf.cond_br %7, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %cst_1, %alloc[%0, %2, %4, %6] : memref<16x16x16x16xf64>
    %8 = arith.addi %6, %c1 : index
    cf.br ^bb4(%8 : index)
  ^bb6:  // pred: ^bb4
    %9 = arith.addi %4, %c1 : index
    cf.br ^bb3(%9 : index)
  ^bb7:  // pred: ^bb3
    %10 = arith.addi %2, %c1 : index
    cf.br ^bb2(%10 : index)
  ^bb8:  // pred: ^bb2
    %11 = arith.addi %0, %c1 : index
    cf.br ^bb1(%11 : index)
  ^bb9:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    cf.br ^bb10(%c0 : index)
  ^bb10(%12: index):  // 2 preds: ^bb9, ^bb17
    %13 = arith.cmpi slt, %12, %c16 : index
    cf.cond_br %13, ^bb11(%c0 : index), ^bb18
  ^bb11(%14: index):  // 2 preds: ^bb10, ^bb16
    %15 = arith.cmpi slt, %14, %c16 : index
    cf.cond_br %15, ^bb12(%c0 : index), ^bb17
  ^bb12(%16: index):  // 2 preds: ^bb11, ^bb15
    %17 = arith.cmpi slt, %16, %c16 : index
    cf.cond_br %17, ^bb13(%c0 : index), ^bb16
  ^bb13(%18: index):  // 2 preds: ^bb12, ^bb14
    %19 = arith.cmpi slt, %18, %c16 : index
    cf.cond_br %19, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %cst_0, %alloc_2[%12, %14, %16, %18] : memref<16x16x16x16xf64>
    %20 = arith.addi %18, %c1 : index
    cf.br ^bb13(%20 : index)
  ^bb15:  // pred: ^bb13
    %21 = arith.addi %16, %c1 : index
    cf.br ^bb12(%21 : index)
  ^bb16:  // pred: ^bb12
    %22 = arith.addi %14, %c1 : index
    cf.br ^bb11(%22 : index)
  ^bb17:  // pred: ^bb11
    %23 = arith.addi %12, %c1 : index
    cf.br ^bb10(%23 : index)
  ^bb18:  // pred: ^bb10
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%24: index):  // 2 preds: ^bb18, ^bb22
    %25 = arith.cmpi slt, %24, %c16 : index
    cf.cond_br %25, ^bb20(%c0 : index), ^bb23
  ^bb20(%26: index):  // 2 preds: ^bb19, ^bb21
    %27 = arith.cmpi slt, %26, %c16 : index
    cf.cond_br %27, ^bb21, ^bb22
  ^bb21:  // pred: ^bb20
    memref.store %cst, %alloc_3[%24, %26] : memref<16x16xf64>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb20(%28 : index)
  ^bb22:  // pred: ^bb20
    %29 = arith.addi %24, %c1 : index
    cf.br ^bb19(%29 : index)
  ^bb23:  // pred: ^bb19
    %alloc_4 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    cf.br ^bb24(%c0 : index)
  ^bb24(%30: index):  // 2 preds: ^bb23, ^bb31
    %31 = arith.cmpi slt, %30, %c16 : index
    cf.cond_br %31, ^bb25(%c0 : index), ^bb32
  ^bb25(%32: index):  // 2 preds: ^bb24, ^bb30
    %33 = arith.cmpi slt, %32, %c16 : index
    cf.cond_br %33, ^bb26(%c0 : index), ^bb31
  ^bb26(%34: index):  // 2 preds: ^bb25, ^bb29
    %35 = arith.cmpi slt, %34, %c16 : index
    cf.cond_br %35, ^bb27(%c0 : index), ^bb30
  ^bb27(%36: index):  // 2 preds: ^bb26, ^bb28
    %37 = arith.cmpi slt, %36, %c16 : index
    cf.cond_br %37, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %38 = memref.load %alloc[%30, %32, %34, %36] : memref<16x16x16x16xf64>
    memref.store %38, %alloc_4[%30, %34, %36, %32] : memref<16x16x16x16xf64>
    %39 = arith.addi %36, %c1 : index
    cf.br ^bb27(%39 : index)
  ^bb29:  // pred: ^bb27
    %40 = arith.addi %34, %c1 : index
    cf.br ^bb26(%40 : index)
  ^bb30:  // pred: ^bb26
    %41 = arith.addi %32, %c1 : index
    cf.br ^bb25(%41 : index)
  ^bb31:  // pred: ^bb25
    %42 = arith.addi %30, %c1 : index
    cf.br ^bb24(%42 : index)
  ^bb32:  // pred: ^bb24
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x16x16x16xf64> into memref<16x4096xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<16x16x16x16xf64> into memref<4096x16xf64>
    cf.br ^bb33(%c0 : index)
  ^bb33(%43: index):  // 2 preds: ^bb32, ^bb43
    %44 = arith.cmpi slt, %43, %c4096 : index
    cf.cond_br %44, ^bb34, ^bb44
  ^bb34:  // pred: ^bb33
    %45 = arith.subi %c4096, %43 : index
    %46 = arith.cmpi slt, %45, %c3072 : index
    %47 = arith.select %46, %45, %c3072 : index
    %subview = memref.subview %collapse_shape[0, %43] [16, %47] [1, 1] : memref<16x4096xf64> to memref<16x?xf64, strided<[4096, 1], offset: ?>>
    %subview_6 = memref.subview %collapse_shape_5[%43, 0] [%47, 16] [1, 1] : memref<4096x16xf64> to memref<?x16xf64, strided<[16, 1], offset: ?>>
    cf.br ^bb35(%c0 : index)
  ^bb35(%48: index):  // 2 preds: ^bb34, ^bb42
    %49 = arith.cmpi slt, %48, %c16 : index
    cf.cond_br %49, ^bb36, ^bb43
  ^bb36:  // pred: ^bb35
    %50 = arith.subi %c16, %48 : index
    %51 = arith.cmpi slt, %50, %c6 : index
    %52 = arith.select %51, %50, %c6 : index
    cf.br ^bb37(%c0 : index)
  ^bb37(%53: index):  // 2 preds: ^bb36, ^bb41
    %54 = arith.cmpi slt, %53, %c16 : index
    cf.cond_br %54, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    %55 = arith.subi %c16, %53 : index
    %56 = arith.cmpi slt, %55, %c8 : index
    %57 = arith.select %56, %55, %c8 : index
    cf.br ^bb39(%c0 : index)
  ^bb39(%58: index):  // 2 preds: ^bb38, ^bb40
    %59 = arith.cmpi slt, %58, %47 : index
    cf.cond_br %59, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %60 = arith.subi %47, %58 : index
    %61 = arith.cmpi slt, %60, %c3072 : index
    %62 = arith.select %61, %60, %c3072 : index
    %subview_7 = memref.subview %subview[%53, %58] [%57, %62] [1, 1] : memref<16x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
    %subview_8 = memref.subview %subview_6[%58, %48] [%62, %52] [1, 1] : memref<?x16xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[16, 1], offset: ?>>
    %subview_9 = memref.subview %alloc_3[%53, %48] [%57, %52] [1, 1] : memref<16x16xf64> to memref<?x?xf64, strided<[16, 1], offset: ?>>
    %cast = memref.cast %subview_7 : memref<?x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    %cast_10 = memref.cast %subview_8 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    %cast_11 = memref.cast %subview_9 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    call @linalg_matmul_viewsxs_viewsxs_viewsxs(%cast, %cast_10, %cast_11, %c8_i32, %c6_i32) : (memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) -> ()
    %63 = arith.addi %58, %c3072 : index
    cf.br ^bb39(%63 : index)
  ^bb41:  // pred: ^bb39
    %64 = arith.addi %53, %c8 : index
    cf.br ^bb37(%64 : index)
  ^bb42:  // pred: ^bb37
    %65 = arith.addi %48, %c6 : index
    cf.br ^bb35(%65 : index)
  ^bb43:  // pred: ^bb35
    %66 = arith.addi %43, %c3072 : index
    cf.br ^bb33(%66 : index)
  ^bb44:  // pred: ^bb33
    %cast_12 = memref.cast %alloc_3 : memref<16x16xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_12) : (memref<*xf64>) -> ()
    memref.dealloc %alloc_4 : memref<16x16x16x16xf64>
    return
  }
  func.func private @getTime() -> f64
  func.func private @linalg_matmul_viewsxs_viewsxs_viewsxs(memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) attributes {llvm.emit_c_interface}
  func.func private @print_flops(f64)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertVectorToLLVMPass (convert-vector-to-llvm) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c16 = arith.constant 16 : index
    %c6_i32 = arith.constant 6 : i32
    %c8_i32 = arith.constant 8 : i32
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
    %1 = arith.cmpi slt, %0, %c16 : index
    cf.cond_br %1, ^bb2(%c0 : index), ^bb9
  ^bb2(%2: index):  // 2 preds: ^bb1, ^bb7
    %3 = arith.cmpi slt, %2, %c16 : index
    cf.cond_br %3, ^bb3(%c0 : index), ^bb8
  ^bb3(%4: index):  // 2 preds: ^bb2, ^bb6
    %5 = arith.cmpi slt, %4, %c16 : index
    cf.cond_br %5, ^bb4(%c0 : index), ^bb7
  ^bb4(%6: index):  // 2 preds: ^bb3, ^bb5
    %7 = arith.cmpi slt, %6, %c16 : index
    cf.cond_br %7, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %cst_1, %alloc[%0, %2, %4, %6] : memref<16x16x16x16xf64>
    %8 = arith.addi %6, %c1 : index
    cf.br ^bb4(%8 : index)
  ^bb6:  // pred: ^bb4
    %9 = arith.addi %4, %c1 : index
    cf.br ^bb3(%9 : index)
  ^bb7:  // pred: ^bb3
    %10 = arith.addi %2, %c1 : index
    cf.br ^bb2(%10 : index)
  ^bb8:  // pred: ^bb2
    %11 = arith.addi %0, %c1 : index
    cf.br ^bb1(%11 : index)
  ^bb9:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    cf.br ^bb10(%c0 : index)
  ^bb10(%12: index):  // 2 preds: ^bb9, ^bb17
    %13 = arith.cmpi slt, %12, %c16 : index
    cf.cond_br %13, ^bb11(%c0 : index), ^bb18
  ^bb11(%14: index):  // 2 preds: ^bb10, ^bb16
    %15 = arith.cmpi slt, %14, %c16 : index
    cf.cond_br %15, ^bb12(%c0 : index), ^bb17
  ^bb12(%16: index):  // 2 preds: ^bb11, ^bb15
    %17 = arith.cmpi slt, %16, %c16 : index
    cf.cond_br %17, ^bb13(%c0 : index), ^bb16
  ^bb13(%18: index):  // 2 preds: ^bb12, ^bb14
    %19 = arith.cmpi slt, %18, %c16 : index
    cf.cond_br %19, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %cst_0, %alloc_2[%12, %14, %16, %18] : memref<16x16x16x16xf64>
    %20 = arith.addi %18, %c1 : index
    cf.br ^bb13(%20 : index)
  ^bb15:  // pred: ^bb13
    %21 = arith.addi %16, %c1 : index
    cf.br ^bb12(%21 : index)
  ^bb16:  // pred: ^bb12
    %22 = arith.addi %14, %c1 : index
    cf.br ^bb11(%22 : index)
  ^bb17:  // pred: ^bb11
    %23 = arith.addi %12, %c1 : index
    cf.br ^bb10(%23 : index)
  ^bb18:  // pred: ^bb10
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%24: index):  // 2 preds: ^bb18, ^bb22
    %25 = arith.cmpi slt, %24, %c16 : index
    cf.cond_br %25, ^bb20(%c0 : index), ^bb23
  ^bb20(%26: index):  // 2 preds: ^bb19, ^bb21
    %27 = arith.cmpi slt, %26, %c16 : index
    cf.cond_br %27, ^bb21, ^bb22
  ^bb21:  // pred: ^bb20
    memref.store %cst, %alloc_3[%24, %26] : memref<16x16xf64>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb20(%28 : index)
  ^bb22:  // pred: ^bb20
    %29 = arith.addi %24, %c1 : index
    cf.br ^bb19(%29 : index)
  ^bb23:  // pred: ^bb19
    %alloc_4 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    cf.br ^bb24(%c0 : index)
  ^bb24(%30: index):  // 2 preds: ^bb23, ^bb31
    %31 = arith.cmpi slt, %30, %c16 : index
    cf.cond_br %31, ^bb25(%c0 : index), ^bb32
  ^bb25(%32: index):  // 2 preds: ^bb24, ^bb30
    %33 = arith.cmpi slt, %32, %c16 : index
    cf.cond_br %33, ^bb26(%c0 : index), ^bb31
  ^bb26(%34: index):  // 2 preds: ^bb25, ^bb29
    %35 = arith.cmpi slt, %34, %c16 : index
    cf.cond_br %35, ^bb27(%c0 : index), ^bb30
  ^bb27(%36: index):  // 2 preds: ^bb26, ^bb28
    %37 = arith.cmpi slt, %36, %c16 : index
    cf.cond_br %37, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %38 = memref.load %alloc[%30, %32, %34, %36] : memref<16x16x16x16xf64>
    memref.store %38, %alloc_4[%30, %34, %36, %32] : memref<16x16x16x16xf64>
    %39 = arith.addi %36, %c1 : index
    cf.br ^bb27(%39 : index)
  ^bb29:  // pred: ^bb27
    %40 = arith.addi %34, %c1 : index
    cf.br ^bb26(%40 : index)
  ^bb30:  // pred: ^bb26
    %41 = arith.addi %32, %c1 : index
    cf.br ^bb25(%41 : index)
  ^bb31:  // pred: ^bb25
    %42 = arith.addi %30, %c1 : index
    cf.br ^bb24(%42 : index)
  ^bb32:  // pred: ^bb24
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x16x16x16xf64> into memref<16x4096xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<16x16x16x16xf64> into memref<4096x16xf64>
    cf.br ^bb33(%c0 : index)
  ^bb33(%43: index):  // 2 preds: ^bb32, ^bb43
    %44 = arith.cmpi slt, %43, %c4096 : index
    cf.cond_br %44, ^bb34, ^bb44
  ^bb34:  // pred: ^bb33
    %45 = arith.subi %c4096, %43 : index
    %46 = arith.cmpi slt, %45, %c3072 : index
    %47 = arith.select %46, %45, %c3072 : index
    %subview = memref.subview %collapse_shape[0, %43] [16, %47] [1, 1] : memref<16x4096xf64> to memref<16x?xf64, strided<[4096, 1], offset: ?>>
    %subview_6 = memref.subview %collapse_shape_5[%43, 0] [%47, 16] [1, 1] : memref<4096x16xf64> to memref<?x16xf64, strided<[16, 1], offset: ?>>
    cf.br ^bb35(%c0 : index)
  ^bb35(%48: index):  // 2 preds: ^bb34, ^bb42
    %49 = arith.cmpi slt, %48, %c16 : index
    cf.cond_br %49, ^bb36, ^bb43
  ^bb36:  // pred: ^bb35
    %50 = arith.subi %c16, %48 : index
    %51 = arith.cmpi slt, %50, %c6 : index
    %52 = arith.select %51, %50, %c6 : index
    cf.br ^bb37(%c0 : index)
  ^bb37(%53: index):  // 2 preds: ^bb36, ^bb41
    %54 = arith.cmpi slt, %53, %c16 : index
    cf.cond_br %54, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    %55 = arith.subi %c16, %53 : index
    %56 = arith.cmpi slt, %55, %c8 : index
    %57 = arith.select %56, %55, %c8 : index
    cf.br ^bb39(%c0 : index)
  ^bb39(%58: index):  // 2 preds: ^bb38, ^bb40
    %59 = arith.cmpi slt, %58, %47 : index
    cf.cond_br %59, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %60 = arith.subi %47, %58 : index
    %61 = arith.cmpi slt, %60, %c3072 : index
    %62 = arith.select %61, %60, %c3072 : index
    %subview_7 = memref.subview %subview[%53, %58] [%57, %62] [1, 1] : memref<16x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
    %subview_8 = memref.subview %subview_6[%58, %48] [%62, %52] [1, 1] : memref<?x16xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[16, 1], offset: ?>>
    %subview_9 = memref.subview %alloc_3[%53, %48] [%57, %52] [1, 1] : memref<16x16xf64> to memref<?x?xf64, strided<[16, 1], offset: ?>>
    %cast = memref.cast %subview_7 : memref<?x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    %cast_10 = memref.cast %subview_8 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    %cast_11 = memref.cast %subview_9 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    call @linalg_matmul_viewsxs_viewsxs_viewsxs(%cast, %cast_10, %cast_11, %c8_i32, %c6_i32) : (memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) -> ()
    %63 = arith.addi %58, %c3072 : index
    cf.br ^bb39(%63 : index)
  ^bb41:  // pred: ^bb39
    %64 = arith.addi %53, %c8 : index
    cf.br ^bb37(%64 : index)
  ^bb42:  // pred: ^bb37
    %65 = arith.addi %48, %c6 : index
    cf.br ^bb35(%65 : index)
  ^bb43:  // pred: ^bb35
    %66 = arith.addi %43, %c3072 : index
    cf.br ^bb33(%66 : index)
  ^bb44:  // pred: ^bb33
    %cast_12 = memref.cast %alloc_3 : memref<16x16xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_12) : (memref<*xf64>) -> ()
    memref.dealloc %alloc_4 : memref<16x16x16x16xf64>
    return
  }
  func.func private @getTime() -> f64
  func.func private @linalg_matmul_viewsxs_viewsxs_viewsxs(memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) attributes {llvm.emit_c_interface}
  func.func private @print_flops(f64)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @print_flops(f64)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @getTime() -> f64

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @linalg_matmul_viewsxs_viewsxs_viewsxs(memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) attributes {llvm.emit_c_interface}

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c16 = arith.constant 16 : index
  %c6_i32 = arith.constant 6 : i32
  %c8_i32 = arith.constant 8 : i32
  %c8 = arith.constant 8 : index
  %c6 = arith.constant 6 : index
  %c3072 = arith.constant 3072 : index
  %c4096 = arith.constant 4096 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.300000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  cf.br ^bb1(%c0 : index)
^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
  %1 = arith.cmpi slt, %0, %c16 : index
  cf.cond_br %1, ^bb2(%c0 : index), ^bb9
^bb2(%2: index):  // 2 preds: ^bb1, ^bb7
  %3 = arith.cmpi slt, %2, %c16 : index
  cf.cond_br %3, ^bb3(%c0 : index), ^bb8
^bb3(%4: index):  // 2 preds: ^bb2, ^bb6
  %5 = arith.cmpi slt, %4, %c16 : index
  cf.cond_br %5, ^bb4(%c0 : index), ^bb7
^bb4(%6: index):  // 2 preds: ^bb3, ^bb5
  %7 = arith.cmpi slt, %6, %c16 : index
  cf.cond_br %7, ^bb5, ^bb6
^bb5:  // pred: ^bb4
  memref.store %cst_1, %alloc[%0, %2, %4, %6] : memref<16x16x16x16xf64>
  %8 = arith.addi %6, %c1 : index
  cf.br ^bb4(%8 : index)
^bb6:  // pred: ^bb4
  %9 = arith.addi %4, %c1 : index
  cf.br ^bb3(%9 : index)
^bb7:  // pred: ^bb3
  %10 = arith.addi %2, %c1 : index
  cf.br ^bb2(%10 : index)
^bb8:  // pred: ^bb2
  %11 = arith.addi %0, %c1 : index
  cf.br ^bb1(%11 : index)
^bb9:  // pred: ^bb1
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  cf.br ^bb10(%c0 : index)
^bb10(%12: index):  // 2 preds: ^bb9, ^bb17
  %13 = arith.cmpi slt, %12, %c16 : index
  cf.cond_br %13, ^bb11(%c0 : index), ^bb18
^bb11(%14: index):  // 2 preds: ^bb10, ^bb16
  %15 = arith.cmpi slt, %14, %c16 : index
  cf.cond_br %15, ^bb12(%c0 : index), ^bb17
^bb12(%16: index):  // 2 preds: ^bb11, ^bb15
  %17 = arith.cmpi slt, %16, %c16 : index
  cf.cond_br %17, ^bb13(%c0 : index), ^bb16
^bb13(%18: index):  // 2 preds: ^bb12, ^bb14
  %19 = arith.cmpi slt, %18, %c16 : index
  cf.cond_br %19, ^bb14, ^bb15
^bb14:  // pred: ^bb13
  memref.store %cst_0, %alloc_2[%12, %14, %16, %18] : memref<16x16x16x16xf64>
  %20 = arith.addi %18, %c1 : index
  cf.br ^bb13(%20 : index)
^bb15:  // pred: ^bb13
  %21 = arith.addi %16, %c1 : index
  cf.br ^bb12(%21 : index)
^bb16:  // pred: ^bb12
  %22 = arith.addi %14, %c1 : index
  cf.br ^bb11(%22 : index)
^bb17:  // pred: ^bb11
  %23 = arith.addi %12, %c1 : index
  cf.br ^bb10(%23 : index)
^bb18:  // pred: ^bb10
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  cf.br ^bb19(%c0 : index)
^bb19(%24: index):  // 2 preds: ^bb18, ^bb22
  %25 = arith.cmpi slt, %24, %c16 : index
  cf.cond_br %25, ^bb20(%c0 : index), ^bb23
^bb20(%26: index):  // 2 preds: ^bb19, ^bb21
  %27 = arith.cmpi slt, %26, %c16 : index
  cf.cond_br %27, ^bb21, ^bb22
^bb21:  // pred: ^bb20
  memref.store %cst, %alloc_3[%24, %26] : memref<16x16xf64>
  %28 = arith.addi %26, %c1 : index
  cf.br ^bb20(%28 : index)
^bb22:  // pred: ^bb20
  %29 = arith.addi %24, %c1 : index
  cf.br ^bb19(%29 : index)
^bb23:  // pred: ^bb19
  %alloc_4 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
  cf.br ^bb24(%c0 : index)
^bb24(%30: index):  // 2 preds: ^bb23, ^bb31
  %31 = arith.cmpi slt, %30, %c16 : index
  cf.cond_br %31, ^bb25(%c0 : index), ^bb32
^bb25(%32: index):  // 2 preds: ^bb24, ^bb30
  %33 = arith.cmpi slt, %32, %c16 : index
  cf.cond_br %33, ^bb26(%c0 : index), ^bb31
^bb26(%34: index):  // 2 preds: ^bb25, ^bb29
  %35 = arith.cmpi slt, %34, %c16 : index
  cf.cond_br %35, ^bb27(%c0 : index), ^bb30
^bb27(%36: index):  // 2 preds: ^bb26, ^bb28
  %37 = arith.cmpi slt, %36, %c16 : index
  cf.cond_br %37, ^bb28, ^bb29
^bb28:  // pred: ^bb27
  %38 = memref.load %alloc[%30, %32, %34, %36] : memref<16x16x16x16xf64>
  memref.store %38, %alloc_4[%30, %34, %36, %32] : memref<16x16x16x16xf64>
  %39 = arith.addi %36, %c1 : index
  cf.br ^bb27(%39 : index)
^bb29:  // pred: ^bb27
  %40 = arith.addi %34, %c1 : index
  cf.br ^bb26(%40 : index)
^bb30:  // pred: ^bb26
  %41 = arith.addi %32, %c1 : index
  cf.br ^bb25(%41 : index)
^bb31:  // pred: ^bb25
  %42 = arith.addi %30, %c1 : index
  cf.br ^bb24(%42 : index)
^bb32:  // pred: ^bb24
  %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x16x16x16xf64> into memref<16x4096xf64>
  %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<16x16x16x16xf64> into memref<4096x16xf64>
  cf.br ^bb33(%c0 : index)
^bb33(%43: index):  // 2 preds: ^bb32, ^bb43
  %44 = arith.cmpi slt, %43, %c4096 : index
  cf.cond_br %44, ^bb34, ^bb44
^bb34:  // pred: ^bb33
  %45 = arith.subi %c4096, %43 : index
  %46 = arith.cmpi slt, %45, %c3072 : index
  %47 = arith.select %46, %45, %c3072 : index
  %subview = memref.subview %collapse_shape[0, %43] [16, %47] [1, 1] : memref<16x4096xf64> to memref<16x?xf64, strided<[4096, 1], offset: ?>>
  %subview_6 = memref.subview %collapse_shape_5[%43, 0] [%47, 16] [1, 1] : memref<4096x16xf64> to memref<?x16xf64, strided<[16, 1], offset: ?>>
  cf.br ^bb35(%c0 : index)
^bb35(%48: index):  // 2 preds: ^bb34, ^bb42
  %49 = arith.cmpi slt, %48, %c16 : index
  cf.cond_br %49, ^bb36, ^bb43
^bb36:  // pred: ^bb35
  %50 = arith.subi %c16, %48 : index
  %51 = arith.cmpi slt, %50, %c6 : index
  %52 = arith.select %51, %50, %c6 : index
  cf.br ^bb37(%c0 : index)
^bb37(%53: index):  // 2 preds: ^bb36, ^bb41
  %54 = arith.cmpi slt, %53, %c16 : index
  cf.cond_br %54, ^bb38, ^bb42
^bb38:  // pred: ^bb37
  %55 = arith.subi %c16, %53 : index
  %56 = arith.cmpi slt, %55, %c8 : index
  %57 = arith.select %56, %55, %c8 : index
  cf.br ^bb39(%c0 : index)
^bb39(%58: index):  // 2 preds: ^bb38, ^bb40
  %59 = arith.cmpi slt, %58, %47 : index
  cf.cond_br %59, ^bb40, ^bb41
^bb40:  // pred: ^bb39
  %60 = arith.subi %47, %58 : index
  %61 = arith.cmpi slt, %60, %c3072 : index
  %62 = arith.select %61, %60, %c3072 : index
  %subview_7 = memref.subview %subview[%53, %58] [%57, %62] [1, 1] : memref<16x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
  %subview_8 = memref.subview %subview_6[%58, %48] [%62, %52] [1, 1] : memref<?x16xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[16, 1], offset: ?>>
  %subview_9 = memref.subview %alloc_3[%53, %48] [%57, %52] [1, 1] : memref<16x16xf64> to memref<?x?xf64, strided<[16, 1], offset: ?>>
  %cast = memref.cast %subview_7 : memref<?x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
  %cast_10 = memref.cast %subview_8 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
  %cast_11 = memref.cast %subview_9 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
  call @linalg_matmul_viewsxs_viewsxs_viewsxs(%cast, %cast_10, %cast_11, %c8_i32, %c6_i32) : (memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) -> ()
  %63 = arith.addi %58, %c3072 : index
  cf.br ^bb39(%63 : index)
^bb41:  // pred: ^bb39
  %64 = arith.addi %53, %c8 : index
  cf.br ^bb37(%64 : index)
^bb42:  // pred: ^bb37
  %65 = arith.addi %48, %c6 : index
  cf.br ^bb35(%65 : index)
^bb43:  // pred: ^bb35
  %66 = arith.addi %43, %c3072 : index
  cf.br ^bb33(%66 : index)
^bb44:  // pred: ^bb33
  %cast_12 = memref.cast %alloc_3 : memref<16x16xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_12) : (memref<*xf64>) -> ()
  memref.dealloc %alloc_4 : memref<16x16x16x16xf64>
  return
}

// -----// IR Dump After ExpandStridedMetadata (expand-strided-metadata) //----- //
#map = affine_map<()[s0] -> (s0 * 16)>
#map1 = affine_map<()[s0, s1, s2] -> (s0 + s1 * 4096 + s2)>
#map2 = affine_map<()[s0, s1, s2] -> (s0 + s1 * 16 + s2)>
#map3 = affine_map<()[s0, s1] -> (s0 * 16 + s1)>
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c16 = arith.constant 16 : index
    %c6_i32 = arith.constant 6 : i32
    %c8_i32 = arith.constant 8 : i32
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
    %1 = arith.cmpi slt, %0, %c16 : index
    cf.cond_br %1, ^bb2(%c0 : index), ^bb9
  ^bb2(%2: index):  // 2 preds: ^bb1, ^bb7
    %3 = arith.cmpi slt, %2, %c16 : index
    cf.cond_br %3, ^bb3(%c0 : index), ^bb8
  ^bb3(%4: index):  // 2 preds: ^bb2, ^bb6
    %5 = arith.cmpi slt, %4, %c16 : index
    cf.cond_br %5, ^bb4(%c0 : index), ^bb7
  ^bb4(%6: index):  // 2 preds: ^bb3, ^bb5
    %7 = arith.cmpi slt, %6, %c16 : index
    cf.cond_br %7, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %cst_1, %alloc[%0, %2, %4, %6] : memref<16x16x16x16xf64>
    %8 = arith.addi %6, %c1 : index
    cf.br ^bb4(%8 : index)
  ^bb6:  // pred: ^bb4
    %9 = arith.addi %4, %c1 : index
    cf.br ^bb3(%9 : index)
  ^bb7:  // pred: ^bb3
    %10 = arith.addi %2, %c1 : index
    cf.br ^bb2(%10 : index)
  ^bb8:  // pred: ^bb2
    %11 = arith.addi %0, %c1 : index
    cf.br ^bb1(%11 : index)
  ^bb9:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    cf.br ^bb10(%c0 : index)
  ^bb10(%12: index):  // 2 preds: ^bb9, ^bb17
    %13 = arith.cmpi slt, %12, %c16 : index
    cf.cond_br %13, ^bb11(%c0 : index), ^bb18
  ^bb11(%14: index):  // 2 preds: ^bb10, ^bb16
    %15 = arith.cmpi slt, %14, %c16 : index
    cf.cond_br %15, ^bb12(%c0 : index), ^bb17
  ^bb12(%16: index):  // 2 preds: ^bb11, ^bb15
    %17 = arith.cmpi slt, %16, %c16 : index
    cf.cond_br %17, ^bb13(%c0 : index), ^bb16
  ^bb13(%18: index):  // 2 preds: ^bb12, ^bb14
    %19 = arith.cmpi slt, %18, %c16 : index
    cf.cond_br %19, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %cst_0, %alloc_2[%12, %14, %16, %18] : memref<16x16x16x16xf64>
    %20 = arith.addi %18, %c1 : index
    cf.br ^bb13(%20 : index)
  ^bb15:  // pred: ^bb13
    %21 = arith.addi %16, %c1 : index
    cf.br ^bb12(%21 : index)
  ^bb16:  // pred: ^bb12
    %22 = arith.addi %14, %c1 : index
    cf.br ^bb11(%22 : index)
  ^bb17:  // pred: ^bb11
    %23 = arith.addi %12, %c1 : index
    cf.br ^bb10(%23 : index)
  ^bb18:  // pred: ^bb10
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%24: index):  // 2 preds: ^bb18, ^bb22
    %25 = arith.cmpi slt, %24, %c16 : index
    cf.cond_br %25, ^bb20(%c0 : index), ^bb23
  ^bb20(%26: index):  // 2 preds: ^bb19, ^bb21
    %27 = arith.cmpi slt, %26, %c16 : index
    cf.cond_br %27, ^bb21, ^bb22
  ^bb21:  // pred: ^bb20
    memref.store %cst, %alloc_3[%24, %26] : memref<16x16xf64>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb20(%28 : index)
  ^bb22:  // pred: ^bb20
    %29 = arith.addi %24, %c1 : index
    cf.br ^bb19(%29 : index)
  ^bb23:  // pred: ^bb19
    %alloc_4 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    cf.br ^bb24(%c0 : index)
  ^bb24(%30: index):  // 2 preds: ^bb23, ^bb31
    %31 = arith.cmpi slt, %30, %c16 : index
    cf.cond_br %31, ^bb25(%c0 : index), ^bb32
  ^bb25(%32: index):  // 2 preds: ^bb24, ^bb30
    %33 = arith.cmpi slt, %32, %c16 : index
    cf.cond_br %33, ^bb26(%c0 : index), ^bb31
  ^bb26(%34: index):  // 2 preds: ^bb25, ^bb29
    %35 = arith.cmpi slt, %34, %c16 : index
    cf.cond_br %35, ^bb27(%c0 : index), ^bb30
  ^bb27(%36: index):  // 2 preds: ^bb26, ^bb28
    %37 = arith.cmpi slt, %36, %c16 : index
    cf.cond_br %37, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %38 = memref.load %alloc[%30, %32, %34, %36] : memref<16x16x16x16xf64>
    memref.store %38, %alloc_4[%30, %34, %36, %32] : memref<16x16x16x16xf64>
    %39 = arith.addi %36, %c1 : index
    cf.br ^bb27(%39 : index)
  ^bb29:  // pred: ^bb27
    %40 = arith.addi %34, %c1 : index
    cf.br ^bb26(%40 : index)
  ^bb30:  // pred: ^bb26
    %41 = arith.addi %32, %c1 : index
    cf.br ^bb25(%41 : index)
  ^bb31:  // pred: ^bb25
    %42 = arith.addi %30, %c1 : index
    cf.br ^bb24(%42 : index)
  ^bb32:  // pred: ^bb24
    cf.br ^bb33(%c0 : index)
  ^bb33(%43: index):  // 2 preds: ^bb32, ^bb43
    %44 = arith.cmpi slt, %43, %c4096 : index
    cf.cond_br %44, ^bb34, ^bb44
  ^bb34:  // pred: ^bb33
    %45 = arith.subi %c4096, %43 : index
    %46 = arith.cmpi slt, %45, %c3072 : index
    %47 = arith.select %46, %45, %c3072 : index
    %48 = affine.apply #map()[%43]
    cf.br ^bb35(%c0 : index)
  ^bb35(%49: index):  // 2 preds: ^bb34, ^bb42
    %50 = arith.cmpi slt, %49, %c16 : index
    cf.cond_br %50, ^bb36, ^bb43
  ^bb36:  // pred: ^bb35
    %51 = arith.subi %c16, %49 : index
    %52 = arith.cmpi slt, %51, %c6 : index
    %53 = arith.select %52, %51, %c6 : index
    cf.br ^bb37(%c0 : index)
  ^bb37(%54: index):  // 2 preds: ^bb36, ^bb41
    %55 = arith.cmpi slt, %54, %c16 : index
    cf.cond_br %55, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    %56 = arith.subi %c16, %54 : index
    %57 = arith.cmpi slt, %56, %c8 : index
    %58 = arith.select %57, %56, %c8 : index
    cf.br ^bb39(%c0 : index)
  ^bb39(%59: index):  // 2 preds: ^bb38, ^bb40
    %60 = arith.cmpi slt, %59, %47 : index
    cf.cond_br %60, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %61 = arith.subi %47, %59 : index
    %62 = arith.cmpi slt, %61, %c3072 : index
    %63 = arith.select %62, %61, %c3072 : index
    %64 = affine.apply #map1()[%43, %54, %59]
    %reinterpret_cast = memref.reinterpret_cast %alloc_4 to offset: [%64], sizes: [%58, %63], strides: [4096, 1] : memref<16x16x16x16xf64> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
    %65 = affine.apply #map2()[%48, %59, %49]
    %reinterpret_cast_5 = memref.reinterpret_cast %alloc_2 to offset: [%65], sizes: [%63, %53], strides: [16, 1] : memref<16x16x16x16xf64> to memref<?x?xf64, strided<[16, 1], offset: ?>>
    %66 = affine.apply #map3()[%54, %49]
    %reinterpret_cast_6 = memref.reinterpret_cast %alloc_3 to offset: [%66], sizes: [%58, %53], strides: [16, 1] : memref<16x16xf64> to memref<?x?xf64, strided<[16, 1], offset: ?>>
    %cast = memref.cast %reinterpret_cast : memref<?x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    %cast_7 = memref.cast %reinterpret_cast_5 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    %cast_8 = memref.cast %reinterpret_cast_6 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    call @linalg_matmul_viewsxs_viewsxs_viewsxs(%cast, %cast_7, %cast_8, %c8_i32, %c6_i32) : (memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) -> ()
    %67 = arith.addi %59, %c3072 : index
    cf.br ^bb39(%67 : index)
  ^bb41:  // pred: ^bb39
    %68 = arith.addi %54, %c8 : index
    cf.br ^bb37(%68 : index)
  ^bb42:  // pred: ^bb37
    %69 = arith.addi %49, %c6 : index
    cf.br ^bb35(%69 : index)
  ^bb43:  // pred: ^bb35
    %70 = arith.addi %43, %c3072 : index
    cf.br ^bb33(%70 : index)
  ^bb44:  // pred: ^bb33
    %cast_9 = memref.cast %alloc_3 : memref<16x16xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_9) : (memref<*xf64>) -> ()
    memref.dealloc %alloc_4 : memref<16x16x16x16xf64>
    return
  }
  func.func private @getTime() -> f64
  func.func private @linalg_matmul_viewsxs_viewsxs_viewsxs(memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) attributes {llvm.emit_c_interface}
  func.func private @print_flops(f64)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c16 = arith.constant 16 : index
    %c6_i32 = arith.constant 6 : i32
    %c8_i32 = arith.constant 8 : i32
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
    %1 = arith.cmpi slt, %0, %c16 : index
    cf.cond_br %1, ^bb2(%c0 : index), ^bb9
  ^bb2(%2: index):  // 2 preds: ^bb1, ^bb7
    %3 = arith.cmpi slt, %2, %c16 : index
    cf.cond_br %3, ^bb3(%c0 : index), ^bb8
  ^bb3(%4: index):  // 2 preds: ^bb2, ^bb6
    %5 = arith.cmpi slt, %4, %c16 : index
    cf.cond_br %5, ^bb4(%c0 : index), ^bb7
  ^bb4(%6: index):  // 2 preds: ^bb3, ^bb5
    %7 = arith.cmpi slt, %6, %c16 : index
    cf.cond_br %7, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %cst_1, %alloc[%0, %2, %4, %6] : memref<16x16x16x16xf64>
    %8 = arith.addi %6, %c1 : index
    cf.br ^bb4(%8 : index)
  ^bb6:  // pred: ^bb4
    %9 = arith.addi %4, %c1 : index
    cf.br ^bb3(%9 : index)
  ^bb7:  // pred: ^bb3
    %10 = arith.addi %2, %c1 : index
    cf.br ^bb2(%10 : index)
  ^bb8:  // pred: ^bb2
    %11 = arith.addi %0, %c1 : index
    cf.br ^bb1(%11 : index)
  ^bb9:  // pred: ^bb1
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    cf.br ^bb10(%c0 : index)
  ^bb10(%12: index):  // 2 preds: ^bb9, ^bb17
    %13 = arith.cmpi slt, %12, %c16 : index
    cf.cond_br %13, ^bb11(%c0 : index), ^bb18
  ^bb11(%14: index):  // 2 preds: ^bb10, ^bb16
    %15 = arith.cmpi slt, %14, %c16 : index
    cf.cond_br %15, ^bb12(%c0 : index), ^bb17
  ^bb12(%16: index):  // 2 preds: ^bb11, ^bb15
    %17 = arith.cmpi slt, %16, %c16 : index
    cf.cond_br %17, ^bb13(%c0 : index), ^bb16
  ^bb13(%18: index):  // 2 preds: ^bb12, ^bb14
    %19 = arith.cmpi slt, %18, %c16 : index
    cf.cond_br %19, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %cst_0, %alloc_2[%12, %14, %16, %18] : memref<16x16x16x16xf64>
    %20 = arith.addi %18, %c1 : index
    cf.br ^bb13(%20 : index)
  ^bb15:  // pred: ^bb13
    %21 = arith.addi %16, %c1 : index
    cf.br ^bb12(%21 : index)
  ^bb16:  // pred: ^bb12
    %22 = arith.addi %14, %c1 : index
    cf.br ^bb11(%22 : index)
  ^bb17:  // pred: ^bb11
    %23 = arith.addi %12, %c1 : index
    cf.br ^bb10(%23 : index)
  ^bb18:  // pred: ^bb10
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%24: index):  // 2 preds: ^bb18, ^bb22
    %25 = arith.cmpi slt, %24, %c16 : index
    cf.cond_br %25, ^bb20(%c0 : index), ^bb23
  ^bb20(%26: index):  // 2 preds: ^bb19, ^bb21
    %27 = arith.cmpi slt, %26, %c16 : index
    cf.cond_br %27, ^bb21, ^bb22
  ^bb21:  // pred: ^bb20
    memref.store %cst, %alloc_3[%24, %26] : memref<16x16xf64>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb20(%28 : index)
  ^bb22:  // pred: ^bb20
    %29 = arith.addi %24, %c1 : index
    cf.br ^bb19(%29 : index)
  ^bb23:  // pred: ^bb19
    %alloc_4 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    cf.br ^bb24(%c0 : index)
  ^bb24(%30: index):  // 2 preds: ^bb23, ^bb31
    %31 = arith.cmpi slt, %30, %c16 : index
    cf.cond_br %31, ^bb25(%c0 : index), ^bb32
  ^bb25(%32: index):  // 2 preds: ^bb24, ^bb30
    %33 = arith.cmpi slt, %32, %c16 : index
    cf.cond_br %33, ^bb26(%c0 : index), ^bb31
  ^bb26(%34: index):  // 2 preds: ^bb25, ^bb29
    %35 = arith.cmpi slt, %34, %c16 : index
    cf.cond_br %35, ^bb27(%c0 : index), ^bb30
  ^bb27(%36: index):  // 2 preds: ^bb26, ^bb28
    %37 = arith.cmpi slt, %36, %c16 : index
    cf.cond_br %37, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %38 = memref.load %alloc[%30, %32, %34, %36] : memref<16x16x16x16xf64>
    memref.store %38, %alloc_4[%30, %34, %36, %32] : memref<16x16x16x16xf64>
    %39 = arith.addi %36, %c1 : index
    cf.br ^bb27(%39 : index)
  ^bb29:  // pred: ^bb27
    %40 = arith.addi %34, %c1 : index
    cf.br ^bb26(%40 : index)
  ^bb30:  // pred: ^bb26
    %41 = arith.addi %32, %c1 : index
    cf.br ^bb25(%41 : index)
  ^bb31:  // pred: ^bb25
    %42 = arith.addi %30, %c1 : index
    cf.br ^bb24(%42 : index)
  ^bb32:  // pred: ^bb24
    cf.br ^bb33(%c0 : index)
  ^bb33(%43: index):  // 2 preds: ^bb32, ^bb43
    %44 = arith.cmpi slt, %43, %c4096 : index
    cf.cond_br %44, ^bb34, ^bb44
  ^bb34:  // pred: ^bb33
    %45 = arith.subi %c4096, %43 : index
    %46 = arith.cmpi slt, %45, %c3072 : index
    %47 = arith.select %46, %45, %c3072 : index
    %c16_5 = arith.constant 16 : index
    %48 = arith.muli %43, %c16_5 : index
    cf.br ^bb35(%c0 : index)
  ^bb35(%49: index):  // 2 preds: ^bb34, ^bb42
    %50 = arith.cmpi slt, %49, %c16 : index
    cf.cond_br %50, ^bb36, ^bb43
  ^bb36:  // pred: ^bb35
    %51 = arith.subi %c16, %49 : index
    %52 = arith.cmpi slt, %51, %c6 : index
    %53 = arith.select %52, %51, %c6 : index
    cf.br ^bb37(%c0 : index)
  ^bb37(%54: index):  // 2 preds: ^bb36, ^bb41
    %55 = arith.cmpi slt, %54, %c16 : index
    cf.cond_br %55, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    %56 = arith.subi %c16, %54 : index
    %57 = arith.cmpi slt, %56, %c8 : index
    %58 = arith.select %57, %56, %c8 : index
    cf.br ^bb39(%c0 : index)
  ^bb39(%59: index):  // 2 preds: ^bb38, ^bb40
    %60 = arith.cmpi slt, %59, %47 : index
    cf.cond_br %60, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %61 = arith.subi %47, %59 : index
    %62 = arith.cmpi slt, %61, %c3072 : index
    %63 = arith.select %62, %61, %c3072 : index
    %c4096_6 = arith.constant 4096 : index
    %64 = arith.muli %54, %c4096_6 : index
    %65 = arith.addi %43, %64 : index
    %66 = arith.addi %65, %59 : index
    %reinterpret_cast = memref.reinterpret_cast %alloc_4 to offset: [%66], sizes: [%58, %63], strides: [4096, 1] : memref<16x16x16x16xf64> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
    %c16_7 = arith.constant 16 : index
    %67 = arith.muli %59, %c16_7 : index
    %68 = arith.addi %48, %67 : index
    %69 = arith.addi %68, %49 : index
    %reinterpret_cast_8 = memref.reinterpret_cast %alloc_2 to offset: [%69], sizes: [%63, %53], strides: [16, 1] : memref<16x16x16x16xf64> to memref<?x?xf64, strided<[16, 1], offset: ?>>
    %c16_9 = arith.constant 16 : index
    %70 = arith.muli %54, %c16_9 : index
    %71 = arith.addi %70, %49 : index
    %reinterpret_cast_10 = memref.reinterpret_cast %alloc_3 to offset: [%71], sizes: [%58, %53], strides: [16, 1] : memref<16x16xf64> to memref<?x?xf64, strided<[16, 1], offset: ?>>
    %cast = memref.cast %reinterpret_cast : memref<?x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    %cast_11 = memref.cast %reinterpret_cast_8 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    %cast_12 = memref.cast %reinterpret_cast_10 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    call @linalg_matmul_viewsxs_viewsxs_viewsxs(%cast, %cast_11, %cast_12, %c8_i32, %c6_i32) : (memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) -> ()
    %72 = arith.addi %59, %c3072 : index
    cf.br ^bb39(%72 : index)
  ^bb41:  // pred: ^bb39
    %73 = arith.addi %54, %c8 : index
    cf.br ^bb37(%73 : index)
  ^bb42:  // pred: ^bb37
    %74 = arith.addi %49, %c6 : index
    cf.br ^bb35(%74 : index)
  ^bb43:  // pred: ^bb35
    %75 = arith.addi %43, %c3072 : index
    cf.br ^bb33(%75 : index)
  ^bb44:  // pred: ^bb33
    %cast_13 = memref.cast %alloc_3 : memref<16x16xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_13) : (memref<*xf64>) -> ()
    memref.dealloc %alloc_4 : memref<16x16x16x16xf64>
    return
  }
  func.func private @getTime() -> f64
  func.func private @linalg_matmul_viewsxs_viewsxs_viewsxs(memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) attributes {llvm.emit_c_interface}
  func.func private @print_flops(f64)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After FinalizeMemRefToLLVMConversionPass (finalize-memref-to-llvm) //----- //
module {
  llvm.func @free(!llvm.ptr)
  llvm.func @malloc(i64) -> !llvm.ptr
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c16 = arith.constant 16 : index
    %c6_i32 = arith.constant 6 : i32
    %c8_i32 = arith.constant 8 : i32
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %0 = llvm.mlir.constant(16 : index) : i64
    %1 = llvm.mlir.constant(16 : index) : i64
    %2 = llvm.mlir.constant(16 : index) : i64
    %3 = llvm.mlir.constant(16 : index) : i64
    %4 = llvm.mlir.constant(1 : index) : i64
    %5 = llvm.mlir.constant(256 : index) : i64
    %6 = llvm.mlir.constant(4096 : index) : i64
    %7 = llvm.mlir.constant(65536 : index) : i64
    %8 = llvm.mlir.zero : !llvm.ptr
    %9 = llvm.getelementptr %8[%7] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %10 = llvm.ptrtoint %9 : !llvm.ptr to i64
    %11 = llvm.mlir.constant(32 : index) : i64
    %12 = llvm.add %10, %11  : i64
    %13 = llvm.call @malloc(%12) : (i64) -> !llvm.ptr
    %14 = llvm.ptrtoint %13 : !llvm.ptr to i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.sub %11, %15  : i64
    %17 = llvm.add %14, %16  : i64
    %18 = llvm.urem %17, %11  : i64
    %19 = llvm.sub %17, %18  : i64
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
  ^bb1(%34: index):  // 2 preds: ^bb0, ^bb8
    %35 = builtin.unrealized_conversion_cast %34 : index to i64
    %36 = arith.cmpi slt, %34, %c16 : index
    cf.cond_br %36, ^bb2(%c0 : index), ^bb9
  ^bb2(%37: index):  // 2 preds: ^bb1, ^bb7
    %38 = builtin.unrealized_conversion_cast %37 : index to i64
    %39 = arith.cmpi slt, %37, %c16 : index
    cf.cond_br %39, ^bb3(%c0 : index), ^bb8
  ^bb3(%40: index):  // 2 preds: ^bb2, ^bb6
    %41 = builtin.unrealized_conversion_cast %40 : index to i64
    %42 = arith.cmpi slt, %40, %c16 : index
    cf.cond_br %42, ^bb4(%c0 : index), ^bb7
  ^bb4(%43: index):  // 2 preds: ^bb3, ^bb5
    %44 = builtin.unrealized_conversion_cast %43 : index to i64
    %45 = arith.cmpi slt, %43, %c16 : index
    cf.cond_br %45, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %46 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.mlir.constant(4096 : index) : i64
    %48 = llvm.mul %35, %47  : i64
    %49 = llvm.mlir.constant(256 : index) : i64
    %50 = llvm.mul %38, %49  : i64
    %51 = llvm.add %48, %50  : i64
    %52 = llvm.mlir.constant(16 : index) : i64
    %53 = llvm.mul %41, %52  : i64
    %54 = llvm.add %51, %53  : i64
    %55 = llvm.add %54, %44  : i64
    %56 = llvm.getelementptr %46[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst_1, %56 : f64, !llvm.ptr
    %57 = arith.addi %43, %c1 : index
    cf.br ^bb4(%57 : index)
  ^bb6:  // pred: ^bb4
    %58 = arith.addi %40, %c1 : index
    cf.br ^bb3(%58 : index)
  ^bb7:  // pred: ^bb3
    %59 = arith.addi %37, %c1 : index
    cf.br ^bb2(%59 : index)
  ^bb8:  // pred: ^bb2
    %60 = arith.addi %34, %c1 : index
    cf.br ^bb1(%60 : index)
  ^bb9:  // pred: ^bb1
    %61 = llvm.mlir.constant(16 : index) : i64
    %62 = llvm.mlir.constant(16 : index) : i64
    %63 = llvm.mlir.constant(16 : index) : i64
    %64 = llvm.mlir.constant(16 : index) : i64
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.mlir.constant(256 : index) : i64
    %67 = llvm.mlir.constant(4096 : index) : i64
    %68 = llvm.mlir.constant(65536 : index) : i64
    %69 = llvm.mlir.zero : !llvm.ptr
    %70 = llvm.getelementptr %69[%68] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %71 = llvm.ptrtoint %70 : !llvm.ptr to i64
    %72 = llvm.mlir.constant(32 : index) : i64
    %73 = llvm.add %71, %72  : i64
    %74 = llvm.call @malloc(%73) : (i64) -> !llvm.ptr
    %75 = llvm.ptrtoint %74 : !llvm.ptr to i64
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.sub %72, %76  : i64
    %78 = llvm.add %75, %77  : i64
    %79 = llvm.urem %78, %72  : i64
    %80 = llvm.sub %78, %79  : i64
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
    cf.br ^bb10(%c0 : index)
  ^bb10(%95: index):  // 2 preds: ^bb9, ^bb17
    %96 = builtin.unrealized_conversion_cast %95 : index to i64
    %97 = arith.cmpi slt, %95, %c16 : index
    cf.cond_br %97, ^bb11(%c0 : index), ^bb18
  ^bb11(%98: index):  // 2 preds: ^bb10, ^bb16
    %99 = builtin.unrealized_conversion_cast %98 : index to i64
    %100 = arith.cmpi slt, %98, %c16 : index
    cf.cond_br %100, ^bb12(%c0 : index), ^bb17
  ^bb12(%101: index):  // 2 preds: ^bb11, ^bb15
    %102 = builtin.unrealized_conversion_cast %101 : index to i64
    %103 = arith.cmpi slt, %101, %c16 : index
    cf.cond_br %103, ^bb13(%c0 : index), ^bb16
  ^bb13(%104: index):  // 2 preds: ^bb12, ^bb14
    %105 = builtin.unrealized_conversion_cast %104 : index to i64
    %106 = arith.cmpi slt, %104, %c16 : index
    cf.cond_br %106, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %107 = llvm.extractvalue %94[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.mlir.constant(4096 : index) : i64
    %109 = llvm.mul %96, %108  : i64
    %110 = llvm.mlir.constant(256 : index) : i64
    %111 = llvm.mul %99, %110  : i64
    %112 = llvm.add %109, %111  : i64
    %113 = llvm.mlir.constant(16 : index) : i64
    %114 = llvm.mul %102, %113  : i64
    %115 = llvm.add %112, %114  : i64
    %116 = llvm.add %115, %105  : i64
    %117 = llvm.getelementptr %107[%116] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst_0, %117 : f64, !llvm.ptr
    %118 = arith.addi %104, %c1 : index
    cf.br ^bb13(%118 : index)
  ^bb15:  // pred: ^bb13
    %119 = arith.addi %101, %c1 : index
    cf.br ^bb12(%119 : index)
  ^bb16:  // pred: ^bb12
    %120 = arith.addi %98, %c1 : index
    cf.br ^bb11(%120 : index)
  ^bb17:  // pred: ^bb11
    %121 = arith.addi %95, %c1 : index
    cf.br ^bb10(%121 : index)
  ^bb18:  // pred: ^bb10
    %122 = llvm.mlir.constant(16 : index) : i64
    %123 = llvm.mlir.constant(16 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.constant(256 : index) : i64
    %126 = llvm.mlir.zero : !llvm.ptr
    %127 = llvm.getelementptr %126[%125] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %128 = llvm.ptrtoint %127 : !llvm.ptr to i64
    %129 = llvm.mlir.constant(32 : index) : i64
    %130 = llvm.add %128, %129  : i64
    %131 = llvm.call @malloc(%130) : (i64) -> !llvm.ptr
    %132 = llvm.ptrtoint %131 : !llvm.ptr to i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.sub %129, %133  : i64
    %135 = llvm.add %132, %134  : i64
    %136 = llvm.urem %135, %129  : i64
    %137 = llvm.sub %135, %136  : i64
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
    cf.br ^bb19(%c0 : index)
  ^bb19(%148: index):  // 2 preds: ^bb18, ^bb22
    %149 = builtin.unrealized_conversion_cast %148 : index to i64
    %150 = arith.cmpi slt, %148, %c16 : index
    cf.cond_br %150, ^bb20(%c0 : index), ^bb23
  ^bb20(%151: index):  // 2 preds: ^bb19, ^bb21
    %152 = builtin.unrealized_conversion_cast %151 : index to i64
    %153 = arith.cmpi slt, %151, %c16 : index
    cf.cond_br %153, ^bb21, ^bb22
  ^bb21:  // pred: ^bb20
    %154 = llvm.extractvalue %147[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %155 = llvm.mlir.constant(16 : index) : i64
    %156 = llvm.mul %149, %155  : i64
    %157 = llvm.add %156, %152  : i64
    %158 = llvm.getelementptr %154[%157] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst, %158 : f64, !llvm.ptr
    %159 = arith.addi %151, %c1 : index
    cf.br ^bb20(%159 : index)
  ^bb22:  // pred: ^bb20
    %160 = arith.addi %148, %c1 : index
    cf.br ^bb19(%160 : index)
  ^bb23:  // pred: ^bb19
    %161 = llvm.mlir.constant(16 : index) : i64
    %162 = llvm.mlir.constant(16 : index) : i64
    %163 = llvm.mlir.constant(16 : index) : i64
    %164 = llvm.mlir.constant(16 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.constant(256 : index) : i64
    %167 = llvm.mlir.constant(4096 : index) : i64
    %168 = llvm.mlir.constant(65536 : index) : i64
    %169 = llvm.mlir.zero : !llvm.ptr
    %170 = llvm.getelementptr %169[%168] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %171 = llvm.ptrtoint %170 : !llvm.ptr to i64
    %172 = llvm.mlir.constant(32 : index) : i64
    %173 = llvm.add %171, %172  : i64
    %174 = llvm.call @malloc(%173) : (i64) -> !llvm.ptr
    %175 = llvm.ptrtoint %174 : !llvm.ptr to i64
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.sub %172, %176  : i64
    %178 = llvm.add %175, %177  : i64
    %179 = llvm.urem %178, %172  : i64
    %180 = llvm.sub %178, %179  : i64
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
    cf.br ^bb24(%c0 : index)
  ^bb24(%195: index):  // 2 preds: ^bb23, ^bb31
    %196 = builtin.unrealized_conversion_cast %195 : index to i64
    %197 = arith.cmpi slt, %195, %c16 : index
    cf.cond_br %197, ^bb25(%c0 : index), ^bb32
  ^bb25(%198: index):  // 2 preds: ^bb24, ^bb30
    %199 = builtin.unrealized_conversion_cast %198 : index to i64
    %200 = arith.cmpi slt, %198, %c16 : index
    cf.cond_br %200, ^bb26(%c0 : index), ^bb31
  ^bb26(%201: index):  // 2 preds: ^bb25, ^bb29
    %202 = builtin.unrealized_conversion_cast %201 : index to i64
    %203 = arith.cmpi slt, %201, %c16 : index
    cf.cond_br %203, ^bb27(%c0 : index), ^bb30
  ^bb27(%204: index):  // 2 preds: ^bb26, ^bb28
    %205 = builtin.unrealized_conversion_cast %204 : index to i64
    %206 = arith.cmpi slt, %204, %c16 : index
    cf.cond_br %206, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %207 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.mlir.constant(4096 : index) : i64
    %209 = llvm.mul %196, %208  : i64
    %210 = llvm.mlir.constant(256 : index) : i64
    %211 = llvm.mul %199, %210  : i64
    %212 = llvm.add %209, %211  : i64
    %213 = llvm.mlir.constant(16 : index) : i64
    %214 = llvm.mul %202, %213  : i64
    %215 = llvm.add %212, %214  : i64
    %216 = llvm.add %215, %205  : i64
    %217 = llvm.getelementptr %207[%216] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %218 = llvm.load %217 : !llvm.ptr -> f64
    %219 = llvm.extractvalue %194[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.mlir.constant(4096 : index) : i64
    %221 = llvm.mul %196, %220  : i64
    %222 = llvm.mlir.constant(256 : index) : i64
    %223 = llvm.mul %202, %222  : i64
    %224 = llvm.add %221, %223  : i64
    %225 = llvm.mlir.constant(16 : index) : i64
    %226 = llvm.mul %205, %225  : i64
    %227 = llvm.add %224, %226  : i64
    %228 = llvm.add %227, %199  : i64
    %229 = llvm.getelementptr %219[%228] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %218, %229 : f64, !llvm.ptr
    %230 = arith.addi %204, %c1 : index
    cf.br ^bb27(%230 : index)
  ^bb29:  // pred: ^bb27
    %231 = arith.addi %201, %c1 : index
    cf.br ^bb26(%231 : index)
  ^bb30:  // pred: ^bb26
    %232 = arith.addi %198, %c1 : index
    cf.br ^bb25(%232 : index)
  ^bb31:  // pred: ^bb25
    %233 = arith.addi %195, %c1 : index
    cf.br ^bb24(%233 : index)
  ^bb32:  // pred: ^bb24
    cf.br ^bb33(%c0 : index)
  ^bb33(%234: index):  // 2 preds: ^bb32, ^bb43
    %235 = arith.cmpi slt, %234, %c4096 : index
    cf.cond_br %235, ^bb34, ^bb44
  ^bb34:  // pred: ^bb33
    %236 = arith.subi %c4096, %234 : index
    %237 = arith.cmpi slt, %236, %c3072 : index
    %238 = arith.select %237, %236, %c3072 : index
    %c16_2 = arith.constant 16 : index
    %239 = arith.muli %234, %c16_2 : index
    cf.br ^bb35(%c0 : index)
  ^bb35(%240: index):  // 2 preds: ^bb34, ^bb42
    %241 = arith.cmpi slt, %240, %c16 : index
    cf.cond_br %241, ^bb36, ^bb43
  ^bb36:  // pred: ^bb35
    %242 = arith.subi %c16, %240 : index
    %243 = arith.cmpi slt, %242, %c6 : index
    %244 = arith.select %243, %242, %c6 : index
    %245 = builtin.unrealized_conversion_cast %244 : index to i64
    cf.br ^bb37(%c0 : index)
  ^bb37(%246: index):  // 2 preds: ^bb36, ^bb41
    %247 = arith.cmpi slt, %246, %c16 : index
    cf.cond_br %247, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    %248 = arith.subi %c16, %246 : index
    %249 = arith.cmpi slt, %248, %c8 : index
    %250 = arith.select %249, %248, %c8 : index
    %251 = builtin.unrealized_conversion_cast %250 : index to i64
    cf.br ^bb39(%c0 : index)
  ^bb39(%252: index):  // 2 preds: ^bb38, ^bb40
    %253 = arith.cmpi slt, %252, %238 : index
    cf.cond_br %253, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %254 = arith.subi %238, %252 : index
    %255 = arith.cmpi slt, %254, %c3072 : index
    %256 = arith.select %255, %254, %c3072 : index
    %257 = builtin.unrealized_conversion_cast %256 : index to i64
    %c4096_3 = arith.constant 4096 : index
    %258 = arith.muli %246, %c4096_3 : index
    %259 = arith.addi %234, %258 : index
    %260 = arith.addi %259, %252 : index
    %261 = builtin.unrealized_conversion_cast %260 : index to i64
    %262 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %263 = llvm.extractvalue %194[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.extractvalue %194[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.insertvalue %263, %262[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %266 = llvm.insertvalue %264, %265[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %267 = llvm.insertvalue %261, %266[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %268 = llvm.insertvalue %251, %267[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %269 = llvm.mlir.constant(4096 : index) : i64
    %270 = llvm.insertvalue %269, %268[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %271 = llvm.insertvalue %257, %270[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %272 = llvm.mlir.constant(1 : index) : i64
    %273 = llvm.insertvalue %272, %271[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %c16_4 = arith.constant 16 : index
    %274 = arith.muli %252, %c16_4 : index
    %275 = arith.addi %239, %274 : index
    %276 = arith.addi %275, %240 : index
    %277 = builtin.unrealized_conversion_cast %276 : index to i64
    %278 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %279 = llvm.extractvalue %94[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.extractvalue %94[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.insertvalue %279, %278[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %282 = llvm.insertvalue %280, %281[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %283 = llvm.insertvalue %277, %282[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %284 = llvm.insertvalue %257, %283[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %285 = llvm.mlir.constant(16 : index) : i64
    %286 = llvm.insertvalue %285, %284[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %287 = llvm.insertvalue %245, %286[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %288 = llvm.mlir.constant(1 : index) : i64
    %289 = llvm.insertvalue %288, %287[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %c16_5 = arith.constant 16 : index
    %290 = arith.muli %246, %c16_5 : index
    %291 = arith.addi %290, %240 : index
    %292 = builtin.unrealized_conversion_cast %291 : index to i64
    %293 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %294 = llvm.extractvalue %147[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %295 = llvm.extractvalue %147[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %296 = llvm.insertvalue %294, %293[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %297 = llvm.insertvalue %295, %296[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %298 = llvm.insertvalue %292, %297[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %299 = llvm.insertvalue %251, %298[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %300 = llvm.mlir.constant(16 : index) : i64
    %301 = llvm.insertvalue %300, %299[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %302 = llvm.insertvalue %245, %301[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %303 = llvm.mlir.constant(1 : index) : i64
    %304 = llvm.insertvalue %303, %302[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %305 = builtin.unrealized_conversion_cast %273 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    %306 = builtin.unrealized_conversion_cast %289 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    %307 = builtin.unrealized_conversion_cast %304 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    call @linalg_matmul_viewsxs_viewsxs_viewsxs(%305, %306, %307, %c8_i32, %c6_i32) : (memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) -> ()
    %308 = arith.addi %252, %c3072 : index
    cf.br ^bb39(%308 : index)
  ^bb41:  // pred: ^bb39
    %309 = arith.addi %246, %c8 : index
    cf.br ^bb37(%309 : index)
  ^bb42:  // pred: ^bb37
    %310 = arith.addi %240, %c6 : index
    cf.br ^bb35(%310 : index)
  ^bb43:  // pred: ^bb35
    %311 = arith.addi %234, %c3072 : index
    cf.br ^bb33(%311 : index)
  ^bb44:  // pred: ^bb33
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.alloca %312 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %147, %313 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %314 = llvm.mlir.constant(2 : index) : i64
    %315 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %316 = llvm.insertvalue %314, %315[0] : !llvm.struct<(i64, ptr)> 
    %317 = llvm.insertvalue %313, %316[1] : !llvm.struct<(i64, ptr)> 
    %318 = builtin.unrealized_conversion_cast %317 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    call @comet_print_memref_f64(%318) : (memref<*xf64>) -> ()
    %319 = llvm.extractvalue %194[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @free(%319) : (!llvm.ptr) -> ()
    return
  }
  func.func private @getTime() -> f64
  func.func private @linalg_matmul_viewsxs_viewsxs_viewsxs(memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) attributes {llvm.emit_c_interface}
  func.func private @print_flops(f64)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertFuncToLLVMPass (convert-func-to-llvm) //----- //
module {
  llvm.func @free(!llvm.ptr)
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(1 : index) : i64
    %1 = llvm.mlir.constant(16 : index) : i64
    %2 = llvm.mlir.constant(6 : i32) : i32
    %3 = llvm.mlir.constant(8 : i32) : i32
    %4 = llvm.mlir.constant(8 : index) : i64
    %5 = llvm.mlir.constant(6 : index) : i64
    %6 = llvm.mlir.constant(3072 : index) : i64
    %7 = llvm.mlir.constant(4096 : index) : i64
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %10 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %11 = llvm.mlir.constant(2.300000e+00 : f64) : f64
    %12 = llvm.mlir.constant(16 : index) : i64
    %13 = llvm.mlir.constant(16 : index) : i64
    %14 = llvm.mlir.constant(16 : index) : i64
    %15 = llvm.mlir.constant(16 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(256 : index) : i64
    %18 = llvm.mlir.constant(4096 : index) : i64
    %19 = llvm.mlir.constant(65536 : index) : i64
    %20 = llvm.mlir.zero : !llvm.ptr
    %21 = llvm.getelementptr %20[%19] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %22 = llvm.ptrtoint %21 : !llvm.ptr to i64
    %23 = llvm.mlir.constant(32 : index) : i64
    %24 = llvm.add %22, %23  : i64
    %25 = llvm.call @malloc(%24) : (i64) -> !llvm.ptr
    %26 = llvm.ptrtoint %25 : !llvm.ptr to i64
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.sub %23, %27  : i64
    %29 = llvm.add %26, %28  : i64
    %30 = llvm.urem %29, %23  : i64
    %31 = llvm.sub %29, %30  : i64
    %32 = llvm.inttoptr %31 : i64 to !llvm.ptr
    %33 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %34 = llvm.insertvalue %25, %33[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.insertvalue %36, %35[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %12, %37[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %13, %38[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %14, %39[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %15, %40[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %18, %41[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %17, %42[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %15, %43[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %16, %44[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb1(%8 : i64)
  ^bb1(%46: i64):  // 2 preds: ^bb0, ^bb8
    %47 = builtin.unrealized_conversion_cast %46 : i64 to index
    %48 = builtin.unrealized_conversion_cast %47 : index to i64
    %49 = llvm.icmp "slt" %46, %1 : i64
    llvm.cond_br %49, ^bb2(%8 : i64), ^bb9
  ^bb2(%50: i64):  // 2 preds: ^bb1, ^bb7
    %51 = builtin.unrealized_conversion_cast %50 : i64 to index
    %52 = builtin.unrealized_conversion_cast %51 : index to i64
    %53 = llvm.icmp "slt" %50, %1 : i64
    llvm.cond_br %53, ^bb3(%8 : i64), ^bb8
  ^bb3(%54: i64):  // 2 preds: ^bb2, ^bb6
    %55 = builtin.unrealized_conversion_cast %54 : i64 to index
    %56 = builtin.unrealized_conversion_cast %55 : index to i64
    %57 = llvm.icmp "slt" %54, %1 : i64
    llvm.cond_br %57, ^bb4(%8 : i64), ^bb7
  ^bb4(%58: i64):  // 2 preds: ^bb3, ^bb5
    %59 = builtin.unrealized_conversion_cast %58 : i64 to index
    %60 = builtin.unrealized_conversion_cast %59 : index to i64
    %61 = llvm.icmp "slt" %58, %1 : i64
    llvm.cond_br %61, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %62 = llvm.extractvalue %45[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(4096 : index) : i64
    %64 = llvm.mul %48, %63  : i64
    %65 = llvm.mlir.constant(256 : index) : i64
    %66 = llvm.mul %52, %65  : i64
    %67 = llvm.add %64, %66  : i64
    %68 = llvm.mlir.constant(16 : index) : i64
    %69 = llvm.mul %56, %68  : i64
    %70 = llvm.add %67, %69  : i64
    %71 = llvm.add %70, %60  : i64
    %72 = llvm.getelementptr %62[%71] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %11, %72 : f64, !llvm.ptr
    %73 = llvm.add %58, %0  : i64
    llvm.br ^bb4(%73 : i64)
  ^bb6:  // pred: ^bb4
    %74 = llvm.add %54, %0  : i64
    llvm.br ^bb3(%74 : i64)
  ^bb7:  // pred: ^bb3
    %75 = llvm.add %50, %0  : i64
    llvm.br ^bb2(%75 : i64)
  ^bb8:  // pred: ^bb2
    %76 = llvm.add %46, %0  : i64
    llvm.br ^bb1(%76 : i64)
  ^bb9:  // pred: ^bb1
    %77 = llvm.mlir.constant(16 : index) : i64
    %78 = llvm.mlir.constant(16 : index) : i64
    %79 = llvm.mlir.constant(16 : index) : i64
    %80 = llvm.mlir.constant(16 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(256 : index) : i64
    %83 = llvm.mlir.constant(4096 : index) : i64
    %84 = llvm.mlir.constant(65536 : index) : i64
    %85 = llvm.mlir.zero : !llvm.ptr
    %86 = llvm.getelementptr %85[%84] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %87 = llvm.ptrtoint %86 : !llvm.ptr to i64
    %88 = llvm.mlir.constant(32 : index) : i64
    %89 = llvm.add %87, %88  : i64
    %90 = llvm.call @malloc(%89) : (i64) -> !llvm.ptr
    %91 = llvm.ptrtoint %90 : !llvm.ptr to i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.sub %88, %92  : i64
    %94 = llvm.add %91, %93  : i64
    %95 = llvm.urem %94, %88  : i64
    %96 = llvm.sub %94, %95  : i64
    %97 = llvm.inttoptr %96 : i64 to !llvm.ptr
    %98 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %99 = llvm.insertvalue %90, %98[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %97, %99[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.mlir.constant(0 : index) : i64
    %102 = llvm.insertvalue %101, %100[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.insertvalue %77, %102[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.insertvalue %78, %103[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.insertvalue %79, %104[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.insertvalue %80, %105[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.insertvalue %83, %106[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.insertvalue %82, %107[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.insertvalue %80, %108[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %81, %109[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb10(%8 : i64)
  ^bb10(%111: i64):  // 2 preds: ^bb9, ^bb17
    %112 = builtin.unrealized_conversion_cast %111 : i64 to index
    %113 = builtin.unrealized_conversion_cast %112 : index to i64
    %114 = llvm.icmp "slt" %111, %1 : i64
    llvm.cond_br %114, ^bb11(%8 : i64), ^bb18
  ^bb11(%115: i64):  // 2 preds: ^bb10, ^bb16
    %116 = builtin.unrealized_conversion_cast %115 : i64 to index
    %117 = builtin.unrealized_conversion_cast %116 : index to i64
    %118 = llvm.icmp "slt" %115, %1 : i64
    llvm.cond_br %118, ^bb12(%8 : i64), ^bb17
  ^bb12(%119: i64):  // 2 preds: ^bb11, ^bb15
    %120 = builtin.unrealized_conversion_cast %119 : i64 to index
    %121 = builtin.unrealized_conversion_cast %120 : index to i64
    %122 = llvm.icmp "slt" %119, %1 : i64
    llvm.cond_br %122, ^bb13(%8 : i64), ^bb16
  ^bb13(%123: i64):  // 2 preds: ^bb12, ^bb14
    %124 = builtin.unrealized_conversion_cast %123 : i64 to index
    %125 = builtin.unrealized_conversion_cast %124 : index to i64
    %126 = llvm.icmp "slt" %123, %1 : i64
    llvm.cond_br %126, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %127 = llvm.extractvalue %110[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.mlir.constant(4096 : index) : i64
    %129 = llvm.mul %113, %128  : i64
    %130 = llvm.mlir.constant(256 : index) : i64
    %131 = llvm.mul %117, %130  : i64
    %132 = llvm.add %129, %131  : i64
    %133 = llvm.mlir.constant(16 : index) : i64
    %134 = llvm.mul %121, %133  : i64
    %135 = llvm.add %132, %134  : i64
    %136 = llvm.add %135, %125  : i64
    %137 = llvm.getelementptr %127[%136] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %10, %137 : f64, !llvm.ptr
    %138 = llvm.add %123, %0  : i64
    llvm.br ^bb13(%138 : i64)
  ^bb15:  // pred: ^bb13
    %139 = llvm.add %119, %0  : i64
    llvm.br ^bb12(%139 : i64)
  ^bb16:  // pred: ^bb12
    %140 = llvm.add %115, %0  : i64
    llvm.br ^bb11(%140 : i64)
  ^bb17:  // pred: ^bb11
    %141 = llvm.add %111, %0  : i64
    llvm.br ^bb10(%141 : i64)
  ^bb18:  // pred: ^bb10
    %142 = llvm.mlir.constant(16 : index) : i64
    %143 = llvm.mlir.constant(16 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.mlir.constant(256 : index) : i64
    %146 = llvm.mlir.zero : !llvm.ptr
    %147 = llvm.getelementptr %146[%145] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %148 = llvm.ptrtoint %147 : !llvm.ptr to i64
    %149 = llvm.mlir.constant(32 : index) : i64
    %150 = llvm.add %148, %149  : i64
    %151 = llvm.call @malloc(%150) : (i64) -> !llvm.ptr
    %152 = llvm.ptrtoint %151 : !llvm.ptr to i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.sub %149, %153  : i64
    %155 = llvm.add %152, %154  : i64
    %156 = llvm.urem %155, %149  : i64
    %157 = llvm.sub %155, %156  : i64
    %158 = llvm.inttoptr %157 : i64 to !llvm.ptr
    %159 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %160 = llvm.insertvalue %151, %159[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %161 = llvm.insertvalue %158, %160[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %162 = llvm.mlir.constant(0 : index) : i64
    %163 = llvm.insertvalue %162, %161[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %164 = llvm.insertvalue %142, %163[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %165 = llvm.insertvalue %143, %164[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %166 = llvm.insertvalue %143, %165[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %167 = llvm.insertvalue %144, %166[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb19(%8 : i64)
  ^bb19(%168: i64):  // 2 preds: ^bb18, ^bb22
    %169 = builtin.unrealized_conversion_cast %168 : i64 to index
    %170 = builtin.unrealized_conversion_cast %169 : index to i64
    %171 = llvm.icmp "slt" %168, %1 : i64
    llvm.cond_br %171, ^bb20(%8 : i64), ^bb23
  ^bb20(%172: i64):  // 2 preds: ^bb19, ^bb21
    %173 = builtin.unrealized_conversion_cast %172 : i64 to index
    %174 = builtin.unrealized_conversion_cast %173 : index to i64
    %175 = llvm.icmp "slt" %172, %1 : i64
    llvm.cond_br %175, ^bb21, ^bb22
  ^bb21:  // pred: ^bb20
    %176 = llvm.extractvalue %167[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %177 = llvm.mlir.constant(16 : index) : i64
    %178 = llvm.mul %170, %177  : i64
    %179 = llvm.add %178, %174  : i64
    %180 = llvm.getelementptr %176[%179] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %9, %180 : f64, !llvm.ptr
    %181 = llvm.add %172, %0  : i64
    llvm.br ^bb20(%181 : i64)
  ^bb22:  // pred: ^bb20
    %182 = llvm.add %168, %0  : i64
    llvm.br ^bb19(%182 : i64)
  ^bb23:  // pred: ^bb19
    %183 = llvm.mlir.constant(16 : index) : i64
    %184 = llvm.mlir.constant(16 : index) : i64
    %185 = llvm.mlir.constant(16 : index) : i64
    %186 = llvm.mlir.constant(16 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    %188 = llvm.mlir.constant(256 : index) : i64
    %189 = llvm.mlir.constant(4096 : index) : i64
    %190 = llvm.mlir.constant(65536 : index) : i64
    %191 = llvm.mlir.zero : !llvm.ptr
    %192 = llvm.getelementptr %191[%190] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %193 = llvm.ptrtoint %192 : !llvm.ptr to i64
    %194 = llvm.mlir.constant(32 : index) : i64
    %195 = llvm.add %193, %194  : i64
    %196 = llvm.call @malloc(%195) : (i64) -> !llvm.ptr
    %197 = llvm.ptrtoint %196 : !llvm.ptr to i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.sub %194, %198  : i64
    %200 = llvm.add %197, %199  : i64
    %201 = llvm.urem %200, %194  : i64
    %202 = llvm.sub %200, %201  : i64
    %203 = llvm.inttoptr %202 : i64 to !llvm.ptr
    %204 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %205 = llvm.insertvalue %196, %204[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %206 = llvm.insertvalue %203, %205[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %207 = llvm.mlir.constant(0 : index) : i64
    %208 = llvm.insertvalue %207, %206[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.insertvalue %183, %208[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.insertvalue %184, %209[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.insertvalue %185, %210[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.insertvalue %186, %211[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.insertvalue %189, %212[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.insertvalue %188, %213[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.insertvalue %186, %214[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.insertvalue %187, %215[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb24(%8 : i64)
  ^bb24(%217: i64):  // 2 preds: ^bb23, ^bb31
    %218 = builtin.unrealized_conversion_cast %217 : i64 to index
    %219 = builtin.unrealized_conversion_cast %218 : index to i64
    %220 = llvm.icmp "slt" %217, %1 : i64
    llvm.cond_br %220, ^bb25(%8 : i64), ^bb32
  ^bb25(%221: i64):  // 2 preds: ^bb24, ^bb30
    %222 = builtin.unrealized_conversion_cast %221 : i64 to index
    %223 = builtin.unrealized_conversion_cast %222 : index to i64
    %224 = llvm.icmp "slt" %221, %1 : i64
    llvm.cond_br %224, ^bb26(%8 : i64), ^bb31
  ^bb26(%225: i64):  // 2 preds: ^bb25, ^bb29
    %226 = builtin.unrealized_conversion_cast %225 : i64 to index
    %227 = builtin.unrealized_conversion_cast %226 : index to i64
    %228 = llvm.icmp "slt" %225, %1 : i64
    llvm.cond_br %228, ^bb27(%8 : i64), ^bb30
  ^bb27(%229: i64):  // 2 preds: ^bb26, ^bb28
    %230 = builtin.unrealized_conversion_cast %229 : i64 to index
    %231 = builtin.unrealized_conversion_cast %230 : index to i64
    %232 = llvm.icmp "slt" %229, %1 : i64
    llvm.cond_br %232, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %233 = llvm.extractvalue %45[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.mlir.constant(4096 : index) : i64
    %235 = llvm.mul %219, %234  : i64
    %236 = llvm.mlir.constant(256 : index) : i64
    %237 = llvm.mul %223, %236  : i64
    %238 = llvm.add %235, %237  : i64
    %239 = llvm.mlir.constant(16 : index) : i64
    %240 = llvm.mul %227, %239  : i64
    %241 = llvm.add %238, %240  : i64
    %242 = llvm.add %241, %231  : i64
    %243 = llvm.getelementptr %233[%242] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %244 = llvm.load %243 : !llvm.ptr -> f64
    %245 = llvm.extractvalue %216[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.mlir.constant(4096 : index) : i64
    %247 = llvm.mul %219, %246  : i64
    %248 = llvm.mlir.constant(256 : index) : i64
    %249 = llvm.mul %227, %248  : i64
    %250 = llvm.add %247, %249  : i64
    %251 = llvm.mlir.constant(16 : index) : i64
    %252 = llvm.mul %231, %251  : i64
    %253 = llvm.add %250, %252  : i64
    %254 = llvm.add %253, %223  : i64
    %255 = llvm.getelementptr %245[%254] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %244, %255 : f64, !llvm.ptr
    %256 = llvm.add %229, %0  : i64
    llvm.br ^bb27(%256 : i64)
  ^bb29:  // pred: ^bb27
    %257 = llvm.add %225, %0  : i64
    llvm.br ^bb26(%257 : i64)
  ^bb30:  // pred: ^bb26
    %258 = llvm.add %221, %0  : i64
    llvm.br ^bb25(%258 : i64)
  ^bb31:  // pred: ^bb25
    %259 = llvm.add %217, %0  : i64
    llvm.br ^bb24(%259 : i64)
  ^bb32:  // pred: ^bb24
    llvm.br ^bb33(%8 : i64)
  ^bb33(%260: i64):  // 2 preds: ^bb32, ^bb43
    %261 = llvm.icmp "slt" %260, %7 : i64
    llvm.cond_br %261, ^bb34, ^bb44
  ^bb34:  // pred: ^bb33
    %262 = llvm.sub %7, %260  : i64
    %263 = llvm.icmp "slt" %262, %6 : i64
    %264 = llvm.select %263, %262, %6 : i1, i64
    %265 = llvm.mlir.constant(16 : index) : i64
    %266 = llvm.mul %260, %265  : i64
    llvm.br ^bb35(%8 : i64)
  ^bb35(%267: i64):  // 2 preds: ^bb34, ^bb42
    %268 = llvm.icmp "slt" %267, %1 : i64
    llvm.cond_br %268, ^bb36, ^bb43
  ^bb36:  // pred: ^bb35
    %269 = llvm.sub %1, %267  : i64
    %270 = llvm.icmp "slt" %269, %5 : i64
    %271 = llvm.select %270, %269, %5 : i1, i64
    %272 = builtin.unrealized_conversion_cast %271 : i64 to index
    %273 = builtin.unrealized_conversion_cast %272 : index to i64
    llvm.br ^bb37(%8 : i64)
  ^bb37(%274: i64):  // 2 preds: ^bb36, ^bb41
    %275 = llvm.icmp "slt" %274, %1 : i64
    llvm.cond_br %275, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    %276 = llvm.sub %1, %274  : i64
    %277 = llvm.icmp "slt" %276, %4 : i64
    %278 = llvm.select %277, %276, %4 : i1, i64
    %279 = builtin.unrealized_conversion_cast %278 : i64 to index
    %280 = builtin.unrealized_conversion_cast %279 : index to i64
    llvm.br ^bb39(%8 : i64)
  ^bb39(%281: i64):  // 2 preds: ^bb38, ^bb40
    %282 = llvm.icmp "slt" %281, %264 : i64
    llvm.cond_br %282, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %283 = llvm.sub %264, %281  : i64
    %284 = llvm.icmp "slt" %283, %6 : i64
    %285 = llvm.select %284, %283, %6 : i1, i64
    %286 = builtin.unrealized_conversion_cast %285 : i64 to index
    %287 = builtin.unrealized_conversion_cast %286 : index to i64
    %288 = llvm.mlir.constant(4096 : index) : i64
    %289 = llvm.mul %274, %288  : i64
    %290 = llvm.add %260, %289  : i64
    %291 = llvm.add %290, %281  : i64
    %292 = builtin.unrealized_conversion_cast %291 : i64 to index
    %293 = builtin.unrealized_conversion_cast %292 : index to i64
    %294 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %295 = llvm.extractvalue %216[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.extractvalue %216[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.insertvalue %295, %294[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %298 = llvm.insertvalue %296, %297[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %299 = llvm.insertvalue %293, %298[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %300 = llvm.insertvalue %280, %299[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %301 = llvm.mlir.constant(4096 : index) : i64
    %302 = llvm.insertvalue %301, %300[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %303 = llvm.insertvalue %287, %302[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %304 = llvm.mlir.constant(1 : index) : i64
    %305 = llvm.insertvalue %304, %303[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %306 = llvm.mlir.constant(16 : index) : i64
    %307 = llvm.mul %281, %306  : i64
    %308 = llvm.add %266, %307  : i64
    %309 = llvm.add %308, %267  : i64
    %310 = builtin.unrealized_conversion_cast %309 : i64 to index
    %311 = builtin.unrealized_conversion_cast %310 : index to i64
    %312 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %313 = llvm.extractvalue %110[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.extractvalue %110[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %315 = llvm.insertvalue %313, %312[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %316 = llvm.insertvalue %314, %315[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %317 = llvm.insertvalue %311, %316[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %318 = llvm.insertvalue %287, %317[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %319 = llvm.mlir.constant(16 : index) : i64
    %320 = llvm.insertvalue %319, %318[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %321 = llvm.insertvalue %273, %320[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %322 = llvm.mlir.constant(1 : index) : i64
    %323 = llvm.insertvalue %322, %321[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %324 = llvm.mlir.constant(16 : index) : i64
    %325 = llvm.mul %274, %324  : i64
    %326 = llvm.add %325, %267  : i64
    %327 = builtin.unrealized_conversion_cast %326 : i64 to index
    %328 = builtin.unrealized_conversion_cast %327 : index to i64
    %329 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %330 = llvm.extractvalue %167[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %331 = llvm.extractvalue %167[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %332 = llvm.insertvalue %330, %329[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %333 = llvm.insertvalue %331, %332[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %334 = llvm.insertvalue %328, %333[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %335 = llvm.insertvalue %280, %334[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %336 = llvm.mlir.constant(16 : index) : i64
    %337 = llvm.insertvalue %336, %335[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %338 = llvm.insertvalue %273, %337[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %339 = llvm.mlir.constant(1 : index) : i64
    %340 = llvm.insertvalue %339, %338[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %341 = builtin.unrealized_conversion_cast %305 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    %342 = builtin.unrealized_conversion_cast %323 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    %343 = builtin.unrealized_conversion_cast %340 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    %344 = llvm.extractvalue %305[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %345 = llvm.extractvalue %305[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %346 = llvm.extractvalue %305[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %347 = llvm.extractvalue %305[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %348 = llvm.extractvalue %305[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %349 = llvm.extractvalue %305[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %350 = llvm.extractvalue %305[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %351 = llvm.extractvalue %323[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %352 = llvm.extractvalue %323[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %353 = llvm.extractvalue %323[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %354 = llvm.extractvalue %323[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %355 = llvm.extractvalue %323[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %356 = llvm.extractvalue %323[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %357 = llvm.extractvalue %323[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %358 = llvm.extractvalue %340[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %359 = llvm.extractvalue %340[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %360 = llvm.extractvalue %340[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %361 = llvm.extractvalue %340[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %362 = llvm.extractvalue %340[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %363 = llvm.extractvalue %340[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %364 = llvm.extractvalue %340[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @linalg_matmul_viewsxs_viewsxs_viewsxs(%344, %345, %346, %347, %348, %349, %350, %351, %352, %353, %354, %355, %356, %357, %358, %359, %360, %361, %362, %363, %364, %3, %2) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i32, i32) -> ()
    %365 = llvm.add %281, %6  : i64
    llvm.br ^bb39(%365 : i64)
  ^bb41:  // pred: ^bb39
    %366 = llvm.add %274, %4  : i64
    llvm.br ^bb37(%366 : i64)
  ^bb42:  // pred: ^bb37
    %367 = llvm.add %267, %5  : i64
    llvm.br ^bb35(%367 : i64)
  ^bb43:  // pred: ^bb35
    %368 = llvm.add %260, %6  : i64
    llvm.br ^bb33(%368 : i64)
  ^bb44:  // pred: ^bb33
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.alloca %369 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %167, %370 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %371 = llvm.mlir.constant(2 : index) : i64
    %372 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %373 = llvm.insertvalue %371, %372[0] : !llvm.struct<(i64, ptr)> 
    %374 = llvm.insertvalue %370, %373[1] : !llvm.struct<(i64, ptr)> 
    %375 = builtin.unrealized_conversion_cast %374 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    %376 = llvm.extractvalue %374[0] : !llvm.struct<(i64, ptr)> 
    %377 = llvm.extractvalue %374[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%376, %377) : (i64, !llvm.ptr) -> ()
    %378 = llvm.extractvalue %216[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @free(%378) : (!llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @getTime() -> f64 attributes {sym_visibility = "private"}
  llvm.func private @linalg_matmul_viewsxs_viewsxs_viewsxs(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr, %arg8: !llvm.ptr, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: !llvm.ptr, %arg15: !llvm.ptr, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i32, %arg22: i32) attributes {llvm.emit_c_interface, sym_visibility = "private"} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.constant(1 : index) : i64
    %9 = llvm.alloca %8 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %7, %9 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %10 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %11 = llvm.insertvalue %arg7, %10[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg8, %11[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg9, %12[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg10, %13[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg12, %14[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.insertvalue %arg11, %15[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.insertvalue %arg13, %16[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.alloca %18 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %17, %19 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %20 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %21 = llvm.insertvalue %arg14, %20[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %arg15, %21[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %arg16, %22[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.insertvalue %arg17, %23[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.insertvalue %arg19, %24[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %arg18, %25[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.insertvalue %arg20, %26[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.alloca %28 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %27, %29 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    llvm.call @_mlir_ciface_linalg_matmul_viewsxs_viewsxs_viewsxs(%9, %19, %29, %arg21, %arg22) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.return
  }
  llvm.func @_mlir_ciface_linalg_matmul_viewsxs_viewsxs_viewsxs(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) attributes {llvm.emit_c_interface, sym_visibility = "private"}
  llvm.func @print_flops(f64) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


// -----// IR Dump After ConvertIndexToLLVMPass (convert-index-to-llvm) //----- //
module {
  llvm.func @free(!llvm.ptr)
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(1 : index) : i64
    %1 = llvm.mlir.constant(16 : index) : i64
    %2 = llvm.mlir.constant(6 : i32) : i32
    %3 = llvm.mlir.constant(8 : i32) : i32
    %4 = llvm.mlir.constant(8 : index) : i64
    %5 = llvm.mlir.constant(6 : index) : i64
    %6 = llvm.mlir.constant(3072 : index) : i64
    %7 = llvm.mlir.constant(4096 : index) : i64
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %10 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %11 = llvm.mlir.constant(2.300000e+00 : f64) : f64
    %12 = llvm.mlir.constant(16 : index) : i64
    %13 = llvm.mlir.constant(16 : index) : i64
    %14 = llvm.mlir.constant(16 : index) : i64
    %15 = llvm.mlir.constant(16 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(256 : index) : i64
    %18 = llvm.mlir.constant(4096 : index) : i64
    %19 = llvm.mlir.constant(65536 : index) : i64
    %20 = llvm.mlir.zero : !llvm.ptr
    %21 = llvm.getelementptr %20[%19] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %22 = llvm.ptrtoint %21 : !llvm.ptr to i64
    %23 = llvm.mlir.constant(32 : index) : i64
    %24 = llvm.add %22, %23  : i64
    %25 = llvm.call @malloc(%24) : (i64) -> !llvm.ptr
    %26 = llvm.ptrtoint %25 : !llvm.ptr to i64
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.sub %23, %27  : i64
    %29 = llvm.add %26, %28  : i64
    %30 = llvm.urem %29, %23  : i64
    %31 = llvm.sub %29, %30  : i64
    %32 = llvm.inttoptr %31 : i64 to !llvm.ptr
    %33 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %34 = llvm.insertvalue %25, %33[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.insertvalue %36, %35[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %12, %37[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %13, %38[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %14, %39[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %15, %40[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %18, %41[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %17, %42[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %15, %43[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %16, %44[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb1(%8 : i64)
  ^bb1(%46: i64):  // 2 preds: ^bb0, ^bb8
    %47 = builtin.unrealized_conversion_cast %46 : i64 to index
    %48 = llvm.icmp "slt" %46, %1 : i64
    llvm.cond_br %48, ^bb2(%8 : i64), ^bb9
  ^bb2(%49: i64):  // 2 preds: ^bb1, ^bb7
    %50 = builtin.unrealized_conversion_cast %49 : i64 to index
    %51 = llvm.icmp "slt" %49, %1 : i64
    llvm.cond_br %51, ^bb3(%8 : i64), ^bb8
  ^bb3(%52: i64):  // 2 preds: ^bb2, ^bb6
    %53 = builtin.unrealized_conversion_cast %52 : i64 to index
    %54 = llvm.icmp "slt" %52, %1 : i64
    llvm.cond_br %54, ^bb4(%8 : i64), ^bb7
  ^bb4(%55: i64):  // 2 preds: ^bb3, ^bb5
    %56 = builtin.unrealized_conversion_cast %55 : i64 to index
    %57 = llvm.icmp "slt" %55, %1 : i64
    llvm.cond_br %57, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %58 = llvm.extractvalue %45[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(4096 : index) : i64
    %60 = llvm.mul %46, %59  : i64
    %61 = llvm.mlir.constant(256 : index) : i64
    %62 = llvm.mul %49, %61  : i64
    %63 = llvm.add %60, %62  : i64
    %64 = llvm.mlir.constant(16 : index) : i64
    %65 = llvm.mul %52, %64  : i64
    %66 = llvm.add %63, %65  : i64
    %67 = llvm.add %66, %55  : i64
    %68 = llvm.getelementptr %58[%67] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %11, %68 : f64, !llvm.ptr
    %69 = llvm.add %55, %0  : i64
    llvm.br ^bb4(%69 : i64)
  ^bb6:  // pred: ^bb4
    %70 = llvm.add %52, %0  : i64
    llvm.br ^bb3(%70 : i64)
  ^bb7:  // pred: ^bb3
    %71 = llvm.add %49, %0  : i64
    llvm.br ^bb2(%71 : i64)
  ^bb8:  // pred: ^bb2
    %72 = llvm.add %46, %0  : i64
    llvm.br ^bb1(%72 : i64)
  ^bb9:  // pred: ^bb1
    %73 = llvm.mlir.constant(16 : index) : i64
    %74 = llvm.mlir.constant(16 : index) : i64
    %75 = llvm.mlir.constant(16 : index) : i64
    %76 = llvm.mlir.constant(16 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.constant(256 : index) : i64
    %79 = llvm.mlir.constant(4096 : index) : i64
    %80 = llvm.mlir.constant(65536 : index) : i64
    %81 = llvm.mlir.zero : !llvm.ptr
    %82 = llvm.getelementptr %81[%80] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %83 = llvm.ptrtoint %82 : !llvm.ptr to i64
    %84 = llvm.mlir.constant(32 : index) : i64
    %85 = llvm.add %83, %84  : i64
    %86 = llvm.call @malloc(%85) : (i64) -> !llvm.ptr
    %87 = llvm.ptrtoint %86 : !llvm.ptr to i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.sub %84, %88  : i64
    %90 = llvm.add %87, %89  : i64
    %91 = llvm.urem %90, %84  : i64
    %92 = llvm.sub %90, %91  : i64
    %93 = llvm.inttoptr %92 : i64 to !llvm.ptr
    %94 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %95 = llvm.insertvalue %86, %94[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.insertvalue %93, %95[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.mlir.constant(0 : index) : i64
    %98 = llvm.insertvalue %97, %96[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.insertvalue %73, %98[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %74, %99[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.insertvalue %75, %100[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.insertvalue %76, %101[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.insertvalue %79, %102[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.insertvalue %78, %103[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.insertvalue %76, %104[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.insertvalue %77, %105[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb10(%8 : i64)
  ^bb10(%107: i64):  // 2 preds: ^bb9, ^bb17
    %108 = builtin.unrealized_conversion_cast %107 : i64 to index
    %109 = llvm.icmp "slt" %107, %1 : i64
    llvm.cond_br %109, ^bb11(%8 : i64), ^bb18
  ^bb11(%110: i64):  // 2 preds: ^bb10, ^bb16
    %111 = builtin.unrealized_conversion_cast %110 : i64 to index
    %112 = llvm.icmp "slt" %110, %1 : i64
    llvm.cond_br %112, ^bb12(%8 : i64), ^bb17
  ^bb12(%113: i64):  // 2 preds: ^bb11, ^bb15
    %114 = builtin.unrealized_conversion_cast %113 : i64 to index
    %115 = llvm.icmp "slt" %113, %1 : i64
    llvm.cond_br %115, ^bb13(%8 : i64), ^bb16
  ^bb13(%116: i64):  // 2 preds: ^bb12, ^bb14
    %117 = builtin.unrealized_conversion_cast %116 : i64 to index
    %118 = llvm.icmp "slt" %116, %1 : i64
    llvm.cond_br %118, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %119 = llvm.extractvalue %106[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.mlir.constant(4096 : index) : i64
    %121 = llvm.mul %107, %120  : i64
    %122 = llvm.mlir.constant(256 : index) : i64
    %123 = llvm.mul %110, %122  : i64
    %124 = llvm.add %121, %123  : i64
    %125 = llvm.mlir.constant(16 : index) : i64
    %126 = llvm.mul %113, %125  : i64
    %127 = llvm.add %124, %126  : i64
    %128 = llvm.add %127, %116  : i64
    %129 = llvm.getelementptr %119[%128] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %10, %129 : f64, !llvm.ptr
    %130 = llvm.add %116, %0  : i64
    llvm.br ^bb13(%130 : i64)
  ^bb15:  // pred: ^bb13
    %131 = llvm.add %113, %0  : i64
    llvm.br ^bb12(%131 : i64)
  ^bb16:  // pred: ^bb12
    %132 = llvm.add %110, %0  : i64
    llvm.br ^bb11(%132 : i64)
  ^bb17:  // pred: ^bb11
    %133 = llvm.add %107, %0  : i64
    llvm.br ^bb10(%133 : i64)
  ^bb18:  // pred: ^bb10
    %134 = llvm.mlir.constant(16 : index) : i64
    %135 = llvm.mlir.constant(16 : index) : i64
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.mlir.constant(256 : index) : i64
    %138 = llvm.mlir.zero : !llvm.ptr
    %139 = llvm.getelementptr %138[%137] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %140 = llvm.ptrtoint %139 : !llvm.ptr to i64
    %141 = llvm.mlir.constant(32 : index) : i64
    %142 = llvm.add %140, %141  : i64
    %143 = llvm.call @malloc(%142) : (i64) -> !llvm.ptr
    %144 = llvm.ptrtoint %143 : !llvm.ptr to i64
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.sub %141, %145  : i64
    %147 = llvm.add %144, %146  : i64
    %148 = llvm.urem %147, %141  : i64
    %149 = llvm.sub %147, %148  : i64
    %150 = llvm.inttoptr %149 : i64 to !llvm.ptr
    %151 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %152 = llvm.insertvalue %143, %151[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %153 = llvm.insertvalue %150, %152[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.insertvalue %154, %153[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %156 = llvm.insertvalue %134, %155[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %157 = llvm.insertvalue %135, %156[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %158 = llvm.insertvalue %135, %157[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %159 = llvm.insertvalue %136, %158[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb19(%8 : i64)
  ^bb19(%160: i64):  // 2 preds: ^bb18, ^bb22
    %161 = builtin.unrealized_conversion_cast %160 : i64 to index
    %162 = llvm.icmp "slt" %160, %1 : i64
    llvm.cond_br %162, ^bb20(%8 : i64), ^bb23
  ^bb20(%163: i64):  // 2 preds: ^bb19, ^bb21
    %164 = builtin.unrealized_conversion_cast %163 : i64 to index
    %165 = llvm.icmp "slt" %163, %1 : i64
    llvm.cond_br %165, ^bb21, ^bb22
  ^bb21:  // pred: ^bb20
    %166 = llvm.extractvalue %159[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %167 = llvm.mlir.constant(16 : index) : i64
    %168 = llvm.mul %160, %167  : i64
    %169 = llvm.add %168, %163  : i64
    %170 = llvm.getelementptr %166[%169] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %9, %170 : f64, !llvm.ptr
    %171 = llvm.add %163, %0  : i64
    llvm.br ^bb20(%171 : i64)
  ^bb22:  // pred: ^bb20
    %172 = llvm.add %160, %0  : i64
    llvm.br ^bb19(%172 : i64)
  ^bb23:  // pred: ^bb19
    %173 = llvm.mlir.constant(16 : index) : i64
    %174 = llvm.mlir.constant(16 : index) : i64
    %175 = llvm.mlir.constant(16 : index) : i64
    %176 = llvm.mlir.constant(16 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.mlir.constant(256 : index) : i64
    %179 = llvm.mlir.constant(4096 : index) : i64
    %180 = llvm.mlir.constant(65536 : index) : i64
    %181 = llvm.mlir.zero : !llvm.ptr
    %182 = llvm.getelementptr %181[%180] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %183 = llvm.ptrtoint %182 : !llvm.ptr to i64
    %184 = llvm.mlir.constant(32 : index) : i64
    %185 = llvm.add %183, %184  : i64
    %186 = llvm.call @malloc(%185) : (i64) -> !llvm.ptr
    %187 = llvm.ptrtoint %186 : !llvm.ptr to i64
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.sub %184, %188  : i64
    %190 = llvm.add %187, %189  : i64
    %191 = llvm.urem %190, %184  : i64
    %192 = llvm.sub %190, %191  : i64
    %193 = llvm.inttoptr %192 : i64 to !llvm.ptr
    %194 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %195 = llvm.insertvalue %186, %194[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.insertvalue %193, %195[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.insertvalue %197, %196[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.insertvalue %173, %198[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.insertvalue %174, %199[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.insertvalue %175, %200[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.insertvalue %176, %201[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.insertvalue %179, %202[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.insertvalue %178, %203[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.insertvalue %176, %204[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %206 = llvm.insertvalue %177, %205[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb24(%8 : i64)
  ^bb24(%207: i64):  // 2 preds: ^bb23, ^bb31
    %208 = builtin.unrealized_conversion_cast %207 : i64 to index
    %209 = llvm.icmp "slt" %207, %1 : i64
    llvm.cond_br %209, ^bb25(%8 : i64), ^bb32
  ^bb25(%210: i64):  // 2 preds: ^bb24, ^bb30
    %211 = builtin.unrealized_conversion_cast %210 : i64 to index
    %212 = llvm.icmp "slt" %210, %1 : i64
    llvm.cond_br %212, ^bb26(%8 : i64), ^bb31
  ^bb26(%213: i64):  // 2 preds: ^bb25, ^bb29
    %214 = builtin.unrealized_conversion_cast %213 : i64 to index
    %215 = llvm.icmp "slt" %213, %1 : i64
    llvm.cond_br %215, ^bb27(%8 : i64), ^bb30
  ^bb27(%216: i64):  // 2 preds: ^bb26, ^bb28
    %217 = builtin.unrealized_conversion_cast %216 : i64 to index
    %218 = llvm.icmp "slt" %216, %1 : i64
    llvm.cond_br %218, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %219 = llvm.extractvalue %45[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.mlir.constant(4096 : index) : i64
    %221 = llvm.mul %207, %220  : i64
    %222 = llvm.mlir.constant(256 : index) : i64
    %223 = llvm.mul %210, %222  : i64
    %224 = llvm.add %221, %223  : i64
    %225 = llvm.mlir.constant(16 : index) : i64
    %226 = llvm.mul %213, %225  : i64
    %227 = llvm.add %224, %226  : i64
    %228 = llvm.add %227, %216  : i64
    %229 = llvm.getelementptr %219[%228] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %230 = llvm.load %229 : !llvm.ptr -> f64
    %231 = llvm.extractvalue %206[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.mlir.constant(4096 : index) : i64
    %233 = llvm.mul %207, %232  : i64
    %234 = llvm.mlir.constant(256 : index) : i64
    %235 = llvm.mul %213, %234  : i64
    %236 = llvm.add %233, %235  : i64
    %237 = llvm.mlir.constant(16 : index) : i64
    %238 = llvm.mul %216, %237  : i64
    %239 = llvm.add %236, %238  : i64
    %240 = llvm.add %239, %210  : i64
    %241 = llvm.getelementptr %231[%240] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %230, %241 : f64, !llvm.ptr
    %242 = llvm.add %216, %0  : i64
    llvm.br ^bb27(%242 : i64)
  ^bb29:  // pred: ^bb27
    %243 = llvm.add %213, %0  : i64
    llvm.br ^bb26(%243 : i64)
  ^bb30:  // pred: ^bb26
    %244 = llvm.add %210, %0  : i64
    llvm.br ^bb25(%244 : i64)
  ^bb31:  // pred: ^bb25
    %245 = llvm.add %207, %0  : i64
    llvm.br ^bb24(%245 : i64)
  ^bb32:  // pred: ^bb24
    llvm.br ^bb33(%8 : i64)
  ^bb33(%246: i64):  // 2 preds: ^bb32, ^bb43
    %247 = llvm.icmp "slt" %246, %7 : i64
    llvm.cond_br %247, ^bb34, ^bb44
  ^bb34:  // pred: ^bb33
    %248 = llvm.sub %7, %246  : i64
    %249 = llvm.icmp "slt" %248, %6 : i64
    %250 = llvm.select %249, %248, %6 : i1, i64
    %251 = llvm.mlir.constant(16 : index) : i64
    %252 = llvm.mul %246, %251  : i64
    llvm.br ^bb35(%8 : i64)
  ^bb35(%253: i64):  // 2 preds: ^bb34, ^bb42
    %254 = llvm.icmp "slt" %253, %1 : i64
    llvm.cond_br %254, ^bb36, ^bb43
  ^bb36:  // pred: ^bb35
    %255 = llvm.sub %1, %253  : i64
    %256 = llvm.icmp "slt" %255, %5 : i64
    %257 = llvm.select %256, %255, %5 : i1, i64
    %258 = builtin.unrealized_conversion_cast %257 : i64 to index
    llvm.br ^bb37(%8 : i64)
  ^bb37(%259: i64):  // 2 preds: ^bb36, ^bb41
    %260 = llvm.icmp "slt" %259, %1 : i64
    llvm.cond_br %260, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    %261 = llvm.sub %1, %259  : i64
    %262 = llvm.icmp "slt" %261, %4 : i64
    %263 = llvm.select %262, %261, %4 : i1, i64
    %264 = builtin.unrealized_conversion_cast %263 : i64 to index
    llvm.br ^bb39(%8 : i64)
  ^bb39(%265: i64):  // 2 preds: ^bb38, ^bb40
    %266 = llvm.icmp "slt" %265, %250 : i64
    llvm.cond_br %266, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %267 = llvm.sub %250, %265  : i64
    %268 = llvm.icmp "slt" %267, %6 : i64
    %269 = llvm.select %268, %267, %6 : i1, i64
    %270 = builtin.unrealized_conversion_cast %269 : i64 to index
    %271 = llvm.mlir.constant(4096 : index) : i64
    %272 = llvm.mul %259, %271  : i64
    %273 = llvm.add %246, %272  : i64
    %274 = llvm.add %273, %265  : i64
    %275 = builtin.unrealized_conversion_cast %274 : i64 to index
    %276 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %277 = llvm.extractvalue %206[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.extractvalue %206[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.insertvalue %277, %276[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %280 = llvm.insertvalue %278, %279[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %281 = llvm.insertvalue %274, %280[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %282 = llvm.insertvalue %263, %281[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %283 = llvm.mlir.constant(4096 : index) : i64
    %284 = llvm.insertvalue %283, %282[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %285 = llvm.insertvalue %269, %284[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.insertvalue %286, %285[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %288 = llvm.mlir.constant(16 : index) : i64
    %289 = llvm.mul %265, %288  : i64
    %290 = llvm.add %252, %289  : i64
    %291 = llvm.add %290, %253  : i64
    %292 = builtin.unrealized_conversion_cast %291 : i64 to index
    %293 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %294 = llvm.extractvalue %106[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %295 = llvm.extractvalue %106[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.insertvalue %294, %293[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %297 = llvm.insertvalue %295, %296[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %298 = llvm.insertvalue %291, %297[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %299 = llvm.insertvalue %269, %298[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %300 = llvm.mlir.constant(16 : index) : i64
    %301 = llvm.insertvalue %300, %299[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %302 = llvm.insertvalue %257, %301[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %303 = llvm.mlir.constant(1 : index) : i64
    %304 = llvm.insertvalue %303, %302[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %305 = llvm.mlir.constant(16 : index) : i64
    %306 = llvm.mul %259, %305  : i64
    %307 = llvm.add %306, %253  : i64
    %308 = builtin.unrealized_conversion_cast %307 : i64 to index
    %309 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %310 = llvm.extractvalue %159[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %311 = llvm.extractvalue %159[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %312 = llvm.insertvalue %310, %309[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %313 = llvm.insertvalue %311, %312[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %314 = llvm.insertvalue %307, %313[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %315 = llvm.insertvalue %263, %314[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %316 = llvm.mlir.constant(16 : index) : i64
    %317 = llvm.insertvalue %316, %315[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %318 = llvm.insertvalue %257, %317[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %319 = llvm.mlir.constant(1 : index) : i64
    %320 = llvm.insertvalue %319, %318[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %321 = builtin.unrealized_conversion_cast %287 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    %322 = builtin.unrealized_conversion_cast %304 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    %323 = builtin.unrealized_conversion_cast %320 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<?x?xf64, strided<[?, ?], offset: ?>>
    %324 = llvm.extractvalue %287[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %325 = llvm.extractvalue %287[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %326 = llvm.extractvalue %287[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %327 = llvm.extractvalue %287[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %328 = llvm.extractvalue %287[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %329 = llvm.extractvalue %287[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %330 = llvm.extractvalue %287[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %331 = llvm.extractvalue %304[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %332 = llvm.extractvalue %304[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %333 = llvm.extractvalue %304[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %334 = llvm.extractvalue %304[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %335 = llvm.extractvalue %304[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %336 = llvm.extractvalue %304[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %337 = llvm.extractvalue %304[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %338 = llvm.extractvalue %320[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %339 = llvm.extractvalue %320[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %340 = llvm.extractvalue %320[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %341 = llvm.extractvalue %320[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %342 = llvm.extractvalue %320[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %343 = llvm.extractvalue %320[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %344 = llvm.extractvalue %320[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @linalg_matmul_viewsxs_viewsxs_viewsxs(%324, %325, %326, %327, %328, %329, %330, %331, %332, %333, %334, %335, %336, %337, %338, %339, %340, %341, %342, %343, %344, %3, %2) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i32, i32) -> ()
    %345 = llvm.add %265, %6  : i64
    llvm.br ^bb39(%345 : i64)
  ^bb41:  // pred: ^bb39
    %346 = llvm.add %259, %4  : i64
    llvm.br ^bb37(%346 : i64)
  ^bb42:  // pred: ^bb37
    %347 = llvm.add %253, %5  : i64
    llvm.br ^bb35(%347 : i64)
  ^bb43:  // pred: ^bb35
    %348 = llvm.add %246, %6  : i64
    llvm.br ^bb33(%348 : i64)
  ^bb44:  // pred: ^bb33
    %349 = llvm.mlir.constant(1 : index) : i64
    %350 = llvm.alloca %349 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %159, %350 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %351 = llvm.mlir.constant(2 : index) : i64
    %352 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %353 = llvm.insertvalue %351, %352[0] : !llvm.struct<(i64, ptr)> 
    %354 = llvm.insertvalue %350, %353[1] : !llvm.struct<(i64, ptr)> 
    %355 = builtin.unrealized_conversion_cast %354 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    %356 = llvm.extractvalue %354[0] : !llvm.struct<(i64, ptr)> 
    %357 = llvm.extractvalue %354[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%356, %357) : (i64, !llvm.ptr) -> ()
    %358 = llvm.extractvalue %206[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.call @free(%358) : (!llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @getTime() -> f64 attributes {sym_visibility = "private"}
  llvm.func private @linalg_matmul_viewsxs_viewsxs_viewsxs(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr, %arg8: !llvm.ptr, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: !llvm.ptr, %arg15: !llvm.ptr, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i32, %arg22: i32) attributes {llvm.emit_c_interface, sym_visibility = "private"} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.constant(1 : index) : i64
    %9 = llvm.alloca %8 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %7, %9 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %10 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %11 = llvm.insertvalue %arg7, %10[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg8, %11[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg9, %12[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg10, %13[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg12, %14[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.insertvalue %arg11, %15[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.insertvalue %arg13, %16[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.alloca %18 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %17, %19 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %20 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %21 = llvm.insertvalue %arg14, %20[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %arg15, %21[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %arg16, %22[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.insertvalue %arg17, %23[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.insertvalue %arg19, %24[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %arg18, %25[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.insertvalue %arg20, %26[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.alloca %28 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %27, %29 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    llvm.call @_mlir_ciface_linalg_matmul_viewsxs_viewsxs_viewsxs(%9, %19, %29, %arg21, %arg22) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.return
  }
  llvm.func @_mlir_ciface_linalg_matmul_viewsxs_viewsxs_viewsxs(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) attributes {llvm.emit_c_interface, sym_visibility = "private"}
  llvm.func @print_flops(f64) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


// -----// IR Dump After ReconcileUnrealizedCasts (reconcile-unrealized-casts) //----- //
module {
  llvm.func @free(!llvm.ptr)
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(1 : index) : i64
    %1 = llvm.mlir.constant(16 : index) : i64
    %2 = llvm.mlir.constant(6 : i32) : i32
    %3 = llvm.mlir.constant(8 : i32) : i32
    %4 = llvm.mlir.constant(8 : index) : i64
    %5 = llvm.mlir.constant(6 : index) : i64
    %6 = llvm.mlir.constant(3072 : index) : i64
    %7 = llvm.mlir.constant(4096 : index) : i64
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %10 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %11 = llvm.mlir.constant(2.300000e+00 : f64) : f64
    %12 = llvm.mlir.constant(16 : index) : i64
    %13 = llvm.mlir.constant(16 : index) : i64
    %14 = llvm.mlir.constant(16 : index) : i64
    %15 = llvm.mlir.constant(16 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(256 : index) : i64
    %18 = llvm.mlir.constant(4096 : index) : i64
    %19 = llvm.mlir.constant(65536 : index) : i64
    %20 = llvm.mlir.zero : !llvm.ptr
    %21 = llvm.getelementptr %20[65536] : (!llvm.ptr) -> !llvm.ptr, f64
    %22 = llvm.ptrtoint %21 : !llvm.ptr to i64
    %23 = llvm.mlir.constant(32 : index) : i64
    %24 = llvm.add %22, %23  : i64
    %25 = llvm.call @malloc(%24) : (i64) -> !llvm.ptr
    %26 = llvm.ptrtoint %25 : !llvm.ptr to i64
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.sub %23, %27  : i64
    %29 = llvm.add %26, %28  : i64
    %30 = llvm.urem %29, %23  : i64
    %31 = llvm.sub %29, %30  : i64
    %32 = llvm.inttoptr %31 : i64 to !llvm.ptr
    %33 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %34 = llvm.insertvalue %25, %33[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.insertvalue %36, %35[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %12, %37[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %13, %38[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %14, %39[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %15, %40[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %18, %41[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %17, %42[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %15, %43[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %16, %44[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb1(%8 : i64)
  ^bb1(%46: i64):  // 2 preds: ^bb0, ^bb8
    %47 = llvm.icmp "slt" %46, %1 : i64
    llvm.cond_br %47, ^bb2(%8 : i64), ^bb9
  ^bb2(%48: i64):  // 2 preds: ^bb1, ^bb7
    %49 = llvm.icmp "slt" %48, %1 : i64
    llvm.cond_br %49, ^bb3(%8 : i64), ^bb8
  ^bb3(%50: i64):  // 2 preds: ^bb2, ^bb6
    %51 = llvm.icmp "slt" %50, %1 : i64
    llvm.cond_br %51, ^bb4(%8 : i64), ^bb7
  ^bb4(%52: i64):  // 2 preds: ^bb3, ^bb5
    %53 = llvm.icmp "slt" %52, %1 : i64
    llvm.cond_br %53, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %54 = llvm.mlir.constant(4096 : index) : i64
    %55 = llvm.mul %46, %54  : i64
    %56 = llvm.mlir.constant(256 : index) : i64
    %57 = llvm.mul %48, %56  : i64
    %58 = llvm.add %55, %57  : i64
    %59 = llvm.mlir.constant(16 : index) : i64
    %60 = llvm.mul %50, %59  : i64
    %61 = llvm.add %58, %60  : i64
    %62 = llvm.add %61, %52  : i64
    %63 = llvm.getelementptr %32[%62] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %11, %63 : f64, !llvm.ptr
    %64 = llvm.add %52, %0  : i64
    llvm.br ^bb4(%64 : i64)
  ^bb6:  // pred: ^bb4
    %65 = llvm.add %50, %0  : i64
    llvm.br ^bb3(%65 : i64)
  ^bb7:  // pred: ^bb3
    %66 = llvm.add %48, %0  : i64
    llvm.br ^bb2(%66 : i64)
  ^bb8:  // pred: ^bb2
    %67 = llvm.add %46, %0  : i64
    llvm.br ^bb1(%67 : i64)
  ^bb9:  // pred: ^bb1
    %68 = llvm.mlir.constant(16 : index) : i64
    %69 = llvm.mlir.constant(16 : index) : i64
    %70 = llvm.mlir.constant(16 : index) : i64
    %71 = llvm.mlir.constant(16 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.mlir.constant(256 : index) : i64
    %74 = llvm.mlir.constant(4096 : index) : i64
    %75 = llvm.mlir.constant(65536 : index) : i64
    %76 = llvm.mlir.zero : !llvm.ptr
    %77 = llvm.getelementptr %76[65536] : (!llvm.ptr) -> !llvm.ptr, f64
    %78 = llvm.ptrtoint %77 : !llvm.ptr to i64
    %79 = llvm.mlir.constant(32 : index) : i64
    %80 = llvm.add %78, %79  : i64
    %81 = llvm.call @malloc(%80) : (i64) -> !llvm.ptr
    %82 = llvm.ptrtoint %81 : !llvm.ptr to i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.sub %79, %83  : i64
    %85 = llvm.add %82, %84  : i64
    %86 = llvm.urem %85, %79  : i64
    %87 = llvm.sub %85, %86  : i64
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
    llvm.br ^bb10(%8 : i64)
  ^bb10(%102: i64):  // 2 preds: ^bb9, ^bb17
    %103 = llvm.icmp "slt" %102, %1 : i64
    llvm.cond_br %103, ^bb11(%8 : i64), ^bb18
  ^bb11(%104: i64):  // 2 preds: ^bb10, ^bb16
    %105 = llvm.icmp "slt" %104, %1 : i64
    llvm.cond_br %105, ^bb12(%8 : i64), ^bb17
  ^bb12(%106: i64):  // 2 preds: ^bb11, ^bb15
    %107 = llvm.icmp "slt" %106, %1 : i64
    llvm.cond_br %107, ^bb13(%8 : i64), ^bb16
  ^bb13(%108: i64):  // 2 preds: ^bb12, ^bb14
    %109 = llvm.icmp "slt" %108, %1 : i64
    llvm.cond_br %109, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %110 = llvm.mlir.constant(4096 : index) : i64
    %111 = llvm.mul %102, %110  : i64
    %112 = llvm.mlir.constant(256 : index) : i64
    %113 = llvm.mul %104, %112  : i64
    %114 = llvm.add %111, %113  : i64
    %115 = llvm.mlir.constant(16 : index) : i64
    %116 = llvm.mul %106, %115  : i64
    %117 = llvm.add %114, %116  : i64
    %118 = llvm.add %117, %108  : i64
    %119 = llvm.getelementptr %88[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %10, %119 : f64, !llvm.ptr
    %120 = llvm.add %108, %0  : i64
    llvm.br ^bb13(%120 : i64)
  ^bb15:  // pred: ^bb13
    %121 = llvm.add %106, %0  : i64
    llvm.br ^bb12(%121 : i64)
  ^bb16:  // pred: ^bb12
    %122 = llvm.add %104, %0  : i64
    llvm.br ^bb11(%122 : i64)
  ^bb17:  // pred: ^bb11
    %123 = llvm.add %102, %0  : i64
    llvm.br ^bb10(%123 : i64)
  ^bb18:  // pred: ^bb10
    %124 = llvm.mlir.constant(16 : index) : i64
    %125 = llvm.mlir.constant(16 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.mlir.constant(256 : index) : i64
    %128 = llvm.mlir.zero : !llvm.ptr
    %129 = llvm.getelementptr %128[256] : (!llvm.ptr) -> !llvm.ptr, f64
    %130 = llvm.ptrtoint %129 : !llvm.ptr to i64
    %131 = llvm.mlir.constant(32 : index) : i64
    %132 = llvm.add %130, %131  : i64
    %133 = llvm.call @malloc(%132) : (i64) -> !llvm.ptr
    %134 = llvm.ptrtoint %133 : !llvm.ptr to i64
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.sub %131, %135  : i64
    %137 = llvm.add %134, %136  : i64
    %138 = llvm.urem %137, %131  : i64
    %139 = llvm.sub %137, %138  : i64
    %140 = llvm.inttoptr %139 : i64 to !llvm.ptr
    %141 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %142 = llvm.insertvalue %133, %141[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %143 = llvm.insertvalue %140, %142[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %144 = llvm.mlir.constant(0 : index) : i64
    %145 = llvm.insertvalue %144, %143[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %146 = llvm.insertvalue %124, %145[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %147 = llvm.insertvalue %125, %146[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %148 = llvm.insertvalue %125, %147[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %149 = llvm.insertvalue %126, %148[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb19(%8 : i64)
  ^bb19(%150: i64):  // 2 preds: ^bb18, ^bb22
    %151 = llvm.icmp "slt" %150, %1 : i64
    llvm.cond_br %151, ^bb20(%8 : i64), ^bb23
  ^bb20(%152: i64):  // 2 preds: ^bb19, ^bb21
    %153 = llvm.icmp "slt" %152, %1 : i64
    llvm.cond_br %153, ^bb21, ^bb22
  ^bb21:  // pred: ^bb20
    %154 = llvm.mlir.constant(16 : index) : i64
    %155 = llvm.mul %150, %154  : i64
    %156 = llvm.add %155, %152  : i64
    %157 = llvm.getelementptr %140[%156] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %9, %157 : f64, !llvm.ptr
    %158 = llvm.add %152, %0  : i64
    llvm.br ^bb20(%158 : i64)
  ^bb22:  // pred: ^bb20
    %159 = llvm.add %150, %0  : i64
    llvm.br ^bb19(%159 : i64)
  ^bb23:  // pred: ^bb19
    %160 = llvm.mlir.constant(16 : index) : i64
    %161 = llvm.mlir.constant(16 : index) : i64
    %162 = llvm.mlir.constant(16 : index) : i64
    %163 = llvm.mlir.constant(16 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.constant(256 : index) : i64
    %166 = llvm.mlir.constant(4096 : index) : i64
    %167 = llvm.mlir.constant(65536 : index) : i64
    %168 = llvm.mlir.zero : !llvm.ptr
    %169 = llvm.getelementptr %168[65536] : (!llvm.ptr) -> !llvm.ptr, f64
    %170 = llvm.ptrtoint %169 : !llvm.ptr to i64
    %171 = llvm.mlir.constant(32 : index) : i64
    %172 = llvm.add %170, %171  : i64
    %173 = llvm.call @malloc(%172) : (i64) -> !llvm.ptr
    %174 = llvm.ptrtoint %173 : !llvm.ptr to i64
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.sub %171, %175  : i64
    %177 = llvm.add %174, %176  : i64
    %178 = llvm.urem %177, %171  : i64
    %179 = llvm.sub %177, %178  : i64
    %180 = llvm.inttoptr %179 : i64 to !llvm.ptr
    %181 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %182 = llvm.insertvalue %173, %181[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.insertvalue %180, %182[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.mlir.constant(0 : index) : i64
    %185 = llvm.insertvalue %184, %183[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.insertvalue %160, %185[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.insertvalue %161, %186[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.insertvalue %162, %187[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.insertvalue %163, %188[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.insertvalue %166, %189[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.insertvalue %165, %190[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.insertvalue %163, %191[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.insertvalue %164, %192[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb24(%8 : i64)
  ^bb24(%194: i64):  // 2 preds: ^bb23, ^bb31
    %195 = llvm.icmp "slt" %194, %1 : i64
    llvm.cond_br %195, ^bb25(%8 : i64), ^bb32
  ^bb25(%196: i64):  // 2 preds: ^bb24, ^bb30
    %197 = llvm.icmp "slt" %196, %1 : i64
    llvm.cond_br %197, ^bb26(%8 : i64), ^bb31
  ^bb26(%198: i64):  // 2 preds: ^bb25, ^bb29
    %199 = llvm.icmp "slt" %198, %1 : i64
    llvm.cond_br %199, ^bb27(%8 : i64), ^bb30
  ^bb27(%200: i64):  // 2 preds: ^bb26, ^bb28
    %201 = llvm.icmp "slt" %200, %1 : i64
    llvm.cond_br %201, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %202 = llvm.mlir.constant(4096 : index) : i64
    %203 = llvm.mul %194, %202  : i64
    %204 = llvm.mlir.constant(256 : index) : i64
    %205 = llvm.mul %196, %204  : i64
    %206 = llvm.add %203, %205  : i64
    %207 = llvm.mlir.constant(16 : index) : i64
    %208 = llvm.mul %198, %207  : i64
    %209 = llvm.add %206, %208  : i64
    %210 = llvm.add %209, %200  : i64
    %211 = llvm.getelementptr %32[%210] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %212 = llvm.load %211 : !llvm.ptr -> f64
    %213 = llvm.mlir.constant(4096 : index) : i64
    %214 = llvm.mul %194, %213  : i64
    %215 = llvm.mlir.constant(256 : index) : i64
    %216 = llvm.mul %198, %215  : i64
    %217 = llvm.add %214, %216  : i64
    %218 = llvm.mlir.constant(16 : index) : i64
    %219 = llvm.mul %200, %218  : i64
    %220 = llvm.add %217, %219  : i64
    %221 = llvm.add %220, %196  : i64
    %222 = llvm.getelementptr %180[%221] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %212, %222 : f64, !llvm.ptr
    %223 = llvm.add %200, %0  : i64
    llvm.br ^bb27(%223 : i64)
  ^bb29:  // pred: ^bb27
    %224 = llvm.add %198, %0  : i64
    llvm.br ^bb26(%224 : i64)
  ^bb30:  // pred: ^bb26
    %225 = llvm.add %196, %0  : i64
    llvm.br ^bb25(%225 : i64)
  ^bb31:  // pred: ^bb25
    %226 = llvm.add %194, %0  : i64
    llvm.br ^bb24(%226 : i64)
  ^bb32:  // pred: ^bb24
    llvm.br ^bb33(%8 : i64)
  ^bb33(%227: i64):  // 2 preds: ^bb32, ^bb43
    %228 = llvm.icmp "slt" %227, %7 : i64
    llvm.cond_br %228, ^bb34, ^bb44
  ^bb34:  // pred: ^bb33
    %229 = llvm.sub %7, %227  : i64
    %230 = llvm.icmp "slt" %229, %6 : i64
    %231 = llvm.select %230, %229, %6 : i1, i64
    %232 = llvm.mlir.constant(16 : index) : i64
    %233 = llvm.mul %227, %232  : i64
    llvm.br ^bb35(%8 : i64)
  ^bb35(%234: i64):  // 2 preds: ^bb34, ^bb42
    %235 = llvm.icmp "slt" %234, %1 : i64
    llvm.cond_br %235, ^bb36, ^bb43
  ^bb36:  // pred: ^bb35
    %236 = llvm.sub %1, %234  : i64
    %237 = llvm.icmp "slt" %236, %5 : i64
    %238 = llvm.select %237, %236, %5 : i1, i64
    llvm.br ^bb37(%8 : i64)
  ^bb37(%239: i64):  // 2 preds: ^bb36, ^bb41
    %240 = llvm.icmp "slt" %239, %1 : i64
    llvm.cond_br %240, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    %241 = llvm.sub %1, %239  : i64
    %242 = llvm.icmp "slt" %241, %4 : i64
    %243 = llvm.select %242, %241, %4 : i1, i64
    llvm.br ^bb39(%8 : i64)
  ^bb39(%244: i64):  // 2 preds: ^bb38, ^bb40
    %245 = llvm.icmp "slt" %244, %231 : i64
    llvm.cond_br %245, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %246 = llvm.sub %231, %244  : i64
    %247 = llvm.icmp "slt" %246, %6 : i64
    %248 = llvm.select %247, %246, %6 : i1, i64
    %249 = llvm.mlir.constant(4096 : index) : i64
    %250 = llvm.mul %239, %249  : i64
    %251 = llvm.add %227, %250  : i64
    %252 = llvm.add %251, %244  : i64
    %253 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %254 = llvm.insertvalue %173, %253[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %255 = llvm.insertvalue %180, %254[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %256 = llvm.insertvalue %252, %255[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %257 = llvm.insertvalue %243, %256[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %258 = llvm.mlir.constant(4096 : index) : i64
    %259 = llvm.insertvalue %258, %257[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %260 = llvm.insertvalue %248, %259[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %261 = llvm.mlir.constant(1 : index) : i64
    %262 = llvm.insertvalue %261, %260[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %263 = llvm.mlir.constant(16 : index) : i64
    %264 = llvm.mul %244, %263  : i64
    %265 = llvm.add %233, %264  : i64
    %266 = llvm.add %265, %234  : i64
    %267 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %268 = llvm.insertvalue %81, %267[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %269 = llvm.insertvalue %88, %268[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %270 = llvm.insertvalue %266, %269[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %271 = llvm.insertvalue %248, %270[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %272 = llvm.mlir.constant(16 : index) : i64
    %273 = llvm.insertvalue %272, %271[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %274 = llvm.insertvalue %238, %273[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.insertvalue %275, %274[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %277 = llvm.mlir.constant(16 : index) : i64
    %278 = llvm.mul %239, %277  : i64
    %279 = llvm.add %278, %234  : i64
    %280 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %281 = llvm.insertvalue %133, %280[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %282 = llvm.insertvalue %140, %281[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %283 = llvm.insertvalue %279, %282[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %284 = llvm.insertvalue %243, %283[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %285 = llvm.mlir.constant(16 : index) : i64
    %286 = llvm.insertvalue %285, %284[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %287 = llvm.insertvalue %238, %286[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %288 = llvm.mlir.constant(1 : index) : i64
    %289 = llvm.insertvalue %288, %287[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @linalg_matmul_viewsxs_viewsxs_viewsxs(%173, %180, %252, %243, %248, %258, %261, %81, %88, %266, %248, %238, %272, %275, %133, %140, %279, %243, %238, %285, %288, %3, %2) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i32, i32) -> ()
    %290 = llvm.add %244, %6  : i64
    llvm.br ^bb39(%290 : i64)
  ^bb41:  // pred: ^bb39
    %291 = llvm.add %239, %4  : i64
    llvm.br ^bb37(%291 : i64)
  ^bb42:  // pred: ^bb37
    %292 = llvm.add %234, %5  : i64
    llvm.br ^bb35(%292 : i64)
  ^bb43:  // pred: ^bb35
    %293 = llvm.add %227, %6  : i64
    llvm.br ^bb33(%293 : i64)
  ^bb44:  // pred: ^bb33
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.alloca %294 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %149, %295 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %296 = llvm.mlir.constant(2 : index) : i64
    %297 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %298 = llvm.insertvalue %296, %297[0] : !llvm.struct<(i64, ptr)> 
    %299 = llvm.insertvalue %295, %298[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%296, %295) : (i64, !llvm.ptr) -> ()
    llvm.call @free(%173) : (!llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @getTime() -> f64 attributes {sym_visibility = "private"}
  llvm.func private @linalg_matmul_viewsxs_viewsxs_viewsxs(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr, %arg8: !llvm.ptr, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: !llvm.ptr, %arg15: !llvm.ptr, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i32, %arg22: i32) attributes {llvm.emit_c_interface, sym_visibility = "private"} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.constant(1 : index) : i64
    %9 = llvm.alloca %8 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %7, %9 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %10 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %11 = llvm.insertvalue %arg7, %10[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg8, %11[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg9, %12[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg10, %13[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg12, %14[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.insertvalue %arg11, %15[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.insertvalue %arg13, %16[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.alloca %18 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %17, %19 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %20 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %21 = llvm.insertvalue %arg14, %20[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %arg15, %21[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %arg16, %22[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.insertvalue %arg17, %23[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.insertvalue %arg19, %24[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %arg18, %25[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.insertvalue %arg20, %26[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.alloca %28 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %27, %29 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    llvm.call @_mlir_ciface_linalg_matmul_viewsxs_viewsxs_viewsxs(%9, %19, %29, %arg21, %arg22) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.return
  }
  llvm.func @_mlir_ciface_linalg_matmul_viewsxs_viewsxs_viewsxs(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) attributes {llvm.emit_c_interface, sym_visibility = "private"}
  llvm.func @print_flops(f64) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


module {
  llvm.func @free(!llvm.ptr)
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(1 : index) : i64
    %1 = llvm.mlir.constant(16 : index) : i64
    %2 = llvm.mlir.constant(6 : i32) : i32
    %3 = llvm.mlir.constant(8 : i32) : i32
    %4 = llvm.mlir.constant(8 : index) : i64
    %5 = llvm.mlir.constant(6 : index) : i64
    %6 = llvm.mlir.constant(3072 : index) : i64
    %7 = llvm.mlir.constant(4096 : index) : i64
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %10 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %11 = llvm.mlir.constant(2.300000e+00 : f64) : f64
    %12 = llvm.mlir.constant(16 : index) : i64
    %13 = llvm.mlir.constant(16 : index) : i64
    %14 = llvm.mlir.constant(16 : index) : i64
    %15 = llvm.mlir.constant(16 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(256 : index) : i64
    %18 = llvm.mlir.constant(4096 : index) : i64
    %19 = llvm.mlir.constant(65536 : index) : i64
    %20 = llvm.mlir.zero : !llvm.ptr
    %21 = llvm.getelementptr %20[65536] : (!llvm.ptr) -> !llvm.ptr, f64
    %22 = llvm.ptrtoint %21 : !llvm.ptr to i64
    %23 = llvm.mlir.constant(32 : index) : i64
    %24 = llvm.add %22, %23  : i64
    %25 = llvm.call @malloc(%24) : (i64) -> !llvm.ptr
    %26 = llvm.ptrtoint %25 : !llvm.ptr to i64
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.sub %23, %27  : i64
    %29 = llvm.add %26, %28  : i64
    %30 = llvm.urem %29, %23  : i64
    %31 = llvm.sub %29, %30  : i64
    %32 = llvm.inttoptr %31 : i64 to !llvm.ptr
    %33 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %34 = llvm.insertvalue %25, %33[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.insertvalue %36, %35[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %12, %37[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %13, %38[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %14, %39[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %15, %40[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %18, %41[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %17, %42[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %15, %43[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %16, %44[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb1(%8 : i64)
  ^bb1(%46: i64):  // 2 preds: ^bb0, ^bb8
    %47 = llvm.icmp "slt" %46, %1 : i64
    llvm.cond_br %47, ^bb2(%8 : i64), ^bb9
  ^bb2(%48: i64):  // 2 preds: ^bb1, ^bb7
    %49 = llvm.icmp "slt" %48, %1 : i64
    llvm.cond_br %49, ^bb3(%8 : i64), ^bb8
  ^bb3(%50: i64):  // 2 preds: ^bb2, ^bb6
    %51 = llvm.icmp "slt" %50, %1 : i64
    llvm.cond_br %51, ^bb4(%8 : i64), ^bb7
  ^bb4(%52: i64):  // 2 preds: ^bb3, ^bb5
    %53 = llvm.icmp "slt" %52, %1 : i64
    llvm.cond_br %53, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %54 = llvm.mlir.constant(4096 : index) : i64
    %55 = llvm.mul %46, %54  : i64
    %56 = llvm.mlir.constant(256 : index) : i64
    %57 = llvm.mul %48, %56  : i64
    %58 = llvm.add %55, %57  : i64
    %59 = llvm.mlir.constant(16 : index) : i64
    %60 = llvm.mul %50, %59  : i64
    %61 = llvm.add %58, %60  : i64
    %62 = llvm.add %61, %52  : i64
    %63 = llvm.getelementptr %32[%62] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %11, %63 : f64, !llvm.ptr
    %64 = llvm.add %52, %0  : i64
    llvm.br ^bb4(%64 : i64)
  ^bb6:  // pred: ^bb4
    %65 = llvm.add %50, %0  : i64
    llvm.br ^bb3(%65 : i64)
  ^bb7:  // pred: ^bb3
    %66 = llvm.add %48, %0  : i64
    llvm.br ^bb2(%66 : i64)
  ^bb8:  // pred: ^bb2
    %67 = llvm.add %46, %0  : i64
    llvm.br ^bb1(%67 : i64)
  ^bb9:  // pred: ^bb1
    %68 = llvm.mlir.constant(16 : index) : i64
    %69 = llvm.mlir.constant(16 : index) : i64
    %70 = llvm.mlir.constant(16 : index) : i64
    %71 = llvm.mlir.constant(16 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.mlir.constant(256 : index) : i64
    %74 = llvm.mlir.constant(4096 : index) : i64
    %75 = llvm.mlir.constant(65536 : index) : i64
    %76 = llvm.mlir.zero : !llvm.ptr
    %77 = llvm.getelementptr %76[65536] : (!llvm.ptr) -> !llvm.ptr, f64
    %78 = llvm.ptrtoint %77 : !llvm.ptr to i64
    %79 = llvm.mlir.constant(32 : index) : i64
    %80 = llvm.add %78, %79  : i64
    %81 = llvm.call @malloc(%80) : (i64) -> !llvm.ptr
    %82 = llvm.ptrtoint %81 : !llvm.ptr to i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.sub %79, %83  : i64
    %85 = llvm.add %82, %84  : i64
    %86 = llvm.urem %85, %79  : i64
    %87 = llvm.sub %85, %86  : i64
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
    llvm.br ^bb10(%8 : i64)
  ^bb10(%102: i64):  // 2 preds: ^bb9, ^bb17
    %103 = llvm.icmp "slt" %102, %1 : i64
    llvm.cond_br %103, ^bb11(%8 : i64), ^bb18
  ^bb11(%104: i64):  // 2 preds: ^bb10, ^bb16
    %105 = llvm.icmp "slt" %104, %1 : i64
    llvm.cond_br %105, ^bb12(%8 : i64), ^bb17
  ^bb12(%106: i64):  // 2 preds: ^bb11, ^bb15
    %107 = llvm.icmp "slt" %106, %1 : i64
    llvm.cond_br %107, ^bb13(%8 : i64), ^bb16
  ^bb13(%108: i64):  // 2 preds: ^bb12, ^bb14
    %109 = llvm.icmp "slt" %108, %1 : i64
    llvm.cond_br %109, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %110 = llvm.mlir.constant(4096 : index) : i64
    %111 = llvm.mul %102, %110  : i64
    %112 = llvm.mlir.constant(256 : index) : i64
    %113 = llvm.mul %104, %112  : i64
    %114 = llvm.add %111, %113  : i64
    %115 = llvm.mlir.constant(16 : index) : i64
    %116 = llvm.mul %106, %115  : i64
    %117 = llvm.add %114, %116  : i64
    %118 = llvm.add %117, %108  : i64
    %119 = llvm.getelementptr %88[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %10, %119 : f64, !llvm.ptr
    %120 = llvm.add %108, %0  : i64
    llvm.br ^bb13(%120 : i64)
  ^bb15:  // pred: ^bb13
    %121 = llvm.add %106, %0  : i64
    llvm.br ^bb12(%121 : i64)
  ^bb16:  // pred: ^bb12
    %122 = llvm.add %104, %0  : i64
    llvm.br ^bb11(%122 : i64)
  ^bb17:  // pred: ^bb11
    %123 = llvm.add %102, %0  : i64
    llvm.br ^bb10(%123 : i64)
  ^bb18:  // pred: ^bb10
    %124 = llvm.mlir.constant(16 : index) : i64
    %125 = llvm.mlir.constant(16 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.mlir.constant(256 : index) : i64
    %128 = llvm.mlir.zero : !llvm.ptr
    %129 = llvm.getelementptr %128[256] : (!llvm.ptr) -> !llvm.ptr, f64
    %130 = llvm.ptrtoint %129 : !llvm.ptr to i64
    %131 = llvm.mlir.constant(32 : index) : i64
    %132 = llvm.add %130, %131  : i64
    %133 = llvm.call @malloc(%132) : (i64) -> !llvm.ptr
    %134 = llvm.ptrtoint %133 : !llvm.ptr to i64
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.sub %131, %135  : i64
    %137 = llvm.add %134, %136  : i64
    %138 = llvm.urem %137, %131  : i64
    %139 = llvm.sub %137, %138  : i64
    %140 = llvm.inttoptr %139 : i64 to !llvm.ptr
    %141 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %142 = llvm.insertvalue %133, %141[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %143 = llvm.insertvalue %140, %142[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %144 = llvm.mlir.constant(0 : index) : i64
    %145 = llvm.insertvalue %144, %143[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %146 = llvm.insertvalue %124, %145[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %147 = llvm.insertvalue %125, %146[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %148 = llvm.insertvalue %125, %147[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %149 = llvm.insertvalue %126, %148[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb19(%8 : i64)
  ^bb19(%150: i64):  // 2 preds: ^bb18, ^bb22
    %151 = llvm.icmp "slt" %150, %1 : i64
    llvm.cond_br %151, ^bb20(%8 : i64), ^bb23
  ^bb20(%152: i64):  // 2 preds: ^bb19, ^bb21
    %153 = llvm.icmp "slt" %152, %1 : i64
    llvm.cond_br %153, ^bb21, ^bb22
  ^bb21:  // pred: ^bb20
    %154 = llvm.mlir.constant(16 : index) : i64
    %155 = llvm.mul %150, %154  : i64
    %156 = llvm.add %155, %152  : i64
    %157 = llvm.getelementptr %140[%156] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %9, %157 : f64, !llvm.ptr
    %158 = llvm.add %152, %0  : i64
    llvm.br ^bb20(%158 : i64)
  ^bb22:  // pred: ^bb20
    %159 = llvm.add %150, %0  : i64
    llvm.br ^bb19(%159 : i64)
  ^bb23:  // pred: ^bb19
    %160 = llvm.mlir.constant(16 : index) : i64
    %161 = llvm.mlir.constant(16 : index) : i64
    %162 = llvm.mlir.constant(16 : index) : i64
    %163 = llvm.mlir.constant(16 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.constant(256 : index) : i64
    %166 = llvm.mlir.constant(4096 : index) : i64
    %167 = llvm.mlir.constant(65536 : index) : i64
    %168 = llvm.mlir.zero : !llvm.ptr
    %169 = llvm.getelementptr %168[65536] : (!llvm.ptr) -> !llvm.ptr, f64
    %170 = llvm.ptrtoint %169 : !llvm.ptr to i64
    %171 = llvm.mlir.constant(32 : index) : i64
    %172 = llvm.add %170, %171  : i64
    %173 = llvm.call @malloc(%172) : (i64) -> !llvm.ptr
    %174 = llvm.ptrtoint %173 : !llvm.ptr to i64
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.sub %171, %175  : i64
    %177 = llvm.add %174, %176  : i64
    %178 = llvm.urem %177, %171  : i64
    %179 = llvm.sub %177, %178  : i64
    %180 = llvm.inttoptr %179 : i64 to !llvm.ptr
    %181 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)>
    %182 = llvm.insertvalue %173, %181[0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.insertvalue %180, %182[1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.mlir.constant(0 : index) : i64
    %185 = llvm.insertvalue %184, %183[2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.insertvalue %160, %185[3, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.insertvalue %161, %186[3, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.insertvalue %162, %187[3, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.insertvalue %163, %188[3, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.insertvalue %166, %189[4, 0] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.insertvalue %165, %190[4, 1] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.insertvalue %163, %191[4, 2] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.insertvalue %164, %192[4, 3] : !llvm.struct<(ptr, ptr, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb24(%8 : i64)
  ^bb24(%194: i64):  // 2 preds: ^bb23, ^bb31
    %195 = llvm.icmp "slt" %194, %1 : i64
    llvm.cond_br %195, ^bb25(%8 : i64), ^bb32
  ^bb25(%196: i64):  // 2 preds: ^bb24, ^bb30
    %197 = llvm.icmp "slt" %196, %1 : i64
    llvm.cond_br %197, ^bb26(%8 : i64), ^bb31
  ^bb26(%198: i64):  // 2 preds: ^bb25, ^bb29
    %199 = llvm.icmp "slt" %198, %1 : i64
    llvm.cond_br %199, ^bb27(%8 : i64), ^bb30
  ^bb27(%200: i64):  // 2 preds: ^bb26, ^bb28
    %201 = llvm.icmp "slt" %200, %1 : i64
    llvm.cond_br %201, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %202 = llvm.mlir.constant(4096 : index) : i64
    %203 = llvm.mul %194, %202  : i64
    %204 = llvm.mlir.constant(256 : index) : i64
    %205 = llvm.mul %196, %204  : i64
    %206 = llvm.add %203, %205  : i64
    %207 = llvm.mlir.constant(16 : index) : i64
    %208 = llvm.mul %198, %207  : i64
    %209 = llvm.add %206, %208  : i64
    %210 = llvm.add %209, %200  : i64
    %211 = llvm.getelementptr %32[%210] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %212 = llvm.load %211 : !llvm.ptr -> f64
    %213 = llvm.mlir.constant(4096 : index) : i64
    %214 = llvm.mul %194, %213  : i64
    %215 = llvm.mlir.constant(256 : index) : i64
    %216 = llvm.mul %198, %215  : i64
    %217 = llvm.add %214, %216  : i64
    %218 = llvm.mlir.constant(16 : index) : i64
    %219 = llvm.mul %200, %218  : i64
    %220 = llvm.add %217, %219  : i64
    %221 = llvm.add %220, %196  : i64
    %222 = llvm.getelementptr %180[%221] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %212, %222 : f64, !llvm.ptr
    %223 = llvm.add %200, %0  : i64
    llvm.br ^bb27(%223 : i64)
  ^bb29:  // pred: ^bb27
    %224 = llvm.add %198, %0  : i64
    llvm.br ^bb26(%224 : i64)
  ^bb30:  // pred: ^bb26
    %225 = llvm.add %196, %0  : i64
    llvm.br ^bb25(%225 : i64)
  ^bb31:  // pred: ^bb25
    %226 = llvm.add %194, %0  : i64
    llvm.br ^bb24(%226 : i64)
  ^bb32:  // pred: ^bb24
    llvm.br ^bb33(%8 : i64)
  ^bb33(%227: i64):  // 2 preds: ^bb32, ^bb43
    %228 = llvm.icmp "slt" %227, %7 : i64
    llvm.cond_br %228, ^bb34, ^bb44
  ^bb34:  // pred: ^bb33
    %229 = llvm.sub %7, %227  : i64
    %230 = llvm.icmp "slt" %229, %6 : i64
    %231 = llvm.select %230, %229, %6 : i1, i64
    %232 = llvm.mlir.constant(16 : index) : i64
    %233 = llvm.mul %227, %232  : i64
    llvm.br ^bb35(%8 : i64)
  ^bb35(%234: i64):  // 2 preds: ^bb34, ^bb42
    %235 = llvm.icmp "slt" %234, %1 : i64
    llvm.cond_br %235, ^bb36, ^bb43
  ^bb36:  // pred: ^bb35
    %236 = llvm.sub %1, %234  : i64
    %237 = llvm.icmp "slt" %236, %5 : i64
    %238 = llvm.select %237, %236, %5 : i1, i64
    llvm.br ^bb37(%8 : i64)
  ^bb37(%239: i64):  // 2 preds: ^bb36, ^bb41
    %240 = llvm.icmp "slt" %239, %1 : i64
    llvm.cond_br %240, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    %241 = llvm.sub %1, %239  : i64
    %242 = llvm.icmp "slt" %241, %4 : i64
    %243 = llvm.select %242, %241, %4 : i1, i64
    llvm.br ^bb39(%8 : i64)
  ^bb39(%244: i64):  // 2 preds: ^bb38, ^bb40
    %245 = llvm.icmp "slt" %244, %231 : i64
    llvm.cond_br %245, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %246 = llvm.sub %231, %244  : i64
    %247 = llvm.icmp "slt" %246, %6 : i64
    %248 = llvm.select %247, %246, %6 : i1, i64
    %249 = llvm.mlir.constant(4096 : index) : i64
    %250 = llvm.mul %239, %249  : i64
    %251 = llvm.add %227, %250  : i64
    %252 = llvm.add %251, %244  : i64
    %253 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %254 = llvm.insertvalue %173, %253[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %255 = llvm.insertvalue %180, %254[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %256 = llvm.insertvalue %252, %255[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %257 = llvm.insertvalue %243, %256[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %258 = llvm.mlir.constant(4096 : index) : i64
    %259 = llvm.insertvalue %258, %257[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %260 = llvm.insertvalue %248, %259[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %261 = llvm.mlir.constant(1 : index) : i64
    %262 = llvm.insertvalue %261, %260[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %263 = llvm.mlir.constant(16 : index) : i64
    %264 = llvm.mul %244, %263  : i64
    %265 = llvm.add %233, %264  : i64
    %266 = llvm.add %265, %234  : i64
    %267 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %268 = llvm.insertvalue %81, %267[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %269 = llvm.insertvalue %88, %268[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %270 = llvm.insertvalue %266, %269[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %271 = llvm.insertvalue %248, %270[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %272 = llvm.mlir.constant(16 : index) : i64
    %273 = llvm.insertvalue %272, %271[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %274 = llvm.insertvalue %238, %273[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.insertvalue %275, %274[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %277 = llvm.mlir.constant(16 : index) : i64
    %278 = llvm.mul %239, %277  : i64
    %279 = llvm.add %278, %234  : i64
    %280 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %281 = llvm.insertvalue %133, %280[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %282 = llvm.insertvalue %140, %281[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %283 = llvm.insertvalue %279, %282[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %284 = llvm.insertvalue %243, %283[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %285 = llvm.mlir.constant(16 : index) : i64
    %286 = llvm.insertvalue %285, %284[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %287 = llvm.insertvalue %238, %286[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %288 = llvm.mlir.constant(1 : index) : i64
    %289 = llvm.insertvalue %288, %287[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @linalg_matmul_viewsxs_viewsxs_viewsxs(%173, %180, %252, %243, %248, %258, %261, %81, %88, %266, %248, %238, %272, %275, %133, %140, %279, %243, %238, %285, %288, %3, %2) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i32, i32) -> ()
    %290 = llvm.add %244, %6  : i64
    llvm.br ^bb39(%290 : i64)
  ^bb41:  // pred: ^bb39
    %291 = llvm.add %239, %4  : i64
    llvm.br ^bb37(%291 : i64)
  ^bb42:  // pred: ^bb37
    %292 = llvm.add %234, %5  : i64
    llvm.br ^bb35(%292 : i64)
  ^bb43:  // pred: ^bb35
    %293 = llvm.add %227, %6  : i64
    llvm.br ^bb33(%293 : i64)
  ^bb44:  // pred: ^bb33
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.alloca %294 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %149, %295 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %296 = llvm.mlir.constant(2 : index) : i64
    %297 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %298 = llvm.insertvalue %296, %297[0] : !llvm.struct<(i64, ptr)> 
    %299 = llvm.insertvalue %295, %298[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%296, %295) : (i64, !llvm.ptr) -> ()
    llvm.call @free(%173) : (!llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @getTime() -> f64 attributes {sym_visibility = "private"}
  llvm.func private @linalg_matmul_viewsxs_viewsxs_viewsxs(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr, %arg8: !llvm.ptr, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: !llvm.ptr, %arg15: !llvm.ptr, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i32, %arg22: i32) attributes {llvm.emit_c_interface, sym_visibility = "private"} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.constant(1 : index) : i64
    %9 = llvm.alloca %8 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %7, %9 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %10 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %11 = llvm.insertvalue %arg7, %10[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg8, %11[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg9, %12[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg10, %13[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg12, %14[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.insertvalue %arg11, %15[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.insertvalue %arg13, %16[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.alloca %18 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %17, %19 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %20 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %21 = llvm.insertvalue %arg14, %20[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %arg15, %21[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %arg16, %22[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.insertvalue %arg17, %23[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.insertvalue %arg19, %24[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %arg18, %25[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.insertvalue %arg20, %26[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.alloca %28 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %27, %29 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    llvm.call @_mlir_ciface_linalg_matmul_viewsxs_viewsxs_viewsxs(%9, %19, %29, %arg21, %arg22) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.return
  }
  llvm.func @_mlir_ciface_linalg_matmul_viewsxs_viewsxs_viewsxs(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) attributes {llvm.emit_c_interface, sym_visibility = "private"}
  llvm.func @print_flops(f64) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}
