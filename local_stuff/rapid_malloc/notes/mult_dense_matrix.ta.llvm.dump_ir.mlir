// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
#map = affine_map<(d0, d1, d2) -> (d0, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.indexlabel
    %1 = "ta.index_label"() : () -> !ta.indexlabel
    %2 = "ta.index_label"() : () -> !ta.indexlabel
    %3 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x4xf64>
    %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x2xf64>
    %5 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x2xf64>
    "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
    "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
    "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
    %6 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8x4xf64>, tensor<4x2xf64>, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel) -> tensor<8x2xf64>
    "ta.set_op"(%6, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
    "ta.print"(%5) : (tensor<8x2xf64>) -> ()
    return
  }
}


// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %3 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x4xf64>
  %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x2xf64>
  %5 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x2xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
  %6 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8x4xf64>, tensor<4x2xf64>, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel) -> tensor<8x2xf64>
  "ta.set_op"(%6, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<8x2xf64>, tensor<8x2xf64>) -> ()
  "ta.print"(%5) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToIndexTreePass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %3 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x4xf64>
  %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x2xf64>
  %5 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x2xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
  %6 = "it.ComputeRHS"(%3, %4) <{allFormats = [["D", "D"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (tensor<8x4xf64>, tensor<4x2xf64>) -> tensor<*xf64>
  %7 = "it.ComputeLHS"(%5) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<8x2xf64>) -> tensor<*xf64>
  %8 = "it.Compute"(%6, %7) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
  %9 = "it.Indices"(%8) <{indices = [2]}> : (i64) -> i64
  %10 = "it.Indices"(%9) <{indices = [1]}> : (i64) -> i64
  %11 = "it.Indices"(%10) <{indices = [0]}> : (i64) -> i64
  %12 = "it.itree"(%11) : (i64) -> i64
  "ta.print"(%5) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %3 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x4xf64>
  %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x2xf64>
  %5 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x2xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
  %6 = "it.ComputeRHS"(%3, %4) <{allFormats = [["D", "D"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (tensor<8x4xf64>, tensor<4x2xf64>) -> tensor<*xf64>
  %7 = "it.ComputeLHS"(%5) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<8x2xf64>) -> tensor<*xf64>
  %8 = "it.Compute"(%6, %7) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
  %9 = "it.Indices"(%8) <{indices = [2]}> : (i64) -> i64
  %10 = "it.Indices"(%9) <{indices = [1]}> : (i64) -> i64
  %11 = "it.Indices"(%10) <{indices = [0]}> : (i64) -> i64
  %12 = "it.itree"(%11) : (i64) -> i64
  "ta.print"(%5) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  %3 = bufferization.to_tensor %alloc : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  %4 = bufferization.to_tensor %alloc_0 : memref<4x2xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  %5 = bufferization.to_tensor %alloc_1 : memref<8x2xf64>
  "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
  %6 = "it.ComputeRHS"(%3, %4) <{allFormats = [["D", "D"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (tensor<8x4xf64>, tensor<4x2xf64>) -> tensor<*xf64>
  %7 = "it.ComputeLHS"(%5) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<8x2xf64>) -> tensor<*xf64>
  %8 = "it.Compute"(%6, %7) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
  %9 = "it.Indices"(%8) <{indices = [2]}> : (i64) -> i64
  %10 = "it.Indices"(%9) <{indices = [1]}> : (i64) -> i64
  %11 = "it.Indices"(%10) <{indices = [0]}> : (i64) -> i64
  %12 = "it.itree"(%11) : (i64) -> i64
  "ta.print"(%5) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  %3 = bufferization.to_tensor %alloc : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  %4 = bufferization.to_tensor %alloc_0 : memref<4x2xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  %5 = bufferization.to_tensor %alloc_1 : memref<8x2xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8x4xf64>)
  %cst_2 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_2 : f64) outs(%alloc_0 : memref<4x2xf64>)
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_1 : memref<8x2xf64>)
  %6 = "it.ComputeRHS"(%3, %4) <{allFormats = [["D", "D"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (tensor<8x4xf64>, tensor<4x2xf64>) -> tensor<*xf64>
  %7 = "it.ComputeLHS"(%5) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<8x2xf64>) -> tensor<*xf64>
  %8 = "it.Compute"(%6, %7) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
  %9 = "it.Indices"(%8) <{indices = [2]}> : (i64) -> i64
  %10 = "it.Indices"(%9) <{indices = [1]}> : (i64) -> i64
  %11 = "it.Indices"(%10) <{indices = [0]}> : (i64) -> i64
  %12 = "it.itree"(%11) : (i64) -> i64
  "ta.print"(%5) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  %3 = bufferization.to_tensor %alloc : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  %4 = bufferization.to_tensor %alloc_0 : memref<4x2xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  %5 = bufferization.to_tensor %alloc_1 : memref<8x2xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8x4xf64>)
  %cst_2 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_2 : f64) outs(%alloc_0 : memref<4x2xf64>)
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_1 : memref<8x2xf64>)
  %6 = "it.ComputeRHS"(%3, %4) <{allFormats = [["D", "D"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (tensor<8x4xf64>, tensor<4x2xf64>) -> tensor<*xf64>
  %7 = "it.ComputeLHS"(%5) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<8x2xf64>) -> tensor<*xf64>
  %8 = "it.Compute"(%6, %7) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
  %9 = "it.Indices"(%8) <{indices = [2]}> : (i64) -> i64
  %10 = "it.Indices"(%9) <{indices = [1]}> : (i64) -> i64
  %11 = "it.Indices"(%10) <{indices = [0]}> : (i64) -> i64
  %12 = "it.itree"(%11) : (i64) -> i64
  "ta.print"(%5) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  %3 = bufferization.to_tensor %alloc : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  %4 = bufferization.to_tensor %alloc_0 : memref<4x2xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  %5 = bufferization.to_tensor %alloc_1 : memref<8x2xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8x4xf64>)
  %cst_2 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_2 : f64) outs(%alloc_0 : memref<4x2xf64>)
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_1 : memref<8x2xf64>)
  %6 = "it.ComputeRHS"(%3, %4) <{allFormats = [["D", "D"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (tensor<8x4xf64>, tensor<4x2xf64>) -> tensor<*xf64>
  %7 = "it.ComputeLHS"(%5) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<8x2xf64>) -> tensor<*xf64>
  %8 = "it.Compute"(%6, %7) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
  %9 = "it.Indices"(%8) <{indices = [2]}> : (i64) -> i64
  %10 = "it.Indices"(%9) <{indices = [1]}> : (i64) -> i64
  %11 = "it.Indices"(%10) <{indices = [0]}> : (i64) -> i64
  %12 = "it.itree"(%11) : (i64) -> i64
  "ta.print"(%5) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  %3 = bufferization.to_tensor %alloc : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  %4 = bufferization.to_tensor %alloc_0 : memref<4x2xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  %5 = bufferization.to_tensor %alloc_1 : memref<8x2xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8x4xf64>)
  %cst_2 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_2 : f64) outs(%alloc_0 : memref<4x2xf64>)
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_1 : memref<8x2xf64>)
  %6 = "it.ComputeRHS"(%3, %4) <{allFormats = [["D", "D"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (tensor<8x4xf64>, tensor<4x2xf64>) -> tensor<*xf64>
  %7 = "it.ComputeLHS"(%5) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<8x2xf64>) -> tensor<*xf64>
  %8 = "it.Compute"(%6, %7) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
  %9 = "it.Indices"(%8) <{indices = [2]}> : (i64) -> i64
  %10 = "it.Indices"(%9) <{indices = [1]}> : (i64) -> i64
  %11 = "it.Indices"(%10) <{indices = [0]}> : (i64) -> i64
  %12 = "it.itree"(%11) : (i64) -> i64
  "ta.print"(%5) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  %3 = bufferization.to_tensor %alloc : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  %4 = bufferization.to_tensor %alloc_0 : memref<4x2xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  %5 = bufferization.to_tensor %alloc_1 : memref<8x2xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8x4xf64>)
  %cst_2 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_2 : f64) outs(%alloc_0 : memref<4x2xf64>)
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_1 : memref<8x2xf64>)
  %6 = "it.ComputeRHS"(%3, %4) <{allFormats = [["D", "D"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (tensor<8x4xf64>, tensor<4x2xf64>) -> tensor<*xf64>
  %7 = "it.ComputeLHS"(%5) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<8x2xf64>) -> tensor<*xf64>
  %8 = "it.Compute"(%6, %7) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
  %9 = "it.Indices"(%8) <{indices = [2]}> : (i64) -> i64
  %10 = "it.Indices"(%9) <{indices = [1]}> : (i64) -> i64
  %11 = "it.Indices"(%10) <{indices = [0]}> : (i64) -> i64
  %12 = "it.itree"(%11) : (i64) -> i64
  "ta.print"(%5) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  %3 = bufferization.to_tensor %alloc : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  %4 = bufferization.to_tensor %alloc_0 : memref<4x2xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  %5 = bufferization.to_tensor %alloc_1 : memref<8x2xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8x4xf64>)
  %cst_2 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_2 : f64) outs(%alloc_0 : memref<4x2xf64>)
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_1 : memref<8x2xf64>)
  %6 = "it.ComputeRHS"(%3, %4) <{allFormats = [["D", "D"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (tensor<8x4xf64>, tensor<4x2xf64>) -> tensor<*xf64>
  %7 = "it.ComputeLHS"(%5) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<8x2xf64>) -> tensor<*xf64>
  %8 = "it.Compute"(%6, %7) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
  %9 = "it.Indices"(%8) <{indices = [2]}> : (i64) -> i64
  %10 = "it.Indices"(%9) <{indices = [1]}> : (i64) -> i64
  %11 = "it.Indices"(%10) <{indices = [0]}> : (i64) -> i64
  %12 = "it.itree"(%11) : (i64) -> i64
  "ta.print"(%5) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::PCToLoopsLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  %3 = bufferization.to_tensor %alloc : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  %4 = bufferization.to_tensor %alloc_0 : memref<4x2xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  %5 = bufferization.to_tensor %alloc_1 : memref<8x2xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8x4xf64>)
  %cst_2 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_2 : f64) outs(%alloc_0 : memref<4x2xf64>)
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_1 : memref<8x2xf64>)
  %6 = "it.ComputeRHS"(%3, %4) <{allFormats = [["D", "D"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (tensor<8x4xf64>, tensor<4x2xf64>) -> tensor<*xf64>
  %7 = "it.ComputeLHS"(%5) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<8x2xf64>) -> tensor<*xf64>
  %8 = "it.Compute"(%6, %7) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
  %9 = "it.Indices"(%8) <{indices = [2]}> : (i64) -> i64
  %10 = "it.Indices"(%9) <{indices = [1]}> : (i64) -> i64
  %11 = "it.Indices"(%10) <{indices = [0]}> : (i64) -> i64
  %12 = "it.itree"(%11) : (i64) -> i64
  "ta.print"(%5) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  %3 = bufferization.to_tensor %alloc : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  %4 = bufferization.to_tensor %alloc_0 : memref<4x2xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  %5 = bufferization.to_tensor %alloc_1 : memref<8x2xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8x4xf64>)
  %cst_2 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_2 : f64) outs(%alloc_0 : memref<4x2xf64>)
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_1 : memref<8x2xf64>)
  %6 = "it.ComputeRHS"(%3, %4) <{allFormats = [["D", "D"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (tensor<8x4xf64>, tensor<4x2xf64>) -> tensor<*xf64>
  %7 = "it.ComputeLHS"(%5) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<8x2xf64>) -> tensor<*xf64>
  %8 = "it.Compute"(%6, %7) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
  %9 = "it.Indices"(%8) <{indices = [2]}> : (i64) -> i64
  %10 = "it.Indices"(%9) <{indices = [1]}> : (i64) -> i64
  %11 = "it.Indices"(%10) <{indices = [0]}> : (i64) -> i64
  %12 = "it.itree"(%11) : (i64) -> i64
  "ta.print"(%5) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  %3 = bufferization.to_tensor %alloc : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  %4 = bufferization.to_tensor %alloc_0 : memref<4x2xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  %5 = bufferization.to_tensor %alloc_1 : memref<8x2xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8x4xf64>)
  %cst_2 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_2 : f64) outs(%alloc_0 : memref<4x2xf64>)
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_1 : memref<8x2xf64>)
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c0_4 = arith.constant 0 : index
  %dim = tensor.dim %3, %c0_4 : tensor<8x4xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %c0_5 = arith.constant 0 : index
    %c1_6 = arith.constant 1 : index
    %c1_7 = arith.constant 1 : index
    %dim_8 = tensor.dim %3, %c1_7 : tensor<8x4xf64>
    scf.for %arg1 = %c0_5 to %dim_8 step %c1_6 {
      %c0_9 = arith.constant 0 : index
      %c1_10 = arith.constant 1 : index
      %c1_11 = arith.constant 1 : index
      %dim_12 = tensor.dim %4, %c1_11 : tensor<4x2xf64>
      scf.for %arg2 = %c0_9 to %dim_12 step %c1_10 {
        %cst_13 = arith.constant 0.000000e+00 : f64
        %6 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        %7 = memref.load %alloc_0[%arg1, %arg2] : memref<4x2xf64>
        %8 = memref.load %alloc_1[%arg0, %arg2] : memref<8x2xf64>
        %9 = arith.mulf %6, %7 : f64
        %10 = arith.addf %8, %9 : f64
        memref.store %10, %alloc_1[%arg0, %arg2] : memref<8x2xf64>
      }
    }
  }
  "ta.print"(%5) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After TensorBufferize (tensor-bufferize) //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  %3 = bufferization.to_tensor %alloc_1 : memref<8x2xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8x4xf64>)
  %cst_2 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_2 : f64) outs(%alloc_0 : memref<4x2xf64>)
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_1 : memref<8x2xf64>)
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c0_4 = arith.constant 0 : index
  %dim = memref.dim %alloc, %c0_4 : memref<8x4xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %c0_5 = arith.constant 0 : index
    %c1_6 = arith.constant 1 : index
    %c1_7 = arith.constant 1 : index
    %dim_8 = memref.dim %alloc, %c1_7 : memref<8x4xf64>
    scf.for %arg1 = %c0_5 to %dim_8 step %c1_6 {
      %c0_9 = arith.constant 0 : index
      %c1_10 = arith.constant 1 : index
      %c1_11 = arith.constant 1 : index
      %dim_12 = memref.dim %alloc_0, %c1_11 : memref<4x2xf64>
      scf.for %arg2 = %c0_9 to %dim_12 step %c1_10 {
        %cst_13 = arith.constant 0.000000e+00 : f64
        %4 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        %5 = memref.load %alloc_0[%arg1, %arg2] : memref<4x2xf64>
        %6 = memref.load %alloc_1[%arg0, %arg2] : memref<8x2xf64>
        %7 = arith.mulf %4, %5 : f64
        %8 = arith.addf %6, %7 : f64
        memref.store %8, %alloc_1[%arg0, %arg2] : memref<8x2xf64>
      }
    }
  }
  "ta.print"(%3) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func @main() {
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  %0 = bufferization.to_tensor %alloc_1 : memref<8x2xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8x4xf64>)
  %cst_2 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_2 : f64) outs(%alloc_0 : memref<4x2xf64>)
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_1 : memref<8x2xf64>)
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c0_4 = arith.constant 0 : index
  %dim = memref.dim %alloc, %c0_4 : memref<8x4xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %c0_5 = arith.constant 0 : index
    %c1_6 = arith.constant 1 : index
    %c1_7 = arith.constant 1 : index
    %dim_8 = memref.dim %alloc, %c1_7 : memref<8x4xf64>
    scf.for %arg1 = %c0_5 to %dim_8 step %c1_6 {
      %c0_9 = arith.constant 0 : index
      %c1_10 = arith.constant 1 : index
      %c1_11 = arith.constant 1 : index
      %dim_12 = memref.dim %alloc_0, %c1_11 : memref<4x2xf64>
      scf.for %arg2 = %c0_9 to %dim_12 step %c1_10 {
        %cst_13 = arith.constant 0.000000e+00 : f64
        %1 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        %2 = memref.load %alloc_0[%arg1, %arg2] : memref<4x2xf64>
        %3 = memref.load %alloc_1[%arg0, %arg2] : memref<8x2xf64>
        %4 = arith.mulf %1, %2 : f64
        %5 = arith.addf %3, %4 : f64
        memref.store %5, %alloc_1[%arg0, %arg2] : memref<8x2xf64>
      }
    }
  }
  "ta.print"(%0) : (tensor<8x2xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  %0 = bufferization.to_tensor %alloc_1 : memref<8x2xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8x4xf64>)
  %cst_2 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_2 : f64) outs(%alloc_0 : memref<4x2xf64>)
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_1 : memref<8x2xf64>)
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c0_4 = arith.constant 0 : index
  %dim = memref.dim %alloc, %c0_4 : memref<8x4xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %c0_5 = arith.constant 0 : index
    %c1_6 = arith.constant 1 : index
    %c1_7 = arith.constant 1 : index
    %dim_8 = memref.dim %alloc, %c1_7 : memref<8x4xf64>
    scf.for %arg1 = %c0_5 to %dim_8 step %c1_6 {
      %c0_9 = arith.constant 0 : index
      %c1_10 = arith.constant 1 : index
      %c1_11 = arith.constant 1 : index
      %dim_12 = memref.dim %alloc_0, %c1_11 : memref<4x2xf64>
      scf.for %arg2 = %c0_9 to %dim_12 step %c1_10 {
        %cst_13 = arith.constant 0.000000e+00 : f64
        %1 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        %2 = memref.load %alloc_0[%arg1, %arg2] : memref<4x2xf64>
        %3 = memref.load %alloc_1[%arg0, %arg2] : memref<8x2xf64>
        %4 = arith.mulf %1, %2 : f64
        %5 = arith.addf %3, %4 : f64
        memref.store %5, %alloc_1[%arg0, %arg2] : memref<8x2xf64>
      }
    }
  }
  %cast = memref.cast %alloc_1 : memref<8x2xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After CSE (cse) //----- //
