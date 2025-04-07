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

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
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
  %cst_30 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_30 : f64) outs(%alloc_29 : memref<?xf64>)
  %cast_31 = memref.cast %alloc_29 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_13, %cast_16, %cast_19, %cast_22, %cast_25, %cast_28, %cast_31, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %23 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %24 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %25 = "ta.dense_tensor_decl"(%24) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %26 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
  %27 = "ta.dense_tensor_decl"(%23) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %28 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4xf64>
  "ta.fill"(%28) <{value = 0.000000e+00 : f64}> : (tensor<4xf64>) -> ()
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%27) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %29:2 = "it.itree"(%28, %27) ({
  ^bb0(%arg0: tensor<4xf64>, %arg1: tensor<?x4xf64>):
    %30 = "it.RootOp"() : () -> !it.index_tree
    %31 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %32 = "it.IndexOp"(%30, %31) : (!it.index_tree, !it.domain) -> !it.index
    %33 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %34 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.DomainIntersectionOp"(%34, %33) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %36 = "it.IndexOp"(%32, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %38 = "it.IndexOp"(%36, %37) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %38) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %39 = "it.LHSOperandOp"(%arg0, %pos, %crd) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%22, %32) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%22, %36, %pos_33) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%22, %pos_33, %pos_35, %crd_32, %crd_34) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%25, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%25, %38, %pos_37) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%25, %pos_37, %pos_39, %crd_36, %crd_38) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %42 = "it.ComputeOp"(%38, %39, %40, %41) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4xf64>
    %43 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %44 = "it.DomainOp"(%42) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4xf64>) -> !it.domain
    %45 = "it.DomainIntersectionOp"(%44, %43) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %46 = "it.IndexOp"(%32, %45) : (!it.index, !it.domain) -> !it.index
    %47 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %48 = "it.IndexOp"(%46, %47) : (!it.index, !it.domain) -> !it.index
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%arg1, %32) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%arg1, %48, %pos_41) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %49 = "it.LHSOperandOp"(%arg1, %pos_41, %pos_43, %crd_40, %crd_42) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%42, %46) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %50 = "it.OperandOp"(%42, %pos_45, %crd_44) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%26, %46) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%26, %48, %pos_47) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %51 = "it.OperandOp"(%26, %pos_47, %pos_49, %crd_46, %crd_48) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %52 = "it.ComputeOp"(%48, %49, %50, %51) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%42, %46) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %53 = "it.LHSOperandOp"(%42, %pos_51, %crd_50) : (tensor<4xf64>, index, index) -> !it.operand
    %54 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %55 = "it.ComputeOp"(%46, %53, %54) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<4xf64>
    it.yield %55, %52 : tensor<4xf64>, tensor<?x4xf64>
  }) : (tensor<4xf64>, tensor<?x4xf64>) -> (tensor<4xf64>, tensor<?x4xf64>)
  "ta.set_op"(%29#1, %27) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%27) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
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
  %cst_30 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_30 : f64) outs(%alloc_29 : memref<?xf64>)
  %cast_31 = memref.cast %alloc_29 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_13, %cast_16, %cast_19, %cast_22, %cast_25, %cast_28, %cast_31, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %23 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %24 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_32 = memref.alloc(%24) {alignment = 32 : i64} : memref<?x4xf64>
  %25 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x4xf64>
  %alloc_33 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  %26 = bufferization.to_tensor %alloc_33 restrict writable : memref<4x4xf64>
  %alloc_34 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %27 = bufferization.to_tensor %alloc_34 restrict writable : memref<?x4xf64>
  %alloc_35 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  %28 = bufferization.to_tensor %alloc_35 restrict writable : memref<4xf64>
  "ta.fill"(%28) <{value = 0.000000e+00 : f64}> : (tensor<4xf64>) -> ()
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%27) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %29:2 = "it.itree"(%28, %27) ({
  ^bb0(%arg0: tensor<4xf64>, %arg1: tensor<?x4xf64>):
    %30 = "it.RootOp"() : () -> !it.index_tree
    %31 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %32 = "it.IndexOp"(%30, %31) : (!it.index_tree, !it.domain) -> !it.index
    %33 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %34 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.DomainIntersectionOp"(%34, %33) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %36 = "it.IndexOp"(%32, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %38 = "it.IndexOp"(%36, %37) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %38) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %39 = "it.LHSOperandOp"(%arg0, %pos, %crd) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%22, %32) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%22, %36, %pos_37) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%22, %pos_37, %pos_39, %crd_36, %crd_38) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%25, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%25, %38, %pos_41) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%25, %pos_41, %pos_43, %crd_40, %crd_42) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %42 = "it.ComputeOp"(%38, %39, %40, %41) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4xf64>
    %43 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %44 = "it.DomainOp"(%42) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4xf64>) -> !it.domain
    %45 = "it.DomainIntersectionOp"(%44, %43) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %46 = "it.IndexOp"(%32, %45) : (!it.index, !it.domain) -> !it.index
    %47 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %48 = "it.IndexOp"(%46, %47) : (!it.index, !it.domain) -> !it.index
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%arg1, %32) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%arg1, %48, %pos_45) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %49 = "it.LHSOperandOp"(%arg1, %pos_45, %pos_47, %crd_44, %crd_46) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%42, %46) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %50 = "it.OperandOp"(%42, %pos_49, %crd_48) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%26, %46) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%26, %48, %pos_51) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %51 = "it.OperandOp"(%26, %pos_51, %pos_53, %crd_50, %crd_52) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %52 = "it.ComputeOp"(%48, %49, %50, %51) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %crd_54, %pos_55 = "it.IndexToTensorDim"(%42, %46) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %53 = "it.LHSOperandOp"(%42, %pos_55, %crd_54) : (tensor<4xf64>, index, index) -> !it.operand
    %54 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %55 = "it.ComputeOp"(%46, %53, %54) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<4xf64>
    it.yield %55, %52 : tensor<4xf64>, tensor<?x4xf64>
  }) : (tensor<4xf64>, tensor<?x4xf64>) -> (tensor<4xf64>, tensor<?x4xf64>)
  "ta.set_op"(%29#1, %27) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%27) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
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
  %cst_30 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_30 : f64) outs(%alloc_29 : memref<?xf64>)
  %cast_31 = memref.cast %alloc_29 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_13, %cast_16, %cast_19, %cast_22, %cast_25, %cast_28, %cast_31, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %23 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %24 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_32 = memref.alloc(%24) {alignment = 32 : i64} : memref<?x4xf64>
  %25 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x4xf64>
  %alloc_33 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  %26 = bufferization.to_tensor %alloc_33 restrict writable : memref<4x4xf64>
  %alloc_34 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %27 = bufferization.to_tensor %alloc_34 restrict writable : memref<?x4xf64>
  %alloc_35 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  %28 = bufferization.to_tensor %alloc_35 restrict writable : memref<4xf64>
  "ta.fill"(%28) <{value = 0.000000e+00 : f64}> : (tensor<4xf64>) -> ()
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%27) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %29:2 = "it.itree"(%28, %27) ({
  ^bb0(%arg0: tensor<4xf64>, %arg1: tensor<?x4xf64>):
    %30 = "it.RootOp"() : () -> !it.index_tree
    %31 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %32 = "it.IndexOp"(%30, %31) : (!it.index_tree, !it.domain) -> !it.index
    %33 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %34 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.DomainIntersectionOp"(%34, %33) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %36 = "it.IndexOp"(%32, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %38 = "it.IndexOp"(%36, %37) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %38) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %39 = "it.LHSOperandOp"(%arg0, %pos, %crd) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%22, %32) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%22, %36, %pos_37) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%22, %pos_37, %pos_39, %crd_36, %crd_38) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%25, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%25, %38, %pos_41) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%25, %pos_41, %pos_43, %crd_40, %crd_42) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %42 = "it.ComputeOp"(%38, %39, %40, %41) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4xf64>
    %43 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %44 = "it.DomainOp"(%42) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4xf64>) -> !it.domain
    %45 = "it.DomainIntersectionOp"(%44, %43) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %46 = "it.IndexOp"(%32, %45) : (!it.index, !it.domain) -> !it.index
    %47 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %48 = "it.IndexOp"(%46, %47) : (!it.index, !it.domain) -> !it.index
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%arg1, %32) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%arg1, %48, %pos_45) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %49 = "it.LHSOperandOp"(%arg1, %pos_45, %pos_47, %crd_44, %crd_46) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%42, %46) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %50 = "it.OperandOp"(%42, %pos_49, %crd_48) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%26, %46) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%26, %48, %pos_51) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %51 = "it.OperandOp"(%26, %pos_51, %pos_53, %crd_50, %crd_52) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %52 = "it.ComputeOp"(%48, %49, %50, %51) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %crd_54, %pos_55 = "it.IndexToTensorDim"(%42, %46) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %53 = "it.LHSOperandOp"(%42, %pos_55, %crd_54) : (tensor<4xf64>, index, index) -> !it.operand
    %54 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %55 = "it.ComputeOp"(%46, %53, %54) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<4xf64>
    it.yield %55, %52 : tensor<4xf64>, tensor<?x4xf64>
  }) : (tensor<4xf64>, tensor<?x4xf64>) -> (tensor<4xf64>, tensor<?x4xf64>)
  "ta.set_op"(%29#1, %27) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%27) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
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
  %cst_30 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_30 : f64) outs(%alloc_29 : memref<?xf64>)
  %cast_31 = memref.cast %alloc_29 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_13, %cast_16, %cast_19, %cast_22, %cast_25, %cast_28, %cast_31, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %23 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %24 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_32 = memref.alloc(%24) {alignment = 32 : i64} : memref<?x4xf64>
  %25 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x4xf64>
  %alloc_33 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  %26 = bufferization.to_tensor %alloc_33 restrict writable : memref<4x4xf64>
  %alloc_34 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %27 = bufferization.to_tensor %alloc_34 restrict writable : memref<?x4xf64>
  %alloc_35 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  %28 = bufferization.to_tensor %alloc_35 restrict writable : memref<4xf64>
  "ta.fill"(%28) <{value = 0.000000e+00 : f64}> : (tensor<4xf64>) -> ()
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%27) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %29:2 = "it.itree"(%28, %27) ({
  ^bb0(%arg0: tensor<4xf64>, %arg1: tensor<?x4xf64>):
    %30 = "it.RootOp"() : () -> !it.index_tree
    %31 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %32 = "it.IndexOp"(%30, %31) : (!it.index_tree, !it.domain) -> !it.index
    %33 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %34 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.DomainIntersectionOp"(%34, %33) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %36 = "it.IndexOp"(%32, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %38 = "it.IndexOp"(%36, %37) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %38) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %39 = "it.LHSOperandOp"(%arg0, %pos, %crd) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%22, %32) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%22, %36, %pos_37) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%22, %pos_37, %pos_39, %crd_36, %crd_38) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%25, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%25, %38, %pos_41) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%25, %pos_41, %pos_43, %crd_40, %crd_42) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %42 = "it.ComputeOp"(%38, %39, %40, %41) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4xf64>
    %43 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %44 = "it.DomainOp"(%42) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4xf64>) -> !it.domain
    %45 = "it.DomainIntersectionOp"(%44, %43) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %46 = "it.IndexOp"(%32, %45) : (!it.index, !it.domain) -> !it.index
    %47 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %48 = "it.IndexOp"(%46, %47) : (!it.index, !it.domain) -> !it.index
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%arg1, %32) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%arg1, %48, %pos_45) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %49 = "it.LHSOperandOp"(%arg1, %pos_45, %pos_47, %crd_44, %crd_46) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%42, %46) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %50 = "it.OperandOp"(%42, %pos_49, %crd_48) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%26, %46) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%26, %48, %pos_51) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %51 = "it.OperandOp"(%26, %pos_51, %pos_53, %crd_50, %crd_52) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %52 = "it.ComputeOp"(%48, %49, %50, %51) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %crd_54, %pos_55 = "it.IndexToTensorDim"(%42, %46) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %53 = "it.LHSOperandOp"(%42, %pos_55, %crd_54) : (tensor<4xf64>, index, index) -> !it.operand
    %54 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %55 = "it.ComputeOp"(%46, %53, %54) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<4xf64>
    it.yield %55, %52 : tensor<4xf64>, tensor<?x4xf64>
  }) : (tensor<4xf64>, tensor<?x4xf64>) -> (tensor<4xf64>, tensor<?x4xf64>)
  "ta.set_op"(%29#1, %27) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%27) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
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
  %cst_30 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_30 : f64) outs(%alloc_29 : memref<?xf64>)
  %cast_31 = memref.cast %alloc_29 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_13, %cast_16, %cast_19, %cast_22, %cast_25, %cast_28, %cast_31, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %23 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %24 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_32 = memref.alloc(%24) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_33 = arith.constant 1.200000e+00 : f64
  linalg.fill ins(%cst_33 : f64) outs(%alloc_32 : memref<?x4xf64>)
  %25 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x4xf64>
  %alloc_34 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  %cst_35 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_35 : f64) outs(%alloc_34 : memref<4x4xf64>)
  %26 = bufferization.to_tensor %alloc_34 restrict writable : memref<4x4xf64>
  %alloc_36 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_37 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_37 : f64) outs(%alloc_36 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_36 restrict writable : memref<?x4xf64>
  %alloc_38 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  %cst_39 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_39 : f64) outs(%alloc_38 : memref<4xf64>)
  %28 = bufferization.to_tensor %alloc_38 restrict writable : memref<4xf64>
  %29:2 = "it.itree"(%28, %27) ({
  ^bb0(%arg0: tensor<4xf64>, %arg1: tensor<?x4xf64>):
    %30 = "it.RootOp"() : () -> !it.index_tree
    %31 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %32 = "it.IndexOp"(%30, %31) : (!it.index_tree, !it.domain) -> !it.index
    %33 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %34 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.DomainIntersectionOp"(%34, %33) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %36 = "it.IndexOp"(%32, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %38 = "it.IndexOp"(%36, %37) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %38) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %39 = "it.LHSOperandOp"(%arg0, %pos, %crd) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%22, %32) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%22, %36, %pos_41) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%22, %pos_41, %pos_43, %crd_40, %crd_42) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%25, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%25, %38, %pos_45) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%25, %pos_45, %pos_47, %crd_44, %crd_46) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %42 = "it.ComputeOp"(%38, %39, %40, %41) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4xf64>
    %43 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %44 = "it.DomainOp"(%42) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4xf64>) -> !it.domain
    %45 = "it.DomainIntersectionOp"(%44, %43) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %46 = "it.IndexOp"(%32, %45) : (!it.index, !it.domain) -> !it.index
    %47 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %48 = "it.IndexOp"(%46, %47) : (!it.index, !it.domain) -> !it.index
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%arg1, %32) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%arg1, %48, %pos_49) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %49 = "it.LHSOperandOp"(%arg1, %pos_49, %pos_51, %crd_48, %crd_50) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%42, %46) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %50 = "it.OperandOp"(%42, %pos_53, %crd_52) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_54, %pos_55 = "it.IndexToTensorDim"(%26, %46) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_56, %pos_57 = "it.IndexToTensorDim"(%26, %48, %pos_55) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %51 = "it.OperandOp"(%26, %pos_55, %pos_57, %crd_54, %crd_56) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %52 = "it.ComputeOp"(%48, %49, %50, %51) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %crd_58, %pos_59 = "it.IndexToTensorDim"(%42, %46) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %53 = "it.LHSOperandOp"(%42, %pos_59, %crd_58) : (tensor<4xf64>, index, index) -> !it.operand
    %54 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %55 = "it.ComputeOp"(%46, %53, %54) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<4xf64>
    it.yield %55, %52 : tensor<4xf64>, tensor<?x4xf64>
  }) : (tensor<4xf64>, tensor<?x4xf64>) -> (tensor<4xf64>, tensor<?x4xf64>)
  "ta.set_op"(%29#1, %27) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%27) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
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
  %cst_30 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_30 : f64) outs(%alloc_29 : memref<?xf64>)
  %cast_31 = memref.cast %alloc_29 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_13, %cast_16, %cast_19, %cast_22, %cast_25, %cast_28, %cast_31, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %24 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_32 = memref.alloc(%24) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_33 = arith.constant 1.200000e+00 : f64
  linalg.fill ins(%cst_33 : f64) outs(%alloc_32 : memref<?x4xf64>)
  %25 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x4xf64>
  %alloc_34 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  %cst_35 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_35 : f64) outs(%alloc_34 : memref<4x4xf64>)
  %26 = bufferization.to_tensor %alloc_34 restrict writable : memref<4x4xf64>
  %alloc_36 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_37 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_37 : f64) outs(%alloc_36 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_36 restrict writable : memref<?x4xf64>
  %alloc_38 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  %cst_39 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_39 : f64) outs(%alloc_38 : memref<4xf64>)
  %28 = bufferization.to_tensor %alloc_38 restrict writable : memref<4xf64>
  %29:2 = "it.itree"(%28, %27) ({
  ^bb0(%arg0: tensor<4xf64>, %arg1: tensor<?x4xf64>):
    %30 = "it.RootOp"() : () -> !it.index_tree
    %31 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %32 = "it.IndexOp"(%30, %31) : (!it.index_tree, !it.domain) -> !it.index
    %33 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %34 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.DomainIntersectionOp"(%34, %33) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %36 = "it.IndexOp"(%32, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %38 = "it.IndexOp"(%36, %37) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %38) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %39 = "it.LHSOperandOp"(%arg0, %pos, %crd) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%22, %32) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%22, %36, %pos_41) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%22, %pos_41, %pos_43, %crd_40, %crd_42) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%25, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%25, %38, %pos_45) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%25, %pos_45, %pos_47, %crd_44, %crd_46) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %42 = "it.ComputeOp"(%38, %39, %40, %41) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4xf64>
    %43 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %44 = "it.DomainOp"(%42) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4xf64>) -> !it.domain
    %45 = "it.DomainIntersectionOp"(%44, %43) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %46 = "it.IndexOp"(%32, %45) : (!it.index, !it.domain) -> !it.index
    %47 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %48 = "it.IndexOp"(%46, %47) : (!it.index, !it.domain) -> !it.index
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%arg1, %32) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%arg1, %48, %pos_49) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %49 = "it.LHSOperandOp"(%arg1, %pos_49, %pos_51, %crd_48, %crd_50) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%42, %46) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %50 = "it.OperandOp"(%42, %pos_53, %crd_52) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_54, %pos_55 = "it.IndexToTensorDim"(%26, %46) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_56, %pos_57 = "it.IndexToTensorDim"(%26, %48, %pos_55) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %51 = "it.OperandOp"(%26, %pos_55, %pos_57, %crd_54, %crd_56) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %52 = "it.ComputeOp"(%48, %49, %50, %51) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %crd_58, %pos_59 = "it.IndexToTensorDim"(%42, %46) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %53 = "it.LHSOperandOp"(%42, %pos_59, %crd_58) : (tensor<4xf64>, index, index) -> !it.operand
    %54 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %55 = "it.ComputeOp"(%46, %53, %54) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<4xf64>
    it.yield %55, %52 : tensor<4xf64>, tensor<?x4xf64>
  }) : (tensor<4xf64>, tensor<?x4xf64>) -> (tensor<4xf64>, tensor<?x4xf64>)
  "ta.set_op"(%29#1, %27) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%27) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
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
  %cst_30 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_30 : f64) outs(%alloc_29 : memref<?xf64>)
  %cast_31 = memref.cast %alloc_29 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_13, %cast_16, %cast_19, %cast_22, %cast_25, %cast_28, %cast_31, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
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
  %24 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_32 = memref.alloc(%24) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_33 = arith.constant 1.200000e+00 : f64
  linalg.fill ins(%cst_33 : f64) outs(%alloc_32 : memref<?x4xf64>)
  %25 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x4xf64>
  %alloc_34 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  %cst_35 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_35 : f64) outs(%alloc_34 : memref<4x4xf64>)
  %26 = bufferization.to_tensor %alloc_34 restrict writable : memref<4x4xf64>
  %alloc_36 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_37 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_37 : f64) outs(%alloc_36 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_36 restrict writable : memref<?x4xf64>
  %alloc_38 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  %cst_39 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_39 : f64) outs(%alloc_38 : memref<4xf64>)
  %28 = bufferization.to_tensor %alloc_38 restrict writable : memref<4xf64>
  %29:2 = "it.itree"(%28, %27) ({
  ^bb0(%arg0: tensor<4xf64>, %arg1: tensor<?x4xf64>):
    %30 = "it.RootOp"() : () -> !it.index_tree
    %31 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %32 = "it.IndexOp"(%30, %31) : (!it.index_tree, !it.domain) -> !it.index
    %33 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %34 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.DomainIntersectionOp"(%34, %33) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %36 = "it.IndexOp"(%32, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %38 = "it.IndexOp"(%36, %37) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %38) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %39 = "it.LHSOperandOp"(%arg0, %pos, %crd) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%22, %32) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%22, %36, %pos_41) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%22, %pos_41, %pos_43, %crd_40, %crd_42) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%25, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%25, %38, %pos_45) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%25, %pos_45, %pos_47, %crd_44, %crd_46) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %42 = "it.ComputeOp"(%38, %39, %40, %41) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4xf64>
    %43 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %44 = "it.DomainOp"(%42) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4xf64>) -> !it.domain
    %45 = "it.DomainIntersectionOp"(%44, %43) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %46 = "it.IndexOp"(%32, %45) : (!it.index, !it.domain) -> !it.index
    %47 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %48 = "it.IndexOp"(%46, %47) : (!it.index, !it.domain) -> !it.index
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%arg1, %32) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%arg1, %48, %pos_49) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %49 = "it.LHSOperandOp"(%arg1, %pos_49, %pos_51, %crd_48, %crd_50) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%42, %46) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %50 = "it.OperandOp"(%42, %pos_53, %crd_52) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_54, %pos_55 = "it.IndexToTensorDim"(%26, %46) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_56, %pos_57 = "it.IndexToTensorDim"(%26, %48, %pos_55) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %51 = "it.OperandOp"(%26, %pos_55, %pos_57, %crd_54, %crd_56) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %52 = "it.ComputeOp"(%48, %49, %50, %51) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %crd_58, %pos_59 = "it.IndexToTensorDim"(%42, %46) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %53 = "it.LHSOperandOp"(%42, %pos_59, %crd_58) : (tensor<4xf64>, index, index) -> !it.operand
    %54 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %55 = "it.ComputeOp"(%46, %53, %54) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<4xf64>
    it.yield %55, %52 : tensor<4xf64>, tensor<?x4xf64>
  }) : (tensor<4xf64>, tensor<?x4xf64>) -> (tensor<4xf64>, tensor<?x4xf64>)
  "ta.print"(%29#1) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %idx4 = index.constant 4
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
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
  %cst_1 = arith.constant 0.000000e+00 : f64
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
  %alloc_21 = memref.alloc(%26) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %alloc_22 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_22 : memref<4x4xf64>)
  %28 = bufferization.to_tensor %alloc_22 restrict writable : memref<4x4xf64>
  %alloc_23 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
  %29 = bufferization.to_tensor %alloc_23 restrict writable : memref<?x4xf64>
  %alloc_24 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<4xf64>)
  %30 = bufferization.to_tensor %alloc_24 restrict writable : memref<4xf64>
  %31:2 = "it.itree"(%30, %29) ({
  ^bb0(%arg0: tensor<4xf64>, %arg1: tensor<?x4xf64>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %35 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DenseDomainOp"(%idx4, %27) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %38 = "it.IndexOp"(%36, %37) : (!it.index, !it.domain) -> !it.index
    %crd_25, %pos_26 = "it.IndexToTensorDim"(%arg0, %38) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %39 = "it.LHSOperandOp"(%arg0, %pos_26, %crd_25) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_27, %pos_28 = "it.IndexToTensorDim"(%20, %36, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%20, %pos, %pos_28, %crd, %crd_27) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_29, %pos_30 = "it.IndexToTensorDim"(%27, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_31, %pos_32 = "it.IndexToTensorDim"(%27, %38, %pos_30) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%27, %pos_30, %pos_32, %crd_29, %crd_31) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %42 = "it.ComputeOp"(%38, %39, %40, %41) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4xf64>
    %43 = "it.DenseDomainOp"(%idx4, %42, %28) <{dims = [0 : i32, 0 : i32]}> : (index, tensor<4xf64>, tensor<4x4xf64>) -> !it.domain
    %44 = "it.IndexOp"(%34, %43) : (!it.index, !it.domain) -> !it.index
    %45 = "it.DenseDomainOp"(%idx4, %28) <{dims = [1 : i32]}> : (index, tensor<4x4xf64>) -> !it.domain
    %46 = "it.IndexOp"(%44, %45) : (!it.index, !it.domain) -> !it.index
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%arg1, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%arg1, %46, %pos_34) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %47 = "it.LHSOperandOp"(%arg1, %pos_34, %pos_36, %crd_33, %crd_35) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%42, %44) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %48 = "it.OperandOp"(%42, %pos_38, %crd_37) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%28, %44) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%28, %46, %pos_40) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %49 = "it.OperandOp"(%28, %pos_40, %pos_42, %crd_39, %crd_41) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %50 = "it.ComputeOp"(%46, %47, %48, %49) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%42, %44) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %51 = "it.LHSOperandOp"(%42, %pos_44, %crd_43) : (tensor<4xf64>, index, index) -> !it.operand
    %52 = "it.OperandOp"(%cst_1) : (f64) -> !it.operand
    %53 = "it.ComputeOp"(%44, %51, %52) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<4xf64>
    it.yield %53, %50 : tensor<4xf64>, tensor<?x4xf64>
  }) : (tensor<4xf64>, tensor<?x4xf64>) -> (tensor<4xf64>, tensor<?x4xf64>)
  "ta.print"(%31#1) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func @main() {
  %idx4 = index.constant 4
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
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
  %cst_1 = arith.constant 0.000000e+00 : f64
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
  %alloc_21 = memref.alloc(%26) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %alloc_22 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_22 : memref<4x4xf64>)
  %28 = bufferization.to_tensor %alloc_22 restrict writable : memref<4x4xf64>
  %alloc_23 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
  %29 = bufferization.to_tensor %alloc_23 restrict writable : memref<?x4xf64>
  %alloc_24 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<4xf64>)
  %30 = bufferization.to_tensor %alloc_24 restrict writable : memref<4xf64>
  %31:2 = "it.itree"(%30, %29) ({
  ^bb0(%arg0: tensor<4xf64>, %arg1: tensor<?x4xf64>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %35 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DenseDomainOp"(%idx4, %27) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %38 = "it.IndexOp"(%36, %37) : (!it.index, !it.domain) -> !it.index
    %crd_25, %pos_26 = "it.IndexToTensorDim"(%arg0, %38) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %39 = "it.LHSOperandOp"(%arg0, %pos_26, %crd_25) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_27, %pos_28 = "it.IndexToTensorDim"(%20, %36, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%20, %pos, %pos_28, %crd, %crd_27) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_29, %pos_30 = "it.IndexToTensorDim"(%27, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_31, %pos_32 = "it.IndexToTensorDim"(%27, %38, %pos_30) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%27, %pos_30, %pos_32, %crd_29, %crd_31) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %42 = "it.ComputeOp"(%38, %39, %40, %41) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4xf64>
    %43 = "it.DenseDomainOp"(%idx4, %42, %28) <{dims = [0 : i32, 0 : i32]}> : (index, tensor<4xf64>, tensor<4x4xf64>) -> !it.domain
    %44 = "it.IndexOp"(%34, %43) : (!it.index, !it.domain) -> !it.index
    %45 = "it.DenseDomainOp"(%idx4, %28) <{dims = [1 : i32]}> : (index, tensor<4x4xf64>) -> !it.domain
    %46 = "it.IndexOp"(%44, %45) : (!it.index, !it.domain) -> !it.index
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%arg1, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%arg1, %46, %pos_34) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %47 = "it.LHSOperandOp"(%arg1, %pos_34, %pos_36, %crd_33, %crd_35) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%42, %44) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %48 = "it.OperandOp"(%42, %pos_38, %crd_37) : (tensor<4xf64>, index, index) -> !it.operand
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%28, %44) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%28, %46, %pos_40) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %49 = "it.OperandOp"(%28, %pos_40, %pos_42, %crd_39, %crd_41) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %50 = "it.ComputeOp"(%46, %47, %48, %49) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%42, %44) <{dim = 0 : ui32}> : (tensor<4xf64>, !it.index) -> (index, index)
    %51 = "it.LHSOperandOp"(%42, %pos_44, %crd_43) : (tensor<4xf64>, index, index) -> !it.operand
    %52 = "it.OperandOp"(%cst_1) : (f64) -> !it.operand
    %53 = "it.ComputeOp"(%44, %51, %52) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<4xf64>
    it.yield %53, %50 : tensor<4xf64>, tensor<?x4xf64>
  }) : (tensor<4xf64>, tensor<?x4xf64>) -> (tensor<4xf64>, tensor<?x4xf64>)
  "ta.print"(%31#1) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
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
  %cst_1 = arith.constant 0.000000e+00 : f64
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
  %alloc_21 = memref.alloc(%26) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %alloc_22 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_22 : memref<4x4xf64>)
  %28 = bufferization.to_tensor %alloc_22 restrict writable : memref<4x4xf64>
  %alloc_23 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
  %29 = bufferization.to_tensor %alloc_23 restrict writable : memref<?x4xf64>
  %alloc_24 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<4xf64>)
  %30 = bufferization.to_tensor %alloc_24 restrict writable : memref<4xf64>
  %31:2 = "it.itree"(%30, %29) ({
  ^bb0(%arg0: tensor<4xf64>, %arg1: tensor<?x4xf64>):
    %c0_25 = arith.constant 0 : index
    %c1_26 = arith.constant 1 : index
    %32:2 = scf.for %arg2 = %c0_25 to %21 step %c1_26 iter_args(%arg3 = %arg0, %arg4 = %arg1) -> (tensor<4xf64>, tensor<?x4xf64>) {
      %c1_27 = arith.constant 1 : index
      %33 = arith.addi %arg2, %c1_27 : index
      %extracted = tensor.extract %22[%arg2] : tensor<?xi64>
      %34 = arith.index_cast %extracted : i64 to index
      %extracted_28 = tensor.extract %22[%33] : tensor<?xi64>
      %35 = arith.index_cast %extracted_28 : i64 to index
      %c1_29 = arith.constant 1 : index
      %36:2 = scf.for %arg5 = %34 to %35 step %c1_29 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (tensor<4xf64>, tensor<?x4xf64>) {
        %c0_32 = arith.constant 0 : index
        %c1_33 = arith.constant 1 : index
        %38:2 = scf.for %arg8 = %c0_32 to %idx4 step %c1_33 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (tensor<4xf64>, tensor<?x4xf64>) {
          %39 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %40 = arith.index_cast %39 : i64 to index
          %41 = "ta.TAExtractOp"(%20, %arg5, %arg2, %40) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %extracted_34 = tensor.extract %27[%40, %arg8] : tensor<?x4xf64>
          %42 = arith.mulf %41, %extracted_34 : f64
          %extracted_35 = tensor.extract %arg9[%arg8] : tensor<4xf64>
          %43 = arith.addf %extracted_35, %42 : f64
          %inserted = tensor.insert %43 into %arg9[%arg8] : tensor<4xf64>
          scf.yield %inserted, %arg10 : tensor<4xf64>, tensor<?x4xf64>
        }
        scf.yield %38#0, %38#1 : tensor<4xf64>, tensor<?x4xf64>
      }
      %c0_30 = arith.constant 0 : index
      %c1_31 = arith.constant 1 : index
      %37:2 = scf.for %arg5 = %c0_30 to %idx4 step %c1_31 iter_args(%arg6 = %36#0, %arg7 = %36#1) -> (tensor<4xf64>, tensor<?x4xf64>) {
        %c0_32 = arith.constant 0 : index
        %c1_33 = arith.constant 1 : index
        %38:2 = scf.for %arg8 = %c0_32 to %idx4 step %c1_33 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (tensor<4xf64>, tensor<?x4xf64>) {
          %extracted_35 = tensor.extract %arg9[%arg5] : tensor<4xf64>
          %extracted_36 = tensor.extract %28[%arg5, %arg8] : tensor<4x4xf64>
          %39 = arith.mulf %extracted_35, %extracted_36 : f64
          %extracted_37 = tensor.extract %arg10[%arg2, %arg8] : tensor<?x4xf64>
          %40 = arith.addf %extracted_37, %39 : f64
          %inserted_38 = tensor.insert %40 into %arg10[%arg2, %arg8] : tensor<?x4xf64>
          scf.yield %arg9, %inserted_38 : tensor<4xf64>, tensor<?x4xf64>
        }
        %extracted_34 = tensor.extract %38#0[%arg5] : tensor<4xf64>
        %inserted = tensor.insert %cst_1 into %38#0[%arg5] : tensor<4xf64>
        scf.yield %inserted, %38#1 : tensor<4xf64>, tensor<?x4xf64>
      }
      scf.yield %37#0, %37#1 : tensor<4xf64>, tensor<?x4xf64>
    }
    it.yield %32#0, %32#1 : tensor<4xf64>, tensor<?x4xf64>
  }) : (tensor<4xf64>, tensor<?x4xf64>) -> (tensor<4xf64>, tensor<?x4xf64>)
  "ta.print"(%31#1) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
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
  %cst_1 = arith.constant 0.000000e+00 : f64
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
  %alloc_21 = memref.alloc(%26) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %alloc_22 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_22 : memref<4x4xf64>)
  %28 = bufferization.to_tensor %alloc_22 restrict writable : memref<4x4xf64>
  %alloc_23 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
  %29 = bufferization.to_tensor %alloc_23 restrict writable : memref<?x4xf64>
  %alloc_24 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<4xf64>)
  %30 = bufferization.to_tensor %alloc_24 restrict writable : memref<4xf64>
  %31:2 = "it.itree"(%30, %29) ({
  ^bb0(%arg0: tensor<4xf64>, %arg1: tensor<?x4xf64>):
    %c0_25 = arith.constant 0 : index
    %c1_26 = arith.constant 1 : index
    %32:2 = scf.for %arg2 = %c0_25 to %21 step %c1_26 iter_args(%arg3 = %arg0, %arg4 = %arg1) -> (tensor<4xf64>, tensor<?x4xf64>) {
      %c1_27 = arith.constant 1 : index
      %33 = arith.addi %arg2, %c1_27 : index
      %extracted = tensor.extract %22[%arg2] : tensor<?xi64>
      %34 = arith.index_cast %extracted : i64 to index
      %extracted_28 = tensor.extract %22[%33] : tensor<?xi64>
      %35 = arith.index_cast %extracted_28 : i64 to index
      %c1_29 = arith.constant 1 : index
      %36:2 = scf.for %arg5 = %34 to %35 step %c1_29 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (tensor<4xf64>, tensor<?x4xf64>) {
        %c0_32 = arith.constant 0 : index
        %c1_33 = arith.constant 1 : index
        %38:2 = scf.for %arg8 = %c0_32 to %idx4 step %c1_33 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (tensor<4xf64>, tensor<?x4xf64>) {
          %39 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %40 = arith.index_cast %39 : i64 to index
          %41 = "ta.TAExtractOp"(%20, %arg5, %arg2, %40) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %extracted_34 = tensor.extract %27[%40, %arg8] : tensor<?x4xf64>
          %42 = arith.mulf %41, %extracted_34 : f64
          %extracted_35 = tensor.extract %arg9[%arg8] : tensor<4xf64>
          %43 = arith.addf %extracted_35, %42 : f64
          %inserted = tensor.insert %43 into %arg9[%arg8] : tensor<4xf64>
          scf.yield %inserted, %arg10 : tensor<4xf64>, tensor<?x4xf64>
        }
        scf.yield %38#0, %38#1 : tensor<4xf64>, tensor<?x4xf64>
      }
      %c0_30 = arith.constant 0 : index
      %c1_31 = arith.constant 1 : index
      %37:2 = scf.for %arg5 = %c0_30 to %idx4 step %c1_31 iter_args(%arg6 = %36#0, %arg7 = %36#1) -> (tensor<4xf64>, tensor<?x4xf64>) {
        %c0_32 = arith.constant 0 : index
        %c1_33 = arith.constant 1 : index
        %38:2 = scf.for %arg8 = %c0_32 to %idx4 step %c1_33 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (tensor<4xf64>, tensor<?x4xf64>) {
          %extracted_35 = tensor.extract %arg9[%arg5] : tensor<4xf64>
          %extracted_36 = tensor.extract %28[%arg5, %arg8] : tensor<4x4xf64>
          %39 = arith.mulf %extracted_35, %extracted_36 : f64
          %extracted_37 = tensor.extract %arg10[%arg2, %arg8] : tensor<?x4xf64>
          %40 = arith.addf %extracted_37, %39 : f64
          %inserted_38 = tensor.insert %40 into %arg10[%arg2, %arg8] : tensor<?x4xf64>
          scf.yield %arg9, %inserted_38 : tensor<4xf64>, tensor<?x4xf64>
        }
        %extracted_34 = tensor.extract %38#0[%arg5] : tensor<4xf64>
        %inserted = tensor.insert %cst_1 into %38#0[%arg5] : tensor<4xf64>
        scf.yield %inserted, %38#1 : tensor<4xf64>, tensor<?x4xf64>
      }
      scf.yield %37#0, %37#1 : tensor<4xf64>, tensor<?x4xf64>
    }
    it.yield %32#0, %32#1 : tensor<4xf64>, tensor<?x4xf64>
  }) : (tensor<4xf64>, tensor<?x4xf64>) -> (tensor<4xf64>, tensor<?x4xf64>)
  "ta.print"(%31#1) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func @main() {
  %idx4 = index.constant 4
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
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
  %cst_1 = arith.constant 0.000000e+00 : f64
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
  %idx1 = index.constant 1
  %extracted_23 = tensor.extract %from_elements[%idx1] : tensor<2xindex>
  %idx0_24 = index.constant 0
  %extracted_25 = tensor.extract %from_elements[%idx0_24] : tensor<2xindex>
  %idx1_26 = index.constant 1
  %extracted_27 = tensor.extract %from_elements[%idx1_26] : tensor<2xindex>
  %alloc_28 = memref.alloc(%extracted_27) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_28 : memref<?x4xf64>)
  %21 = bufferization.to_tensor %alloc_28 restrict writable : memref<?x4xf64>
  %alloc_29 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_29 : memref<4x4xf64>)
  %22 = bufferization.to_tensor %alloc_29 restrict writable : memref<4x4xf64>
  %alloc_30 = memref.alloc(%extracted_25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_30 : memref<?x4xf64>)
  %23 = bufferization.to_tensor %alloc_30 restrict writable : memref<?x4xf64>
  %alloc_31 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_31 : memref<4xf64>)
  %24 = bufferization.to_tensor %alloc_31 restrict writable : memref<4xf64>
  %25:2 = "it.itree"(%24, %23) ({
  ^bb0(%arg0: tensor<4xf64>, %arg1: tensor<?x4xf64>):
    %c0_32 = arith.constant 0 : index
    %c1_33 = arith.constant 1 : index
    %26:2 = scf.for %arg2 = %c0_32 to %extracted step %c1_33 iter_args(%arg3 = %arg0, %arg4 = %arg1) -> (tensor<4xf64>, tensor<?x4xf64>) {
      %c1_34 = arith.constant 1 : index
      %27 = arith.addi %arg2, %c1_34 : index
      %extracted_35 = tensor.extract %15[%arg2] : tensor<?xi64>
      %28 = arith.index_cast %extracted_35 : i64 to index
      %extracted_36 = tensor.extract %15[%27] : tensor<?xi64>
      %29 = arith.index_cast %extracted_36 : i64 to index
      %c1_37 = arith.constant 1 : index
      %30:2 = scf.for %arg5 = %28 to %29 step %c1_37 iter_args(%arg6 = %arg3, %arg7 = %arg4) -> (tensor<4xf64>, tensor<?x4xf64>) {
        %c0_40 = arith.constant 0 : index
        %c1_41 = arith.constant 1 : index
        %32:2 = scf.for %arg8 = %c0_40 to %idx4 step %c1_41 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (tensor<4xf64>, tensor<?x4xf64>) {
          %extracted_42 = tensor.extract %16[%arg5] : tensor<?xi64>
          %33 = arith.index_cast %extracted_42 : i64 to index
          %extracted_43 = tensor.extract %19[%arg5] : tensor<?xf64>
          %extracted_44 = tensor.extract %21[%33, %arg8] : tensor<?x4xf64>
          %34 = arith.mulf %extracted_43, %extracted_44 : f64
          %extracted_45 = tensor.extract %arg9[%arg8] : tensor<4xf64>
          %35 = arith.addf %extracted_45, %34 : f64
          %inserted = tensor.insert %35 into %arg9[%arg8] : tensor<4xf64>
          scf.yield %inserted, %arg10 : tensor<4xf64>, tensor<?x4xf64>
        }
        scf.yield %32#0, %32#1 : tensor<4xf64>, tensor<?x4xf64>
      }
      %c0_38 = arith.constant 0 : index
      %c1_39 = arith.constant 1 : index
      %31:2 = scf.for %arg5 = %c0_38 to %idx4 step %c1_39 iter_args(%arg6 = %30#0, %arg7 = %30#1) -> (tensor<4xf64>, tensor<?x4xf64>) {
        %c0_40 = arith.constant 0 : index
        %c1_41 = arith.constant 1 : index
        %32:2 = scf.for %arg8 = %c0_40 to %idx4 step %c1_41 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (tensor<4xf64>, tensor<?x4xf64>) {
          %extracted_43 = tensor.extract %arg9[%arg5] : tensor<4xf64>
          %extracted_44 = tensor.extract %22[%arg5, %arg8] : tensor<4x4xf64>
          %33 = arith.mulf %extracted_43, %extracted_44 : f64
          %extracted_45 = tensor.extract %arg10[%arg2, %arg8] : tensor<?x4xf64>
          %34 = arith.addf %extracted_45, %33 : f64
          %inserted_46 = tensor.insert %34 into %arg10[%arg2, %arg8] : tensor<?x4xf64>
          scf.yield %arg9, %inserted_46 : tensor<4xf64>, tensor<?x4xf64>
        }
        %extracted_42 = tensor.extract %32#0[%arg5] : tensor<4xf64>
        %inserted = tensor.insert %cst_1 into %32#0[%arg5] : tensor<4xf64>
        scf.yield %inserted, %32#1 : tensor<4xf64>, tensor<?x4xf64>
      }
      scf.yield %31#0, %31#1 : tensor<4xf64>, tensor<?x4xf64>
    }
    it.yield %26#0, %26#1 : tensor<4xf64>, tensor<?x4xf64>
  }) : (tensor<4xf64>, tensor<?x4xf64>) -> (tensor<4xf64>, tensor<?x4xf64>)
  "ta.print"(%25#1) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
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
  %cst_1 = arith.constant 0.000000e+00 : f64
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
  %idx1 = index.constant 1
  %idx0_23 = index.constant 0
  %idx1_24 = index.constant 1
  %alloc_25 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_25 : memref<?x4xf64>)
  %21 = bufferization.to_tensor %alloc_25 restrict writable : memref<?x4xf64>
  %alloc_26 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_26 : memref<4x4xf64>)
  %22 = bufferization.to_tensor %alloc_26 restrict writable : memref<4x4xf64>
  %alloc_27 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_27 : memref<?x4xf64>)
  %23 = bufferization.to_tensor %alloc_27 restrict writable : memref<?x4xf64>
  %alloc_28 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_28 : memref<4xf64>)
  %24 = bufferization.to_tensor %alloc_28 restrict writable : memref<4xf64>
  %c0_29 = arith.constant 0 : index
  %c1_30 = arith.constant 1 : index
  %25:2 = scf.for %arg0 = %c0_29 to %9 step %c1_30 iter_args(%arg1 = %24, %arg2 = %23) -> (tensor<4xf64>, tensor<?x4xf64>) {
    %c1_31 = arith.constant 1 : index
    %26 = arith.addi %arg0, %c1_31 : index
    %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
    %27 = arith.index_cast %extracted : i64 to index
    %extracted_32 = tensor.extract %15[%26] : tensor<?xi64>
    %28 = arith.index_cast %extracted_32 : i64 to index
    %c1_33 = arith.constant 1 : index
    %29:2 = scf.for %arg3 = %27 to %28 step %c1_33 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (tensor<4xf64>, tensor<?x4xf64>) {
      %c0_36 = arith.constant 0 : index
      %c1_37 = arith.constant 1 : index
      %31:2 = scf.for %arg6 = %c0_36 to %idx4 step %c1_37 iter_args(%arg7 = %arg4, %arg8 = %arg5) -> (tensor<4xf64>, tensor<?x4xf64>) {
        %extracted_38 = tensor.extract %16[%arg3] : tensor<?xi64>
        %32 = arith.index_cast %extracted_38 : i64 to index
        %extracted_39 = tensor.extract %19[%arg3] : tensor<?xf64>
        %extracted_40 = tensor.extract %21[%32, %arg6] : tensor<?x4xf64>
        %33 = arith.mulf %extracted_39, %extracted_40 : f64
        %extracted_41 = tensor.extract %arg7[%arg6] : tensor<4xf64>
        %34 = arith.addf %extracted_41, %33 : f64
        %inserted = tensor.insert %34 into %arg7[%arg6] : tensor<4xf64>
        scf.yield %inserted, %arg8 : tensor<4xf64>, tensor<?x4xf64>
      }
      scf.yield %31#0, %31#1 : tensor<4xf64>, tensor<?x4xf64>
    }
    %c0_34 = arith.constant 0 : index
    %c1_35 = arith.constant 1 : index
    %30:2 = scf.for %arg3 = %c0_34 to %idx4 step %c1_35 iter_args(%arg4 = %29#0, %arg5 = %29#1) -> (tensor<4xf64>, tensor<?x4xf64>) {
      %c0_36 = arith.constant 0 : index
      %c1_37 = arith.constant 1 : index
      %31:2 = scf.for %arg6 = %c0_36 to %idx4 step %c1_37 iter_args(%arg7 = %arg4, %arg8 = %arg5) -> (tensor<4xf64>, tensor<?x4xf64>) {
        %extracted_39 = tensor.extract %arg7[%arg3] : tensor<4xf64>
        %extracted_40 = tensor.extract %22[%arg3, %arg6] : tensor<4x4xf64>
        %32 = arith.mulf %extracted_39, %extracted_40 : f64
        %extracted_41 = tensor.extract %arg8[%arg0, %arg6] : tensor<?x4xf64>
        %33 = arith.addf %extracted_41, %32 : f64
        %inserted_42 = tensor.insert %33 into %arg8[%arg0, %arg6] : tensor<?x4xf64>
        scf.yield %arg7, %inserted_42 : tensor<4xf64>, tensor<?x4xf64>
      }
      %extracted_38 = tensor.extract %31#0[%arg3] : tensor<4xf64>
      %inserted = tensor.insert %cst_1 into %31#0[%arg3] : tensor<4xf64>
      scf.yield %inserted, %31#1 : tensor<4xf64>, tensor<?x4xf64>
    }
    scf.yield %30#0, %30#1 : tensor<4xf64>, tensor<?x4xf64>
  }
  "ta.print"(%25#1) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %idx4 = index.constant 4
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
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
  %cst_1 = arith.constant 0.000000e+00 : f64
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
  %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
  %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<4x4xf64>
  %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
  %16 = bufferization.to_tensor %alloc_22 restrict writable : memref<?x4xf64>
  %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<4xf64>)
  %17 = bufferization.to_tensor %alloc_23 restrict writable : memref<4xf64>
  %18:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %17, %arg2 = %16) -> (tensor<4xf64>, tensor<?x4xf64>) {
    %19 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %20 = arith.index_cast %extracted : i64 to index
    %extracted_24 = tensor.extract %11[%19] : tensor<?xi64>
    %21 = arith.index_cast %extracted_24 : i64 to index
    %22 = scf.for %arg3 = %20 to %21 step %c1 iter_args(%arg4 = %arg1) -> (tensor<4xf64>) {
      %24 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %arg4) -> (tensor<4xf64>) {
        %extracted_25 = tensor.extract %12[%arg3] : tensor<?xi64>
        %25 = arith.index_cast %extracted_25 : i64 to index
        %extracted_26 = tensor.extract %13[%arg3] : tensor<?xf64>
        %extracted_27 = tensor.extract %14[%25, %arg5] : tensor<?x4xf64>
        %26 = arith.mulf %extracted_26, %extracted_27 : f64
        %extracted_28 = tensor.extract %arg6[%arg5] : tensor<4xf64>
        %27 = arith.addf %extracted_28, %26 : f64
        %inserted = tensor.insert %27 into %arg6[%arg5] : tensor<4xf64>
        scf.yield %inserted : tensor<4xf64>
      }
      scf.yield %24 : tensor<4xf64>
    }
    %23:2 = scf.for %arg3 = %c0 to %idx4 step %c1 iter_args(%arg4 = %22, %arg5 = %arg2) -> (tensor<4xf64>, tensor<?x4xf64>) {
      %24 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (tensor<?x4xf64>) {
        %extracted_25 = tensor.extract %arg4[%arg3] : tensor<4xf64>
        %extracted_26 = tensor.extract %15[%arg3, %arg6] : tensor<4x4xf64>
        %25 = arith.mulf %extracted_25, %extracted_26 : f64
        %extracted_27 = tensor.extract %arg7[%arg0, %arg6] : tensor<?x4xf64>
        %26 = arith.addf %extracted_27, %25 : f64
        %inserted_28 = tensor.insert %26 into %arg7[%arg0, %arg6] : tensor<?x4xf64>
        scf.yield %inserted_28 : tensor<?x4xf64>
      }
      %inserted = tensor.insert %cst_1 into %arg4[%arg3] : tensor<4xf64>
      scf.yield %inserted, %24 : tensor<4xf64>, tensor<?x4xf64>
    }
    scf.yield %23#0, %23#1 : tensor<4xf64>, tensor<?x4xf64>
  }
  "ta.print"(%18#1) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
module {
  func.func @main() {
    %idx4 = index.constant 4
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
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
    %cst_1 = arith.constant 0.000000e+00 : f64
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
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
    %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<4x4xf64>
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
    %16 = bufferization.to_tensor %alloc_22 restrict writable : memref<?x4xf64>
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<4xf64>)
    %17 = bufferization.to_tensor %alloc_23 restrict writable : memref<4xf64>
    %18:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %17, %arg2 = %16) -> (tensor<4xf64>, tensor<?x4xf64>) {
      %19 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %20 = arith.index_cast %extracted : i64 to index
      %extracted_24 = tensor.extract %11[%19] : tensor<?xi64>
      %21 = arith.index_cast %extracted_24 : i64 to index
      %22 = scf.for %arg3 = %20 to %21 step %c1 iter_args(%arg4 = %arg1) -> (tensor<4xf64>) {
        %24 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %arg4) -> (tensor<4xf64>) {
          %extracted_25 = tensor.extract %12[%arg3] : tensor<?xi64>
          %25 = arith.index_cast %extracted_25 : i64 to index
          %extracted_26 = tensor.extract %13[%arg3] : tensor<?xf64>
          %extracted_27 = tensor.extract %14[%25, %arg5] : tensor<?x4xf64>
          %26 = arith.mulf %extracted_26, %extracted_27 : f64
          %extracted_28 = tensor.extract %arg6[%arg5] : tensor<4xf64>
          %27 = arith.addf %extracted_28, %26 : f64
          %inserted = tensor.insert %27 into %arg6[%arg5] : tensor<4xf64>
          scf.yield %inserted : tensor<4xf64>
        }
        scf.yield %24 : tensor<4xf64>
      }
      %23:2 = scf.for %arg3 = %c0 to %idx4 step %c1 iter_args(%arg4 = %22, %arg5 = %arg2) -> (tensor<4xf64>, tensor<?x4xf64>) {
        %24 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (tensor<?x4xf64>) {
          %extracted_25 = tensor.extract %arg4[%arg3] : tensor<4xf64>
          %extracted_26 = tensor.extract %15[%arg3, %arg6] : tensor<4x4xf64>
          %25 = arith.mulf %extracted_25, %extracted_26 : f64
          %extracted_27 = tensor.extract %arg7[%arg0, %arg6] : tensor<?x4xf64>
          %26 = arith.addf %extracted_27, %25 : f64
          %inserted_28 = tensor.insert %26 into %arg7[%arg0, %arg6] : tensor<?x4xf64>
          scf.yield %inserted_28 : tensor<?x4xf64>
        }
        %inserted = tensor.insert %cst_1 into %arg4[%arg3] : tensor<4xf64>
        scf.yield %inserted, %24 : tensor<4xf64>, tensor<?x4xf64>
      }
      scf.yield %23#0, %23#1 : tensor<4xf64>, tensor<?x4xf64>
    }
    "ta.print"(%18#1) : (tensor<?x4xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx4 = index.constant 4
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
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
    %cst_1 = arith.constant 0.000000e+00 : f64
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
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
    %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<4x4xf64>
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
    %16 = bufferization.to_tensor %alloc_22 restrict writable : memref<?x4xf64>
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<4xf64>)
    %17 = bufferization.to_tensor %alloc_23 restrict writable : memref<4xf64>
    %18:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %17, %arg2 = %16) -> (tensor<4xf64>, tensor<?x4xf64>) {
      %19 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %20 = arith.index_cast %extracted : i64 to index
      %extracted_24 = tensor.extract %11[%19] : tensor<?xi64>
      %21 = arith.index_cast %extracted_24 : i64 to index
      %22 = scf.for %arg3 = %20 to %21 step %c1 iter_args(%arg4 = %arg1) -> (tensor<4xf64>) {
        %24 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %arg4) -> (tensor<4xf64>) {
          %extracted_25 = tensor.extract %12[%arg3] : tensor<?xi64>
          %25 = arith.index_cast %extracted_25 : i64 to index
          %extracted_26 = tensor.extract %13[%arg3] : tensor<?xf64>
          %extracted_27 = tensor.extract %14[%25, %arg5] : tensor<?x4xf64>
          %26 = arith.mulf %extracted_26, %extracted_27 : f64
          %extracted_28 = tensor.extract %arg6[%arg5] : tensor<4xf64>
          %27 = arith.addf %extracted_28, %26 : f64
          %inserted = tensor.insert %27 into %arg6[%arg5] : tensor<4xf64>
          scf.yield %inserted : tensor<4xf64>
        }
        scf.yield %24 : tensor<4xf64>
      }
      %23:2 = scf.for %arg3 = %c0 to %idx4 step %c1 iter_args(%arg4 = %22, %arg5 = %arg2) -> (tensor<4xf64>, tensor<?x4xf64>) {
        %24 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (tensor<?x4xf64>) {
          %extracted_25 = tensor.extract %arg4[%arg3] : tensor<4xf64>
          %extracted_26 = tensor.extract %15[%arg3, %arg6] : tensor<4x4xf64>
          %25 = arith.mulf %extracted_25, %extracted_26 : f64
          %extracted_27 = tensor.extract %arg7[%arg0, %arg6] : tensor<?x4xf64>
          %26 = arith.addf %extracted_27, %25 : f64
          %inserted_28 = tensor.insert %26 into %arg7[%arg0, %arg6] : tensor<?x4xf64>
          scf.yield %inserted_28 : tensor<?x4xf64>
        }
        %inserted = tensor.insert %cst_1 into %arg4[%arg3] : tensor<4xf64>
        scf.yield %inserted, %24 : tensor<4xf64>, tensor<?x4xf64>
      }
      scf.yield %23#0, %23#1 : tensor<4xf64>, tensor<?x4xf64>
    }
    "ta.print"(%18#1) : (tensor<?x4xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After OneShotBufferize (one-shot-bufferize) //----- //
module {
  func.func @main() {
    %idx4 = index.constant 4
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
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
    %cst_1 = arith.constant 0.000000e+00 : f64
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
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<4xf64>)
    %11:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %alloc_23, %arg2 = %alloc_22) -> (memref<4xf64>, memref<?x4xf64>) {
      %13 = arith.addi %arg0, %c1 : index
      %14 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %16 = memref.load %alloc_10[%13] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = scf.for %arg3 = %15 to %17 step %c1 iter_args(%arg4 = %arg1) -> (memref<4xf64>) {
        %20 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %arg4) -> (memref<4xf64>) {
          %21 = memref.load %alloc_12[%arg3] : memref<?xi64>
          %22 = arith.index_cast %21 : i64 to index
          %23 = memref.load %alloc_18[%arg3] : memref<?xf64>
          %24 = memref.load %alloc_20[%22, %arg5] : memref<?x4xf64>
          %25 = arith.mulf %23, %24 : f64
          %26 = memref.load %arg6[%arg5] : memref<4xf64>
          %27 = arith.addf %26, %25 : f64
          memref.store %27, %arg6[%arg5] : memref<4xf64>
          scf.yield %arg6 : memref<4xf64>
        }
        scf.yield %20 : memref<4xf64>
      }
      %19:2 = scf.for %arg3 = %c0 to %idx4 step %c1 iter_args(%arg4 = %18, %arg5 = %arg2) -> (memref<4xf64>, memref<?x4xf64>) {
        %20 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (memref<?x4xf64>) {
          %21 = memref.load %arg4[%arg3] : memref<4xf64>
          %22 = memref.load %alloc_21[%arg3, %arg6] : memref<4x4xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = memref.load %arg7[%arg0, %arg6] : memref<?x4xf64>
          %25 = arith.addf %24, %23 : f64
          memref.store %25, %arg7[%arg0, %arg6] : memref<?x4xf64>
          scf.yield %arg7 : memref<?x4xf64>
        }
        memref.store %cst_1, %arg4[%arg3] : memref<4xf64>
        scf.yield %arg4, %20 : memref<4xf64>, memref<?x4xf64>
      }
      scf.yield %19#0, %19#1 : memref<4xf64>, memref<?x4xf64>
    }
    %12 = bufferization.to_tensor %11#1 : memref<?x4xf64>
    "ta.print"(%12) : (tensor<?x4xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
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
  %cst_1 = arith.constant 0.000000e+00 : f64
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
  %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
  %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
  %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<4xf64>)
  %11:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %alloc_23, %arg2 = %alloc_22) -> (memref<4xf64>, memref<?x4xf64>) {
    %13 = arith.addi %arg0, %c1 : index
    %14 = memref.load %alloc_10[%arg0] : memref<?xi64>
    %15 = arith.index_cast %14 : i64 to index
    %16 = memref.load %alloc_10[%13] : memref<?xi64>
    %17 = arith.index_cast %16 : i64 to index
    %18 = scf.for %arg3 = %15 to %17 step %c1 iter_args(%arg4 = %arg1) -> (memref<4xf64>) {
      %20 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %arg4) -> (memref<4xf64>) {
        %21 = memref.load %alloc_12[%arg3] : memref<?xi64>
        %22 = arith.index_cast %21 : i64 to index
        %23 = memref.load %alloc_18[%arg3] : memref<?xf64>
        %24 = memref.load %alloc_20[%22, %arg5] : memref<?x4xf64>
        %25 = arith.mulf %23, %24 : f64
        %26 = memref.load %arg6[%arg5] : memref<4xf64>
        %27 = arith.addf %26, %25 : f64
        memref.store %27, %arg6[%arg5] : memref<4xf64>
        scf.yield %arg6 : memref<4xf64>
      }
      scf.yield %20 : memref<4xf64>
    }
    %19:2 = scf.for %arg3 = %c0 to %idx4 step %c1 iter_args(%arg4 = %18, %arg5 = %arg2) -> (memref<4xf64>, memref<?x4xf64>) {
      %20 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (memref<?x4xf64>) {
        %21 = memref.load %arg4[%arg3] : memref<4xf64>
        %22 = memref.load %alloc_21[%arg3, %arg6] : memref<4x4xf64>
        %23 = arith.mulf %21, %22 : f64
        %24 = memref.load %arg7[%arg0, %arg6] : memref<?x4xf64>
        %25 = arith.addf %24, %23 : f64
        memref.store %25, %arg7[%arg0, %arg6] : memref<?x4xf64>
        scf.yield %arg7 : memref<?x4xf64>
      }
      memref.store %cst_1, %arg4[%arg3] : memref<4xf64>
      scf.yield %arg4, %20 : memref<4xf64>, memref<?x4xf64>
    }
    scf.yield %19#0, %19#1 : memref<4xf64>, memref<?x4xf64>
  }
  %12 = bufferization.to_tensor %11#1 : memref<?x4xf64>
  "ta.print"(%12) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %cst = arith.constant 3.400000e+00 : f64
  %cst_0 = arith.constant 1.200000e+00 : f64
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
  %cst_1 = arith.constant 0.000000e+00 : f64
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
  %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
  %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
  %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<4xf64>)
  %11:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %alloc_23, %arg2 = %alloc_22) -> (memref<4xf64>, memref<?x4xf64>) {
    %14 = arith.addi %arg0, %c1 : index
    %15 = memref.load %alloc_10[%arg0] : memref<?xi64>
    %16 = arith.index_cast %15 : i64 to index
    %17 = memref.load %alloc_10[%14] : memref<?xi64>
    %18 = arith.index_cast %17 : i64 to index
    %19 = scf.for %arg3 = %16 to %18 step %c1 iter_args(%arg4 = %arg1) -> (memref<4xf64>) {
      %21 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %arg4) -> (memref<4xf64>) {
        %22 = memref.load %alloc_12[%arg3] : memref<?xi64>
        %23 = arith.index_cast %22 : i64 to index
        %24 = memref.load %alloc_18[%arg3] : memref<?xf64>
        %25 = memref.load %alloc_20[%23, %arg5] : memref<?x4xf64>
        %26 = arith.mulf %24, %25 : f64
        %27 = memref.load %arg6[%arg5] : memref<4xf64>
        %28 = arith.addf %27, %26 : f64
        memref.store %28, %arg6[%arg5] : memref<4xf64>
        scf.yield %arg6 : memref<4xf64>
      }
      scf.yield %21 : memref<4xf64>
    }
    %20:2 = scf.for %arg3 = %c0 to %idx4 step %c1 iter_args(%arg4 = %19, %arg5 = %arg2) -> (memref<4xf64>, memref<?x4xf64>) {
      %21 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (memref<?x4xf64>) {
        %22 = memref.load %arg4[%arg3] : memref<4xf64>
        %23 = memref.load %alloc_21[%arg3, %arg6] : memref<4x4xf64>
        %24 = arith.mulf %22, %23 : f64
        %25 = memref.load %arg7[%arg0, %arg6] : memref<?x4xf64>
        %26 = arith.addf %25, %24 : f64
        memref.store %26, %arg7[%arg0, %arg6] : memref<?x4xf64>
        scf.yield %arg7 : memref<?x4xf64>
      }
      memref.store %cst_1, %arg4[%arg3] : memref<4xf64>
      scf.yield %arg4, %21 : memref<4xf64>, memref<?x4xf64>
    }
    scf.yield %20#0, %20#1 : memref<4xf64>, memref<?x4xf64>
  }
  %12 = bufferization.to_tensor %11#1 : memref<?x4xf64>
  %13 = bufferization.to_memref %12 : memref<?x4xf64>
  %cast_24 = memref.cast %13 : memref<?x4xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_24) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx4 = index.constant 4
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
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
    %cst_1 = arith.constant 0.000000e+00 : f64
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
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<4xf64>)
    scf.for %arg0 = %c0 to %9 step %c1 {
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_10[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      scf.for %arg1 = %13 to %15 step %c1 {
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %16 = memref.load %alloc_12[%arg1] : memref<?xi64>
          %17 = arith.index_cast %16 : i64 to index
          %18 = memref.load %alloc_18[%arg1] : memref<?xf64>
          %19 = memref.load %alloc_20[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_23[%arg2] : memref<4xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_23[%arg2] : memref<4xf64>
        }
      }
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %16 = memref.load %alloc_23[%arg1] : memref<4xf64>
          %17 = memref.load %alloc_21[%arg1, %arg2] : memref<4x4xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = memref.load %alloc_22[%arg0, %arg2] : memref<?x4xf64>
          %20 = arith.addf %19, %18 : f64
          memref.store %20, %alloc_22[%arg0, %arg2] : memref<?x4xf64>
        }
        memref.store %cst_1, %alloc_23[%arg1] : memref<4xf64>
      }
    }
    %cast_24 = memref.cast %alloc_22 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_24) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %idx4 = index.constant 4
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
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
    %cst_1 = arith.constant 0.000000e+00 : f64
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
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<4xf64>)
    scf.for %arg0 = %c0 to %9 step %c1 {
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_10[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      scf.for %arg1 = %13 to %15 step %c1 {
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %16 = memref.load %alloc_12[%arg1] : memref<?xi64>
          %17 = arith.index_cast %16 : i64 to index
          %18 = memref.load %alloc_18[%arg1] : memref<?xf64>
          %19 = memref.load %alloc_20[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_23[%arg2] : memref<4xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_23[%arg2] : memref<4xf64>
        }
      }
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %16 = memref.load %alloc_23[%arg1] : memref<4xf64>
          %17 = memref.load %alloc_21[%arg1, %arg2] : memref<4x4xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = memref.load %alloc_22[%arg0, %arg2] : memref<?x4xf64>
          %20 = arith.addf %19, %18 : f64
          memref.store %20, %alloc_22[%arg0, %arg2] : memref<?x4xf64>
        }
        memref.store %cst_1, %alloc_23[%arg1] : memref<4xf64>
      }
    }
    %cast_24 = memref.cast %alloc_22 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_24) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx4 = index.constant 4
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
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
    %cst_1 = arith.constant 0.000000e+00 : f64
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
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<4xf64>)
    scf.for %arg0 = %c0 to %9 step %c1 {
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_10[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      scf.for %arg1 = %13 to %15 step %c1 {
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %16 = memref.load %alloc_12[%arg1] : memref<?xi64>
          %17 = arith.index_cast %16 : i64 to index
          %18 = memref.load %alloc_18[%arg1] : memref<?xf64>
          %19 = memref.load %alloc_20[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_23[%arg2] : memref<4xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_23[%arg2] : memref<4xf64>
        }
      }
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %16 = memref.load %alloc_23[%arg1] : memref<4xf64>
          %17 = memref.load %alloc_21[%arg1, %arg2] : memref<4x4xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = memref.load %alloc_22[%arg0, %arg2] : memref<?x4xf64>
          %20 = arith.addf %19, %18 : f64
          memref.store %20, %alloc_22[%arg0, %arg2] : memref<?x4xf64>
        }
        memref.store %cst_1, %alloc_23[%arg1] : memref<4xf64>
      }
    }
    %cast_24 = memref.cast %alloc_22 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_24) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


