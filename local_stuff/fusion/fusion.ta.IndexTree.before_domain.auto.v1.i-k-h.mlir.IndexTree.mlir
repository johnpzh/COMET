// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.index_label"() : () -> !ta.index
    %4 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %c0 = arith.constant 0 : index
    %5 = "ta.dim"(%4, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %c1 = arith.constant 1 : index
    %6 = "ta.dim"(%4, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %7 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    %9 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %10 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4xf64>
    "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<4xf64>) -> ()
    "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    %11:2 = "it.itree"(%10, %9) ({
    ^bb0(%arg0: tensor<4xf64>, %arg1: tensor<?x4xf64>):
      %12 = "it.RootOp"() : () -> !it.index_tree
      %13 = "it.IndexOp"(%12) : (!it.index_tree) -> !it.index
      %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index
      %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%arg0, %15) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
      %16 = "it.LHSOperandOp"(%arg0, %pos, %crd) : (tensor<4xf64>, index, index) -> !it.operand
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%4, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%4, %14, %pos_1) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %17 = "it.OperandOp"(%4, %pos_1, %pos_3, %crd_0, %crd_2) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%7, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %15, %pos_5) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %18 = "it.OperandOp"(%7, %pos_5, %pos_7, %crd_4, %crd_6) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %19 = "it.ComputeOp"(%15, %16, %17, %18) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4xf64>
      %20 = "it.IndexOp"(%13) : (!it.index) -> !it.index
      %21 = "it.IndexOp"(%20) : (!it.index) -> !it.index
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%arg1, %13) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_10, %pos_11 = "it.IndexToTensorDim"(%arg1, %21, %pos_9) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %22 = "it.LHSOperandOp"(%arg1, %pos_9, %pos_11, %crd_8, %crd_10) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %crd_12, %pos_13 = "it.IndexToTensorDim"(%19, %20) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
      %23 = "it.OperandOp"(%19, %pos_13, %crd_12) : (tensor<4xf64>, index, index) -> !it.operand
      %crd_14, %pos_15 = "it.IndexToTensorDim"(%8, %20) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
      %crd_16, %pos_17 = "it.IndexToTensorDim"(%8, %21, %pos_15) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
      %24 = "it.OperandOp"(%8, %pos_15, %pos_17, %crd_14, %crd_16) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
      %25 = "it.ComputeOp"(%21, %22, %23, %24) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
      %crd_18, %pos_19 = "it.IndexToTensorDim"(%19, %20) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
      %26 = "it.LHSOperandOp"(%19, %pos_19, %crd_18) : (tensor<4xf64>, index, index) -> !it.operand
      %cst = arith.constant 0.000000e+00 : f64
      %27 = "it.OperandOp"(%cst) : (f64) -> !it.operand
      %28 = "it.ComputeOp"(%20, %26, %27) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<4xf64>
      it.yield %28, %25 : tensor<4xf64>, tensor<?x4xf64>
    }) : (tensor<4xf64>, tensor<?x4xf64>) -> (tensor<4xf64>, tensor<?x4xf64>)
    "ta.set_op"(%11#1, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    "ta.print"(%9) : (tensor<?x4xf64>) -> ()
    return
  }
}


// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.index_label"() : () -> !ta.index
  %4 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %c0 = arith.constant 0 : index
  %5 = "ta.dim"(%4, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1 = arith.constant 1 : index
  %6 = "ta.dim"(%4, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %7 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
  %9 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %10 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4xf64>
  "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<4xf64>) -> ()
  "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %11:2 = "it.itree"(%10, %9) ({
  ^bb0(%arg0: tensor<4xf64>, %arg1: tensor<?x4xf64>):
    %12 = "it.RootOp"() : () -> !it.index_tree
    %13 = "it.IndexOp"(%12) : (!it.index_tree) -> !it.index
    %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index
    %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %15) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %16 = "it.LHSOperandOp"(%arg0, %pos, %crd) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%4, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%4, %14, %pos_1) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %17 = "it.OperandOp"(%4, %pos_1, %pos_3, %crd_0, %crd_2) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%7, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %15, %pos_5) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %18 = "it.OperandOp"(%7, %pos_5, %pos_7, %crd_4, %crd_6) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %19 = "it.ComputeOp"(%15, %16, %17, %18) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4xf64>
    %20 = "it.IndexOp"(%13) : (!it.index) -> !it.index
    %21 = "it.IndexOp"(%20) : (!it.index) -> !it.index
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%arg1, %13) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%arg1, %21, %pos_9) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %22 = "it.LHSOperandOp"(%arg1, %pos_9, %pos_11, %crd_8, %crd_10) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%19, %20) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %23 = "it.OperandOp"(%19, %pos_13, %crd_12) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_14, %pos_15 = "it.IndexToTensorDim"(%8, %20) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_16, %pos_17 = "it.IndexToTensorDim"(%8, %21, %pos_15) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %24 = "it.OperandOp"(%8, %pos_15, %pos_17, %crd_14, %crd_16) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %25 = "it.ComputeOp"(%21, %22, %23, %24) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %crd_18, %pos_19 = "it.IndexToTensorDim"(%19, %20) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %26 = "it.LHSOperandOp"(%19, %pos_19, %crd_18) : (tensor<4xf64>, index, index) -> !it.operand
    %cst = arith.constant 0.000000e+00 : f64
    %27 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %28 = "it.ComputeOp"(%20, %26, %27) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<4xf64>
    it.yield %28, %25 : tensor<4xf64>, tensor<?x4xf64>
  }) : (tensor<4xf64>, tensor<?x4xf64>) -> (tensor<4xf64>, tensor<?x4xf64>)
  "ta.set_op"(%11#1, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%9) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainInference (indextree-domain-inference) //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %0 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %1 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %2 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %3 = "ta.dense_tensor_decl"(%2) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
  %5 = "ta.dense_tensor_decl"(%1) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %6 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4xf64>
  "ta.fill"(%6) <{value = 0.000000e+00 : f64}> : (tensor<4xf64>) -> ()
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%3) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %7:2 = "it.itree"(%6, %5) ({
  ^bb0(%arg0: tensor<4xf64>, %arg1: tensor<?x4xf64>):
    %8 = "it.RootOp"() : () -> !it.index_tree
    %9 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %10 = "it.IndexOp"(%8, %9) : (!it.index_tree, !it.domain) -> !it.index
    %11 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %12 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %13 = "it.DomainIntersectionOp"(%12, %11) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %14 = "it.IndexOp"(%10, %13) : (!it.index, !it.domain) -> !it.index
    %15 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %16 = "it.IndexOp"(%14, %15) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %16) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %17 = "it.LHSOperandOp"(%arg0, %pos, %crd) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%0, %10) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %14, %pos_1) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %18 = "it.OperandOp"(%0, %pos_1, %pos_3, %crd_0, %crd_2) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%3, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%3, %16, %pos_5) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %19 = "it.OperandOp"(%3, %pos_5, %pos_7, %crd_4, %crd_6) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %20 = "it.ComputeOp"(%16, %17, %18, %19) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4xf64>
    %21 = "it.DomainOp"(%4) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %22 = "it.DomainOp"(%20) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4xf64>) -> !it.domain
    %23 = "it.DomainIntersectionOp"(%22, %21) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %24 = "it.IndexOp"(%10, %23) : (!it.index, !it.domain) -> !it.index
    %25 = "it.DomainOp"(%4) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %26 = "it.IndexOp"(%24, %25) : (!it.index, !it.domain) -> !it.index
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%arg1, %10) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%arg1, %26, %pos_9) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %27 = "it.LHSOperandOp"(%arg1, %pos_9, %pos_11, %crd_8, %crd_10) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%20, %24) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %28 = "it.OperandOp"(%20, %pos_13, %crd_12) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_14, %pos_15 = "it.IndexToTensorDim"(%4, %24) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_16, %pos_17 = "it.IndexToTensorDim"(%4, %26, %pos_15) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %29 = "it.OperandOp"(%4, %pos_15, %pos_17, %crd_14, %crd_16) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %30 = "it.ComputeOp"(%26, %27, %28, %29) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %crd_18, %pos_19 = "it.IndexToTensorDim"(%20, %24) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %31 = "it.LHSOperandOp"(%20, %pos_19, %crd_18) : (tensor<4xf64>, index, index) -> !it.operand
    %32 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %33 = "it.ComputeOp"(%24, %31, %32) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<4xf64>
    it.yield %33, %30 : tensor<4xf64>, tensor<?x4xf64>
  }) : (tensor<4xf64>, tensor<?x4xf64>) -> (tensor<4xf64>, tensor<?x4xf64>)
  "ta.set_op"(%7#1, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%5) : (tensor<?x4xf64>) -> ()
  return
}

