module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.indexlabel
    %1 = "ta.index_label"() : () -> !ta.indexlabel
    %2 = "ta.index_label"() : () -> !ta.indexlabel
    %3 = "ta.index_label"() : () -> !ta.indexlabel
    %4 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> tensor<?x?xf64>
    %c0 = arith.constant 0 : index
    %5 = "ta.dim"(%4, %c0) : (tensor<?x?xf64>, index) -> index
    %c1 = arith.constant 1 : index
    %6 = "ta.dim"(%4, %c1) : (tensor<?x?xf64>, index) -> index
    %7 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    %9 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %10 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (tensor<?x?xf64>) -> ()
    "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    %11 = "it.ComputeRHS"(%4, %7) <{allFormats = [["D", "CU"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (tensor<?x?xf64>, tensor<?x4xf64>) -> tensor<*xf64>
    %12 = "it.ComputeLHS"(%10) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<?x4xf64>) -> tensor<*xf64>
    %13 = "it.Compute"(%11, %12) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %14 = "it.Indices"(%13) <{indices = [2], iterator_type = "default"}> : (i64) -> i64
    %15 = "it.Indices"(%14) <{indices = [1], iterator_type = "default"}> : (i64) -> i64
    %16 = "it.Indices"(%15) <{indices = [0], iterator_type = "parallel"}> : (i64) -> i64
    %17 = "it.itree"(%16) : (i64) -> i64
    %18 = "it.ComputeRHS"(%10, %8) <{allFormats = [["D", "D"], ["D", "D"]], allPerms = [[0, 2], [2, 3]]}> : (tensor<?x4xf64>, tensor<4x4xf64>) -> tensor<*xf64>
    %19 = "it.ComputeLHS"(%9) <{allFormats = [["D", "D"]], allPerms = [[0, 3]]}> : (tensor<?x4xf64>) -> tensor<*xf64>
    %20 = "it.Compute"(%18, %19) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %21 = "it.Indices"(%20) <{indices = [3], iterator_type = "default"}> : (i64) -> i64
    %22 = "it.Indices"(%21) <{indices = [2], iterator_type = "default"}> : (i64) -> i64
    %23 = "it.Indices"(%22) <{indices = [0], iterator_type = "parallel"}> : (i64) -> i64
    %24 = "it.itree"(%23) : (i64) -> i64
    "ta.print"(%9) : (tensor<?x4xf64>) -> ()
    return
  }
}
