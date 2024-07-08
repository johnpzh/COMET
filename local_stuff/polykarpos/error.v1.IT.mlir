module {
  func.func @main() {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = "ta.dynamic_index_label"(%c0, %c1) : (index, index) -> !ta.range
    %c0_0 = arith.constant 0 : index
    %c1_1 = arith.constant 1 : index
    %1 = "ta.dynamic_index_label"(%c0_0, %c1_1) : (index, index) -> !ta.range
    %c0_2 = arith.constant 0 : index
    %c1_3 = arith.constant 1 : index
    %2 = "ta.dynamic_index_label"(%c0_2, %c1_3) : (index, index) -> !ta.range
    %3 = "ta.sparse_tensor_decl"(%0, %1) {format = "CSR", temporal_tensor = false} : (!ta.range, !ta.range) -> tensor<?x?xf64>
    %4 = "ta.sparse_tensor_decl"(%1, %2) {format = "CSR", temporal_tensor = false} : (!ta.range, !ta.range) -> tensor<?x?xf64>
    %5 = "ta.dense_tensor_decl"(%1, %2) {format = "Dense"} : (!ta.range, !ta.range) -> tensor<?x?xf64>
    %6 = "ta.dense_tensor_decl"(%0, %2) {format = "Dense"} : (!ta.range, !ta.range) -> tensor<?x?xf64>
    "ta.fill_from_file"(%3) {filename = "SPARSE_FILE_NAME0", readMode = 1 : i32} : (tensor<?x?xf64>) -> ()
    "ta.fill_from_file"(%4) {filename = "SPARSE_FILE_NAME1", readMode = 1 : i32} : (tensor<?x?xf64>) -> ()
    "ta.fill"(%5) {value = 0.000000e+00 : f64} : (tensor<?x?xf64>) -> ()
    "ta.fill"(%6) {value = 0.000000e+00 : f64} : (tensor<?x?xf64>) -> ()
    %7 = "it.ComputeRHS"(%3, %4) {allFormats = [["D", "CU"], ["D", "CU"]], allPerms = [[0, 1], [1, 2]]} : (tensor<?x?xf64>, tensor<?x?xf64>) -> tensor<*xf64>
    %8 = "it.ComputeLHS"(%6) {allFormats = [["D", "D"]], allPerms = [[0, 2]]} : (tensor<?x?xf64>) -> tensor<*xf64>
    %9 = "it.Compute"(%7, %8) {MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"} : (tensor<*xf64>, tensor<*xf64>) -> i64
    %10 = "it.Indices"(%9) {indices = [2]} : (i64) -> i64
    %11 = "it.Indices"(%10) {indices = [1]} : (i64) -> i64
    %12 = "it.Indices"(%11) {indices = [0]} : (i64) -> i64
    %13 = "it.itree"(%12) : (i64) -> i64
    return
  }
}
