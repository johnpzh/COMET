module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.indexlabel
    %1 = "ta.index_label"() : () -> !ta.indexlabel
    %2 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<80000x16000xf64>
    %3 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<16000xf64>
    %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<80000xf64>
    "ta.fill"(%2) <{value = 2.300000e+00 : f64}> : (tensor<80000x16000xf64>) -> ()
    "ta.fill"(%3) <{value = 3.700000e+00 : f64}> : (tensor<16000xf64>) -> ()
    "ta.fill"(%4) <{value = 0.000000e+00 : f64}> : (tensor<80000xf64>) -> ()
    %5 = "ta.getTime"() : () -> f64
    %6 = "ta.mul"(%2, %3, %0, %1, %1, %0) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], operandSegmentSizes = array<i32: 1, 1, 4, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<80000x16000xf64>, tensor<16000xf64>, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel) -> tensor<80000xf64>
    "ta.set_op"(%6, %4) {__beta__ = 0.000000e+00 : f64} : (tensor<80000xf64>, tensor<80000xf64>) -> ()
    %7 = "ta.getTime"() : () -> f64
    "ta.print_elapsed_time"(%5, %7) : (f64, f64) -> ()
    return
  }
}
