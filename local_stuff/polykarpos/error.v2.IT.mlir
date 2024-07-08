module {
  func.func @main() {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %0 = "ta.static_index_label"(%c0, %c8, %c1) : (index, index, index) -> !ta.range
    %c0_0 = arith.constant 0 : index
    %c1_1 = arith.constant 1 : index
    %c4 = arith.constant 4 : index
    %1 = "ta.static_index_label"(%c0_0, %c4, %c1_1) : (index, index, index) -> !ta.range
    %c0_2 = arith.constant 0 : index
    %c1_3 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %2 = "ta.static_index_label"(%c0_2, %c2, %c1_3) : (index, index, index) -> !ta.range
    %3 = "ta.dense_tensor_decl"(%1, %2) {format = "Dense"} : (!ta.range, !ta.range) -> tensor<4x2xf64>
    %4 = "ta.dense_tensor_decl"(%0, %1) {format = "Dense"} : (!ta.range, !ta.range) -> tensor<8x4xf64>
    %5 = "ta.dense_tensor_decl"(%0, %2) {format = "Dense"} : (!ta.range, !ta.range) -> tensor<8x2xf64>
    "ta.fill"(%3) {value = 2.200000e+00 : f64} : (tensor<4x2xf64>) -> ()
    "ta.fill"(%4) {value = 3.400000e+00 : f64} : (tensor<8x4xf64>) -> ()
    "ta.fill"(%5) {value = 0.000000e+00 : f64} : (tensor<8x2xf64>) -> ()
    %6 = "it.ComputeRHS"(%3, %4) {allFormats = [["D", "D"], ["D", "D"]], allPerms = [[0, 1], [2, 0]]} : (tensor<4x2xf64>, tensor<8x4xf64>) -> tensor<*xf64>
    %7 = "it.ComputeLHS"(%5) {allFormats = [["D", "D"]], allPerms = [[2, 1]]} : (tensor<8x2xf64>) -> tensor<*xf64>
    %8 = "it.Compute"(%6, %7) {MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"} : (tensor<*xf64>, tensor<*xf64>) -> i64
    %9 = "it.Indices"(%8) {indices = [2]} : (i64) -> i64
    %10 = "it.Indices"(%9) {indices = [1]} : (i64) -> i64
    %11 = "it.Indices"(%10) {indices = [0]} : (i64) -> i64
    %12 = "it.itree"(%11) : (i64) -> i64
    return
  }
}
