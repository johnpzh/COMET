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
    %10 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    %11 = "it.itree"(%9) ({
      %12 = "it.RootOp"() : () -> !it.index_tree
      %13 = "it.IndexOp"(%12) : (!it.index_tree) -> !it.index
      %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index
      %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index
      %cst = arith.constant 0.000000e+00 : f64
      %16 = "it.LHSOperandOp"(%cst) : (f64) -> !it.operand
      %17 = "it.OperandOp"(%cst) : (f64) -> !it.operand
      %18 = "it.ComputeOp"(%14, %16, %17) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
      %19 = "it.LHSOperandOp"(%18) : (f64) -> !it.operand
      %crd, %pos = "it.IndexToTensorDim"(%4, %14) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%4, %15, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %20 = "it.OperandOp"(%4, %pos, %pos_1, %crd, %crd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%7, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%7, %13, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %21 = "it.OperandOp"(%7, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %22 = "it.ComputeOp"(%15, %19, %20, %21) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
      %23 = "it.IndexOp"(%14) : (!it.index) -> !it.index
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%9, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%9, %23, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %24 = "it.LHSOperandOp"(%9, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %25 = "it.OperandOp"(%22) : (f64) -> !it.operand
      %crd_10, %pos_11 = "it.IndexToTensorDim"(%8, %13) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
      %crd_12, %pos_13 = "it.IndexToTensorDim"(%8, %23, %pos_11) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
      %26 = "it.OperandOp"(%8, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
      %27 = "it.ComputeOp"(%23, %24, %25, %26) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
      it.yield %27 : tensor<?x4xf64>
    }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
    "ta.set_op"(%11, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
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
  %10 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %11 = "it.itree"(%9) ({
    %12 = "it.RootOp"() : () -> !it.index_tree
    %13 = "it.IndexOp"(%12) : (!it.index_tree) -> !it.index
    %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index
    %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index
    %cst = arith.constant 0.000000e+00 : f64
    %16 = "it.LHSOperandOp"(%cst) : (f64) -> !it.operand
    %17 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %18 = "it.ComputeOp"(%14, %16, %17) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
    %19 = "it.LHSOperandOp"(%18) : (f64) -> !it.operand
    %crd, %pos = "it.IndexToTensorDim"(%4, %14) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%4, %15, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %20 = "it.OperandOp"(%4, %pos, %pos_1, %crd, %crd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%7, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%7, %13, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %21 = "it.OperandOp"(%7, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %22 = "it.ComputeOp"(%15, %19, %20, %21) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %23 = "it.IndexOp"(%14) : (!it.index) -> !it.index
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%9, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%9, %23, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %24 = "it.LHSOperandOp"(%9, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %25 = "it.OperandOp"(%22) : (f64) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%8, %13) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%8, %23, %pos_11) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %26 = "it.OperandOp"(%8, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %27 = "it.ComputeOp"(%23, %24, %25, %26) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %27 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%11, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%9) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToIndexTreePass () //----- //
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
  %10 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %11 = "it.itree"(%9) ({
    %12 = "it.RootOp"() : () -> !it.index_tree
    %13 = "it.IndexOp"(%12) : (!it.index_tree) -> !it.index
    %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index
    %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index
    %cst = arith.constant 0.000000e+00 : f64
    %16 = "it.LHSOperandOp"(%cst) : (f64) -> !it.operand
    %17 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %18 = "it.ComputeOp"(%14, %16, %17) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
    %19 = "it.LHSOperandOp"(%18) : (f64) -> !it.operand
    %crd, %pos = "it.IndexToTensorDim"(%4, %14) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%4, %15, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %20 = "it.OperandOp"(%4, %pos, %pos_1, %crd, %crd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%7, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%7, %13, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %21 = "it.OperandOp"(%7, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %22 = "it.ComputeOp"(%15, %19, %20, %21) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %23 = "it.IndexOp"(%14) : (!it.index) -> !it.index
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%9, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%9, %23, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %24 = "it.LHSOperandOp"(%9, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %25 = "it.OperandOp"(%22) : (f64) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%8, %13) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%8, %23, %pos_11) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %26 = "it.OperandOp"(%8, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %27 = "it.ComputeOp"(%23, %24, %25, %26) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %27 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%11, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
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
  %6 = "ta.dense_tensor_decl"(%1) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%3) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%6) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %7 = "it.itree"(%5) ({
    %8 = "it.RootOp"() : () -> !it.index_tree
    %9 = "it.DomainOp"(%4) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %10 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %11 = "it.DomainUnionOp"(%9, %10) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %12 = "it.IndexOp"(%8, %11) : (!it.index_tree, !it.domain) -> !it.index
    %13 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %14 = "it.IndexOp"(%12, %13) : (!it.index, !it.domain) -> !it.index
    %15 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %16 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %17 = "it.DomainIntersectionOp"(%16, %15) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %18 = "it.IndexOp"(%14, %17) : (!it.index, !it.domain) -> !it.index
    %19 = "it.LHSOperandOp"(%cst) : (f64) -> !it.operand
    %20 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %21 = "it.ComputeOp"(%14, %19, %20) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
    %22 = "it.LHSOperandOp"(%21) : (f64) -> !it.operand
    %crd, %pos = "it.IndexToTensorDim"(%0, %14) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%0, %18, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %23 = "it.OperandOp"(%0, %pos, %pos_1, %crd, %crd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%3, %18) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%3, %12, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %24 = "it.OperandOp"(%3, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %25 = "it.ComputeOp"(%18, %22, %23, %24) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %26 = "it.DomainOp"(%4) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %27 = "it.IndexOp"(%14, %26) : (!it.index, !it.domain) -> !it.index
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%5, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%5, %27, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %28 = "it.LHSOperandOp"(%5, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %29 = "it.OperandOp"(%25) : (f64) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%4, %12) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%4, %27, %pos_11) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %30 = "it.OperandOp"(%4, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %31 = "it.ComputeOp"(%27, %28, %29, %30) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %31 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
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
  %28 = "ta.dense_tensor_decl"(%23) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%27) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%28) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %29 = "it.itree"(%27) ({
    %30 = "it.RootOp"() : () -> !it.index_tree
    %31 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %32 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.DomainUnionOp"(%31, %32) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %34 = "it.IndexOp"(%30, %33) : (!it.index_tree, !it.domain) -> !it.index
    %35 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %38 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %39 = "it.DomainIntersectionOp"(%38, %37) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %40 = "it.IndexOp"(%36, %39) : (!it.index, !it.domain) -> !it.index
    %41 = "it.LHSOperandOp"(%cst) : (f64) -> !it.operand
    %42 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %43 = "it.ComputeOp"(%36, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
    %44 = "it.LHSOperandOp"(%43) : (f64) -> !it.operand
    %crd, %pos = "it.IndexToTensorDim"(%22, %36) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%22, %40, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %45 = "it.OperandOp"(%22, %pos, %pos_33, %crd, %crd_32) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%25, %40) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%25, %34, %pos_35) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %46 = "it.OperandOp"(%25, %pos_35, %pos_37, %crd_34, %crd_36) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %47 = "it.ComputeOp"(%40, %44, %45, %46) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %48 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %49 = "it.IndexOp"(%36, %48) : (!it.index, !it.domain) -> !it.index
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%27, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%27, %49, %pos_39) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %50 = "it.LHSOperandOp"(%27, %pos_39, %pos_41, %crd_38, %crd_40) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %51 = "it.OperandOp"(%47) : (f64) -> !it.operand
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%26, %34) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%26, %49, %pos_43) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %52 = "it.OperandOp"(%26, %pos_43, %pos_45, %crd_42, %crd_44) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %53 = "it.ComputeOp"(%49, %50, %51, %52) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %53 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%29, %27) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
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
  %alloc_35 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %28 = bufferization.to_tensor %alloc_35 restrict writable : memref<?x4xf64>
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%27) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%28) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %29 = "it.itree"(%27) ({
    %30 = "it.RootOp"() : () -> !it.index_tree
    %31 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %32 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.DomainUnionOp"(%31, %32) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %34 = "it.IndexOp"(%30, %33) : (!it.index_tree, !it.domain) -> !it.index
    %35 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %38 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %39 = "it.DomainIntersectionOp"(%38, %37) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %40 = "it.IndexOp"(%36, %39) : (!it.index, !it.domain) -> !it.index
    %41 = "it.LHSOperandOp"(%cst) : (f64) -> !it.operand
    %42 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %43 = "it.ComputeOp"(%36, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
    %44 = "it.LHSOperandOp"(%43) : (f64) -> !it.operand
    %crd, %pos = "it.IndexToTensorDim"(%22, %36) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%22, %40, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %45 = "it.OperandOp"(%22, %pos, %pos_37, %crd, %crd_36) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%25, %40) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%25, %34, %pos_39) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %46 = "it.OperandOp"(%25, %pos_39, %pos_41, %crd_38, %crd_40) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %47 = "it.ComputeOp"(%40, %44, %45, %46) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %48 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %49 = "it.IndexOp"(%36, %48) : (!it.index, !it.domain) -> !it.index
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%27, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%27, %49, %pos_43) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %50 = "it.LHSOperandOp"(%27, %pos_43, %pos_45, %crd_42, %crd_44) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %51 = "it.OperandOp"(%47) : (f64) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%26, %34) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%26, %49, %pos_47) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %52 = "it.OperandOp"(%26, %pos_47, %pos_49, %crd_46, %crd_48) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %53 = "it.ComputeOp"(%49, %50, %51, %52) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %53 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%29, %27) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
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
  %alloc_35 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %28 = bufferization.to_tensor %alloc_35 restrict writable : memref<?x4xf64>
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%27) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%28) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %29 = "it.itree"(%27) ({
    %30 = "it.RootOp"() : () -> !it.index_tree
    %31 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %32 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.DomainUnionOp"(%31, %32) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %34 = "it.IndexOp"(%30, %33) : (!it.index_tree, !it.domain) -> !it.index
    %35 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %38 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %39 = "it.DomainIntersectionOp"(%38, %37) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %40 = "it.IndexOp"(%36, %39) : (!it.index, !it.domain) -> !it.index
    %41 = "it.LHSOperandOp"(%cst) : (f64) -> !it.operand
    %42 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %43 = "it.ComputeOp"(%36, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
    %44 = "it.LHSOperandOp"(%43) : (f64) -> !it.operand
    %crd, %pos = "it.IndexToTensorDim"(%22, %36) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%22, %40, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %45 = "it.OperandOp"(%22, %pos, %pos_37, %crd, %crd_36) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%25, %40) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%25, %34, %pos_39) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %46 = "it.OperandOp"(%25, %pos_39, %pos_41, %crd_38, %crd_40) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %47 = "it.ComputeOp"(%40, %44, %45, %46) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %48 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %49 = "it.IndexOp"(%36, %48) : (!it.index, !it.domain) -> !it.index
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%27, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%27, %49, %pos_43) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %50 = "it.LHSOperandOp"(%27, %pos_43, %pos_45, %crd_42, %crd_44) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %51 = "it.OperandOp"(%47) : (f64) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%26, %34) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%26, %49, %pos_47) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %52 = "it.OperandOp"(%26, %pos_47, %pos_49, %crd_46, %crd_48) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %53 = "it.ComputeOp"(%49, %50, %51, %52) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %53 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%29, %27) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
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
  %alloc_35 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %28 = bufferization.to_tensor %alloc_35 restrict writable : memref<?x4xf64>
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%27) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%28) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %29 = "it.itree"(%27) ({
    %30 = "it.RootOp"() : () -> !it.index_tree
    %31 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %32 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.DomainUnionOp"(%31, %32) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %34 = "it.IndexOp"(%30, %33) : (!it.index_tree, !it.domain) -> !it.index
    %35 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %38 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %39 = "it.DomainIntersectionOp"(%38, %37) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %40 = "it.IndexOp"(%36, %39) : (!it.index, !it.domain) -> !it.index
    %41 = "it.LHSOperandOp"(%cst) : (f64) -> !it.operand
    %42 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %43 = "it.ComputeOp"(%36, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
    %44 = "it.LHSOperandOp"(%43) : (f64) -> !it.operand
    %crd, %pos = "it.IndexToTensorDim"(%22, %36) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%22, %40, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %45 = "it.OperandOp"(%22, %pos, %pos_37, %crd, %crd_36) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%25, %40) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%25, %34, %pos_39) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %46 = "it.OperandOp"(%25, %pos_39, %pos_41, %crd_38, %crd_40) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %47 = "it.ComputeOp"(%40, %44, %45, %46) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %48 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %49 = "it.IndexOp"(%36, %48) : (!it.index, !it.domain) -> !it.index
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%27, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%27, %49, %pos_43) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %50 = "it.LHSOperandOp"(%27, %pos_43, %pos_45, %crd_42, %crd_44) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %51 = "it.OperandOp"(%47) : (f64) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%26, %34) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%26, %49, %pos_47) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %52 = "it.OperandOp"(%26, %pos_47, %pos_49, %crd_46, %crd_48) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %53 = "it.ComputeOp"(%49, %50, %51, %52) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %53 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%29, %27) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
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
  %alloc_38 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_39 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_39 : f64) outs(%alloc_38 : memref<?x4xf64>)
  %28 = bufferization.to_tensor %alloc_38 restrict writable : memref<?x4xf64>
  %29 = "it.itree"(%27) ({
    %30 = "it.RootOp"() : () -> !it.index_tree
    %31 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %32 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.DomainUnionOp"(%31, %32) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %34 = "it.IndexOp"(%30, %33) : (!it.index_tree, !it.domain) -> !it.index
    %35 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %38 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %39 = "it.DomainIntersectionOp"(%38, %37) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %40 = "it.IndexOp"(%36, %39) : (!it.index, !it.domain) -> !it.index
    %41 = "it.LHSOperandOp"(%cst) : (f64) -> !it.operand
    %42 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %43 = "it.ComputeOp"(%36, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
    %44 = "it.LHSOperandOp"(%43) : (f64) -> !it.operand
    %crd, %pos = "it.IndexToTensorDim"(%22, %36) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%22, %40, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %45 = "it.OperandOp"(%22, %pos, %pos_41, %crd, %crd_40) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%25, %40) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%25, %34, %pos_43) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %46 = "it.OperandOp"(%25, %pos_43, %pos_45, %crd_42, %crd_44) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %47 = "it.ComputeOp"(%40, %44, %45, %46) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %48 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %49 = "it.IndexOp"(%36, %48) : (!it.index, !it.domain) -> !it.index
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%27, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%27, %49, %pos_47) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %50 = "it.LHSOperandOp"(%27, %pos_47, %pos_49, %crd_46, %crd_48) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %51 = "it.OperandOp"(%47) : (f64) -> !it.operand
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%26, %34) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%26, %49, %pos_51) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %52 = "it.OperandOp"(%26, %pos_51, %pos_53, %crd_50, %crd_52) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %53 = "it.ComputeOp"(%49, %50, %51, %52) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %53 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%29, %27) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
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
  %alloc_38 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_39 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_39 : f64) outs(%alloc_38 : memref<?x4xf64>)
  %28 = bufferization.to_tensor %alloc_38 restrict writable : memref<?x4xf64>
  %29 = "it.itree"(%27) ({
    %30 = "it.RootOp"() : () -> !it.index_tree
    %31 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %32 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.DomainUnionOp"(%31, %32) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %34 = "it.IndexOp"(%30, %33) : (!it.index_tree, !it.domain) -> !it.index
    %35 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %38 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %39 = "it.DomainIntersectionOp"(%38, %37) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %40 = "it.IndexOp"(%36, %39) : (!it.index, !it.domain) -> !it.index
    %41 = "it.LHSOperandOp"(%cst) : (f64) -> !it.operand
    %42 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %43 = "it.ComputeOp"(%36, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
    %44 = "it.LHSOperandOp"(%43) : (f64) -> !it.operand
    %crd, %pos = "it.IndexToTensorDim"(%22, %36) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%22, %40, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %45 = "it.OperandOp"(%22, %pos, %pos_41, %crd, %crd_40) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%25, %40) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%25, %34, %pos_43) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %46 = "it.OperandOp"(%25, %pos_43, %pos_45, %crd_42, %crd_44) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %47 = "it.ComputeOp"(%40, %44, %45, %46) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %48 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %49 = "it.IndexOp"(%36, %48) : (!it.index, !it.domain) -> !it.index
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%27, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%27, %49, %pos_47) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %50 = "it.LHSOperandOp"(%27, %pos_47, %pos_49, %crd_46, %crd_48) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %51 = "it.OperandOp"(%47) : (f64) -> !it.operand
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%26, %34) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%26, %49, %pos_51) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %52 = "it.OperandOp"(%26, %pos_51, %pos_53, %crd_50, %crd_52) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %53 = "it.ComputeOp"(%49, %50, %51, %52) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %53 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%29, %27) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
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
  %alloc_38 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_39 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_39 : f64) outs(%alloc_38 : memref<?x4xf64>)
  %28 = bufferization.to_tensor %alloc_38 restrict writable : memref<?x4xf64>
  %29 = "it.itree"(%27) ({
    %30 = "it.RootOp"() : () -> !it.index_tree
    %31 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %32 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.DomainUnionOp"(%31, %32) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %34 = "it.IndexOp"(%30, %33) : (!it.index_tree, !it.domain) -> !it.index
    %35 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %38 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %39 = "it.DomainIntersectionOp"(%38, %37) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %40 = "it.IndexOp"(%36, %39) : (!it.index, !it.domain) -> !it.index
    %41 = "it.LHSOperandOp"(%cst) : (f64) -> !it.operand
    %42 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %43 = "it.ComputeOp"(%36, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
    %44 = "it.LHSOperandOp"(%43) : (f64) -> !it.operand
    %crd, %pos = "it.IndexToTensorDim"(%22, %36) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%22, %40, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %45 = "it.OperandOp"(%22, %pos, %pos_41, %crd, %crd_40) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%25, %40) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%25, %34, %pos_43) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %46 = "it.OperandOp"(%25, %pos_43, %pos_45, %crd_42, %crd_44) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %47 = "it.ComputeOp"(%40, %44, %45, %46) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %48 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %49 = "it.IndexOp"(%36, %48) : (!it.index, !it.domain) -> !it.index
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%27, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%27, %49, %pos_47) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %50 = "it.LHSOperandOp"(%27, %pos_47, %pos_49, %crd_46, %crd_48) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %51 = "it.OperandOp"(%47) : (f64) -> !it.operand
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%26, %34) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%26, %49, %pos_51) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %52 = "it.OperandOp"(%26, %pos_51, %pos_53, %crd_50, %crd_52) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %53 = "it.ComputeOp"(%49, %50, %51, %52) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %53 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.print"(%29) : (tensor<?x4xf64>) -> ()
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
  %alloc_24 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x4xf64>)
  %30 = "it.itree"(%29) ({
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DenseDomainOp"(%idx4, %28, %27) <{dims = [0 : i32, 1 : i32]}> : (index, tensor<4x4xf64>, tensor<?x4xf64>) -> !it.domain
    %33 = "it.IndexOp"(%31, %32) : (!it.index_tree, !it.domain) -> !it.index
    %34 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %36 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) : (!it.index, !it.domain) -> !it.index
    %38 = "it.LHSOperandOp"(%cst_1) : (f64) -> !it.operand
    %39 = "it.OperandOp"(%cst_1) : (f64) -> !it.operand
    %40 = "it.ComputeOp"(%35, %38, %39) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
    %41 = "it.LHSOperandOp"(%40) : (f64) -> !it.operand
    %crd_25, %pos_26 = "it.IndexToTensorDim"(%20, %37, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%20, %pos, %pos_26, %crd, %crd_25) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_27, %pos_28 = "it.IndexToTensorDim"(%27, %37) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_29, %pos_30 = "it.IndexToTensorDim"(%27, %33, %pos_28) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%27, %pos_28, %pos_30, %crd_27, %crd_29) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %44 = "it.ComputeOp"(%37, %41, %42, %43) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %45 = "it.DenseDomainOp"(%idx4, %28) <{dims = [1 : i32]}> : (index, tensor<4x4xf64>) -> !it.domain
    %46 = "it.IndexOp"(%35, %45) : (!it.index, !it.domain) -> !it.index
    %crd_31, %pos_32 = "it.IndexToTensorDim"(%29, %35) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%29, %46, %pos_32) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %47 = "it.LHSOperandOp"(%29, %pos_32, %pos_34, %crd_31, %crd_33) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %48 = "it.OperandOp"(%44) : (f64) -> !it.operand
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%28, %33) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%28, %46, %pos_36) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %49 = "it.OperandOp"(%28, %pos_36, %pos_38, %crd_35, %crd_37) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %50 = "it.ComputeOp"(%46, %47, %48, %49) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %50 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.print"(%30) : (tensor<?x4xf64>) -> ()
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
  %alloc_24 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x4xf64>)
  %30 = "it.itree"(%29) ({
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DenseDomainOp"(%idx4, %28, %27) <{dims = [0 : i32, 1 : i32]}> : (index, tensor<4x4xf64>, tensor<?x4xf64>) -> !it.domain
    %33 = "it.IndexOp"(%31, %32) : (!it.index_tree, !it.domain) -> !it.index
    %34 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %36 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) : (!it.index, !it.domain) -> !it.index
    %38 = "it.LHSOperandOp"(%cst_1) : (f64) -> !it.operand
    %39 = "it.OperandOp"(%cst_1) : (f64) -> !it.operand
    %40 = "it.ComputeOp"(%35, %38, %39) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> f64
    %41 = "it.LHSOperandOp"(%40) : (f64) -> !it.operand
    %crd_25, %pos_26 = "it.IndexToTensorDim"(%20, %37, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%20, %pos, %pos_26, %crd, %crd_25) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_27, %pos_28 = "it.IndexToTensorDim"(%27, %37) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_29, %pos_30 = "it.IndexToTensorDim"(%27, %33, %pos_28) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%27, %pos_28, %pos_30, %crd_27, %crd_29) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %44 = "it.ComputeOp"(%37, %41, %42, %43) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %45 = "it.DenseDomainOp"(%idx4, %28) <{dims = [1 : i32]}> : (index, tensor<4x4xf64>) -> !it.domain
    %46 = "it.IndexOp"(%35, %45) : (!it.index, !it.domain) -> !it.index
    %crd_31, %pos_32 = "it.IndexToTensorDim"(%29, %35) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%29, %46, %pos_32) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %47 = "it.LHSOperandOp"(%29, %pos_32, %pos_34, %crd_31, %crd_33) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %48 = "it.OperandOp"(%44) : (f64) -> !it.operand
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%28, %33) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%28, %46, %pos_36) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %49 = "it.OperandOp"(%28, %pos_36, %pos_38, %crd_35, %crd_37) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %50 = "it.ComputeOp"(%46, %47, %48, %49) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %50 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.print"(%30) : (tensor<?x4xf64>) -> ()
  return
}

Assertion failed: (Ptr != End && "dereferencing end() iterator"), function operator->, file DenseMap.h, line 1270.
run09.run_index_tree_before_domain.sh: line 56: 76949 Abort trap: 6           ../../cmake-build-debug/bin/comet-opt --convert-ta-to-it --convert-to-loops --mlir-print-ir-after-all notes/fusion.ta.IndexTree.before_domain.manual.v8.mlir
