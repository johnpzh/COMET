module {
  func.func @main() {
    %idx4 = index.constant 4
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
    %7 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    %9 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %10 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4xf64>
    "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<4xf64>) -> ()
    %11 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%11) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    %12:2 = "it.itree"(%9, %10) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: tensor<?x4xf64>, %arg1: tensor<4xf64>):
      %13 = "it.RootOp"() : () -> !it.index_tree
      %14 = "it.DenseDomainOp"(%1, %0) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
      %15 = "it.IndexOp"(%13, %14) : (!it.index_tree, !it.domain) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%0, %15) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %16 = "it.SparseDomainOp"(%0, %2, %3, %dim, %dim_0, %4, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
      %17 = "it.IndexOp"(%15, %16) : (!it.index, !it.domain) -> !it.index
      %18 = "it.DenseDomainOp"(%idx4, %7) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
      %19 = "it.IndexOp"(%17, %18) : (!it.index, !it.domain) -> !it.index
      %crd_1, %pos_2 = "it.IndexToTensorDim"(%arg1, %19) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
      %20 = "it.LHSOperandOp"(%arg1, %pos_2, %crd_1) : (tensor<4xf64>, index, index) -> !it.operand
      %crd_3, %pos_4 = "it.IndexToTensorDim"(%0, %17, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %21 = "it.OperandOp"(%0, %pos, %pos_4, %crd, %crd_3) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_5, %pos_6 = "it.IndexToTensorDim"(%7, %17) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_7, %pos_8 = "it.IndexToTensorDim"(%7, %19, %pos_6) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %22 = "it.OperandOp"(%7, %pos_6, %pos_8, %crd_5, %crd_7) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %23 = "it.ComputeOp"(%19, %20, %21, %22) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4xf64>
      %24 = "it.DenseDomainOp"(%idx4, %23, %8) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<4xf64>, tensor<4x4xf64>) -> !it.domain
      %25 = "it.IndexOp"(%15, %24) : (!it.index, !it.domain) -> !it.index
      %26 = "it.DenseDomainOp"(%idx4, %8) <{dims = [1 : i32]}> : (index, tensor<4x4xf64>) -> !it.domain
      %27 = "it.IndexOp"(%25, %26) : (!it.index, !it.domain) -> !it.index
      %crd_9, %pos_10 = "it.IndexToTensorDim"(%arg0, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_11, %pos_12 = "it.IndexToTensorDim"(%arg0, %27, %pos_10) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %28 = "it.LHSOperandOp"(%arg0, %pos_10, %pos_12, %crd_9, %crd_11) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %crd_13, %pos_14 = "it.IndexToTensorDim"(%23, %25) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
      %29 = "it.OperandOp"(%23, %pos_14, %crd_13) : (tensor<4xf64>, index, index) -> !it.operand
      %crd_15, %pos_16 = "it.IndexToTensorDim"(%8, %25) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
      %crd_17, %pos_18 = "it.IndexToTensorDim"(%8, %27, %pos_16) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
      %30 = "it.OperandOp"(%8, %pos_16, %pos_18, %crd_15, %crd_17) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
      %31 = "it.ComputeOp"(%27, %28, %29, %30) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
      %32 = "it.IndexOp"(%15, %18) : (!it.index, !it.domain) -> !it.index
      %crd_19, %pos_20 = "it.IndexToTensorDim"(%23, %32) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
      %33 = "it.LHSOperandOp"(%23, %pos_20, %crd_19) : (tensor<4xf64>, index, index) -> !it.operand
      %cst = arith.constant 0.000000e+00 : f64
      %34 = "it.OperandOp"(%cst) : (f64) -> !it.operand
      %35 = "it.ComputeOp"(%32, %33, %34) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<4xf64>
      it.yield %31, %35 : tensor<?x4xf64>, tensor<4xf64>
    }) : (tensor<?x4xf64>, tensor<4xf64>) -> (tensor<?x4xf64>, tensor<4xf64>)
    "ta.set_op"(%12#0, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    "ta.print"(%9) : (tensor<?x4xf64>) -> ()
    return
  }
}
