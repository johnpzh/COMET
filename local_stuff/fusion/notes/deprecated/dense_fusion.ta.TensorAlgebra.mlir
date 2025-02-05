module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.index_label"() : () -> !ta.index
    %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x6xf64>
    %5 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<6x4xf64>
    %6 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    %7 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x4xf64>
    %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x4xf64>
    "ta.fill"(%4) <{value = 1.700000e+00 : f64}> : (tensor<8x6xf64>) -> ()
    "ta.fill"(%5) <{value = 1.200000e+00 : f64}> : (tensor<6x4xf64>) -> ()
    "ta.fill"(%6) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<8x4xf64>) -> ()
    "ta.fill"(%8) <{value = 0.000000e+00 : f64}> : (tensor<8x4xf64>) -> ()
    %9 = "ta.mul"(%4, %5, %0, %1, %1, %3, %0, %3) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d1, d0)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8x6xf64>, tensor<6x4xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8x4xf64>
    "ta.set_op"(%9, %8) {__beta__ = 0.000000e+00 : f64} : (tensor<8x4xf64>, tensor<8x4xf64>) -> ()
    %10 = "ta.mul"(%8, %6, %0, %3, %3, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<8x4xf64>, tensor<4x4xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<8x4xf64>
    "ta.set_op"(%10, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<8x4xf64>, tensor<8x4xf64>) -> ()
    "ta.print"(%7) : (tensor<8x4xf64>) -> ()
    return
  }
}
