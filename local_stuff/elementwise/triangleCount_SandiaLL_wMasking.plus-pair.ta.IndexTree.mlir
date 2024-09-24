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
    %6 = "ta.spTensor_decl"(%4, %5) <{format = "CSR", temporal_tensor = false}> : (index, index) -> tensor<?x?xf64>
    "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 2 : i32}> : (tensor<?x?xf64>) -> ()
    %7 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?xf64>
    %8 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?xindex>
    %9 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?xindex>
    %alloc = memref.alloc() : memref<1xindex>
    %10 = bufferization.to_tensor %alloc : memref<1xindex>
    %c0_0 = arith.constant 0 : index
    %11 = "it.ComputeRHS"(%c0_0) <{allFormats = [[]], allPerms = [[]]}> : (index) -> tensor<*xindex>
    %12 = "it.ComputeLHS"(%10) <{allFormats = [[]], allPerms = [[]]}> : (tensor<1xindex>) -> tensor<*xf64>
    %13 = "it.Compute"(%11, %12) <{MaskType = "none", comp_worksp_opt = true, semiring = "plusxy_pairxy"}> : (tensor<*xindex>, tensor<*xf64>) -> i64
    %14 = "it.ComputeRHS"(%3, %3, %3) <{allFormats = [["D", "CU"], ["D", "CU"], ["D", "CU"]], allPerms = [[0, 1], [1, 2], [0, 2]]}> : (tensor<?x?xf64>, tensor<?x?xf64>, tensor<?x?xf64>) -> tensor<*xf64>
    %15 = "it.ComputeLHS"(%7, %8, %9, %10) <{allFormats = [["D"]], allPerms = [[2]]}> : (tensor<?xf64>, tensor<?xindex>, tensor<?xindex>, tensor<1xindex>) -> tensor<*xf64>
    %16 = "it.Compute"(%14, %15) <{MaskType = "push", comp_worksp_opt = true, semiring = "plusxy_pairxy"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %17 = "it.ComputeRHS"(%7, %8, %9, %10) <{allFormats = [["D"]], allPerms = [[2]]}> : (tensor<?xf64>, tensor<?xindex>, tensor<?xindex>, tensor<1xindex>) -> tensor<*xf64>
    %18 = "it.ComputeLHS"(%6) <{allFormats = [["D", "CU"]], allPerms = [[0, 2]]}> : (tensor<?x?xf64>) -> tensor<*xf64>
    %19 = "it.Compute"(%17, %18) <{MaskType = "none", comp_worksp_opt = true, semiring = "plusxy_pairxy"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %20 = "it.Indices"(%16) <{indices = [2], iterator_type = "default"}> : (i64) -> i64
    %21 = "it.Indices"(%19) <{indices = [2], iterator_type = "default"}> : (i64) -> i64
    %22 = "it.Indices"(%20) <{indices = [1], iterator_type = "default"}> : (i64) -> i64
    %23 = "it.Indices"(%13, %22, %21) <{indices = [0], iterator_type = "default"}> : (i64, i64, i64) -> i64
    %24 = "it.itree"(%23) : (i64) -> i64
    %25 = "ta.reduce"(%6) : (tensor<?x?xf64>) -> f64
    "ta.print"(%25) : (f64) -> ()
    return
  }
}
