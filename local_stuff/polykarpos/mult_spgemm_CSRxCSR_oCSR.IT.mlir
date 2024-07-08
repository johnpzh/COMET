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
    %5 = "ta.sparse_tensor_decl"(%0, %2) {format = "CSR", temporal_tensor = false} : (!ta.range, !ta.range) -> tensor<?x?xf64>
    "ta.fill_from_file"(%3) {filename = "SPARSE_FILE_NAME0", readMode = 1 : i32} : (tensor<?x?xf64>) -> ()
    "ta.fill_from_file"(%4) {filename = "SPARSE_FILE_NAME1", readMode = 1 : i32} : (tensor<?x?xf64>) -> ()
    %6 = "ta.dense_tensor_decl"(%2) {format = "Dense"} : (!ta.range) -> tensor<?xf64>
    %7 = "ta.dense_tensor_decl"(%2) {format = "Dense"} : (!ta.range) -> tensor<?xindex>
    %8 = "ta.dense_tensor_decl"(%2) {format = "Dense"} : (!ta.range) -> tensor<?xindex>
    %alloc = memref.alloc() : memref<1xindex>
    %9 = bufferization.to_tensor %alloc : memref<1xindex>
    %c0_4 = arith.constant 0 : index
    %10 = "it.ComputeRHS"(%c0_4) {allFormats = [[]], allPerms = [[]]} : (index) -> tensor<*xindex>
    %11 = "it.ComputeLHS"(%9) {allFormats = [[]], allPerms = [[]]} : (tensor<1xindex>) -> tensor<*xf64>
    %12 = "it.Compute"(%10, %11) {MaskType = "none", comp_worksp_opt = true, semiring = "plusxy_times"} : (tensor<*xindex>, tensor<*xf64>) -> i64
    %13 = "it.ComputeRHS"(%3, %4) {allFormats = [["D", "CU"], ["D", "CU"]], allPerms = [[0, 1], [1, 2]]} : (tensor<?x?xf64>, tensor<?x?xf64>) -> tensor<*xf64>
    %14 = "it.ComputeLHS"(%6, %7, %8, %9) {allFormats = [["D"]], allPerms = [[2]]} : (tensor<?xf64>, tensor<?xindex>, tensor<?xindex>, tensor<1xindex>) -> tensor<*xf64>
    %15 = "it.Compute"(%13, %14) {MaskType = "none", comp_worksp_opt = true, semiring = "plusxy_times"} : (tensor<*xf64>, tensor<*xf64>) -> i64
    %16 = "it.ComputeRHS"(%6, %7, %8, %9) {allFormats = [["D"]], allPerms = [[2]]} : (tensor<?xf64>, tensor<?xindex>, tensor<?xindex>, tensor<1xindex>) -> tensor<*xf64>
    %17 = "it.ComputeLHS"(%5) {allFormats = [["D", "CU"]], allPerms = [[0, 2]]} : (tensor<?x?xf64>) -> tensor<*xf64>
    %18 = "it.Compute"(%16, %17) {MaskType = "none", comp_worksp_opt = true, semiring = "plusxy_times"} : (tensor<*xf64>, tensor<*xf64>) -> i64
    %19 = "it.Indices"(%15) {indices = [2]} : (i64) -> i64
    %20 = "it.Indices"(%18) {indices = [2]} : (i64) -> i64
    %21 = "it.Indices"(%19) {indices = [1]} : (i64) -> i64
    %22 = "it.Indices"(%12, %21, %20) {indices = [0]} : (i64, i64, i64) -> i64
    %23 = "it.itree"(%22) : (i64) -> i64
    "ta.print"(%5) : (tensor<?x?xf64>) -> ()
    return
  }
}
