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
    %11 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?xf64>
    "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%11) <{value = 0.000000e+00 : f64}> : (tensor<?xf64>) -> ()
    %12:2 = "it.itree"(%10, %11) ({
      %13 = "it.RootOp"() : () -> !it.index_tree
      %14 = "it.IndexOp"(%13) : (!it.index_tree) -> !it.index
      %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index
      %16 = "it.IndexOp"(%15) : (!it.index) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%10, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%10, %14, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %17 = "it.LHSOperandOp"(%10, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%4, %15) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%4, %16, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %18 = "it.OperandOp"(%4, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %16) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %14, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %19 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %20 = "it.ComputeOp"(%16, %17, %18, %19) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
      %crd_10, %pos_11 = "it.IndexToTensorDim"(%11, %15) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
      %21 = "it.LHSOperandOp"(%11, %pos_11, %crd_10) : (tensor<?xf64>, index, index) -> !it.operand
      %cst = arith.constant 0.000000e+00 : f64
      %22 = "it.OperandOp"(%cst) : (f64) -> !it.operand
      %23 = "it.ComputeOp"(%15, %21, %22) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
      it.yield %20, %23 : tensor<?x4xf64>, tensor<?xf64>
    }) : (tensor<?x4xf64>, tensor<?xf64>) -> (tensor<?x4xf64>, tensor<?xf64>)
    "ta.set_op"(%12#0, %11) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?xf64>) -> ()
    "ta.print"(%12#0) : (tensor<?x4xf64>) -> ()
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
  %11 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?xf64>
  "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%11) <{value = 0.000000e+00 : f64}> : (tensor<?xf64>) -> ()
  %12:2 = "it.itree"(%10, %11) ({
    %13 = "it.RootOp"() : () -> !it.index_tree
    %14 = "it.IndexOp"(%13) : (!it.index_tree) -> !it.index
    %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index
    %16 = "it.IndexOp"(%15) : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%10, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%10, %14, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %17 = "it.LHSOperandOp"(%10, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%4, %15) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%4, %16, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %18 = "it.OperandOp"(%4, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %16) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %14, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %19 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %20 = "it.ComputeOp"(%16, %17, %18, %19) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%11, %15) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %21 = "it.LHSOperandOp"(%11, %pos_11, %crd_10) : (tensor<?xf64>, index, index) -> !it.operand
    %cst = arith.constant 0.000000e+00 : f64
    %22 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %23 = "it.ComputeOp"(%15, %21, %22) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
    it.yield %20, %23 : tensor<?x4xf64>, tensor<?xf64>
  }) : (tensor<?x4xf64>, tensor<?xf64>) -> (tensor<?x4xf64>, tensor<?xf64>)
  "ta.set_op"(%12#0, %11) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?xf64>) -> ()
  "ta.print"(%12#0) : (tensor<?x4xf64>) -> ()
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
  %11 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?xf64>
  "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%11) <{value = 0.000000e+00 : f64}> : (tensor<?xf64>) -> ()
  %12:2 = "it.itree"(%10, %11) ({
    %13 = "it.RootOp"() : () -> !it.index_tree
    %14 = "it.IndexOp"(%13) : (!it.index_tree) -> !it.index
    %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index
    %16 = "it.IndexOp"(%15) : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%10, %15) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%10, %14, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %17 = "it.LHSOperandOp"(%10, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%4, %15) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%4, %16, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %18 = "it.OperandOp"(%4, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %16) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %14, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %19 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %20 = "it.ComputeOp"(%16, %17, %18, %19) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%11, %15) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %21 = "it.LHSOperandOp"(%11, %pos_11, %crd_10) : (tensor<?xf64>, index, index) -> !it.operand
    %cst = arith.constant 0.000000e+00 : f64
    %22 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %23 = "it.ComputeOp"(%15, %21, %22) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
    it.yield %20, %23 : tensor<?x4xf64>, tensor<?xf64>
  }) : (tensor<?x4xf64>, tensor<?xf64>) -> (tensor<?x4xf64>, tensor<?xf64>)
  "ta.set_op"(%12#0, %11) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?xf64>) -> ()
  "ta.print"(%12#0) : (tensor<?x4xf64>) -> ()
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
  %7 = "ta.dense_tensor_decl"(%1) <{format = "Dense"}> : (index) -> tensor<?xf64>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%3) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%6) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<?xf64>) -> ()
  %8:2 = "it.itree"(%6, %7) ({
    %9 = "it.RootOp"() : () -> !it.index_tree
    %10 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %11 = "it.IndexOp"(%9, %10) : (!it.index_tree, !it.domain) -> !it.index
    %12 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %13 = "it.IndexOp"(%11, %12) : (!it.index, !it.domain) -> !it.index
    %14 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %15 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %16 = "it.DomainIntersectionOp"(%15, %14) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %17 = "it.IndexOp"(%13, %16) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%6, %13) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%6, %11, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %18 = "it.LHSOperandOp"(%6, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %17, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %19 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%3, %17) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%3, %11, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %20 = "it.OperandOp"(%3, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %21 = "it.ComputeOp"(%17, %18, %19, %20) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%7, %13) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %22 = "it.LHSOperandOp"(%7, %pos_11, %crd_10) : (tensor<?xf64>, index, index) -> !it.operand
    %23 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %24 = "it.ComputeOp"(%13, %22, %23) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
    it.yield %21, %24 : tensor<?x4xf64>, tensor<?xf64>
  }) : (tensor<?x4xf64>, tensor<?xf64>) -> (tensor<?x4xf64>, tensor<?xf64>)
  "ta.set_op"(%8#0, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?xf64>) -> ()
  "ta.print"(%8#0) : (tensor<?x4xf64>) -> ()
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
  %29 = "ta.dense_tensor_decl"(%23) <{format = "Dense"}> : (index) -> tensor<?xf64>
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%27) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%28) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%29) <{value = 0.000000e+00 : f64}> : (tensor<?xf64>) -> ()
  %30:2 = "it.itree"(%28, %29) ({
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.IndexOp"(%31, %32) : (!it.index_tree, !it.domain) -> !it.index
    %34 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %37 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%28, %35) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%28, %33, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%28, %pos, %pos_33, %crd, %crd_32) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%22, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%22, %39, %pos_35) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%22, %pos_35, %pos_37, %crd_34, %crd_36) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%25, %39) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%25, %33, %pos_39) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%25, %pos_39, %pos_41, %crd_38, %crd_40) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%29, %35) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %44 = "it.LHSOperandOp"(%29, %pos_43, %crd_42) : (tensor<?xf64>, index, index) -> !it.operand
    %45 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %46 = "it.ComputeOp"(%35, %44, %45) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
    it.yield %43, %46 : tensor<?x4xf64>, tensor<?xf64>
  }) : (tensor<?x4xf64>, tensor<?xf64>) -> (tensor<?x4xf64>, tensor<?xf64>)
  "ta.set_op"(%30#0, %29) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?xf64>) -> ()
  "ta.print"(%30#0) : (tensor<?x4xf64>) -> ()
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
  %alloc_36 = memref.alloc(%23) {alignment = 32 : i64} : memref<?xf64>
  %29 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%27) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%28) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%29) <{value = 0.000000e+00 : f64}> : (tensor<?xf64>) -> ()
  %30:2 = "it.itree"(%28, %29) ({
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.IndexOp"(%31, %32) : (!it.index_tree, !it.domain) -> !it.index
    %34 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %37 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%28, %35) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%28, %33, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%28, %pos, %pos_38, %crd, %crd_37) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%22, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%22, %39, %pos_40) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%22, %pos_40, %pos_42, %crd_39, %crd_41) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%25, %39) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%25, %33, %pos_44) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%25, %pos_44, %pos_46, %crd_43, %crd_45) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%29, %35) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %44 = "it.LHSOperandOp"(%29, %pos_48, %crd_47) : (tensor<?xf64>, index, index) -> !it.operand
    %45 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %46 = "it.ComputeOp"(%35, %44, %45) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
    it.yield %43, %46 : tensor<?x4xf64>, tensor<?xf64>
  }) : (tensor<?x4xf64>, tensor<?xf64>) -> (tensor<?x4xf64>, tensor<?xf64>)
  "ta.set_op"(%30#0, %29) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?xf64>) -> ()
  "ta.print"(%30#0) : (tensor<?x4xf64>) -> ()
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
  %alloc_36 = memref.alloc(%23) {alignment = 32 : i64} : memref<?xf64>
  %29 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%27) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%28) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%29) <{value = 0.000000e+00 : f64}> : (tensor<?xf64>) -> ()
  %30:2 = "it.itree"(%28, %29) ({
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.IndexOp"(%31, %32) : (!it.index_tree, !it.domain) -> !it.index
    %34 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %37 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%28, %35) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%28, %33, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%28, %pos, %pos_38, %crd, %crd_37) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%22, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%22, %39, %pos_40) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%22, %pos_40, %pos_42, %crd_39, %crd_41) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%25, %39) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%25, %33, %pos_44) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%25, %pos_44, %pos_46, %crd_43, %crd_45) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%29, %35) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %44 = "it.LHSOperandOp"(%29, %pos_48, %crd_47) : (tensor<?xf64>, index, index) -> !it.operand
    %45 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %46 = "it.ComputeOp"(%35, %44, %45) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
    it.yield %43, %46 : tensor<?x4xf64>, tensor<?xf64>
  }) : (tensor<?x4xf64>, tensor<?xf64>) -> (tensor<?x4xf64>, tensor<?xf64>)
  "ta.set_op"(%30#0, %29) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?xf64>) -> ()
  "ta.print"(%30#0) : (tensor<?x4xf64>) -> ()
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
  %alloc_36 = memref.alloc(%23) {alignment = 32 : i64} : memref<?xf64>
  %29 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x4xf64>) -> ()
  "ta.fill"(%27) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%28) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%29) <{value = 0.000000e+00 : f64}> : (tensor<?xf64>) -> ()
  %30:2 = "it.itree"(%28, %29) ({
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.IndexOp"(%31, %32) : (!it.index_tree, !it.domain) -> !it.index
    %34 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %37 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%28, %35) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%28, %33, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%28, %pos, %pos_38, %crd, %crd_37) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%22, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%22, %39, %pos_40) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%22, %pos_40, %pos_42, %crd_39, %crd_41) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%25, %39) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%25, %33, %pos_44) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%25, %pos_44, %pos_46, %crd_43, %crd_45) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%29, %35) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %44 = "it.LHSOperandOp"(%29, %pos_48, %crd_47) : (tensor<?xf64>, index, index) -> !it.operand
    %45 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %46 = "it.ComputeOp"(%35, %44, %45) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
    it.yield %43, %46 : tensor<?x4xf64>, tensor<?xf64>
  }) : (tensor<?x4xf64>, tensor<?xf64>) -> (tensor<?x4xf64>, tensor<?xf64>)
  "ta.set_op"(%30#0, %29) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?xf64>) -> ()
  "ta.print"(%30#0) : (tensor<?x4xf64>) -> ()
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
  %alloc_40 = memref.alloc(%23) {alignment = 32 : i64} : memref<?xf64>
  %cst_41 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_41 : f64) outs(%alloc_40 : memref<?xf64>)
  %29 = bufferization.to_tensor %alloc_40 restrict writable : memref<?xf64>
  %30:2 = "it.itree"(%28, %29) ({
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.IndexOp"(%31, %32) : (!it.index_tree, !it.domain) -> !it.index
    %34 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %37 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%28, %35) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%28, %33, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%28, %pos, %pos_43, %crd, %crd_42) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%22, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%22, %39, %pos_45) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%22, %pos_45, %pos_47, %crd_44, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%25, %39) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%25, %33, %pos_49) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%25, %pos_49, %pos_51, %crd_48, %crd_50) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%29, %35) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %44 = "it.LHSOperandOp"(%29, %pos_53, %crd_52) : (tensor<?xf64>, index, index) -> !it.operand
    %45 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %46 = "it.ComputeOp"(%35, %44, %45) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
    it.yield %43, %46 : tensor<?x4xf64>, tensor<?xf64>
  }) : (tensor<?x4xf64>, tensor<?xf64>) -> (tensor<?x4xf64>, tensor<?xf64>)
  "ta.set_op"(%30#0, %29) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?xf64>) -> ()
  "ta.print"(%30#0) : (tensor<?x4xf64>) -> ()
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
  %alloc_40 = memref.alloc(%23) {alignment = 32 : i64} : memref<?xf64>
  %cst_41 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_41 : f64) outs(%alloc_40 : memref<?xf64>)
  %29 = bufferization.to_tensor %alloc_40 restrict writable : memref<?xf64>
  %30:2 = "it.itree"(%28, %29) ({
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.IndexOp"(%31, %32) : (!it.index_tree, !it.domain) -> !it.index
    %34 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %37 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%28, %35) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%28, %33, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%28, %pos, %pos_43, %crd, %crd_42) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%22, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%22, %39, %pos_45) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%22, %pos_45, %pos_47, %crd_44, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%25, %39) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%25, %33, %pos_49) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%25, %pos_49, %pos_51, %crd_48, %crd_50) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%29, %35) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %44 = "it.LHSOperandOp"(%29, %pos_53, %crd_52) : (tensor<?xf64>, index, index) -> !it.operand
    %45 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %46 = "it.ComputeOp"(%35, %44, %45) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
    it.yield %43, %46 : tensor<?x4xf64>, tensor<?xf64>
  }) : (tensor<?x4xf64>, tensor<?xf64>) -> (tensor<?x4xf64>, tensor<?xf64>)
  "ta.set_op"(%30#0, %29) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?xf64>) -> ()
  "ta.print"(%30#0) : (tensor<?x4xf64>) -> ()
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
  %alloc_40 = memref.alloc(%23) {alignment = 32 : i64} : memref<?xf64>
  %cst_41 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_41 : f64) outs(%alloc_40 : memref<?xf64>)
  %29 = bufferization.to_tensor %alloc_40 restrict writable : memref<?xf64>
  %30:2 = "it.itree"(%28, %29) ({
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.IndexOp"(%31, %32) : (!it.index_tree, !it.domain) -> !it.index
    %34 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %37 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%28, %35) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%28, %33, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%28, %pos, %pos_43, %crd, %crd_42) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%22, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%22, %39, %pos_45) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%22, %pos_45, %pos_47, %crd_44, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%25, %39) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%25, %33, %pos_49) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%25, %pos_49, %pos_51, %crd_48, %crd_50) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%29, %35) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %44 = "it.LHSOperandOp"(%29, %pos_53, %crd_52) : (tensor<?xf64>, index, index) -> !it.operand
    %45 = "it.OperandOp"(%cst) : (f64) -> !it.operand
    %46 = "it.ComputeOp"(%35, %44, %45) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
    it.yield %43, %46 : tensor<?x4xf64>, tensor<?xf64>
  }) : (tensor<?x4xf64>, tensor<?xf64>) -> (tensor<?x4xf64>, tensor<?xf64>)
  "ta.print"(%30#0) : (tensor<?x4xf64>) -> ()
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
  %alloc_23 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
  %alloc_24 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x4xf64>)
  %28 = bufferization.to_tensor %alloc_24 restrict writable : memref<?x4xf64>
  %alloc_25 = memref.alloc(%25) {alignment = 32 : i64} : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?xf64>)
  %29 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xf64>
  %30:2 = "it.itree"(%28, %29) ({
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DenseDomainOp"(%idx4, %27) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %33 = "it.IndexOp"(%31, %32) : (!it.index_tree, !it.domain) -> !it.index
    %34 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %36 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) : (!it.index, !it.domain) -> !it.index
    %crd_26, %pos_27 = "it.IndexToTensorDim"(%28, %35) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_28, %pos_29 = "it.IndexToTensorDim"(%28, %33, %pos_27) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %38 = "it.LHSOperandOp"(%28, %pos_27, %pos_29, %crd_26, %crd_28) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_30, %pos_31 = "it.IndexToTensorDim"(%20, %37, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%20, %pos, %pos_31, %crd, %crd_30) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%27, %37) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%27, %33, %pos_33) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%27, %pos_33, %pos_35, %crd_32, %crd_34) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %41 = "it.ComputeOp"(%37, %38, %39, %40) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%29, %35) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %42 = "it.LHSOperandOp"(%29, %pos_37, %crd_36) : (tensor<?xf64>, index, index) -> !it.operand
    %43 = "it.OperandOp"(%cst_1) : (f64) -> !it.operand
    %44 = "it.ComputeOp"(%35, %42, %43) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
    it.yield %41, %44 : tensor<?x4xf64>, tensor<?xf64>
  }) : (tensor<?x4xf64>, tensor<?xf64>) -> (tensor<?x4xf64>, tensor<?xf64>)
  "ta.print"(%30#0) : (tensor<?x4xf64>) -> ()
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
  %alloc_23 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
  %alloc_24 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x4xf64>)
  %28 = bufferization.to_tensor %alloc_24 restrict writable : memref<?x4xf64>
  %alloc_25 = memref.alloc(%25) {alignment = 32 : i64} : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?xf64>)
  %29 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xf64>
  %30:2 = "it.itree"(%28, %29) ({
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DenseDomainOp"(%idx4, %27) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %33 = "it.IndexOp"(%31, %32) : (!it.index_tree, !it.domain) -> !it.index
    %34 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %36 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) : (!it.index, !it.domain) -> !it.index
    %crd_26, %pos_27 = "it.IndexToTensorDim"(%28, %35) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_28, %pos_29 = "it.IndexToTensorDim"(%28, %33, %pos_27) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %38 = "it.LHSOperandOp"(%28, %pos_27, %pos_29, %crd_26, %crd_28) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_30, %pos_31 = "it.IndexToTensorDim"(%20, %37, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%20, %pos, %pos_31, %crd, %crd_30) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%27, %37) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%27, %33, %pos_33) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%27, %pos_33, %pos_35, %crd_32, %crd_34) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %41 = "it.ComputeOp"(%37, %38, %39, %40) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%29, %35) <{dim = 0 : ui32}> : (tensor<?xf64>, !it.index) -> (index, index)
    %42 = "it.LHSOperandOp"(%29, %pos_37, %crd_36) : (tensor<?xf64>, index, index) -> !it.operand
    %43 = "it.OperandOp"(%cst_1) : (f64) -> !it.operand
    %44 = "it.ComputeOp"(%35, %42, %43) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand) -> tensor<?xf64>
    it.yield %41, %44 : tensor<?x4xf64>, tensor<?xf64>
  }) : (tensor<?x4xf64>, tensor<?xf64>) -> (tensor<?x4xf64>, tensor<?xf64>)
  "ta.print"(%30#0) : (tensor<?x4xf64>) -> ()
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
  %alloc_23 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
  %alloc_24 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x4xf64>)
  %28 = bufferization.to_tensor %alloc_24 restrict writable : memref<?x4xf64>
  %alloc_25 = memref.alloc(%25) {alignment = 32 : i64} : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?xf64>)
  %29 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xf64>
  %30:2 = "it.itree"(%28, %29) ({
    %c0_26 = arith.constant 0 : index
    %c1_27 = arith.constant 1 : index
    %31:2 = scf.for %arg0 = %c0_26 to %idx4 step %c1_27 iter_args(%arg1 = %28, %arg2 = %29) -> (tensor<?x4xf64>, tensor<?xf64>) {
      %c0_28 = arith.constant 0 : index
      %c1_29 = arith.constant 1 : index
      %32:2 = scf.for %arg3 = %c0_28 to %21 step %c1_29 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (tensor<?x4xf64>, tensor<?xf64>) {
        %c1_30 = arith.constant 1 : index
        %33 = arith.addi %arg3, %c1_30 : index
        %extracted = tensor.extract %22[%arg3] : tensor<?xi64>
        %34 = arith.index_cast %extracted : i64 to index
        %extracted_31 = tensor.extract %22[%33] : tensor<?xi64>
        %35 = arith.index_cast %extracted_31 : i64 to index
        %c1_32 = arith.constant 1 : index
        %36:2 = scf.for %arg6 = %34 to %35 step %c1_32 iter_args(%arg7 = %arg4, %arg8 = %arg5) -> (tensor<?x4xf64>, tensor<?xf64>) {
          %37 = "ta.SpTensorGetCrd"(%20, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %38 = arith.index_cast %37 : i64 to index
          %39 = "ta.TAExtractOp"(%20, %arg6, %arg3, %38) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %extracted_34 = tensor.extract %27[%38, %arg0] : tensor<?x4xf64>
          %40 = arith.mulf %39, %extracted_34 : f64
          %extracted_35 = tensor.extract %arg7[%arg3, %arg0] : tensor<?x4xf64>
          %41 = arith.addf %extracted_35, %40 : f64
          %inserted_36 = tensor.insert %41 into %arg7[%arg3, %arg0] : tensor<?x4xf64>
          scf.yield %inserted_36, %arg8 : tensor<?x4xf64>, tensor<?xf64>
        }
        %extracted_33 = tensor.extract %36#1[%arg3] : tensor<?xf64>
        %inserted = tensor.insert %cst_1 into %36#1[%arg3] : tensor<?xf64>
        scf.yield %36#0, %inserted : tensor<?x4xf64>, tensor<?xf64>
      }
      scf.yield %32#0, %32#1 : tensor<?x4xf64>, tensor<?xf64>
    }
    it.yield %31#0, %31#1 : tensor<?x4xf64>, tensor<?xf64>
  }) : (tensor<?x4xf64>, tensor<?xf64>) -> (tensor<?x4xf64>, tensor<?xf64>)
  "ta.print"(%30#0) : (tensor<?x4xf64>) -> ()
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
  %alloc_23 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
  %alloc_24 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x4xf64>)
  %28 = bufferization.to_tensor %alloc_24 restrict writable : memref<?x4xf64>
  %alloc_25 = memref.alloc(%25) {alignment = 32 : i64} : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?xf64>)
  %29 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xf64>
  %30:2 = "it.itree"(%28, %29) ({
    %c0_26 = arith.constant 0 : index
    %c1_27 = arith.constant 1 : index
    %31:2 = scf.for %arg0 = %c0_26 to %idx4 step %c1_27 iter_args(%arg1 = %28, %arg2 = %29) -> (tensor<?x4xf64>, tensor<?xf64>) {
      %c0_28 = arith.constant 0 : index
      %c1_29 = arith.constant 1 : index
      %32:2 = scf.for %arg3 = %c0_28 to %21 step %c1_29 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (tensor<?x4xf64>, tensor<?xf64>) {
        %c1_30 = arith.constant 1 : index
        %33 = arith.addi %arg3, %c1_30 : index
        %extracted = tensor.extract %22[%arg3] : tensor<?xi64>
        %34 = arith.index_cast %extracted : i64 to index
        %extracted_31 = tensor.extract %22[%33] : tensor<?xi64>
        %35 = arith.index_cast %extracted_31 : i64 to index
        %c1_32 = arith.constant 1 : index
        %36:2 = scf.for %arg6 = %34 to %35 step %c1_32 iter_args(%arg7 = %arg4, %arg8 = %arg5) -> (tensor<?x4xf64>, tensor<?xf64>) {
          %37 = "ta.SpTensorGetCrd"(%20, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %38 = arith.index_cast %37 : i64 to index
          %39 = "ta.TAExtractOp"(%20, %arg6, %arg3, %38) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %extracted_34 = tensor.extract %27[%38, %arg0] : tensor<?x4xf64>
          %40 = arith.mulf %39, %extracted_34 : f64
          %extracted_35 = tensor.extract %arg7[%arg3, %arg0] : tensor<?x4xf64>
          %41 = arith.addf %extracted_35, %40 : f64
          %inserted_36 = tensor.insert %41 into %arg7[%arg3, %arg0] : tensor<?x4xf64>
          scf.yield %inserted_36, %arg8 : tensor<?x4xf64>, tensor<?xf64>
        }
        %extracted_33 = tensor.extract %36#1[%arg3] : tensor<?xf64>
        %inserted = tensor.insert %cst_1 into %36#1[%arg3] : tensor<?xf64>
        scf.yield %36#0, %inserted : tensor<?x4xf64>, tensor<?xf64>
      }
      scf.yield %32#0, %32#1 : tensor<?x4xf64>, tensor<?xf64>
    }
    it.yield %31#0, %31#1 : tensor<?x4xf64>, tensor<?xf64>
  }) : (tensor<?x4xf64>, tensor<?xf64>) -> (tensor<?x4xf64>, tensor<?xf64>)
  "ta.print"(%30#0) : (tensor<?x4xf64>) -> ()
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
  %alloc_30 = memref.alloc(%extracted_25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_30 : memref<?x4xf64>)
  %alloc_31 = memref.alloc(%extracted_25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_31 : memref<?x4xf64>)
  %22 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x4xf64>
  %alloc_32 = memref.alloc(%extracted_25) {alignment = 32 : i64} : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_32 : memref<?xf64>)
  %23 = bufferization.to_tensor %alloc_32 restrict writable : memref<?xf64>
  %24:2 = "it.itree"(%22, %23) ({
    %c0_33 = arith.constant 0 : index
    %c1_34 = arith.constant 1 : index
    %25:2 = scf.for %arg0 = %c0_33 to %idx4 step %c1_34 iter_args(%arg1 = %22, %arg2 = %23) -> (tensor<?x4xf64>, tensor<?xf64>) {
      %c0_35 = arith.constant 0 : index
      %c1_36 = arith.constant 1 : index
      %26:2 = scf.for %arg3 = %c0_35 to %extracted step %c1_36 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (tensor<?x4xf64>, tensor<?xf64>) {
        %c1_37 = arith.constant 1 : index
        %27 = arith.addi %arg3, %c1_37 : index
        %extracted_38 = tensor.extract %15[%arg3] : tensor<?xi64>
        %28 = arith.index_cast %extracted_38 : i64 to index
        %extracted_39 = tensor.extract %15[%27] : tensor<?xi64>
        %29 = arith.index_cast %extracted_39 : i64 to index
        %c1_40 = arith.constant 1 : index
        %30:2 = scf.for %arg6 = %28 to %29 step %c1_40 iter_args(%arg7 = %arg4, %arg8 = %arg5) -> (tensor<?x4xf64>, tensor<?xf64>) {
          %extracted_42 = tensor.extract %16[%arg6] : tensor<?xi64>
          %31 = arith.index_cast %extracted_42 : i64 to index
          %extracted_43 = tensor.extract %19[%arg6] : tensor<?xf64>
          %extracted_44 = tensor.extract %21[%31, %arg0] : tensor<?x4xf64>
          %32 = arith.mulf %extracted_43, %extracted_44 : f64
          %extracted_45 = tensor.extract %arg7[%arg3, %arg0] : tensor<?x4xf64>
          %33 = arith.addf %extracted_45, %32 : f64
          %inserted_46 = tensor.insert %33 into %arg7[%arg3, %arg0] : tensor<?x4xf64>
          scf.yield %inserted_46, %arg8 : tensor<?x4xf64>, tensor<?xf64>
        }
        %extracted_41 = tensor.extract %30#1[%arg3] : tensor<?xf64>
        %inserted = tensor.insert %cst_1 into %30#1[%arg3] : tensor<?xf64>
        scf.yield %30#0, %inserted : tensor<?x4xf64>, tensor<?xf64>
      }
      scf.yield %26#0, %26#1 : tensor<?x4xf64>, tensor<?xf64>
    }
    it.yield %25#0, %25#1 : tensor<?x4xf64>, tensor<?xf64>
  }) : (tensor<?x4xf64>, tensor<?xf64>) -> (tensor<?x4xf64>, tensor<?xf64>)
  "ta.print"(%24#0) : (tensor<?x4xf64>) -> ()
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
  %alloc_27 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_27 : memref<?x4xf64>)
  %alloc_28 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_28 : memref<?x4xf64>)
  %22 = bufferization.to_tensor %alloc_28 restrict writable : memref<?x4xf64>
  %alloc_29 = memref.alloc(%9) {alignment = 32 : i64} : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_29 : memref<?xf64>)
  %23 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xf64>
  %c0_30 = arith.constant 0 : index
  %c1_31 = arith.constant 1 : index
  %24:2 = scf.for %arg0 = %c0_30 to %idx4 step %c1_31 iter_args(%arg1 = %22, %arg2 = %23) -> (tensor<?x4xf64>, tensor<?xf64>) {
    %c0_32 = arith.constant 0 : index
    %c1_33 = arith.constant 1 : index
    %25:2 = scf.for %arg3 = %c0_32 to %9 step %c1_33 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (tensor<?x4xf64>, tensor<?xf64>) {
      %c1_34 = arith.constant 1 : index
      %26 = arith.addi %arg3, %c1_34 : index
      %extracted = tensor.extract %15[%arg3] : tensor<?xi64>
      %27 = arith.index_cast %extracted : i64 to index
      %extracted_35 = tensor.extract %15[%26] : tensor<?xi64>
      %28 = arith.index_cast %extracted_35 : i64 to index
      %c1_36 = arith.constant 1 : index
      %29:2 = scf.for %arg6 = %27 to %28 step %c1_36 iter_args(%arg7 = %arg4, %arg8 = %arg5) -> (tensor<?x4xf64>, tensor<?xf64>) {
        %extracted_38 = tensor.extract %16[%arg6] : tensor<?xi64>
        %30 = arith.index_cast %extracted_38 : i64 to index
        %extracted_39 = tensor.extract %19[%arg6] : tensor<?xf64>
        %extracted_40 = tensor.extract %21[%30, %arg0] : tensor<?x4xf64>
        %31 = arith.mulf %extracted_39, %extracted_40 : f64
        %extracted_41 = tensor.extract %arg7[%arg3, %arg0] : tensor<?x4xf64>
        %32 = arith.addf %extracted_41, %31 : f64
        %inserted_42 = tensor.insert %32 into %arg7[%arg3, %arg0] : tensor<?x4xf64>
        scf.yield %inserted_42, %arg8 : tensor<?x4xf64>, tensor<?xf64>
      }
      %extracted_37 = tensor.extract %29#1[%arg3] : tensor<?xf64>
      %inserted = tensor.insert %cst_1 into %29#1[%arg3] : tensor<?xf64>
      scf.yield %29#0, %inserted : tensor<?x4xf64>, tensor<?xf64>
    }
    scf.yield %25#0, %25#1 : tensor<?x4xf64>, tensor<?xf64>
  }
  "ta.print"(%24#0) : (tensor<?x4xf64>) -> ()
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
  %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
  %alloc_23 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
  %15 = bufferization.to_tensor %alloc_23 restrict writable : memref<?x4xf64>
  %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?xf64>)
  %16 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xf64>
  %17:2 = scf.for %arg0 = %c0 to %idx4 step %c1 iter_args(%arg1 = %15, %arg2 = %16) -> (tensor<?x4xf64>, tensor<?xf64>) {
    %18:2 = scf.for %arg3 = %c0 to %9 step %c1 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (tensor<?x4xf64>, tensor<?xf64>) {
      %19 = arith.addi %arg3, %c1 : index
      %extracted = tensor.extract %11[%arg3] : tensor<?xi64>
      %20 = arith.index_cast %extracted : i64 to index
      %extracted_25 = tensor.extract %11[%19] : tensor<?xi64>
      %21 = arith.index_cast %extracted_25 : i64 to index
      %22 = scf.for %arg6 = %20 to %21 step %c1 iter_args(%arg7 = %arg4) -> (tensor<?x4xf64>) {
        %extracted_26 = tensor.extract %12[%arg6] : tensor<?xi64>
        %23 = arith.index_cast %extracted_26 : i64 to index
        %extracted_27 = tensor.extract %13[%arg6] : tensor<?xf64>
        %extracted_28 = tensor.extract %14[%23, %arg0] : tensor<?x4xf64>
        %24 = arith.mulf %extracted_27, %extracted_28 : f64
        %extracted_29 = tensor.extract %arg7[%arg3, %arg0] : tensor<?x4xf64>
        %25 = arith.addf %extracted_29, %24 : f64
        %inserted_30 = tensor.insert %25 into %arg7[%arg3, %arg0] : tensor<?x4xf64>
        scf.yield %inserted_30 : tensor<?x4xf64>
      }
      %inserted = tensor.insert %cst_1 into %arg5[%arg3] : tensor<?xf64>
      scf.yield %22, %inserted : tensor<?x4xf64>, tensor<?xf64>
    }
    scf.yield %18#0, %18#1 : tensor<?x4xf64>, tensor<?xf64>
  }
  "ta.print"(%17#0) : (tensor<?x4xf64>) -> ()
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
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
    %alloc_23 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
    %15 = bufferization.to_tensor %alloc_23 restrict writable : memref<?x4xf64>
    %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?xf64>)
    %16 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xf64>
    %17:2 = scf.for %arg0 = %c0 to %idx4 step %c1 iter_args(%arg1 = %15, %arg2 = %16) -> (tensor<?x4xf64>, tensor<?xf64>) {
      %18:2 = scf.for %arg3 = %c0 to %9 step %c1 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (tensor<?x4xf64>, tensor<?xf64>) {
        %19 = arith.addi %arg3, %c1 : index
        %extracted = tensor.extract %11[%arg3] : tensor<?xi64>
        %20 = arith.index_cast %extracted : i64 to index
        %extracted_25 = tensor.extract %11[%19] : tensor<?xi64>
        %21 = arith.index_cast %extracted_25 : i64 to index
        %22 = scf.for %arg6 = %20 to %21 step %c1 iter_args(%arg7 = %arg4) -> (tensor<?x4xf64>) {
          %extracted_26 = tensor.extract %12[%arg6] : tensor<?xi64>
          %23 = arith.index_cast %extracted_26 : i64 to index
          %extracted_27 = tensor.extract %13[%arg6] : tensor<?xf64>
          %extracted_28 = tensor.extract %14[%23, %arg0] : tensor<?x4xf64>
          %24 = arith.mulf %extracted_27, %extracted_28 : f64
          %extracted_29 = tensor.extract %arg7[%arg3, %arg0] : tensor<?x4xf64>
          %25 = arith.addf %extracted_29, %24 : f64
          %inserted_30 = tensor.insert %25 into %arg7[%arg3, %arg0] : tensor<?x4xf64>
          scf.yield %inserted_30 : tensor<?x4xf64>
        }
        %inserted = tensor.insert %cst_1 into %arg5[%arg3] : tensor<?xf64>
        scf.yield %22, %inserted : tensor<?x4xf64>, tensor<?xf64>
      }
      scf.yield %18#0, %18#1 : tensor<?x4xf64>, tensor<?xf64>
    }
    "ta.print"(%17#0) : (tensor<?x4xf64>) -> ()
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
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
    %alloc_23 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
    %15 = bufferization.to_tensor %alloc_23 restrict writable : memref<?x4xf64>
    %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?xf64>)
    %16 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xf64>
    %17:2 = scf.for %arg0 = %c0 to %idx4 step %c1 iter_args(%arg1 = %15, %arg2 = %16) -> (tensor<?x4xf64>, tensor<?xf64>) {
      %18:2 = scf.for %arg3 = %c0 to %9 step %c1 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (tensor<?x4xf64>, tensor<?xf64>) {
        %19 = arith.addi %arg3, %c1 : index
        %extracted = tensor.extract %11[%arg3] : tensor<?xi64>
        %20 = arith.index_cast %extracted : i64 to index
        %extracted_25 = tensor.extract %11[%19] : tensor<?xi64>
        %21 = arith.index_cast %extracted_25 : i64 to index
        %22 = scf.for %arg6 = %20 to %21 step %c1 iter_args(%arg7 = %arg4) -> (tensor<?x4xf64>) {
          %extracted_26 = tensor.extract %12[%arg6] : tensor<?xi64>
          %23 = arith.index_cast %extracted_26 : i64 to index
          %extracted_27 = tensor.extract %13[%arg6] : tensor<?xf64>
          %extracted_28 = tensor.extract %14[%23, %arg0] : tensor<?x4xf64>
          %24 = arith.mulf %extracted_27, %extracted_28 : f64
          %extracted_29 = tensor.extract %arg7[%arg3, %arg0] : tensor<?x4xf64>
          %25 = arith.addf %extracted_29, %24 : f64
          %inserted_30 = tensor.insert %25 into %arg7[%arg3, %arg0] : tensor<?x4xf64>
          scf.yield %inserted_30 : tensor<?x4xf64>
        }
        %inserted = tensor.insert %cst_1 into %arg5[%arg3] : tensor<?xf64>
        scf.yield %22, %inserted : tensor<?x4xf64>, tensor<?xf64>
      }
      scf.yield %18#0, %18#1 : tensor<?x4xf64>, tensor<?xf64>
    }
    "ta.print"(%17#0) : (tensor<?x4xf64>) -> ()
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
    %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?xf64>)
    %11:2 = scf.for %arg0 = %c0 to %idx4 step %c1 iter_args(%arg1 = %alloc_23, %arg2 = %alloc_24) -> (memref<?x4xf64>, memref<?xf64>) {
      %13:2 = scf.for %arg3 = %c0 to %9 step %c1 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (memref<?x4xf64>, memref<?xf64>) {
        %14 = arith.addi %arg3, %c1 : index
        %15 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %16 = arith.index_cast %15 : i64 to index
        %17 = memref.load %alloc_10[%14] : memref<?xi64>
        %18 = arith.index_cast %17 : i64 to index
        %19 = scf.for %arg6 = %16 to %18 step %c1 iter_args(%arg7 = %arg4) -> (memref<?x4xf64>) {
          %20 = memref.load %alloc_12[%arg6] : memref<?xi64>
          %21 = arith.index_cast %20 : i64 to index
          %22 = memref.load %alloc_18[%arg6] : memref<?xf64>
          %23 = memref.load %alloc_20[%21, %arg0] : memref<?x4xf64>
          %24 = arith.mulf %22, %23 : f64
          %25 = memref.load %arg7[%arg3, %arg0] : memref<?x4xf64>
          %26 = arith.addf %25, %24 : f64
          memref.store %26, %arg7[%arg3, %arg0] : memref<?x4xf64>
          scf.yield %arg7 : memref<?x4xf64>
        }
        memref.store %cst_1, %arg5[%arg3] : memref<?xf64>
        scf.yield %19, %arg5 : memref<?x4xf64>, memref<?xf64>
      }
      scf.yield %13#0, %13#1 : memref<?x4xf64>, memref<?xf64>
    }
    %12 = bufferization.to_tensor %11#0 : memref<?x4xf64>
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
  %alloc_23 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
  %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?xf64>)
  %11:2 = scf.for %arg0 = %c0 to %idx4 step %c1 iter_args(%arg1 = %alloc_23, %arg2 = %alloc_24) -> (memref<?x4xf64>, memref<?xf64>) {
    %13:2 = scf.for %arg3 = %c0 to %9 step %c1 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (memref<?x4xf64>, memref<?xf64>) {
      %14 = arith.addi %arg3, %c1 : index
      %15 = memref.load %alloc_10[%arg3] : memref<?xi64>
      %16 = arith.index_cast %15 : i64 to index
      %17 = memref.load %alloc_10[%14] : memref<?xi64>
      %18 = arith.index_cast %17 : i64 to index
      %19 = scf.for %arg6 = %16 to %18 step %c1 iter_args(%arg7 = %arg4) -> (memref<?x4xf64>) {
        %20 = memref.load %alloc_12[%arg6] : memref<?xi64>
        %21 = arith.index_cast %20 : i64 to index
        %22 = memref.load %alloc_18[%arg6] : memref<?xf64>
        %23 = memref.load %alloc_20[%21, %arg0] : memref<?x4xf64>
        %24 = arith.mulf %22, %23 : f64
        %25 = memref.load %arg7[%arg3, %arg0] : memref<?x4xf64>
        %26 = arith.addf %25, %24 : f64
        memref.store %26, %arg7[%arg3, %arg0] : memref<?x4xf64>
        scf.yield %arg7 : memref<?x4xf64>
      }
      memref.store %cst_1, %arg5[%arg3] : memref<?xf64>
      scf.yield %19, %arg5 : memref<?x4xf64>, memref<?xf64>
    }
    scf.yield %13#0, %13#1 : memref<?x4xf64>, memref<?xf64>
  }
  %12 = bufferization.to_tensor %11#0 : memref<?x4xf64>
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
  %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?xf64>)
  %11:2 = scf.for %arg0 = %c0 to %idx4 step %c1 iter_args(%arg1 = %alloc_23, %arg2 = %alloc_24) -> (memref<?x4xf64>, memref<?xf64>) {
    %14:2 = scf.for %arg3 = %c0 to %9 step %c1 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (memref<?x4xf64>, memref<?xf64>) {
      %15 = arith.addi %arg3, %c1 : index
      %16 = memref.load %alloc_10[%arg3] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = memref.load %alloc_10[%15] : memref<?xi64>
      %19 = arith.index_cast %18 : i64 to index
      %20 = scf.for %arg6 = %17 to %19 step %c1 iter_args(%arg7 = %arg4) -> (memref<?x4xf64>) {
        %21 = memref.load %alloc_12[%arg6] : memref<?xi64>
        %22 = arith.index_cast %21 : i64 to index
        %23 = memref.load %alloc_18[%arg6] : memref<?xf64>
        %24 = memref.load %alloc_20[%22, %arg0] : memref<?x4xf64>
        %25 = arith.mulf %23, %24 : f64
        %26 = memref.load %arg7[%arg3, %arg0] : memref<?x4xf64>
        %27 = arith.addf %26, %25 : f64
        memref.store %27, %arg7[%arg3, %arg0] : memref<?x4xf64>
        scf.yield %arg7 : memref<?x4xf64>
      }
      memref.store %cst_1, %arg5[%arg3] : memref<?xf64>
      scf.yield %20, %arg5 : memref<?x4xf64>, memref<?xf64>
    }
    scf.yield %14#0, %14#1 : memref<?x4xf64>, memref<?xf64>
  }
  %12 = bufferization.to_tensor %11#0 : memref<?x4xf64>
  %13 = bufferization.to_memref %12 : memref<?x4xf64>
  %cast_25 = memref.cast %13 : memref<?x4xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_25) : (memref<*xf64>) -> ()
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
    %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?xf64>)
    scf.for %arg0 = %c0 to %idx4 step %c1 {
      scf.for %arg1 = %c0 to %9 step %c1 {
        %11 = arith.addi %arg1, %c1 : index
        %12 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %13 = arith.index_cast %12 : i64 to index
        %14 = memref.load %alloc_10[%11] : memref<?xi64>
        %15 = arith.index_cast %14 : i64 to index
        scf.for %arg2 = %13 to %15 step %c1 {
          %16 = memref.load %alloc_12[%arg2] : memref<?xi64>
          %17 = arith.index_cast %16 : i64 to index
          %18 = memref.load %alloc_18[%arg2] : memref<?xf64>
          %19 = memref.load %alloc_20[%17, %arg0] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_23[%arg1, %arg0] : memref<?x4xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_23[%arg1, %arg0] : memref<?x4xf64>
        }
        memref.store %cst_1, %alloc_24[%arg1] : memref<?xf64>
      }
    }
    %cast_25 = memref.cast %alloc_23 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_25) : (memref<*xf64>) -> ()
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
    %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?xf64>)
    scf.for %arg0 = %c0 to %idx4 step %c1 {
      scf.for %arg1 = %c0 to %9 step %c1 {
        %11 = arith.addi %arg1, %c1 : index
        %12 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %13 = arith.index_cast %12 : i64 to index
        %14 = memref.load %alloc_10[%11] : memref<?xi64>
        %15 = arith.index_cast %14 : i64 to index
        scf.for %arg2 = %13 to %15 step %c1 {
          %16 = memref.load %alloc_12[%arg2] : memref<?xi64>
          %17 = arith.index_cast %16 : i64 to index
          %18 = memref.load %alloc_18[%arg2] : memref<?xf64>
          %19 = memref.load %alloc_20[%17, %arg0] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_23[%arg1, %arg0] : memref<?x4xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_23[%arg1, %arg0] : memref<?x4xf64>
        }
        memref.store %cst_1, %alloc_24[%arg1] : memref<?xf64>
      }
    }
    %cast_25 = memref.cast %alloc_23 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_25) : (memref<*xf64>) -> ()
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
    %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?xf64>)
    scf.for %arg0 = %c0 to %idx4 step %c1 {
      scf.for %arg1 = %c0 to %9 step %c1 {
        %11 = arith.addi %arg1, %c1 : index
        %12 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %13 = arith.index_cast %12 : i64 to index
        %14 = memref.load %alloc_10[%11] : memref<?xi64>
        %15 = arith.index_cast %14 : i64 to index
        scf.for %arg2 = %13 to %15 step %c1 {
          %16 = memref.load %alloc_12[%arg2] : memref<?xi64>
          %17 = arith.index_cast %16 : i64 to index
          %18 = memref.load %alloc_18[%arg2] : memref<?xf64>
          %19 = memref.load %alloc_20[%17, %arg0] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_23[%arg1, %arg0] : memref<?x4xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_23[%arg1, %arg0] : memref<?x4xf64>
        }
        memref.store %cst_1, %alloc_24[%arg1] : memref<?xf64>
      }
    }
    %cast_25 = memref.cast %alloc_23 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_25) : (memref<*xf64>) -> ()
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
    %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?xf64>)
    scf.for %arg0 = %c0 to %idx4 step %c1 {
      scf.for %arg1 = %c0 to %9 step %c1 {
        %11 = arith.addi %arg1, %c1 : index
        %12 = memref.load %alloc_10[%arg1] : memref<?xi64>
        %13 = arith.index_cast %12 : i64 to index
        %14 = memref.load %alloc_10[%11] : memref<?xi64>
        %15 = arith.index_cast %14 : i64 to index
        scf.for %arg2 = %13 to %15 step %c1 {
          %16 = memref.load %alloc_12[%arg2] : memref<?xi64>
          %17 = arith.index_cast %16 : i64 to index
          %18 = memref.load %alloc_18[%arg2] : memref<?xf64>
          %19 = memref.load %alloc_20[%17, %arg0] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_23[%arg1, %arg0] : memref<?x4xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_23[%arg1, %arg0] : memref<?x4xf64>
        }
        memref.store %cst_1, %alloc_24[%arg1] : memref<?xf64>
      }
    }
    %cast_25 = memref.cast %alloc_23 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_25) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}
