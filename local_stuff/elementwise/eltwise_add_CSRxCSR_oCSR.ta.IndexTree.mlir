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
    %7 = "it.ComputeRHS"(%2, %5) <{allFormats = [["D", "CU"], ["D", "CU"]], allPerms = [[0, 1], [0, 1]]}> : (tensor<?x?xf64>, tensor<?x?xf64>) -> tensor<*xf64>
    %8 = "it.ComputeLHS"(%6) <{allFormats = [["D", "CU"]], allPerms = [[0, 1]]}> : (tensor<?x?xf64>) -> tensor<*xf64>
    %9 = "it.Compute"(%7, %8) <{MaskType = "none", comp_worksp_opt = false, semiring = "noop_plusxy"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %10 = "it.Indices"(%9) <{indices = [1], iterator_type = "default"}> : (i64) -> i64
    %11 = "it.Indices"(%10) <{indices = [0], iterator_type = "default"}> : (i64) -> i64
    %12 = "it.itree"(%11) : (i64) -> i64
    "ta.print"(%6) : (tensor<?x?xf64>) -> ()
    return
  }
}
