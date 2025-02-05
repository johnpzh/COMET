module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.index_label"() : () -> !ta.index
    %4 = "ta.index_label"() : () -> !ta.index
    %5 = "ta.spTensor_decl"() <{format = "CSF", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>
    %c0 = arith.constant 0 : index
    %6 = "ta.dim"(%5, %c0) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
    %c1 = arith.constant 1 : index
    %7 = "ta.dim"(%5, %c1) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
    %c2 = arith.constant 2 : index
    %8 = "ta.dim"(%5, %c2) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
    %9 = "ta.dense_tensor_decl"(%8) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %10 = "ta.dense_tensor_decl"(%6, %7) <{format = "Dense"}> : (index, index) -> tensor<?x?x4xf64>
    %11 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    "ta.fill_from_file"(%5) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> ()
    "ta.fill"(%9) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x?x4xf64>) -> ()
    "ta.fill"(%11) <{value = 1.700000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    %12 = "ta.mul"(%5, %9, %0, %1, %2, %2, %3, %0, %1, %3) <{MaskType = "none", formats = ["CSF", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>], operandSegmentSizes = array<i32: 1, 1, 8, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, tensor<?x4xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<?x?x4xf64>
    "ta.set_op"(%12, %10) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?x4xf64>, tensor<?x?x4xf64>) -> ()
    "ta.print"(%5) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> ()
    "ta.print"(%9) : (tensor<?x4xf64>) -> ()
    "ta.print"(%10) : (tensor<?x?x4xf64>) -> ()
    "ta.print"(%11) : (tensor<4x4xf64>) -> ()
    return
  }
}
