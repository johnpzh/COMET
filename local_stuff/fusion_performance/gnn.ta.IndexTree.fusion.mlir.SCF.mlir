// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
module {
  func.func @main() {
    %idx16 = index.constant 16
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
    %7 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
    %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<16x16xf64>
    %9 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
    %10 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<16xf64>
    "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<16xf64>) -> ()
    %11 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
    "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x16xf64>) -> ()
    "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<16x16xf64>) -> ()
    "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
    "ta.fill"(%11) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
    %12 = "ta.getTime"() : () -> f64
    %13:2 = "it.itree"(%9, %10) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: tensor<?x16xf64>, %arg1: tensor<16xf64>):
      %16 = "it.RootOp"() : () -> !it.index_tree
      %17 = "it.DenseDomainOp"(%1, %0) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
      %18 = "it.IndexOp"(%16, %17) : (!it.index_tree, !it.domain) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%0, %18) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %19 = "it.SparseDomainOp"(%0, %2, %3, %dim, %dim_0, %4, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
      %20 = "it.IndexOp"(%18, %19) : (!it.index, !it.domain) -> !it.index
      %21 = "it.DenseDomainOp"(%idx16, %7) <{dims = [1 : i32]}> : (index, tensor<?x16xf64>) -> !it.domain
      %22 = "it.IndexOp"(%20, %21) : (!it.index, !it.domain) -> !it.index
      %crd_1, %pos_2 = "it.IndexToTensorDim"(%arg1, %22) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
      %23 = "it.LHSOperandOp"(%arg1, %pos_2, %crd_1) : (tensor<16xf64>, index, index) -> !it.operand
      %crd_3, %pos_4 = "it.IndexToTensorDim"(%0, %20, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %24 = "it.OperandOp"(%0, %pos, %pos_4, %crd, %crd_3) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_5, %pos_6 = "it.IndexToTensorDim"(%7, %20) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
      %crd_7, %pos_8 = "it.IndexToTensorDim"(%7, %22, %pos_6) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
      %25 = "it.OperandOp"(%7, %pos_6, %pos_8, %crd_5, %crd_7) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
      %26 = "it.ComputeOp"(%22, %23, %24, %25) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<16xf64>
      %27 = "it.DenseDomainOp"(%idx16, %26, %8) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<16xf64>, tensor<16x16xf64>) -> !it.domain
      %28 = "it.IndexOp"(%18, %27) : (!it.index, !it.domain) -> !it.index
      %29 = "it.DenseDomainOp"(%idx16, %8) <{dims = [1 : i32]}> : (index, tensor<16x16xf64>) -> !it.domain
      %30 = "it.IndexOp"(%28, %29) : (!it.index, !it.domain) -> !it.index
      %crd_9, %pos_10 = "it.IndexToTensorDim"(%arg0, %18) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
      %crd_11, %pos_12 = "it.IndexToTensorDim"(%arg0, %30, %pos_10) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
      %31 = "it.LHSOperandOp"(%arg0, %pos_10, %pos_12, %crd_9, %crd_11) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
      %crd_13, %pos_14 = "it.IndexToTensorDim"(%26, %28) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
      %32 = "it.OperandOp"(%26, %pos_14, %crd_13) : (tensor<16xf64>, index, index) -> !it.operand
      %crd_15, %pos_16 = "it.IndexToTensorDim"(%8, %28) <{dim = 0 : ui32}> : (tensor<16x16xf64>, !it.index) -> (index, index)
      %crd_17, %pos_18 = "it.IndexToTensorDim"(%8, %30, %pos_16) <{dim = 1 : ui32}> : (tensor<16x16xf64>, !it.index, index) -> (index, index)
      %33 = "it.OperandOp"(%8, %pos_16, %pos_18, %crd_15, %crd_17) : (tensor<16x16xf64>, index, index, index, index) -> !it.operand
      %34 = "it.ComputeOp"(%30, %31, %32, %33) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x16xf64>
      %crd_19, %pos_20 = "it.IndexToTensorDim"(%26, %28) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
      %35 = "it.LHSOperandOp"(%26, %pos_20, %crd_19) : (tensor<16xf64>, index, index) -> !it.operand
      %cst = arith.constant 0.000000e+00 : f64
      %36 = "it.OperandOp"(%cst) : (f64) -> !it.operand
      %37 = "it.ComputeOp"(%28, %35, %36) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<16xf64>
      it.yield %34, %37 : tensor<?x16xf64>, tensor<16xf64>
    }) : (tensor<?x16xf64>, tensor<16xf64>) -> (tensor<?x16xf64>, tensor<16xf64>)
    "ta.set_op"(%13#0, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<?x16xf64>) -> ()
    %14 = "ta.getTime"() : () -> f64
    %15 = "ta.reduce"(%9) : (tensor<?x16xf64>) -> f64
    "ta.print"(%15) : (f64) -> ()
    "ta.print_elapsed_time"(%12, %14) : (f64, f64) -> ()
    return
  }
}


// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func @main() {
  %idx16 = index.constant 16
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
  %7 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
  %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<16x16xf64>
  %9 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
  %10 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<16xf64>
  "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<16xf64>) -> ()
  %11 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<16x16xf64>) -> ()
  "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  "ta.fill"(%11) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  %12 = "ta.getTime"() : () -> f64
  %13:2 = "it.itree"(%9, %10) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x16xf64>, %arg1: tensor<16xf64>):
    %16 = "it.RootOp"() : () -> !it.index_tree
    %17 = "it.DenseDomainOp"(%1, %0) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %18 = "it.IndexOp"(%16, %17) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%0, %18) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %19 = "it.SparseDomainOp"(%0, %2, %3, %dim, %dim_0, %4, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %20 = "it.IndexOp"(%18, %19) : (!it.index, !it.domain) -> !it.index
    %21 = "it.DenseDomainOp"(%idx16, %7) <{dims = [1 : i32]}> : (index, tensor<?x16xf64>) -> !it.domain
    %22 = "it.IndexOp"(%20, %21) : (!it.index, !it.domain) -> !it.index
    %crd_1, %pos_2 = "it.IndexToTensorDim"(%arg1, %22) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %23 = "it.LHSOperandOp"(%arg1, %pos_2, %crd_1) : (tensor<16xf64>, index, index) -> !it.operand
    %crd_3, %pos_4 = "it.IndexToTensorDim"(%0, %20, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %24 = "it.OperandOp"(%0, %pos, %pos_4, %crd, %crd_3) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_5, %pos_6 = "it.IndexToTensorDim"(%7, %20) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_7, %pos_8 = "it.IndexToTensorDim"(%7, %22, %pos_6) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %25 = "it.OperandOp"(%7, %pos_6, %pos_8, %crd_5, %crd_7) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %26 = "it.ComputeOp"(%22, %23, %24, %25) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<16xf64>
    %27 = "it.DenseDomainOp"(%idx16, %26, %8) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<16xf64>, tensor<16x16xf64>) -> !it.domain
    %28 = "it.IndexOp"(%18, %27) : (!it.index, !it.domain) -> !it.index
    %29 = "it.DenseDomainOp"(%idx16, %8) <{dims = [1 : i32]}> : (index, tensor<16x16xf64>) -> !it.domain
    %30 = "it.IndexOp"(%28, %29) : (!it.index, !it.domain) -> !it.index
    %crd_9, %pos_10 = "it.IndexToTensorDim"(%arg0, %18) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_11, %pos_12 = "it.IndexToTensorDim"(%arg0, %30, %pos_10) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %31 = "it.LHSOperandOp"(%arg0, %pos_10, %pos_12, %crd_9, %crd_11) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %crd_13, %pos_14 = "it.IndexToTensorDim"(%26, %28) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %32 = "it.OperandOp"(%26, %pos_14, %crd_13) : (tensor<16xf64>, index, index) -> !it.operand
    %crd_15, %pos_16 = "it.IndexToTensorDim"(%8, %28) <{dim = 0 : ui32}> : (tensor<16x16xf64>, !it.index) -> (index, index)
    %crd_17, %pos_18 = "it.IndexToTensorDim"(%8, %30, %pos_16) <{dim = 1 : ui32}> : (tensor<16x16xf64>, !it.index, index) -> (index, index)
    %33 = "it.OperandOp"(%8, %pos_16, %pos_18, %crd_15, %crd_17) : (tensor<16x16xf64>, index, index, index, index) -> !it.operand
    %34 = "it.ComputeOp"(%30, %31, %32, %33) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x16xf64>
    %crd_19, %pos_20 = "it.IndexToTensorDim"(%26, %28) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %35 = "it.LHSOperandOp"(%26, %pos_20, %crd_19) : (tensor<16xf64>, index, index) -> !it.operand
    %cst = arith.constant 0.000000e+00 : f64
    %36 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %37 = "it.ComputeOp"(%28, %35, %36) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<16xf64>
    it.yield %34, %37 : tensor<?x16xf64>, tensor<16xf64>
  }) : (tensor<?x16xf64>, tensor<16xf64>) -> (tensor<?x16xf64>, tensor<16xf64>)
  "ta.set_op"(%13#0, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<?x16xf64>) -> ()
  %14 = "ta.getTime"() : () -> f64
  %15 = "ta.reduce"(%9) : (tensor<?x16xf64>) -> f64
  "ta.print"(%15) : (f64) -> ()
  "ta.print_elapsed_time"(%12, %14) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx16 = index.constant 16
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
  %29 = "ta.dense_tensor_decl"(%28) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
  %30 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<16x16xf64>
  %31 = "ta.dense_tensor_decl"(%27) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
  %32 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<16xf64>
  "ta.fill"(%32) <{value = 0.000000e+00 : f64}> : (tensor<16xf64>) -> ()
  %33 = "ta.dense_tensor_decl"(%27) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
  "ta.fill"(%29) <{value = 1.200000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  "ta.fill"(%30) <{value = 3.400000e+00 : f64}> : (tensor<16x16xf64>) -> ()
  "ta.fill"(%31) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  "ta.fill"(%33) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  %34 = "ta.getTime"() : () -> f64
  %35:2 = "it.itree"(%31, %32) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x16xf64>, %arg1: tensor<16xf64>):
    %38 = "it.RootOp"() : () -> !it.index_tree
    %39 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %40 = "it.IndexOp"(%38, %39) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %40) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %41 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %42 = "it.IndexOp"(%40, %41) : (!it.index, !it.domain) -> !it.index
    %43 = "it.DenseDomainOp"(%idx16, %29) <{dims = [1 : i32]}> : (index, tensor<?x16xf64>) -> !it.domain
    %44 = "it.IndexOp"(%42, %43) : (!it.index, !it.domain) -> !it.index
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%arg1, %44) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %45 = "it.LHSOperandOp"(%arg1, %pos_33, %crd_32) : (tensor<16xf64>, index, index) -> !it.operand
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%22, %42, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %46 = "it.OperandOp"(%22, %pos, %pos_35, %crd, %crd_34) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%29, %42) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%29, %44, %pos_37) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %47 = "it.OperandOp"(%29, %pos_37, %pos_39, %crd_36, %crd_38) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %48 = "it.ComputeOp"(%44, %45, %46, %47) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<16xf64>
    %49 = "it.DenseDomainOp"(%idx16, %48, %30) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<16xf64>, tensor<16x16xf64>) -> !it.domain
    %50 = "it.IndexOp"(%40, %49) : (!it.index, !it.domain) -> !it.index
    %51 = "it.DenseDomainOp"(%idx16, %30) <{dims = [1 : i32]}> : (index, tensor<16x16xf64>) -> !it.domain
    %52 = "it.IndexOp"(%50, %51) : (!it.index, !it.domain) -> !it.index
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%arg0, %40) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%arg0, %52, %pos_41) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %53 = "it.LHSOperandOp"(%arg0, %pos_41, %pos_43, %crd_40, %crd_42) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%48, %50) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %54 = "it.OperandOp"(%48, %pos_45, %crd_44) : (tensor<16xf64>, index, index) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%30, %50) <{dim = 0 : ui32}> : (tensor<16x16xf64>, !it.index) -> (index, index)
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%30, %52, %pos_47) <{dim = 1 : ui32}> : (tensor<16x16xf64>, !it.index, index) -> (index, index)
    %55 = "it.OperandOp"(%30, %pos_47, %pos_49, %crd_46, %crd_48) : (tensor<16x16xf64>, index, index, index, index) -> !it.operand
    %56 = "it.ComputeOp"(%52, %53, %54, %55) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x16xf64>
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%48, %50) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %57 = "it.LHSOperandOp"(%48, %pos_51, %crd_50) : (tensor<16xf64>, index, index) -> !it.operand
    %cst_52 = arith.constant 0.000000e+00 : f64
    %58 = "it.OperandOp"(%cst_52) : (f64) -> !it.operand
    %59 = "it.ComputeOp"(%50, %57, %58) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<16xf64>
    it.yield %56, %59 : tensor<?x16xf64>, tensor<16xf64>
  }) : (tensor<?x16xf64>, tensor<16xf64>) -> (tensor<?x16xf64>, tensor<16xf64>)
  "ta.set_op"(%35#0, %31) {__beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<?x16xf64>) -> ()
  %36 = "ta.getTime"() : () -> f64
  %37 = "ta.reduce"(%31) : (tensor<?x16xf64>) -> f64
  "ta.print"(%37) : (f64) -> ()
  "ta.print_elapsed_time"(%34, %36) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx16 = index.constant 16
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
  %alloc_32 = memref.alloc(%28) {alignment = 32 : i64} : memref<?x16xf64>
  %29 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x16xf64>
  %alloc_33 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  %30 = bufferization.to_tensor %alloc_33 restrict writable : memref<16x16xf64>
  %alloc_34 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x16xf64>
  %31 = bufferization.to_tensor %alloc_34 restrict writable : memref<?x16xf64>
  %alloc_35 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
  %32 = bufferization.to_tensor %alloc_35 restrict writable : memref<16xf64>
  "ta.fill"(%32) <{value = 0.000000e+00 : f64}> : (tensor<16xf64>) -> ()
  %alloc_36 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x16xf64>
  %33 = bufferization.to_tensor %alloc_36 restrict writable : memref<?x16xf64>
  "ta.fill"(%29) <{value = 1.200000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  "ta.fill"(%30) <{value = 3.400000e+00 : f64}> : (tensor<16x16xf64>) -> ()
  "ta.fill"(%31) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  "ta.fill"(%33) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  %34 = "ta.getTime"() : () -> f64
  %35:2 = "it.itree"(%31, %32) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x16xf64>, %arg1: tensor<16xf64>):
    %38 = "it.RootOp"() : () -> !it.index_tree
    %39 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %40 = "it.IndexOp"(%38, %39) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %40) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %41 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %42 = "it.IndexOp"(%40, %41) : (!it.index, !it.domain) -> !it.index
    %43 = "it.DenseDomainOp"(%idx16, %29) <{dims = [1 : i32]}> : (index, tensor<?x16xf64>) -> !it.domain
    %44 = "it.IndexOp"(%42, %43) : (!it.index, !it.domain) -> !it.index
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%arg1, %44) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %45 = "it.LHSOperandOp"(%arg1, %pos_38, %crd_37) : (tensor<16xf64>, index, index) -> !it.operand
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%22, %42, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %46 = "it.OperandOp"(%22, %pos, %pos_40, %crd, %crd_39) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%29, %42) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%29, %44, %pos_42) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %47 = "it.OperandOp"(%29, %pos_42, %pos_44, %crd_41, %crd_43) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %48 = "it.ComputeOp"(%44, %45, %46, %47) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<16xf64>
    %49 = "it.DenseDomainOp"(%idx16, %48, %30) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<16xf64>, tensor<16x16xf64>) -> !it.domain
    %50 = "it.IndexOp"(%40, %49) : (!it.index, !it.domain) -> !it.index
    %51 = "it.DenseDomainOp"(%idx16, %30) <{dims = [1 : i32]}> : (index, tensor<16x16xf64>) -> !it.domain
    %52 = "it.IndexOp"(%50, %51) : (!it.index, !it.domain) -> !it.index
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%arg0, %40) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%arg0, %52, %pos_46) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %53 = "it.LHSOperandOp"(%arg0, %pos_46, %pos_48, %crd_45, %crd_47) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %crd_49, %pos_50 = "it.IndexToTensorDim"(%48, %50) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %54 = "it.OperandOp"(%48, %pos_50, %crd_49) : (tensor<16xf64>, index, index) -> !it.operand
    %crd_51, %pos_52 = "it.IndexToTensorDim"(%30, %50) <{dim = 0 : ui32}> : (tensor<16x16xf64>, !it.index) -> (index, index)
    %crd_53, %pos_54 = "it.IndexToTensorDim"(%30, %52, %pos_52) <{dim = 1 : ui32}> : (tensor<16x16xf64>, !it.index, index) -> (index, index)
    %55 = "it.OperandOp"(%30, %pos_52, %pos_54, %crd_51, %crd_53) : (tensor<16x16xf64>, index, index, index, index) -> !it.operand
    %56 = "it.ComputeOp"(%52, %53, %54, %55) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x16xf64>
    %crd_55, %pos_56 = "it.IndexToTensorDim"(%48, %50) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %57 = "it.LHSOperandOp"(%48, %pos_56, %crd_55) : (tensor<16xf64>, index, index) -> !it.operand
    %cst_57 = arith.constant 0.000000e+00 : f64
    %58 = "it.OperandOp"(%cst_57) : (f64) -> !it.operand
    %59 = "it.ComputeOp"(%50, %57, %58) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<16xf64>
    it.yield %56, %59 : tensor<?x16xf64>, tensor<16xf64>
  }) : (tensor<?x16xf64>, tensor<16xf64>) -> (tensor<?x16xf64>, tensor<16xf64>)
  "ta.set_op"(%35#0, %31) {__beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<?x16xf64>) -> ()
  %36 = "ta.getTime"() : () -> f64
  %37 = "ta.reduce"(%31) : (tensor<?x16xf64>) -> f64
  "ta.print"(%37) : (f64) -> ()
  "ta.print_elapsed_time"(%34, %36) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx16 = index.constant 16
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
  %alloc_32 = memref.alloc(%28) {alignment = 32 : i64} : memref<?x16xf64>
  %29 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x16xf64>
  %alloc_33 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  %30 = bufferization.to_tensor %alloc_33 restrict writable : memref<16x16xf64>
  %alloc_34 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x16xf64>
  %31 = bufferization.to_tensor %alloc_34 restrict writable : memref<?x16xf64>
  %alloc_35 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
  %32 = bufferization.to_tensor %alloc_35 restrict writable : memref<16xf64>
  "ta.fill"(%32) <{value = 0.000000e+00 : f64}> : (tensor<16xf64>) -> ()
  %alloc_36 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x16xf64>
  %33 = bufferization.to_tensor %alloc_36 restrict writable : memref<?x16xf64>
  "ta.fill"(%29) <{value = 1.200000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  "ta.fill"(%30) <{value = 3.400000e+00 : f64}> : (tensor<16x16xf64>) -> ()
  "ta.fill"(%31) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  "ta.fill"(%33) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  %34 = "ta.getTime"() : () -> f64
  %35:2 = "it.itree"(%31, %32) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x16xf64>, %arg1: tensor<16xf64>):
    %38 = "it.RootOp"() : () -> !it.index_tree
    %39 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %40 = "it.IndexOp"(%38, %39) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %40) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %41 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %42 = "it.IndexOp"(%40, %41) : (!it.index, !it.domain) -> !it.index
    %43 = "it.DenseDomainOp"(%idx16, %29) <{dims = [1 : i32]}> : (index, tensor<?x16xf64>) -> !it.domain
    %44 = "it.IndexOp"(%42, %43) : (!it.index, !it.domain) -> !it.index
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%arg1, %44) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %45 = "it.LHSOperandOp"(%arg1, %pos_38, %crd_37) : (tensor<16xf64>, index, index) -> !it.operand
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%22, %42, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %46 = "it.OperandOp"(%22, %pos, %pos_40, %crd, %crd_39) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%29, %42) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%29, %44, %pos_42) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %47 = "it.OperandOp"(%29, %pos_42, %pos_44, %crd_41, %crd_43) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %48 = "it.ComputeOp"(%44, %45, %46, %47) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<16xf64>
    %49 = "it.DenseDomainOp"(%idx16, %48, %30) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<16xf64>, tensor<16x16xf64>) -> !it.domain
    %50 = "it.IndexOp"(%40, %49) : (!it.index, !it.domain) -> !it.index
    %51 = "it.DenseDomainOp"(%idx16, %30) <{dims = [1 : i32]}> : (index, tensor<16x16xf64>) -> !it.domain
    %52 = "it.IndexOp"(%50, %51) : (!it.index, !it.domain) -> !it.index
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%arg0, %40) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%arg0, %52, %pos_46) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %53 = "it.LHSOperandOp"(%arg0, %pos_46, %pos_48, %crd_45, %crd_47) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %crd_49, %pos_50 = "it.IndexToTensorDim"(%48, %50) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %54 = "it.OperandOp"(%48, %pos_50, %crd_49) : (tensor<16xf64>, index, index) -> !it.operand
    %crd_51, %pos_52 = "it.IndexToTensorDim"(%30, %50) <{dim = 0 : ui32}> : (tensor<16x16xf64>, !it.index) -> (index, index)
    %crd_53, %pos_54 = "it.IndexToTensorDim"(%30, %52, %pos_52) <{dim = 1 : ui32}> : (tensor<16x16xf64>, !it.index, index) -> (index, index)
    %55 = "it.OperandOp"(%30, %pos_52, %pos_54, %crd_51, %crd_53) : (tensor<16x16xf64>, index, index, index, index) -> !it.operand
    %56 = "it.ComputeOp"(%52, %53, %54, %55) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x16xf64>
    %crd_55, %pos_56 = "it.IndexToTensorDim"(%48, %50) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %57 = "it.LHSOperandOp"(%48, %pos_56, %crd_55) : (tensor<16xf64>, index, index) -> !it.operand
    %cst_57 = arith.constant 0.000000e+00 : f64
    %58 = "it.OperandOp"(%cst_57) : (f64) -> !it.operand
    %59 = "it.ComputeOp"(%50, %57, %58) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<16xf64>
    it.yield %56, %59 : tensor<?x16xf64>, tensor<16xf64>
  }) : (tensor<?x16xf64>, tensor<16xf64>) -> (tensor<?x16xf64>, tensor<16xf64>)
  "ta.set_op"(%35#0, %31) {__beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<?x16xf64>) -> ()
  %36 = "ta.getTime"() : () -> f64
  %37 = "ta.reduce"(%31) : (tensor<?x16xf64>) -> f64
  "ta.print"(%37) : (f64) -> ()
  "ta.print_elapsed_time"(%34, %36) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx16 = index.constant 16
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
  %alloc_32 = memref.alloc(%28) {alignment = 32 : i64} : memref<?x16xf64>
  %29 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x16xf64>
  %alloc_33 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  %30 = bufferization.to_tensor %alloc_33 restrict writable : memref<16x16xf64>
  %alloc_34 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x16xf64>
  %31 = bufferization.to_tensor %alloc_34 restrict writable : memref<?x16xf64>
  %alloc_35 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
  %32 = bufferization.to_tensor %alloc_35 restrict writable : memref<16xf64>
  "ta.fill"(%32) <{value = 0.000000e+00 : f64}> : (tensor<16xf64>) -> ()
  %alloc_36 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x16xf64>
  %33 = bufferization.to_tensor %alloc_36 restrict writable : memref<?x16xf64>
  "ta.fill"(%29) <{value = 1.200000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  "ta.fill"(%30) <{value = 3.400000e+00 : f64}> : (tensor<16x16xf64>) -> ()
  "ta.fill"(%31) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  "ta.fill"(%33) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  %34 = "ta.getTime"() : () -> f64
  %35:2 = "it.itree"(%31, %32) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x16xf64>, %arg1: tensor<16xf64>):
    %38 = "it.RootOp"() : () -> !it.index_tree
    %39 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %40 = "it.IndexOp"(%38, %39) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %40) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %41 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %42 = "it.IndexOp"(%40, %41) : (!it.index, !it.domain) -> !it.index
    %43 = "it.DenseDomainOp"(%idx16, %29) <{dims = [1 : i32]}> : (index, tensor<?x16xf64>) -> !it.domain
    %44 = "it.IndexOp"(%42, %43) : (!it.index, !it.domain) -> !it.index
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%arg1, %44) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %45 = "it.LHSOperandOp"(%arg1, %pos_38, %crd_37) : (tensor<16xf64>, index, index) -> !it.operand
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%22, %42, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %46 = "it.OperandOp"(%22, %pos, %pos_40, %crd, %crd_39) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%29, %42) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%29, %44, %pos_42) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %47 = "it.OperandOp"(%29, %pos_42, %pos_44, %crd_41, %crd_43) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %48 = "it.ComputeOp"(%44, %45, %46, %47) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<16xf64>
    %49 = "it.DenseDomainOp"(%idx16, %48, %30) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<16xf64>, tensor<16x16xf64>) -> !it.domain
    %50 = "it.IndexOp"(%40, %49) : (!it.index, !it.domain) -> !it.index
    %51 = "it.DenseDomainOp"(%idx16, %30) <{dims = [1 : i32]}> : (index, tensor<16x16xf64>) -> !it.domain
    %52 = "it.IndexOp"(%50, %51) : (!it.index, !it.domain) -> !it.index
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%arg0, %40) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%arg0, %52, %pos_46) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %53 = "it.LHSOperandOp"(%arg0, %pos_46, %pos_48, %crd_45, %crd_47) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %crd_49, %pos_50 = "it.IndexToTensorDim"(%48, %50) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %54 = "it.OperandOp"(%48, %pos_50, %crd_49) : (tensor<16xf64>, index, index) -> !it.operand
    %crd_51, %pos_52 = "it.IndexToTensorDim"(%30, %50) <{dim = 0 : ui32}> : (tensor<16x16xf64>, !it.index) -> (index, index)
    %crd_53, %pos_54 = "it.IndexToTensorDim"(%30, %52, %pos_52) <{dim = 1 : ui32}> : (tensor<16x16xf64>, !it.index, index) -> (index, index)
    %55 = "it.OperandOp"(%30, %pos_52, %pos_54, %crd_51, %crd_53) : (tensor<16x16xf64>, index, index, index, index) -> !it.operand
    %56 = "it.ComputeOp"(%52, %53, %54, %55) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x16xf64>
    %crd_55, %pos_56 = "it.IndexToTensorDim"(%48, %50) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %57 = "it.LHSOperandOp"(%48, %pos_56, %crd_55) : (tensor<16xf64>, index, index) -> !it.operand
    %cst_57 = arith.constant 0.000000e+00 : f64
    %58 = "it.OperandOp"(%cst_57) : (f64) -> !it.operand
    %59 = "it.ComputeOp"(%50, %57, %58) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<16xf64>
    it.yield %56, %59 : tensor<?x16xf64>, tensor<16xf64>
  }) : (tensor<?x16xf64>, tensor<16xf64>) -> (tensor<?x16xf64>, tensor<16xf64>)
  "ta.set_op"(%35#0, %31) {__beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<?x16xf64>) -> ()
  %36 = "ta.getTime"() : () -> f64
  %37 = "ta.reduce"(%31) : (tensor<?x16xf64>) -> f64
  "ta.print"(%37) : (f64) -> ()
  "ta.print_elapsed_time"(%34, %36) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func @main() {
  %idx16 = index.constant 16
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
  %alloc_32 = memref.alloc(%28) {alignment = 32 : i64} : memref<?x16xf64>
  %cst_33 = arith.constant 1.200000e+00 : f64
  linalg.fill ins(%cst_33 : f64) outs(%alloc_32 : memref<?x16xf64>)
  %29 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x16xf64>
  %alloc_34 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  %cst_35 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_35 : f64) outs(%alloc_34 : memref<16x16xf64>)
  %30 = bufferization.to_tensor %alloc_34 restrict writable : memref<16x16xf64>
  %alloc_36 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x16xf64>
  %cst_37 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_37 : f64) outs(%alloc_36 : memref<?x16xf64>)
  %31 = bufferization.to_tensor %alloc_36 restrict writable : memref<?x16xf64>
  %alloc_38 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
  %cst_39 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_39 : f64) outs(%alloc_38 : memref<16xf64>)
  %32 = bufferization.to_tensor %alloc_38 restrict writable : memref<16xf64>
  %alloc_40 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x16xf64>
  %cst_41 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_41 : f64) outs(%alloc_40 : memref<?x16xf64>)
  %33 = bufferization.to_tensor %alloc_40 restrict writable : memref<?x16xf64>
  %34 = "ta.getTime"() : () -> f64
  %35:2 = "it.itree"(%31, %32) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x16xf64>, %arg1: tensor<16xf64>):
    %38 = "it.RootOp"() : () -> !it.index_tree
    %39 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %40 = "it.IndexOp"(%38, %39) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %40) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %41 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %42 = "it.IndexOp"(%40, %41) : (!it.index, !it.domain) -> !it.index
    %43 = "it.DenseDomainOp"(%idx16, %29) <{dims = [1 : i32]}> : (index, tensor<?x16xf64>) -> !it.domain
    %44 = "it.IndexOp"(%42, %43) : (!it.index, !it.domain) -> !it.index
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%arg1, %44) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %45 = "it.LHSOperandOp"(%arg1, %pos_43, %crd_42) : (tensor<16xf64>, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%22, %42, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %46 = "it.OperandOp"(%22, %pos, %pos_45, %crd, %crd_44) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%29, %42) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%29, %44, %pos_47) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %47 = "it.OperandOp"(%29, %pos_47, %pos_49, %crd_46, %crd_48) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %48 = "it.ComputeOp"(%44, %45, %46, %47) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<16xf64>
    %49 = "it.DenseDomainOp"(%idx16, %48, %30) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<16xf64>, tensor<16x16xf64>) -> !it.domain
    %50 = "it.IndexOp"(%40, %49) : (!it.index, !it.domain) -> !it.index
    %51 = "it.DenseDomainOp"(%idx16, %30) <{dims = [1 : i32]}> : (index, tensor<16x16xf64>) -> !it.domain
    %52 = "it.IndexOp"(%50, %51) : (!it.index, !it.domain) -> !it.index
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%arg0, %40) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%arg0, %52, %pos_51) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %53 = "it.LHSOperandOp"(%arg0, %pos_51, %pos_53, %crd_50, %crd_52) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %crd_54, %pos_55 = "it.IndexToTensorDim"(%48, %50) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %54 = "it.OperandOp"(%48, %pos_55, %crd_54) : (tensor<16xf64>, index, index) -> !it.operand
    %crd_56, %pos_57 = "it.IndexToTensorDim"(%30, %50) <{dim = 0 : ui32}> : (tensor<16x16xf64>, !it.index) -> (index, index)
    %crd_58, %pos_59 = "it.IndexToTensorDim"(%30, %52, %pos_57) <{dim = 1 : ui32}> : (tensor<16x16xf64>, !it.index, index) -> (index, index)
    %55 = "it.OperandOp"(%30, %pos_57, %pos_59, %crd_56, %crd_58) : (tensor<16x16xf64>, index, index, index, index) -> !it.operand
    %56 = "it.ComputeOp"(%52, %53, %54, %55) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x16xf64>
    %crd_60, %pos_61 = "it.IndexToTensorDim"(%48, %50) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %57 = "it.LHSOperandOp"(%48, %pos_61, %crd_60) : (tensor<16xf64>, index, index) -> !it.operand
    %cst_62 = arith.constant 0.000000e+00 : f64
    %58 = "it.OperandOp"(%cst_62) : (f64) -> !it.operand
    %59 = "it.ComputeOp"(%50, %57, %58) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<16xf64>
    it.yield %56, %59 : tensor<?x16xf64>, tensor<16xf64>
  }) : (tensor<?x16xf64>, tensor<16xf64>) -> (tensor<?x16xf64>, tensor<16xf64>)
  "ta.set_op"(%35#0, %31) {__beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<?x16xf64>) -> ()
  %36 = "ta.getTime"() : () -> f64
  %37 = "ta.reduce"(%31) : (tensor<?x16xf64>) -> f64
  "ta.print"(%37) : (f64) -> ()
  "ta.print_elapsed_time"(%34, %36) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func @main() {
  %idx16 = index.constant 16
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
  %alloc_32 = memref.alloc(%28) {alignment = 32 : i64} : memref<?x16xf64>
  %cst_33 = arith.constant 1.200000e+00 : f64
  linalg.fill ins(%cst_33 : f64) outs(%alloc_32 : memref<?x16xf64>)
  %29 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x16xf64>
  %alloc_34 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  %cst_35 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_35 : f64) outs(%alloc_34 : memref<16x16xf64>)
  %30 = bufferization.to_tensor %alloc_34 restrict writable : memref<16x16xf64>
  %alloc_36 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x16xf64>
  %cst_37 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_37 : f64) outs(%alloc_36 : memref<?x16xf64>)
  %31 = bufferization.to_tensor %alloc_36 restrict writable : memref<?x16xf64>
  %alloc_38 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
  %cst_39 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_39 : f64) outs(%alloc_38 : memref<16xf64>)
  %32 = bufferization.to_tensor %alloc_38 restrict writable : memref<16xf64>
  %alloc_40 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x16xf64>
  %cst_41 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_41 : f64) outs(%alloc_40 : memref<?x16xf64>)
  %33 = bufferization.to_tensor %alloc_40 restrict writable : memref<?x16xf64>
  %34 = "ta.getTime"() : () -> f64
  %35:2 = "it.itree"(%31, %32) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x16xf64>, %arg1: tensor<16xf64>):
    %38 = "it.RootOp"() : () -> !it.index_tree
    %39 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %40 = "it.IndexOp"(%38, %39) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %40) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %41 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %42 = "it.IndexOp"(%40, %41) : (!it.index, !it.domain) -> !it.index
    %43 = "it.DenseDomainOp"(%idx16, %29) <{dims = [1 : i32]}> : (index, tensor<?x16xf64>) -> !it.domain
    %44 = "it.IndexOp"(%42, %43) : (!it.index, !it.domain) -> !it.index
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%arg1, %44) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %45 = "it.LHSOperandOp"(%arg1, %pos_43, %crd_42) : (tensor<16xf64>, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%22, %42, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %46 = "it.OperandOp"(%22, %pos, %pos_45, %crd, %crd_44) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%29, %42) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%29, %44, %pos_47) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %47 = "it.OperandOp"(%29, %pos_47, %pos_49, %crd_46, %crd_48) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %48 = "it.ComputeOp"(%44, %45, %46, %47) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<16xf64>
    %49 = "it.DenseDomainOp"(%idx16, %48, %30) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<16xf64>, tensor<16x16xf64>) -> !it.domain
    %50 = "it.IndexOp"(%40, %49) : (!it.index, !it.domain) -> !it.index
    %51 = "it.DenseDomainOp"(%idx16, %30) <{dims = [1 : i32]}> : (index, tensor<16x16xf64>) -> !it.domain
    %52 = "it.IndexOp"(%50, %51) : (!it.index, !it.domain) -> !it.index
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%arg0, %40) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%arg0, %52, %pos_51) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %53 = "it.LHSOperandOp"(%arg0, %pos_51, %pos_53, %crd_50, %crd_52) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %crd_54, %pos_55 = "it.IndexToTensorDim"(%48, %50) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %54 = "it.OperandOp"(%48, %pos_55, %crd_54) : (tensor<16xf64>, index, index) -> !it.operand
    %crd_56, %pos_57 = "it.IndexToTensorDim"(%30, %50) <{dim = 0 : ui32}> : (tensor<16x16xf64>, !it.index) -> (index, index)
    %crd_58, %pos_59 = "it.IndexToTensorDim"(%30, %52, %pos_57) <{dim = 1 : ui32}> : (tensor<16x16xf64>, !it.index, index) -> (index, index)
    %55 = "it.OperandOp"(%30, %pos_57, %pos_59, %crd_56, %crd_58) : (tensor<16x16xf64>, index, index, index, index) -> !it.operand
    %56 = "it.ComputeOp"(%52, %53, %54, %55) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x16xf64>
    %crd_60, %pos_61 = "it.IndexToTensorDim"(%48, %50) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %57 = "it.LHSOperandOp"(%48, %pos_61, %crd_60) : (tensor<16xf64>, index, index) -> !it.operand
    %cst_62 = arith.constant 0.000000e+00 : f64
    %58 = "it.OperandOp"(%cst_62) : (f64) -> !it.operand
    %59 = "it.ComputeOp"(%50, %57, %58) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<16xf64>
    it.yield %56, %59 : tensor<?x16xf64>, tensor<16xf64>
  }) : (tensor<?x16xf64>, tensor<16xf64>) -> (tensor<?x16xf64>, tensor<16xf64>)
  "ta.set_op"(%35#0, %31) {__beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<?x16xf64>) -> ()
  %36 = "ta.getTime"() : () -> f64
  %37 = "ta.reduce"(%31) : (tensor<?x16xf64>) -> f64
  "ta.print"(%37) : (f64) -> ()
  "ta.print_elapsed_time"(%34, %36) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func @main() {
  %idx16 = index.constant 16
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
  %alloc_32 = memref.alloc(%28) {alignment = 32 : i64} : memref<?x16xf64>
  %cst_33 = arith.constant 1.200000e+00 : f64
  linalg.fill ins(%cst_33 : f64) outs(%alloc_32 : memref<?x16xf64>)
  %29 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x16xf64>
  %alloc_34 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  %cst_35 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_35 : f64) outs(%alloc_34 : memref<16x16xf64>)
  %30 = bufferization.to_tensor %alloc_34 restrict writable : memref<16x16xf64>
  %alloc_36 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x16xf64>
  %cst_37 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_37 : f64) outs(%alloc_36 : memref<?x16xf64>)
  %31 = bufferization.to_tensor %alloc_36 restrict writable : memref<?x16xf64>
  %alloc_38 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
  %cst_39 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_39 : f64) outs(%alloc_38 : memref<16xf64>)
  %32 = bufferization.to_tensor %alloc_38 restrict writable : memref<16xf64>
  %alloc_40 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x16xf64>
  %cst_41 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_41 : f64) outs(%alloc_40 : memref<?x16xf64>)
  %33 = bufferization.to_tensor %alloc_40 restrict writable : memref<?x16xf64>
  %34 = "ta.getTime"() : () -> f64
  %35:2 = "it.itree"(%31, %32) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x16xf64>, %arg1: tensor<16xf64>):
    %38 = "it.RootOp"() : () -> !it.index_tree
    %39 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %40 = "it.IndexOp"(%38, %39) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %40) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %41 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %42 = "it.IndexOp"(%40, %41) : (!it.index, !it.domain) -> !it.index
    %43 = "it.DenseDomainOp"(%idx16, %29) <{dims = [1 : i32]}> : (index, tensor<?x16xf64>) -> !it.domain
    %44 = "it.IndexOp"(%42, %43) : (!it.index, !it.domain) -> !it.index
    %crd_49, %pos_50 = "it.IndexToTensorDim"(%arg1, %44) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %45 = "it.LHSOperandOp"(%arg1, %pos_50, %crd_49) : (tensor<16xf64>, index, index) -> !it.operand
    %crd_51, %pos_52 = "it.IndexToTensorDim"(%22, %42, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %46 = "it.OperandOp"(%22, %pos, %pos_52, %crd, %crd_51) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_53, %pos_54 = "it.IndexToTensorDim"(%29, %42) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_55, %pos_56 = "it.IndexToTensorDim"(%29, %44, %pos_54) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %47 = "it.OperandOp"(%29, %pos_54, %pos_56, %crd_53, %crd_55) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %48 = "it.ComputeOp"(%44, %45, %46, %47) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<16xf64>
    %49 = "it.DenseDomainOp"(%idx16, %48, %30) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<16xf64>, tensor<16x16xf64>) -> !it.domain
    %50 = "it.IndexOp"(%40, %49) : (!it.index, !it.domain) -> !it.index
    %51 = "it.DenseDomainOp"(%idx16, %30) <{dims = [1 : i32]}> : (index, tensor<16x16xf64>) -> !it.domain
    %52 = "it.IndexOp"(%50, %51) : (!it.index, !it.domain) -> !it.index
    %crd_57, %pos_58 = "it.IndexToTensorDim"(%arg0, %40) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_59, %pos_60 = "it.IndexToTensorDim"(%arg0, %52, %pos_58) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %53 = "it.LHSOperandOp"(%arg0, %pos_58, %pos_60, %crd_57, %crd_59) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %crd_61, %pos_62 = "it.IndexToTensorDim"(%48, %50) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %54 = "it.OperandOp"(%48, %pos_62, %crd_61) : (tensor<16xf64>, index, index) -> !it.operand
    %crd_63, %pos_64 = "it.IndexToTensorDim"(%30, %50) <{dim = 0 : ui32}> : (tensor<16x16xf64>, !it.index) -> (index, index)
    %crd_65, %pos_66 = "it.IndexToTensorDim"(%30, %52, %pos_64) <{dim = 1 : ui32}> : (tensor<16x16xf64>, !it.index, index) -> (index, index)
    %55 = "it.OperandOp"(%30, %pos_64, %pos_66, %crd_63, %crd_65) : (tensor<16x16xf64>, index, index, index, index) -> !it.operand
    %56 = "it.ComputeOp"(%52, %53, %54, %55) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x16xf64>
    %crd_67, %pos_68 = "it.IndexToTensorDim"(%48, %50) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %57 = "it.LHSOperandOp"(%48, %pos_68, %crd_67) : (tensor<16xf64>, index, index) -> !it.operand
    %cst_69 = arith.constant 0.000000e+00 : f64
    %58 = "it.OperandOp"(%cst_69) : (f64) -> !it.operand
    %59 = "it.ComputeOp"(%50, %57, %58) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<16xf64>
    it.yield %56, %59 : tensor<?x16xf64>, tensor<16xf64>
  }) : (tensor<?x16xf64>, tensor<16xf64>) -> (tensor<?x16xf64>, tensor<16xf64>)
  %36 = "ta.getTime"() : () -> f64
  %c0_42 = arith.constant 0 : index
  %alloc_43 = memref.alloc() : memref<1xf64>
  %cst_44 = arith.constant 0.000000e+00 : f64
  memref.store %cst_44, %alloc_43[%c0_42] : memref<1xf64>
  %c0_45 = arith.constant 0 : index
  %c1_46 = arith.constant 1 : index
  %c0_47 = arith.constant 0 : index
  %dim_48 = tensor.dim %35#0, %c0_47 : tensor<?x16xf64>
  scf.for %arg0 = %c0_45 to %dim_48 step %c1_46 {
    %c1_49 = arith.constant 1 : index
    %dim_50 = tensor.dim %35#0, %c1_49 : tensor<?x16xf64>
    scf.for %arg1 = %c0_45 to %dim_50 step %c1_46 {
      %extracted = tensor.extract %35#0[%arg0, %arg1] : tensor<?x16xf64>
      %38 = memref.load %alloc_43[%c0_42] : memref<1xf64>
      %39 = arith.addf %extracted, %38 : f64
      memref.store %39, %alloc_43[%c0_42] : memref<1xf64>
    }
  }
  %37 = memref.load %alloc_43[%c0_42] : memref<1xf64>
  "ta.print"(%37) : (f64) -> ()
  "ta.print_elapsed_time"(%34, %36) : (f64, f64) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %c16 = arith.constant 16 : index
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
  %idx16 = index.constant 16
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
  %alloc_21 = memref.alloc(%26) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x16xf64>)
  %27 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x16xf64>
  %alloc_22 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_22 : memref<16x16xf64>)
  %28 = bufferization.to_tensor %alloc_22 restrict writable : memref<16x16xf64>
  %alloc_23 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x16xf64>)
  %29 = bufferization.to_tensor %alloc_23 restrict writable : memref<?x16xf64>
  %alloc_24 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<16xf64>)
  %30 = bufferization.to_tensor %alloc_24 restrict writable : memref<16xf64>
  %alloc_25 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x16xf64>)
  %31 = "ta.getTime"() : () -> f64
  %32:2 = "it.itree"(%29, %30) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x16xf64>, %arg1: tensor<16xf64>):
    %35 = "it.RootOp"() : () -> !it.index_tree
    %36 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %37) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %38 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) : (!it.index, !it.domain) -> !it.index
    %40 = "it.DenseDomainOp"(%idx16, %27) <{dims = [1 : i32]}> : (index, tensor<?x16xf64>) -> !it.domain
    %41 = "it.IndexOp"(%39, %40) : (!it.index, !it.domain) -> !it.index
    %crd_28, %pos_29 = "it.IndexToTensorDim"(%arg1, %41) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %42 = "it.LHSOperandOp"(%arg1, %pos_29, %crd_28) : (tensor<16xf64>, index, index) -> !it.operand
    %crd_30, %pos_31 = "it.IndexToTensorDim"(%20, %39, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%20, %pos, %pos_31, %crd, %crd_30) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%27, %39) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%27, %41, %pos_33) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %44 = "it.OperandOp"(%27, %pos_33, %pos_35, %crd_32, %crd_34) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %45 = "it.ComputeOp"(%41, %42, %43, %44) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<16xf64>
    %46 = "it.DenseDomainOp"(%idx16, %45, %28) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<16xf64>, tensor<16x16xf64>) -> !it.domain
    %47 = "it.IndexOp"(%37, %46) : (!it.index, !it.domain) -> !it.index
    %48 = "it.DenseDomainOp"(%idx16, %28) <{dims = [1 : i32]}> : (index, tensor<16x16xf64>) -> !it.domain
    %49 = "it.IndexOp"(%47, %48) : (!it.index, !it.domain) -> !it.index
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%arg0, %37) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%arg0, %49, %pos_37) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %50 = "it.LHSOperandOp"(%arg0, %pos_37, %pos_39, %crd_36, %crd_38) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%45, %47) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %51 = "it.OperandOp"(%45, %pos_41, %crd_40) : (tensor<16xf64>, index, index) -> !it.operand
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%28, %47) <{dim = 0 : ui32}> : (tensor<16x16xf64>, !it.index) -> (index, index)
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%28, %49, %pos_43) <{dim = 1 : ui32}> : (tensor<16x16xf64>, !it.index, index) -> (index, index)
    %52 = "it.OperandOp"(%28, %pos_43, %pos_45, %crd_42, %crd_44) : (tensor<16x16xf64>, index, index, index, index) -> !it.operand
    %53 = "it.ComputeOp"(%49, %50, %51, %52) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x16xf64>
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%45, %47) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %54 = "it.LHSOperandOp"(%45, %pos_47, %crd_46) : (tensor<16xf64>, index, index) -> !it.operand
    %55 = "it.OperandOp"(%cst_1) : (f64) -> !it.operand
    %56 = "it.ComputeOp"(%47, %54, %55) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<16xf64>
    it.yield %53, %56 : tensor<?x16xf64>, tensor<16xf64>
  }) : (tensor<?x16xf64>, tensor<16xf64>) -> (tensor<?x16xf64>, tensor<16xf64>)
  %33 = "ta.getTime"() : () -> f64
  %alloc_26 = memref.alloc() : memref<1xf64>
  memref.store %cst_1, %alloc_26[%c0] : memref<1xf64>
  %dim_27 = tensor.dim %32#0, %c0 : tensor<?x16xf64>
  scf.for %arg0 = %c0 to %dim_27 step %c1 {
    scf.for %arg1 = %c0 to %c16 step %c1 {
      %extracted = tensor.extract %32#0[%arg0, %arg1] : tensor<?x16xf64>
      %35 = memref.load %alloc_26[%c0] : memref<1xf64>
      %36 = arith.addf %extracted, %35 : f64
      memref.store %36, %alloc_26[%c0] : memref<1xf64>
    }
  }
  %34 = memref.load %alloc_26[%c0] : memref<1xf64>
  "ta.print"(%34) : (f64) -> ()
  "ta.print_elapsed_time"(%31, %33) : (f64, f64) -> ()
  return
}

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func @main() {
  %c16 = arith.constant 16 : index
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
  %idx16 = index.constant 16
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
  %alloc_21 = memref.alloc(%26) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x16xf64>)
  %27 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x16xf64>
  %alloc_22 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_22 : memref<16x16xf64>)
  %28 = bufferization.to_tensor %alloc_22 restrict writable : memref<16x16xf64>
  %alloc_23 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x16xf64>)
  %29 = bufferization.to_tensor %alloc_23 restrict writable : memref<?x16xf64>
  %alloc_24 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<16xf64>)
  %30 = bufferization.to_tensor %alloc_24 restrict writable : memref<16xf64>
  %alloc_25 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x16xf64>)
  %31 = "ta.getTime"() : () -> f64
  %32:2 = "it.itree"(%29, %30) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x16xf64>, %arg1: tensor<16xf64>):
    %35 = "it.RootOp"() : () -> !it.index_tree
    %36 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %37) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %38 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) : (!it.index, !it.domain) -> !it.index
    %40 = "it.DenseDomainOp"(%idx16, %27) <{dims = [1 : i32]}> : (index, tensor<?x16xf64>) -> !it.domain
    %41 = "it.IndexOp"(%39, %40) : (!it.index, !it.domain) -> !it.index
    %crd_28, %pos_29 = "it.IndexToTensorDim"(%arg1, %41) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %42 = "it.LHSOperandOp"(%arg1, %pos_29, %crd_28) : (tensor<16xf64>, index, index) -> !it.operand
    %crd_30, %pos_31 = "it.IndexToTensorDim"(%20, %39, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%20, %pos, %pos_31, %crd, %crd_30) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%27, %39) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%27, %41, %pos_33) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %44 = "it.OperandOp"(%27, %pos_33, %pos_35, %crd_32, %crd_34) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %45 = "it.ComputeOp"(%41, %42, %43, %44) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<16xf64>
    %46 = "it.DenseDomainOp"(%idx16, %45, %28) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<16xf64>, tensor<16x16xf64>) -> !it.domain
    %47 = "it.IndexOp"(%37, %46) : (!it.index, !it.domain) -> !it.index
    %48 = "it.DenseDomainOp"(%idx16, %28) <{dims = [1 : i32]}> : (index, tensor<16x16xf64>) -> !it.domain
    %49 = "it.IndexOp"(%47, %48) : (!it.index, !it.domain) -> !it.index
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%arg0, %37) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%arg0, %49, %pos_37) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %50 = "it.LHSOperandOp"(%arg0, %pos_37, %pos_39, %crd_36, %crd_38) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%45, %47) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %51 = "it.OperandOp"(%45, %pos_41, %crd_40) : (tensor<16xf64>, index, index) -> !it.operand
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%28, %47) <{dim = 0 : ui32}> : (tensor<16x16xf64>, !it.index) -> (index, index)
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%28, %49, %pos_43) <{dim = 1 : ui32}> : (tensor<16x16xf64>, !it.index, index) -> (index, index)
    %52 = "it.OperandOp"(%28, %pos_43, %pos_45, %crd_42, %crd_44) : (tensor<16x16xf64>, index, index, index, index) -> !it.operand
    %53 = "it.ComputeOp"(%49, %50, %51, %52) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x16xf64>
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%45, %47) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
    %54 = "it.LHSOperandOp"(%45, %pos_47, %crd_46) : (tensor<16xf64>, index, index) -> !it.operand
    %55 = "it.OperandOp"(%cst_1) : (f64) -> !it.operand
    %56 = "it.ComputeOp"(%47, %54, %55) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<16xf64>
    it.yield %53, %56 : tensor<?x16xf64>, tensor<16xf64>
  }) : (tensor<?x16xf64>, tensor<16xf64>) -> (tensor<?x16xf64>, tensor<16xf64>)
  %33 = "ta.getTime"() : () -> f64
  %alloc_26 = memref.alloc() : memref<1xf64>
  memref.store %cst_1, %alloc_26[%c0] : memref<1xf64>
  %dim_27 = tensor.dim %32#0, %c0 : tensor<?x16xf64>
  scf.for %arg0 = %c0 to %dim_27 step %c1 {
    scf.for %arg1 = %c0 to %c16 step %c1 {
      %extracted = tensor.extract %32#0[%arg0, %arg1] : tensor<?x16xf64>
      %35 = memref.load %alloc_26[%c0] : memref<1xf64>
      %36 = arith.addf %extracted, %35 : f64
      memref.store %36, %alloc_26[%c0] : memref<1xf64>
    }
  }
  %34 = memref.load %alloc_26[%c0] : memref<1xf64>
  "ta.print"(%34) : (f64) -> ()
  "ta.print_elapsed_time"(%31, %33) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func @main() {
  %c16 = arith.constant 16 : index
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
  %idx16 = index.constant 16
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
  %alloc_21 = memref.alloc(%26) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x16xf64>)
  %27 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x16xf64>
  %alloc_22 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_22 : memref<16x16xf64>)
  %28 = bufferization.to_tensor %alloc_22 restrict writable : memref<16x16xf64>
  %alloc_23 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x16xf64>)
  %29 = bufferization.to_tensor %alloc_23 restrict writable : memref<?x16xf64>
  %alloc_24 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<16xf64>)
  %30 = bufferization.to_tensor %alloc_24 restrict writable : memref<16xf64>
  %alloc_25 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x16xf64>)
  %31 = "ta.getTime"() : () -> f64
  %32:2 = "it.itree"(%29, %30) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x16xf64>, %arg1: tensor<16xf64>):
    %c0_28 = arith.constant 0 : index
    %c1_29 = arith.constant 1 : index
    %35:2 = scf.for %arg2 = %c0_28 to %21 step %c1_29 iter_args(%arg3 = %arg0, %arg4 = %arg1) -> (tensor<?x16xf64>, tensor<16xf64>) {
      %c1_30 = arith.constant 1 : index
      %36 = arith.addi %arg2, %c1_30 : index
      %extracted = tensor.extract %22[%arg2] : tensor<?xi64>
      %37 = arith.index_cast %extracted : i64 to index
      %extracted_31 = tensor.extract %22[%36] : tensor<?xi64>
      %38 = arith.index_cast %extracted_31 : i64 to index
      %c1_32 = arith.constant 1 : index
      %39:2 = scf.for %arg5 = %37 to %38 step %c1_32 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (tensor<?x16xf64>, tensor<16xf64>) {
        %c0_35 = arith.constant 0 : index
        %c1_36 = arith.constant 1 : index
        %41:2 = scf.for %arg8 = %c0_35 to %idx16 step %c1_36 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (tensor<?x16xf64>, tensor<16xf64>) {
          %42 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %43 = arith.index_cast %42 : i64 to index
          %44 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %45 = arith.index_cast %44 : i64 to index
          %46 = "ta.TAExtractOp"(%20, %arg5, %arg2, %43) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %extracted_37 = tensor.extract %27[%45, %arg8] : tensor<?x16xf64>
          %47 = arith.mulf %46, %extracted_37 : f64
          %extracted_38 = tensor.extract %arg10[%arg8] : tensor<16xf64>
          %48 = arith.addf %extracted_38, %47 : f64
          %inserted = tensor.insert %48 into %arg10[%arg8] : tensor<16xf64>
          scf.yield %arg9, %inserted : tensor<?x16xf64>, tensor<16xf64>
        }
        scf.yield %41#0, %41#1 : tensor<?x16xf64>, tensor<16xf64>
      }
      %c0_33 = arith.constant 0 : index
      %c1_34 = arith.constant 1 : index
      %40:2 = scf.for %arg5 = %c0_33 to %idx16 step %c1_34 iter_args(%arg6 = %39#0, %arg7 = %39#1) -> (tensor<?x16xf64>, tensor<16xf64>) {
        %c0_35 = arith.constant 0 : index
        %c1_36 = arith.constant 1 : index
        %41:2 = scf.for %arg8 = %c0_35 to %idx16 step %c1_36 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (tensor<?x16xf64>, tensor<16xf64>) {
          %extracted_38 = tensor.extract %arg10[%arg5] : tensor<16xf64>
          %extracted_39 = tensor.extract %28[%arg5, %arg8] : tensor<16x16xf64>
          %42 = arith.mulf %extracted_38, %extracted_39 : f64
          %extracted_40 = tensor.extract %arg9[%arg2, %arg8] : tensor<?x16xf64>
          %43 = arith.addf %extracted_40, %42 : f64
          %inserted_41 = tensor.insert %43 into %arg9[%arg2, %arg8] : tensor<?x16xf64>
          scf.yield %inserted_41, %arg10 : tensor<?x16xf64>, tensor<16xf64>
        }
        %extracted_37 = tensor.extract %41#1[%arg5] : tensor<16xf64>
        %inserted = tensor.insert %cst_1 into %41#1[%arg5] : tensor<16xf64>
        scf.yield %41#0, %inserted : tensor<?x16xf64>, tensor<16xf64>
      }
      scf.yield %40#0, %40#1 : tensor<?x16xf64>, tensor<16xf64>
    }
    it.yield %35#0, %35#1 : tensor<?x16xf64>, tensor<16xf64>
  }) : (tensor<?x16xf64>, tensor<16xf64>) -> (tensor<?x16xf64>, tensor<16xf64>)
  %33 = "ta.getTime"() : () -> f64
  %alloc_26 = memref.alloc() : memref<1xf64>
  memref.store %cst_1, %alloc_26[%c0] : memref<1xf64>
  %dim_27 = tensor.dim %32#0, %c0 : tensor<?x16xf64>
  scf.for %arg0 = %c0 to %dim_27 step %c1 {
    scf.for %arg1 = %c0 to %c16 step %c1 {
      %extracted = tensor.extract %32#0[%arg0, %arg1] : tensor<?x16xf64>
      %35 = memref.load %alloc_26[%c0] : memref<1xf64>
      %36 = arith.addf %extracted, %35 : f64
      memref.store %36, %alloc_26[%c0] : memref<1xf64>
    }
  }
  %34 = memref.load %alloc_26[%c0] : memref<1xf64>
  "ta.print"(%34) : (f64) -> ()
  "ta.print_elapsed_time"(%31, %33) : (f64, f64) -> ()
  return
}

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func @main() {
  %c16 = arith.constant 16 : index
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
  %idx16 = index.constant 16
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
  %23 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_20 = memref.alloc(%24) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x16xf64>)
  %25 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x16xf64>
  %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<16x16xf64>)
  %26 = bufferization.to_tensor %alloc_21 restrict writable : memref<16x16xf64>
  %alloc_22 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x16xf64>)
  %27 = bufferization.to_tensor %alloc_22 restrict writable : memref<?x16xf64>
  %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<16xf64>)
  %28 = bufferization.to_tensor %alloc_23 restrict writable : memref<16xf64>
  %alloc_24 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x16xf64>)
  %29 = "ta.getTime"() : () -> f64
  %30:2 = "it.itree"(%27, %28) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x16xf64>, %arg1: tensor<16xf64>):
    %33:2 = scf.for %arg2 = %c0 to %21 step %c1 iter_args(%arg3 = %arg0, %arg4 = %arg1) -> (tensor<?x16xf64>, tensor<16xf64>) {
      %34 = arith.addi %arg2, %c1 : index
      %extracted = tensor.extract %22[%arg2] : tensor<?xi64>
      %35 = arith.index_cast %extracted : i64 to index
      %extracted_26 = tensor.extract %22[%34] : tensor<?xi64>
      %36 = arith.index_cast %extracted_26 : i64 to index
      %37:2 = scf.for %arg5 = %35 to %36 step %c1 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (tensor<?x16xf64>, tensor<16xf64>) {
        %39:2 = scf.for %arg8 = %c0 to %idx16 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (tensor<?x16xf64>, tensor<16xf64>) {
          %40 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %41 = arith.index_cast %40 : i64 to index
          %42 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %43 = arith.index_cast %42 : i64 to index
          %44 = "ta.TAExtractOp"(%20, %arg5, %arg2, %41) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %extracted_27 = tensor.extract %25[%43, %arg8] : tensor<?x16xf64>
          %45 = arith.mulf %44, %extracted_27 : f64
          %extracted_28 = tensor.extract %arg10[%arg8] : tensor<16xf64>
          %46 = arith.addf %extracted_28, %45 : f64
          %inserted = tensor.insert %46 into %arg10[%arg8] : tensor<16xf64>
          scf.yield %arg9, %inserted : tensor<?x16xf64>, tensor<16xf64>
        }
        scf.yield %39#0, %39#1 : tensor<?x16xf64>, tensor<16xf64>
      }
      %38:2 = scf.for %arg5 = %c0 to %idx16 step %c1 iter_args(%arg6 = %37#0, %arg7 = %37#1) -> (tensor<?x16xf64>, tensor<16xf64>) {
        %39:2 = scf.for %arg8 = %c0 to %idx16 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (tensor<?x16xf64>, tensor<16xf64>) {
          %extracted_27 = tensor.extract %arg10[%arg5] : tensor<16xf64>
          %extracted_28 = tensor.extract %26[%arg5, %arg8] : tensor<16x16xf64>
          %40 = arith.mulf %extracted_27, %extracted_28 : f64
          %extracted_29 = tensor.extract %arg9[%arg2, %arg8] : tensor<?x16xf64>
          %41 = arith.addf %extracted_29, %40 : f64
          %inserted_30 = tensor.insert %41 into %arg9[%arg2, %arg8] : tensor<?x16xf64>
          scf.yield %inserted_30, %arg10 : tensor<?x16xf64>, tensor<16xf64>
        }
        %inserted = tensor.insert %cst_1 into %39#1[%arg5] : tensor<16xf64>
        scf.yield %39#0, %inserted : tensor<?x16xf64>, tensor<16xf64>
      }
      scf.yield %38#0, %38#1 : tensor<?x16xf64>, tensor<16xf64>
    }
    it.yield %33#0, %33#1 : tensor<?x16xf64>, tensor<16xf64>
  }) : (tensor<?x16xf64>, tensor<16xf64>) -> (tensor<?x16xf64>, tensor<16xf64>)
  %31 = "ta.getTime"() : () -> f64
  %alloc_25 = memref.alloc() : memref<1xf64>
  memref.store %cst_1, %alloc_25[%c0] : memref<1xf64>
  %dim = tensor.dim %30#0, %c0 : tensor<?x16xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    scf.for %arg1 = %c0 to %c16 step %c1 {
      %extracted = tensor.extract %30#0[%arg0, %arg1] : tensor<?x16xf64>
      %33 = memref.load %alloc_25[%c0] : memref<1xf64>
      %34 = arith.addf %extracted, %33 : f64
      memref.store %34, %alloc_25[%c0] : memref<1xf64>
    }
  }
  %32 = memref.load %alloc_25[%c0] : memref<1xf64>
  "ta.print"(%32) : (f64) -> ()
  "ta.print_elapsed_time"(%29, %31) : (f64, f64) -> ()
  return
}

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func @main() {
  %c16 = arith.constant 16 : index
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
  %idx16 = index.constant 16
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
  %23 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_20 = memref.alloc(%24) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x16xf64>)
  %25 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x16xf64>
  %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<16x16xf64>)
  %26 = bufferization.to_tensor %alloc_21 restrict writable : memref<16x16xf64>
  %alloc_22 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x16xf64>)
  %27 = bufferization.to_tensor %alloc_22 restrict writable : memref<?x16xf64>
  %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<16xf64>)
  %28 = bufferization.to_tensor %alloc_23 restrict writable : memref<16xf64>
  %alloc_24 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x16xf64>)
  %29 = "ta.getTime"() : () -> f64
  %30:2 = "it.itree"(%27, %28) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x16xf64>, %arg1: tensor<16xf64>):
    %33:2 = scf.for %arg2 = %c0 to %21 step %c1 iter_args(%arg3 = %arg0, %arg4 = %arg1) -> (tensor<?x16xf64>, tensor<16xf64>) {
      %34 = arith.addi %arg2, %c1 : index
      %extracted = tensor.extract %22[%arg2] : tensor<?xi64>
      %35 = arith.index_cast %extracted : i64 to index
      %extracted_26 = tensor.extract %22[%34] : tensor<?xi64>
      %36 = arith.index_cast %extracted_26 : i64 to index
      %37:2 = scf.for %arg5 = %35 to %36 step %c1 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (tensor<?x16xf64>, tensor<16xf64>) {
        %39:2 = scf.for %arg8 = %c0 to %idx16 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (tensor<?x16xf64>, tensor<16xf64>) {
          %40 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %41 = arith.index_cast %40 : i64 to index
          %42 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %43 = arith.index_cast %42 : i64 to index
          %44 = "ta.TAExtractOp"(%20, %arg5, %arg2, %41) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %extracted_27 = tensor.extract %25[%43, %arg8] : tensor<?x16xf64>
          %45 = arith.mulf %44, %extracted_27 : f64
          %extracted_28 = tensor.extract %arg10[%arg8] : tensor<16xf64>
          %46 = arith.addf %extracted_28, %45 : f64
          %inserted = tensor.insert %46 into %arg10[%arg8] : tensor<16xf64>
          scf.yield %arg9, %inserted : tensor<?x16xf64>, tensor<16xf64>
        }
        scf.yield %39#0, %39#1 : tensor<?x16xf64>, tensor<16xf64>
      }
      %38:2 = scf.for %arg5 = %c0 to %idx16 step %c1 iter_args(%arg6 = %37#0, %arg7 = %37#1) -> (tensor<?x16xf64>, tensor<16xf64>) {
        %39:2 = scf.for %arg8 = %c0 to %idx16 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (tensor<?x16xf64>, tensor<16xf64>) {
          %extracted_27 = tensor.extract %arg10[%arg5] : tensor<16xf64>
          %extracted_28 = tensor.extract %26[%arg5, %arg8] : tensor<16x16xf64>
          %40 = arith.mulf %extracted_27, %extracted_28 : f64
          %extracted_29 = tensor.extract %arg9[%arg2, %arg8] : tensor<?x16xf64>
          %41 = arith.addf %extracted_29, %40 : f64
          %inserted_30 = tensor.insert %41 into %arg9[%arg2, %arg8] : tensor<?x16xf64>
          scf.yield %inserted_30, %arg10 : tensor<?x16xf64>, tensor<16xf64>
        }
        %inserted = tensor.insert %cst_1 into %39#1[%arg5] : tensor<16xf64>
        scf.yield %39#0, %inserted : tensor<?x16xf64>, tensor<16xf64>
      }
      scf.yield %38#0, %38#1 : tensor<?x16xf64>, tensor<16xf64>
    }
    it.yield %33#0, %33#1 : tensor<?x16xf64>, tensor<16xf64>
  }) : (tensor<?x16xf64>, tensor<16xf64>) -> (tensor<?x16xf64>, tensor<16xf64>)
  %31 = "ta.getTime"() : () -> f64
  %alloc_25 = memref.alloc() : memref<1xf64>
  memref.store %cst_1, %alloc_25[%c0] : memref<1xf64>
  %dim = tensor.dim %30#0, %c0 : tensor<?x16xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    scf.for %arg1 = %c0 to %c16 step %c1 {
      %extracted = tensor.extract %30#0[%arg0, %arg1] : tensor<?x16xf64>
      %33 = memref.load %alloc_25[%c0] : memref<1xf64>
      %34 = arith.addf %extracted, %33 : f64
      memref.store %34, %alloc_25[%c0] : memref<1xf64>
    }
  }
  %32 = memref.load %alloc_25[%c0] : memref<1xf64>
  "ta.print"(%32) : (f64) -> ()
  "ta.print_elapsed_time"(%29, %31) : (f64, f64) -> ()
  return
}

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func @main() {
  %c16 = arith.constant 16 : index
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
  %idx16 = index.constant 16
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
  %idx0_22 = index.constant 0
  %extracted_23 = tensor.extract %from_elements[%idx0_22] : tensor<2xindex>
  %idx1 = index.constant 1
  %extracted_24 = tensor.extract %from_elements[%idx1] : tensor<2xindex>
  %alloc_25 = memref.alloc(%extracted_24) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_25 : memref<?x16xf64>)
  %21 = bufferization.to_tensor %alloc_25 restrict writable : memref<?x16xf64>
  %alloc_26 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_26 : memref<16x16xf64>)
  %22 = bufferization.to_tensor %alloc_26 restrict writable : memref<16x16xf64>
  %alloc_27 = memref.alloc(%extracted_23) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_27 : memref<?x16xf64>)
  %23 = bufferization.to_tensor %alloc_27 restrict writable : memref<?x16xf64>
  %alloc_28 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_28 : memref<16xf64>)
  %24 = bufferization.to_tensor %alloc_28 restrict writable : memref<16xf64>
  %alloc_29 = memref.alloc(%extracted_23) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_29 : memref<?x16xf64>)
  %25 = call @getTime() : () -> f64
  %26:2 = "it.itree"(%23, %24) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x16xf64>, %arg1: tensor<16xf64>):
    %29:2 = scf.for %arg2 = %c0 to %extracted step %c1 iter_args(%arg3 = %arg0, %arg4 = %arg1) -> (tensor<?x16xf64>, tensor<16xf64>) {
      %30 = arith.addi %arg2, %c1 : index
      %extracted_31 = tensor.extract %15[%arg2] : tensor<?xi64>
      %31 = arith.index_cast %extracted_31 : i64 to index
      %extracted_32 = tensor.extract %15[%30] : tensor<?xi64>
      %32 = arith.index_cast %extracted_32 : i64 to index
      %33:2 = scf.for %arg5 = %31 to %32 step %c1 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (tensor<?x16xf64>, tensor<16xf64>) {
        %35:2 = scf.for %arg8 = %c0 to %idx16 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (tensor<?x16xf64>, tensor<16xf64>) {
          %extracted_33 = tensor.extract %16[%arg5] : tensor<?xi64>
          %36 = arith.index_cast %extracted_33 : i64 to index
          %extracted_34 = tensor.extract %16[%arg5] : tensor<?xi64>
          %37 = arith.index_cast %extracted_34 : i64 to index
          %extracted_35 = tensor.extract %19[%arg5] : tensor<?xf64>
          %extracted_36 = tensor.extract %21[%37, %arg8] : tensor<?x16xf64>
          %38 = arith.mulf %extracted_35, %extracted_36 : f64
          %extracted_37 = tensor.extract %arg10[%arg8] : tensor<16xf64>
          %39 = arith.addf %extracted_37, %38 : f64
          %inserted = tensor.insert %39 into %arg10[%arg8] : tensor<16xf64>
          scf.yield %arg9, %inserted : tensor<?x16xf64>, tensor<16xf64>
        }
        scf.yield %35#0, %35#1 : tensor<?x16xf64>, tensor<16xf64>
      }
      %34:2 = scf.for %arg5 = %c0 to %idx16 step %c1 iter_args(%arg6 = %33#0, %arg7 = %33#1) -> (tensor<?x16xf64>, tensor<16xf64>) {
        %35:2 = scf.for %arg8 = %c0 to %idx16 step %c1 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (tensor<?x16xf64>, tensor<16xf64>) {
          %extracted_33 = tensor.extract %arg10[%arg5] : tensor<16xf64>
          %extracted_34 = tensor.extract %22[%arg5, %arg8] : tensor<16x16xf64>
          %36 = arith.mulf %extracted_33, %extracted_34 : f64
          %extracted_35 = tensor.extract %arg9[%arg2, %arg8] : tensor<?x16xf64>
          %37 = arith.addf %extracted_35, %36 : f64
          %inserted_36 = tensor.insert %37 into %arg9[%arg2, %arg8] : tensor<?x16xf64>
          scf.yield %inserted_36, %arg10 : tensor<?x16xf64>, tensor<16xf64>
        }
        %inserted = tensor.insert %cst_1 into %35#1[%arg5] : tensor<16xf64>
        scf.yield %35#0, %inserted : tensor<?x16xf64>, tensor<16xf64>
      }
      scf.yield %34#0, %34#1 : tensor<?x16xf64>, tensor<16xf64>
    }
    it.yield %29#0, %29#1 : tensor<?x16xf64>, tensor<16xf64>
  }) : (tensor<?x16xf64>, tensor<16xf64>) -> (tensor<?x16xf64>, tensor<16xf64>)
  %27 = call @getTime() : () -> f64
  %alloc_30 = memref.alloc() : memref<1xf64>
  memref.store %cst_1, %alloc_30[%c0] : memref<1xf64>
  %dim = tensor.dim %26#0, %c0 : tensor<?x16xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    scf.for %arg1 = %c0 to %c16 step %c1 {
      %extracted_31 = tensor.extract %26#0[%arg0, %arg1] : tensor<?x16xf64>
      %29 = memref.load %alloc_30[%c0] : memref<1xf64>
      %30 = arith.addf %extracted_31, %29 : f64
      memref.store %30, %alloc_30[%c0] : memref<1xf64>
    }
  }
  %28 = memref.load %alloc_30[%c0] : memref<1xf64>
  "ta.print"(%28) : (f64) -> ()
  call @printElapsedTime(%25, %27) : (f64, f64) -> ()
  return
}

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func @main() {
  %c16 = arith.constant 16 : index
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
  %idx16 = index.constant 16
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
  %idx0_22 = index.constant 0
  %idx1 = index.constant 1
  %alloc_23 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_23 : memref<?x16xf64>)
  %21 = bufferization.to_tensor %alloc_23 restrict writable : memref<?x16xf64>
  %alloc_24 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_24 : memref<16x16xf64>)
  %22 = bufferization.to_tensor %alloc_24 restrict writable : memref<16x16xf64>
  %alloc_25 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x16xf64>)
  %23 = bufferization.to_tensor %alloc_25 restrict writable : memref<?x16xf64>
  %alloc_26 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_26 : memref<16xf64>)
  %24 = bufferization.to_tensor %alloc_26 restrict writable : memref<16xf64>
  %alloc_27 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_27 : memref<?x16xf64>)
  %25 = call @getTime() : () -> f64
  %26:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %23, %arg2 = %24) -> (tensor<?x16xf64>, tensor<16xf64>) {
    %29 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
    %30 = arith.index_cast %extracted : i64 to index
    %extracted_29 = tensor.extract %15[%29] : tensor<?xi64>
    %31 = arith.index_cast %extracted_29 : i64 to index
    %32:2 = scf.for %arg3 = %30 to %31 step %c1 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (tensor<?x16xf64>, tensor<16xf64>) {
      %34:2 = scf.for %arg6 = %c0 to %idx16 step %c1 iter_args(%arg7 = %arg4, %arg8 = %arg5) -> (tensor<?x16xf64>, tensor<16xf64>) {
        %extracted_30 = tensor.extract %16[%arg3] : tensor<?xi64>
        %35 = arith.index_cast %extracted_30 : i64 to index
        %extracted_31 = tensor.extract %16[%arg3] : tensor<?xi64>
        %36 = arith.index_cast %extracted_31 : i64 to index
        %extracted_32 = tensor.extract %19[%arg3] : tensor<?xf64>
        %extracted_33 = tensor.extract %21[%36, %arg6] : tensor<?x16xf64>
        %37 = arith.mulf %extracted_32, %extracted_33 : f64
        %extracted_34 = tensor.extract %arg8[%arg6] : tensor<16xf64>
        %38 = arith.addf %extracted_34, %37 : f64
        %inserted = tensor.insert %38 into %arg8[%arg6] : tensor<16xf64>
        scf.yield %arg7, %inserted : tensor<?x16xf64>, tensor<16xf64>
      }
      scf.yield %34#0, %34#1 : tensor<?x16xf64>, tensor<16xf64>
    }
    %33:2 = scf.for %arg3 = %c0 to %idx16 step %c1 iter_args(%arg4 = %32#0, %arg5 = %32#1) -> (tensor<?x16xf64>, tensor<16xf64>) {
      %34:2 = scf.for %arg6 = %c0 to %idx16 step %c1 iter_args(%arg7 = %arg4, %arg8 = %arg5) -> (tensor<?x16xf64>, tensor<16xf64>) {
        %extracted_30 = tensor.extract %arg8[%arg3] : tensor<16xf64>
        %extracted_31 = tensor.extract %22[%arg3, %arg6] : tensor<16x16xf64>
        %35 = arith.mulf %extracted_30, %extracted_31 : f64
        %extracted_32 = tensor.extract %arg7[%arg0, %arg6] : tensor<?x16xf64>
        %36 = arith.addf %extracted_32, %35 : f64
        %inserted_33 = tensor.insert %36 into %arg7[%arg0, %arg6] : tensor<?x16xf64>
        scf.yield %inserted_33, %arg8 : tensor<?x16xf64>, tensor<16xf64>
      }
      %inserted = tensor.insert %cst_1 into %34#1[%arg3] : tensor<16xf64>
      scf.yield %34#0, %inserted : tensor<?x16xf64>, tensor<16xf64>
    }
    scf.yield %33#0, %33#1 : tensor<?x16xf64>, tensor<16xf64>
  }
  %27 = call @getTime() : () -> f64
  %alloc_28 = memref.alloc() : memref<1xf64>
  memref.store %cst_1, %alloc_28[%c0] : memref<1xf64>
  %dim = tensor.dim %26#0, %c0 : tensor<?x16xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    scf.for %arg1 = %c0 to %c16 step %c1 {
      %extracted = tensor.extract %26#0[%arg0, %arg1] : tensor<?x16xf64>
      %29 = memref.load %alloc_28[%c0] : memref<1xf64>
      %30 = arith.addf %extracted, %29 : f64
      memref.store %30, %alloc_28[%c0] : memref<1xf64>
    }
  }
  %28 = memref.load %alloc_28[%c0] : memref<1xf64>
  "ta.print"(%28) : (f64) -> ()
  call @printElapsedTime(%25, %27) : (f64, f64) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %c16 = arith.constant 16 : index
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
  %idx16 = index.constant 16
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
  %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x16xf64>)
  %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x16xf64>
  %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<16x16xf64>)
  %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<16x16xf64>
  %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x16xf64>)
  %16 = bufferization.to_tensor %alloc_22 restrict writable : memref<?x16xf64>
  %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<16xf64>)
  %17 = bufferization.to_tensor %alloc_23 restrict writable : memref<16xf64>
  %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x16xf64>)
  %18 = call @getTime() : () -> f64
  %19:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %16, %arg2 = %17) -> (tensor<?x16xf64>, tensor<16xf64>) {
    %22 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %23 = arith.index_cast %extracted : i64 to index
    %extracted_26 = tensor.extract %11[%22] : tensor<?xi64>
    %24 = arith.index_cast %extracted_26 : i64 to index
    %25 = scf.for %arg3 = %23 to %24 step %c1 iter_args(%arg4 = %arg2) -> (tensor<16xf64>) {
      %27 = scf.for %arg5 = %c0 to %idx16 step %c1 iter_args(%arg6 = %arg4) -> (tensor<16xf64>) {
        %extracted_27 = tensor.extract %12[%arg3] : tensor<?xi64>
        %28 = arith.index_cast %extracted_27 : i64 to index
        %extracted_28 = tensor.extract %13[%arg3] : tensor<?xf64>
        %extracted_29 = tensor.extract %14[%28, %arg5] : tensor<?x16xf64>
        %29 = arith.mulf %extracted_28, %extracted_29 : f64
        %extracted_30 = tensor.extract %arg6[%arg5] : tensor<16xf64>
        %30 = arith.addf %extracted_30, %29 : f64
        %inserted = tensor.insert %30 into %arg6[%arg5] : tensor<16xf64>
        scf.yield %inserted : tensor<16xf64>
      }
      scf.yield %27 : tensor<16xf64>
    }
    %26:2 = scf.for %arg3 = %c0 to %idx16 step %c1 iter_args(%arg4 = %arg1, %arg5 = %25) -> (tensor<?x16xf64>, tensor<16xf64>) {
      %27 = scf.for %arg6 = %c0 to %idx16 step %c1 iter_args(%arg7 = %arg4) -> (tensor<?x16xf64>) {
        %extracted_27 = tensor.extract %arg5[%arg3] : tensor<16xf64>
        %extracted_28 = tensor.extract %15[%arg3, %arg6] : tensor<16x16xf64>
        %28 = arith.mulf %extracted_27, %extracted_28 : f64
        %extracted_29 = tensor.extract %arg7[%arg0, %arg6] : tensor<?x16xf64>
        %29 = arith.addf %extracted_29, %28 : f64
        %inserted_30 = tensor.insert %29 into %arg7[%arg0, %arg6] : tensor<?x16xf64>
        scf.yield %inserted_30 : tensor<?x16xf64>
      }
      %inserted = tensor.insert %cst_1 into %arg5[%arg3] : tensor<16xf64>
      scf.yield %27, %inserted : tensor<?x16xf64>, tensor<16xf64>
    }
    scf.yield %26#0, %26#1 : tensor<?x16xf64>, tensor<16xf64>
  }
  %20 = call @getTime() : () -> f64
  %alloc_25 = memref.alloc() : memref<1xf64>
  memref.store %cst_1, %alloc_25[%c0] : memref<1xf64>
  %dim = tensor.dim %19#0, %c0 : tensor<?x16xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    scf.for %arg1 = %c0 to %c16 step %c1 {
      %extracted = tensor.extract %19#0[%arg0, %arg1] : tensor<?x16xf64>
      %22 = memref.load %alloc_25[%c0] : memref<1xf64>
      %23 = arith.addf %extracted, %22 : f64
      memref.store %23, %alloc_25[%c0] : memref<1xf64>
    }
  }
  %21 = memref.load %alloc_25[%c0] : memref<1xf64>
  "ta.print"(%21) : (f64) -> ()
  call @printElapsedTime(%18, %20) : (f64, f64) -> ()
  return
}

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func @main() {
  %c16 = arith.constant 16 : index
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
  %idx16 = index.constant 16
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
  %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x16xf64>)
  %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x16xf64>
  %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<16x16xf64>)
  %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<16x16xf64>
  %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x16xf64>)
  %16 = bufferization.to_tensor %alloc_22 restrict writable : memref<?x16xf64>
  %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<16xf64>)
  %17 = bufferization.to_tensor %alloc_23 restrict writable : memref<16xf64>
  %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x16xf64>)
  %18 = call @getTime() : () -> f64
  %19:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %16, %arg2 = %17) -> (tensor<?x16xf64>, tensor<16xf64>) {
    %22 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %23 = arith.index_cast %extracted : i64 to index
    %extracted_26 = tensor.extract %11[%22] : tensor<?xi64>
    %24 = arith.index_cast %extracted_26 : i64 to index
    %25 = scf.for %arg3 = %23 to %24 step %c1 iter_args(%arg4 = %arg2) -> (tensor<16xf64>) {
      %extracted_27 = tensor.extract %12[%arg3] : tensor<?xi64>
      %27 = arith.index_cast %extracted_27 : i64 to index
      %extracted_28 = tensor.extract %13[%arg3] : tensor<?xf64>
      %28 = scf.for %arg5 = %c0 to %idx16 step %c1 iter_args(%arg6 = %arg4) -> (tensor<16xf64>) {
        %extracted_29 = tensor.extract %14[%27, %arg5] : tensor<?x16xf64>
        %29 = arith.mulf %extracted_28, %extracted_29 : f64
        %extracted_30 = tensor.extract %arg6[%arg5] : tensor<16xf64>
        %30 = arith.addf %extracted_30, %29 : f64
        %inserted = tensor.insert %30 into %arg6[%arg5] : tensor<16xf64>
        scf.yield %inserted : tensor<16xf64>
      }
      scf.yield %28 : tensor<16xf64>
    }
    %26:2 = scf.for %arg3 = %c0 to %idx16 step %c1 iter_args(%arg4 = %arg1, %arg5 = %25) -> (tensor<?x16xf64>, tensor<16xf64>) {
      %extracted_27 = tensor.extract %arg5[%arg3] : tensor<16xf64>
      %27 = scf.for %arg6 = %c0 to %idx16 step %c1 iter_args(%arg7 = %arg4) -> (tensor<?x16xf64>) {
        %extracted_28 = tensor.extract %15[%arg3, %arg6] : tensor<16x16xf64>
        %28 = arith.mulf %extracted_27, %extracted_28 : f64
        %extracted_29 = tensor.extract %arg7[%arg0, %arg6] : tensor<?x16xf64>
        %29 = arith.addf %extracted_29, %28 : f64
        %inserted_30 = tensor.insert %29 into %arg7[%arg0, %arg6] : tensor<?x16xf64>
        scf.yield %inserted_30 : tensor<?x16xf64>
      }
      %inserted = tensor.insert %cst_1 into %arg5[%arg3] : tensor<16xf64>
      scf.yield %27, %inserted : tensor<?x16xf64>, tensor<16xf64>
    }
    scf.yield %26#0, %26#1 : tensor<?x16xf64>, tensor<16xf64>
  }
  %20 = call @getTime() : () -> f64
  %alloc_25 = memref.alloc() : memref<1xf64>
  memref.store %cst_1, %alloc_25[%c0] : memref<1xf64>
  %dim = tensor.dim %19#0, %c0 : tensor<?x16xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    scf.for %arg1 = %c0 to %c16 step %c1 {
      %extracted = tensor.extract %19#0[%arg0, %arg1] : tensor<?x16xf64>
      %22 = memref.load %alloc_25[%c0] : memref<1xf64>
      %23 = arith.addf %extracted, %22 : f64
      memref.store %23, %alloc_25[%c0] : memref<1xf64>
    }
  }
  %21 = memref.load %alloc_25[%c0] : memref<1xf64>
  "ta.print"(%21) : (f64) -> ()
  call @printElapsedTime(%18, %20) : (f64, f64) -> ()
  return
}

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func @main() {
  %c16 = arith.constant 16 : index
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
  %idx16 = index.constant 16
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
  %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x16xf64>)
  %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x16xf64>
  %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<16x16xf64>)
  %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<16x16xf64>
  %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x16xf64>)
  %16 = bufferization.to_tensor %alloc_22 restrict writable : memref<?x16xf64>
  %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<16xf64>)
  %17 = bufferization.to_tensor %alloc_23 restrict writable : memref<16xf64>
  %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x16xf64>)
  %18 = call @getTime() : () -> f64
  %19:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %16, %arg2 = %17) -> (tensor<?x16xf64>, tensor<16xf64>) {
    %22 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %23 = arith.index_cast %extracted : i64 to index
    %extracted_26 = tensor.extract %11[%22] : tensor<?xi64>
    %24 = arith.index_cast %extracted_26 : i64 to index
    %25 = scf.for %arg3 = %23 to %24 step %c1 iter_args(%arg4 = %arg2) -> (tensor<16xf64>) {
      %extracted_27 = tensor.extract %12[%arg3] : tensor<?xi64>
      %27 = arith.index_cast %extracted_27 : i64 to index
      %extracted_28 = tensor.extract %13[%arg3] : tensor<?xf64>
      %28 = scf.for %arg5 = %c0 to %idx16 step %c1 iter_args(%arg6 = %arg4) -> (tensor<16xf64>) {
        %extracted_29 = tensor.extract %14[%27, %arg5] : tensor<?x16xf64>
        %29 = arith.mulf %extracted_28, %extracted_29 : f64
        %extracted_30 = tensor.extract %arg6[%arg5] : tensor<16xf64>
        %30 = arith.addf %extracted_30, %29 : f64
        %inserted = tensor.insert %30 into %arg6[%arg5] : tensor<16xf64>
        scf.yield %inserted : tensor<16xf64>
      }
      scf.yield %28 : tensor<16xf64>
    }
    %26:2 = scf.for %arg3 = %c0 to %idx16 step %c1 iter_args(%arg4 = %arg1, %arg5 = %25) -> (tensor<?x16xf64>, tensor<16xf64>) {
      %extracted_27 = tensor.extract %arg5[%arg3] : tensor<16xf64>
      %27 = scf.for %arg6 = %c0 to %idx16 step %c1 iter_args(%arg7 = %arg4) -> (tensor<?x16xf64>) {
        %extracted_28 = tensor.extract %15[%arg3, %arg6] : tensor<16x16xf64>
        %28 = arith.mulf %extracted_27, %extracted_28 : f64
        %extracted_29 = tensor.extract %arg7[%arg0, %arg6] : tensor<?x16xf64>
        %29 = arith.addf %extracted_29, %28 : f64
        %inserted_30 = tensor.insert %29 into %arg7[%arg0, %arg6] : tensor<?x16xf64>
        scf.yield %inserted_30 : tensor<?x16xf64>
      }
      %inserted = tensor.insert %cst_1 into %arg5[%arg3] : tensor<16xf64>
      scf.yield %27, %inserted : tensor<?x16xf64>, tensor<16xf64>
    }
    scf.yield %26#0, %26#1 : tensor<?x16xf64>, tensor<16xf64>
  }
  %20 = call @getTime() : () -> f64
  %alloc_25 = memref.alloc() : memref<1xf64>
  memref.store %cst_1, %alloc_25[%c0] : memref<1xf64>
  %dim = tensor.dim %19#0, %c0 : tensor<?x16xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    scf.for %arg1 = %c0 to %c16 step %c1 {
      %extracted = tensor.extract %19#0[%arg0, %arg1] : tensor<?x16xf64>
      %22 = memref.load %alloc_25[%c0] : memref<1xf64>
      %23 = arith.addf %extracted, %22 : f64
      memref.store %23, %alloc_25[%c0] : memref<1xf64>
    }
  }
  %21 = memref.load %alloc_25[%c0] : memref<1xf64>
  "ta.print"(%21) : (f64) -> ()
  call @printElapsedTime(%18, %20) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