module {
  func.func @main() {
    %idx4 = index.constant 4
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
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
    %cst_1 = arith.constant 0.000000e+00 : f64
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
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<4xf64>)
    scf.for %arg0 = %c0 to %9 step %c1 {
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_10[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      scf.for %arg1 = %13 to %15 step %c1 {
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %16 = memref.load %alloc_12[%arg1] : memref<?xi64>
          %17 = arith.index_cast %16 : i64 to index
          %18 = memref.load %alloc_18[%arg1] : memref<?xf64>
          %19 = memref.load %alloc_20[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_23[%arg2] : memref<4xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_23[%arg2] : memref<4xf64>
        }
      }
      scf.for %arg1 = %c0 to %idx4 step %c1 {
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %16 = memref.load %alloc_23[%arg1] : memref<4xf64>
          %17 = memref.load %alloc_21[%arg1, %arg2] : memref<4x4xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = memref.load %alloc_22[%arg0, %arg2] : memref<?x4xf64>
          %20 = arith.addf %19, %18 : f64
          memref.store %20, %alloc_22[%arg0, %arg2] : memref<?x4xf64>
        }
        memref.store %cst_1, %alloc_23[%arg1] : memref<4xf64>
      }
    }
    %cast_24 = memref.cast %alloc_22 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_24) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}
