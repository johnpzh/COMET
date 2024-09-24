module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.indexlabel
    %1 = "ta.index_label"() : () -> !ta.indexlabel
    %2 = "ta.index_label"() : () -> !ta.indexlabel
    %3 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> tensor<?x?xf64>
    %c0 = arith.constant 0 : index
    %4 = "ta.dim"(%3, %c0) : (tensor<?x?xf64>, index) -> index
    %c1 = arith.constant 1 : index
    %5 = "ta.dim"(%3, %c1) : (tensor<?x?xf64>, index) -> index
    %6 = "ta.spTensor_decl"(%5) <{format = "CSR", temporal_tensor = false}> : (index) -> tensor<?x?xf64>
    %c1_0 = arith.constant 1 : index
    %7 = "ta.dim"(%6, %c1_0) : (tensor<?x?xf64>, index) -> index
    %8 = "ta.spTensor_decl"(%4, %7) <{format = "CSR", temporal_tensor = false}> : (index, index) -> tensor<?x?xf64>
    "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (tensor<?x?xf64>) -> ()
    "ta.fill_from_file"(%6) <{filename = "SPARSE_FILE_NAME1", readMode = 1 : i32}> : (tensor<?x?xf64>) -> ()
    %9 = "ta.getTime"() : () -> f64
    %10 = "ta.dense_tensor_decl"(%7) <{format = "Dense"}> : (index) -> tensor<?xf64>
    %11 = "ta.dense_tensor_decl"(%7) <{format = "Dense"}> : (index) -> tensor<?xindex>
    %12 = "ta.dense_tensor_decl"(%7) <{format = "Dense"}> : (index) -> tensor<?xindex>
    %alloc = memref.alloc() : memref<1xindex>
    %13 = bufferization.to_tensor %alloc : memref<1xindex>
    %c0_1 = arith.constant 0 : index
    %14 = "it.ComputeRHS"(%c0_1) <{allFormats = [[]], allPerms = [[]]}> : (index) -> tensor<*xindex>
    %15 = "it.ComputeLHS"(%13) <{allFormats = [[]], allPerms = [[]]}> : (tensor<1xindex>) -> tensor<*xf64>
    %16 = "it.Compute"(%14, %15) <{MaskType = "none", comp_worksp_opt = true, semiring = "plusxy_times"}> : (tensor<*xindex>, tensor<*xf64>) -> i64
    %17 = "it.ComputeRHS"(%3, %6) <{allFormats = [["D", "CU"], ["D", "CU"]], allPerms = [[0, 1], [1, 2]]}> : (tensor<?x?xf64>, tensor<?x?xf64>) -> tensor<*xf64>
    %18 = "it.ComputeLHS"(%10, %11, %12, %13) <{allFormats = [["D"]], allPerms = [[2]]}> : (tensor<?xf64>, tensor<?xindex>, tensor<?xindex>, tensor<1xindex>) -> tensor<*xf64>
    %19 = "it.Compute"(%17, %18) <{MaskType = "none", comp_worksp_opt = true, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %20 = "it.ComputeRHS"(%10, %11, %12, %13) <{allFormats = [["D"]], allPerms = [[2]]}> : (tensor<?xf64>, tensor<?xindex>, tensor<?xindex>, tensor<1xindex>) -> tensor<*xf64>
    %21 = "it.ComputeLHS"(%8) <{allFormats = [["D", "CU"]], allPerms = [[0, 2]]}> : (tensor<?x?xf64>) -> tensor<*xf64>
    %22 = "it.Compute"(%20, %21) <{MaskType = "none", comp_worksp_opt = true, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %23 = "it.Indices"(%19) <{indices = [2], iterator_type = "default"}> : (i64) -> i64
    %24 = "it.Indices"(%22) <{indices = [2], iterator_type = "default"}> : (i64) -> i64
    %25 = "it.Indices"(%23) <{indices = [1], iterator_type = "default"}> : (i64) -> i64
    %26 = "it.Indices"(%16, %25, %24) <{indices = [0], iterator_type = "default"}> : (i64, i64, i64) -> i64
    %27 = "it.itree"(%26) : (i64) -> i64
    %28 = "ta.getTime"() : () -> f64
    "ta.print_elapsed_time"(%9, %28) : (f64, f64) -> ()
    "ta.print"(%8) : (tensor<?x?xf64>) -> ()
    return
  }
}
