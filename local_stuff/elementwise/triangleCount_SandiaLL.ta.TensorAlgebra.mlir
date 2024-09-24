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
    "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 2 : i32}> : (tensor<?x?xf64>) -> ()
    %c0_0 = arith.constant 0 : index
    %6 = "ta.dim"(%3, %c0_0) : (tensor<?x?xf64>, index) -> index
    %c1_1 = arith.constant 1 : index
    %7 = "ta.dim"(%3, %c1_1) : (tensor<?x?xf64>, index) -> index
    %8 = "ta.spTensor_decl"(%6, %7) <{format = "CSR", temporal_tensor = true}> : (index, index) -> tensor<?x?xf64>
    %9 = "ta.mul"(%3, %3, %0, %2, %2, %1, %0, %1) <{MaskType = "none", formats = ["CSR", "CSR", "CSR"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel) -> tensor<?x?xf64>
    "ta.set_op"(%9, %8) : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
    %c0_2 = arith.constant 0 : index
    %10 = "ta.dim"(%8, %c0_2) : (tensor<?x?xf64>, index) -> index
    %c0_3 = arith.constant 0 : index
    %11 = "ta.dim"(%3, %c0_3) : (tensor<?x?xf64>, index) -> index
    %c1_4 = arith.constant 1 : index
    %12 = "ta.dim"(%8, %c1_4) : (tensor<?x?xf64>, index) -> index
    %c1_5 = arith.constant 1 : index
    %13 = "ta.dim"(%3, %c1_5) : (tensor<?x?xf64>, index) -> index
    %14 = "ta.spTensor_decl"(%10, %11, %12, %13) <{format = "CSR", temporal_tensor = true}> : (index, index, index, index) -> tensor<?x?xf64>
    %15 = "ta.elews_mul"(%8, %3, %0, %1, %0, %1, %0, %1) <{MaskType = "none", formats = ["CSR", "CSR", "CSR"], indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], semiring = "noop_times"}> : (tensor<?x?xf64>, tensor<?x?xf64>, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel) -> tensor<?x?xf64>
    "ta.set_op"(%15, %14) : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
    %16 = "ta.reduce"(%14) : (tensor<?x?xf64>) -> f64
    "ta.print"(%16) : (f64) -> ()
    return
  }
}
