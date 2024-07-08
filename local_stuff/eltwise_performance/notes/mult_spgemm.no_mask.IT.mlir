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
    %6 = "ta.sparse_tensor_decl"(%0, %2) {format = "CSR", temporal_tensor = false} : (!ta.range, !ta.range) -> tensor<?x?xf64>
    "ta.fill_from_file"(%3) {filename = "SPARSE_FILE_NAME0", readMode = 1 : i32} : (tensor<?x?xf64>) -> ()
    "ta.fill_from_file"(%4) {filename = "SPARSE_FILE_NAME1", readMode = 1 : i32} : (tensor<?x?xf64>) -> ()
    "ta.fill_from_file"(%6) {filename = "SPARSE_FILE_NAME0", readMode = 1 : i32} : (tensor<?x?xf64>) -> ()
    %7 = "ta.dense_tensor_decl"(%2) {format = "Dense"} : (!ta.range) -> tensor<?xf64>
    %8 = "ta.dense_tensor_decl"(%2) {format = "Dense"} : (!ta.range) -> tensor<?xindex>
    %9 = "ta.dense_tensor_decl"(%2) {format = "Dense"} : (!ta.range) -> tensor<?xindex>
    %alloc = memref.alloc() : memref<1xindex>
    %10 = bufferization.to_tensor %alloc : memref<1xindex>
    %c0_4 = arith.constant 0 : index
    
    %11 = "it.ComputeRHS"(%c0_4) {allFormats = [[]], allPerms = [[]]} : (index) -> tensor<*xindex>
    %12 = "it.ComputeLHS"(%10) {allFormats = [[]], allPerms = [[]]} : (tensor<1xindex>) -> tensor<*xf64>
    %13 = "it.Compute"(%11, %12) {MaskType = "none", comp_worksp_opt = true, semiring = "plusxy_times"} : (tensor<*xindex>, tensor<*xf64>) -> i64
    
    %14 = "it.ComputeRHS"(%3, %4) {allFormats = [["D", "CU"], ["D", "CU"]], allPerms = [[0, 1], [1, 2]]} : (tensor<?x?xf64>, tensor<?x?xf64>) -> tensor<*xf64>
    %15 = "it.ComputeLHS"(%7, %8, %9, %10) {allFormats = [["D"]], allPerms = [[2]]} : (tensor<?xf64>, tensor<?xindex>, tensor<?xindex>, tensor<1xindex>) -> tensor<*xf64>
    %16 = "it.Compute"(%14, %15) {MaskType = "none", comp_worksp_opt = true, semiring = "plusxy_times"} : (tensor<*xf64>, tensor<*xf64>) -> i64
    
    %17 = "it.ComputeRHS"(%7, %8, %9, %10) {allFormats = [["D"]], allPerms = [[2]]} : (tensor<?xf64>, tensor<?xindex>, tensor<?xindex>, tensor<1xindex>) -> tensor<*xf64>
    %18 = "it.ComputeLHS"(%5) {allFormats = [["D", "CU"]], allPerms = [[0, 2]]} : (tensor<?x?xf64>) -> tensor<*xf64>
    %19 = "it.Compute"(%17, %18) {MaskType = "none", comp_worksp_opt = true, semiring = "plusxy_times"} : (tensor<*xf64>, tensor<*xf64>) -> i64
    
    %20 = "it.Indices"(%16) {indices = [2]} : (i64) -> i64
    %21 = "it.Indices"(%19) {indices = [2]} : (i64) -> i64
    %22 = "it.Indices"(%20) {indices = [1]} : (i64) -> i64
    %23 = "it.Indices"(%13, %22, %21) {indices = [0]} : (i64, i64, i64) -> i64
    %24 = "it.itree"(%23) : (i64) -> i64
    "ta.print"(%5) : (tensor<?x?xf64>) -> ()
    %25 = "ta.reduce"(%5) : (tensor<?x?xf64>) -> f64
    "ta.print"(%25) : (f64) -> ()
    return
  }
}