module {
  func.func @main() {
    %cst = arith.constant 0.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %0 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %1 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %2 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %3 = "ta.dense_tensor_decl"(%2) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    %5 = "ta.dense_tensor_decl"(%1) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %6 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4xf64>
    "ta.fill"(%6) <{value = 0.000000e+00 : f64}> : (tensor<4xf64>) -> ()
    "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%3) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    %7:2 = "it.itree"(%6, %5) ({
    ^bb0(%arg0: tensor<4xf64>, %arg1: tensor<?x4xf64>):
      %8 = "it.RootOp"() : () -> !it.index_tree
      %9 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
      %10 = "it.IndexOp"(%8, %9) : (!it.index_tree, !it.domain) -> !it.index
      %11 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
      %12 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
      %13 = "it.DomainIntersectionOp"(%12, %11) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
      %14 = "it.IndexOp"(%10, %13) : (!it.index, !it.domain) -> !it.index
      %15 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
      %16 = "it.IndexOp"(%14, %15) : (!it.index, !it.domain) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%arg0, %16) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
      %17 = "it.LHSOperandOp"(%arg0, %pos, %crd) : (tensor<4xf64>, index, index) -> !it.operand
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%0, %10) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %14, %pos_1) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %18 = "it.OperandOp"(%0, %pos_1, %pos_3, %crd_0, %crd_2) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%3, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%3, %16, %pos_5) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %19 = "it.OperandOp"(%3, %pos_5, %pos_7, %crd_4, %crd_6) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %20 = "it.ComputeOp"(%16, %17, %18, %19) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4xf64>
      %21 = "it.DomainOp"(%4) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
      %22 = "it.DomainOp"(%20) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4xf64>) -> !it.domain
      %23 = "it.DomainIntersectionOp"(%22, %21) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
      %24 = "it.IndexOp"(%10, %23) : (!it.index, !it.domain) -> !it.index
      %25 = "it.DomainOp"(%4) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
      %26 = "it.IndexOp"(%24, %25) : (!it.index, !it.domain) -> !it.index
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%arg1, %10) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_10, %pos_11 = "it.IndexToTensorDim"(%arg1, %26, %pos_9) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %27 = "it.LHSOperandOp"(%arg1, %pos_9, %pos_11, %crd_8, %crd_10) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %crd_12, %pos_13 = "it.IndexToTensorDim"(%20, %24) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
      %28 = "it.OperandOp"(%20, %pos_13, %crd_12) : (tensor<4xf64>, index, index) -> !it.operand
      %crd_14, %pos_15 = "it.IndexToTensorDim"(%4, %24) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
      %crd_16, %pos_17 = "it.IndexToTensorDim"(%4, %26, %pos_15) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
      %29 = "it.OperandOp"(%4, %pos_15, %pos_17, %crd_14, %crd_16) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
      %30 = "it.ComputeOp"(%26, %27, %28, %29) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
      %crd_18, %pos_19 = "it.IndexToTensorDim"(%20, %24) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
      %31 = "it.LHSOperandOp"(%20, %pos_19, %crd_18) : (tensor<4xf64>, index, index) -> !it.operand
      %32 = "it.OperandOp"(%cst) : (f64) -> !it.operand
      %33 = "it.ComputeOp"(%24, %31, %32) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<4xf64>
      it.yield %33, %30 : tensor<4xf64>, tensor<?x4xf64>
    }) : (tensor<4xf64>, tensor<?x4xf64>) -> (tensor<4xf64>, tensor<?x4xf64>)
    "ta.set_op"(%7#1, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    "ta.print"(%5) : (tensor<?x4xf64>) -> ()
    return
  }
}