module {
  func.func @main() {
    %c16 = arith.constant 16 : index
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
    %idx16 = index.constant 16
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
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x16xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x16xf64>)
    %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x16xf64>
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<16x16xf64>)
    %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<16x16xf64>
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x16xf64>)
    %16 = bufferization.to_tensor %alloc_22 restrict writable : memref<?x16xf64>
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<16xf64>)
    %17 = bufferization.to_tensor %alloc_23 restrict writable : memref<16xf64>
    %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x16xf64>)
    %18 = call @getTime() : () -> f64
    %19:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %16, %arg2 = %17) -> (tensor<?x16xf64>, tensor<16xf64>) {
      %22 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %23 = arith.index_cast %extracted : i64 to index
      %extracted_26 = tensor.extract %11[%22] : tensor<?xi64>
      %24 = arith.index_cast %extracted_26 : i64 to index
      %25 = scf.for %arg3 = %23 to %24 step %c1 iter_args(%arg4 = %arg2) -> (tensor<16xf64>) {
        %extracted_27 = tensor.extract %12[%arg3] : tensor<?xi64>
        %27 = arith.index_cast %extracted_27 : i64 to index
        %extracted_28 = tensor.extract %13[%arg3] : tensor<?xf64>
        %28 = scf.for %arg5 = %c0 to %idx16 step %c1 iter_args(%arg6 = %arg4) -> (tensor<16xf64>) {
          %extracted_29 = tensor.extract %14[%27, %arg5] : tensor<?x16xf64>
          %29 = arith.mulf %extracted_28, %extracted_29 : f64
          %extracted_30 = tensor.extract %arg6[%arg5] : tensor<16xf64>
          %30 = arith.addf %extracted_30, %29 : f64
          %inserted = tensor.insert %30 into %arg6[%arg5] : tensor<16xf64>
          scf.yield %inserted : tensor<16xf64>
        }
        scf.yield %28 : tensor<16xf64>
      }
      %26:2 = scf.for %arg3 = %c0 to %idx16 step %c1 iter_args(%arg4 = %arg1, %arg5 = %25) -> (tensor<?x16xf64>, tensor<16xf64>) {
        %extracted_27 = tensor.extract %arg5[%arg3] : tensor<16xf64>
        %27 = scf.for %arg6 = %c0 to %idx16 step %c1 iter_args(%arg7 = %arg4) -> (tensor<?x16xf64>) {
          %extracted_28 = tensor.extract %15[%arg3, %arg6] : tensor<16x16xf64>
          %28 = arith.mulf %extracted_27, %extracted_28 : f64
          %extracted_29 = tensor.extract %arg7[%arg0, %arg6] : tensor<?x16xf64>
          %29 = arith.addf %extracted_29, %28 : f64
          %inserted_30 = tensor.insert %29 into %arg7[%arg0, %arg6] : tensor<?x16xf64>
          scf.yield %inserted_30 : tensor<?x16xf64>
        }
        %inserted = tensor.insert %cst_1 into %arg5[%arg3] : tensor<16xf64>
        scf.yield %27, %inserted : tensor<?x16xf64>, tensor<16xf64>
      }
      scf.yield %26#0, %26#1 : tensor<?x16xf64>, tensor<16xf64>
    }
    %20 = call @getTime() : () -> f64
    %alloc_25 = memref.alloc() : memref<1xf64>
    memref.store %cst_1, %alloc_25[%c0] : memref<1xf64>
    %dim = tensor.dim %19#0, %c0 : tensor<?x16xf64>
    scf.for %arg0 = %c0 to %dim step %c1 {
      scf.for %arg1 = %c0 to %c16 step %c1 {
        %extracted = tensor.extract %19#0[%arg0, %arg1] : tensor<?x16xf64>
        %22 = memref.load %alloc_25[%c0] : memref<1xf64>
        %23 = arith.addf %extracted, %22 : f64
        memref.store %23, %alloc_25[%c0] : memref<1xf64>
      }
    }
    %21 = memref.load %alloc_25[%c0] : memref<1xf64>
    "ta.print"(%21) : (f64) -> ()
    call @printElapsedTime(%18, %20) : (f64, f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c16 = arith.constant 16 : index
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
    %idx16 = index.constant 16
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
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x16xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x16xf64>)
    %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x16xf64>
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<16x16xf64>)
    %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<16x16xf64>
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x16xf64>)
    %16 = bufferization.to_tensor %alloc_22 restrict writable : memref<?x16xf64>
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<16xf64>)
    %17 = bufferization.to_tensor %alloc_23 restrict writable : memref<16xf64>
    %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x16xf64>)
    %18 = call @getTime() : () -> f64
    %19:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %16, %arg2 = %17) -> (tensor<?x16xf64>, tensor<16xf64>) {
      %22 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %23 = arith.index_cast %extracted : i64 to index
      %extracted_26 = tensor.extract %11[%22] : tensor<?xi64>
      %24 = arith.index_cast %extracted_26 : i64 to index
      %25 = scf.for %arg3 = %23 to %24 step %c1 iter_args(%arg4 = %arg2) -> (tensor<16xf64>) {
        %extracted_27 = tensor.extract %12[%arg3] : tensor<?xi64>
        %27 = arith.index_cast %extracted_27 : i64 to index
        %extracted_28 = tensor.extract %13[%arg3] : tensor<?xf64>
        %28 = scf.for %arg5 = %c0 to %idx16 step %c1 iter_args(%arg6 = %arg4) -> (tensor<16xf64>) {
          %extracted_29 = tensor.extract %14[%27, %arg5] : tensor<?x16xf64>
          %29 = arith.mulf %extracted_28, %extracted_29 : f64
          %extracted_30 = tensor.extract %arg6[%arg5] : tensor<16xf64>
          %30 = arith.addf %extracted_30, %29 : f64
          %inserted = tensor.insert %30 into %arg6[%arg5] : tensor<16xf64>
          scf.yield %inserted : tensor<16xf64>
        }
        scf.yield %28 : tensor<16xf64>
      }
      %26:2 = scf.for %arg3 = %c0 to %idx16 step %c1 iter_args(%arg4 = %arg1, %arg5 = %25) -> (tensor<?x16xf64>, tensor<16xf64>) {
        %extracted_27 = tensor.extract %arg5[%arg3] : tensor<16xf64>
        %27 = scf.for %arg6 = %c0 to %idx16 step %c1 iter_args(%arg7 = %arg4) -> (tensor<?x16xf64>) {
          %extracted_28 = tensor.extract %15[%arg3, %arg6] : tensor<16x16xf64>
          %28 = arith.mulf %extracted_27, %extracted_28 : f64
          %extracted_29 = tensor.extract %arg7[%arg0, %arg6] : tensor<?x16xf64>
          %29 = arith.addf %extracted_29, %28 : f64
          %inserted_30 = tensor.insert %29 into %arg7[%arg0, %arg6] : tensor<?x16xf64>
          scf.yield %inserted_30 : tensor<?x16xf64>
        }
        %inserted = tensor.insert %cst_1 into %arg5[%arg3] : tensor<16xf64>
        scf.yield %27, %inserted : tensor<?x16xf64>, tensor<16xf64>
      }
      scf.yield %26#0, %26#1 : tensor<?x16xf64>, tensor<16xf64>
    }
    %20 = call @getTime() : () -> f64
    %alloc_25 = memref.alloc() : memref<1xf64>
    memref.store %cst_1, %alloc_25[%c0] : memref<1xf64>
    %dim = tensor.dim %19#0, %c0 : tensor<?x16xf64>
    scf.for %arg0 = %c0 to %dim step %c1 {
      scf.for %arg1 = %c0 to %c16 step %c1 {
        %extracted = tensor.extract %19#0[%arg0, %arg1] : tensor<?x16xf64>
        %22 = memref.load %alloc_25[%c0] : memref<1xf64>
        %23 = arith.addf %extracted, %22 : f64
        memref.store %23, %alloc_25[%c0] : memref<1xf64>
      }
    }
    %21 = memref.load %alloc_25[%c0] : memref<1xf64>
    "ta.print"(%21) : (f64) -> ()
    call @printElapsedTime(%18, %20) : (f64, f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
}


