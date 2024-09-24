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
    %9 = "ta.dense_tensor_decl"(%7) <{format = "Dense"}> : (index) -> tensor<?xf64>
    %10 = "ta.dense_tensor_decl"(%7) <{format = "Dense"}> : (index) -> tensor<?xindex>
    %11 = "ta.dense_tensor_decl"(%7) <{format = "Dense"}> : (index) -> tensor<?xindex>
    %alloc = memref.alloc() : memref<1xindex>
    %12 = bufferization.to_tensor %alloc : memref<1xindex>
    %c0_1 = arith.constant 0 : index
    %13 = "it.ComputeRHS"(%c0_1) <{allFormats = [[]], allPerms = [[]]}> : (index) -> tensor<*xindex>
    %14 = "it.ComputeLHS"(%12) <{allFormats = [[]], allPerms = [[]]}> : (tensor<1xindex>) -> tensor<*xf64>
    %15 = "it.Compute"(%13, %14) <{MaskType = "none", comp_worksp_opt = true, semiring = "plusxy_times"}> : (tensor<*xindex>, tensor<*xf64>) -> i64
    %16 = "it.ComputeRHS"(%3, %6) <{allFormats = [["D", "CU"], ["D", "CU"]], allPerms = [[0, 1], [1, 2]]}> : (tensor<?x?xf64>, tensor<?x?xf64>) -> tensor<*xf64>
    %17 = "it.ComputeLHS"(%9, %10, %11, %12) <{allFormats = [["D"]], allPerms = [[2]]}> : (tensor<?xf64>, tensor<?xindex>, tensor<?xindex>, tensor<1xindex>) -> tensor<*xf64>
    %18 = "it.Compute"(%16, %17) <{MaskType = "none", comp_worksp_opt = true, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %19 = "it.ComputeRHS"(%9, %10, %11, %12) <{allFormats = [["D"]], allPerms = [[2]]}> : (tensor<?xf64>, tensor<?xindex>, tensor<?xindex>, tensor<1xindex>) -> tensor<*xf64>
    %20 = "it.ComputeLHS"(%8) <{allFormats = [["D", "CU"]], allPerms = [[0, 2]]}> : (tensor<?x?xf64>) -> tensor<*xf64>
    %21 = "it.Compute"(%19, %20) <{MaskType = "none", comp_worksp_opt = true, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %22 = "it.Indices"(%18) <{indices = [2], iterator_type = "default"}> : (i64) -> i64
    %23 = "it.Indices"(%21) <{indices = [2], iterator_type = "default"}> : (i64) -> i64
    %24 = "it.Indices"(%22) <{indices = [1], iterator_type = "default"}> : (i64) -> i64
    %25 = "it.Indices"(%15, %24, %23) <{indices = [0], iterator_type = "omp.parallel"}> : (i64, i64, i64) -> i64
    %26 = "it.itree"(%25) : (i64) -> i64
    "ta.print"(%8) : (tensor<?x?xf64>) -> ()
    return
  }
}
