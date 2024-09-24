module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.indexlabel
    %1 = "ta.index_label"() : () -> !ta.indexlabel
    %2 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> tensor<?x?xf64>
    %c0 = arith.constant 0 : index
    %3 = "ta.dim"(%2, %c0) : (tensor<?x?xf64>, index) -> index
    %c1 = arith.constant 1 : index
    %4 = "ta.dim"(%2, %c1) : (tensor<?x?xf64>, index) -> index
    %5 = "ta.dense_tensor_decl"(%4) <{format = "Dense"}> : (index) -> tensor<?xf64>
    %6 = "ta.dense_tensor_decl"(%3) <{format = "Dense"}> : (index) -> tensor<?xf64>
    "ta.fill_from_file"(%2) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (tensor<?x?xf64>) -> ()
    "ta.fill"(%5) <{value = 1.700000e+00 : f64}> : (tensor<?xf64>) -> ()
    "ta.fill"(%6) <{value = 0.000000e+00 : f64}> : (tensor<?xf64>) -> ()
    %7 = "ta.mul"(%2, %5, %0, %1, %1, %0) <{MaskType = "none", formats = ["CSR", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], operandSegmentSizes = array<i32: 1, 1, 4, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?xf64>, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel) -> tensor<?xf64>
    "ta.set_op"(%7, %6) {__beta__ = 0.000000e+00 : f64} : (tensor<?xf64>, tensor<?xf64>) -> ()
    "ta.print"(%6) : (tensor<?xf64>) -> ()
    return
  }
}
