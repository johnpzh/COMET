module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.indexlabel
    %1 = "ta.index_label"() : () -> !ta.indexlabel
    %2 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> tensor<?x?xf64>
    %c0 = arith.constant 0 : index
    %3 = "ta.dim"(%2, %c0) : (tensor<?x?xf64>, index) -> index
    %c1 = arith.constant 1 : index
    %4 = "ta.dim"(%2, %c1) : (tensor<?x?xf64>, index) -> index
    %5 = "ta.spTensor_decl"(%3, %4) <{format = "CSR", temporal_tensor = false}> : (index, index) -> tensor<?x?xf64>
    %6 = "ta.spTensor_decl"(%3, %4) <{format = "CSR", temporal_tensor = false}> : (index, index) -> tensor<?x?xf64>
    "ta.fill_from_file"(%2) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (tensor<?x?xf64>) -> ()
    "ta.fill_from_file"(%5) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (tensor<?x?xf64>) -> ()
    %7 = "ta.dense_tensor_decl"(%4) <{format = "Dense"}> : (index) -> tensor<?xf64>
    %8 = "ta.dense_tensor_decl"(%4) <{format = "Dense"}> : (index) -> tensor<?xindex>
    %9 = "ta.dense_tensor_decl"(%4) <{format = "Dense"}> : (index) -> tensor<?xindex>
    %alloc = memref.alloc() : memref<1xindex>
    %10 = bufferization.to_tensor %alloc : memref<1xindex>
    %c0_0 = arith.constant 0 : index
    %11 = "it.ComputeRHS"(%c0_0) <{allFormats = [[]], allPerms = [[]]}> : (index) -> tensor<*xindex>
    %12 = "it.ComputeLHS"(%10) <{allFormats = [[]], allPerms = [[]]}> : (tensor<1xindex>) -> tensor<*xf64>
    %13 = "it.Compute"(%11, %12) <{MaskType = "none", comp_worksp_opt = true, semiring = "noop_times"}> : (tensor<*xindex>, tensor<*xf64>) -> i64
    %14 = "it.ComputeRHS"(%2, %5) <{allFormats = [["D", "CU"], ["D", "CU"]], allPerms = [[0, 1], [0, 1]]}> : (tensor<?x?xf64>, tensor<?x?xf64>) -> tensor<*xf64>
    %15 = "it.ComputeLHS"(%7, %8, %9, %10) <{allFormats = [["D"]], allPerms = [[1]]}> : (tensor<?xf64>, tensor<?xindex>, tensor<?xindex>, tensor<1xindex>) -> tensor<*xf64>
    %c1_1 = arith.constant 1 : index
    %16 = "ta.dim"(%2, %c1_1) : (tensor<?x?xf64>, index) -> index
    %17 = "ta.dense_tensor_decl"(%16) <{format = "Dense"}> : (index) -> tensor<?xf64>
    %cst = arith.constant 0.000000e+00 : f64
    %18 = "it.ComputeRHS"(%cst) <{allFormats = [[]], allPerms = [[]]}> : (f64) -> tensor<*xf64>
    %19 = "it.ComputeLHS"(%17) <{allFormats = [["D"]], allPerms = [[1]]}> : (tensor<?xf64>) -> tensor<*xf64>
    %20 = "it.Compute"(%18, %19) <{MaskType = "none", comp_worksp_opt = true, semiring = "noop_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %21 = "it.ComputeRHS"(%2) <{allFormats = [["D", "CU"]], allPerms = [[0, 1]]}> : (tensor<?x?xf64>) -> tensor<*xf64>
    %22 = "it.ComputeLHS"(%17) <{allFormats = [["D"]], allPerms = [[1]]}> : (tensor<?xf64>) -> tensor<*xf64>
    %23 = "it.Compute"(%21, %22) <{MaskType = "none", comp_worksp_opt = true, semiring = "noop_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %24 = "it.ComputeRHS"(%17, %5) <{allFormats = [["D"], ["D", "CU"]], allPerms = [[1], [0, 1]]}> : (tensor<?xf64>, tensor<?x?xf64>) -> tensor<*xf64>
    %25 = "it.ComputeLHS"(%7, %8, %9, %10) <{allFormats = [["D"]], allPerms = [[1]]}> : (tensor<?xf64>, tensor<?xindex>, tensor<?xindex>, tensor<1xindex>) -> tensor<*xf64>
    %26 = "it.Compute"(%24, %25) <{MaskType = "none", comp_worksp_opt = true, semiring = "noop_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %27 = "it.Compute"(%14, %15) <{MaskType = "none", comp_worksp_opt = true, semiring = "noop_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %28 = "it.ComputeRHS"(%7, %8, %9, %10) <{allFormats = [["D"]], allPerms = [[1]]}> : (tensor<?xf64>, tensor<?xindex>, tensor<?xindex>, tensor<1xindex>) -> tensor<*xf64>
    %29 = "it.ComputeLHS"(%6) <{allFormats = [["D", "CU"]], allPerms = [[0, 1]]}> : (tensor<?x?xf64>) -> tensor<*xf64>
    %30 = "it.Compute"(%28, %29) <{MaskType = "none", comp_worksp_opt = true, semiring = "noop_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %31 = "it.Indices"(%20) <{indices = [1], iterator_type = "default"}> : (i64) -> i64
    %32 = "it.Indices"(%23) <{indices = [1], iterator_type = "default"}> : (i64) -> i64
    %33 = "it.Indices"(%26) <{indices = [1], iterator_type = "default"}> : (i64) -> i64
    %34 = "it.Indices"(%30) <{indices = [1], iterator_type = "default"}> : (i64) -> i64
    %35 = "it.Indices"(%13, %31, %32, %33, %34) <{indices = [0], iterator_type = "default"}> : (i64, i64, i64, i64, i64) -> i64
    %36 = "it.itree"(%35) : (i64) -> i64
    "ta.print"(%6) : (tensor<?x?xf64>) -> ()
    return
  }
}
