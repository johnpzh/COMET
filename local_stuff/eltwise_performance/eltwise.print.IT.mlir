module {
  func.func @main() {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = "ta.dynamic_index_label"(%c0, %c1) : (index, index) -> !ta.range
    %c0_0 = arith.constant 0 : index
    %c1_1 = arith.constant 1 : index
    %1 = "ta.dynamic_index_label"(%c0_0, %c1_1) : (index, index) -> !ta.range
    %2 = "ta.sparse_tensor_decl"(%0, %1) {format = "CSR", temporal_tensor = false} : (!ta.range, !ta.range) -> tensor<?x?xf64>
    %3 = "ta.sparse_tensor_decl"(%0, %1) {format = "CSR", temporal_tensor = false} : (!ta.range, !ta.range) -> tensor<?x?xf64>
    %4 = "ta.sparse_tensor_decl"(%0, %1) {format = "CSR", temporal_tensor = false} : (!ta.range, !ta.range) -> tensor<?x?xf64>
    "ta.fill_from_file"(%2) {filename = "SPARSE_FILE_NAME0", readMode = 1 : i32} : (tensor<?x?xf64>) -> ()
    "ta.fill_from_file"(%3) {filename = "SPARSE_FILE_NAME0", readMode = 1 : i32} : (tensor<?x?xf64>) -> ()
    %5 = "ta.getTime"() : () -> f64
    %6 = "ta.dense_tensor_decl"(%1) {format = "Dense"} : (!ta.range) -> tensor<?xf64>
    %7 = "ta.dense_tensor_decl"(%1) {format = "Dense"} : (!ta.range) -> tensor<?xindex>
    %8 = "ta.dense_tensor_decl"(%1) {format = "Dense"} : (!ta.range) -> tensor<?xindex>
    %alloc = memref.alloc() : memref<1xindex>
    %9 = bufferization.to_tensor %alloc : memref<1xindex>
    %c0_2 = arith.constant 0 : index
    %10 = "it.ComputeRHS"(%c0_2) {allFormats = [[]], allPerms = [[]]} : (index) -> tensor<*xindex>
    %11 = "it.ComputeLHS"(%9) {allFormats = [[]], allPerms = [[]]} : (tensor<1xindex>) -> tensor<*xf64>
    %12 = "it.Compute"(%10, %11) {MaskType = "none", comp_worksp_opt = true, semiring = "noop_times"} : (tensor<*xindex>, tensor<*xf64>) -> i64
    %13 = "it.ComputeRHS"(%2, %3) {allFormats = [["D", "CU"], ["D", "CU"]], allPerms = [[0, 1], [0, 1]]} : (tensor<?x?xf64>, tensor<?x?xf64>) -> tensor<*xf64>
    %14 = "it.ComputeLHS"(%6, %7, %8, %9) {allFormats = [["D"]], allPerms = [[1]]} : (tensor<?xf64>, tensor<?xindex>, tensor<?xindex>, tensor<1xindex>) -> tensor<*xf64>
    %15 = "ta.dense_tensor_decl"(%1) {format = "Dense"} : (!ta.range) -> tensor<?xf64>
    %cst = arith.constant 0.000000e+00 : f64
    %16 = "it.ComputeRHS"(%cst) {allFormats = [[]], allPerms = [[]]} : (f64) -> tensor<*xf64>
    %17 = "it.ComputeLHS"(%15) {allFormats = [["D"]], allPerms = [[1]]} : (tensor<?xf64>) -> tensor<*xf64>
    %18 = "it.Compute"(%16, %17) {MaskType = "none", comp_worksp_opt = true, semiring = "noop_times"} : (tensor<*xf64>, tensor<*xf64>) -> i64
    %19 = "it.ComputeRHS"(%2) {allFormats = [["D", "CU"]], allPerms = [[0, 1]]} : (tensor<?x?xf64>) -> tensor<*xf64>
    %20 = "it.ComputeLHS"(%15) {allFormats = [["D"]], allPerms = [[1]]} : (tensor<?xf64>) -> tensor<*xf64>
    %21 = "it.Compute"(%19, %20) {MaskType = "none", comp_worksp_opt = true, semiring = "noop_times"} : (tensor<*xf64>, tensor<*xf64>) -> i64
    %22 = "it.ComputeRHS"(%15, %3) {allFormats = [["D"], ["D", "CU"]], allPerms = [[1], [0, 1]]} : (tensor<?xf64>, tensor<?x?xf64>) -> tensor<*xf64>
    %23 = "it.ComputeLHS"(%6, %7, %8, %9) {allFormats = [["D"]], allPerms = [[1]]} : (tensor<?xf64>, tensor<?xindex>, tensor<?xindex>, tensor<1xindex>) -> tensor<*xf64>
    %24 = "it.Compute"(%22, %23) {MaskType = "none", comp_worksp_opt = true, semiring = "noop_times"} : (tensor<*xf64>, tensor<*xf64>) -> i64
    %25 = "it.Compute"(%13, %14) {MaskType = "none", comp_worksp_opt = true, semiring = "noop_times"} : (tensor<*xf64>, tensor<*xf64>) -> i64
    %26 = "it.ComputeRHS"(%6, %7, %8, %9) {allFormats = [["D"]], allPerms = [[1]]} : (tensor<?xf64>, tensor<?xindex>, tensor<?xindex>, tensor<1xindex>) -> tensor<*xf64>
    %27 = "it.ComputeLHS"(%4) {allFormats = [["D", "CU"]], allPerms = [[0, 1]]} : (tensor<?x?xf64>) -> tensor<*xf64>
    %28 = "it.Compute"(%26, %27) {MaskType = "none", comp_worksp_opt = true, semiring = "noop_times"} : (tensor<*xf64>, tensor<*xf64>) -> i64
    %29 = "it.Indices"(%18) {indices = [1]} : (i64) -> i64
    %30 = "it.Indices"(%21) {indices = [1]} : (i64) -> i64
    %31 = "it.Indices"(%24) {indices = [1]} : (i64) -> i64
    %32 = "it.Indices"(%28) {indices = [1]} : (i64) -> i64
    %33 = "it.Indices"(%12, %29, %30, %31, %32) {indices = [0]} : (i64, i64, i64, i64, i64) -> i64
    %34 = "it.itree"(%33) : (i64) -> i64
    %35 = "ta.getTime"() : () -> f64
    "ta.print_elapsed_time"(%5, %35) : (f64, f64) -> ()
    "ta.print"(%4) : (tensor<?x?xf64>) -> ()
    return
  }
}
