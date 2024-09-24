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
    %7 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?x512xf64>
    %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<512x256xf64>
    %9 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x256xf64>
    %c512 = arith.constant 512 : index
    %10 = "ta.dense_tensor_decl"(%c512) <{format = "Dense"}> : (index) -> tensor<?xf64>
    "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (tensor<?x?xf64>) -> ()
    "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x512xf64>) -> ()
    "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<512x256xf64>) -> ()
    "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x256xf64>) -> ()
    "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?xf64>) -> ()
    %11 = "ta.getTime"() : () -> f64
    %12 = "it.ComputeRHS"(%4, %7) <{allFormats = [["D", "CU"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (tensor<?x?xf64>, tensor<?x512xf64>) -> tensor<*xf64>
    %13 = "it.ComputeLHS"(%10) <{allFormats = [["D"]], allPerms = [[2]]}> : (tensor<?xf64>) -> tensor<*xf64>
    %14 = "it.Compute"(%12, %13) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %15 = "it.Indices"(%14) <{indices = [2], iterator_type = "default"}> : (i64) -> i64
    %16 = "it.Indices"(%15) <{indices = [1], iterator_type = "default"}> : (i64) -> i64
    %17 = "it.ComputeRHS"(%10, %8) <{allFormats = [["D"], ["D", "D"]], allPerms = [[2], [2, 3]]}> : (tensor<?xf64>, tensor<512x256xf64>) -> tensor<*xf64>
    %18 = "it.ComputeLHS"(%9) <{allFormats = [["D", "D"]], allPerms = [[0, 3]]}> : (tensor<?x256xf64>) -> tensor<*xf64>
    %19 = "it.Compute"(%17, %18) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %20 = "it.Indices"(%19) <{indices = [3], iterator_type = "default"}> : (i64) -> i64
    %21 = "it.Indices"(%20) <{indices = [2], iterator_type = "default"}> : (i64) -> i64
    %cst = arith.constant 0.000000e+00 : f64
    %22 = "it.ComputeRHS"(%cst) <{allFormats = [[]], allPerms = [[]]}> : (f64) -> tensor<*xf64>
    %23 = "it.ComputeLHS"(%10) <{allFormats = [["D"]], allPerms = [[1]]}> : (tensor<?xf64>) -> tensor<*xf64>
    %24 = "it.Compute"(%22, %23) <{MaskType = "none", comp_worksp_opt = false, semiring = "noop_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %25 = "it.Indices"(%24) <{indices = [1], iterator_type = "default"}> : (i64) -> i64
    %26 = "it.Indices"(%16, %21, %25) <{indices = [0], iterator_type = "parallel"}> : (i64, i64, i64) -> i64
    %27 = "it.itree"(%26) : (i64) -> i64
    %28 = "ta.getTime"() : () -> f64
    "ta.print_elapsed_time"(%11, %28) : (f64, f64) -> ()
    return
  }
}
