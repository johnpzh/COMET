module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.indexlabel
    %1 = "ta.index_label"() : () -> !ta.indexlabel
    %2 = "ta.index_label"() : () -> !ta.indexlabel
    %3 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    %5 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    %c0 = arith.constant 0 : index
    %6 = "ta.dim"(%3, %c0) : (tensor<4x4xf64>, index) -> index
    %c1 = arith.constant 1 : index
    %7 = "ta.dim"(%4, %c1) : (tensor<4x4xf64>, index) -> index
    %8 = "ta.dense_tensor_decl"(%6, %7) <{format = "Dense"}> : (index, index) -> tensor<4x4xf64>
    "ta.fill"(%8) <{value = 0.000000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    %9 = "it.ComputeRHS"(%3, %4) <{allFormats = [["D", "D"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (tensor<4x4xf64>, tensor<4x4xf64>) -> tensor<*xf64>
    %10 = "it.ComputeLHS"(%8) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<4x4xf64>) -> tensor<*xf64>
    %11 = "it.Compute"(%9, %10) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %12 = "it.Indices"(%11) <{indices = [1], iterator_type = "default"}> : (i64) -> i64
    %13 = "it.Indices"(%12) <{indices = [2], iterator_type = "parallel"}> : (i64) -> i64
    %14 = "it.Indices"(%13) <{indices = [0], iterator_type = "parallel"}> : (i64) -> i64
    %15 = "it.itree"(%14) : (i64) -> i64
    %16 = "it.ComputeRHS"(%8, %4) <{allFormats = [["D", "D"], ["D", "D"]], allPerms = [[0, 1], [0, 1]]}> : (tensor<4x4xf64>, tensor<4x4xf64>) -> tensor<*xf64>
    %17 = "it.ComputeLHS"(%5) <{allFormats = [["D", "D"]], allPerms = [[0, 1]]}> : (tensor<4x4xf64>) -> tensor<*xf64>
    %18 = "it.Compute"(%16, %17) <{MaskType = "none", comp_worksp_opt = false, semiring = "noop_plusxy"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %19 = "it.Indices"(%18) <{indices = [1], iterator_type = "default"}> : (i64) -> i64
    %20 = "it.Indices"(%19) <{indices = [0], iterator_type = "parallel"}> : (i64) -> i64
    %21 = "it.itree"(%20) : (i64) -> i64
    "ta.print"(%5) : (tensor<4x4xf64>) -> ()
    return
  }
}
