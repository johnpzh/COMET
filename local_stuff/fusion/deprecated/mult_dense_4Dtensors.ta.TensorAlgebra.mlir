module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.index_label"() : () -> !ta.index
    %4 = "ta.index_label"() : () -> !ta.index
    %5 = "ta.index_label"() : () -> !ta.index
    %6 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<2x2x2x2xf64>
    %7 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<2x2x2x2xf64>
    %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<2x2x2x2xf64>
    "ta.fill"(%6) <{value = 2.200000e+00 : f64}> : (tensor<2x2x2x2xf64>) -> ()
    "ta.fill"(%7) <{value = 3.600000e+00 : f64}> : (tensor<2x2x2x2xf64>) -> ()
    "ta.fill"(%8) <{value = 0.000000e+00 : f64}> : (tensor<2x2x2x2xf64>) -> ()
    %9 = "ta.mul"(%6, %7, %0, %3, %4, %5, %2, %5, %1, %3, %0, %2, %1, %4) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d4, d3, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d1, d5, d2, d4)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], operandSegmentSizes = array<i32: 1, 1, 12, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<2x2x2x2xf64>, tensor<2x2x2x2xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<2x2x2x2xf64>
    "ta.set_op"(%9, %8) {__beta__ = 0.000000e+00 : f64} : (tensor<2x2x2x2xf64>, tensor<2x2x2x2xf64>) -> ()
    "ta.print"(%8) : (tensor<2x2x2x2xf64>) -> ()
    return
  }
}
