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
      %35 = "it.IndexOp"(%18, %21) : (!it.index, !it.domain) -> !it.index
      %crd_19, %pos_20 = "it.IndexToTensorDim"(%26, %35) <{dim = 0 : ui32}> : (tensor<16xf64>, !it.index) -> (index, index)
      %36 = "it.LHSOperandOp"(%26, %pos_20, %crd_19) : (tensor<16xf64>, index, index) -> !it.operand
      %cst = arith.constant 0.000000e+00 : f64
      %37 = "it.OperandOp"(%cst) : (f64) -> !it.operand
      %38 = "it.ComputeOp"(%35, %36, %37) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<16xf64>
      it.yield %34, %38 : tensor<?x16xf64>, tensor<16xf64>
    }) : (tensor<?x16xf64>, tensor<16xf64>) -> (tensor<?x16xf64>, tensor<16xf64>)
    "ta.set_op"(%13#0, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<?x16xf64>) -> ()
    %14 = "ta.getTime"() : () -> f64
    %15 = "ta.reduce"(%9) : (tensor<?x16xf64>) -> f64
    "ta.print"(%15) : (f64) -> ()
    "ta.print_elapsed_time"(%12, %14) : (f64, f64) -> ()
    return
  }
}
