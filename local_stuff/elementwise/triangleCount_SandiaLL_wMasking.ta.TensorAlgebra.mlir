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
    %6 = "ta.spTensor_decl"(%4, %5) <{format = "CSR", temporal_tensor = false}> : (index, index) -> tensor<?x?xf64>
    "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 2 : i32}> : (tensor<?x?xf64>) -> ()
    %7 = "ta.mul"(%3, %3, %0, %2, %2, %1, %0, %1, %3) <{MaskType = "push", formats = ["CSR", "CSR", "CSR"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], operandSegmentSizes = array<i32: 1, 1, 6, 1>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, tensor<?x?xf64>) -> tensor<?x?xf64>
    "ta.set_op"(%7, %6) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
    %8 = "ta.reduce"(%6) : (tensor<?x?xf64>) -> f64
    "ta.print"(%8) : (f64) -> ()
    return
  }
}
