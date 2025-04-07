// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
module {
  func.func @main() {
    %idx4 = index.constant 4
    %idx1 = index.constant 1
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %0 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %1 = "ta.SpTensorGetDimSize"(%0) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
    %2 = "ta.SpTensorGetDimPos"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
    %3 = "ta.SpTensorGetDimCrd"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
    %dim = tensor.dim %2, %c0 : tensor<?xi64>
    %dim_0 = tensor.dim %3, %c0 : tensor<?xi64>
    %4 = "ta.SpTensorGetDimSize"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
    %5 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %6 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %7 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %8 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<4x?xf64>
    %dim_1 = tensor.dim %8, %idx1 : tensor<4x?xf64>
    %9 = "ta.spTensor_decl"(%5, %6) <{format = "CSR", temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %10 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?xf64>
    "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?xf64>) -> ()
    %11 = "ta.dense_tensor_decl"(%5, %6) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
    "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
    "ta.fill"(%11) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
    %12:2 = "it.itree"(%9, %10) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?xf64>):
      %13 = "it.RootOp"() : () -> !it.index_tree
      %14 = "it.DenseDomainOp"(%1, %0, %7) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>) -> !it.domain
      %15 = "it.IndexOp"(%13, %14) : (!it.index_tree, !it.domain) -> !it.index
      %16 = "it.DenseDomainOp"(%idx4, %7, %8) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<?x4xf64>, tensor<4x?xf64>) -> !it.domain
      %17 = "it.IndexOp"(%15, %16) : (!it.index, !it.domain) -> !it.index
      %18 = "it.DenseDomainOp"(%dim_1, %8) <{dims = [1 : i32]}> : (index, tensor<4x?xf64>) -> !it.domain
      %19 = "it.IndexOp"(%17, %18) : (!it.index, !it.domain) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%arg1, %19) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
      %20 = "it.LHSOperandOp"(%arg1, %pos, %crd) : (tensor<?xf64>, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%7, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%7, %17, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %21 = "it.OperandOp"(%7, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%8, %17) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%8, %19, %pos_7) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
      %22 = "it.OperandOp"(%8, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
      %23 = "it.ComputeOp"(%19, %20, %21, %22) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?xf64>
      %crd_10, %pos_11 = "it.IndexToTensorDim"(%0, %15) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %24 = "it.SparseDomainOp"(%0, %2, %3, %dim, %dim_0, %4, %pos_11) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
      %25 = "it.IndexOp"(%15, %24) : (!it.index, !it.domain) -> !it.index
      %crd_12, %pos_13 = "it.IndexToTensorDim"(%arg0, %15) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %crd_14, %pos_15 = "it.IndexToTensorDim"(%arg0, %25, %pos_13) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %26 = "it.LHSOperandOp"(%arg0, %pos_13, %pos_15, %crd_12, %crd_14) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_16, %pos_17 = "it.IndexToTensorDim"(%0, %25, %pos_11) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %27 = "it.OperandOp"(%0, %pos_11, %pos_17, %crd_10, %crd_16) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_18, %pos_19 = "it.IndexToTensorDim"(%23, %25) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
      %28 = "it.OperandOp"(%23, %pos_19, %crd_18) : (tensor<?xf64>, index, index) -> !it.operand
      %29 = "it.ComputeOp"(%25, %26, %27, %28) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %crd_20, %pos_21 = "it.IndexToTensorDim"(%23, %25) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
      %30 = "it.LHSOperandOp"(%23, %pos_21, %crd_20) : (tensor<?xf64>, index, index) -> !it.operand
      %cst = arith.constant 0.000000e+00 : f64
      %31 = "it.OperandOp"(%cst) : (f64) -> !it.operand
      %32 = "it.ComputeOp"(%25, %30, %31) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
      it.yield %29, %32 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
    }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>)
    "ta.set_op"(%12#0, %9) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.print"(%9) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    return
  }
}


// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %idx1 = index.constant 1
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %0 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %1 = "ta.SpTensorGetDimSize"(%0) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %2 = "ta.SpTensorGetDimPos"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %3 = "ta.SpTensorGetDimCrd"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %2, %c0 : tensor<?xi64>
  %dim_0 = tensor.dim %3, %c0 : tensor<?xi64>
  %4 = "ta.SpTensorGetDimSize"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %5 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %6 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %7 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %8 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<4x?xf64>
  %dim_1 = tensor.dim %8, %idx1 : tensor<4x?xf64>
  %9 = "ta.spTensor_decl"(%5, %6) <{format = "CSR", temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %10 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?xf64>
  "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?xf64>) -> ()
  %11 = "ta.dense_tensor_decl"(%5, %6) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%11) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %12:2 = "it.itree"(%9, %10) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?xf64>):
    %13 = "it.RootOp"() : () -> !it.index_tree
    %14 = "it.DenseDomainOp"(%1, %0, %7) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>) -> !it.domain
    %15 = "it.IndexOp"(%13, %14) : (!it.index_tree, !it.domain) -> !it.index
    %16 = "it.DenseDomainOp"(%idx4, %7, %8) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<?x4xf64>, tensor<4x?xf64>) -> !it.domain
    %17 = "it.IndexOp"(%15, %16) : (!it.index, !it.domain) -> !it.index
    %18 = "it.DenseDomainOp"(%dim_1, %8) <{dims = [1 : i32]}> : (index, tensor<4x?xf64>) -> !it.domain
    %19 = "it.IndexOp"(%17, %18) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg1, %19) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %20 = "it.LHSOperandOp"(%arg1, %pos, %crd) : (tensor<?xf64>, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%7, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%7, %17, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %21 = "it.OperandOp"(%7, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%8, %17) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%8, %19, %pos_7) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %22 = "it.OperandOp"(%8, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %23 = "it.ComputeOp"(%19, %20, %21, %22) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?xf64>
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%0, %15) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %24 = "it.SparseDomainOp"(%0, %2, %3, %dim, %dim_0, %4, %pos_11) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %25 = "it.IndexOp"(%15, %24) : (!it.index, !it.domain) -> !it.index
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%arg0, %15) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_14, %pos_15 = "it.IndexToTensorDim"(%arg0, %25, %pos_13) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %26 = "it.LHSOperandOp"(%arg0, %pos_13, %pos_15, %crd_12, %crd_14) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_16, %pos_17 = "it.IndexToTensorDim"(%0, %25, %pos_11) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %27 = "it.OperandOp"(%0, %pos_11, %pos_17, %crd_10, %crd_16) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_18, %pos_19 = "it.IndexToTensorDim"(%23, %25) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %28 = "it.OperandOp"(%23, %pos_19, %crd_18) : (tensor<?xf64>, index, index) -> !it.operand
    %29 = "it.ComputeOp"(%25, %26, %27, %28) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %crd_20, %pos_21 = "it.IndexToTensorDim"(%23, %25) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %30 = "it.LHSOperandOp"(%23, %pos_21, %crd_20) : (tensor<?xf64>, index, index) -> !it.operand
    %cst = arith.constant 0.000000e+00 : f64
    %31 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %32 = "it.ComputeOp"(%25, %30, %31) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
    it.yield %29, %32 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>)
  "ta.set_op"(%12#0, %9) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%9) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %idx1 = index.constant 1
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0_0 = arith.constant 0 : index
  %c1_1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_2 = arith.constant 0 : index
  %0 = memref.load %alloc[%c0_2] : memref<13xindex>
  %c1_3 = arith.constant 1 : index
  %1 = memref.load %alloc[%c1_3] : memref<13xindex>
  %c2_4 = arith.constant 2 : index
  %2 = memref.load %alloc[%c2_4] : memref<13xindex>
  %c3_5 = arith.constant 3 : index
  %3 = memref.load %alloc[%c3_5] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %11 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %12 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_6 = memref.alloc(%0) : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) : memref<?xi64>
  %c0_i64_12 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_12 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%3) : memref<?xi64>
  %c0_i64_15 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_15 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%4) : memref<?xi64>
  %c0_i64_18 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_18 : i64) outs(%alloc_17 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_17 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%5) : memref<?xi64>
  %c0_i64_21 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_21 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%6) : memref<?xi64>
  %c0_i64_24 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_24 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%7) : memref<?xi64>
  %c0_i64_27 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_27 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%8) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc_29 : memref<?xf64>)
  %cast_30 = memref.cast %alloc_29 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_13, %cast_16, %cast_19, %cast_22, %cast_25, %cast_28, %cast_30, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %22 = "ta.spTensor_construct"(%from_elements, %13, %17, %14, %18, %15, %19, %16, %20, %21) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %23 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %25 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %24, %c0 : tensor<?xi64>
  %dim_31 = tensor.dim %25, %c0 : tensor<?xi64>
  %26 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %27 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %28 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %29 = "ta.dense_tensor_decl"(%27) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %30 = "ta.dense_tensor_decl"(%28) <{format = "Dense"}> : (index) -> tensor<4x?xf64>
  %dim_32 = tensor.dim %30, %idx1 : tensor<4x?xf64>
  %31 = "ta.sparse_output_tensor_decl"(%27, %28) <{format = "CSR"}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %32 = "ta.dense_tensor_decl"(%28) <{format = "Dense"}> : (index) -> tensor<?xf64>
  "ta.fill"(%32) <{value = 0.000000e+00 : f64}> : (tensor<?xf64>) -> ()
  %33 = "ta.dense_tensor_decl"(%27, %28) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
  "ta.fill"(%29) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%30) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%33) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %34:2 = "it.itree"(%31, %32) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?xf64>):
    %35 = "it.RootOp"() : () -> !it.index_tree
    %36 = "it.DenseDomainOp"(%23, %22, %29) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) : (!it.index_tree, !it.domain) -> !it.index
    %38 = "it.DenseDomainOp"(%idx4, %29, %30) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<?x4xf64>, tensor<4x?xf64>) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) : (!it.index, !it.domain) -> !it.index
    %40 = "it.DenseDomainOp"(%dim_32, %30) <{dims = [1 : i32]}> : (index, tensor<4x?xf64>) -> !it.domain
    %41 = "it.IndexOp"(%39, %40) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg1, %41) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %42 = "it.LHSOperandOp"(%arg1, %pos, %crd) : (tensor<?xf64>, index, index) -> !it.operand
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%29, %37) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%29, %39, %pos_34) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%29, %pos_34, %pos_36, %crd_33, %crd_35) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%30, %39) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%30, %41, %pos_38) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %44 = "it.OperandOp"(%30, %pos_38, %pos_40, %crd_37, %crd_39) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %45 = "it.ComputeOp"(%41, %42, %43, %44) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?xf64>
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%22, %37) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %46 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos_42) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %47 = "it.IndexOp"(%37, %46) : (!it.index, !it.domain) -> !it.index
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%arg0, %37) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%arg0, %47, %pos_44) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %48 = "it.LHSOperandOp"(%arg0, %pos_44, %pos_46, %crd_43, %crd_45) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%22, %47, %pos_42) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %49 = "it.OperandOp"(%22, %pos_42, %pos_48, %crd_41, %crd_47) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_49, %pos_50 = "it.IndexToTensorDim"(%45, %47) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %50 = "it.OperandOp"(%45, %pos_50, %crd_49) : (tensor<?xf64>, index, index) -> !it.operand
    %51 = "it.ComputeOp"(%47, %48, %49, %50) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %crd_51, %pos_52 = "it.IndexToTensorDim"(%45, %47) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %52 = "it.LHSOperandOp"(%45, %pos_52, %crd_51) : (tensor<?xf64>, index, index) -> !it.operand
    %cst_53 = arith.constant 0.000000e+00 : f64
    %53 = "it.OperandOp"(%cst_53) : (f64) -> !it.operand
    %54 = "it.ComputeOp"(%47, %52, %53) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
    it.yield %51, %54 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>)
  "ta.set_op"(%34#0, %31) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%31) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %idx1 = index.constant 1
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0_0 = arith.constant 0 : index
  %c1_1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_2 = arith.constant 0 : index
  %0 = memref.load %alloc[%c0_2] : memref<13xindex>
  %c1_3 = arith.constant 1 : index
  %1 = memref.load %alloc[%c1_3] : memref<13xindex>
  %c2_4 = arith.constant 2 : index
  %2 = memref.load %alloc[%c2_4] : memref<13xindex>
  %c3_5 = arith.constant 3 : index
  %3 = memref.load %alloc[%c3_5] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %11 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %12 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_6 = memref.alloc(%0) : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) : memref<?xi64>
  %c0_i64_12 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_12 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%3) : memref<?xi64>
  %c0_i64_15 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_15 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%4) : memref<?xi64>
  %c0_i64_18 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_18 : i64) outs(%alloc_17 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_17 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%5) : memref<?xi64>
  %c0_i64_21 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_21 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%6) : memref<?xi64>
  %c0_i64_24 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_24 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%7) : memref<?xi64>
  %c0_i64_27 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_27 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%8) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc_29 : memref<?xf64>)
  %cast_30 = memref.cast %alloc_29 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_13, %cast_16, %cast_19, %cast_22, %cast_25, %cast_28, %cast_30, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %22 = "ta.spTensor_construct"(%from_elements, %13, %17, %14, %18, %15, %19, %16, %20, %21) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %23 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %25 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %24, %c0 : tensor<?xi64>
  %dim_31 = tensor.dim %25, %c0 : tensor<?xi64>
  %26 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %27 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %28 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_32 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x4xf64>
  %29 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x4xf64>
  %alloc_33 = memref.alloc(%28) {alignment = 32 : i64} : memref<4x?xf64>
  %30 = bufferization.to_tensor %alloc_33 restrict writable : memref<4x?xf64>
  %dim_34 = tensor.dim %30, %idx1 : tensor<4x?xf64>
  %31 = "ta.sparse_output_tensor_decl"(%27, %28) <{format = "CSR"}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_35 = memref.alloc(%28) {alignment = 32 : i64} : memref<?xf64>
  %32 = bufferization.to_tensor %alloc_35 restrict writable : memref<?xf64>
  "ta.fill"(%32) <{value = 0.000000e+00 : f64}> : (tensor<?xf64>) -> ()
  %alloc_36 = memref.alloc(%27, %28) {alignment = 32 : i64} : memref<?x?xf64>
  %33 = bufferization.to_tensor %alloc_36 restrict writable : memref<?x?xf64>
  "ta.fill"(%29) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%30) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%33) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %34:2 = "it.itree"(%31, %32) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?xf64>):
    %35 = "it.RootOp"() : () -> !it.index_tree
    %36 = "it.DenseDomainOp"(%23, %22, %29) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) : (!it.index_tree, !it.domain) -> !it.index
    %38 = "it.DenseDomainOp"(%idx4, %29, %30) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<?x4xf64>, tensor<4x?xf64>) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) : (!it.index, !it.domain) -> !it.index
    %40 = "it.DenseDomainOp"(%dim_34, %30) <{dims = [1 : i32]}> : (index, tensor<4x?xf64>) -> !it.domain
    %41 = "it.IndexOp"(%39, %40) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg1, %41) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %42 = "it.LHSOperandOp"(%arg1, %pos, %crd) : (tensor<?xf64>, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%29, %37) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%29, %39, %pos_38) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%29, %pos_38, %pos_40, %crd_37, %crd_39) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%30, %39) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%30, %41, %pos_42) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %44 = "it.OperandOp"(%30, %pos_42, %pos_44, %crd_41, %crd_43) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %45 = "it.ComputeOp"(%41, %42, %43, %44) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?xf64>
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%22, %37) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %46 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos_46) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %47 = "it.IndexOp"(%37, %46) : (!it.index, !it.domain) -> !it.index
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%arg0, %37) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_49, %pos_50 = "it.IndexToTensorDim"(%arg0, %47, %pos_48) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %48 = "it.LHSOperandOp"(%arg0, %pos_48, %pos_50, %crd_47, %crd_49) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_51, %pos_52 = "it.IndexToTensorDim"(%22, %47, %pos_46) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %49 = "it.OperandOp"(%22, %pos_46, %pos_52, %crd_45, %crd_51) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_53, %pos_54 = "it.IndexToTensorDim"(%45, %47) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %50 = "it.OperandOp"(%45, %pos_54, %crd_53) : (tensor<?xf64>, index, index) -> !it.operand
    %51 = "it.ComputeOp"(%47, %48, %49, %50) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %crd_55, %pos_56 = "it.IndexToTensorDim"(%45, %47) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %52 = "it.LHSOperandOp"(%45, %pos_56, %crd_55) : (tensor<?xf64>, index, index) -> !it.operand
    %cst_57 = arith.constant 0.000000e+00 : f64
    %53 = "it.OperandOp"(%cst_57) : (f64) -> !it.operand
    %54 = "it.ComputeOp"(%47, %52, %53) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
    it.yield %51, %54 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>)
  "ta.set_op"(%34#0, %31) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%31) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %idx1 = index.constant 1
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0_0 = arith.constant 0 : index
  %c1_1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_2 = arith.constant 0 : index
  %0 = memref.load %alloc[%c0_2] : memref<13xindex>
  %c1_3 = arith.constant 1 : index
  %1 = memref.load %alloc[%c1_3] : memref<13xindex>
  %c2_4 = arith.constant 2 : index
  %2 = memref.load %alloc[%c2_4] : memref<13xindex>
  %c3_5 = arith.constant 3 : index
  %3 = memref.load %alloc[%c3_5] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %11 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %12 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_6 = memref.alloc(%0) : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) : memref<?xi64>
  %c0_i64_12 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_12 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%3) : memref<?xi64>
  %c0_i64_15 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_15 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%4) : memref<?xi64>
  %c0_i64_18 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_18 : i64) outs(%alloc_17 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_17 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%5) : memref<?xi64>
  %c0_i64_21 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_21 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%6) : memref<?xi64>
  %c0_i64_24 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_24 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%7) : memref<?xi64>
  %c0_i64_27 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_27 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%8) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc_29 : memref<?xf64>)
  %cast_30 = memref.cast %alloc_29 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_13, %cast_16, %cast_19, %cast_22, %cast_25, %cast_28, %cast_30, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %22 = "ta.spTensor_construct"(%from_elements, %13, %17, %14, %18, %15, %19, %16, %20, %21) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %23 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %25 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %24, %c0 : tensor<?xi64>
  %dim_31 = tensor.dim %25, %c0 : tensor<?xi64>
  %26 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %27 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %28 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_32 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x4xf64>
  %29 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x4xf64>
  %alloc_33 = memref.alloc(%28) {alignment = 32 : i64} : memref<4x?xf64>
  %30 = bufferization.to_tensor %alloc_33 restrict writable : memref<4x?xf64>
  %dim_34 = tensor.dim %30, %idx1 : tensor<4x?xf64>
  %31 = "ta.sparse_output_tensor_decl"(%27, %28) <{format = "CSR"}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_35 = memref.alloc(%28) {alignment = 32 : i64} : memref<?xf64>
  %32 = bufferization.to_tensor %alloc_35 restrict writable : memref<?xf64>
  "ta.fill"(%32) <{value = 0.000000e+00 : f64}> : (tensor<?xf64>) -> ()
  %alloc_36 = memref.alloc(%27, %28) {alignment = 32 : i64} : memref<?x?xf64>
  %33 = bufferization.to_tensor %alloc_36 restrict writable : memref<?x?xf64>
  "ta.fill"(%29) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%30) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%33) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %34:2 = "it.itree"(%31, %32) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?xf64>):
    %35 = "it.RootOp"() : () -> !it.index_tree
    %36 = "it.DenseDomainOp"(%23, %22, %29) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) : (!it.index_tree, !it.domain) -> !it.index
    %38 = "it.DenseDomainOp"(%idx4, %29, %30) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<?x4xf64>, tensor<4x?xf64>) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) : (!it.index, !it.domain) -> !it.index
    %40 = "it.DenseDomainOp"(%dim_34, %30) <{dims = [1 : i32]}> : (index, tensor<4x?xf64>) -> !it.domain
    %41 = "it.IndexOp"(%39, %40) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg1, %41) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %42 = "it.LHSOperandOp"(%arg1, %pos, %crd) : (tensor<?xf64>, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%29, %37) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%29, %39, %pos_38) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%29, %pos_38, %pos_40, %crd_37, %crd_39) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%30, %39) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%30, %41, %pos_42) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %44 = "it.OperandOp"(%30, %pos_42, %pos_44, %crd_41, %crd_43) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %45 = "it.ComputeOp"(%41, %42, %43, %44) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?xf64>
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%22, %37) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %46 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos_46) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %47 = "it.IndexOp"(%37, %46) : (!it.index, !it.domain) -> !it.index
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%arg0, %37) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_49, %pos_50 = "it.IndexToTensorDim"(%arg0, %47, %pos_48) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %48 = "it.LHSOperandOp"(%arg0, %pos_48, %pos_50, %crd_47, %crd_49) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_51, %pos_52 = "it.IndexToTensorDim"(%22, %47, %pos_46) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %49 = "it.OperandOp"(%22, %pos_46, %pos_52, %crd_45, %crd_51) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_53, %pos_54 = "it.IndexToTensorDim"(%45, %47) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %50 = "it.OperandOp"(%45, %pos_54, %crd_53) : (tensor<?xf64>, index, index) -> !it.operand
    %51 = "it.ComputeOp"(%47, %48, %49, %50) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %crd_55, %pos_56 = "it.IndexToTensorDim"(%45, %47) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %52 = "it.LHSOperandOp"(%45, %pos_56, %crd_55) : (tensor<?xf64>, index, index) -> !it.operand
    %cst_57 = arith.constant 0.000000e+00 : f64
    %53 = "it.OperandOp"(%cst_57) : (f64) -> !it.operand
    %54 = "it.ComputeOp"(%47, %52, %53) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
    it.yield %51, %54 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>)
  "ta.set_op"(%34#0, %31) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%31) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %idx1 = index.constant 1
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0_0 = arith.constant 0 : index
  %c1_1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_2 = arith.constant 0 : index
  %0 = memref.load %alloc[%c0_2] : memref<13xindex>
  %c1_3 = arith.constant 1 : index
  %1 = memref.load %alloc[%c1_3] : memref<13xindex>
  %c2_4 = arith.constant 2 : index
  %2 = memref.load %alloc[%c2_4] : memref<13xindex>
  %c3_5 = arith.constant 3 : index
  %3 = memref.load %alloc[%c3_5] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %11 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %12 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_6 = memref.alloc(%0) : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) : memref<?xi64>
  %c0_i64_12 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_12 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%3) : memref<?xi64>
  %c0_i64_15 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_15 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%4) : memref<?xi64>
  %c0_i64_18 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_18 : i64) outs(%alloc_17 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_17 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%5) : memref<?xi64>
  %c0_i64_21 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_21 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%6) : memref<?xi64>
  %c0_i64_24 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_24 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%7) : memref<?xi64>
  %c0_i64_27 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_27 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%8) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc_29 : memref<?xf64>)
  %cast_30 = memref.cast %alloc_29 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_13, %cast_16, %cast_19, %cast_22, %cast_25, %cast_28, %cast_30, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %22 = "ta.spTensor_construct"(%from_elements, %13, %17, %14, %18, %15, %19, %16, %20, %21) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %23 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %25 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %24, %c0 : tensor<?xi64>
  %dim_31 = tensor.dim %25, %c0 : tensor<?xi64>
  %26 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %27 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %28 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_32 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x4xf64>
  %29 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x4xf64>
  %alloc_33 = memref.alloc(%28) {alignment = 32 : i64} : memref<4x?xf64>
  %30 = bufferization.to_tensor %alloc_33 restrict writable : memref<4x?xf64>
  %dim_34 = tensor.dim %30, %idx1 : tensor<4x?xf64>
  %31 = "it.EmptyDomain"() : () -> !it.domain
  %32 = "it.IndexTreeSparseTensorOp"(%31, %31) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_35 = memref.alloc(%28) {alignment = 32 : i64} : memref<?xf64>
  %33 = bufferization.to_tensor %alloc_35 restrict writable : memref<?xf64>
  "ta.fill"(%33) <{value = 0.000000e+00 : f64}> : (tensor<?xf64>) -> ()
  %alloc_36 = memref.alloc(%27, %28) {alignment = 32 : i64} : memref<?x?xf64>
  %34 = bufferization.to_tensor %alloc_36 restrict writable : memref<?x?xf64>
  "ta.fill"(%29) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%30) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%34) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %35:2 = "it.itree"(%32, %33) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?xf64>):
    %36 = "it.RootOp"() : () -> !it.index_tree
    %37 = "it.DenseDomainOp"(%23, %22, %29) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>) -> !it.domain
    %38 = "it.IndexOp"(%36, %37) : (!it.index_tree, !it.domain) -> !it.index
    %39 = "it.DenseDomainOp"(%idx4, %29, %30) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<?x4xf64>, tensor<4x?xf64>) -> !it.domain
    %40 = "it.IndexOp"(%38, %39) : (!it.index, !it.domain) -> !it.index
    %41 = "it.DenseDomainOp"(%dim_34, %30) <{dims = [1 : i32]}> : (index, tensor<4x?xf64>) -> !it.domain
    %42 = "it.IndexOp"(%40, %41) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg1, %42) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %43 = "it.LHSOperandOp"(%arg1, %pos, %crd) : (tensor<?xf64>, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%29, %38) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%29, %40, %pos_38) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %44 = "it.OperandOp"(%29, %pos_38, %pos_40, %crd_37, %crd_39) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%30, %40) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%30, %42, %pos_42) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %45 = "it.OperandOp"(%30, %pos_42, %pos_44, %crd_41, %crd_43) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %46 = "it.ComputeOp"(%42, %43, %44, %45) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?xf64>
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%22, %38) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %47 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos_46) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %48 = "it.IndexOp"(%38, %47) : (!it.index, !it.domain) -> !it.index
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%arg0, %38) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_49, %pos_50 = "it.IndexToTensorDim"(%arg0, %48, %pos_48) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %49 = "it.LHSOperandOp"(%arg0, %pos_48, %pos_50, %crd_47, %crd_49) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_51, %pos_52 = "it.IndexToTensorDim"(%22, %48, %pos_46) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %50 = "it.OperandOp"(%22, %pos_46, %pos_52, %crd_45, %crd_51) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_53, %pos_54 = "it.IndexToTensorDim"(%46, %48) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %51 = "it.OperandOp"(%46, %pos_54, %crd_53) : (tensor<?xf64>, index, index) -> !it.operand
    %52 = "it.ComputeOp"(%48, %49, %50, %51) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %crd_55, %pos_56 = "it.IndexToTensorDim"(%46, %48) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %53 = "it.LHSOperandOp"(%46, %pos_56, %crd_55) : (tensor<?xf64>, index, index) -> !it.operand
    %cst_57 = arith.constant 0.000000e+00 : f64
    %54 = "it.OperandOp"(%cst_57) : (f64) -> !it.operand
    %55 = "it.ComputeOp"(%48, %53, %54) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
    it.yield %52, %55 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>)
  "ta.set_op"(%35#0, %32) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%32) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %idx1 = index.constant 1
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0_0 = arith.constant 0 : index
  %c1_1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_2 = arith.constant 0 : index
  %0 = memref.load %alloc[%c0_2] : memref<13xindex>
  %c1_3 = arith.constant 1 : index
  %1 = memref.load %alloc[%c1_3] : memref<13xindex>
  %c2_4 = arith.constant 2 : index
  %2 = memref.load %alloc[%c2_4] : memref<13xindex>
  %c3_5 = arith.constant 3 : index
  %3 = memref.load %alloc[%c3_5] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %11 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %12 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_6 = memref.alloc(%0) : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) : memref<?xi64>
  %c0_i64_12 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_12 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%3) : memref<?xi64>
  %c0_i64_15 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_15 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%4) : memref<?xi64>
  %c0_i64_18 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_18 : i64) outs(%alloc_17 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_17 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%5) : memref<?xi64>
  %c0_i64_21 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_21 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%6) : memref<?xi64>
  %c0_i64_24 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_24 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%7) : memref<?xi64>
  %c0_i64_27 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_27 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%8) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc_29 : memref<?xf64>)
  %cast_30 = memref.cast %alloc_29 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_13, %cast_16, %cast_19, %cast_22, %cast_25, %cast_28, %cast_30, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %22 = "ta.spTensor_construct"(%from_elements, %13, %17, %14, %18, %15, %19, %16, %20, %21) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %23 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %25 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %24, %c0 : tensor<?xi64>
  %dim_31 = tensor.dim %25, %c0 : tensor<?xi64>
  %26 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %27 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %28 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_32 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_33 = arith.constant 1.200000e+00 : f64
  linalg.fill ins(%cst_33 : f64) outs(%alloc_32 : memref<?x4xf64>)
  %29 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x4xf64>
  %alloc_34 = memref.alloc(%28) {alignment = 32 : i64} : memref<4x?xf64>
  %cst_35 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_35 : f64) outs(%alloc_34 : memref<4x?xf64>)
  %30 = bufferization.to_tensor %alloc_34 restrict writable : memref<4x?xf64>
  %dim_36 = tensor.dim %30, %idx1 : tensor<4x?xf64>
  %31 = "it.EmptyDomain"() : () -> !it.domain
  %32 = "it.IndexTreeSparseTensorOp"(%31, %31) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_37 = memref.alloc(%28) {alignment = 32 : i64} : memref<?xf64>
  %cst_38 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_38 : f64) outs(%alloc_37 : memref<?xf64>)
  %33 = bufferization.to_tensor %alloc_37 restrict writable : memref<?xf64>
  %alloc_39 = memref.alloc(%27, %28) {alignment = 32 : i64} : memref<?x?xf64>
  %cst_40 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_40 : f64) outs(%alloc_39 : memref<?x?xf64>)
  %34 = bufferization.to_tensor %alloc_39 restrict writable : memref<?x?xf64>
  %35:2 = "it.itree"(%32, %33) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?xf64>):
    %36 = "it.RootOp"() : () -> !it.index_tree
    %37 = "it.DenseDomainOp"(%23, %22, %29) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>) -> !it.domain
    %38 = "it.IndexOp"(%36, %37) : (!it.index_tree, !it.domain) -> !it.index
    %39 = "it.DenseDomainOp"(%idx4, %29, %30) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<?x4xf64>, tensor<4x?xf64>) -> !it.domain
    %40 = "it.IndexOp"(%38, %39) : (!it.index, !it.domain) -> !it.index
    %41 = "it.DenseDomainOp"(%dim_36, %30) <{dims = [1 : i32]}> : (index, tensor<4x?xf64>) -> !it.domain
    %42 = "it.IndexOp"(%40, %41) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg1, %42) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %43 = "it.LHSOperandOp"(%arg1, %pos, %crd) : (tensor<?xf64>, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%29, %38) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%29, %40, %pos_42) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %44 = "it.OperandOp"(%29, %pos_42, %pos_44, %crd_41, %crd_43) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%30, %40) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%30, %42, %pos_46) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %45 = "it.OperandOp"(%30, %pos_46, %pos_48, %crd_45, %crd_47) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %46 = "it.ComputeOp"(%42, %43, %44, %45) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?xf64>
    %crd_49, %pos_50 = "it.IndexToTensorDim"(%22, %38) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %47 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos_50) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %48 = "it.IndexOp"(%38, %47) : (!it.index, !it.domain) -> !it.index
    %crd_51, %pos_52 = "it.IndexToTensorDim"(%arg0, %38) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_53, %pos_54 = "it.IndexToTensorDim"(%arg0, %48, %pos_52) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %49 = "it.LHSOperandOp"(%arg0, %pos_52, %pos_54, %crd_51, %crd_53) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_55, %pos_56 = "it.IndexToTensorDim"(%22, %48, %pos_50) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %50 = "it.OperandOp"(%22, %pos_50, %pos_56, %crd_49, %crd_55) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_57, %pos_58 = "it.IndexToTensorDim"(%46, %48) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %51 = "it.OperandOp"(%46, %pos_58, %crd_57) : (tensor<?xf64>, index, index) -> !it.operand
    %52 = "it.ComputeOp"(%48, %49, %50, %51) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %crd_59, %pos_60 = "it.IndexToTensorDim"(%46, %48) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %53 = "it.LHSOperandOp"(%46, %pos_60, %crd_59) : (tensor<?xf64>, index, index) -> !it.operand
    %cst_61 = arith.constant 0.000000e+00 : f64
    %54 = "it.OperandOp"(%cst_61) : (f64) -> !it.operand
    %55 = "it.ComputeOp"(%48, %53, %54) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
    it.yield %52, %55 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>)
  "ta.set_op"(%35#0, %32) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%32) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %idx1 = index.constant 1
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0_0 = arith.constant 0 : index
  %c1_1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_2 = arith.constant 0 : index
  %0 = memref.load %alloc[%c0_2] : memref<13xindex>
  %c1_3 = arith.constant 1 : index
  %1 = memref.load %alloc[%c1_3] : memref<13xindex>
  %c2_4 = arith.constant 2 : index
  %2 = memref.load %alloc[%c2_4] : memref<13xindex>
  %c3_5 = arith.constant 3 : index
  %3 = memref.load %alloc[%c3_5] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %11 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %12 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_6 = memref.alloc(%0) : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) : memref<?xi64>
  %c0_i64_12 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_12 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%3) : memref<?xi64>
  %c0_i64_15 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_15 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%4) : memref<?xi64>
  %c0_i64_18 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_18 : i64) outs(%alloc_17 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_17 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%5) : memref<?xi64>
  %c0_i64_21 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_21 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%6) : memref<?xi64>
  %c0_i64_24 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_24 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%7) : memref<?xi64>
  %c0_i64_27 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_27 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%8) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc_29 : memref<?xf64>)
  %cast_30 = memref.cast %alloc_29 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_13, %cast_16, %cast_19, %cast_22, %cast_25, %cast_28, %cast_30, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %22 = "ta.spTensor_construct"(%from_elements, %13, %17, %14, %18, %15, %19, %16, %20, %21) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %23 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %25 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %24, %c0 : tensor<?xi64>
  %dim_31 = tensor.dim %25, %c0 : tensor<?xi64>
  %26 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %27 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %28 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_32 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_33 = arith.constant 1.200000e+00 : f64
  linalg.fill ins(%cst_33 : f64) outs(%alloc_32 : memref<?x4xf64>)
  %29 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x4xf64>
  %alloc_34 = memref.alloc(%28) {alignment = 32 : i64} : memref<4x?xf64>
  %cst_35 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_35 : f64) outs(%alloc_34 : memref<4x?xf64>)
  %30 = bufferization.to_tensor %alloc_34 restrict writable : memref<4x?xf64>
  %dim_36 = tensor.dim %30, %idx1 : tensor<4x?xf64>
  %31 = "it.EmptyDomain"() : () -> !it.domain
  %32 = "it.IndexTreeSparseTensorOp"(%31, %31) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_37 = memref.alloc(%28) {alignment = 32 : i64} : memref<?xf64>
  %cst_38 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_38 : f64) outs(%alloc_37 : memref<?xf64>)
  %33 = bufferization.to_tensor %alloc_37 restrict writable : memref<?xf64>
  %alloc_39 = memref.alloc(%27, %28) {alignment = 32 : i64} : memref<?x?xf64>
  %cst_40 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_40 : f64) outs(%alloc_39 : memref<?x?xf64>)
  %34 = bufferization.to_tensor %alloc_39 restrict writable : memref<?x?xf64>
  %35:2 = "it.itree"(%32, %33) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?xf64>):
    %36 = "it.RootOp"() : () -> !it.index_tree
    %37 = "it.DenseDomainOp"(%23, %22, %29) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>) -> !it.domain
    %38 = "it.IndexOp"(%36, %37) : (!it.index_tree, !it.domain) -> !it.index
    %39 = "it.DenseDomainOp"(%idx4, %29, %30) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<?x4xf64>, tensor<4x?xf64>) -> !it.domain
    %40 = "it.IndexOp"(%38, %39) : (!it.index, !it.domain) -> !it.index
    %41 = "it.DenseDomainOp"(%dim_36, %30) <{dims = [1 : i32]}> : (index, tensor<4x?xf64>) -> !it.domain
    %42 = "it.IndexOp"(%40, %41) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg1, %42) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %43 = "it.LHSOperandOp"(%arg1, %pos, %crd) : (tensor<?xf64>, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%29, %38) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%29, %40, %pos_42) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %44 = "it.OperandOp"(%29, %pos_42, %pos_44, %crd_41, %crd_43) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%30, %40) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%30, %42, %pos_46) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %45 = "it.OperandOp"(%30, %pos_46, %pos_48, %crd_45, %crd_47) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %46 = "it.ComputeOp"(%42, %43, %44, %45) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?xf64>
    %crd_49, %pos_50 = "it.IndexToTensorDim"(%22, %38) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %47 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos_50) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %48 = "it.IndexOp"(%38, %47) : (!it.index, !it.domain) -> !it.index
    %crd_51, %pos_52 = "it.IndexToTensorDim"(%arg0, %38) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_53, %pos_54 = "it.IndexToTensorDim"(%arg0, %48, %pos_52) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %49 = "it.LHSOperandOp"(%arg0, %pos_52, %pos_54, %crd_51, %crd_53) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_55, %pos_56 = "it.IndexToTensorDim"(%22, %48, %pos_50) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %50 = "it.OperandOp"(%22, %pos_50, %pos_56, %crd_49, %crd_55) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_57, %pos_58 = "it.IndexToTensorDim"(%46, %48) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %51 = "it.OperandOp"(%46, %pos_58, %crd_57) : (tensor<?xf64>, index, index) -> !it.operand
    %52 = "it.ComputeOp"(%48, %49, %50, %51) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %crd_59, %pos_60 = "it.IndexToTensorDim"(%46, %48) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %53 = "it.LHSOperandOp"(%46, %pos_60, %crd_59) : (tensor<?xf64>, index, index) -> !it.operand
    %cst_61 = arith.constant 0.000000e+00 : f64
    %54 = "it.OperandOp"(%cst_61) : (f64) -> !it.operand
    %55 = "it.ComputeOp"(%48, %53, %54) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
    it.yield %52, %55 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>)
  "ta.set_op"(%35#0, %32) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%32) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %idx1 = index.constant 1
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0_0 = arith.constant 0 : index
  %c1_1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_2 = arith.constant 0 : index
  %0 = memref.load %alloc[%c0_2] : memref<13xindex>
  %c1_3 = arith.constant 1 : index
  %1 = memref.load %alloc[%c1_3] : memref<13xindex>
  %c2_4 = arith.constant 2 : index
  %2 = memref.load %alloc[%c2_4] : memref<13xindex>
  %c3_5 = arith.constant 3 : index
  %3 = memref.load %alloc[%c3_5] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %11 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %12 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_6 = memref.alloc(%0) : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) : memref<?xi64>
  %c0_i64_12 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_12 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%3) : memref<?xi64>
  %c0_i64_15 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_15 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%4) : memref<?xi64>
  %c0_i64_18 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_18 : i64) outs(%alloc_17 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_17 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%5) : memref<?xi64>
  %c0_i64_21 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_21 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%6) : memref<?xi64>
  %c0_i64_24 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_24 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%7) : memref<?xi64>
  %c0_i64_27 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_27 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%8) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc_29 : memref<?xf64>)
  %cast_30 = memref.cast %alloc_29 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_13, %cast_16, %cast_19, %cast_22, %cast_25, %cast_28, %cast_30, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_20 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %22 = "ta.spTensor_construct"(%from_elements, %13, %17, %14, %18, %15, %19, %16, %20, %21) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %23 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %25 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %24, %c0 : tensor<?xi64>
  %dim_31 = tensor.dim %25, %c0 : tensor<?xi64>
  %26 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %27 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %28 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_32 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_33 = arith.constant 1.200000e+00 : f64
  linalg.fill ins(%cst_33 : f64) outs(%alloc_32 : memref<?x4xf64>)
  %29 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x4xf64>
  %alloc_34 = memref.alloc(%28) {alignment = 32 : i64} : memref<4x?xf64>
  %cst_35 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_35 : f64) outs(%alloc_34 : memref<4x?xf64>)
  %30 = bufferization.to_tensor %alloc_34 restrict writable : memref<4x?xf64>
  %dim_36 = tensor.dim %30, %idx1 : tensor<4x?xf64>
  %31 = "it.EmptyDomain"() : () -> !it.domain
  %32 = "it.IndexTreeSparseTensorOp"(%31, %31) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_37 = memref.alloc(%28) {alignment = 32 : i64} : memref<?xf64>
  %cst_38 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_38 : f64) outs(%alloc_37 : memref<?xf64>)
  %33 = bufferization.to_tensor %alloc_37 restrict writable : memref<?xf64>
  %alloc_39 = memref.alloc(%27, %28) {alignment = 32 : i64} : memref<?x?xf64>
  %cst_40 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_40 : f64) outs(%alloc_39 : memref<?x?xf64>)
  %34 = bufferization.to_tensor %alloc_39 restrict writable : memref<?x?xf64>
  %35:2 = "it.itree"(%32, %33) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?xf64>):
    %36 = "it.RootOp"() : () -> !it.index_tree
    %37 = "it.DenseDomainOp"(%23, %22, %29) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>) -> !it.domain
    %38 = "it.IndexOp"(%36, %37) : (!it.index_tree, !it.domain) -> !it.index
    %39 = "it.DenseDomainOp"(%idx4, %29, %30) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<?x4xf64>, tensor<4x?xf64>) -> !it.domain
    %40 = "it.IndexOp"(%38, %39) : (!it.index, !it.domain) -> !it.index
    %41 = "it.DenseDomainOp"(%dim_36, %30) <{dims = [1 : i32]}> : (index, tensor<4x?xf64>) -> !it.domain
    %42 = "it.IndexOp"(%40, %41) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg1, %42) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %43 = "it.LHSOperandOp"(%arg1, %pos, %crd) : (tensor<?xf64>, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%29, %38) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%29, %40, %pos_42) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %44 = "it.OperandOp"(%29, %pos_42, %pos_44, %crd_41, %crd_43) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%30, %40) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%30, %42, %pos_46) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %45 = "it.OperandOp"(%30, %pos_46, %pos_48, %crd_45, %crd_47) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %46 = "it.ComputeOp"(%42, %43, %44, %45) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?xf64>
    %crd_49, %pos_50 = "it.IndexToTensorDim"(%22, %38) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %47 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos_50) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %48 = "it.IndexOp"(%38, %47) : (!it.index, !it.domain) -> !it.index
    %crd_51, %pos_52 = "it.IndexToTensorDim"(%arg0, %38) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_53, %pos_54 = "it.IndexToTensorDim"(%arg0, %48, %pos_52) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %49 = "it.LHSOperandOp"(%arg0, %pos_52, %pos_54, %crd_51, %crd_53) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_55, %pos_56 = "it.IndexToTensorDim"(%22, %48, %pos_50) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %50 = "it.OperandOp"(%22, %pos_50, %pos_56, %crd_49, %crd_55) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_57, %pos_58 = "it.IndexToTensorDim"(%46, %48) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %51 = "it.OperandOp"(%46, %pos_58, %crd_57) : (tensor<?xf64>, index, index) -> !it.operand
    %52 = "it.ComputeOp"(%48, %49, %50, %51) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %crd_59, %pos_60 = "it.IndexToTensorDim"(%46, %48) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %53 = "it.LHSOperandOp"(%46, %pos_60, %crd_59) : (tensor<?xf64>, index, index) -> !it.operand
    %cst_61 = arith.constant 0.000000e+00 : f64
    %54 = "it.OperandOp"(%cst_61) : (f64) -> !it.operand
    %55 = "it.ComputeOp"(%48, %53, %54) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
    it.yield %52, %55 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>)
  "ta.print"(%35#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
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
  %idx4 = index.constant 4
  %idx1 = index.constant 1
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
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_20 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %25 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %26 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_21 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %alloc_22 = memref.alloc(%26) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_22 : memref<4x?xf64>)
  %28 = bufferization.to_tensor %alloc_22 restrict writable : memref<4x?xf64>
  %dim_23 = tensor.dim %28, %idx1 : tensor<4x?xf64>
  %29 = "it.DenseDomainOp"(%21, %20, %27) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>) -> !it.domain
  %30 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %31 = "it.IndexTreeSparseTensorOp"(%29, %30) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_24 = memref.alloc(%26) {alignment = 32 : i64} : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?xf64>)
  %32 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xf64>
  %alloc_25 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x?xf64>)
  %33:2 = "it.itree"(%31, %32) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?xf64>):
    %34 = "it.RootOp"() : () -> !it.index_tree
    %35 = "it.DenseDomainOp"(%21, %20, %27) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index_tree, !it.domain) -> !it.index
    %37 = "it.DenseDomainOp"(%idx4, %27, %28) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<?x4xf64>, tensor<4x?xf64>) -> !it.domain
    %38 = "it.IndexOp"(%36, %37) : (!it.index, !it.domain) -> !it.index
    %39 = "it.DenseDomainOp"(%dim_23, %28) <{dims = [1 : i32]}> : (index, tensor<4x?xf64>) -> !it.domain
    %40 = "it.IndexOp"(%38, %39) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg1, %40) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %41 = "it.LHSOperandOp"(%arg1, %pos, %crd) : (tensor<?xf64>, index, index) -> !it.operand
    %crd_26, %pos_27 = "it.IndexToTensorDim"(%27, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_28, %pos_29 = "it.IndexToTensorDim"(%27, %38, %pos_27) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%27, %pos_27, %pos_29, %crd_26, %crd_28) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_30, %pos_31 = "it.IndexToTensorDim"(%28, %38) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%28, %40, %pos_31) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%28, %pos_31, %pos_33, %crd_30, %crd_32) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %44 = "it.ComputeOp"(%40, %41, %42, %43) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?xf64>
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%20, %36) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %45 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24, %pos_35) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %46 = "it.IndexOp"(%36, %45) : (!it.index, !it.domain) -> !it.index
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%arg0, %36) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%arg0, %46, %pos_37) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %47 = "it.LHSOperandOp"(%arg0, %pos_37, %pos_39, %crd_36, %crd_38) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%20, %46, %pos_35) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %48 = "it.OperandOp"(%20, %pos_35, %pos_41, %crd_34, %crd_40) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%44, %46) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %49 = "it.OperandOp"(%44, %pos_43, %crd_42) : (tensor<?xf64>, index, index) -> !it.operand
    %50 = "it.ComputeOp"(%46, %47, %48, %49) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%44, %46) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %51 = "it.LHSOperandOp"(%44, %pos_45, %crd_44) : (tensor<?xf64>, index, index) -> !it.operand
    %52 = "it.OperandOp"(%cst_1) : (f64) -> !it.operand
    %53 = "it.ComputeOp"(%46, %51, %52) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
    it.yield %50, %53 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>)
  "ta.print"(%33#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func @main() {
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
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
  %idx4 = index.constant 4
  %idx1 = index.constant 1
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
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_20 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %25 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %26 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_21 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %alloc_22 = memref.alloc(%26) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_22 : memref<4x?xf64>)
  %28 = bufferization.to_tensor %alloc_22 restrict writable : memref<4x?xf64>
  %dim_23 = tensor.dim %28, %idx1 : tensor<4x?xf64>
  %29 = "it.DenseDomainOp"(%21, %20, %27) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>) -> !it.domain
  %30 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %31 = "it.IndexTreeSparseTensorOp"(%29, %30) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_24 = memref.alloc(%26) {alignment = 32 : i64} : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?xf64>)
  %32 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xf64>
  %alloc_25 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x?xf64>)
  %33:2 = "it.itree"(%31, %32) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?xf64>):
    %34 = "it.RootOp"() : () -> !it.index_tree
    %35 = "it.DenseDomainOp"(%21, %20, %27) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index_tree, !it.domain) -> !it.index
    %37 = "it.DenseDomainOp"(%idx4, %27, %28) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<?x4xf64>, tensor<4x?xf64>) -> !it.domain
    %38 = "it.IndexOp"(%36, %37) : (!it.index, !it.domain) -> !it.index
    %39 = "it.DenseDomainOp"(%dim_23, %28) <{dims = [1 : i32]}> : (index, tensor<4x?xf64>) -> !it.domain
    %40 = "it.IndexOp"(%38, %39) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg1, %40) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %41 = "it.LHSOperandOp"(%arg1, %pos, %crd) : (tensor<?xf64>, index, index) -> !it.operand
    %crd_26, %pos_27 = "it.IndexToTensorDim"(%27, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_28, %pos_29 = "it.IndexToTensorDim"(%27, %38, %pos_27) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%27, %pos_27, %pos_29, %crd_26, %crd_28) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_30, %pos_31 = "it.IndexToTensorDim"(%28, %38) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%28, %40, %pos_31) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%28, %pos_31, %pos_33, %crd_30, %crd_32) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %44 = "it.ComputeOp"(%40, %41, %42, %43) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?xf64>
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%20, %36) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %45 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24, %pos_35) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %46 = "it.IndexOp"(%36, %45) : (!it.index, !it.domain) -> !it.index
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%arg0, %36) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%arg0, %46, %pos_37) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %47 = "it.LHSOperandOp"(%arg0, %pos_37, %pos_39, %crd_36, %crd_38) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%20, %46, %pos_35) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %48 = "it.OperandOp"(%20, %pos_35, %pos_41, %crd_34, %crd_40) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%44, %46) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %49 = "it.OperandOp"(%44, %pos_43, %crd_42) : (tensor<?xf64>, index, index) -> !it.operand
    %50 = "it.ComputeOp"(%46, %47, %48, %49) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%44, %46) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %51 = "it.LHSOperandOp"(%44, %pos_45, %crd_44) : (tensor<?xf64>, index, index) -> !it.operand
    %52 = "it.OperandOp"(%cst_1) : (f64) -> !it.operand
    %53 = "it.ComputeOp"(%46, %51, %52) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
    it.yield %50, %53 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>)
  "ta.print"(%33#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func @main() {
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
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
  %idx4 = index.constant 4
  %idx1 = index.constant 1
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
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_20 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %25 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %26 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_21 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %alloc_22 = memref.alloc(%26) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_22 : memref<4x?xf64>)
  %28 = bufferization.to_tensor %alloc_22 restrict writable : memref<4x?xf64>
  %dim_23 = tensor.dim %28, %idx1 : tensor<4x?xf64>
  %29 = "it.DenseDomainOp"(%21, %20, %27) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>) -> !it.domain
  %30 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %31 = "it.IndexTreeSparseTensorOp"(%29, %30) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_24 = memref.alloc(%26) {alignment = 32 : i64} : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?xf64>)
  %32 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xf64>
  %alloc_25 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x?xf64>)
  %33:2 = "it.itree"(%31, %32) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?xf64>):
    %c0_26 = arith.constant 0 : index
    %c1_27 = arith.constant 1 : index
    %34:2 = scf.for %arg2 = %c0_26 to %21 step %c1_27 iter_args(%arg3 = %arg0, %arg4 = %arg1) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) {
      %c0_28 = arith.constant 0 : index
      %c1_29 = arith.constant 1 : index
      %35:2 = scf.for %arg5 = %c0_28 to %idx4 step %c1_29 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) {
        %c0_33 = arith.constant 0 : index
        %c1_34 = arith.constant 1 : index
        %40:2 = scf.for %arg8 = %c0_33 to %dim_23 step %c1_34 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) {
          %extracted_35 = tensor.extract %27[%arg2, %arg5] : tensor<?x4xf64>
          %extracted_36 = tensor.extract %28[%arg5, %arg8] : tensor<4x?xf64>
          %41 = arith.mulf %extracted_35, %extracted_36 : f64
          %extracted_37 = tensor.extract %arg10[%arg8] : tensor<?xf64>
          %42 = arith.addf %extracted_37, %41 : f64
          %inserted = tensor.insert %42 into %arg10[%arg8] : tensor<?xf64>
          scf.yield %arg9, %inserted : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
        }
        scf.yield %40#0, %40#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
      }
      %c1_30 = arith.constant 1 : index
      %36 = arith.addi %arg2, %c1_30 : index
      %extracted = tensor.extract %22[%arg2] : tensor<?xi64>
      %37 = arith.index_cast %extracted : i64 to index
      %extracted_31 = tensor.extract %22[%36] : tensor<?xi64>
      %38 = arith.index_cast %extracted_31 : i64 to index
      %c1_32 = arith.constant 1 : index
      %39:2 = scf.for %arg5 = %37 to %38 step %c1_32 iter_args(%arg6 = %35#0, %arg7 = %35#1) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) {
        %40 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %41 = arith.index_cast %40 : i64 to index
        %42 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %43 = arith.index_cast %42 : i64 to index
        %44 = "ta.TensorFindPos"(%arg6, %43) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
        %45 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %46 = arith.index_cast %45 : i64 to index
        %47 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %48 = arith.index_cast %47 : i64 to index
        %49 = "ta.TAExtractOp"(%20, %arg5, %arg2, %46) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
        %extracted_33 = tensor.extract %arg7[%48] : tensor<?xf64>
        %50 = arith.mulf %49, %extracted_33 : f64
        %51 = "ta.TAExtractOp"(%arg6, %44, %arg2, %41) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
        %52 = "ta.TAInsertOp"(%arg6, %arg2, %44, %arg2, %41, %50) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %53 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %54 = arith.index_cast %53 : i64 to index
        %extracted_34 = tensor.extract %arg7[%54] : tensor<?xf64>
        %inserted = tensor.insert %cst_1 into %arg7[%54] : tensor<?xf64>
        scf.yield %52, %inserted : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
      }
      scf.yield %39#0, %39#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
    }
    it.yield %34#0, %34#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>)
  "ta.print"(%33#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func @main() {
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
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
  %idx4 = index.constant 4
  %idx1 = index.constant 1
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
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_20 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %25 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %26 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_21 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %alloc_22 = memref.alloc(%26) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_22 : memref<4x?xf64>)
  %28 = bufferization.to_tensor %alloc_22 restrict writable : memref<4x?xf64>
  %dim_23 = tensor.dim %28, %idx1 : tensor<4x?xf64>
  %29 = "it.DenseDomainOp"(%21, %20, %27) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>) -> !it.domain
  %30 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %31 = "it.IndexTreeSparseTensorOp"(%29, %30) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_24 = memref.alloc(%26) {alignment = 32 : i64} : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?xf64>)
  %32 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xf64>
  %alloc_25 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x?xf64>)
  %33:2 = "it.itree"(%31, %32) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?xf64>):
    %34:2 = scf.for %arg2 = %c0 to %21 step %c1 iter_args(%arg3 = %arg0, %arg4 = %arg1) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) {
      %35:2 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) {
        %40:2 = scf.for %arg8 = %c0 to %dim_23 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) {
          %extracted_27 = tensor.extract %27[%arg2, %arg5] : tensor<?x4xf64>
          %extracted_28 = tensor.extract %28[%arg5, %arg8] : tensor<4x?xf64>
          %41 = arith.mulf %extracted_27, %extracted_28 : f64
          %extracted_29 = tensor.extract %arg10[%arg8] : tensor<?xf64>
          %42 = arith.addf %extracted_29, %41 : f64
          %inserted = tensor.insert %42 into %arg10[%arg8] : tensor<?xf64>
          scf.yield %arg9, %inserted : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
        }
        scf.yield %40#0, %40#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
      }
      %36 = arith.addi %arg2, %c1 : index
      %extracted = tensor.extract %22[%arg2] : tensor<?xi64>
      %37 = arith.index_cast %extracted : i64 to index
      %extracted_26 = tensor.extract %22[%36] : tensor<?xi64>
      %38 = arith.index_cast %extracted_26 : i64 to index
      %39:2 = scf.for %arg5 = %37 to %38 step %c1 iter_args(%arg6 = %35#0, %arg7 = %35#1) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) {
        %40 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %41 = arith.index_cast %40 : i64 to index
        %42 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %43 = arith.index_cast %42 : i64 to index
        %44 = "ta.TensorFindPos"(%arg6, %43) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
        %45 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %46 = arith.index_cast %45 : i64 to index
        %47 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %48 = arith.index_cast %47 : i64 to index
        %49 = "ta.TAExtractOp"(%20, %arg5, %arg2, %46) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
        %extracted_27 = tensor.extract %arg7[%48] : tensor<?xf64>
        %50 = arith.mulf %49, %extracted_27 : f64
        %51 = "ta.TAInsertOp"(%arg6, %arg2, %44, %arg2, %41, %50) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %52 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %53 = arith.index_cast %52 : i64 to index
        %inserted = tensor.insert %cst_1 into %arg7[%53] : tensor<?xf64>
        scf.yield %51, %inserted : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
      }
      scf.yield %39#0, %39#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
    }
    it.yield %34#0, %34#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>)
  "ta.print"(%33#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func @main() {
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
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
  %idx4 = index.constant 4
  %idx1 = index.constant 1
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
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_20 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %25 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %26 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_21 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %alloc_22 = memref.alloc(%26) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_22 : memref<4x?xf64>)
  %28 = bufferization.to_tensor %alloc_22 restrict writable : memref<4x?xf64>
  %dim_23 = tensor.dim %28, %idx1 : tensor<4x?xf64>
  %idx0 = index.constant 0
  %idx1_24 = index.constant 1
  %29 = arith.index_cast %21 : index to i64
  %idx1_25 = index.constant 1
  %alloc_26 = memref.alloc(%idx1_25) : memref<?xi64>
  memref.store %29, %alloc_26[%idx0] : memref<?xi64>
  %alloc_27 = memref.alloc() : memref<0xi64>
  %alloc_28 = memref.alloc() : memref<0xi64>
  %alloc_29 = memref.alloc() : memref<0xi64>
  %30 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xi64>
  %31 = bufferization.to_tensor %alloc_27 restrict writable : memref<0xi64>
  %32 = bufferization.to_tensor %alloc_28 restrict writable : memref<0xi64>
  %33 = bufferization.to_tensor %alloc_29 restrict writable : memref<0xi64>
  %34 = index.mul %idx1_24, %21
  %alloc_30 = memref.alloc() : memref<0xi64>
  %alloc_31 = memref.alloc() : memref<0xi64>
  %35 = bufferization.to_tensor %alloc_30 restrict writable : memref<0xi64>
  %36 = bufferization.to_tensor %alloc_31 restrict writable : memref<0xi64>
  %alloc_32 = memref.alloc(%dim_20) : memref<?xf64>
  %cst_33 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0 to %dim_20 step %idx1_24 {
    memref.store %cst_33, %alloc_32[%arg0] : memref<?xf64>
  }
  %37 = bufferization.to_tensor %alloc_32 restrict writable : memref<?xf64>
  %from_elements_34 = tensor.from_elements %21, %24 : tensor<2xindex>
  %38 = "ta.spTensor_construct"(%from_elements_34, %30, %22, %31, %23, %32, %35, %33, %36, %37) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<0xi64>, tensor<?xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_35 = memref.alloc(%26) {alignment = 32 : i64} : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_35 : memref<?xf64>)
  %39 = bufferization.to_tensor %alloc_35 restrict writable : memref<?xf64>
  %alloc_36 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_36 : memref<?x?xf64>)
  %40:2 = "it.itree"(%38, %39) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: tensor<?xf64>):
    %41:2 = scf.for %arg2 = %c0 to %21 step %c1 iter_args(%arg3 = %arg0, %arg4 = %arg1) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) {
      %42:2 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) {
        %47:2 = scf.for %arg8 = %c0 to %dim_23 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) {
          %extracted_38 = tensor.extract %27[%arg2, %arg5] : tensor<?x4xf64>
          %extracted_39 = tensor.extract %28[%arg5, %arg8] : tensor<4x?xf64>
          %48 = arith.mulf %extracted_38, %extracted_39 : f64
          %extracted_40 = tensor.extract %arg10[%arg8] : tensor<?xf64>
          %49 = arith.addf %extracted_40, %48 : f64
          %inserted = tensor.insert %49 into %arg10[%arg8] : tensor<?xf64>
          scf.yield %arg9, %inserted : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
        }
        scf.yield %47#0, %47#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
      }
      %43 = arith.addi %arg2, %c1 : index
      %extracted = tensor.extract %22[%arg2] : tensor<?xi64>
      %44 = arith.index_cast %extracted : i64 to index
      %extracted_37 = tensor.extract %22[%43] : tensor<?xi64>
      %45 = arith.index_cast %extracted_37 : i64 to index
      %46:2 = scf.for %arg5 = %44 to %45 step %c1 iter_args(%arg6 = %42#0, %arg7 = %42#1) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) {
        %47 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %48 = arith.index_cast %47 : i64 to index
        %49 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %50 = arith.index_cast %49 : i64 to index
        %51 = "ta.TensorFindPos"(%arg6, %50) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
        %52 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %53 = arith.index_cast %52 : i64 to index
        %54 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %55 = arith.index_cast %54 : i64 to index
        %56 = "ta.TAExtractOp"(%20, %arg5, %arg2, %53) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
        %extracted_38 = tensor.extract %arg7[%55] : tensor<?xf64>
        %57 = arith.mulf %56, %extracted_38 : f64
        %58 = "ta.TAInsertOp"(%arg6, %arg2, %51, %arg2, %48, %57) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %59 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %60 = arith.index_cast %59 : i64 to index
        %inserted = tensor.insert %cst_1 into %arg7[%60] : tensor<?xf64>
        scf.yield %58, %inserted : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
      }
      scf.yield %46#0, %46#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
    }
    it.yield %41#0, %41#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>)
  "ta.print"(%40#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func @main() {
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
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
  %idx4 = index.constant 4
  %idx1 = index.constant 1
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
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %idx0 = index.constant 0
  %idx0_20 = index.constant 0
  %20 = builtin.unrealized_conversion_cast %from_elements, %idx0, %11, %idx0_20, %15, %16, %19 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_21 = index.constant 0
  %extracted = tensor.extract %from_elements[%idx0_21] : tensor<2xindex>
  %dim = tensor.dim %15, %c0 : tensor<?xi64>
  %dim_22 = tensor.dim %16, %c0 : tensor<?xi64>
  %idx1_23 = index.constant 1
  %extracted_24 = tensor.extract %from_elements[%idx1_23] : tensor<2xindex>
  %idx0_25 = index.constant 0
  %extracted_26 = tensor.extract %from_elements[%idx0_25] : tensor<2xindex>
  %idx1_27 = index.constant 1
  %extracted_28 = tensor.extract %from_elements[%idx1_27] : tensor<2xindex>
  %alloc_29 = memref.alloc(%extracted_26) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_29 : memref<?x4xf64>)
  %21 = bufferization.to_tensor %alloc_29 restrict writable : memref<?x4xf64>
  %alloc_30 = memref.alloc(%extracted_28) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_30 : memref<4x?xf64>)
  %22 = bufferization.to_tensor %alloc_30 restrict writable : memref<4x?xf64>
  %dim_31 = tensor.dim %22, %idx1 : tensor<4x?xf64>
  %idx0_32 = index.constant 0
  %idx1_33 = index.constant 1
  %23 = arith.index_cast %extracted : index to i64
  %idx1_34 = index.constant 1
  %alloc_35 = memref.alloc(%idx1_34) : memref<?xi64>
  memref.store %23, %alloc_35[%idx0_32] : memref<?xi64>
  %alloc_36 = memref.alloc() : memref<0xi64>
  %alloc_37 = memref.alloc() : memref<0xi64>
  %alloc_38 = memref.alloc() : memref<0xi64>
  %24 = bufferization.to_tensor %alloc_35 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_36 restrict writable : memref<0xi64>
  %26 = bufferization.to_tensor %alloc_37 restrict writable : memref<0xi64>
  %27 = bufferization.to_tensor %alloc_38 restrict writable : memref<0xi64>
  %28 = index.mul %idx1_33, %extracted
  %alloc_39 = memref.alloc() : memref<0xi64>
  %alloc_40 = memref.alloc() : memref<0xi64>
  %29 = bufferization.to_tensor %alloc_39 restrict writable : memref<0xi64>
  %30 = bufferization.to_tensor %alloc_40 restrict writable : memref<0xi64>
  %alloc_41 = memref.alloc(%dim_22) : memref<?xf64>
  %cst_42 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_32 to %dim_22 step %idx1_33 {
    memref.store %cst_42, %alloc_41[%arg0] : memref<?xf64>
  }
  %31 = bufferization.to_tensor %alloc_41 restrict writable : memref<?xf64>
  %from_elements_43 = tensor.from_elements %extracted, %extracted_24 : tensor<2xindex>
  %idx0_44 = index.constant 0
  %idx0_45 = index.constant 0
  %32 = builtin.unrealized_conversion_cast %from_elements_43, %idx0_44, %24, %idx0_45, %15, %16, %31 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_46 = memref.alloc(%extracted_28) {alignment = 32 : i64} : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_46 : memref<?xf64>)
  %33 = bufferization.to_tensor %alloc_46 restrict writable : memref<?xf64>
  %alloc_47 = memref.alloc(%extracted_26, %extracted_28) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_47 : memref<?x?xf64>)
  %34:8 = "it.itree"(%from_elements_43, %idx0_44, %24, %idx0_45, %15, %16, %31, %33) <{operandSegmentSizes = array<i32: 7, 1>}> ({
  ^bb0(%arg0: tensor<2xindex>, %arg1: index, %arg2: tensor<?xi64>, %arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xi64>, %arg6: tensor<?xf64>, %arg7: tensor<?xf64>):
    %37:8 = scf.for %arg8 = %c0 to %extracted step %c1 iter_args(%arg9 = %arg0, %arg10 = %arg1, %arg11 = %arg2, %arg12 = %arg3, %arg13 = %arg4, %arg14 = %arg5, %arg15 = %arg6, %arg16 = %arg7) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>) {
      %39:8 = scf.for %arg17 = %c0 to %idx4 step %c1 iter_args(%arg18 = %arg9, %arg19 = %arg10, %arg20 = %arg11, %arg21 = %arg12, %arg22 = %arg13, %arg23 = %arg14, %arg24 = %arg15, %arg25 = %arg16) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>) {
        %46:8 = scf.for %arg26 = %c0 to %dim_31 step %c1 iter_args(%arg27 = %arg18, %arg28 = %arg19, %arg29 = %arg20, %arg30 = %arg21, %arg31 = %arg22, %arg32 = %arg23, %arg33 = %arg24, %arg34 = %arg25) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>) {
          %extracted_51 = tensor.extract %21[%arg8, %arg17] : tensor<?x4xf64>
          %extracted_52 = tensor.extract %22[%arg17, %arg26] : tensor<4x?xf64>
          %48 = arith.mulf %extracted_51, %extracted_52 : f64
          %extracted_53 = tensor.extract %arg34[%arg26] : tensor<?xf64>
          %49 = arith.addf %extracted_53, %48 : f64
          %inserted_54 = tensor.insert %49 into %arg34[%arg26] : tensor<?xf64>
          scf.yield %arg27, %arg28, %arg29, %arg30, %arg31, %arg32, %arg33, %inserted_54 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>
        }
        %47 = builtin.unrealized_conversion_cast %46#0, %46#1, %46#2, %46#3, %46#4, %46#5, %46#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %46#0, %46#1, %46#2, %46#3, %46#4, %46#5, %46#6, %46#7 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>
      }
      %40 = builtin.unrealized_conversion_cast %39#0, %39#1, %39#2, %39#3, %39#4, %39#5, %39#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %41 = arith.addi %arg8, %c1 : index
      %extracted_49 = tensor.extract %15[%arg8] : tensor<?xi64>
      %42 = arith.index_cast %extracted_49 : i64 to index
      %extracted_50 = tensor.extract %15[%41] : tensor<?xi64>
      %43 = arith.index_cast %extracted_50 : i64 to index
      %44:8 = scf.for %arg17 = %42 to %43 step %c1 iter_args(%arg18 = %39#0, %arg19 = %39#1, %arg20 = %39#2, %arg21 = %39#3, %arg22 = %39#4, %arg23 = %39#5, %arg24 = %39#6, %arg25 = %39#7) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>) {
        %extracted_51 = tensor.extract %16[%arg17] : tensor<?xi64>
        %46 = arith.index_cast %extracted_51 : i64 to index
        %extracted_52 = tensor.extract %16[%arg17] : tensor<?xi64>
        %47 = arith.index_cast %extracted_52 : i64 to index
        %extracted_53 = tensor.extract %16[%arg17] : tensor<?xi64>
        %48 = arith.index_cast %extracted_53 : i64 to index
        %extracted_54 = tensor.extract %16[%arg17] : tensor<?xi64>
        %49 = arith.index_cast %extracted_54 : i64 to index
        %extracted_55 = tensor.extract %19[%arg17] : tensor<?xf64>
        %extracted_56 = tensor.extract %arg25[%49] : tensor<?xf64>
        %50 = arith.mulf %extracted_55, %extracted_56 : f64
        %51 = arith.index_cast %46 : index to i64
        %inserted_57 = tensor.insert %51 into %arg23[%arg21] : tensor<?xi64>
        %idx1_58 = index.constant 1
        %52 = index.add %arg21, %idx1_58
        %inserted_59 = tensor.insert %50 into %arg24[%arg21] : tensor<?xf64>
        %53 = builtin.unrealized_conversion_cast %arg18, %arg19, %arg20, %52, %arg22, %inserted_57, %inserted_59 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %extracted_60 = tensor.extract %16[%arg17] : tensor<?xi64>
        %54 = arith.index_cast %extracted_60 : i64 to index
        %inserted_61 = tensor.insert %cst_1 into %arg25[%54] : tensor<?xf64>
        scf.yield %arg18, %arg19, %arg20, %52, %arg22, %inserted_57, %inserted_59, %inserted_61 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>
      }
      %45 = builtin.unrealized_conversion_cast %44#0, %44#1, %44#2, %44#3, %44#4, %44#5, %44#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      scf.yield %44#0, %44#1, %44#2, %44#3, %44#4, %44#5, %44#6, %44#7 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>
    }
    %38 = builtin.unrealized_conversion_cast %37#0, %37#1, %37#2, %37#3, %37#4, %37#5, %37#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %37#0, %37#1, %37#2, %37#3, %37#4, %37#5, %37#6, %37#7 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>
  }) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>)
  %35 = builtin.unrealized_conversion_cast %34#0, %34#1, %34#2, %34#3, %34#4, %34#5, %34#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %36 = bufferization.alloc_tensor() : tensor<1xindex>
  %idx-1 = index.constant -1
  %idx0_48 = index.constant 0
  %inserted = tensor.insert %idx-1 into %36[%idx0_48] : tensor<1xindex>
  "ta.print"(%34#2) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted) : (tensor<1xindex>) -> ()
  "ta.print"(%34#4) : (tensor<?xi64>) -> ()
  "ta.print"(%34#5) : (tensor<?xi64>) -> ()
  "ta.print"(%34#6) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func @main() {
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
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
  %idx4 = index.constant 4
  %idx1 = index.constant 1
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
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %idx0 = index.constant 0
  %idx0_20 = index.constant 0
  %20 = builtin.unrealized_conversion_cast %from_elements, %idx0, %11, %idx0_20, %15, %16, %19 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_21 = index.constant 0
  %dim = tensor.dim %15, %c0 : tensor<?xi64>
  %dim_22 = tensor.dim %16, %c0 : tensor<?xi64>
  %idx1_23 = index.constant 1
  %idx0_24 = index.constant 0
  %idx1_25 = index.constant 1
  %alloc_26 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_26 : memref<?x4xf64>)
  %21 = bufferization.to_tensor %alloc_26 restrict writable : memref<?x4xf64>
  %alloc_27 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_27 : memref<4x?xf64>)
  %22 = bufferization.to_tensor %alloc_27 restrict writable : memref<4x?xf64>
  %dim_28 = tensor.dim %22, %idx1 : tensor<4x?xf64>
  %idx0_29 = index.constant 0
  %idx1_30 = index.constant 1
  %23 = arith.index_cast %9 : index to i64
  %idx1_31 = index.constant 1
  %alloc_32 = memref.alloc(%idx1_31) : memref<?xi64>
  memref.store %23, %alloc_32[%idx0_29] : memref<?xi64>
  %alloc_33 = memref.alloc() : memref<0xi64>
  %alloc_34 = memref.alloc() : memref<0xi64>
  %alloc_35 = memref.alloc() : memref<0xi64>
  %24 = bufferization.to_tensor %alloc_32 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_33 restrict writable : memref<0xi64>
  %26 = bufferization.to_tensor %alloc_34 restrict writable : memref<0xi64>
  %27 = bufferization.to_tensor %alloc_35 restrict writable : memref<0xi64>
  %28 = index.mul %idx1_30, %9
  %alloc_36 = memref.alloc() : memref<0xi64>
  %alloc_37 = memref.alloc() : memref<0xi64>
  %29 = bufferization.to_tensor %alloc_36 restrict writable : memref<0xi64>
  %30 = bufferization.to_tensor %alloc_37 restrict writable : memref<0xi64>
  %alloc_38 = memref.alloc(%dim_22) : memref<?xf64>
  %cst_39 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_29 to %dim_22 step %idx1_30 {
    memref.store %cst_39, %alloc_38[%arg0] : memref<?xf64>
  }
  %31 = bufferization.to_tensor %alloc_38 restrict writable : memref<?xf64>
  %from_elements_40 = tensor.from_elements %9, %10 : tensor<2xindex>
  %idx0_41 = index.constant 0
  %idx0_42 = index.constant 0
  %32 = builtin.unrealized_conversion_cast %from_elements_40, %idx0_41, %24, %idx0_42, %15, %16, %31 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_43 = memref.alloc(%10) {alignment = 32 : i64} : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_43 : memref<?xf64>)
  %33 = bufferization.to_tensor %alloc_43 restrict writable : memref<?xf64>
  %alloc_44 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_44 : memref<?x?xf64>)
  %34:8 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %from_elements_40, %arg2 = %idx0_41, %arg3 = %24, %arg4 = %idx0_42, %arg5 = %15, %arg6 = %16, %arg7 = %31, %arg8 = %33) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>) {
    %38:8 = scf.for %arg9 = %c0 to %idx4 step %c1 iter_args(%arg10 = %arg1, %arg11 = %arg2, %arg12 = %arg3, %arg13 = %arg4, %arg14 = %arg5, %arg15 = %arg6, %arg16 = %arg7, %arg17 = %arg8) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>) {
      %45:8 = scf.for %arg18 = %c0 to %dim_28 step %c1 iter_args(%arg19 = %arg10, %arg20 = %arg11, %arg21 = %arg12, %arg22 = %arg13, %arg23 = %arg14, %arg24 = %arg15, %arg25 = %arg16, %arg26 = %arg17) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>) {
        %extracted_47 = tensor.extract %21[%arg0, %arg9] : tensor<?x4xf64>
        %extracted_48 = tensor.extract %22[%arg9, %arg18] : tensor<4x?xf64>
        %47 = arith.mulf %extracted_47, %extracted_48 : f64
        %extracted_49 = tensor.extract %arg26[%arg18] : tensor<?xf64>
        %48 = arith.addf %extracted_49, %47 : f64
        %inserted_50 = tensor.insert %48 into %arg26[%arg18] : tensor<?xf64>
        scf.yield %arg19, %arg20, %arg21, %arg22, %arg23, %arg24, %arg25, %inserted_50 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>
      }
      %46 = builtin.unrealized_conversion_cast %45#0, %45#1, %45#2, %45#3, %45#4, %45#5, %45#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      scf.yield %45#0, %45#1, %45#2, %45#3, %45#4, %45#5, %45#6, %45#7 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>
    }
    %39 = builtin.unrealized_conversion_cast %38#0, %38#1, %38#2, %38#3, %38#4, %38#5, %38#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %40 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
    %41 = arith.index_cast %extracted : i64 to index
    %extracted_46 = tensor.extract %15[%40] : tensor<?xi64>
    %42 = arith.index_cast %extracted_46 : i64 to index
    %43:8 = scf.for %arg9 = %41 to %42 step %c1 iter_args(%arg10 = %38#0, %arg11 = %38#1, %arg12 = %38#2, %arg13 = %38#3, %arg14 = %38#4, %arg15 = %38#5, %arg16 = %38#6, %arg17 = %38#7) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>) {
      %extracted_47 = tensor.extract %16[%arg9] : tensor<?xi64>
      %45 = arith.index_cast %extracted_47 : i64 to index
      %extracted_48 = tensor.extract %16[%arg9] : tensor<?xi64>
      %46 = arith.index_cast %extracted_48 : i64 to index
      %extracted_49 = tensor.extract %16[%arg9] : tensor<?xi64>
      %47 = arith.index_cast %extracted_49 : i64 to index
      %extracted_50 = tensor.extract %16[%arg9] : tensor<?xi64>
      %48 = arith.index_cast %extracted_50 : i64 to index
      %extracted_51 = tensor.extract %19[%arg9] : tensor<?xf64>
      %extracted_52 = tensor.extract %arg17[%48] : tensor<?xf64>
      %49 = arith.mulf %extracted_51, %extracted_52 : f64
      %50 = arith.index_cast %45 : index to i64
      %inserted_53 = tensor.insert %50 into %arg15[%arg13] : tensor<?xi64>
      %idx1_54 = index.constant 1
      %51 = index.add %arg13, %idx1_54
      %inserted_55 = tensor.insert %49 into %arg16[%arg13] : tensor<?xf64>
      %52 = builtin.unrealized_conversion_cast %arg10, %arg11, %arg12, %51, %arg14, %inserted_53, %inserted_55 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %extracted_56 = tensor.extract %16[%arg9] : tensor<?xi64>
      %53 = arith.index_cast %extracted_56 : i64 to index
      %inserted_57 = tensor.insert %cst_1 into %arg17[%53] : tensor<?xf64>
      scf.yield %arg10, %arg11, %arg12, %51, %arg14, %inserted_53, %inserted_55, %inserted_57 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>
    }
    %44 = builtin.unrealized_conversion_cast %43#0, %43#1, %43#2, %43#3, %43#4, %43#5, %43#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    scf.yield %43#0, %43#1, %43#2, %43#3, %43#4, %43#5, %43#6, %43#7 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>
  }
  %35 = builtin.unrealized_conversion_cast %34#0, %34#1, %34#2, %34#3, %34#4, %34#5, %34#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %36 = builtin.unrealized_conversion_cast %34#0, %34#1, %34#2, %34#3, %34#4, %34#5, %34#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %37 = bufferization.alloc_tensor() : tensor<1xindex>
  %idx-1 = index.constant -1
  %idx0_45 = index.constant 0
  %inserted = tensor.insert %idx-1 into %37[%idx0_45] : tensor<1xindex>
  "ta.print"(%34#2) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted) : (tensor<1xindex>) -> ()
  "ta.print"(%34#4) : (tensor<?xi64>) -> ()
  "ta.print"(%34#5) : (tensor<?xi64>) -> ()
  "ta.print"(%34#6) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx0 = index.constant 0
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
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
  %idx4 = index.constant 4
  %idx1 = index.constant 1
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
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
  %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<4x?xf64>
  %16 = arith.index_cast %9 : index to i64
  %alloc_22 = memref.alloc() : memref<1xi64>
  %cast_23 = memref.cast %alloc_22 : memref<1xi64> to memref<?xi64>
  memref.store %16, %alloc_22[%idx0] : memref<1xi64>
  %17 = bufferization.to_tensor %cast_23 restrict writable : memref<?xi64>
  %alloc_24 = memref.alloc(%5) : memref<?xf64>
  scf.for %arg0 = %idx0 to %5 step %idx1 {
    memref.store %cst_1, %alloc_24[%arg0] : memref<?xf64>
  }
  %18 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xf64>
  %alloc_25 = memref.alloc(%10) {alignment = 32 : i64} : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?xf64>)
  %19 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xf64>
  %alloc_26 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?x?xf64>)
  %20:4 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %12, %arg3 = %18, %arg4 = %19) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>) {
    %22 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %arg4) -> (tensor<?xf64>) {
      %27 = scf.for %arg7 = %c0 to %10 step %c1 iter_args(%arg8 = %arg6) -> (tensor<?xf64>) {
        %extracted_28 = tensor.extract %14[%arg0, %arg5] : tensor<?x4xf64>
        %extracted_29 = tensor.extract %15[%arg5, %arg7] : tensor<4x?xf64>
        %28 = arith.mulf %extracted_28, %extracted_29 : f64
        %extracted_30 = tensor.extract %arg8[%arg7] : tensor<?xf64>
        %29 = arith.addf %extracted_30, %28 : f64
        %inserted_31 = tensor.insert %29 into %arg8[%arg7] : tensor<?xf64>
        scf.yield %inserted_31 : tensor<?xf64>
      }
      scf.yield %27 : tensor<?xf64>
    }
    %23 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %24 = arith.index_cast %extracted : i64 to index
    %extracted_27 = tensor.extract %11[%23] : tensor<?xi64>
    %25 = arith.index_cast %extracted_27 : i64 to index
    %26:4 = scf.for %arg5 = %24 to %25 step %c1 iter_args(%arg6 = %arg1, %arg7 = %arg2, %arg8 = %arg3, %arg9 = %22) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>) {
      %extracted_28 = tensor.extract %12[%arg5] : tensor<?xi64>
      %extracted_29 = tensor.extract %12[%arg5] : tensor<?xi64>
      %27 = arith.index_cast %extracted_29 : i64 to index
      %extracted_30 = tensor.extract %13[%arg5] : tensor<?xf64>
      %extracted_31 = tensor.extract %arg9[%27] : tensor<?xf64>
      %28 = arith.mulf %extracted_30, %extracted_31 : f64
      %inserted_32 = tensor.insert %extracted_28 into %arg7[%arg6] : tensor<?xi64>
      %29 = index.add %arg6, %idx1
      %inserted_33 = tensor.insert %28 into %arg8[%arg6] : tensor<?xf64>
      %extracted_34 = tensor.extract %12[%arg5] : tensor<?xi64>
      %30 = arith.index_cast %extracted_34 : i64 to index
      %inserted_35 = tensor.insert %cst_1 into %arg9[%30] : tensor<?xf64>
      scf.yield %29, %inserted_32, %inserted_33, %inserted_35 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>
    }
    scf.yield %26#0, %26#1, %26#2, %26#3 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>
  }
  %21 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted = tensor.insert %idx-1 into %21[%idx0] : tensor<1xindex>
  "ta.print"(%17) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted) : (tensor<1xindex>) -> ()
  "ta.print"(%11) : (tensor<?xi64>) -> ()
  "ta.print"(%20#1) : (tensor<?xi64>) -> ()
  "ta.print"(%20#2) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx0 = index.constant 0
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
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
  %idx4 = index.constant 4
  %idx1 = index.constant 1
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
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
  %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<4x?xf64>
  %16 = arith.index_cast %9 : index to i64
  %alloc_22 = memref.alloc() : memref<1xi64>
  %cast_23 = memref.cast %alloc_22 : memref<1xi64> to memref<?xi64>
  memref.store %16, %alloc_22[%idx0] : memref<1xi64>
  %17 = bufferization.to_tensor %cast_23 restrict writable : memref<?xi64>
  %alloc_24 = memref.alloc(%5) : memref<?xf64>
  scf.for %arg0 = %idx0 to %5 step %idx1 {
    memref.store %cst_1, %alloc_24[%arg0] : memref<?xf64>
  }
  %18 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xf64>
  %alloc_25 = memref.alloc(%10) {alignment = 32 : i64} : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?xf64>)
  %19 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xf64>
  %alloc_26 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?x?xf64>)
  %20:4 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %12, %arg3 = %18, %arg4 = %19) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>) {
    %22 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %arg4) -> (tensor<?xf64>) {
      %extracted_28 = tensor.extract %14[%arg0, %arg5] : tensor<?x4xf64>
      %27 = scf.for %arg7 = %c0 to %10 step %c1 iter_args(%arg8 = %arg6) -> (tensor<?xf64>) {
        %extracted_29 = tensor.extract %15[%arg5, %arg7] : tensor<4x?xf64>
        %28 = arith.mulf %extracted_28, %extracted_29 : f64
        %extracted_30 = tensor.extract %arg8[%arg7] : tensor<?xf64>
        %29 = arith.addf %extracted_30, %28 : f64
        %inserted_31 = tensor.insert %29 into %arg8[%arg7] : tensor<?xf64>
        scf.yield %inserted_31 : tensor<?xf64>
      }
      scf.yield %27 : tensor<?xf64>
    }
    %23 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %24 = arith.index_cast %extracted : i64 to index
    %extracted_27 = tensor.extract %11[%23] : tensor<?xi64>
    %25 = arith.index_cast %extracted_27 : i64 to index
    %26:4 = scf.for %arg5 = %24 to %25 step %c1 iter_args(%arg6 = %arg1, %arg7 = %arg2, %arg8 = %arg3, %arg9 = %22) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>) {
      %extracted_28 = tensor.extract %12[%arg5] : tensor<?xi64>
      %extracted_29 = tensor.extract %12[%arg5] : tensor<?xi64>
      %27 = arith.index_cast %extracted_29 : i64 to index
      %extracted_30 = tensor.extract %13[%arg5] : tensor<?xf64>
      %extracted_31 = tensor.extract %arg9[%27] : tensor<?xf64>
      %28 = arith.mulf %extracted_30, %extracted_31 : f64
      %inserted_32 = tensor.insert %extracted_28 into %arg7[%arg6] : tensor<?xi64>
      %29 = index.add %arg6, %idx1
      %inserted_33 = tensor.insert %28 into %arg8[%arg6] : tensor<?xf64>
      %extracted_34 = tensor.extract %12[%arg5] : tensor<?xi64>
      %30 = arith.index_cast %extracted_34 : i64 to index
      %inserted_35 = tensor.insert %cst_1 into %arg9[%30] : tensor<?xf64>
      scf.yield %29, %inserted_32, %inserted_33, %inserted_35 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>
    }
    scf.yield %26#0, %26#1, %26#2, %26#3 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>
  }
  %21 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted = tensor.insert %idx-1 into %21[%idx0] : tensor<1xindex>
  "ta.print"(%17) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted) : (tensor<1xindex>) -> ()
  "ta.print"(%11) : (tensor<?xi64>) -> ()
  "ta.print"(%20#1) : (tensor<?xi64>) -> ()
  "ta.print"(%20#2) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx0 = index.constant 0
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
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
  %idx4 = index.constant 4
  %idx1 = index.constant 1
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
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
  %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<4x?xf64>
  %16 = arith.index_cast %9 : index to i64
  %alloc_22 = memref.alloc() : memref<1xi64>
  %cast_23 = memref.cast %alloc_22 : memref<1xi64> to memref<?xi64>
  memref.store %16, %alloc_22[%idx0] : memref<1xi64>
  %17 = bufferization.to_tensor %cast_23 restrict writable : memref<?xi64>
  %alloc_24 = memref.alloc(%5) : memref<?xf64>
  scf.for %arg0 = %idx0 to %5 step %idx1 {
    memref.store %cst_1, %alloc_24[%arg0] : memref<?xf64>
  }
  %18 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xf64>
  %alloc_25 = memref.alloc(%10) {alignment = 32 : i64} : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?xf64>)
  %19 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xf64>
  %alloc_26 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?x?xf64>)
  %20:4 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %12, %arg3 = %18, %arg4 = %19) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>) {
    %22 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %arg4) -> (tensor<?xf64>) {
      %extracted_28 = tensor.extract %14[%arg0, %arg5] : tensor<?x4xf64>
      %27 = scf.for %arg7 = %c0 to %10 step %c1 iter_args(%arg8 = %arg6) -> (tensor<?xf64>) {
        %extracted_29 = tensor.extract %15[%arg5, %arg7] : tensor<4x?xf64>
        %28 = arith.mulf %extracted_28, %extracted_29 : f64
        %extracted_30 = tensor.extract %arg8[%arg7] : tensor<?xf64>
        %29 = arith.addf %extracted_30, %28 : f64
        %inserted_31 = tensor.insert %29 into %arg8[%arg7] : tensor<?xf64>
        scf.yield %inserted_31 : tensor<?xf64>
      }
      scf.yield %27 : tensor<?xf64>
    }
    %23 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %24 = arith.index_cast %extracted : i64 to index
    %extracted_27 = tensor.extract %11[%23] : tensor<?xi64>
    %25 = arith.index_cast %extracted_27 : i64 to index
    %26:4 = scf.for %arg5 = %24 to %25 step %c1 iter_args(%arg6 = %arg1, %arg7 = %arg2, %arg8 = %arg3, %arg9 = %22) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>) {
      %extracted_28 = tensor.extract %12[%arg5] : tensor<?xi64>
      %extracted_29 = tensor.extract %12[%arg5] : tensor<?xi64>
      %27 = arith.index_cast %extracted_29 : i64 to index
      %extracted_30 = tensor.extract %13[%arg5] : tensor<?xf64>
      %extracted_31 = tensor.extract %arg9[%27] : tensor<?xf64>
      %28 = arith.mulf %extracted_30, %extracted_31 : f64
      %inserted_32 = tensor.insert %extracted_28 into %arg7[%arg6] : tensor<?xi64>
      %29 = index.add %arg6, %idx1
      %inserted_33 = tensor.insert %28 into %arg8[%arg6] : tensor<?xf64>
      %extracted_34 = tensor.extract %12[%arg5] : tensor<?xi64>
      %30 = arith.index_cast %extracted_34 : i64 to index
      %inserted_35 = tensor.insert %cst_1 into %arg9[%30] : tensor<?xf64>
      scf.yield %29, %inserted_32, %inserted_33, %inserted_35 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>
    }
    scf.yield %26#0, %26#1, %26#2, %26#3 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>
  }
  %21 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted = tensor.insert %idx-1 into %21[%idx0] : tensor<1xindex>
  "ta.print"(%17) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted) : (tensor<1xindex>) -> ()
  "ta.print"(%11) : (tensor<?xi64>) -> ()
  "ta.print"(%20#1) : (tensor<?xi64>) -> ()
  "ta.print"(%20#2) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx0 = index.constant 0
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
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
    %idx4 = index.constant 4
    %idx1 = index.constant 1
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
    %alloc_2 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
    %alloc_18 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
    %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
    %13 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<4x?xf64>
    %16 = arith.index_cast %9 : index to i64
    %alloc_22 = memref.alloc() : memref<1xi64>
    %cast_23 = memref.cast %alloc_22 : memref<1xi64> to memref<?xi64>
    memref.store %16, %alloc_22[%idx0] : memref<1xi64>
    %17 = bufferization.to_tensor %cast_23 restrict writable : memref<?xi64>
    %alloc_24 = memref.alloc(%5) : memref<?xf64>
    scf.for %arg0 = %idx0 to %5 step %idx1 {
      memref.store %cst_1, %alloc_24[%arg0] : memref<?xf64>
    }
    %18 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xf64>
    %alloc_25 = memref.alloc(%10) {alignment = 32 : i64} : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?xf64>)
    %19 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xf64>
    %alloc_26 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?x?xf64>)
    %20:4 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %12, %arg3 = %18, %arg4 = %19) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>) {
      %22 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %arg4) -> (tensor<?xf64>) {
        %extracted_28 = tensor.extract %14[%arg0, %arg5] : tensor<?x4xf64>
        %27 = scf.for %arg7 = %c0 to %10 step %c1 iter_args(%arg8 = %arg6) -> (tensor<?xf64>) {
          %extracted_29 = tensor.extract %15[%arg5, %arg7] : tensor<4x?xf64>
          %28 = arith.mulf %extracted_28, %extracted_29 : f64
          %extracted_30 = tensor.extract %arg8[%arg7] : tensor<?xf64>
          %29 = arith.addf %extracted_30, %28 : f64
          %inserted_31 = tensor.insert %29 into %arg8[%arg7] : tensor<?xf64>
          scf.yield %inserted_31 : tensor<?xf64>
        }
        scf.yield %27 : tensor<?xf64>
      }
      %23 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %24 = arith.index_cast %extracted : i64 to index
      %extracted_27 = tensor.extract %11[%23] : tensor<?xi64>
      %25 = arith.index_cast %extracted_27 : i64 to index
      %26:4 = scf.for %arg5 = %24 to %25 step %c1 iter_args(%arg6 = %arg1, %arg7 = %arg2, %arg8 = %arg3, %arg9 = %22) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>) {
        %extracted_28 = tensor.extract %12[%arg5] : tensor<?xi64>
        %extracted_29 = tensor.extract %12[%arg5] : tensor<?xi64>
        %27 = arith.index_cast %extracted_29 : i64 to index
        %extracted_30 = tensor.extract %13[%arg5] : tensor<?xf64>
        %extracted_31 = tensor.extract %arg9[%27] : tensor<?xf64>
        %28 = arith.mulf %extracted_30, %extracted_31 : f64
        %inserted_32 = tensor.insert %extracted_28 into %arg7[%arg6] : tensor<?xi64>
        %29 = index.add %arg6, %idx1
        %inserted_33 = tensor.insert %28 into %arg8[%arg6] : tensor<?xf64>
        %extracted_34 = tensor.extract %12[%arg5] : tensor<?xi64>
        %30 = arith.index_cast %extracted_34 : i64 to index
        %inserted_35 = tensor.insert %cst_1 into %arg9[%30] : tensor<?xf64>
        scf.yield %29, %inserted_32, %inserted_33, %inserted_35 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>
      }
      scf.yield %26#0, %26#1, %26#2, %26#3 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>
    }
    %21 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted = tensor.insert %idx-1 into %21[%idx0] : tensor<1xindex>
    "ta.print"(%17) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted) : (tensor<1xindex>) -> ()
    "ta.print"(%11) : (tensor<?xi64>) -> ()
    "ta.print"(%20#1) : (tensor<?xi64>) -> ()
    "ta.print"(%20#2) : (tensor<?xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx0 = index.constant 0
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
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
    %idx4 = index.constant 4
    %idx1 = index.constant 1
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
    %alloc_2 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
    %alloc_18 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
    %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
    %13 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<4x?xf64>
    %16 = arith.index_cast %9 : index to i64
    %alloc_22 = memref.alloc() : memref<1xi64>
    %cast_23 = memref.cast %alloc_22 : memref<1xi64> to memref<?xi64>
    memref.store %16, %alloc_22[%idx0] : memref<1xi64>
    %17 = bufferization.to_tensor %cast_23 restrict writable : memref<?xi64>
    %alloc_24 = memref.alloc(%5) : memref<?xf64>
    scf.for %arg0 = %idx0 to %5 step %idx1 {
      memref.store %cst_1, %alloc_24[%arg0] : memref<?xf64>
    }
    %18 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xf64>
    %alloc_25 = memref.alloc(%10) {alignment = 32 : i64} : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?xf64>)
    %19 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xf64>
    %alloc_26 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?x?xf64>)
    %20:4 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %12, %arg3 = %18, %arg4 = %19) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>) {
      %22 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %arg4) -> (tensor<?xf64>) {
        %extracted_28 = tensor.extract %14[%arg0, %arg5] : tensor<?x4xf64>
        %27 = scf.for %arg7 = %c0 to %10 step %c1 iter_args(%arg8 = %arg6) -> (tensor<?xf64>) {
          %extracted_29 = tensor.extract %15[%arg5, %arg7] : tensor<4x?xf64>
          %28 = arith.mulf %extracted_28, %extracted_29 : f64
          %extracted_30 = tensor.extract %arg8[%arg7] : tensor<?xf64>
          %29 = arith.addf %extracted_30, %28 : f64
          %inserted_31 = tensor.insert %29 into %arg8[%arg7] : tensor<?xf64>
          scf.yield %inserted_31 : tensor<?xf64>
        }
        scf.yield %27 : tensor<?xf64>
      }
      %23 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %24 = arith.index_cast %extracted : i64 to index
      %extracted_27 = tensor.extract %11[%23] : tensor<?xi64>
      %25 = arith.index_cast %extracted_27 : i64 to index
      %26:4 = scf.for %arg5 = %24 to %25 step %c1 iter_args(%arg6 = %arg1, %arg7 = %arg2, %arg8 = %arg3, %arg9 = %22) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>) {
        %extracted_28 = tensor.extract %12[%arg5] : tensor<?xi64>
        %extracted_29 = tensor.extract %12[%arg5] : tensor<?xi64>
        %27 = arith.index_cast %extracted_29 : i64 to index
        %extracted_30 = tensor.extract %13[%arg5] : tensor<?xf64>
        %extracted_31 = tensor.extract %arg9[%27] : tensor<?xf64>
        %28 = arith.mulf %extracted_30, %extracted_31 : f64
        %inserted_32 = tensor.insert %extracted_28 into %arg7[%arg6] : tensor<?xi64>
        %29 = index.add %arg6, %idx1
        %inserted_33 = tensor.insert %28 into %arg8[%arg6] : tensor<?xf64>
        %extracted_34 = tensor.extract %12[%arg5] : tensor<?xi64>
        %30 = arith.index_cast %extracted_34 : i64 to index
        %inserted_35 = tensor.insert %cst_1 into %arg9[%30] : tensor<?xf64>
        scf.yield %29, %inserted_32, %inserted_33, %inserted_35 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>
      }
      scf.yield %26#0, %26#1, %26#2, %26#3 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>
    }
    %21 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted = tensor.insert %idx-1 into %21[%idx0] : tensor<1xindex>
    "ta.print"(%17) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted) : (tensor<1xindex>) -> ()
    "ta.print"(%11) : (tensor<?xi64>) -> ()
    "ta.print"(%20#1) : (tensor<?xi64>) -> ()
    "ta.print"(%20#2) : (tensor<?xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After OneShotBufferize (one-shot-bufferize) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx0 = index.constant 0
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
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
    %idx4 = index.constant 4
    %idx1 = index.constant 1
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
    %alloc_2 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
    %alloc_18 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
    %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %12 = arith.index_cast %9 : index to i64
    %alloc_22 = memref.alloc() : memref<1xi64>
    %cast_23 = memref.cast %alloc_22 : memref<1xi64> to memref<?xi64>
    memref.store %12, %alloc_22[%idx0] : memref<1xi64>
    %13 = bufferization.to_tensor %cast_23 restrict writable : memref<?xi64>
    %alloc_24 = memref.alloc(%5) : memref<?xf64>
    scf.for %arg0 = %idx0 to %5 step %idx1 {
      memref.store %cst_1, %alloc_24[%arg0] : memref<?xf64>
    }
    %alloc_25 = memref.alloc(%10) {alignment = 32 : i64} : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?xf64>)
    %alloc_26 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?x?xf64>)
    %c0_27 = arith.constant 0 : index
    %dim = memref.dim %alloc_12, %c0_27 : memref<?xi64>
    %alloc_28 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_12, %alloc_28 : memref<?xi64> to memref<?xi64>
    %14:4 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_28, %arg3 = %alloc_24, %arg4 = %alloc_25) -> (index, memref<?xi64>, memref<?xf64>, memref<?xf64>) {
      %18 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %arg4) -> (memref<?xf64>) {
        %25 = memref.load %alloc_20[%arg0, %arg5] : memref<?x4xf64>
        %26 = scf.for %arg7 = %c0 to %10 step %c1 iter_args(%arg8 = %arg6) -> (memref<?xf64>) {
          %27 = memref.load %alloc_21[%arg5, %arg7] : memref<4x?xf64>
          %28 = arith.mulf %25, %27 : f64
          %29 = memref.load %arg8[%arg7] : memref<?xf64>
          %30 = arith.addf %29, %28 : f64
          memref.store %30, %arg8[%arg7] : memref<?xf64>
          scf.yield %arg8 : memref<?xf64>
        }
        scf.yield %26 : memref<?xf64>
      }
      %19 = arith.addi %arg0, %c1 : index
      %20 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = memref.load %alloc_10[%19] : memref<?xi64>
      %23 = arith.index_cast %22 : i64 to index
      %24:4 = scf.for %arg5 = %21 to %23 step %c1 iter_args(%arg6 = %arg1, %arg7 = %arg2, %arg8 = %arg3, %arg9 = %18) -> (index, memref<?xi64>, memref<?xf64>, memref<?xf64>) {
        %25 = memref.load %alloc_12[%arg5] : memref<?xi64>
        %26 = memref.load %alloc_12[%arg5] : memref<?xi64>
        %27 = arith.index_cast %26 : i64 to index
        %28 = memref.load %alloc_18[%arg5] : memref<?xf64>
        %29 = memref.load %arg9[%27] : memref<?xf64>
        %30 = arith.mulf %28, %29 : f64
        memref.store %25, %arg7[%arg6] : memref<?xi64>
        %31 = index.add %arg6, %idx1
        memref.store %30, %arg8[%arg6] : memref<?xf64>
        %32 = memref.load %alloc_12[%arg5] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        memref.store %cst_1, %arg9[%33] : memref<?xf64>
        scf.yield %31, %arg7, %arg8, %arg9 : index, memref<?xi64>, memref<?xf64>, memref<?xf64>
      }
      scf.yield %24#0, %24#1, %24#2, %24#3 : index, memref<?xi64>, memref<?xf64>, memref<?xf64>
    }
    %15 = bufferization.to_tensor %14#2 : memref<?xf64>
    %16 = bufferization.to_tensor %14#1 : memref<?xi64>
    %alloc_29 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_29[%idx0] : memref<1xindex>
    %17 = bufferization.to_tensor %alloc_29 : memref<1xindex>
    "ta.print"(%13) : (tensor<?xi64>) -> ()
    "ta.print"(%17) : (tensor<1xindex>) -> ()
    "ta.print"(%11) : (tensor<?xi64>) -> ()
    "ta.print"(%16) : (tensor<?xi64>) -> ()
    "ta.print"(%15) : (tensor<?xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx0 = index.constant 0
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
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
  %idx4 = index.constant 4
  %idx1 = index.constant 1
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
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
  %12 = arith.index_cast %9 : index to i64
  %alloc_22 = memref.alloc() : memref<1xi64>
  %cast_23 = memref.cast %alloc_22 : memref<1xi64> to memref<?xi64>
  memref.store %12, %alloc_22[%idx0] : memref<1xi64>
  %13 = bufferization.to_tensor %cast_23 restrict writable : memref<?xi64>
  %alloc_24 = memref.alloc(%5) : memref<?xf64>
  scf.for %arg0 = %idx0 to %5 step %idx1 {
    memref.store %cst_1, %alloc_24[%arg0] : memref<?xf64>
  }
  %alloc_25 = memref.alloc(%10) {alignment = 32 : i64} : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?xf64>)
  %alloc_26 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?x?xf64>)
  %c0_27 = arith.constant 0 : index
  %dim = memref.dim %alloc_12, %c0_27 : memref<?xi64>
  %alloc_28 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
  memref.copy %alloc_12, %alloc_28 : memref<?xi64> to memref<?xi64>
  %14:4 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_28, %arg3 = %alloc_24, %arg4 = %alloc_25) -> (index, memref<?xi64>, memref<?xf64>, memref<?xf64>) {
    %18 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %arg4) -> (memref<?xf64>) {
      %25 = memref.load %alloc_20[%arg0, %arg5] : memref<?x4xf64>
      %26 = scf.for %arg7 = %c0 to %10 step %c1 iter_args(%arg8 = %arg6) -> (memref<?xf64>) {
        %27 = memref.load %alloc_21[%arg5, %arg7] : memref<4x?xf64>
        %28 = arith.mulf %25, %27 : f64
        %29 = memref.load %arg8[%arg7] : memref<?xf64>
        %30 = arith.addf %29, %28 : f64
        memref.store %30, %arg8[%arg7] : memref<?xf64>
        scf.yield %arg8 : memref<?xf64>
      }
      scf.yield %26 : memref<?xf64>
    }
    %19 = arith.addi %arg0, %c1 : index
    %20 = memref.load %alloc_10[%arg0] : memref<?xi64>
    %21 = arith.index_cast %20 : i64 to index
    %22 = memref.load %alloc_10[%19] : memref<?xi64>
    %23 = arith.index_cast %22 : i64 to index
    %24:4 = scf.for %arg5 = %21 to %23 step %c1 iter_args(%arg6 = %arg1, %arg7 = %arg2, %arg8 = %arg3, %arg9 = %18) -> (index, memref<?xi64>, memref<?xf64>, memref<?xf64>) {
      %25 = memref.load %alloc_12[%arg5] : memref<?xi64>
      %26 = memref.load %alloc_12[%arg5] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_18[%arg5] : memref<?xf64>
      %29 = memref.load %arg9[%27] : memref<?xf64>
      %30 = arith.mulf %28, %29 : f64
      memref.store %25, %arg7[%arg6] : memref<?xi64>
      %31 = index.add %arg6, %idx1
      memref.store %30, %arg8[%arg6] : memref<?xf64>
      %32 = memref.load %alloc_12[%arg5] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      memref.store %cst_1, %arg9[%33] : memref<?xf64>
      scf.yield %31, %arg7, %arg8, %arg9 : index, memref<?xi64>, memref<?xf64>, memref<?xf64>
    }
    scf.yield %24#0, %24#1, %24#2, %24#3 : index, memref<?xi64>, memref<?xf64>, memref<?xf64>
  }
  %15 = bufferization.to_tensor %14#2 : memref<?xf64>
  %16 = bufferization.to_tensor %14#1 : memref<?xi64>
  %alloc_29 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_29[%idx0] : memref<1xindex>
  %17 = bufferization.to_tensor %alloc_29 : memref<1xindex>
  "ta.print"(%13) : (tensor<?xi64>) -> ()
  "ta.print"(%17) : (tensor<1xindex>) -> ()
  "ta.print"(%11) : (tensor<?xi64>) -> ()
  "ta.print"(%16) : (tensor<?xi64>) -> ()
  "ta.print"(%15) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx0 = index.constant 0
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
  %cst_1 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
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
  %idx4 = index.constant 4
  %idx1 = index.constant 1
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
  %alloc_2 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
  %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
  %12 = arith.index_cast %9 : index to i64
  %alloc_22 = memref.alloc() : memref<1xi64>
  %cast_23 = memref.cast %alloc_22 : memref<1xi64> to memref<?xi64>
  memref.store %12, %alloc_22[%idx0] : memref<1xi64>
  %13 = bufferization.to_tensor %cast_23 restrict writable : memref<?xi64>
  %alloc_24 = memref.alloc(%5) : memref<?xf64>
  scf.for %arg0 = %idx0 to %5 step %idx1 {
    memref.store %cst_1, %alloc_24[%arg0] : memref<?xf64>
  }
  %alloc_25 = memref.alloc(%10) {alignment = 32 : i64} : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?xf64>)
  %alloc_26 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<?x?xf64>)
  %c0_27 = arith.constant 0 : index
  %dim = memref.dim %alloc_12, %c0_27 : memref<?xi64>
  %alloc_28 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
  memref.copy %alloc_12, %alloc_28 : memref<?xi64> to memref<?xi64>
  %14:4 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_28, %arg3 = %alloc_24, %arg4 = %alloc_25) -> (index, memref<?xi64>, memref<?xf64>, memref<?xf64>) {
    %23 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %arg4) -> (memref<?xf64>) {
      %30 = memref.load %alloc_20[%arg0, %arg5] : memref<?x4xf64>
      %31 = scf.for %arg7 = %c0 to %10 step %c1 iter_args(%arg8 = %arg6) -> (memref<?xf64>) {
        %32 = memref.load %alloc_21[%arg5, %arg7] : memref<4x?xf64>
        %33 = arith.mulf %30, %32 : f64
        %34 = memref.load %arg8[%arg7] : memref<?xf64>
        %35 = arith.addf %34, %33 : f64
        memref.store %35, %arg8[%arg7] : memref<?xf64>
        scf.yield %arg8 : memref<?xf64>
      }
      scf.yield %31 : memref<?xf64>
    }
    %24 = arith.addi %arg0, %c1 : index
    %25 = memref.load %alloc_10[%arg0] : memref<?xi64>
    %26 = arith.index_cast %25 : i64 to index
    %27 = memref.load %alloc_10[%24] : memref<?xi64>
    %28 = arith.index_cast %27 : i64 to index
    %29:4 = scf.for %arg5 = %26 to %28 step %c1 iter_args(%arg6 = %arg1, %arg7 = %arg2, %arg8 = %arg3, %arg9 = %23) -> (index, memref<?xi64>, memref<?xf64>, memref<?xf64>) {
      %30 = memref.load %alloc_12[%arg5] : memref<?xi64>
      %31 = memref.load %alloc_12[%arg5] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = memref.load %alloc_18[%arg5] : memref<?xf64>
      %34 = memref.load %arg9[%32] : memref<?xf64>
      %35 = arith.mulf %33, %34 : f64
      memref.store %30, %arg7[%arg6] : memref<?xi64>
      %36 = index.add %arg6, %idx1
      memref.store %35, %arg8[%arg6] : memref<?xf64>
      %37 = memref.load %alloc_12[%arg5] : memref<?xi64>
      %38 = arith.index_cast %37 : i64 to index
      memref.store %cst_1, %arg9[%38] : memref<?xf64>
      scf.yield %36, %arg7, %arg8, %arg9 : index, memref<?xi64>, memref<?xf64>, memref<?xf64>
    }
    scf.yield %29#0, %29#1, %29#2, %29#3 : index, memref<?xi64>, memref<?xf64>, memref<?xf64>
  }
  %15 = bufferization.to_tensor %14#2 : memref<?xf64>
  %16 = bufferization.to_tensor %14#1 : memref<?xi64>
  %alloc_29 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_29[%idx0] : memref<1xindex>
  %17 = bufferization.to_tensor %alloc_29 : memref<1xindex>
  %18 = bufferization.to_memref %13 : memref<?xi64>
  %cast_30 = memref.cast %18 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_30) : (memref<*xi64>) -> ()
  %19 = bufferization.to_memref %17 : memref<1xindex>
  %cast_31 = memref.cast %19 : memref<1xindex> to memref<*xindex>
  call @comet_print_memref_index(%cast_31) : (memref<*xindex>) -> ()
  %20 = bufferization.to_memref %11 : memref<?xi64>
  %cast_32 = memref.cast %20 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_32) : (memref<*xi64>) -> ()
  %21 = bufferization.to_memref %16 : memref<?xi64>
  %cast_33 = memref.cast %21 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_33) : (memref<*xi64>) -> ()
  %22 = bufferization.to_memref %15 : memref<?xf64>
  %cast_34 = memref.cast %22 : memref<?xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_34) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx0 = index.constant 0
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
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
    %idx4 = index.constant 4
    %idx1 = index.constant 1
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
    %alloc_2 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
    %alloc_18 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
    %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %11 = arith.index_cast %9 : index to i64
    %alloc_22 = memref.alloc() : memref<1xi64>
    memref.store %11, %alloc_22[%idx0] : memref<1xi64>
    %alloc_23 = memref.alloc(%5) : memref<?xf64>
    scf.for %arg0 = %idx0 to %5 step %idx1 {
      memref.store %cst_1, %alloc_23[%arg0] : memref<?xf64>
    }
    %alloc_24 = memref.alloc(%10) {alignment = 32 : i64} : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?xf64>)
    %alloc_25 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x?xf64>)
    %alloc_26 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_12, %alloc_26 : memref<?xi64> to memref<?xi64>
    %12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      scf.for %arg2 = %c0 to %idx4 step %c1 {
        %19 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
        scf.for %arg3 = %c0 to %10 step %c1 {
          %20 = memref.load %alloc_21[%arg2, %arg3] : memref<4x?xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = memref.load %alloc_24[%arg3] : memref<?xf64>
          %23 = arith.addf %22, %21 : f64
          memref.store %23, %alloc_24[%arg3] : memref<?xf64>
        }
      }
      %13 = arith.addi %arg0, %c1 : index
      %14 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %16 = memref.load %alloc_10[%13] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = scf.for %arg2 = %15 to %17 step %c1 iter_args(%arg3 = %arg1) -> (index) {
        %19 = memref.load %alloc_12[%arg2] : memref<?xi64>
        %20 = memref.load %alloc_12[%arg2] : memref<?xi64>
        %21 = arith.index_cast %20 : i64 to index
        %22 = memref.load %alloc_18[%arg2] : memref<?xf64>
        %23 = memref.load %alloc_24[%21] : memref<?xf64>
        %24 = arith.mulf %22, %23 : f64
        memref.store %19, %alloc_26[%arg3] : memref<?xi64>
        %25 = index.add %arg3, %idx1
        memref.store %24, %alloc_23[%arg3] : memref<?xf64>
        %26 = memref.load %alloc_12[%arg2] : memref<?xi64>
        %27 = arith.index_cast %26 : i64 to index
        memref.store %cst_1, %alloc_24[%27] : memref<?xf64>
        scf.yield %25 : index
      }
      scf.yield %18 : index
    }
    %alloc_27 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_27[%idx0] : memref<1xindex>
    %cast_28 = memref.cast %alloc_22 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_28) : (memref<*xi64>) -> ()
    %cast_29 = memref.cast %alloc_27 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_29) : (memref<*xindex>) -> ()
    %cast_30 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_30) : (memref<*xi64>) -> ()
    %cast_31 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_31) : (memref<*xi64>) -> ()
    %cast_32 = memref.cast %alloc_23 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_32) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx0 = index.constant 0
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
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
    %idx4 = index.constant 4
    %idx1 = index.constant 1
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
    %alloc_2 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
    %alloc_18 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
    %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %11 = arith.index_cast %9 : index to i64
    %alloc_22 = memref.alloc() : memref<1xi64>
    memref.store %11, %alloc_22[%idx0] : memref<1xi64>
    %alloc_23 = memref.alloc(%5) : memref<?xf64>
    scf.for %arg0 = %idx0 to %5 step %idx1 {
      memref.store %cst_1, %alloc_23[%arg0] : memref<?xf64>
    }
    %alloc_24 = memref.alloc(%10) {alignment = 32 : i64} : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?xf64>)
    %alloc_25 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x?xf64>)
    %alloc_26 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_12, %alloc_26 : memref<?xi64> to memref<?xi64>
    %12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      scf.for %arg2 = %c0 to %idx4 step %c1 {
        %19 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
        scf.for %arg3 = %c0 to %10 step %c1 {
          %20 = memref.load %alloc_21[%arg2, %arg3] : memref<4x?xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = memref.load %alloc_24[%arg3] : memref<?xf64>
          %23 = arith.addf %22, %21 : f64
          memref.store %23, %alloc_24[%arg3] : memref<?xf64>
        }
      }
      %13 = arith.addi %arg0, %c1 : index
      %14 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %16 = memref.load %alloc_10[%13] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = scf.for %arg2 = %15 to %17 step %c1 iter_args(%arg3 = %arg1) -> (index) {
        %19 = memref.load %alloc_12[%arg2] : memref<?xi64>
        %20 = arith.index_cast %19 : i64 to index
        %21 = memref.load %alloc_18[%arg2] : memref<?xf64>
        %22 = memref.load %alloc_24[%20] : memref<?xf64>
        %23 = arith.mulf %21, %22 : f64
        memref.store %19, %alloc_26[%arg3] : memref<?xi64>
        %24 = index.add %arg3, %idx1
        memref.store %23, %alloc_23[%arg3] : memref<?xf64>
        %25 = memref.load %alloc_12[%arg2] : memref<?xi64>
        %26 = arith.index_cast %25 : i64 to index
        memref.store %cst_1, %alloc_24[%26] : memref<?xf64>
        scf.yield %24 : index
      }
      scf.yield %18 : index
    }
    %alloc_27 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_27[%idx0] : memref<1xindex>
    %cast_28 = memref.cast %alloc_22 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_28) : (memref<*xi64>) -> ()
    %cast_29 = memref.cast %alloc_27 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_29) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_11) : (memref<*xi64>) -> ()
    %cast_30 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_30) : (memref<*xi64>) -> ()
    %cast_31 = memref.cast %alloc_23 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_31) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx0 = index.constant 0
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
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
    %idx4 = index.constant 4
    %idx1 = index.constant 1
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
    %alloc_2 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
    %alloc_18 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
    %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %11 = arith.index_cast %9 : index to i64
    %alloc_22 = memref.alloc() : memref<1xi64>
    memref.store %11, %alloc_22[%idx0] : memref<1xi64>
    %alloc_23 = memref.alloc(%5) : memref<?xf64>
    scf.for %arg0 = %idx0 to %5 step %idx1 {
      memref.store %cst_1, %alloc_23[%arg0] : memref<?xf64>
    }
    %alloc_24 = memref.alloc(%10) {alignment = 32 : i64} : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?xf64>)
    %alloc_25 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x?xf64>)
    %alloc_26 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_12, %alloc_26 : memref<?xi64> to memref<?xi64>
    %12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      scf.for %arg2 = %c0 to %idx4 step %c1 {
        %19 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
        scf.for %arg3 = %c0 to %10 step %c1 {
          %20 = memref.load %alloc_21[%arg2, %arg3] : memref<4x?xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = memref.load %alloc_24[%arg3] : memref<?xf64>
          %23 = arith.addf %22, %21 : f64
          memref.store %23, %alloc_24[%arg3] : memref<?xf64>
        }
      }
      %13 = arith.addi %arg0, %c1 : index
      %14 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %16 = memref.load %alloc_10[%13] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = scf.for %arg2 = %15 to %17 step %c1 iter_args(%arg3 = %arg1) -> (index) {
        %19 = memref.load %alloc_12[%arg2] : memref<?xi64>
        %20 = arith.index_cast %19 : i64 to index
        %21 = memref.load %alloc_18[%arg2] : memref<?xf64>
        %22 = memref.load %alloc_24[%20] : memref<?xf64>
        %23 = arith.mulf %21, %22 : f64
        memref.store %19, %alloc_26[%arg3] : memref<?xi64>
        %24 = index.add %arg3, %idx1
        memref.store %23, %alloc_23[%arg3] : memref<?xf64>
        %25 = memref.load %alloc_12[%arg2] : memref<?xi64>
        %26 = arith.index_cast %25 : i64 to index
        memref.store %cst_1, %alloc_24[%26] : memref<?xf64>
        scf.yield %24 : index
      }
      scf.yield %18 : index
    }
    %alloc_27 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_27[%idx0] : memref<1xindex>
    %cast_28 = memref.cast %alloc_22 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_28) : (memref<*xi64>) -> ()
    %cast_29 = memref.cast %alloc_27 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_29) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_11) : (memref<*xi64>) -> ()
    %cast_30 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_30) : (memref<*xi64>) -> ()
    %cast_31 = memref.cast %alloc_23 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_31) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx0 = index.constant 0
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
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
    %idx4 = index.constant 4
    %idx1 = index.constant 1
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
    %alloc_2 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
    %alloc_18 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
    %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %11 = arith.index_cast %9 : index to i64
    %alloc_22 = memref.alloc() : memref<1xi64>
    memref.store %11, %alloc_22[%idx0] : memref<1xi64>
    %alloc_23 = memref.alloc(%5) : memref<?xf64>
    scf.for %arg0 = %idx0 to %5 step %idx1 {
      memref.store %cst_1, %alloc_23[%arg0] : memref<?xf64>
    }
    %alloc_24 = memref.alloc(%10) {alignment = 32 : i64} : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?xf64>)
    %alloc_25 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x?xf64>)
    %alloc_26 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_12, %alloc_26 : memref<?xi64> to memref<?xi64>
    %12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      scf.for %arg2 = %c0 to %idx4 step %c1 {
        %19 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
        scf.for %arg3 = %c0 to %10 step %c1 {
          %20 = memref.load %alloc_21[%arg2, %arg3] : memref<4x?xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = memref.load %alloc_24[%arg3] : memref<?xf64>
          %23 = arith.addf %22, %21 : f64
          memref.store %23, %alloc_24[%arg3] : memref<?xf64>
        }
      }
      %13 = arith.addi %arg0, %c1 : index
      %14 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %16 = memref.load %alloc_10[%13] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = scf.for %arg2 = %15 to %17 step %c1 iter_args(%arg3 = %arg1) -> (index) {
        %19 = memref.load %alloc_12[%arg2] : memref<?xi64>
        %20 = arith.index_cast %19 : i64 to index
        %21 = memref.load %alloc_18[%arg2] : memref<?xf64>
        %22 = memref.load %alloc_24[%20] : memref<?xf64>
        %23 = arith.mulf %21, %22 : f64
        memref.store %19, %alloc_26[%arg3] : memref<?xi64>
        %24 = index.add %arg3, %idx1
        memref.store %23, %alloc_23[%arg3] : memref<?xf64>
        %25 = memref.load %alloc_12[%arg2] : memref<?xi64>
        %26 = arith.index_cast %25 : i64 to index
        memref.store %cst_1, %alloc_24[%26] : memref<?xf64>
        scf.yield %24 : index
      }
      scf.yield %18 : index
    }
    %alloc_27 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_27[%idx0] : memref<1xindex>
    %cast_28 = memref.cast %alloc_22 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_28) : (memref<*xi64>) -> ()
    %cast_29 = memref.cast %alloc_27 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_29) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_11) : (memref<*xi64>) -> ()
    %cast_30 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_30) : (memref<*xi64>) -> ()
    %cast_31 = memref.cast %alloc_23 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_31) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}
