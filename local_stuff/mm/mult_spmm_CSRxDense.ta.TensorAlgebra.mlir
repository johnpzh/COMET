module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.indexlabel
    %1 = "ta.index_label"() : () -> !ta.indexlabel
    %2 = "ta.index_label"() : () -> !ta.indexlabel
    %3 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> tensor<?x?xf64>
    %c0 = arith.constant 0 : index
    %4 = "ta.dim"(%3, %c0) : (tensor<?x?xf64>, index) -> index
    %c1 = arith.constant 1 : index
    %5 = "ta.dim"(%3, %c1) : (tensor<?x?xf64>, index) -> index
    %6 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %7 = "ta.dense_tensor_decl"(%4) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (tensor<?x?xf64>) -> ()
    "ta.fill"(%6) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    %8 = "ta.getTime"() : () -> f64
    %9 = "ta.mul"(%3, %6, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["CSR", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x4xf64>, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel) -> tensor<?x4xf64>
    "ta.set_op"(%9, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    %10 = "ta.getTime"() : () -> f64
    "ta.print_elapsed_time"(%8, %10) : (f64, f64) -> ()
    return
  }
}
