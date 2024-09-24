module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.indexlabel
    %1 = "ta.index_label"() : () -> !ta.indexlabel
    %2 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<80000x16000xf64>
    %3 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<16000xf64>
    %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<80000xf64>
    "ta.fill"(%2) <{value = 2.300000e+00 : f64}> : (tensor<80000x16000xf64>) -> ()
    "ta.fill"(%3) <{value = 3.700000e+00 : f64}> : (tensor<16000xf64>) -> ()
    "ta.fill"(%4) <{value = 0.000000e+00 : f64}> : (tensor<80000xf64>) -> ()
    %5 = "ta.getTime"() : () -> f64
    %6 = "it.ComputeRHS"(%2, %3) <{allFormats = [["D", "D"], ["D"]], allPerms = [[0, 1], [1]]}> : (tensor<80000x16000xf64>, tensor<16000xf64>) -> tensor<*xf64>
    %7 = "it.ComputeLHS"(%4) <{allFormats = [["D"]], allPerms = [[0]]}> : (tensor<80000xf64>) -> tensor<*xf64>
    %8 = "it.Compute"(%6, %7) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %9 = "it.Indices"(%8) <{indices = [1], iterator_type = "default"}> : (i64) -> i64
    %10 = "it.Indices"(%9) <{indices = [0], iterator_type = "parallel"}> : (i64) -> i64
    %11 = "it.itree"(%10) : (i64) -> i64
    %12 = "ta.getTime"() : () -> f64
    "ta.print_elapsed_time"(%5, %12) : (f64, f64) -> ()
    return
  }
}
