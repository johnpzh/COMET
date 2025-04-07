// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c7 = arith.constant 7 : index
  %c6 = arith.constant 6 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c-1 = arith.constant -1 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<13xindex>
  %1 = memref.load %alloc[%c1] : memref<13xindex>
  %2 = memref.load %alloc[%c2] : memref<13xindex>
  %3 = memref.load %alloc[%c3] : memref<13xindex>
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_0 = memref.alloc(%0) : memref<?xindex>
  linalg.fill ins(%c0 : index) outs(%alloc_0 : memref<?xindex>)
  %cast_1 = memref.cast %alloc_0 : memref<?xindex> to memref<*xindex>
  %alloc_2 = memref.alloc(%1) : memref<?xindex>
  linalg.fill ins(%c0 : index) outs(%alloc_2 : memref<?xindex>)
  %cast_3 = memref.cast %alloc_2 : memref<?xindex> to memref<*xindex>
  %alloc_4 = memref.alloc(%2) : memref<?xindex>
  linalg.fill ins(%c0 : index) outs(%alloc_4 : memref<?xindex>)
  %cast_5 = memref.cast %alloc_4 : memref<?xindex> to memref<*xindex>
  %alloc_6 = memref.alloc(%3) : memref<?xindex>
  linalg.fill ins(%c0 : index) outs(%alloc_6 : memref<?xindex>)
  %cast_7 = memref.cast %alloc_6 : memref<?xindex> to memref<*xindex>
  %alloc_8 = memref.alloc(%4) : memref<?xindex>
  linalg.fill ins(%c0 : index) outs(%alloc_8 : memref<?xindex>)
  %cast_9 = memref.cast %alloc_8 : memref<?xindex> to memref<*xindex>
  %alloc_10 = memref.alloc(%5) : memref<?xindex>
  linalg.fill ins(%c0 : index) outs(%alloc_10 : memref<?xindex>)
  %cast_11 = memref.cast %alloc_10 : memref<?xindex> to memref<*xindex>
  %alloc_12 = memref.alloc(%6) : memref<?xindex>
  linalg.fill ins(%c0 : index) outs(%alloc_12 : memref<?xindex>)
  %cast_13 = memref.cast %alloc_12 : memref<?xindex> to memref<*xindex>
  %alloc_14 = memref.alloc(%7) : memref<?xindex>
  linalg.fill ins(%c0 : index) outs(%alloc_14 : memref<?xindex>)
  %cast_15 = memref.cast %alloc_14 : memref<?xindex> to memref<*xindex>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_0 restrict writable : memref<?xindex>
  %12 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xindex>
  %13 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xindex>
  %14 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xindex>
  %15 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xindex>
  %16 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xindex>
  %17 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xindex>
  %18 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xindex>
  %19 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>) -> !ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>) -> tensor<?xindex>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>) -> tensor<?xindex>
  %dim = tensor.dim %22, %c0 : tensor<?xindex>
  %dim_18 = tensor.dim %23, %c0 : tensor<?xindex>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>) -> index
  %alloc_19 = memref.alloc() : memref<13xindex>
  %cast_20 = memref.cast %alloc_19 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_20, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %25 = memref.load %alloc_19[%c0] : memref<13xindex>
  %26 = memref.load %alloc_19[%c1] : memref<13xindex>
  %27 = memref.load %alloc_19[%c2] : memref<13xindex>
  %28 = memref.load %alloc_19[%c3] : memref<13xindex>
  %29 = memref.load %alloc_19[%c4] : memref<13xindex>
  %30 = memref.load %alloc_19[%c5] : memref<13xindex>
  %31 = memref.load %alloc_19[%c6] : memref<13xindex>
  %32 = memref.load %alloc_19[%c7] : memref<13xindex>
  %33 = memref.load %alloc_19[%c8] : memref<13xindex>
  %34 = memref.load %alloc_19[%c9] : memref<13xindex>
  %35 = memref.load %alloc_19[%c10] : memref<13xindex>
  %alloc_21 = memref.alloc(%25) : memref<?xindex>
  linalg.fill ins(%c0 : index) outs(%alloc_21 : memref<?xindex>)
  %cast_22 = memref.cast %alloc_21 : memref<?xindex> to memref<*xindex>
  %alloc_23 = memref.alloc(%26) : memref<?xindex>
  linalg.fill ins(%c0 : index) outs(%alloc_23 : memref<?xindex>)
  %cast_24 = memref.cast %alloc_23 : memref<?xindex> to memref<*xindex>
  %alloc_25 = memref.alloc(%27) : memref<?xindex>
  linalg.fill ins(%c0 : index) outs(%alloc_25 : memref<?xindex>)
  %cast_26 = memref.cast %alloc_25 : memref<?xindex> to memref<*xindex>
  %alloc_27 = memref.alloc(%28) : memref<?xindex>
  linalg.fill ins(%c0 : index) outs(%alloc_27 : memref<?xindex>)
  %cast_28 = memref.cast %alloc_27 : memref<?xindex> to memref<*xindex>
  %alloc_29 = memref.alloc(%29) : memref<?xindex>
  linalg.fill ins(%c0 : index) outs(%alloc_29 : memref<?xindex>)
  %cast_30 = memref.cast %alloc_29 : memref<?xindex> to memref<*xindex>
  %alloc_31 = memref.alloc(%30) : memref<?xindex>
  linalg.fill ins(%c0 : index) outs(%alloc_31 : memref<?xindex>)
  %cast_32 = memref.cast %alloc_31 : memref<?xindex> to memref<*xindex>
  %alloc_33 = memref.alloc(%31) : memref<?xindex>
  linalg.fill ins(%c0 : index) outs(%alloc_33 : memref<?xindex>)
  %cast_34 = memref.cast %alloc_33 : memref<?xindex> to memref<*xindex>
  %alloc_35 = memref.alloc(%32) : memref<?xindex>
  linalg.fill ins(%c0 : index) outs(%alloc_35 : memref<?xindex>)
  %cast_36 = memref.cast %alloc_35 : memref<?xindex> to memref<*xindex>
  %alloc_37 = memref.alloc(%33) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_37 : memref<?xf64>)
  %cast_38 = memref.cast %alloc_37 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_22, %cast_24, %cast_26, %cast_28, %cast_30, %cast_32, %cast_34, %cast_36, %cast_38, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
  %36 = bufferization.to_tensor %alloc_21 restrict writable : memref<?xindex>
  %37 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xindex>
  %38 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xindex>
  %39 = bufferization.to_tensor %alloc_27 restrict writable : memref<?xindex>
  %40 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xindex>
  %41 = bufferization.to_tensor %alloc_31 restrict writable : memref<?xindex>
  %42 = bufferization.to_tensor %alloc_33 restrict writable : memref<?xindex>
  %43 = bufferization.to_tensor %alloc_35 restrict writable : memref<?xindex>
  %44 = bufferization.to_tensor %alloc_37 restrict writable : memref<?xf64>
  %from_elements_39 = tensor.from_elements %34, %35 : tensor<2xindex>
  %45 = "ta.spTensor_construct"(%from_elements_39, %36, %40, %37, %41, %38, %42, %39, %43, %44) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>) -> !ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>
  %46 = "ta.SpTensorGetDimPos"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>) -> tensor<?xindex>
  %47 = "ta.SpTensorGetDimCrd"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>) -> tensor<?xindex>
  %dim_40 = tensor.dim %46, %c0 : tensor<?xindex>
  %dim_41 = tensor.dim %47, %c0 : tensor<?xindex>
  %48 = "ta.SpTensorGetDimSize"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>) -> index
  %49 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>) -> !it.domain
  %50 = "it.DeclDomainOp"(%48, %21) <{is_dynamic = false}> : (index, index) -> !it.symbolic_domain
  %51 = "it.itree"(%50) ({
    %55 = "it.RootOp"() : () -> !it.index_tree
    %56 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>) -> !it.domain
    %57 = "it.IndexOp"(%55, %56) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>, !it.index) -> (index, index)
    %58 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>, tensor<?xindex>, tensor<?xindex>, index, index, index, index) -> !it.domain
    %59 = "it.IndexOp"(%57, %58) : (!it.index, !it.domain) -> !it.index
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%45, %59) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>, !it.index) -> (index, index)
    %60 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos_43) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>, tensor<?xindex>, tensor<?xindex>, index, index, index, index) -> !it.domain
    %61 = "it.IndexOp"(%59, %60) : (!it.index, !it.domain) -> !it.index
    %62 = "it.ComputeSymbolicDomainOp"(%61, %50) <{is_unique = false}> : (!it.index, !it.symbolic_domain) -> !it.symbolic_domain
    %63 = "it.ComputeSymbolicDomainRowOp"(%57, %62) <{needs_mark = true}> : (!it.index, !it.symbolic_domain) -> !it.symbolic_domain
    it.yield %63 : !it.symbolic_domain
  }) : (!it.symbolic_domain) -> !it.symbolic_domain
  %52 = "it.IndexTreeSparseTensorOp"(%49, %51) : (!it.domain, !it.symbolic_domain) -> !ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>
  %53 = "ta.AllocWorkspace"(%52) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>) -> !ta.workspace<f64, -9223372036854775808>
  %54:2 = "it.itree"(%52, %53) ({
    %55 = "it.RootOp"() : () -> !it.index_tree
    %56 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>) -> !it.domain
    %57 = "it.IndexOp"(%55, %56) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>, !it.index) -> (index, index)
    %58 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>, tensor<?xindex>, tensor<?xindex>, index, index, index, index) -> !it.domain
    %59 = "it.WorkspaceStartRowOp"(%57, %53) : (!it.index, !ta.workspace<f64, -9223372036854775808>) -> !ta.workspace<f64, -9223372036854775808>
    %60 = "it.IndexOp"(%57, %58) : (!it.index, !it.domain) -> !it.index
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%45, %60) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>, !it.index) -> (index, index)
    %61 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos_43) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>, tensor<?xindex>, tensor<?xindex>, index, index, index, index) -> !it.domain
    %62 = "it.IndexOp"(%60, %61) : (!it.index, !it.domain) -> !it.index
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%20, %60, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>, !it.index, index) -> (index, index)
    %63 = "it.OperandOp"(%20, %pos, %pos_45, %crd, %crd_44) : (!ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>, index, index, index, index) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%45, %62, %pos_43) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>, !it.index, index) -> (index, index)
    %64 = "it.OperandOp"(%45, %pos_43, %pos_47, %crd_42, %crd_46) : (!ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>, index, index, index, index) -> !it.operand
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%59, %62) <{dim = 0 : ui32}> : (!ta.workspace<f64, -9223372036854775808>, !it.index) -> (index, index)
    %65 = "it.LHSOperandOp"(%59, %pos_49, %crd_48) : (!ta.workspace<f64, -9223372036854775808>, index, index) -> !it.operand
    %66 = "it.ComputeOp"(%62, %65, %63, %64) <{compute_missing = false, semiring = "minxy_second"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.workspace<f64, -9223372036854775808>
    %67 = "ta.SpTensorGetDimSize"(%66) <{dim = 0 : i32}> : (!ta.workspace<f64, -9223372036854775808>) -> index
    %68 = "it.WorkspaceDomainOp"(%66, %67) <{dim = 0 : ui32}> : (!ta.workspace<f64, -9223372036854775808>, index) -> !it.domain
    %69 = "it.IndexOp"(%57, %68) : (!it.index, !it.domain) -> !it.index
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%52, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>, !it.index) -> (index, index)
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%52, %69, %pos_51) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>, !it.index, index) -> (index, index)
    %70 = "it.LHSOperandOp"(%52, %pos_51, %pos_53, %crd_50, %crd_52) : (!ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>, index, index, index, index) -> !it.operand
    %crd_54, %pos_55 = "it.IndexToTensorDim"(%66, %69) <{dim = 0 : ui32}> : (!ta.workspace<f64, -9223372036854775808>, !it.index) -> (index, index)
    %71 = "it.OperandOp"(%66, %pos_55, %crd_54) : (!ta.workspace<f64, -9223372036854775808>, index, index) -> !it.operand
    %72 = "it.ComputeOp"(%69, %70, %71) <{compute_missing = false, semiring = "noop_noop"}> : (!it.index, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>
    it.yield %72, %53 : !ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>, !ta.workspace<f64, -9223372036854775808>
  }) : (!ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>, !ta.workspace<f64, -9223372036854775808>) -> (!ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>, !ta.workspace<f64, -9223372036854775808>)
  "ta.print"(%54#0) : (!ta.sparse_tensor<f64, ?x?, 1, 0, 2, 0>) -> ()
  return
}