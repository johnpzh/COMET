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
    %cst = arith.constant 0.000000e+00 : f64
    "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    %11:2 = "it.itree"(%cst, %9) ({
      %12 = "it.RootOp"() : () -> !it.index_tree
      %13 = "it.IndexOp"(%12) : (!it.index_tree) -> !it.index
      %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index
      %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index
      %16 = "it.LHSOperandOp"(%cst) : (f64) -> !it.operand
      %crd, %pos = "it.IndexToTensorDim"(%4, %14) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%4, %15, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %17 = "it.OperandOp"(%4, %pos, %pos_1, %crd, %crd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%7, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%7, %13, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %18 = "it.OperandOp"(%7, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %19 = "it.ComputeOp"(%15, %16, %17, %18) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
      %20 = "it.IndexOp"(%14) : (!it.index) -> !it.index
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%9, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%9, %20, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %21 = "it.LHSOperandOp"(%9, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %22 = "it.OperandOp"(%19) : (f64) -> !it.operand
      %crd_10, %pos_11 = "it.IndexToTensorDim"(%8, %13) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
      %crd_12, %pos_13 = "it.IndexToTensorDim"(%8, %20, %pos_11) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
      %23 = "it.OperandOp"(%8, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
      %24 = "it.ComputeOp"(%20, %21, %22, %23) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
      it.yield %cst, %24 : f64, tensor<?x4xf64>
    }) : (f64, tensor<?x4xf64>) -> (f64, tensor<?x4xf64>)
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
  %10 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %cst = arith.constant 0.000000e+00 : f64
  "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %11:2 = "it.itree"(%cst, %9) ({
    %12 = "it.RootOp"() : () -> !it.index_tree
    %13 = "it.IndexOp"(%12) : (!it.index_tree) -> !it.index
    %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index
    %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index
    %16 = "it.LHSOperandOp"(%cst) : (f64) -> !it.operand
    %crd, %pos = "it.IndexToTensorDim"(%4, %14) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%4, %15, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %17 = "it.OperandOp"(%4, %pos, %pos_1, %crd, %crd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%7, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%7, %13, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %18 = "it.OperandOp"(%7, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %19 = "it.ComputeOp"(%15, %16, %17, %18) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %20 = "it.IndexOp"(%14) : (!it.index) -> !it.index
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%9, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%9, %20, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %21 = "it.LHSOperandOp"(%9, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %22 = "it.OperandOp"(%19) : (f64) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%8, %13) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%8, %20, %pos_11) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %23 = "it.OperandOp"(%8, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %24 = "it.ComputeOp"(%20, %21, %22, %23) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %cst, %24 : f64, tensor<?x4xf64>
  }) : (f64, tensor<?x4xf64>) -> (f64, tensor<?x4xf64>)
  "ta.set_op"(%11#1, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
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
  %cst = arith.constant 0.000000e+00 : f64
  "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %11:2 = "it.itree"(%cst, %9) ({
    %12 = "it.RootOp"() : () -> !it.index_tree
    %13 = "it.IndexOp"(%12) : (!it.index_tree) -> !it.index
    %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index
    %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index
    %16 = "it.LHSOperandOp"(%cst) : (f64) -> !it.operand
    %crd, %pos = "it.IndexToTensorDim"(%4, %14) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%4, %15, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %17 = "it.OperandOp"(%4, %pos, %pos_1, %crd, %crd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%7, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%7, %13, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %18 = "it.OperandOp"(%7, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %19 = "it.ComputeOp"(%15, %16, %17, %18) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %20 = "it.IndexOp"(%14) : (!it.index) -> !it.index
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%9, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%9, %20, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %21 = "it.LHSOperandOp"(%9, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %22 = "it.OperandOp"(%19) : (f64) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%8, %13) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%8, %20, %pos_11) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %23 = "it.OperandOp"(%8, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %24 = "it.ComputeOp"(%20, %21, %22, %23) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %cst, %24 : f64, tensor<?x4xf64>
  }) : (f64, tensor<?x4xf64>) -> (f64, tensor<?x4xf64>)
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
  %6 = "ta.dense_tensor_decl"(%1) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%3) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%6) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %7:2 = "it.itree"(%cst, %5) ({
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
    %crd, %pos = "it.IndexToTensorDim"(%0, %14) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%0, %18, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %20 = "it.OperandOp"(%0, %pos, %pos_1, %crd, %crd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%3, %18) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%3, %12, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %21 = "it.OperandOp"(%3, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %22 = "it.ComputeOp"(%18, %19, %20, %21) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %23 = "it.DomainOp"(%4) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %24 = "it.IndexOp"(%14, %23) : (!it.index, !it.domain) -> !it.index
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%5, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%5, %24, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %25 = "it.LHSOperandOp"(%5, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %26 = "it.OperandOp"(%22) : (f64) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%4, %12) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%4, %24, %pos_11) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %27 = "it.OperandOp"(%4, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %28 = "it.ComputeOp"(%24, %25, %26, %27) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %cst, %28 : f64, tensor<?x4xf64>
  }) : (f64, tensor<?x4xf64>) -> (f64, tensor<?x4xf64>)
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
  %28 = "ta.dense_tensor_decl"(%23) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%27) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%28) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %29:2 = "it.itree"(%cst, %27) ({
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
    %crd, %pos = "it.IndexToTensorDim"(%22, %36) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%22, %40, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%22, %pos, %pos_33, %crd, %crd_32) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%25, %40) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%25, %34, %pos_35) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%25, %pos_35, %pos_37, %crd_34, %crd_36) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %44 = "it.ComputeOp"(%40, %41, %42, %43) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %45 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %46 = "it.IndexOp"(%36, %45) : (!it.index, !it.domain) -> !it.index
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%27, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%27, %46, %pos_39) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %47 = "it.LHSOperandOp"(%27, %pos_39, %pos_41, %crd_38, %crd_40) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %48 = "it.OperandOp"(%44) : (f64) -> !it.operand
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%26, %34) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%26, %46, %pos_43) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %49 = "it.OperandOp"(%26, %pos_43, %pos_45, %crd_42, %crd_44) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %50 = "it.ComputeOp"(%46, %47, %48, %49) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %cst, %50 : f64, tensor<?x4xf64>
  }) : (f64, tensor<?x4xf64>) -> (f64, tensor<?x4xf64>)
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
  %alloc_35 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %28 = bufferization.to_tensor %alloc_35 restrict writable : memref<?x4xf64>
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%27) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%28) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %29:2 = "it.itree"(%cst, %27) ({
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
    %crd, %pos = "it.IndexToTensorDim"(%22, %36) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%22, %40, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%22, %pos, %pos_37, %crd, %crd_36) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%25, %40) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%25, %34, %pos_39) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%25, %pos_39, %pos_41, %crd_38, %crd_40) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %44 = "it.ComputeOp"(%40, %41, %42, %43) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %45 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %46 = "it.IndexOp"(%36, %45) : (!it.index, !it.domain) -> !it.index
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%27, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%27, %46, %pos_43) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %47 = "it.LHSOperandOp"(%27, %pos_43, %pos_45, %crd_42, %crd_44) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %48 = "it.OperandOp"(%44) : (f64) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%26, %34) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%26, %46, %pos_47) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %49 = "it.OperandOp"(%26, %pos_47, %pos_49, %crd_46, %crd_48) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %50 = "it.ComputeOp"(%46, %47, %48, %49) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %cst, %50 : f64, tensor<?x4xf64>
  }) : (f64, tensor<?x4xf64>) -> (f64, tensor<?x4xf64>)
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
  %alloc_35 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %28 = bufferization.to_tensor %alloc_35 restrict writable : memref<?x4xf64>
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%27) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%28) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %29:2 = "it.itree"(%cst, %27) ({
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
    %crd, %pos = "it.IndexToTensorDim"(%22, %36) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%22, %40, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%22, %pos, %pos_37, %crd, %crd_36) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%25, %40) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%25, %34, %pos_39) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%25, %pos_39, %pos_41, %crd_38, %crd_40) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %44 = "it.ComputeOp"(%40, %41, %42, %43) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %45 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %46 = "it.IndexOp"(%36, %45) : (!it.index, !it.domain) -> !it.index
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%27, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%27, %46, %pos_43) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %47 = "it.LHSOperandOp"(%27, %pos_43, %pos_45, %crd_42, %crd_44) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %48 = "it.OperandOp"(%44) : (f64) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%26, %34) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%26, %46, %pos_47) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %49 = "it.OperandOp"(%26, %pos_47, %pos_49, %crd_46, %crd_48) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %50 = "it.ComputeOp"(%46, %47, %48, %49) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %cst, %50 : f64, tensor<?x4xf64>
  }) : (f64, tensor<?x4xf64>) -> (f64, tensor<?x4xf64>)
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
  %alloc_35 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %28 = bufferization.to_tensor %alloc_35 restrict writable : memref<?x4xf64>
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%27) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%28) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %29:2 = "it.itree"(%cst, %27) ({
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
    %crd, %pos = "it.IndexToTensorDim"(%22, %36) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%22, %40, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%22, %pos, %pos_37, %crd, %crd_36) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%25, %40) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%25, %34, %pos_39) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%25, %pos_39, %pos_41, %crd_38, %crd_40) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %44 = "it.ComputeOp"(%40, %41, %42, %43) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %45 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %46 = "it.IndexOp"(%36, %45) : (!it.index, !it.domain) -> !it.index
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%27, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%27, %46, %pos_43) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %47 = "it.LHSOperandOp"(%27, %pos_43, %pos_45, %crd_42, %crd_44) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %48 = "it.OperandOp"(%44) : (f64) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%26, %34) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%26, %46, %pos_47) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %49 = "it.OperandOp"(%26, %pos_47, %pos_49, %crd_46, %crd_48) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %50 = "it.ComputeOp"(%46, %47, %48, %49) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %cst, %50 : f64, tensor<?x4xf64>
  }) : (f64, tensor<?x4xf64>) -> (f64, tensor<?x4xf64>)
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
  %alloc_38 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_39 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_39 : f64) outs(%alloc_38 : memref<?x4xf64>)
  %28 = bufferization.to_tensor %alloc_38 restrict writable : memref<?x4xf64>
  %29:2 = "it.itree"(%cst, %27) ({
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
    %crd, %pos = "it.IndexToTensorDim"(%22, %36) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%22, %40, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%22, %pos, %pos_41, %crd, %crd_40) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%25, %40) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%25, %34, %pos_43) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%25, %pos_43, %pos_45, %crd_42, %crd_44) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %44 = "it.ComputeOp"(%40, %41, %42, %43) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %45 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %46 = "it.IndexOp"(%36, %45) : (!it.index, !it.domain) -> !it.index
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%27, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%27, %46, %pos_47) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %47 = "it.LHSOperandOp"(%27, %pos_47, %pos_49, %crd_46, %crd_48) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %48 = "it.OperandOp"(%44) : (f64) -> !it.operand
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%26, %34) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%26, %46, %pos_51) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %49 = "it.OperandOp"(%26, %pos_51, %pos_53, %crd_50, %crd_52) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %50 = "it.ComputeOp"(%46, %47, %48, %49) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %cst, %50 : f64, tensor<?x4xf64>
  }) : (f64, tensor<?x4xf64>) -> (f64, tensor<?x4xf64>)
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
  %alloc_38 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_39 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_39 : f64) outs(%alloc_38 : memref<?x4xf64>)
  %28 = bufferization.to_tensor %alloc_38 restrict writable : memref<?x4xf64>
  %29:2 = "it.itree"(%cst, %27) ({
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
    %crd, %pos = "it.IndexToTensorDim"(%22, %36) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%22, %40, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%22, %pos, %pos_41, %crd, %crd_40) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%25, %40) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%25, %34, %pos_43) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%25, %pos_43, %pos_45, %crd_42, %crd_44) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %44 = "it.ComputeOp"(%40, %41, %42, %43) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %45 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %46 = "it.IndexOp"(%36, %45) : (!it.index, !it.domain) -> !it.index
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%27, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%27, %46, %pos_47) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %47 = "it.LHSOperandOp"(%27, %pos_47, %pos_49, %crd_46, %crd_48) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %48 = "it.OperandOp"(%44) : (f64) -> !it.operand
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%26, %34) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%26, %46, %pos_51) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %49 = "it.OperandOp"(%26, %pos_51, %pos_53, %crd_50, %crd_52) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %50 = "it.ComputeOp"(%46, %47, %48, %49) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %cst, %50 : f64, tensor<?x4xf64>
  }) : (f64, tensor<?x4xf64>) -> (f64, tensor<?x4xf64>)
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
  %alloc_38 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_39 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_39 : f64) outs(%alloc_38 : memref<?x4xf64>)
  %28 = bufferization.to_tensor %alloc_38 restrict writable : memref<?x4xf64>
  %29:2 = "it.itree"(%cst, %27) ({
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
    %crd, %pos = "it.IndexToTensorDim"(%22, %36) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%22, %40, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%22, %pos, %pos_41, %crd, %crd_40) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%25, %40) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%25, %34, %pos_43) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%25, %pos_43, %pos_45, %crd_42, %crd_44) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %44 = "it.ComputeOp"(%40, %41, %42, %43) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %45 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
    %46 = "it.IndexOp"(%36, %45) : (!it.index, !it.domain) -> !it.index
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%27, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%27, %46, %pos_47) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %47 = "it.LHSOperandOp"(%27, %pos_47, %pos_49, %crd_46, %crd_48) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %48 = "it.OperandOp"(%44) : (f64) -> !it.operand
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%26, %34) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%26, %46, %pos_51) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %49 = "it.OperandOp"(%26, %pos_51, %pos_53, %crd_50, %crd_52) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %50 = "it.ComputeOp"(%46, %47, %48, %49) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %cst, %50 : f64, tensor<?x4xf64>
  }) : (f64, tensor<?x4xf64>) -> (f64, tensor<?x4xf64>)
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
  %alloc_24 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x4xf64>)
  %30:2 = "it.itree"(%cst_1, %29) ({
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DenseDomainOp"(%idx4, %28, %27) <{dims = [0 : i32, 1 : i32]}> : (index, tensor<4x4xf64>, tensor<?x4xf64>) -> !it.domain
    %33 = "it.IndexOp"(%31, %32) : (!it.index_tree, !it.domain) -> !it.index
    %34 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %36 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) : (!it.index, !it.domain) -> !it.index
    %38 = "it.LHSOperandOp"(%cst_1) : (f64) -> !it.operand
    %crd_25, %pos_26 = "it.IndexToTensorDim"(%20, %37, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%20, %pos, %pos_26, %crd, %crd_25) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_27, %pos_28 = "it.IndexToTensorDim"(%27, %37) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_29, %pos_30 = "it.IndexToTensorDim"(%27, %33, %pos_28) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%27, %pos_28, %pos_30, %crd_27, %crd_29) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %41 = "it.ComputeOp"(%37, %38, %39, %40) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %42 = "it.DenseDomainOp"(%idx4, %28) <{dims = [1 : i32]}> : (index, tensor<4x4xf64>) -> !it.domain
    %43 = "it.IndexOp"(%35, %42) : (!it.index, !it.domain) -> !it.index
    %crd_31, %pos_32 = "it.IndexToTensorDim"(%29, %35) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%29, %43, %pos_32) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %44 = "it.LHSOperandOp"(%29, %pos_32, %pos_34, %crd_31, %crd_33) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %45 = "it.OperandOp"(%41) : (f64) -> !it.operand
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%28, %33) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%28, %43, %pos_36) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %46 = "it.OperandOp"(%28, %pos_36, %pos_38, %crd_35, %crd_37) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %47 = "it.ComputeOp"(%43, %44, %45, %46) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %cst_1, %47 : f64, tensor<?x4xf64>
  }) : (f64, tensor<?x4xf64>) -> (f64, tensor<?x4xf64>)
  "ta.print"(%30#1) : (tensor<?x4xf64>) -> ()
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
  %30:2 = "it.itree"(%cst_1, %29) ({
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DenseDomainOp"(%idx4, %28, %27) <{dims = [0 : i32, 1 : i32]}> : (index, tensor<4x4xf64>, tensor<?x4xf64>) -> !it.domain
    %33 = "it.IndexOp"(%31, %32) : (!it.index_tree, !it.domain) -> !it.index
    %34 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %36 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) : (!it.index, !it.domain) -> !it.index
    %38 = "it.LHSOperandOp"(%cst_1) : (f64) -> !it.operand
    %crd_25, %pos_26 = "it.IndexToTensorDim"(%20, %37, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%20, %pos, %pos_26, %crd, %crd_25) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_27, %pos_28 = "it.IndexToTensorDim"(%27, %37) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_29, %pos_30 = "it.IndexToTensorDim"(%27, %33, %pos_28) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%27, %pos_28, %pos_30, %crd_27, %crd_29) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %41 = "it.ComputeOp"(%37, %38, %39, %40) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> f64
    %42 = "it.DenseDomainOp"(%idx4, %28) <{dims = [1 : i32]}> : (index, tensor<4x4xf64>) -> !it.domain
    %43 = "it.IndexOp"(%35, %42) : (!it.index, !it.domain) -> !it.index
    %crd_31, %pos_32 = "it.IndexToTensorDim"(%29, %35) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%29, %43, %pos_32) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %44 = "it.LHSOperandOp"(%29, %pos_32, %pos_34, %crd_31, %crd_33) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %45 = "it.OperandOp"(%41) : (f64) -> !it.operand
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%28, %33) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%28, %43, %pos_36) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
    %46 = "it.OperandOp"(%28, %pos_36, %pos_38, %crd_35, %crd_37) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
    %47 = "it.ComputeOp"(%43, %44, %45, %46) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %cst_1, %47 : f64, tensor<?x4xf64>
  }) : (f64, tensor<?x4xf64>) -> (f64, tensor<?x4xf64>)
  "ta.print"(%30#1) : (tensor<?x4xf64>) -> ()
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
  %alloc_24 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x4xf64>)
  %30:2 = "it.itree"(%cst_1, %29) ({
    %c0_25 = arith.constant 0 : index
    %c1_26 = arith.constant 1 : index
    %31:2 = scf.for %arg0 = %c0_25 to %idx4 step %c1_26 iter_args(%arg1 = %cst_1, %arg2 = %29) -> (f64, tensor<?x4xf64>) {
      %c0_27 = arith.constant 0 : index
      %c1_28 = arith.constant 1 : index
      %32:2 = scf.for %arg3 = %c0_27 to %21 step %c1_28 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (f64, tensor<?x4xf64>) {
        %c1_29 = arith.constant 1 : index
        %33 = arith.addi %arg3, %c1_29 : index
        %extracted = tensor.extract %22[%arg3] : tensor<?xi64>
        %34 = arith.index_cast %extracted : i64 to index
        %extracted_30 = tensor.extract %22[%33] : tensor<?xi64>
        %35 = arith.index_cast %extracted_30 : i64 to index
        %c1_31 = arith.constant 1 : index
        %36:2 = scf.for %arg6 = %34 to %35 step %c1_31 iter_args(%arg7 = %arg4, %arg8 = %arg5) -> (f64, tensor<?x4xf64>) {
          %38 = "ta.SpTensorGetCrd"(%20, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %39 = arith.index_cast %38 : i64 to index
          %40 = "ta.TAExtractOp"(%20, %arg6, %arg3, %39) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %extracted_34 = tensor.extract %27[%39, %arg0] : tensor<?x4xf64>
          %41 = arith.mulf %40, %extracted_34 : f64
          %42 = arith.addf %arg7, %41 : f64
          scf.yield %42, %arg8 : f64, tensor<?x4xf64>
        }
        %c0_32 = arith.constant 0 : index
        %c1_33 = arith.constant 1 : index
        %37:2 = scf.for %arg6 = %c0_32 to %idx4 step %c1_33 iter_args(%arg7 = %36#0, %arg8 = %36#1) -> (f64, tensor<?x4xf64>) {
          %extracted_34 = tensor.extract %28[%arg0, %arg6] : tensor<4x4xf64>
          %38 = arith.mulf %arg7, %extracted_34 : f64
          %extracted_35 = tensor.extract %arg8[%arg3, %arg6] : tensor<?x4xf64>
          %39 = arith.addf %extracted_35, %38 : f64
          %inserted = tensor.insert %39 into %arg8[%arg3, %arg6] : tensor<?x4xf64>
          scf.yield %arg7, %inserted : f64, tensor<?x4xf64>
        }
        scf.yield %37#0, %37#1 : f64, tensor<?x4xf64>
      }
      scf.yield %32#0, %32#1 : f64, tensor<?x4xf64>
    }
    it.yield %31#0, %31#1 : f64, tensor<?x4xf64>
  }) : (f64, tensor<?x4xf64>) -> (f64, tensor<?x4xf64>)
  "ta.print"(%30#1) : (tensor<?x4xf64>) -> ()
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
  %alloc_24 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x4xf64>)
  %30:2 = "it.itree"(%cst_1, %29) ({
    %c0_25 = arith.constant 0 : index
    %c1_26 = arith.constant 1 : index
    %31:2 = scf.for %arg0 = %c0_25 to %idx4 step %c1_26 iter_args(%arg1 = %cst_1, %arg2 = %29) -> (f64, tensor<?x4xf64>) {
      %c0_27 = arith.constant 0 : index
      %c1_28 = arith.constant 1 : index
      %32:2 = scf.for %arg3 = %c0_27 to %21 step %c1_28 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (f64, tensor<?x4xf64>) {
        %c1_29 = arith.constant 1 : index
        %33 = arith.addi %arg3, %c1_29 : index
        %extracted = tensor.extract %22[%arg3] : tensor<?xi64>
        %34 = arith.index_cast %extracted : i64 to index
        %extracted_30 = tensor.extract %22[%33] : tensor<?xi64>
        %35 = arith.index_cast %extracted_30 : i64 to index
        %c1_31 = arith.constant 1 : index
        %36:2 = scf.for %arg6 = %34 to %35 step %c1_31 iter_args(%arg7 = %arg4, %arg8 = %arg5) -> (f64, tensor<?x4xf64>) {
          %38 = "ta.SpTensorGetCrd"(%20, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %39 = arith.index_cast %38 : i64 to index
          %40 = "ta.TAExtractOp"(%20, %arg6, %arg3, %39) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %extracted_34 = tensor.extract %27[%39, %arg0] : tensor<?x4xf64>
          %41 = arith.mulf %40, %extracted_34 : f64
          %42 = arith.addf %arg7, %41 : f64
          scf.yield %42, %arg8 : f64, tensor<?x4xf64>
        }
        %c0_32 = arith.constant 0 : index
        %c1_33 = arith.constant 1 : index
        %37:2 = scf.for %arg6 = %c0_32 to %idx4 step %c1_33 iter_args(%arg7 = %36#0, %arg8 = %36#1) -> (f64, tensor<?x4xf64>) {
          %extracted_34 = tensor.extract %28[%arg0, %arg6] : tensor<4x4xf64>
          %38 = arith.mulf %arg7, %extracted_34 : f64
          %extracted_35 = tensor.extract %arg8[%arg3, %arg6] : tensor<?x4xf64>
          %39 = arith.addf %extracted_35, %38 : f64
          %inserted = tensor.insert %39 into %arg8[%arg3, %arg6] : tensor<?x4xf64>
          scf.yield %arg7, %inserted : f64, tensor<?x4xf64>
        }
        scf.yield %37#0, %37#1 : f64, tensor<?x4xf64>
      }
      scf.yield %32#0, %32#1 : f64, tensor<?x4xf64>
    }
    it.yield %31#0, %31#1 : f64, tensor<?x4xf64>
  }) : (f64, tensor<?x4xf64>) -> (f64, tensor<?x4xf64>)
  "ta.print"(%30#1) : (tensor<?x4xf64>) -> ()
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
  %alloc_31 = memref.alloc(%extracted_25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_31 : memref<?x4xf64>)
  %24:2 = "it.itree"(%cst_1, %23) ({
    %c0_32 = arith.constant 0 : index
    %c1_33 = arith.constant 1 : index
    %25:2 = scf.for %arg0 = %c0_32 to %idx4 step %c1_33 iter_args(%arg1 = %cst_1, %arg2 = %23) -> (f64, tensor<?x4xf64>) {
      %c0_34 = arith.constant 0 : index
      %c1_35 = arith.constant 1 : index
      %26:2 = scf.for %arg3 = %c0_34 to %extracted step %c1_35 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (f64, tensor<?x4xf64>) {
        %c1_36 = arith.constant 1 : index
        %27 = arith.addi %arg3, %c1_36 : index
        %extracted_37 = tensor.extract %15[%arg3] : tensor<?xi64>
        %28 = arith.index_cast %extracted_37 : i64 to index
        %extracted_38 = tensor.extract %15[%27] : tensor<?xi64>
        %29 = arith.index_cast %extracted_38 : i64 to index
        %c1_39 = arith.constant 1 : index
        %30:2 = scf.for %arg6 = %28 to %29 step %c1_39 iter_args(%arg7 = %arg4, %arg8 = %arg5) -> (f64, tensor<?x4xf64>) {
          %extracted_42 = tensor.extract %16[%arg6] : tensor<?xi64>
          %32 = arith.index_cast %extracted_42 : i64 to index
          %extracted_43 = tensor.extract %19[%arg6] : tensor<?xf64>
          %extracted_44 = tensor.extract %21[%32, %arg0] : tensor<?x4xf64>
          %33 = arith.mulf %extracted_43, %extracted_44 : f64
          %34 = arith.addf %arg7, %33 : f64
          scf.yield %34, %arg8 : f64, tensor<?x4xf64>
        }
        %c0_40 = arith.constant 0 : index
        %c1_41 = arith.constant 1 : index
        %31:2 = scf.for %arg6 = %c0_40 to %idx4 step %c1_41 iter_args(%arg7 = %30#0, %arg8 = %30#1) -> (f64, tensor<?x4xf64>) {
          %extracted_42 = tensor.extract %22[%arg0, %arg6] : tensor<4x4xf64>
          %32 = arith.mulf %arg7, %extracted_42 : f64
          %extracted_43 = tensor.extract %arg8[%arg3, %arg6] : tensor<?x4xf64>
          %33 = arith.addf %extracted_43, %32 : f64
          %inserted = tensor.insert %33 into %arg8[%arg3, %arg6] : tensor<?x4xf64>
          scf.yield %arg7, %inserted : f64, tensor<?x4xf64>
        }
        scf.yield %31#0, %31#1 : f64, tensor<?x4xf64>
      }
      scf.yield %26#0, %26#1 : f64, tensor<?x4xf64>
    }
    it.yield %25#0, %25#1 : f64, tensor<?x4xf64>
  }) : (f64, tensor<?x4xf64>) -> (f64, tensor<?x4xf64>)
  "ta.print"(%24#1) : (tensor<?x4xf64>) -> ()
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
  %alloc_28 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_28 : memref<?x4xf64>)
  %c0_29 = arith.constant 0 : index
  %c1_30 = arith.constant 1 : index
  %24:2 = scf.for %arg0 = %c0_29 to %idx4 step %c1_30 iter_args(%arg1 = %cst_1, %arg2 = %23) -> (f64, tensor<?x4xf64>) {
    %c0_31 = arith.constant 0 : index
    %c1_32 = arith.constant 1 : index
    %25:2 = scf.for %arg3 = %c0_31 to %9 step %c1_32 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (f64, tensor<?x4xf64>) {
      %c1_33 = arith.constant 1 : index
      %26 = arith.addi %arg3, %c1_33 : index
      %extracted = tensor.extract %15[%arg3] : tensor<?xi64>
      %27 = arith.index_cast %extracted : i64 to index
      %extracted_34 = tensor.extract %15[%26] : tensor<?xi64>
      %28 = arith.index_cast %extracted_34 : i64 to index
      %c1_35 = arith.constant 1 : index
      %29:2 = scf.for %arg6 = %27 to %28 step %c1_35 iter_args(%arg7 = %arg4, %arg8 = %arg5) -> (f64, tensor<?x4xf64>) {
        %extracted_38 = tensor.extract %16[%arg6] : tensor<?xi64>
        %31 = arith.index_cast %extracted_38 : i64 to index
        %extracted_39 = tensor.extract %19[%arg6] : tensor<?xf64>
        %extracted_40 = tensor.extract %21[%31, %arg0] : tensor<?x4xf64>
        %32 = arith.mulf %extracted_39, %extracted_40 : f64
        %33 = arith.addf %arg7, %32 : f64
        scf.yield %33, %arg8 : f64, tensor<?x4xf64>
      }
      %c0_36 = arith.constant 0 : index
      %c1_37 = arith.constant 1 : index
      %30:2 = scf.for %arg6 = %c0_36 to %idx4 step %c1_37 iter_args(%arg7 = %29#0, %arg8 = %29#1) -> (f64, tensor<?x4xf64>) {
        %extracted_38 = tensor.extract %22[%arg0, %arg6] : tensor<4x4xf64>
        %31 = arith.mulf %arg7, %extracted_38 : f64
        %extracted_39 = tensor.extract %arg8[%arg3, %arg6] : tensor<?x4xf64>
        %32 = arith.addf %extracted_39, %31 : f64
        %inserted = tensor.insert %32 into %arg8[%arg3, %arg6] : tensor<?x4xf64>
        scf.yield %arg7, %inserted : f64, tensor<?x4xf64>
      }
      scf.yield %30#0, %30#1 : f64, tensor<?x4xf64>
    }
    scf.yield %25#0, %25#1 : f64, tensor<?x4xf64>
  }
  "ta.print"(%24#1) : (tensor<?x4xf64>) -> ()
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
  %alloc_23 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
  %17:2 = scf.for %arg0 = %c0 to %idx4 step %c1 iter_args(%arg1 = %cst_1, %arg2 = %16) -> (f64, tensor<?x4xf64>) {
    %18:2 = scf.for %arg3 = %c0 to %9 step %c1 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (f64, tensor<?x4xf64>) {
      %19 = arith.addi %arg3, %c1 : index
      %extracted = tensor.extract %11[%arg3] : tensor<?xi64>
      %20 = arith.index_cast %extracted : i64 to index
      %extracted_24 = tensor.extract %11[%19] : tensor<?xi64>
      %21 = arith.index_cast %extracted_24 : i64 to index
      %22 = scf.for %arg6 = %20 to %21 step %c1 iter_args(%arg7 = %arg4) -> (f64) {
        %extracted_25 = tensor.extract %12[%arg6] : tensor<?xi64>
        %24 = arith.index_cast %extracted_25 : i64 to index
        %extracted_26 = tensor.extract %13[%arg6] : tensor<?xf64>
        %extracted_27 = tensor.extract %14[%24, %arg0] : tensor<?x4xf64>
        %25 = arith.mulf %extracted_26, %extracted_27 : f64
        %26 = arith.addf %arg7, %25 : f64
        scf.yield %26 : f64
      }
      %23 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (tensor<?x4xf64>) {
        %extracted_25 = tensor.extract %15[%arg0, %arg6] : tensor<4x4xf64>
        %24 = arith.mulf %22, %extracted_25 : f64
        %extracted_26 = tensor.extract %arg7[%arg3, %arg6] : tensor<?x4xf64>
        %25 = arith.addf %extracted_26, %24 : f64
        %inserted = tensor.insert %25 into %arg7[%arg3, %arg6] : tensor<?x4xf64>
        scf.yield %inserted : tensor<?x4xf64>
      }
      scf.yield %22, %23 : f64, tensor<?x4xf64>
    }
    scf.yield %18#0, %18#1 : f64, tensor<?x4xf64>
  }
  "ta.print"(%17#1) : (tensor<?x4xf64>) -> ()
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
    %alloc_23 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
    %17:2 = scf.for %arg0 = %c0 to %idx4 step %c1 iter_args(%arg1 = %cst_1, %arg2 = %16) -> (f64, tensor<?x4xf64>) {
      %18:2 = scf.for %arg3 = %c0 to %9 step %c1 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (f64, tensor<?x4xf64>) {
        %19 = arith.addi %arg3, %c1 : index
        %extracted = tensor.extract %11[%arg3] : tensor<?xi64>
        %20 = arith.index_cast %extracted : i64 to index
        %extracted_24 = tensor.extract %11[%19] : tensor<?xi64>
        %21 = arith.index_cast %extracted_24 : i64 to index
        %22 = scf.for %arg6 = %20 to %21 step %c1 iter_args(%arg7 = %arg4) -> (f64) {
          %extracted_25 = tensor.extract %12[%arg6] : tensor<?xi64>
          %24 = arith.index_cast %extracted_25 : i64 to index
          %extracted_26 = tensor.extract %13[%arg6] : tensor<?xf64>
          %extracted_27 = tensor.extract %14[%24, %arg0] : tensor<?x4xf64>
          %25 = arith.mulf %extracted_26, %extracted_27 : f64
          %26 = arith.addf %arg7, %25 : f64
          scf.yield %26 : f64
        }
        %23 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (tensor<?x4xf64>) {
          %extracted_25 = tensor.extract %15[%arg0, %arg6] : tensor<4x4xf64>
          %24 = arith.mulf %22, %extracted_25 : f64
          %extracted_26 = tensor.extract %arg7[%arg3, %arg6] : tensor<?x4xf64>
          %25 = arith.addf %extracted_26, %24 : f64
          %inserted = tensor.insert %25 into %arg7[%arg3, %arg6] : tensor<?x4xf64>
          scf.yield %inserted : tensor<?x4xf64>
        }
        scf.yield %22, %23 : f64, tensor<?x4xf64>
      }
      scf.yield %18#0, %18#1 : f64, tensor<?x4xf64>
    }
    "ta.print"(%17#1) : (tensor<?x4xf64>) -> ()
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
    %alloc_23 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
    %17:2 = scf.for %arg0 = %c0 to %idx4 step %c1 iter_args(%arg1 = %cst_1, %arg2 = %16) -> (f64, tensor<?x4xf64>) {
      %18:2 = scf.for %arg3 = %c0 to %9 step %c1 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (f64, tensor<?x4xf64>) {
        %19 = arith.addi %arg3, %c1 : index
        %extracted = tensor.extract %11[%arg3] : tensor<?xi64>
        %20 = arith.index_cast %extracted : i64 to index
        %extracted_24 = tensor.extract %11[%19] : tensor<?xi64>
        %21 = arith.index_cast %extracted_24 : i64 to index
        %22 = scf.for %arg6 = %20 to %21 step %c1 iter_args(%arg7 = %arg4) -> (f64) {
          %extracted_25 = tensor.extract %12[%arg6] : tensor<?xi64>
          %24 = arith.index_cast %extracted_25 : i64 to index
          %extracted_26 = tensor.extract %13[%arg6] : tensor<?xf64>
          %extracted_27 = tensor.extract %14[%24, %arg0] : tensor<?x4xf64>
          %25 = arith.mulf %extracted_26, %extracted_27 : f64
          %26 = arith.addf %arg7, %25 : f64
          scf.yield %26 : f64
        }
        %23 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (tensor<?x4xf64>) {
          %extracted_25 = tensor.extract %15[%arg0, %arg6] : tensor<4x4xf64>
          %24 = arith.mulf %22, %extracted_25 : f64
          %extracted_26 = tensor.extract %arg7[%arg3, %arg6] : tensor<?x4xf64>
          %25 = arith.addf %extracted_26, %24 : f64
          %inserted = tensor.insert %25 into %arg7[%arg3, %arg6] : tensor<?x4xf64>
          scf.yield %inserted : tensor<?x4xf64>
        }
        scf.yield %22, %23 : f64, tensor<?x4xf64>
      }
      scf.yield %18#0, %18#1 : f64, tensor<?x4xf64>
    }
    "ta.print"(%17#1) : (tensor<?x4xf64>) -> ()
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
    %alloc_23 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
    %11:2 = scf.for %arg0 = %c0 to %idx4 step %c1 iter_args(%arg1 = %cst_1, %arg2 = %alloc_22) -> (f64, memref<?x4xf64>) {
      %13:2 = scf.for %arg3 = %c0 to %9 step %c1 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (f64, memref<?x4xf64>) {
        %14 = arith.addi %arg3, %c1 : index
        %15 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %16 = arith.index_cast %15 : i64 to index
        %17 = memref.load %alloc_10[%14] : memref<?xi64>
        %18 = arith.index_cast %17 : i64 to index
        %19 = scf.for %arg6 = %16 to %18 step %c1 iter_args(%arg7 = %arg4) -> (f64) {
          %21 = memref.load %alloc_12[%arg6] : memref<?xi64>
          %22 = arith.index_cast %21 : i64 to index
          %23 = memref.load %alloc_18[%arg6] : memref<?xf64>
          %24 = memref.load %alloc_20[%22, %arg0] : memref<?x4xf64>
          %25 = arith.mulf %23, %24 : f64
          %26 = arith.addf %arg7, %25 : f64
          scf.yield %26 : f64
        }
        %20 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (memref<?x4xf64>) {
          %21 = memref.load %alloc_21[%arg0, %arg6] : memref<4x4xf64>
          %22 = arith.mulf %19, %21 : f64
          %23 = memref.load %arg7[%arg3, %arg6] : memref<?x4xf64>
          %24 = arith.addf %23, %22 : f64
          memref.store %24, %arg7[%arg3, %arg6] : memref<?x4xf64>
          scf.yield %arg7 : memref<?x4xf64>
        }
        scf.yield %19, %20 : f64, memref<?x4xf64>
      }
      scf.yield %13#0, %13#1 : f64, memref<?x4xf64>
    }
    %12 = bufferization.to_tensor %11#1 : memref<?x4xf64>
    "ta.print"(%12) : (tensor<?x4xf64>) -> ()
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
  %alloc_23 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
  %11:2 = scf.for %arg0 = %c0 to %idx4 step %c1 iter_args(%arg1 = %cst_1, %arg2 = %alloc_22) -> (f64, memref<?x4xf64>) {
    %13:2 = scf.for %arg3 = %c0 to %9 step %c1 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (f64, memref<?x4xf64>) {
      %14 = arith.addi %arg3, %c1 : index
      %15 = memref.load %alloc_10[%arg3] : memref<?xi64>
      %16 = arith.index_cast %15 : i64 to index
      %17 = memref.load %alloc_10[%14] : memref<?xi64>
      %18 = arith.index_cast %17 : i64 to index
      %19 = scf.for %arg6 = %16 to %18 step %c1 iter_args(%arg7 = %arg4) -> (f64) {
        %21 = memref.load %alloc_12[%arg6] : memref<?xi64>
        %22 = arith.index_cast %21 : i64 to index
        %23 = memref.load %alloc_18[%arg6] : memref<?xf64>
        %24 = memref.load %alloc_20[%22, %arg0] : memref<?x4xf64>
        %25 = arith.mulf %23, %24 : f64
        %26 = arith.addf %arg7, %25 : f64
        scf.yield %26 : f64
      }
      %20 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (memref<?x4xf64>) {
        %21 = memref.load %alloc_21[%arg0, %arg6] : memref<4x4xf64>
        %22 = arith.mulf %19, %21 : f64
        %23 = memref.load %arg7[%arg3, %arg6] : memref<?x4xf64>
        %24 = arith.addf %23, %22 : f64
        memref.store %24, %arg7[%arg3, %arg6] : memref<?x4xf64>
        scf.yield %arg7 : memref<?x4xf64>
      }
      scf.yield %19, %20 : f64, memref<?x4xf64>
    }
    scf.yield %13#0, %13#1 : f64, memref<?x4xf64>
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
  %alloc_23 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
  %11:2 = scf.for %arg0 = %c0 to %idx4 step %c1 iter_args(%arg1 = %cst_1, %arg2 = %alloc_22) -> (f64, memref<?x4xf64>) {
    %14:2 = scf.for %arg3 = %c0 to %9 step %c1 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (f64, memref<?x4xf64>) {
      %15 = arith.addi %arg3, %c1 : index
      %16 = memref.load %alloc_10[%arg3] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = memref.load %alloc_10[%15] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = scf.for %arg6 = %17 to %19 step %c1 iter_args(%arg7 = %arg4) -> (f64) {
        %22 = memref.load %alloc_12[%arg6] : memref<?xi64>
        %23 = arith.index_cast %22 : i64 to index
        %24 = memref.load %alloc_18[%arg6] : memref<?xf64>
        %25 = memref.load %alloc_20[%23, %arg0] : memref<?x4xf64>
        %26 = arith.mulf %24, %25 : f64
        %27 = arith.addf %arg7, %26 : f64
        scf.yield %27 : f64
      }
      %21 = scf.for %arg6 = %c0 to %idx4 step %c1 iter_args(%arg7 = %arg5) -> (memref<?x4xf64>) {
        %22 = memref.load %alloc_21[%arg0, %arg6] : memref<4x4xf64>
        %23 = arith.mulf %20, %22 : f64
        %24 = memref.load %arg7[%arg3, %arg6] : memref<?x4xf64>
        %25 = arith.addf %24, %23 : f64
        memref.store %25, %arg7[%arg3, %arg6] : memref<?x4xf64>
        scf.yield %arg7 : memref<?x4xf64>
      }
      scf.yield %20, %21 : f64, memref<?x4xf64>
    }
    scf.yield %14#0, %14#1 : f64, memref<?x4xf64>
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
    %alloc_23 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
    %11 = scf.for %arg0 = %c0 to %idx4 step %c1 iter_args(%arg1 = %cst_1) -> (f64) {
      %12 = scf.for %arg2 = %c0 to %9 step %c1 iter_args(%arg3 = %arg1) -> (f64) {
        %13 = arith.addi %arg2, %c1 : index
        %14 = memref.load %alloc_10[%arg2] : memref<?xi64>
        %15 = arith.index_cast %14 : i64 to index
        %16 = memref.load %alloc_10[%13] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = scf.for %arg4 = %15 to %17 step %c1 iter_args(%arg5 = %arg3) -> (f64) {
          %19 = memref.load %alloc_12[%arg4] : memref<?xi64>
          %20 = arith.index_cast %19 : i64 to index
          %21 = memref.load %alloc_18[%arg4] : memref<?xf64>
          %22 = memref.load %alloc_20[%20, %arg0] : memref<?x4xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = arith.addf %arg5, %23 : f64
          scf.yield %24 : f64
        }
        scf.for %arg4 = %c0 to %idx4 step %c1 {
          %19 = memref.load %alloc_21[%arg0, %arg4] : memref<4x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_22[%arg2, %arg4] : memref<?x4xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_22[%arg2, %arg4] : memref<?x4xf64>
        }
        scf.yield %18 : f64
      }
      scf.yield %12 : f64
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
    %alloc_23 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
    %11 = scf.for %arg0 = %c0 to %idx4 step %c1 iter_args(%arg1 = %cst_1) -> (f64) {
      %12 = scf.for %arg2 = %c0 to %9 step %c1 iter_args(%arg3 = %arg1) -> (f64) {
        %13 = arith.addi %arg2, %c1 : index
        %14 = memref.load %alloc_10[%arg2] : memref<?xi64>
        %15 = arith.index_cast %14 : i64 to index
        %16 = memref.load %alloc_10[%13] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = scf.for %arg4 = %15 to %17 step %c1 iter_args(%arg5 = %arg3) -> (f64) {
          %19 = memref.load %alloc_12[%arg4] : memref<?xi64>
          %20 = arith.index_cast %19 : i64 to index
          %21 = memref.load %alloc_18[%arg4] : memref<?xf64>
          %22 = memref.load %alloc_20[%20, %arg0] : memref<?x4xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = arith.addf %arg5, %23 : f64
          scf.yield %24 : f64
        }
        scf.for %arg4 = %c0 to %idx4 step %c1 {
          %19 = memref.load %alloc_21[%arg0, %arg4] : memref<4x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_22[%arg2, %arg4] : memref<?x4xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_22[%arg2, %arg4] : memref<?x4xf64>
        }
        scf.yield %18 : f64
      }
      scf.yield %12 : f64
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
    %alloc_23 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
    %11 = scf.for %arg0 = %c0 to %idx4 step %c1 iter_args(%arg1 = %cst_1) -> (f64) {
      %12 = scf.for %arg2 = %c0 to %9 step %c1 iter_args(%arg3 = %arg1) -> (f64) {
        %13 = arith.addi %arg2, %c1 : index
        %14 = memref.load %alloc_10[%arg2] : memref<?xi64>
        %15 = arith.index_cast %14 : i64 to index
        %16 = memref.load %alloc_10[%13] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = scf.for %arg4 = %15 to %17 step %c1 iter_args(%arg5 = %arg3) -> (f64) {
          %19 = memref.load %alloc_12[%arg4] : memref<?xi64>
          %20 = arith.index_cast %19 : i64 to index
          %21 = memref.load %alloc_18[%arg4] : memref<?xf64>
          %22 = memref.load %alloc_20[%20, %arg0] : memref<?x4xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = arith.addf %arg5, %23 : f64
          scf.yield %24 : f64
        }
        scf.for %arg4 = %c0 to %idx4 step %c1 {
          %19 = memref.load %alloc_21[%arg0, %arg4] : memref<4x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_22[%arg2, %arg4] : memref<?x4xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_22[%arg2, %arg4] : memref<?x4xf64>
        }
        scf.yield %18 : f64
      }
      scf.yield %12 : f64
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
    %alloc_23 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
    %11 = scf.for %arg0 = %c0 to %idx4 step %c1 iter_args(%arg1 = %cst_1) -> (f64) {
      %12 = scf.for %arg2 = %c0 to %9 step %c1 iter_args(%arg3 = %arg1) -> (f64) {
        %13 = arith.addi %arg2, %c1 : index
        %14 = memref.load %alloc_10[%arg2] : memref<?xi64>
        %15 = arith.index_cast %14 : i64 to index
        %16 = memref.load %alloc_10[%13] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = scf.for %arg4 = %15 to %17 step %c1 iter_args(%arg5 = %arg3) -> (f64) {
          %19 = memref.load %alloc_12[%arg4] : memref<?xi64>
          %20 = arith.index_cast %19 : i64 to index
          %21 = memref.load %alloc_18[%arg4] : memref<?xf64>
          %22 = memref.load %alloc_20[%20, %arg0] : memref<?x4xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = arith.addf %arg5, %23 : f64
          scf.yield %24 : f64
        }
        scf.for %arg4 = %c0 to %idx4 step %c1 {
          %19 = memref.load %alloc_21[%arg0, %arg4] : memref<4x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_22[%arg2, %arg4] : memref<?x4xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_22[%arg2, %arg4] : memref<?x4xf64>
        }
        scf.yield %18 : f64
      }
      scf.yield %12 : f64
    }
    %cast_24 = memref.cast %alloc_22 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_24) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}
