module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.indexlabel
    %1 = "ta.index_label"() : () -> !ta.indexlabel
    %2 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    %3 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    "ta.fill"(%2) <{value = 2.700000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%3) <{value = 3.200000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%4) <{value = 0.000000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    %5 = "it.ComputeRHS"(%2, %3) <{allFormats = [["D", "D"], ["D", "D"]], allPerms = [[0, 1], [0, 1]]}> : (tensor<4x4xf64>, tensor<4x4xf64>) -> tensor<*xf64>
    %6 = "it.ComputeLHS"(%4) <{allFormats = [["D", "D"]], allPerms = [[0, 1]]}> : (tensor<4x4xf64>) -> tensor<*xf64>
    %7 = "it.Compute"(%5, %6) <{MaskType = "none", comp_worksp_opt = false, semiring = "noop_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %8 = "it.Indices"(%7) <{indices = [1], iterator_type = "default"}> : (i64) -> i64
    %9 = "it.Indices"(%8) <{indices = [0], iterator_type = "parallel"}> : (i64) -> i64
    %10 = "it.itree"(%9) : (i64) -> i64
    "ta.print"(%4) : (tensor<4x4xf64>) -> ()
    return
  }
}
