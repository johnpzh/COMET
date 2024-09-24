module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.indexlabel
    %1 = "ta.index_label"() : () -> !ta.indexlabel
    %2 = "ta.index_label"() : () -> !ta.indexlabel
    %3 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x4xf64>
    %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x2xf64>
    %5 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<8x2xf64>
    "ta.fill"(%3) <{value = 2.200000e+00 : f64}> : (tensor<8x4xf64>) -> ()
    "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x2xf64>) -> ()
    "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<8x2xf64>) -> ()
    %6 = "it.ComputeRHS"(%3, %4) <{allFormats = [["D", "D"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (tensor<8x4xf64>, tensor<4x2xf64>) -> tensor<*xf64>
    %7 = "it.ComputeLHS"(%5) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<8x2xf64>) -> tensor<*xf64>
    %8 = "it.Compute"(%6, %7) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %9 = "it.Indices"(%8) <{indices = [2], iterator_type = "parallel"}> : (i64) -> i64
    %10 = "it.Indices"(%9) <{indices = [1], iterator_type = "default"}> : (i64) -> i64
    %11 = "it.Indices"(%10) <{indices = [0], iterator_type = "parallel"}> : (i64) -> i64
    %12 = "it.itree"(%11) : (i64) -> i64
    "ta.print"(%5) : (tensor<8x2xf64>) -> ()
    return
  }
}
