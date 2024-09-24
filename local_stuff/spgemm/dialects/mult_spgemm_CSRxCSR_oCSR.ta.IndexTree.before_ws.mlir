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
    %6 = "ta.spTensor_decl"(%5) <{format = "CSR", temporal_tensor = false}> : (index) -> tensor<?x?xf64>
    %c1_0 = arith.constant 1 : index
    %7 = "ta.dim"(%6, %c1_0) : (tensor<?x?xf64>, index) -> index
    %8 = "ta.spTensor_decl"(%4, %7) <{format = "CSR", temporal_tensor = false}> : (index, index) -> tensor<?x?xf64>
    "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (tensor<?x?xf64>) -> ()
    "ta.fill_from_file"(%6) <{filename = "SPARSE_FILE_NAME1", readMode = 1 : i32}> : (tensor<?x?xf64>) -> ()
    %9 = "ta.getTime"() : () -> f64
    %10 = "it.ComputeRHS"(%3, %6) <{allFormats = [["D", "CU"], ["D", "CU"]], allPerms = [[0, 1], [1, 2]]}> : (tensor<?x?xf64>, tensor<?x?xf64>) -> tensor<*xf64>
    %11 = "it.ComputeLHS"(%8) <{allFormats = [["D", "CU"]], allPerms = [[0, 2]]}> : (tensor<?x?xf64>) -> tensor<*xf64>
    %12 = "it.Compute"(%10, %11) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %13 = "it.Indices"(%12) <{indices = [2], iterator_type = "default"}> : (i64) -> i64
    %14 = "it.Indices"(%13) <{indices = [1], iterator_type = "default"}> : (i64) -> i64
    %15 = "it.Indices"(%14) <{indices = [0], iterator_type = "default"}> : (i64) -> i64
    %16 = "it.itree"(%15) : (i64) -> i64
    %17 = "ta.getTime"() : () -> f64
    "ta.print_elapsed_time"(%9, %17) : (f64, f64) -> ()
    "ta.print"(%8) : (tensor<?x?xf64>) -> ()
    return
  }
}
