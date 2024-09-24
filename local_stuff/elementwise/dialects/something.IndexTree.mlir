module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.indexlabel
    %1 = "ta.index_label"() : () -> !ta.indexlabel
    %2 = "ta.index_label"() : () -> !ta.indexlabel
    %3 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    %5 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    %c0 = arith.constant 0 : index
    %6 = "ta.dim"(%3, %c0) : (tensor<4x4xf64>, index) -> index
    %c1 = arith.constant 1 : index
    %7 = "ta.dim"(%4, %c1) : (tensor<4x4xf64>, index) -> index
    %8 = "ta.dense_tensor_decl"(%6, %7) <{format = "Dense"}> : (index, index) -> tensor<4x4xf64>
    "ta.fill"(%8) <{value = 0.000000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    %9 = "ta.mul"(%3, %4, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<4x4xf64>, tensor<4x4xf64>, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel) -> tensor<4x4xf64>
    "ta.set_op"(%9, %8) : (tensor<4x4xf64>, tensor<4x4xf64>) -> ()
    %10 = "ta.add"(%8, %4, %0, %1, %0, %1, %0, %1) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], semiring = "noop_plusxy"}> : (tensor<4x4xf64>, tensor<4x4xf64>, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel) -> tensor<4x4xf64>
    "ta.set_op"(%10, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<4x4xf64>, tensor<4x4xf64>) -> ()
    "ta.print"(%5) : (tensor<4x4xf64>) -> ()
    return
  }
}