// -----// IR Dump After OneShotBufferize (one-shot-bufferize) //----- //
module {
  func.func @main() {
    %c16 = arith.constant 16 : index
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
    %idx16 = index.constant 16
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
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x16xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x16xf64>)
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<16x16xf64>)
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x16xf64>)
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<16xf64>)
    %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x16xf64>)
    %11 = call @getTime() : () -> f64
    %12:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %alloc_22, %arg2 = %alloc_23) -> (memref<?x16xf64>, memref<16xf64>) {
      %15 = arith.addi %arg0, %c1 : index
      %16 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = memref.load %alloc_10[%15] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = scf.for %arg3 = %17 to %19 step %c1 iter_args(%arg4 = %arg2) -> (memref<16xf64>) {
        %22 = memref.load %alloc_12[%arg3] : memref<?xi64>
        %23 = arith.index_cast %22 : i64 to index
        %24 = memref.load %alloc_18[%arg3] : memref<?xf64>
        %25 = scf.for %arg5 = %c0 to %idx16 step %c1 iter_args(%arg6 = %arg4) -> (memref<16xf64>) {
          %26 = memref.load %alloc_20[%23, %arg5] : memref<?x16xf64>
          %27 = arith.mulf %24, %26 : f64
          %28 = memref.load %arg6[%arg5] : memref<16xf64>
          %29 = arith.addf %28, %27 : f64
          memref.store %29, %arg6[%arg5] : memref<16xf64>
          scf.yield %arg6 : memref<16xf64>
        }
        scf.yield %25 : memref<16xf64>
      }
      %21:2 = scf.for %arg3 = %c0 to %idx16 step %c1 iter_args(%arg4 = %arg1, %arg5 = %20) -> (memref<?x16xf64>, memref<16xf64>) {
        %22 = memref.load %arg5[%arg3] : memref<16xf64>
        %23 = scf.for %arg6 = %c0 to %idx16 step %c1 iter_args(%arg7 = %arg4) -> (memref<?x16xf64>) {
          %24 = memref.load %alloc_21[%arg3, %arg6] : memref<16x16xf64>
          %25 = arith.mulf %22, %24 : f64
          %26 = memref.load %arg7[%arg0, %arg6] : memref<?x16xf64>
          %27 = arith.addf %26, %25 : f64
          memref.store %27, %arg7[%arg0, %arg6] : memref<?x16xf64>
          scf.yield %arg7 : memref<?x16xf64>
        }
        memref.store %cst_1, %arg5[%arg3] : memref<16xf64>
        scf.yield %23, %arg5 : memref<?x16xf64>, memref<16xf64>
      }
      scf.yield %21#0, %21#1 : memref<?x16xf64>, memref<16xf64>
    }
    %13 = call @getTime() : () -> f64
    %alloc_25 = memref.alloc() : memref<1xf64>
    memref.store %cst_1, %alloc_25[%c0] : memref<1xf64>
    %dim = memref.dim %12#0, %c0 : memref<?x16xf64>
    scf.for %arg0 = %c0 to %dim step %c1 {
      scf.for %arg1 = %c0 to %c16 step %c1 {
        %15 = memref.load %12#0[%arg0, %arg1] : memref<?x16xf64>
        %16 = memref.load %alloc_25[%c0] : memref<1xf64>
        %17 = arith.addf %15, %16 : f64
        memref.store %17, %alloc_25[%c0] : memref<1xf64>
      }
    }
    %14 = memref.load %alloc_25[%c0] : memref<1xf64>
    "ta.print"(%14) : (f64) -> ()
    call @printElapsedTime(%11, %13) : (f64, f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
}


// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @printElapsedTime(f64, f64)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @getTime() -> f64

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @printElapsedTime(f64, f64)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @getTime() -> f64

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func @main() {
  %c16 = arith.constant 16 : index
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
  %idx16 = index.constant 16
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
  %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x16xf64>)
  %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<16x16xf64>)
  %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x16xf64>)
  %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<16xf64>)
  %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x16xf64>)
  %11 = call @getTime() : () -> f64
  %12:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %alloc_22, %arg2 = %alloc_23) -> (memref<?x16xf64>, memref<16xf64>) {
    %15 = arith.addi %arg0, %c1 : index
    %16 = memref.load %alloc_10[%arg0] : memref<?xi64>
    %17 = arith.index_cast %16 : i64 to index
    %18 = memref.load %alloc_10[%15] : memref<?xi64>
    %19 = arith.index_cast %18 : i64 to index
    %20 = scf.for %arg3 = %17 to %19 step %c1 iter_args(%arg4 = %arg2) -> (memref<16xf64>) {
      %22 = memref.load %alloc_12[%arg3] : memref<?xi64>
      %23 = arith.index_cast %22 : i64 to index
      %24 = memref.load %alloc_18[%arg3] : memref<?xf64>
      %25 = scf.for %arg5 = %c0 to %idx16 step %c1 iter_args(%arg6 = %arg4) -> (memref<16xf64>) {
        %26 = memref.load %alloc_20[%23, %arg5] : memref<?x16xf64>
        %27 = arith.mulf %24, %26 : f64
        %28 = memref.load %arg6[%arg5] : memref<16xf64>
        %29 = arith.addf %28, %27 : f64
        memref.store %29, %arg6[%arg5] : memref<16xf64>
        scf.yield %arg6 : memref<16xf64>
      }
      scf.yield %25 : memref<16xf64>
    }
    %21:2 = scf.for %arg3 = %c0 to %idx16 step %c1 iter_args(%arg4 = %arg1, %arg5 = %20) -> (memref<?x16xf64>, memref<16xf64>) {
      %22 = memref.load %arg5[%arg3] : memref<16xf64>
      %23 = scf.for %arg6 = %c0 to %idx16 step %c1 iter_args(%arg7 = %arg4) -> (memref<?x16xf64>) {
        %24 = memref.load %alloc_21[%arg3, %arg6] : memref<16x16xf64>
        %25 = arith.mulf %22, %24 : f64
        %26 = memref.load %arg7[%arg0, %arg6] : memref<?x16xf64>
        %27 = arith.addf %26, %25 : f64
        memref.store %27, %arg7[%arg0, %arg6] : memref<?x16xf64>
        scf.yield %arg7 : memref<?x16xf64>
      }
      memref.store %cst_1, %arg5[%arg3] : memref<16xf64>
      scf.yield %23, %arg5 : memref<?x16xf64>, memref<16xf64>
    }
    scf.yield %21#0, %21#1 : memref<?x16xf64>, memref<16xf64>
  }
  %13 = call @getTime() : () -> f64
  %alloc_25 = memref.alloc() : memref<1xf64>
  memref.store %cst_1, %alloc_25[%c0] : memref<1xf64>
  %dim = memref.dim %12#0, %c0 : memref<?x16xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    scf.for %arg1 = %c0 to %c16 step %c1 {
      %15 = memref.load %12#0[%arg0, %arg1] : memref<?x16xf64>
      %16 = memref.load %alloc_25[%c0] : memref<1xf64>
      %17 = arith.addf %15, %16 : f64
      memref.store %17, %alloc_25[%c0] : memref<1xf64>
    }
  }
  %14 = memref.load %alloc_25[%c0] : memref<1xf64>
  "ta.print"(%14) : (f64) -> ()
  call @printElapsedTime(%11, %13) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %c16 = arith.constant 16 : index
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
  %idx16 = index.constant 16
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
  %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x16xf64>)
  %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<16x16xf64>)
  %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x16xf64>)
  %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<16xf64>)
  %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x16xf64>)
  %11 = call @getTime() : () -> f64
  %12:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %alloc_22, %arg2 = %alloc_23) -> (memref<?x16xf64>, memref<16xf64>) {
    %15 = arith.addi %arg0, %c1 : index
    %16 = memref.load %alloc_10[%arg0] : memref<?xi64>
    %17 = arith.index_cast %16 : i64 to index
    %18 = memref.load %alloc_10[%15] : memref<?xi64>
    %19 = arith.index_cast %18 : i64 to index
    %20 = scf.for %arg3 = %17 to %19 step %c1 iter_args(%arg4 = %arg2) -> (memref<16xf64>) {
      %22 = memref.load %alloc_12[%arg3] : memref<?xi64>
      %23 = arith.index_cast %22 : i64 to index
      %24 = memref.load %alloc_18[%arg3] : memref<?xf64>
      %25 = scf.for %arg5 = %c0 to %idx16 step %c1 iter_args(%arg6 = %arg4) -> (memref<16xf64>) {
        %26 = memref.load %alloc_20[%23, %arg5] : memref<?x16xf64>
        %27 = arith.mulf %24, %26 : f64
        %28 = memref.load %arg6[%arg5] : memref<16xf64>
        %29 = arith.addf %28, %27 : f64
        memref.store %29, %arg6[%arg5] : memref<16xf64>
        scf.yield %arg6 : memref<16xf64>
      }
      scf.yield %25 : memref<16xf64>
    }
    %21:2 = scf.for %arg3 = %c0 to %idx16 step %c1 iter_args(%arg4 = %arg1, %arg5 = %20) -> (memref<?x16xf64>, memref<16xf64>) {
      %22 = memref.load %arg5[%arg3] : memref<16xf64>
      %23 = scf.for %arg6 = %c0 to %idx16 step %c1 iter_args(%arg7 = %arg4) -> (memref<?x16xf64>) {
        %24 = memref.load %alloc_21[%arg3, %arg6] : memref<16x16xf64>
        %25 = arith.mulf %22, %24 : f64
        %26 = memref.load %arg7[%arg0, %arg6] : memref<?x16xf64>
        %27 = arith.addf %26, %25 : f64
        memref.store %27, %arg7[%arg0, %arg6] : memref<?x16xf64>
        scf.yield %arg7 : memref<?x16xf64>
      }
      memref.store %cst_1, %arg5[%arg3] : memref<16xf64>
      scf.yield %23, %arg5 : memref<?x16xf64>, memref<16xf64>
    }
    scf.yield %21#0, %21#1 : memref<?x16xf64>, memref<16xf64>
  }
  %13 = call @getTime() : () -> f64
  %alloc_25 = memref.alloc() : memref<1xf64>
  memref.store %cst_1, %alloc_25[%c0] : memref<1xf64>
  %dim = memref.dim %12#0, %c0 : memref<?x16xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    scf.for %arg1 = %c0 to %c16 step %c1 {
      %15 = memref.load %12#0[%arg0, %arg1] : memref<?x16xf64>
      %16 = memref.load %alloc_25[%c0] : memref<1xf64>
      %17 = arith.addf %15, %16 : f64
      memref.store %17, %alloc_25[%c0] : memref<1xf64>
    }
  }
  %14 = memref.load %alloc_25[%c0] : memref<1xf64>
  call @printF64(%14) : (f64) -> ()
  call @printNewline() : () -> ()
  call @printElapsedTime(%11, %13) : (f64, f64) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c16 = arith.constant 16 : index
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
    %idx16 = index.constant 16
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
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x16xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x16xf64>)
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<16x16xf64>)
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x16xf64>)
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<16xf64>)
    %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x16xf64>)
    %11 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %9 step %c1 {
      %14 = arith.addi %arg0, %c1 : index
      %15 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %16 = arith.index_cast %15 : i64 to index
      %17 = memref.load %alloc_10[%14] : memref<?xi64>
      %18 = arith.index_cast %17 : i64 to index
      scf.for %arg1 = %16 to %18 step %c1 {
        %19 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %20 = arith.index_cast %19 : i64 to index
        %21 = memref.load %alloc_18[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx16 step %c1 {
          %22 = memref.load %alloc_20[%20, %arg2] : memref<?x16xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = memref.load %alloc_23[%arg2] : memref<16xf64>
          %25 = arith.addf %24, %23 : f64
          memref.store %25, %alloc_23[%arg2] : memref<16xf64>
        }
      }
      scf.for %arg1 = %c0 to %idx16 step %c1 {
        %19 = memref.load %alloc_23[%arg1] : memref<16xf64>
        scf.for %arg2 = %c0 to %idx16 step %c1 {
          %20 = memref.load %alloc_21[%arg1, %arg2] : memref<16x16xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = memref.load %alloc_22[%arg0, %arg2] : memref<?x16xf64>
          %23 = arith.addf %22, %21 : f64
          memref.store %23, %alloc_22[%arg0, %arg2] : memref<?x16xf64>
        }
        memref.store %cst_1, %alloc_23[%arg1] : memref<16xf64>
      }
    }
    %12 = call @getTime() : () -> f64
    %alloc_25 = memref.alloc() : memref<1xf64>
    memref.store %cst_1, %alloc_25[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c16 step %c1 {
        %14 = memref.load %alloc_22[%arg0, %arg1] : memref<?x16xf64>
        %15 = memref.load %alloc_25[%c0] : memref<1xf64>
        %16 = arith.addf %14, %15 : f64
        memref.store %16, %alloc_25[%c0] : memref<1xf64>
      }
    }
    %13 = memref.load %alloc_25[%c0] : memref<1xf64>
    call @printF64(%13) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%11, %12) : (f64, f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %c16 = arith.constant 16 : index
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
    %idx16 = index.constant 16
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
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x16xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x16xf64>)
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<16x16xf64>)
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x16xf64>)
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<16xf64>)
    %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x16xf64>)
    %11 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %9 step %c1 {
      %14 = arith.addi %arg0, %c1 : index
      %15 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %16 = arith.index_cast %15 : i64 to index
      %17 = memref.load %alloc_10[%14] : memref<?xi64>
      %18 = arith.index_cast %17 : i64 to index
      scf.for %arg1 = %16 to %18 step %c1 {
        %19 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %20 = arith.index_cast %19 : i64 to index
        %21 = memref.load %alloc_18[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx16 step %c1 {
          %22 = memref.load %alloc_20[%20, %arg2] : memref<?x16xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = memref.load %alloc_23[%arg2] : memref<16xf64>
          %25 = arith.addf %24, %23 : f64
          memref.store %25, %alloc_23[%arg2] : memref<16xf64>
        }
      }
      scf.for %arg1 = %c0 to %idx16 step %c1 {
        %19 = memref.load %alloc_23[%arg1] : memref<16xf64>
        scf.for %arg2 = %c0 to %idx16 step %c1 {
          %20 = memref.load %alloc_21[%arg1, %arg2] : memref<16x16xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = memref.load %alloc_22[%arg0, %arg2] : memref<?x16xf64>
          %23 = arith.addf %22, %21 : f64
          memref.store %23, %alloc_22[%arg0, %arg2] : memref<?x16xf64>
        }
        memref.store %cst_1, %alloc_23[%arg1] : memref<16xf64>
      }
    }
    %12 = call @getTime() : () -> f64
    %alloc_25 = memref.alloc() : memref<1xf64>
    memref.store %cst_1, %alloc_25[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c16 step %c1 {
        %14 = memref.load %alloc_22[%arg0, %arg1] : memref<?x16xf64>
        %15 = memref.load %alloc_25[%c0] : memref<1xf64>
        %16 = arith.addf %14, %15 : f64
        memref.store %16, %alloc_25[%c0] : memref<1xf64>
      }
    }
    %13 = memref.load %alloc_25[%c0] : memref<1xf64>
    call @printF64(%13) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%11, %12) : (f64, f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c16 = arith.constant 16 : index
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
    %idx16 = index.constant 16
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
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x16xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x16xf64>)
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<16x16xf64>)
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x16xf64>)
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<16xf64>)
    %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x16xf64>)
    %11 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %9 step %c1 {
      %14 = arith.addi %arg0, %c1 : index
      %15 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %16 = arith.index_cast %15 : i64 to index
      %17 = memref.load %alloc_10[%14] : memref<?xi64>
      %18 = arith.index_cast %17 : i64 to index
      scf.for %arg1 = %16 to %18 step %c1 {
        %19 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %20 = arith.index_cast %19 : i64 to index
        %21 = memref.load %alloc_18[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx16 step %c1 {
          %22 = memref.load %alloc_20[%20, %arg2] : memref<?x16xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = memref.load %alloc_23[%arg2] : memref<16xf64>
          %25 = arith.addf %24, %23 : f64
          memref.store %25, %alloc_23[%arg2] : memref<16xf64>
        }
      }
      scf.for %arg1 = %c0 to %idx16 step %c1 {
        %19 = memref.load %alloc_23[%arg1] : memref<16xf64>
        scf.for %arg2 = %c0 to %idx16 step %c1 {
          %20 = memref.load %alloc_21[%arg1, %arg2] : memref<16x16xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = memref.load %alloc_22[%arg0, %arg2] : memref<?x16xf64>
          %23 = arith.addf %22, %21 : f64
          memref.store %23, %alloc_22[%arg0, %arg2] : memref<?x16xf64>
        }
        memref.store %cst_1, %alloc_23[%arg1] : memref<16xf64>
      }
    }
    %12 = call @getTime() : () -> f64
    %alloc_25 = memref.alloc() : memref<1xf64>
    memref.store %cst_1, %alloc_25[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c16 step %c1 {
        %14 = memref.load %alloc_22[%arg0, %arg1] : memref<?x16xf64>
        %15 = memref.load %alloc_25[%c0] : memref<1xf64>
        %16 = arith.addf %14, %15 : f64
        memref.store %16, %alloc_25[%c0] : memref<1xf64>
      }
    }
    %13 = memref.load %alloc_25[%c0] : memref<1xf64>
    call @printF64(%13) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%11, %12) : (f64, f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


module {
  func.func @main() {
    %c16 = arith.constant 16 : index
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
    %idx16 = index.constant 16
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
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x16xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x16xf64>)
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<16x16xf64>)
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x16xf64>)
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<16xf64>)
    %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x16xf64>)
    %11 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %9 step %c1 {
      %14 = arith.addi %arg0, %c1 : index
      %15 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %16 = arith.index_cast %15 : i64 to index
      %17 = memref.load %alloc_10[%14] : memref<?xi64>
      %18 = arith.index_cast %17 : i64 to index
      scf.for %arg1 = %16 to %18 step %c1 {
        %19 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %20 = arith.index_cast %19 : i64 to index
        %21 = memref.load %alloc_18[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx16 step %c1 {
          %22 = memref.load %alloc_20[%20, %arg2] : memref<?x16xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = memref.load %alloc_23[%arg2] : memref<16xf64>
          %25 = arith.addf %24, %23 : f64
          memref.store %25, %alloc_23[%arg2] : memref<16xf64>
        }
      }
      scf.for %arg1 = %c0 to %idx16 step %c1 {
        %19 = memref.load %alloc_23[%arg1] : memref<16xf64>
        scf.for %arg2 = %c0 to %idx16 step %c1 {
          %20 = memref.load %alloc_21[%arg1, %arg2] : memref<16x16xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = memref.load %alloc_22[%arg0, %arg2] : memref<?x16xf64>
          %23 = arith.addf %22, %21 : f64
          memref.store %23, %alloc_22[%arg0, %arg2] : memref<?x16xf64>
        }
        memref.store %cst_1, %alloc_23[%arg1] : memref<16xf64>
      }
    }
    %12 = call @getTime() : () -> f64
    %alloc_25 = memref.alloc() : memref<1xf64>
    memref.store %cst_1, %alloc_25[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c16 step %c1 {
        %14 = memref.load %alloc_22[%arg0, %arg1] : memref<?x16xf64>
        %15 = memref.load %alloc_25[%c0] : memref<1xf64>
        %16 = arith.addf %14, %15 : f64
        memref.store %16, %alloc_25[%c0] : memref<1xf64>
      }
    }
    %13 = memref.load %alloc_25[%c0] : memref<1xf64>
    call @printF64(%13) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%11, %12) : (f64, f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
  func.func private @printF64(f64)
  func.func private @printNewline()
}
