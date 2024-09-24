module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.indexlabel
    %1 = "ta.index_label"() : () -> !ta.indexlabel
    %2 = "ta.spTensor_decl"() <{format = "COO", temporal_tensor = false}> : () -> tensor<?x?xf64>
    %c0 = arith.constant 0 : index
    %3 = "ta.dim"(%2, %c0) : (tensor<?x?xf64>, index) -> index
    %c1 = arith.constant 1 : index
    %4 = "ta.dim"(%2, %c1) : (tensor<?x?xf64>, index) -> index
    %5 = "ta.dense_tensor_decl"(%3) <{format = "Dense"}> : (index) -> tensor<?xf64>
    %6 = "ta.dense_tensor_decl"(%4) <{format = "Dense"}> : (index) -> tensor<?xf64>
    "ta.fill"(%5) <{value = 1.700000e+00 : f64}> : (tensor<?xf64>) -> ()
    "ta.fill_from_file"(%2) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (tensor<?x?xf64>) -> ()
    "ta.fill"(%6) <{value = 0.000000e+00 : f64}> : (tensor<?xf64>) -> ()
    %7 = "ta.getTime"() : () -> f64
    %8 = "it.ComputeRHS"(%5, %2) <{allBlocks = [["UNK"], ["UNK", "UNK"]], allFormats = [["D"], ["CN", "S"]], allPerms = [[0], [0, 1]]}> : (tensor<?xf64>, tensor<?x?xf64>) -> tensor<*xf64>
    %9 = "it.ComputeLHS"(%6) <{allBlocks = [["UNK"]], allFormats = [["D"]], allPerms = [[1]]}> : (tensor<?xf64>) -> tensor<*xf64>
    %10 = "it.Compute"(%8, %9) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %11 = "it.Indices"(%10) <{indices = [1], iterator_type = "default"}> : (i64) -> i64
    %12 = "it.Indices"(%11) <{indices = [0], iterator_type = "default"}> : (i64) -> i64
    %13 = "it.itree"(%12) : (i64) -> i64
    %14 = "ta.getTime"() : () -> f64
    "ta.print_elapsed_time"(%7, %14) : (f64, f64) -> ()
    return
  }
}
