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
    "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 2 : i32}> : (tensor<?x?xf64>) -> ()
    %c0_0 = arith.constant 0 : index
    %6 = "ta.dim"(%3, %c0_0) : (tensor<?x?xf64>, index) -> index
    %c1_1 = arith.constant 1 : index
    %7 = "ta.dim"(%3, %c1_1) : (tensor<?x?xf64>, index) -> index
    %8 = "ta.spTensor_decl"(%6, %7) <{format = "CSR", temporal_tensor = true}> : (index, index) -> tensor<?x?xf64>
    %9 = "ta.dense_tensor_decl"(%7) <{format = "Dense"}> : (index) -> tensor<?xf64>
    %10 = "ta.dense_tensor_decl"(%7) <{format = "Dense"}> : (index) -> tensor<?xindex>
    %11 = "ta.dense_tensor_decl"(%7) <{format = "Dense"}> : (index) -> tensor<?xindex>
    %alloc = memref.alloc() : memref<1xindex>
    %12 = bufferization.to_tensor %alloc : memref<1xindex>
    %c0_2 = arith.constant 0 : index
    %13 = "it.ComputeRHS"(%c0_2) <{allFormats = [[]], allPerms = [[]]}> : (index) -> tensor<*xindex>
    %14 = "it.ComputeLHS"(%12) <{allFormats = [[]], allPerms = [[]]}> : (tensor<1xindex>) -> tensor<*xf64>
    %15 = "it.Compute"(%13, %14) <{MaskType = "none", comp_worksp_opt = true, semiring = "plusxy_times"}> : (tensor<*xindex>, tensor<*xf64>) -> i64
    %16 = "it.ComputeRHS"(%3, %3) <{allFormats = [["D", "CU"], ["D", "CU"]], allPerms = [[0, 1], [1, 2]]}> : (tensor<?x?xf64>, tensor<?x?xf64>) -> tensor<*xf64>
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
    %c0_3 = arith.constant 0 : index
    %27 = "ta.dim"(%8, %c0_3) : (tensor<?x?xf64>, index) -> index
    %c0_4 = arith.constant 0 : index
    %28 = "ta.dim"(%3, %c0_4) : (tensor<?x?xf64>, index) -> index
    %c1_5 = arith.constant 1 : index
    %29 = "ta.dim"(%8, %c1_5) : (tensor<?x?xf64>, index) -> index
    %c1_6 = arith.constant 1 : index
    %30 = "ta.dim"(%3, %c1_6) : (tensor<?x?xf64>, index) -> index
    %31 = "ta.spTensor_decl"(%27, %28, %29, %30) <{format = "CSR", temporal_tensor = true}> : (index, index, index, index) -> tensor<?x?xf64>
    %32 = "ta.dense_tensor_decl"(%28) <{format = "Dense"}> : (index) -> tensor<?xf64>
    %33 = "ta.dense_tensor_decl"(%28) <{format = "Dense"}> : (index) -> tensor<?xindex>
    %34 = "ta.dense_tensor_decl"(%28) <{format = "Dense"}> : (index) -> tensor<?xindex>
    %alloc_7 = memref.alloc() : memref<1xindex>
    %35 = bufferization.to_tensor %alloc_7 : memref<1xindex>
    %c0_8 = arith.constant 0 : index
    %36 = "it.ComputeRHS"(%c0_8) <{allFormats = [[]], allPerms = [[]]}> : (index) -> tensor<*xindex>
    %37 = "it.ComputeLHS"(%35) <{allFormats = [[]], allPerms = [[]]}> : (tensor<1xindex>) -> tensor<*xf64>
    %38 = "it.Compute"(%36, %37) <{MaskType = "none", comp_worksp_opt = true, semiring = "noop_times"}> : (tensor<*xindex>, tensor<*xf64>) -> i64
    %39 = "it.ComputeRHS"(%8, %3) <{allFormats = [["D", "CU"], ["D", "CU"]], allPerms = [[0, 2], [0, 2]]}> : (tensor<?x?xf64>, tensor<?x?xf64>) -> tensor<*xf64>
    %40 = "it.ComputeLHS"(%32, %33, %34, %35) <{allFormats = [["D"]], allPerms = [[2]]}> : (tensor<?xf64>, tensor<?xindex>, tensor<?xindex>, tensor<1xindex>) -> tensor<*xf64>
    %c1_9 = arith.constant 1 : index
    %41 = "ta.dim"(%8, %c1_9) : (tensor<?x?xf64>, index) -> index
    %42 = "ta.dense_tensor_decl"(%41) <{format = "Dense"}> : (index) -> tensor<?xf64>
    %cst = arith.constant 0.000000e+00 : f64
    %43 = "it.ComputeRHS"(%cst) <{allFormats = [[]], allPerms = [[]]}> : (f64) -> tensor<*xf64>
    %44 = "it.ComputeLHS"(%42) <{allFormats = [["D"]], allPerms = [[2]]}> : (tensor<?xf64>) -> tensor<*xf64>
    %45 = "it.Compute"(%43, %44) <{MaskType = "none", comp_worksp_opt = true, semiring = "noop_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %46 = "it.ComputeRHS"(%8) <{allFormats = [["D", "CU"]], allPerms = [[0, 2]]}> : (tensor<?x?xf64>) -> tensor<*xf64>
    %47 = "it.ComputeLHS"(%42) <{allFormats = [["D"]], allPerms = [[2]]}> : (tensor<?xf64>) -> tensor<*xf64>
    %48 = "it.Compute"(%46, %47) <{MaskType = "none", comp_worksp_opt = true, semiring = "noop_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %49 = "it.ComputeRHS"(%42, %3) <{allFormats = [["D"], ["D", "CU"]], allPerms = [[2], [0, 2]]}> : (tensor<?xf64>, tensor<?x?xf64>) -> tensor<*xf64>
    %50 = "it.ComputeLHS"(%32, %33, %34, %35) <{allFormats = [["D"]], allPerms = [[2]]}> : (tensor<?xf64>, tensor<?xindex>, tensor<?xindex>, tensor<1xindex>) -> tensor<*xf64>
    %51 = "it.Compute"(%49, %50) <{MaskType = "none", comp_worksp_opt = true, semiring = "noop_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %52 = "it.Compute"(%39, %40) <{MaskType = "none", comp_worksp_opt = true, semiring = "noop_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %53 = "it.ComputeRHS"(%32, %33, %34, %35) <{allFormats = [["D"]], allPerms = [[2]]}> : (tensor<?xf64>, tensor<?xindex>, tensor<?xindex>, tensor<1xindex>) -> tensor<*xf64>
    %54 = "it.ComputeLHS"(%31) <{allFormats = [["D", "CU"]], allPerms = [[0, 2]]}> : (tensor<?x?xf64>) -> tensor<*xf64>
    %55 = "it.Compute"(%53, %54) <{MaskType = "none", comp_worksp_opt = true, semiring = "noop_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %56 = "it.Indices"(%45) <{indices = [2], iterator_type = "default"}> : (i64) -> i64
    %57 = "it.Indices"(%48) <{indices = [2], iterator_type = "default"}> : (i64) -> i64
    %58 = "it.Indices"(%51) <{indices = [2], iterator_type = "default"}> : (i64) -> i64
    %59 = "it.Indices"(%55) <{indices = [2], iterator_type = "default"}> : (i64) -> i64
    %60 = "it.Indices"(%38, %56, %57, %58, %59) <{indices = [0], iterator_type = "omp.parallel"}> : (i64, i64, i64, i64, i64) -> i64
    %61 = "it.itree"(%60) : (i64) -> i64
    %62 = "ta.reduce"(%31) : (tensor<?x?xf64>) -> f64
    "ta.print"(%62) : (f64) -> ()
    return
  }
}
