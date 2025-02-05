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
    %cst = arith.constant 0.000000e+00 : f64
    "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    %10:2 = "it.itree"(%cst, %9) ({
    ^bb0(%arg0: f64, %arg1: tensor<?x4xf64>):
      %11 = "it.RootOp"() : () -> !it.index_tree
      %12 = "it.IndexOp"(%11) : (!it.index_tree) -> !it.index
      %13 = "it.IndexOp"(%12) : (!it.index) -> !it.index
      %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index
      %15 = "it.LHSOperandOp"(%arg0) : (f64) -> !it.operand
      %crd, %pos = "it.IndexToTensorDim"(%4, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%4, %14, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %16 = "it.OperandOp"(%4, %pos, %pos_1, %crd, %crd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%7, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%7, %12, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %17 = "it.OperandOp"(%7, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %18 = "it.ComputeOp"(%14, %15, %16, %17) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
      %19 = "it.IndexOp"(%13) : (!it.index) -> !it.index
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%arg1, %13) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%arg1, %19, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %20 = "it.LHSOperandOp"(%arg1, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %21 = "it.OperandOp"(%18) : (f64) -> !it.operand
      %crd_10, %pos_11 = "it.IndexToTensorDim"(%8, %12) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
      %crd_12, %pos_13 = "it.IndexToTensorDim"(%8, %19, %pos_11) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
      %22 = "it.OperandOp"(%8, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
      %23 = "it.ComputeOp"(%19, %20, %21, %22) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
      %24 = "it.LHSOperandOp"(%18) : (f64) -> !it.operand
      %cst_14 = arith.constant 0.000000e+00 : f64
      %25 = "it.OperandOp"(%cst_14) : (f64) -> !it.operand
      %26 = "it.ComputeOp"(%13, %24, %25) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
      it.yield %26, %23 : f64, tensor<?x4xf64>
    }) : (f64, tensor<?x4xf64>) -> (f64, tensor<?x4xf64>)
    "ta.set_op"(%10#1, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
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
  %cst = arith.constant 0.000000e+00 : f64
  "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %10:2 = "it.itree"(%cst, %9) ({
  ^bb0(%arg0: f64, %arg1: tensor<?x4xf64>):
    %11 = "it.RootOp"() : () -> !it.index_tree
    %12 = "it.IndexOp"(%11) : (!it.index_tree) -> !it.index
    %13 = "it.IndexOp"(%12) : (!it.index) -> !it.index
    %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index
    %15 = "it.LHSOperandOp"(%arg0) : (f64) -> !it.operand
    %crd, %pos = "it.IndexToTensorDim"(%4, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%4, %14, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%4, %pos, %pos_1, %crd, %crd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%7, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%7, %12, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %17 = "it.OperandOp"(%7, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %18 = "it.ComputeOp"(%14, %15, %16, %17) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %19 = "it.IndexOp"(%13) : (!it.index) -> !it.index
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%arg1, %13) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%arg1, %19, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %20 = "it.LHSOperandOp"(%arg1, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %21 = "it.OperandOp"(%18) : (f64) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%8, %12) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%8, %19, %pos_11) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %22 = "it.OperandOp"(%8, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %23 = "it.ComputeOp"(%19, %20, %21, %22) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %24 = "it.LHSOperandOp"(%18) : (f64) -> !it.operand
    %cst_14 = arith.constant 0.000000e+00 : f64
    %25 = "it.OperandOp"(%cst_14) : (f64) -> !it.operand
    %26 = "it.ComputeOp"(%13, %24, %25) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
    it.yield %26, %23 : f64, tensor<?x4xf64>
  }) : (f64, tensor<?x4xf64>) -> (f64, tensor<?x4xf64>)
  "ta.set_op"(%10#1, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
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
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%3) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %6:2 = "it.itree"(%cst, %5) ({
  ^bb0(%arg0: f64, %arg1: tensor<?x4xf64>):
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.DomainOp"(%4) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %9 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %10 = "it.DomainUnionOp"(%8, %9) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %11 = "it.IndexOp"(%7, %10) : (!it.index_tree, !it.domain) -> !it.index
    %12 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %13 = "it.IndexOp"(%11, %12) : (!it.index, !it.domain) -> !it.index
    %14 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %15 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %16 = "it.DomainIntersectionOp"(%15, %14) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %17 = "it.IndexOp"(%13, %16) : (!it.index, !it.domain) -> !it.index
    %18 = "it.LHSOperandOp"(%arg0) : (f64) -> !it.operand
    %crd, %pos = "it.IndexToTensorDim"(%0, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%0, %17, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %19 = "it.OperandOp"(%0, %pos, %pos_1, %crd, %crd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%3, %17) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%3, %11, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %20 = "it.OperandOp"(%3, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %21 = "it.ComputeOp"(%17, %18, %19, %20) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %22 = "it.DomainOp"(%4) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %23 = "it.IndexOp"(%13, %22) : (!it.index, !it.domain) -> !it.index
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%arg1, %13) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%arg1, %23, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %24 = "it.LHSOperandOp"(%arg1, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %25 = "it.OperandOp"(%21) : (f64) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%4, %11) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%4, %23, %pos_11) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %26 = "it.OperandOp"(%4, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %27 = "it.ComputeOp"(%23, %24, %25, %26) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %28 = "it.LHSOperandOp"(%21) : (f64) -> !it.operand
    %29 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %30 = "it.ComputeOp"(%13, %28, %29) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
    it.yield %30, %27 : f64, tensor<?x4xf64>
  }) : (f64, tensor<?x4xf64>) -> (f64, tensor<?x4xf64>)
  "ta.set_op"(%6#1, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
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
    "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%3) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    %6:2 = "it.itree"(%cst, %5) ({
    ^bb0(%arg0: f64, %arg1: tensor<?x4xf64>):
      %7 = "it.RootOp"() : () -> !it.index_tree
      %8 = "it.DomainOp"(%4) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
      %9 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
      %10 = "it.DomainUnionOp"(%8, %9) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
      %11 = "it.IndexOp"(%7, %10) : (!it.index_tree, !it.domain) -> !it.index
      %12 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
      %13 = "it.IndexOp"(%11, %12) : (!it.index, !it.domain) -> !it.index
      %14 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
      %15 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
      %16 = "it.DomainIntersectionOp"(%15, %14) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
      %17 = "it.IndexOp"(%13, %16) : (!it.index, !it.domain) -> !it.index
      %18 = "it.LHSOperandOp"(%arg0) : (f64) -> !it.operand
      %crd, %pos = "it.IndexToTensorDim"(%0, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%0, %17, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %19 = "it.OperandOp"(%0, %pos, %pos_1, %crd, %crd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%3, %17) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%3, %11, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %20 = "it.OperandOp"(%3, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %21 = "it.ComputeOp"(%17, %18, %19, %20) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
      %22 = "it.DomainOp"(%4) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
      %23 = "it.IndexOp"(%13, %22) : (!it.index, !it.domain) -> !it.index
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%arg1, %13) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%arg1, %23, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %24 = "it.LHSOperandOp"(%arg1, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %25 = "it.OperandOp"(%21) : (f64) -> !it.operand
      %crd_10, %pos_11 = "it.IndexToTensorDim"(%4, %11) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
      %crd_12, %pos_13 = "it.IndexToTensorDim"(%4, %23, %pos_11) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
      %26 = "it.OperandOp"(%4, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
      %27 = "it.ComputeOp"(%23, %24, %25, %26) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
      %28 = "it.LHSOperandOp"(%21) : (f64) -> !it.operand
      %29 = "it.OperandOp"(%cst) : (f64) -> !it.operand
      %30 = "it.ComputeOp"(%13, %28, %29) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
      it.yield %30, %27 : f64, tensor<?x4xf64>
    }) : (f64, tensor<?x4xf64>) -> (f64, tensor<?x4xf64>)
    "ta.set_op"(%6#1, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    "ta.print"(%5) : (tensor<?x4xf64>) -> ()
    return
  }
}
