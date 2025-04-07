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
    %7 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %8 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<4x?xf64>
    %9 = "ta.spTensor_decl"(%5, %6) <{format = "CSR", temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %cst = arith.constant 0.000000e+00 : f64
    %10 = "ta.dense_tensor_decl"(%5, %6) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
    "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
    "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
    %11:2 = "it.itree"(%9, %cst) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: f64):
      %12 = "it.RootOp"() : () -> !it.index_tree
      %13 = "it.DenseDomainOp"(%1, %0, %7) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>) -> !it.domain
      %14 = "it.IndexOp"(%12, %13) : (!it.index_tree, !it.domain) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%0, %14) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %15 = "it.SparseDomainOp"(%0, %2, %3, %dim, %dim_0, %4, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
      %16 = "it.IndexOp"(%14, %15) : (!it.index, !it.domain) -> !it.index
      %17 = "it.DenseDomainOp"(%idx4, %7, %8) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<?x4xf64>, tensor<4x?xf64>) -> !it.domain
      %18 = "it.IndexOp"(%16, %17) : (!it.index, !it.domain) -> !it.index
      %19 = "it.LHSOperandOp"(%arg1) : (f64) -> !it.operand
      %crd_1, %pos_2 = "it.IndexToTensorDim"(%7, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_3, %pos_4 = "it.IndexToTensorDim"(%7, %18, %pos_2) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %20 = "it.OperandOp"(%7, %pos_2, %pos_4, %crd_1, %crd_3) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %crd_5, %pos_6 = "it.IndexToTensorDim"(%8, %18) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
      %crd_7, %pos_8 = "it.IndexToTensorDim"(%8, %16, %pos_6) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
      %21 = "it.OperandOp"(%8, %pos_6, %pos_8, %crd_5, %crd_7) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
      %22 = "it.ComputeOp"(%18, %19, %20, %21) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
      %crd_9, %pos_10 = "it.IndexToTensorDim"(%arg0, %14) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %crd_11, %pos_12 = "it.IndexToTensorDim"(%arg0, %16, %pos_10) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %23 = "it.LHSOperandOp"(%arg0, %pos_10, %pos_12, %crd_9, %crd_11) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_13, %pos_14 = "it.IndexToTensorDim"(%0, %16, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %24 = "it.OperandOp"(%0, %pos, %pos_14, %crd, %crd_13) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %25 = "it.OperandOp"(%22) : (f64) -> !it.operand
      %26 = "it.ComputeOp"(%16, %23, %24, %25) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %27 = "it.LHSOperandOp"(%22) : (f64) -> !it.operand
      %cst_15 = arith.constant 0.000000e+00 : f64
      %28 = "it.OperandOp"(%cst_15) : (f64) -> !it.operand
      %29 = "it.ComputeOp"(%16, %27, %28) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
      it.yield %26, %29 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64
    }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, f64)
    "ta.set_op"(%11#0, %9) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.print"(%9) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    return
  }
}
