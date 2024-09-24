module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.indexlabel
    %1 = "ta.index_label"() : () -> !ta.indexlabel
    %2 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> tensor<?x?xf64>
    %c0 = arith.constant 0 : index
    %3 = "ta.dim"(%2, %c0) : (tensor<?x?xf64>, index) -> index
    %c1 = arith.constant 1 : index
    %4 = "ta.dim"(%2, %c1) : (tensor<?x?xf64>, index) -> index
    %5 = "ta.spTensor_decl"(%3, %4) <{format = "CSR", temporal_tensor = false}> : (index, index) -> tensor<?x?xf64>
    %6 = "ta.spTensor_decl"(%3, %4) <{format = "CSR", temporal_tensor = false}> : (index, index) -> tensor<?x?xf64>
    "ta.fill_from_file"(%2) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (tensor<?x?xf64>) -> ()
    "ta.fill_from_file"(%5) <{filename = "SPARSE_FILE_NAME1", readMode = 1 : i32}> : (tensor<?x?xf64>) -> ()
    %7 = "ta.add"(%2, %5, %0, %1, %0, %1, %0, %1) <{MaskType = "none", formats = ["CSR", "CSR", "CSR"], indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], semiring = "noop_plusxy"}> : (tensor<?x?xf64>, tensor<?x?xf64>, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel) -> tensor<?x?xf64>
    "ta.set_op"(%7, %6) : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
    "ta.print"(%6) : (tensor<?x?xf64>) -> ()
    return
  }
}
