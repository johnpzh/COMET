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
    %9 = "it.ComputeRHS"(%3, %6) <{allFormats = [["D", "CU"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (tensor<?x?xf64>, tensor<?x4xf64>) -> tensor<*xf64>
    %10 = "it.ComputeLHS"(%7) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<?x4xf64>) -> tensor<*xf64>
    %11 = "it.Compute"(%9, %10) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %12 = "it.Indices"(%11) <{indices = [2], iterator_type = "default"}> : (i64) -> i64
    %13 = "it.Indices"(%12) <{indices = [1], iterator_type = "default"}> : (i64) -> i64
    %14 = "it.Indices"(%13) <{indices = [0], iterator_type = "parallel"}> : (i64) -> i64
    %15 = "it.itree"(%14) : (i64) -> i64
    %16 = "ta.getTime"() : () -> f64
    "ta.print_elapsed_time"(%8, %16) : (f64, f64) -> ()
    return
  }
}