func.func @main() {
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  %alloc_1 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  %cst = arith.constant 2.200000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc : memref<8x4xf64>)
  %cst_2 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_2 : f64) outs(%alloc_0 : memref<4x2xf64>)
  %cst_3 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_3 : f64) outs(%alloc_1 : memref<8x2xf64>)
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %dim = memref.dim %alloc, %c0 : memref<8x4xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    %dim_4 = memref.dim %alloc, %c1 : memref<8x4xf64>
    scf.for %arg1 = %c0 to %dim_4 step %c1 {
      %dim_5 = memref.dim %alloc_0, %c1 : memref<4x2xf64>
      scf.for %arg2 = %c0 to %dim_5 step %c1 {
        %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        %1 = memref.load %alloc_0[%arg1, %arg2] : memref<4x2xf64>
        %2 = memref.load %alloc_1[%arg0, %arg2] : memref<8x2xf64>
        %3 = arith.mulf %0, %1 : f64
        %4 = arith.addf %2, %3 : f64
        memref.store %4, %alloc_1[%arg0, %arg2] : memref<8x2xf64>
      }
    }
  }
  %cast = memref.cast %alloc_1 : memref<8x2xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %c2 = arith.constant 2 : index
  %c4 = arith.constant 4 : index
  %c8 = arith.constant 8 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c4 step %c1 {
      scf.for %arg2 = %c0 to %c2 step %c1 {
        %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
        %2 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
        %3 = arith.mulf %0, %1 : f64
        %4 = arith.addf %2, %3 : f64
        memref.store %4, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
      }
    }
  }
  %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After FuncBufferize (func-bufferize) //----- //
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
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        scf.for %arg2 = %c0 to %c2 step %c1 {
          %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
          %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
          %2 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
          %3 = arith.mulf %0, %1 : f64
          %4 = arith.addf %2, %3 : f64
          memref.store %4, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
        }
      }
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_sort_index(memref<*xindex>, index, index)
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
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        scf.for %arg2 = %c0 to %c2 step %c1 {
          %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
          %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
          %2 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
          %3 = arith.mulf %0, %1 : f64
          %4 = arith.addf %2, %3 : f64
          memref.store %4, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
        }
      }
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_sort_index(memref<*xindex>, index, index)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_sort_index(memref<*xindex>, index, index)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
func.func private @comet_sort_index(memref<*xindex>, index, index)

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func @main() {
  %c2 = arith.constant 2 : index
  %c4 = arith.constant 4 : index
  %c8 = arith.constant 8 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<8x4xf64>)
  linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<4x2xf64>)
  linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<8x2xf64>)
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c4 step %c1 {
      scf.for %arg2 = %c0 to %c2 step %c1 {
        %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
        %2 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
        %3 = arith.mulf %0, %1 : f64
        %4 = arith.addf %2, %3 : f64
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
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c4 step %c1 {
      memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8x4xf64>
    }
  }
  scf.for %arg0 = %c0 to %c4 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4x2xf64>
    }
  }
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
    }
  }
  scf.for %arg0 = %c0 to %c8 step %c1 {
    scf.for %arg1 = %c0 to %c4 step %c1 {
      scf.for %arg2 = %c0 to %c2 step %c1 {
        %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
        %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
        %2 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
        %3 = arith.mulf %0, %1 : f64
        %4 = arith.addf %2, %3 : f64
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
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<8x4xf64>
      }
    }
    scf.for %arg0 = %c0 to %c4 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst_0, %alloc_2[%arg0, %arg1] : memref<4x2xf64>
      }
    }
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        memref.store %cst, %alloc_3[%arg0, %arg1] : memref<8x2xf64>
      }
    }
    scf.for %arg0 = %c0 to %c8 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        scf.for %arg2 = %c0 to %c2 step %c1 {
          %0 = memref.load %alloc[%arg0, %arg1] : memref<8x4xf64>
          %1 = memref.load %alloc_2[%arg1, %arg2] : memref<4x2xf64>
          %2 = memref.load %alloc_3[%arg0, %arg2] : memref<8x2xf64>
          %3 = arith.mulf %0, %1 : f64
          %4 = arith.addf %2, %3 : f64
          memref.store %4, %alloc_3[%arg0, %arg2] : memref<8x2xf64>
        }
      }
    }
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_sort_index(memref<*xindex>, index, index)
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
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
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
    %21 = arith.cmpi slt, %20, %c4 : index
    cf.cond_br %21, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    cf.br ^bb23(%c0 : index)
  ^bb23(%22: index):  // 2 preds: ^bb22, ^bb24
    %23 = arith.cmpi slt, %22, %c2 : index
    cf.cond_br %23, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %24 = memref.load %alloc[%18, %20] : memref<8x4xf64>
    %25 = memref.load %alloc_2[%20, %22] : memref<4x2xf64>
    %26 = memref.load %alloc_3[%18, %22] : memref<8x2xf64>
    %27 = arith.mulf %24, %25 : f64
    %28 = arith.addf %26, %27 : f64
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
  func.func private @comet_sort_index(memref<*xindex>, index, index)
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
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb4
    %1 = arith.cmpi slt, %0, %c8 : index
    cf.cond_br %1, ^bb2(%c0 : index), ^bb5(%c0 : index)
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
  ^bb5(%6: index):  // 2 preds: ^bb1, ^bb8
    %7 = arith.cmpi slt, %6, %c4 : index
    cf.cond_br %7, ^bb6(%c0 : index), ^bb9(%c0 : index)
  ^bb6(%8: index):  // 2 preds: ^bb5, ^bb7
    %9 = arith.cmpi slt, %8, %c2 : index
    cf.cond_br %9, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    memref.store %cst_0, %alloc_2[%6, %8] : memref<4x2xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb6(%10 : index)
  ^bb8:  // pred: ^bb6
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb5(%11 : index)
  ^bb9(%12: index):  // 2 preds: ^bb5, ^bb12
    %13 = arith.cmpi slt, %12, %c8 : index
    cf.cond_br %13, ^bb10(%c0 : index), ^bb13(%c0 : index)
  ^bb10(%14: index):  // 2 preds: ^bb9, ^bb11
    %15 = arith.cmpi slt, %14, %c2 : index
    cf.cond_br %15, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %cst, %alloc_3[%12, %14] : memref<8x2xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb10(%16 : index)
  ^bb12:  // pred: ^bb10
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb9(%17 : index)
  ^bb13(%18: index):  // 2 preds: ^bb9, ^bb18
    %19 = arith.cmpi slt, %18, %c8 : index
    cf.cond_br %19, ^bb14(%c0 : index), ^bb19
  ^bb14(%20: index):  // 2 preds: ^bb13, ^bb17
    %21 = arith.cmpi slt, %20, %c4 : index
    cf.cond_br %21, ^bb15(%c0 : index), ^bb18
  ^bb15(%22: index):  // 2 preds: ^bb14, ^bb16
    %23 = arith.cmpi slt, %22, %c2 : index
    cf.cond_br %23, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %24 = memref.load %alloc[%18, %20] : memref<8x4xf64>
    %25 = memref.load %alloc_2[%20, %22] : memref<4x2xf64>
    %26 = memref.load %alloc_3[%18, %22] : memref<8x2xf64>
    %27 = arith.mulf %24, %25 : f64
    %28 = arith.addf %26, %27 : f64
    memref.store %28, %alloc_3[%18, %22] : memref<8x2xf64>
    %29 = arith.addi %22, %c1 : index
    cf.br ^bb15(%29 : index)
  ^bb17:  // pred: ^bb15
    %30 = arith.addi %20, %c1 : index
    cf.br ^bb14(%30 : index)
  ^bb18:  // pred: ^bb14
    %31 = arith.addi %18, %c1 : index
    cf.br ^bb13(%31 : index)
  ^bb19:  // pred: ^bb13
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_sort_index(memref<*xindex>, index, index)
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
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb4
    %1 = arith.cmpi slt, %0, %c8 : index
    cf.cond_br %1, ^bb2(%c0 : index), ^bb5(%c0 : index)
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
  ^bb5(%6: index):  // 2 preds: ^bb1, ^bb8
    %7 = arith.cmpi slt, %6, %c4 : index
    cf.cond_br %7, ^bb6(%c0 : index), ^bb9(%c0 : index)
  ^bb6(%8: index):  // 2 preds: ^bb5, ^bb7
    %9 = arith.cmpi slt, %8, %c2 : index
    cf.cond_br %9, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    memref.store %cst_0, %alloc_2[%6, %8] : memref<4x2xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb6(%10 : index)
  ^bb8:  // pred: ^bb6
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb5(%11 : index)
  ^bb9(%12: index):  // 2 preds: ^bb5, ^bb12
    %13 = arith.cmpi slt, %12, %c8 : index
    cf.cond_br %13, ^bb10(%c0 : index), ^bb13(%c0 : index)
  ^bb10(%14: index):  // 2 preds: ^bb9, ^bb11
    %15 = arith.cmpi slt, %14, %c2 : index
    cf.cond_br %15, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %cst, %alloc_3[%12, %14] : memref<8x2xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb10(%16 : index)
  ^bb12:  // pred: ^bb10
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb9(%17 : index)
  ^bb13(%18: index):  // 2 preds: ^bb9, ^bb18
    %19 = arith.cmpi slt, %18, %c8 : index
    cf.cond_br %19, ^bb14(%c0 : index), ^bb19
  ^bb14(%20: index):  // 2 preds: ^bb13, ^bb17
    %21 = arith.cmpi slt, %20, %c4 : index
    cf.cond_br %21, ^bb15(%c0 : index), ^bb18
  ^bb15(%22: index):  // 2 preds: ^bb14, ^bb16
    %23 = arith.cmpi slt, %22, %c2 : index
    cf.cond_br %23, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %24 = memref.load %alloc[%18, %20] : memref<8x4xf64>
    %25 = memref.load %alloc_2[%20, %22] : memref<4x2xf64>
    %26 = memref.load %alloc_3[%18, %22] : memref<8x2xf64>
    %27 = arith.mulf %24, %25 : f64
    %28 = arith.addf %26, %27 : f64
    memref.store %28, %alloc_3[%18, %22] : memref<8x2xf64>
    %29 = arith.addi %22, %c1 : index
    cf.br ^bb15(%29 : index)
  ^bb17:  // pred: ^bb15
    %30 = arith.addi %20, %c1 : index
    cf.br ^bb14(%30 : index)
  ^bb18:  // pred: ^bb14
    %31 = arith.addi %18, %c1 : index
    cf.br ^bb13(%31 : index)
  ^bb19:  // pred: ^bb13
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_sort_index(memref<*xindex>, index, index)
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
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb4
    %1 = arith.cmpi slt, %0, %c8 : index
    cf.cond_br %1, ^bb2(%c0 : index), ^bb5(%c0 : index)
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
  ^bb5(%6: index):  // 2 preds: ^bb1, ^bb8
    %7 = arith.cmpi slt, %6, %c4 : index
    cf.cond_br %7, ^bb6(%c0 : index), ^bb9(%c0 : index)
  ^bb6(%8: index):  // 2 preds: ^bb5, ^bb7
    %9 = arith.cmpi slt, %8, %c2 : index
    cf.cond_br %9, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    memref.store %cst_0, %alloc_2[%6, %8] : memref<4x2xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb6(%10 : index)
  ^bb8:  // pred: ^bb6
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb5(%11 : index)
  ^bb9(%12: index):  // 2 preds: ^bb5, ^bb12
    %13 = arith.cmpi slt, %12, %c8 : index
    cf.cond_br %13, ^bb10(%c0 : index), ^bb13(%c0 : index)
  ^bb10(%14: index):  // 2 preds: ^bb9, ^bb11
    %15 = arith.cmpi slt, %14, %c2 : index
    cf.cond_br %15, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %cst, %alloc_3[%12, %14] : memref<8x2xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb10(%16 : index)
  ^bb12:  // pred: ^bb10
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb9(%17 : index)
  ^bb13(%18: index):  // 2 preds: ^bb9, ^bb18
    %19 = arith.cmpi slt, %18, %c8 : index
    cf.cond_br %19, ^bb14(%c0 : index), ^bb19
  ^bb14(%20: index):  // 2 preds: ^bb13, ^bb17
    %21 = arith.cmpi slt, %20, %c4 : index
    cf.cond_br %21, ^bb15(%c0 : index), ^bb18
  ^bb15(%22: index):  // 2 preds: ^bb14, ^bb16
    %23 = arith.cmpi slt, %22, %c2 : index
    cf.cond_br %23, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %24 = memref.load %alloc[%18, %20] : memref<8x4xf64>
    %25 = memref.load %alloc_2[%20, %22] : memref<4x2xf64>
    %26 = memref.load %alloc_3[%18, %22] : memref<8x2xf64>
    %27 = arith.mulf %24, %25 : f64
    %28 = arith.addf %26, %27 : f64
    memref.store %28, %alloc_3[%18, %22] : memref<8x2xf64>
    %29 = arith.addi %22, %c1 : index
    cf.br ^bb15(%29 : index)
  ^bb17:  // pred: ^bb15
    %30 = arith.addi %20, %c1 : index
    cf.br ^bb14(%30 : index)
  ^bb18:  // pred: ^bb14
    %31 = arith.addi %18, %c1 : index
    cf.br ^bb13(%31 : index)
  ^bb19:  // pred: ^bb13
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_sort_index(memref<*xindex>, index, index)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @comet_sort_index(memref<*xindex>, index, index)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func @main() {
  %c2 = arith.constant 2 : index
  %c4 = arith.constant 4 : index
  %c8 = arith.constant 8 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f64
  %cst_0 = arith.constant 3.400000e+00 : f64
  %cst_1 = arith.constant 2.200000e+00 : f64
  %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
  %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
  %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
  cf.br ^bb1(%c0 : index)
^bb1(%0: index):  // 2 preds: ^bb0, ^bb4
  %1 = arith.cmpi slt, %0, %c8 : index
  cf.cond_br %1, ^bb2(%c0 : index), ^bb5(%c0 : index)
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
^bb5(%6: index):  // 2 preds: ^bb1, ^bb8
  %7 = arith.cmpi slt, %6, %c4 : index
  cf.cond_br %7, ^bb6(%c0 : index), ^bb9(%c0 : index)
^bb6(%8: index):  // 2 preds: ^bb5, ^bb7
  %9 = arith.cmpi slt, %8, %c2 : index
  cf.cond_br %9, ^bb7, ^bb8
^bb7:  // pred: ^bb6
  memref.store %cst_0, %alloc_2[%6, %8] : memref<4x2xf64>
  %10 = arith.addi %8, %c1 : index
  cf.br ^bb6(%10 : index)
^bb8:  // pred: ^bb6
  %11 = arith.addi %6, %c1 : index
  cf.br ^bb5(%11 : index)
^bb9(%12: index):  // 2 preds: ^bb5, ^bb12
  %13 = arith.cmpi slt, %12, %c8 : index
  cf.cond_br %13, ^bb10(%c0 : index), ^bb13(%c0 : index)
^bb10(%14: index):  // 2 preds: ^bb9, ^bb11
  %15 = arith.cmpi slt, %14, %c2 : index
  cf.cond_br %15, ^bb11, ^bb12
^bb11:  // pred: ^bb10
  memref.store %cst, %alloc_3[%12, %14] : memref<8x2xf64>
  %16 = arith.addi %14, %c1 : index
  cf.br ^bb10(%16 : index)
^bb12:  // pred: ^bb10
  %17 = arith.addi %12, %c1 : index
  cf.br ^bb9(%17 : index)
^bb13(%18: index):  // 2 preds: ^bb9, ^bb18
  %19 = arith.cmpi slt, %18, %c8 : index
  cf.cond_br %19, ^bb14(%c0 : index), ^bb19
^bb14(%20: index):  // 2 preds: ^bb13, ^bb17
  %21 = arith.cmpi slt, %20, %c4 : index
  cf.cond_br %21, ^bb15(%c0 : index), ^bb18
^bb15(%22: index):  // 2 preds: ^bb14, ^bb16
  %23 = arith.cmpi slt, %22, %c2 : index
  cf.cond_br %23, ^bb16, ^bb17
^bb16:  // pred: ^bb15
  %24 = memref.load %alloc[%18, %20] : memref<8x4xf64>
  %25 = memref.load %alloc_2[%20, %22] : memref<4x2xf64>
  %26 = memref.load %alloc_3[%18, %22] : memref<8x2xf64>
  %27 = arith.mulf %24, %25 : f64
  %28 = arith.addf %26, %27 : f64
  memref.store %28, %alloc_3[%18, %22] : memref<8x2xf64>
  %29 = arith.addi %22, %c1 : index
  cf.br ^bb15(%29 : index)
^bb17:  // pred: ^bb15
  %30 = arith.addi %20, %c1 : index
  cf.br ^bb14(%30 : index)
^bb18:  // pred: ^bb14
  %31 = arith.addi %18, %c1 : index
  cf.br ^bb13(%31 : index)
^bb19:  // pred: ^bb13
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
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb4
    %1 = arith.cmpi slt, %0, %c8 : index
    cf.cond_br %1, ^bb2(%c0 : index), ^bb5(%c0 : index)
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
  ^bb5(%6: index):  // 2 preds: ^bb1, ^bb8
    %7 = arith.cmpi slt, %6, %c4 : index
    cf.cond_br %7, ^bb6(%c0 : index), ^bb9(%c0 : index)
  ^bb6(%8: index):  // 2 preds: ^bb5, ^bb7
    %9 = arith.cmpi slt, %8, %c2 : index
    cf.cond_br %9, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    memref.store %cst_0, %alloc_2[%6, %8] : memref<4x2xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb6(%10 : index)
  ^bb8:  // pred: ^bb6
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb5(%11 : index)
  ^bb9(%12: index):  // 2 preds: ^bb5, ^bb12
    %13 = arith.cmpi slt, %12, %c8 : index
    cf.cond_br %13, ^bb10(%c0 : index), ^bb13(%c0 : index)
  ^bb10(%14: index):  // 2 preds: ^bb9, ^bb11
    %15 = arith.cmpi slt, %14, %c2 : index
    cf.cond_br %15, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %cst, %alloc_3[%12, %14] : memref<8x2xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb10(%16 : index)
  ^bb12:  // pred: ^bb10
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb9(%17 : index)
  ^bb13(%18: index):  // 2 preds: ^bb9, ^bb18
    %19 = arith.cmpi slt, %18, %c8 : index
    cf.cond_br %19, ^bb14(%c0 : index), ^bb19
  ^bb14(%20: index):  // 2 preds: ^bb13, ^bb17
    %21 = arith.cmpi slt, %20, %c4 : index
    cf.cond_br %21, ^bb15(%c0 : index), ^bb18
  ^bb15(%22: index):  // 2 preds: ^bb14, ^bb16
    %23 = arith.cmpi slt, %22, %c2 : index
    cf.cond_br %23, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %24 = memref.load %alloc[%18, %20] : memref<8x4xf64>
    %25 = memref.load %alloc_2[%20, %22] : memref<4x2xf64>
    %26 = memref.load %alloc_3[%18, %22] : memref<8x2xf64>
    %27 = arith.mulf %24, %25 : f64
    %28 = arith.addf %26, %27 : f64
    memref.store %28, %alloc_3[%18, %22] : memref<8x2xf64>
    %29 = arith.addi %22, %c1 : index
    cf.br ^bb15(%29 : index)
  ^bb17:  // pred: ^bb15
    %30 = arith.addi %20, %c1 : index
    cf.br ^bb14(%30 : index)
  ^bb18:  // pred: ^bb14
    %31 = arith.addi %18, %c1 : index
    cf.br ^bb13(%31 : index)
  ^bb19:  // pred: ^bb13
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_sort_index(memref<*xindex>, index, index)
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
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.200000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb4
    %1 = arith.cmpi slt, %0, %c8 : index
    cf.cond_br %1, ^bb2(%c0 : index), ^bb5(%c0 : index)
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
  ^bb5(%6: index):  // 2 preds: ^bb1, ^bb8
    %7 = arith.cmpi slt, %6, %c4 : index
    cf.cond_br %7, ^bb6(%c0 : index), ^bb9(%c0 : index)
  ^bb6(%8: index):  // 2 preds: ^bb5, ^bb7
    %9 = arith.cmpi slt, %8, %c2 : index
    cf.cond_br %9, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    memref.store %cst_0, %alloc_2[%6, %8] : memref<4x2xf64>
    %10 = arith.addi %8, %c1 : index
    cf.br ^bb6(%10 : index)
  ^bb8:  // pred: ^bb6
    %11 = arith.addi %6, %c1 : index
    cf.br ^bb5(%11 : index)
  ^bb9(%12: index):  // 2 preds: ^bb5, ^bb12
    %13 = arith.cmpi slt, %12, %c8 : index
    cf.cond_br %13, ^bb10(%c0 : index), ^bb13(%c0 : index)
  ^bb10(%14: index):  // 2 preds: ^bb9, ^bb11
    %15 = arith.cmpi slt, %14, %c2 : index
    cf.cond_br %15, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %cst, %alloc_3[%12, %14] : memref<8x2xf64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb10(%16 : index)
  ^bb12:  // pred: ^bb10
    %17 = arith.addi %12, %c1 : index
    cf.br ^bb9(%17 : index)
  ^bb13(%18: index):  // 2 preds: ^bb9, ^bb18
    %19 = arith.cmpi slt, %18, %c8 : index
    cf.cond_br %19, ^bb14(%c0 : index), ^bb19
  ^bb14(%20: index):  // 2 preds: ^bb13, ^bb17
    %21 = arith.cmpi slt, %20, %c4 : index
    cf.cond_br %21, ^bb15(%c0 : index), ^bb18
  ^bb15(%22: index):  // 2 preds: ^bb14, ^bb16
    %23 = arith.cmpi slt, %22, %c2 : index
    cf.cond_br %23, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %24 = memref.load %alloc[%18, %20] : memref<8x4xf64>
    %25 = memref.load %alloc_2[%20, %22] : memref<4x2xf64>
    %26 = memref.load %alloc_3[%18, %22] : memref<8x2xf64>
    %27 = arith.mulf %24, %25 : f64
    %28 = arith.addf %26, %27 : f64
    memref.store %28, %alloc_3[%18, %22] : memref<8x2xf64>
    %29 = arith.addi %22, %c1 : index
    cf.br ^bb15(%29 : index)
  ^bb17:  // pred: ^bb15
    %30 = arith.addi %20, %c1 : index
    cf.br ^bb14(%30 : index)
  ^bb18:  // pred: ^bb14
    %31 = arith.addi %18, %c1 : index
    cf.br ^bb13(%31 : index)
  ^bb19:  // pred: ^bb13
    %cast = memref.cast %alloc_3 : memref<8x2xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_sort_index(memref<*xindex>, index, index)
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
    %26 = llvm.mlir.constant(4 : index) : i64
    %27 = llvm.mlir.constant(2 : index) : i64
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.mlir.constant(8 : index) : i64
    %30 = llvm.mlir.zero : !llvm.ptr
    %31 = llvm.getelementptr %30[%29] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %32 = llvm.ptrtoint %31 : !llvm.ptr to i64
    %33 = llvm.mlir.constant(32 : index) : i64
    %34 = llvm.add %32, %33  : i64
    %35 = llvm.call @malloc(%34) : (i64) -> !llvm.ptr
    %36 = llvm.ptrtoint %35 : !llvm.ptr to i64
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.sub %33, %37  : i64
    %39 = llvm.add %36, %38  : i64
    %40 = llvm.urem %39, %33  : i64
    %41 = llvm.sub %39, %40  : i64
    %42 = llvm.inttoptr %41 : i64 to !llvm.ptr
    %43 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %44 = llvm.insertvalue %35, %43[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %45 = llvm.insertvalue %42, %44[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %46 = llvm.mlir.constant(0 : index) : i64
    %47 = llvm.insertvalue %46, %45[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %48 = llvm.insertvalue %26, %47[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %49 = llvm.insertvalue %27, %48[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %50 = llvm.insertvalue %27, %49[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %51 = llvm.insertvalue %28, %50[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.mlir.constant(8 : index) : i64
    %53 = llvm.mlir.constant(2 : index) : i64
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.mlir.constant(16 : index) : i64
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
    cf.br ^bb1(%c0 : index)
  ^bb1(%78: index):  // 2 preds: ^bb0, ^bb4
    %79 = builtin.unrealized_conversion_cast %78 : index to i64
    %80 = arith.cmpi slt, %78, %c8 : index
    cf.cond_br %80, ^bb2(%c0 : index), ^bb5(%c0 : index)
  ^bb2(%81: index):  // 2 preds: ^bb1, ^bb3
    %82 = builtin.unrealized_conversion_cast %81 : index to i64
    %83 = arith.cmpi slt, %81, %c4 : index
    cf.cond_br %83, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %84 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %85 = llvm.mlir.constant(4 : index) : i64
    %86 = llvm.mul %79, %85  : i64
    %87 = llvm.add %86, %82  : i64
    %88 = llvm.getelementptr %84[%87] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst_1, %88 : f64, !llvm.ptr
    %89 = arith.addi %81, %c1 : index
    cf.br ^bb2(%89 : index)
  ^bb4:  // pred: ^bb2
    %90 = arith.addi %78, %c1 : index
    cf.br ^bb1(%90 : index)
  ^bb5(%91: index):  // 2 preds: ^bb1, ^bb8
    %92 = builtin.unrealized_conversion_cast %91 : index to i64
    %93 = arith.cmpi slt, %91, %c4 : index
    cf.cond_br %93, ^bb6(%c0 : index), ^bb9(%c0 : index)
  ^bb6(%94: index):  // 2 preds: ^bb5, ^bb7
    %95 = builtin.unrealized_conversion_cast %94 : index to i64
    %96 = arith.cmpi slt, %94, %c2 : index
    cf.cond_br %96, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %97 = llvm.extractvalue %51[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %98 = llvm.mlir.constant(2 : index) : i64
    %99 = llvm.mul %92, %98  : i64
    %100 = llvm.add %99, %95  : i64
    %101 = llvm.getelementptr %97[%100] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst_0, %101 : f64, !llvm.ptr
    %102 = arith.addi %94, %c1 : index
    cf.br ^bb6(%102 : index)
  ^bb8:  // pred: ^bb6
    %103 = arith.addi %91, %c1 : index
    cf.br ^bb5(%103 : index)
  ^bb9(%104: index):  // 2 preds: ^bb5, ^bb12
    %105 = builtin.unrealized_conversion_cast %104 : index to i64
    %106 = arith.cmpi slt, %104, %c8 : index
    cf.cond_br %106, ^bb10(%c0 : index), ^bb13(%c0 : index)
  ^bb10(%107: index):  // 2 preds: ^bb9, ^bb11
    %108 = builtin.unrealized_conversion_cast %107 : index to i64
    %109 = arith.cmpi slt, %107, %c2 : index
    cf.cond_br %109, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %110 = llvm.extractvalue %77[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %111 = llvm.mlir.constant(2 : index) : i64
    %112 = llvm.mul %105, %111  : i64
    %113 = llvm.add %112, %108  : i64
    %114 = llvm.getelementptr %110[%113] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst, %114 : f64, !llvm.ptr
    %115 = arith.addi %107, %c1 : index
    cf.br ^bb10(%115 : index)
  ^bb12:  // pred: ^bb10
    %116 = arith.addi %104, %c1 : index
    cf.br ^bb9(%116 : index)
  ^bb13(%117: index):  // 2 preds: ^bb9, ^bb18
    %118 = builtin.unrealized_conversion_cast %117 : index to i64
    %119 = arith.cmpi slt, %117, %c8 : index
    cf.cond_br %119, ^bb14(%c0 : index), ^bb19
  ^bb14(%120: index):  // 2 preds: ^bb13, ^bb17
    %121 = builtin.unrealized_conversion_cast %120 : index to i64
    %122 = arith.cmpi slt, %120, %c4 : index
    cf.cond_br %122, ^bb15(%c0 : index), ^bb18
  ^bb15(%123: index):  // 2 preds: ^bb14, ^bb16
    %124 = builtin.unrealized_conversion_cast %123 : index to i64
    %125 = arith.cmpi slt, %123, %c2 : index
    cf.cond_br %125, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %126 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %127 = llvm.mlir.constant(4 : index) : i64
    %128 = llvm.mul %118, %127  : i64
    %129 = llvm.add %128, %121  : i64
    %130 = llvm.getelementptr %126[%129] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %131 = llvm.load %130 : !llvm.ptr -> f64
    %132 = llvm.extractvalue %51[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %133 = llvm.mlir.constant(2 : index) : i64
    %134 = llvm.mul %121, %133  : i64
    %135 = llvm.add %134, %124  : i64
    %136 = llvm.getelementptr %132[%135] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %137 = llvm.load %136 : !llvm.ptr -> f64
    %138 = llvm.extractvalue %77[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %139 = llvm.mlir.constant(2 : index) : i64
    %140 = llvm.mul %118, %139  : i64
    %141 = llvm.add %140, %124  : i64
    %142 = llvm.getelementptr %138[%141] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %143 = llvm.load %142 : !llvm.ptr -> f64
    %144 = arith.mulf %131, %137 : f64
    %145 = arith.addf %143, %144 : f64
    %146 = llvm.extractvalue %77[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %147 = llvm.mlir.constant(2 : index) : i64
    %148 = llvm.mul %118, %147  : i64
    %149 = llvm.add %148, %124  : i64
    %150 = llvm.getelementptr %146[%149] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %145, %150 : f64, !llvm.ptr
    %151 = arith.addi %123, %c1 : index
    cf.br ^bb15(%151 : index)
  ^bb17:  // pred: ^bb15
    %152 = arith.addi %120, %c1 : index
    cf.br ^bb14(%152 : index)
  ^bb18:  // pred: ^bb14
    %153 = arith.addi %117, %c1 : index
    cf.br ^bb13(%153 : index)
  ^bb19:  // pred: ^bb13
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.alloca %154 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %77, %155 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %156 = llvm.mlir.constant(2 : index) : i64
    %157 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %158 = llvm.insertvalue %156, %157[0] : !llvm.struct<(i64, ptr)> 
    %159 = llvm.insertvalue %155, %158[1] : !llvm.struct<(i64, ptr)> 
    %160 = builtin.unrealized_conversion_cast %159 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    call @comet_print_memref_f64(%160) : (memref<*xf64>) -> ()
    return
  }
  func.func private @comet_sort_index(memref<*xindex>, index, index)
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
    %16 = llvm.add %14, %15  : i64
    %17 = llvm.call @malloc(%16) : (i64) -> !llvm.ptr
    %18 = llvm.ptrtoint %17 : !llvm.ptr to i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.sub %15, %19  : i64
    %21 = llvm.add %18, %20  : i64
    %22 = llvm.urem %21, %15  : i64
    %23 = llvm.sub %21, %22  : i64
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
    %34 = llvm.mlir.constant(4 : index) : i64
    %35 = llvm.mlir.constant(2 : index) : i64
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.mlir.constant(8 : index) : i64
    %38 = llvm.mlir.zero : !llvm.ptr
    %39 = llvm.getelementptr %38[%37] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %40 = llvm.ptrtoint %39 : !llvm.ptr to i64
    %41 = llvm.mlir.constant(32 : index) : i64
    %42 = llvm.add %40, %41  : i64
    %43 = llvm.call @malloc(%42) : (i64) -> !llvm.ptr
    %44 = llvm.ptrtoint %43 : !llvm.ptr to i64
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.sub %41, %45  : i64
    %47 = llvm.add %44, %46  : i64
    %48 = llvm.urem %47, %41  : i64
    %49 = llvm.sub %47, %48  : i64
    %50 = llvm.inttoptr %49 : i64 to !llvm.ptr
    %51 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %52 = llvm.insertvalue %43, %51[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.insertvalue %50, %52[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.mlir.constant(0 : index) : i64
    %55 = llvm.insertvalue %54, %53[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.insertvalue %34, %55[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %57 = llvm.insertvalue %35, %56[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %58 = llvm.insertvalue %35, %57[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %59 = llvm.insertvalue %36, %58[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.mlir.constant(8 : index) : i64
    %61 = llvm.mlir.constant(2 : index) : i64
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.mlir.constant(16 : index) : i64
    %64 = llvm.mlir.zero : !llvm.ptr
    %65 = llvm.getelementptr %64[%63] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %66 = llvm.ptrtoint %65 : !llvm.ptr to i64
    %67 = llvm.mlir.constant(32 : index) : i64
    %68 = llvm.add %66, %67  : i64
    %69 = llvm.call @malloc(%68) : (i64) -> !llvm.ptr
    %70 = llvm.ptrtoint %69 : !llvm.ptr to i64
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.sub %67, %71  : i64
    %73 = llvm.add %70, %72  : i64
    %74 = llvm.urem %73, %67  : i64
    %75 = llvm.sub %73, %74  : i64
    %76 = llvm.inttoptr %75 : i64 to !llvm.ptr
    %77 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %78 = llvm.insertvalue %69, %77[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %79 = llvm.insertvalue %76, %78[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.insertvalue %80, %79[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %82 = llvm.insertvalue %60, %81[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %83 = llvm.insertvalue %61, %82[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %84 = llvm.insertvalue %61, %83[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %85 = llvm.insertvalue %62, %84[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%4 : i64)
  ^bb1(%86: i64):  // 2 preds: ^bb0, ^bb4
    %87 = builtin.unrealized_conversion_cast %86 : i64 to index
    %88 = builtin.unrealized_conversion_cast %87 : index to i64
    %89 = llvm.icmp "slt" %86, %2 : i64
    llvm.cond_br %89, ^bb2(%4 : i64), ^bb5(%4 : i64)
  ^bb2(%90: i64):  // 2 preds: ^bb1, ^bb3
    %91 = builtin.unrealized_conversion_cast %90 : i64 to index
    %92 = builtin.unrealized_conversion_cast %91 : index to i64
    %93 = llvm.icmp "slt" %90, %1 : i64
    llvm.cond_br %93, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %94 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %95 = llvm.mlir.constant(4 : index) : i64
    %96 = llvm.mul %88, %95  : i64
    %97 = llvm.add %96, %92  : i64
    %98 = llvm.getelementptr %94[%97] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %98 : f64, !llvm.ptr
    %99 = llvm.add %90, %3  : i64
    llvm.br ^bb2(%99 : i64)
  ^bb4:  // pred: ^bb2
    %100 = llvm.add %86, %3  : i64
    llvm.br ^bb1(%100 : i64)
  ^bb5(%101: i64):  // 2 preds: ^bb1, ^bb8
    %102 = builtin.unrealized_conversion_cast %101 : i64 to index
    %103 = builtin.unrealized_conversion_cast %102 : index to i64
    %104 = llvm.icmp "slt" %101, %1 : i64
    llvm.cond_br %104, ^bb6(%4 : i64), ^bb9(%4 : i64)
  ^bb6(%105: i64):  // 2 preds: ^bb5, ^bb7
    %106 = builtin.unrealized_conversion_cast %105 : i64 to index
    %107 = builtin.unrealized_conversion_cast %106 : index to i64
    %108 = llvm.icmp "slt" %105, %0 : i64
    llvm.cond_br %108, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %109 = llvm.extractvalue %59[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %110 = llvm.mlir.constant(2 : index) : i64
    %111 = llvm.mul %103, %110  : i64
    %112 = llvm.add %111, %107  : i64
    %113 = llvm.getelementptr %109[%112] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %113 : f64, !llvm.ptr
    %114 = llvm.add %105, %3  : i64
    llvm.br ^bb6(%114 : i64)
  ^bb8:  // pred: ^bb6
    %115 = llvm.add %101, %3  : i64
    llvm.br ^bb5(%115 : i64)
  ^bb9(%116: i64):  // 2 preds: ^bb5, ^bb12
    %117 = builtin.unrealized_conversion_cast %116 : i64 to index
    %118 = builtin.unrealized_conversion_cast %117 : index to i64
    %119 = llvm.icmp "slt" %116, %2 : i64
    llvm.cond_br %119, ^bb10(%4 : i64), ^bb13(%4 : i64)
  ^bb10(%120: i64):  // 2 preds: ^bb9, ^bb11
    %121 = builtin.unrealized_conversion_cast %120 : i64 to index
    %122 = builtin.unrealized_conversion_cast %121 : index to i64
    %123 = llvm.icmp "slt" %120, %0 : i64
    llvm.cond_br %123, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %124 = llvm.extractvalue %85[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %125 = llvm.mlir.constant(2 : index) : i64
    %126 = llvm.mul %118, %125  : i64
    %127 = llvm.add %126, %122  : i64
    %128 = llvm.getelementptr %124[%127] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %128 : f64, !llvm.ptr
    %129 = llvm.add %120, %3  : i64
    llvm.br ^bb10(%129 : i64)
  ^bb12:  // pred: ^bb10
    %130 = llvm.add %116, %3  : i64
    llvm.br ^bb9(%130 : i64)
  ^bb13(%131: i64):  // 2 preds: ^bb9, ^bb18
    %132 = builtin.unrealized_conversion_cast %131 : i64 to index
    %133 = builtin.unrealized_conversion_cast %132 : index to i64
    %134 = llvm.icmp "slt" %131, %2 : i64
    llvm.cond_br %134, ^bb14(%4 : i64), ^bb19
  ^bb14(%135: i64):  // 2 preds: ^bb13, ^bb17
    %136 = builtin.unrealized_conversion_cast %135 : i64 to index
    %137 = builtin.unrealized_conversion_cast %136 : index to i64
    %138 = llvm.icmp "slt" %135, %1 : i64
    llvm.cond_br %138, ^bb15(%4 : i64), ^bb18
  ^bb15(%139: i64):  // 2 preds: ^bb14, ^bb16
    %140 = builtin.unrealized_conversion_cast %139 : i64 to index
    %141 = builtin.unrealized_conversion_cast %140 : index to i64
    %142 = llvm.icmp "slt" %139, %0 : i64
    llvm.cond_br %142, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %143 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %144 = llvm.mlir.constant(4 : index) : i64
    %145 = llvm.mul %133, %144  : i64
    %146 = llvm.add %145, %137  : i64
    %147 = llvm.getelementptr %143[%146] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %148 = llvm.load %147 : !llvm.ptr -> f64
    %149 = llvm.extractvalue %59[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %150 = llvm.mlir.constant(2 : index) : i64
    %151 = llvm.mul %137, %150  : i64
    %152 = llvm.add %151, %141  : i64
    %153 = llvm.getelementptr %149[%152] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %154 = llvm.load %153 : !llvm.ptr -> f64
    %155 = llvm.extractvalue %85[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %156 = llvm.mlir.constant(2 : index) : i64
    %157 = llvm.mul %133, %156  : i64
    %158 = llvm.add %157, %141  : i64
    %159 = llvm.getelementptr %155[%158] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %160 = llvm.load %159 : !llvm.ptr -> f64
    %161 = llvm.fmul %148, %154  : f64
    %162 = llvm.fadd %160, %161  : f64
    %163 = llvm.extractvalue %85[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %164 = llvm.mlir.constant(2 : index) : i64
    %165 = llvm.mul %133, %164  : i64
    %166 = llvm.add %165, %141  : i64
    %167 = llvm.getelementptr %163[%166] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %162, %167 : f64, !llvm.ptr
    %168 = llvm.add %139, %3  : i64
    llvm.br ^bb15(%168 : i64)
  ^bb17:  // pred: ^bb15
    %169 = llvm.add %135, %3  : i64
    llvm.br ^bb14(%169 : i64)
  ^bb18:  // pred: ^bb14
    %170 = llvm.add %131, %3  : i64
    llvm.br ^bb13(%170 : i64)
  ^bb19:  // pred: ^bb13
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.alloca %171 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %85, %172 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
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
  llvm.func @comet_sort_index(i64, !llvm.ptr, i64, i64) attributes {sym_visibility = "private"}
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
    %16 = llvm.add %14, %15  : i64
    %17 = llvm.call @malloc(%16) : (i64) -> !llvm.ptr
    %18 = llvm.ptrtoint %17 : !llvm.ptr to i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.sub %15, %19  : i64
    %21 = llvm.add %18, %20  : i64
    %22 = llvm.urem %21, %15  : i64
    %23 = llvm.sub %21, %22  : i64
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
    %34 = llvm.mlir.constant(4 : index) : i64
    %35 = llvm.mlir.constant(2 : index) : i64
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.mlir.constant(8 : index) : i64
    %38 = llvm.mlir.zero : !llvm.ptr
    %39 = llvm.getelementptr %38[%37] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %40 = llvm.ptrtoint %39 : !llvm.ptr to i64
    %41 = llvm.mlir.constant(32 : index) : i64
    %42 = llvm.add %40, %41  : i64
    %43 = llvm.call @malloc(%42) : (i64) -> !llvm.ptr
    %44 = llvm.ptrtoint %43 : !llvm.ptr to i64
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.sub %41, %45  : i64
    %47 = llvm.add %44, %46  : i64
    %48 = llvm.urem %47, %41  : i64
    %49 = llvm.sub %47, %48  : i64
    %50 = llvm.inttoptr %49 : i64 to !llvm.ptr
    %51 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %52 = llvm.insertvalue %43, %51[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.insertvalue %50, %52[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.mlir.constant(0 : index) : i64
    %55 = llvm.insertvalue %54, %53[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.insertvalue %34, %55[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %57 = llvm.insertvalue %35, %56[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %58 = llvm.insertvalue %35, %57[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %59 = llvm.insertvalue %36, %58[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.mlir.constant(8 : index) : i64
    %61 = llvm.mlir.constant(2 : index) : i64
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.mlir.constant(16 : index) : i64
    %64 = llvm.mlir.zero : !llvm.ptr
    %65 = llvm.getelementptr %64[%63] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %66 = llvm.ptrtoint %65 : !llvm.ptr to i64
    %67 = llvm.mlir.constant(32 : index) : i64
    %68 = llvm.add %66, %67  : i64
    %69 = llvm.call @malloc(%68) : (i64) -> !llvm.ptr
    %70 = llvm.ptrtoint %69 : !llvm.ptr to i64
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.sub %67, %71  : i64
    %73 = llvm.add %70, %72  : i64
    %74 = llvm.urem %73, %67  : i64
    %75 = llvm.sub %73, %74  : i64
    %76 = llvm.inttoptr %75 : i64 to !llvm.ptr
    %77 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %78 = llvm.insertvalue %69, %77[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %79 = llvm.insertvalue %76, %78[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.insertvalue %80, %79[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %82 = llvm.insertvalue %60, %81[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %83 = llvm.insertvalue %61, %82[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %84 = llvm.insertvalue %61, %83[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %85 = llvm.insertvalue %62, %84[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%4 : i64)
  ^bb1(%86: i64):  // 2 preds: ^bb0, ^bb4
    %87 = builtin.unrealized_conversion_cast %86 : i64 to index
    %88 = llvm.icmp "slt" %86, %2 : i64
    llvm.cond_br %88, ^bb2(%4 : i64), ^bb5(%4 : i64)
  ^bb2(%89: i64):  // 2 preds: ^bb1, ^bb3
    %90 = builtin.unrealized_conversion_cast %89 : i64 to index
    %91 = llvm.icmp "slt" %89, %1 : i64
    llvm.cond_br %91, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %92 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %93 = llvm.mlir.constant(4 : index) : i64
    %94 = llvm.mul %86, %93  : i64
    %95 = llvm.add %94, %89  : i64
    %96 = llvm.getelementptr %92[%95] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %96 : f64, !llvm.ptr
    %97 = llvm.add %89, %3  : i64
    llvm.br ^bb2(%97 : i64)
  ^bb4:  // pred: ^bb2
    %98 = llvm.add %86, %3  : i64
    llvm.br ^bb1(%98 : i64)
  ^bb5(%99: i64):  // 2 preds: ^bb1, ^bb8
    %100 = builtin.unrealized_conversion_cast %99 : i64 to index
    %101 = llvm.icmp "slt" %99, %1 : i64
    llvm.cond_br %101, ^bb6(%4 : i64), ^bb9(%4 : i64)
  ^bb6(%102: i64):  // 2 preds: ^bb5, ^bb7
    %103 = builtin.unrealized_conversion_cast %102 : i64 to index
    %104 = llvm.icmp "slt" %102, %0 : i64
    llvm.cond_br %104, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %105 = llvm.extractvalue %59[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %106 = llvm.mlir.constant(2 : index) : i64
    %107 = llvm.mul %99, %106  : i64
    %108 = llvm.add %107, %102  : i64
    %109 = llvm.getelementptr %105[%108] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %109 : f64, !llvm.ptr
    %110 = llvm.add %102, %3  : i64
    llvm.br ^bb6(%110 : i64)
  ^bb8:  // pred: ^bb6
    %111 = llvm.add %99, %3  : i64
    llvm.br ^bb5(%111 : i64)
  ^bb9(%112: i64):  // 2 preds: ^bb5, ^bb12
    %113 = builtin.unrealized_conversion_cast %112 : i64 to index
    %114 = llvm.icmp "slt" %112, %2 : i64
    llvm.cond_br %114, ^bb10(%4 : i64), ^bb13(%4 : i64)
  ^bb10(%115: i64):  // 2 preds: ^bb9, ^bb11
    %116 = builtin.unrealized_conversion_cast %115 : i64 to index
    %117 = llvm.icmp "slt" %115, %0 : i64
    llvm.cond_br %117, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %118 = llvm.extractvalue %85[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %119 = llvm.mlir.constant(2 : index) : i64
    %120 = llvm.mul %112, %119  : i64
    %121 = llvm.add %120, %115  : i64
    %122 = llvm.getelementptr %118[%121] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %122 : f64, !llvm.ptr
    %123 = llvm.add %115, %3  : i64
    llvm.br ^bb10(%123 : i64)
  ^bb12:  // pred: ^bb10
    %124 = llvm.add %112, %3  : i64
    llvm.br ^bb9(%124 : i64)
  ^bb13(%125: i64):  // 2 preds: ^bb9, ^bb18
    %126 = builtin.unrealized_conversion_cast %125 : i64 to index
    %127 = llvm.icmp "slt" %125, %2 : i64
    llvm.cond_br %127, ^bb14(%4 : i64), ^bb19
  ^bb14(%128: i64):  // 2 preds: ^bb13, ^bb17
    %129 = builtin.unrealized_conversion_cast %128 : i64 to index
    %130 = llvm.icmp "slt" %128, %1 : i64
    llvm.cond_br %130, ^bb15(%4 : i64), ^bb18
  ^bb15(%131: i64):  // 2 preds: ^bb14, ^bb16
    %132 = builtin.unrealized_conversion_cast %131 : i64 to index
    %133 = llvm.icmp "slt" %131, %0 : i64
    llvm.cond_br %133, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %134 = llvm.extractvalue %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %135 = llvm.mlir.constant(4 : index) : i64
    %136 = llvm.mul %125, %135  : i64
    %137 = llvm.add %136, %128  : i64
    %138 = llvm.getelementptr %134[%137] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %139 = llvm.load %138 : !llvm.ptr -> f64
    %140 = llvm.extractvalue %59[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %141 = llvm.mlir.constant(2 : index) : i64
    %142 = llvm.mul %128, %141  : i64
    %143 = llvm.add %142, %131  : i64
    %144 = llvm.getelementptr %140[%143] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %145 = llvm.load %144 : !llvm.ptr -> f64
    %146 = llvm.extractvalue %85[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %147 = llvm.mlir.constant(2 : index) : i64
    %148 = llvm.mul %125, %147  : i64
    %149 = llvm.add %148, %131  : i64
    %150 = llvm.getelementptr %146[%149] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %151 = llvm.load %150 : !llvm.ptr -> f64
    %152 = llvm.fmul %139, %145  : f64
    %153 = llvm.fadd %151, %152  : f64
    %154 = llvm.extractvalue %85[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %155 = llvm.mlir.constant(2 : index) : i64
    %156 = llvm.mul %125, %155  : i64
    %157 = llvm.add %156, %131  : i64
    %158 = llvm.getelementptr %154[%157] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %153, %158 : f64, !llvm.ptr
    %159 = llvm.add %131, %3  : i64
    llvm.br ^bb15(%159 : i64)
  ^bb17:  // pred: ^bb15
    %160 = llvm.add %128, %3  : i64
    llvm.br ^bb14(%160 : i64)
  ^bb18:  // pred: ^bb14
    %161 = llvm.add %125, %3  : i64
    llvm.br ^bb13(%161 : i64)
  ^bb19:  // pred: ^bb13
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.alloca %162 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %85, %163 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %164 = llvm.mlir.constant(2 : index) : i64
    %165 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %166 = llvm.insertvalue %164, %165[0] : !llvm.struct<(i64, ptr)> 
    %167 = llvm.insertvalue %163, %166[1] : !llvm.struct<(i64, ptr)> 
    %168 = builtin.unrealized_conversion_cast %167 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    %169 = llvm.extractvalue %167[0] : !llvm.struct<(i64, ptr)> 
    %170 = llvm.extractvalue %167[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%169, %170) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_sort_index(i64, !llvm.ptr, i64, i64) attributes {sym_visibility = "private"}
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
    %5 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %6 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %7 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %8 = llvm.mlir.constant(8 : index) : i64
    %9 = llvm.mlir.constant(4 : index) : i64
    %10 = llvm.mlir.constant(1 : index) : i64
    %11 = llvm.mlir.constant(32 : index) : i64
    %12 = llvm.mlir.zero : !llvm.ptr
    %13 = llvm.getelementptr %12[32] : (!llvm.ptr) -> !llvm.ptr, f64
    %14 = llvm.ptrtoint %13 : !llvm.ptr to i64
    %15 = llvm.mlir.constant(32 : index) : i64
    %16 = llvm.add %14, %15  : i64
    %17 = llvm.call @malloc(%16) : (i64) -> !llvm.ptr
    %18 = llvm.ptrtoint %17 : !llvm.ptr to i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.sub %15, %19  : i64
    %21 = llvm.add %18, %20  : i64
    %22 = llvm.urem %21, %15  : i64
    %23 = llvm.sub %21, %22  : i64
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
    %34 = llvm.mlir.constant(4 : index) : i64
    %35 = llvm.mlir.constant(2 : index) : i64
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.mlir.constant(8 : index) : i64
    %38 = llvm.mlir.zero : !llvm.ptr
    %39 = llvm.getelementptr %38[8] : (!llvm.ptr) -> !llvm.ptr, f64
    %40 = llvm.ptrtoint %39 : !llvm.ptr to i64
    %41 = llvm.mlir.constant(32 : index) : i64
    %42 = llvm.add %40, %41  : i64
    %43 = llvm.call @malloc(%42) : (i64) -> !llvm.ptr
    %44 = llvm.ptrtoint %43 : !llvm.ptr to i64
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.sub %41, %45  : i64
    %47 = llvm.add %44, %46  : i64
    %48 = llvm.urem %47, %41  : i64
    %49 = llvm.sub %47, %48  : i64
    %50 = llvm.inttoptr %49 : i64 to !llvm.ptr
    %51 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %52 = llvm.insertvalue %43, %51[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.insertvalue %50, %52[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.mlir.constant(0 : index) : i64
    %55 = llvm.insertvalue %54, %53[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.insertvalue %34, %55[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %57 = llvm.insertvalue %35, %56[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %58 = llvm.insertvalue %35, %57[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %59 = llvm.insertvalue %36, %58[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.mlir.constant(8 : index) : i64
    %61 = llvm.mlir.constant(2 : index) : i64
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.mlir.constant(16 : index) : i64
    %64 = llvm.mlir.zero : !llvm.ptr
    %65 = llvm.getelementptr %64[16] : (!llvm.ptr) -> !llvm.ptr, f64
    %66 = llvm.ptrtoint %65 : !llvm.ptr to i64
    %67 = llvm.mlir.constant(32 : index) : i64
    %68 = llvm.add %66, %67  : i64
    %69 = llvm.call @malloc(%68) : (i64) -> !llvm.ptr
    %70 = llvm.ptrtoint %69 : !llvm.ptr to i64
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.sub %67, %71  : i64
    %73 = llvm.add %70, %72  : i64
    %74 = llvm.urem %73, %67  : i64
    %75 = llvm.sub %73, %74  : i64
    %76 = llvm.inttoptr %75 : i64 to !llvm.ptr
    %77 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %78 = llvm.insertvalue %69, %77[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %79 = llvm.insertvalue %76, %78[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.insertvalue %80, %79[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %82 = llvm.insertvalue %60, %81[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %83 = llvm.insertvalue %61, %82[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %84 = llvm.insertvalue %61, %83[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %85 = llvm.insertvalue %62, %84[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%4 : i64)
  ^bb1(%86: i64):  // 2 preds: ^bb0, ^bb4
    %87 = llvm.icmp "slt" %86, %2 : i64
    llvm.cond_br %87, ^bb2(%4 : i64), ^bb5(%4 : i64)
  ^bb2(%88: i64):  // 2 preds: ^bb1, ^bb3
    %89 = llvm.icmp "slt" %88, %1 : i64
    llvm.cond_br %89, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %90 = llvm.mlir.constant(4 : index) : i64
    %91 = llvm.mul %86, %90  : i64
    %92 = llvm.add %91, %88  : i64
    %93 = llvm.getelementptr %24[%92] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %93 : f64, !llvm.ptr
    %94 = llvm.add %88, %3  : i64
    llvm.br ^bb2(%94 : i64)
  ^bb4:  // pred: ^bb2
    %95 = llvm.add %86, %3  : i64
    llvm.br ^bb1(%95 : i64)
  ^bb5(%96: i64):  // 2 preds: ^bb1, ^bb8
    %97 = llvm.icmp "slt" %96, %1 : i64
    llvm.cond_br %97, ^bb6(%4 : i64), ^bb9(%4 : i64)
  ^bb6(%98: i64):  // 2 preds: ^bb5, ^bb7
    %99 = llvm.icmp "slt" %98, %0 : i64
    llvm.cond_br %99, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %100 = llvm.mlir.constant(2 : index) : i64
    %101 = llvm.mul %96, %100  : i64
    %102 = llvm.add %101, %98  : i64
    %103 = llvm.getelementptr %50[%102] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %103 : f64, !llvm.ptr
    %104 = llvm.add %98, %3  : i64
    llvm.br ^bb6(%104 : i64)
  ^bb8:  // pred: ^bb6
    %105 = llvm.add %96, %3  : i64
    llvm.br ^bb5(%105 : i64)
  ^bb9(%106: i64):  // 2 preds: ^bb5, ^bb12
    %107 = llvm.icmp "slt" %106, %2 : i64
    llvm.cond_br %107, ^bb10(%4 : i64), ^bb13(%4 : i64)
  ^bb10(%108: i64):  // 2 preds: ^bb9, ^bb11
    %109 = llvm.icmp "slt" %108, %0 : i64
    llvm.cond_br %109, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %110 = llvm.mlir.constant(2 : index) : i64
    %111 = llvm.mul %106, %110  : i64
    %112 = llvm.add %111, %108  : i64
    %113 = llvm.getelementptr %76[%112] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %113 : f64, !llvm.ptr
    %114 = llvm.add %108, %3  : i64
    llvm.br ^bb10(%114 : i64)
  ^bb12:  // pred: ^bb10
    %115 = llvm.add %106, %3  : i64
    llvm.br ^bb9(%115 : i64)
  ^bb13(%116: i64):  // 2 preds: ^bb9, ^bb18
    %117 = llvm.icmp "slt" %116, %2 : i64
    llvm.cond_br %117, ^bb14(%4 : i64), ^bb19
  ^bb14(%118: i64):  // 2 preds: ^bb13, ^bb17
    %119 = llvm.icmp "slt" %118, %1 : i64
    llvm.cond_br %119, ^bb15(%4 : i64), ^bb18
  ^bb15(%120: i64):  // 2 preds: ^bb14, ^bb16
    %121 = llvm.icmp "slt" %120, %0 : i64
    llvm.cond_br %121, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %122 = llvm.mlir.constant(4 : index) : i64
    %123 = llvm.mul %116, %122  : i64
    %124 = llvm.add %123, %118  : i64
    %125 = llvm.getelementptr %24[%124] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %126 = llvm.load %125 : !llvm.ptr -> f64
    %127 = llvm.mlir.constant(2 : index) : i64
    %128 = llvm.mul %118, %127  : i64
    %129 = llvm.add %128, %120  : i64
    %130 = llvm.getelementptr %50[%129] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %131 = llvm.load %130 : !llvm.ptr -> f64
    %132 = llvm.mlir.constant(2 : index) : i64
    %133 = llvm.mul %116, %132  : i64
    %134 = llvm.add %133, %120  : i64
    %135 = llvm.getelementptr %76[%134] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %136 = llvm.load %135 : !llvm.ptr -> f64
    %137 = llvm.fmul %126, %131  : f64
    %138 = llvm.fadd %136, %137  : f64
    %139 = llvm.mlir.constant(2 : index) : i64
    %140 = llvm.mul %116, %139  : i64
    %141 = llvm.add %140, %120  : i64
    %142 = llvm.getelementptr %76[%141] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %138, %142 : f64, !llvm.ptr
    %143 = llvm.add %120, %3  : i64
    llvm.br ^bb15(%143 : i64)
  ^bb17:  // pred: ^bb15
    %144 = llvm.add %118, %3  : i64
    llvm.br ^bb14(%144 : i64)
  ^bb18:  // pred: ^bb14
    %145 = llvm.add %116, %3  : i64
    llvm.br ^bb13(%145 : i64)
  ^bb19:  // pred: ^bb13
    %146 = llvm.mlir.constant(1 : index) : i64
    %147 = llvm.alloca %146 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %85, %147 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %148 = llvm.mlir.constant(2 : index) : i64
    %149 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %150 = llvm.insertvalue %148, %149[0] : !llvm.struct<(i64, ptr)> 
    %151 = llvm.insertvalue %147, %150[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%148, %147) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_sort_index(i64, !llvm.ptr, i64, i64) attributes {sym_visibility = "private"}
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
    %5 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %6 = llvm.mlir.constant(3.400000e+00 : f64) : f64
    %7 = llvm.mlir.constant(2.200000e+00 : f64) : f64
    %8 = llvm.mlir.constant(8 : index) : i64
    %9 = llvm.mlir.constant(4 : index) : i64
    %10 = llvm.mlir.constant(1 : index) : i64
    %11 = llvm.mlir.constant(32 : index) : i64
    %12 = llvm.mlir.zero : !llvm.ptr
    %13 = llvm.getelementptr %12[32] : (!llvm.ptr) -> !llvm.ptr, f64
    %14 = llvm.ptrtoint %13 : !llvm.ptr to i64
    %15 = llvm.mlir.constant(32 : index) : i64
    %16 = llvm.add %14, %15  : i64
    %17 = llvm.call @malloc(%16) : (i64) -> !llvm.ptr
    %18 = llvm.ptrtoint %17 : !llvm.ptr to i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.sub %15, %19  : i64
    %21 = llvm.add %18, %20  : i64
    %22 = llvm.urem %21, %15  : i64
    %23 = llvm.sub %21, %22  : i64
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
    %34 = llvm.mlir.constant(4 : index) : i64
    %35 = llvm.mlir.constant(2 : index) : i64
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.mlir.constant(8 : index) : i64
    %38 = llvm.mlir.zero : !llvm.ptr
    %39 = llvm.getelementptr %38[8] : (!llvm.ptr) -> !llvm.ptr, f64
    %40 = llvm.ptrtoint %39 : !llvm.ptr to i64
    %41 = llvm.mlir.constant(32 : index) : i64
    %42 = llvm.add %40, %41  : i64
    %43 = llvm.call @malloc(%42) : (i64) -> !llvm.ptr
    %44 = llvm.ptrtoint %43 : !llvm.ptr to i64
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.sub %41, %45  : i64
    %47 = llvm.add %44, %46  : i64
    %48 = llvm.urem %47, %41  : i64
    %49 = llvm.sub %47, %48  : i64
    %50 = llvm.inttoptr %49 : i64 to !llvm.ptr
    %51 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %52 = llvm.insertvalue %43, %51[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.insertvalue %50, %52[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.mlir.constant(0 : index) : i64
    %55 = llvm.insertvalue %54, %53[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.insertvalue %34, %55[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %57 = llvm.insertvalue %35, %56[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %58 = llvm.insertvalue %35, %57[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %59 = llvm.insertvalue %36, %58[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.mlir.constant(8 : index) : i64
    %61 = llvm.mlir.constant(2 : index) : i64
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.mlir.constant(16 : index) : i64
    %64 = llvm.mlir.zero : !llvm.ptr
    %65 = llvm.getelementptr %64[16] : (!llvm.ptr) -> !llvm.ptr, f64
    %66 = llvm.ptrtoint %65 : !llvm.ptr to i64
    %67 = llvm.mlir.constant(32 : index) : i64
    %68 = llvm.add %66, %67  : i64
    %69 = llvm.call @malloc(%68) : (i64) -> !llvm.ptr
    %70 = llvm.ptrtoint %69 : !llvm.ptr to i64
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.sub %67, %71  : i64
    %73 = llvm.add %70, %72  : i64
    %74 = llvm.urem %73, %67  : i64
    %75 = llvm.sub %73, %74  : i64
    %76 = llvm.inttoptr %75 : i64 to !llvm.ptr
    %77 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %78 = llvm.insertvalue %69, %77[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %79 = llvm.insertvalue %76, %78[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.insertvalue %80, %79[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %82 = llvm.insertvalue %60, %81[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %83 = llvm.insertvalue %61, %82[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %84 = llvm.insertvalue %61, %83[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %85 = llvm.insertvalue %62, %84[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%4 : i64)
  ^bb1(%86: i64):  // 2 preds: ^bb0, ^bb4
    %87 = llvm.icmp "slt" %86, %2 : i64
    llvm.cond_br %87, ^bb2(%4 : i64), ^bb5(%4 : i64)
  ^bb2(%88: i64):  // 2 preds: ^bb1, ^bb3
    %89 = llvm.icmp "slt" %88, %1 : i64
    llvm.cond_br %89, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %90 = llvm.mlir.constant(4 : index) : i64
    %91 = llvm.mul %86, %90  : i64
    %92 = llvm.add %91, %88  : i64
    %93 = llvm.getelementptr %24[%92] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %7, %93 : f64, !llvm.ptr
    %94 = llvm.add %88, %3  : i64
    llvm.br ^bb2(%94 : i64)
  ^bb4:  // pred: ^bb2
    %95 = llvm.add %86, %3  : i64
    llvm.br ^bb1(%95 : i64)
  ^bb5(%96: i64):  // 2 preds: ^bb1, ^bb8
    %97 = llvm.icmp "slt" %96, %1 : i64
    llvm.cond_br %97, ^bb6(%4 : i64), ^bb9(%4 : i64)
  ^bb6(%98: i64):  // 2 preds: ^bb5, ^bb7
    %99 = llvm.icmp "slt" %98, %0 : i64
    llvm.cond_br %99, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %100 = llvm.mlir.constant(2 : index) : i64
    %101 = llvm.mul %96, %100  : i64
    %102 = llvm.add %101, %98  : i64
    %103 = llvm.getelementptr %50[%102] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %103 : f64, !llvm.ptr
    %104 = llvm.add %98, %3  : i64
    llvm.br ^bb6(%104 : i64)
  ^bb8:  // pred: ^bb6
    %105 = llvm.add %96, %3  : i64
    llvm.br ^bb5(%105 : i64)
  ^bb9(%106: i64):  // 2 preds: ^bb5, ^bb12
    %107 = llvm.icmp "slt" %106, %2 : i64
    llvm.cond_br %107, ^bb10(%4 : i64), ^bb13(%4 : i64)
  ^bb10(%108: i64):  // 2 preds: ^bb9, ^bb11
    %109 = llvm.icmp "slt" %108, %0 : i64
    llvm.cond_br %109, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %110 = llvm.mlir.constant(2 : index) : i64
    %111 = llvm.mul %106, %110  : i64
    %112 = llvm.add %111, %108  : i64
    %113 = llvm.getelementptr %76[%112] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %113 : f64, !llvm.ptr
    %114 = llvm.add %108, %3  : i64
    llvm.br ^bb10(%114 : i64)
  ^bb12:  // pred: ^bb10
    %115 = llvm.add %106, %3  : i64
    llvm.br ^bb9(%115 : i64)
  ^bb13(%116: i64):  // 2 preds: ^bb9, ^bb18
    %117 = llvm.icmp "slt" %116, %2 : i64
    llvm.cond_br %117, ^bb14(%4 : i64), ^bb19
  ^bb14(%118: i64):  // 2 preds: ^bb13, ^bb17
    %119 = llvm.icmp "slt" %118, %1 : i64
    llvm.cond_br %119, ^bb15(%4 : i64), ^bb18
  ^bb15(%120: i64):  // 2 preds: ^bb14, ^bb16
    %121 = llvm.icmp "slt" %120, %0 : i64
    llvm.cond_br %121, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %122 = llvm.mlir.constant(4 : index) : i64
    %123 = llvm.mul %116, %122  : i64
    %124 = llvm.add %123, %118  : i64
    %125 = llvm.getelementptr %24[%124] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %126 = llvm.load %125 : !llvm.ptr -> f64
    %127 = llvm.mlir.constant(2 : index) : i64
    %128 = llvm.mul %118, %127  : i64
    %129 = llvm.add %128, %120  : i64
    %130 = llvm.getelementptr %50[%129] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %131 = llvm.load %130 : !llvm.ptr -> f64
    %132 = llvm.mlir.constant(2 : index) : i64
    %133 = llvm.mul %116, %132  : i64
    %134 = llvm.add %133, %120  : i64
    %135 = llvm.getelementptr %76[%134] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %136 = llvm.load %135 : !llvm.ptr -> f64
    %137 = llvm.fmul %126, %131  : f64
    %138 = llvm.fadd %136, %137  : f64
    %139 = llvm.mlir.constant(2 : index) : i64
    %140 = llvm.mul %116, %139  : i64
    %141 = llvm.add %140, %120  : i64
    %142 = llvm.getelementptr %76[%141] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %138, %142 : f64, !llvm.ptr
    %143 = llvm.add %120, %3  : i64
    llvm.br ^bb15(%143 : i64)
  ^bb17:  // pred: ^bb15
    %144 = llvm.add %118, %3  : i64
    llvm.br ^bb14(%144 : i64)
  ^bb18:  // pred: ^bb14
    %145 = llvm.add %116, %3  : i64
    llvm.br ^bb13(%145 : i64)
  ^bb19:  // pred: ^bb13
    %146 = llvm.mlir.constant(1 : index) : i64
    %147 = llvm.alloca %146 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %85, %147 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %148 = llvm.mlir.constant(2 : index) : i64
    %149 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %150 = llvm.insertvalue %148, %149[0] : !llvm.struct<(i64, ptr)> 
    %151 = llvm.insertvalue %147, %150[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%148, %147) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_sort_index(i64, !llvm.ptr, i64, i64) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}
