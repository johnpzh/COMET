// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %c0 = arith.constant 0 : index
    %4 = "ta.dim"(%3, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %c1 = arith.constant 1 : index
    %5 = "ta.dim"(%3, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %6 = "ta.dense_tensor_decl"(%4) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %7 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<4x?xf64>
    %8 = "ta.spTensor_decl"(%4, %5) <{format = "CSR", temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %9 = "ta.dense_tensor_decl"(%4, %5) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
    "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%6) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%7) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
    "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
    %10 = "it.itree"(%9) ({
    ^bb0(%arg0: tensor<?x?xf64>):
      %12 = "it.RootOp"() : () -> !it.index_tree
      %13 = "it.IndexOp"(%12) : (!it.index_tree) -> !it.index
      %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index
      %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%arg0, %13) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %14, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
      %16 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%6, %13) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%6, %15, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %17 = "it.OperandOp"(%6, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %15) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %14, %pos_7) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
      %18 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
      %19 = "it.ComputeOp"(%15, %16, %17, %18) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
      it.yield %19 : tensor<?x?xf64>
    }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
    "ta.set_op"(%10, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
    %11 = "it.itree"(%8) ({
    ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
      %12 = "it.RootOp"() : () -> !it.index_tree
      %13 = "it.IndexOp"(%12) : (!it.index_tree) -> !it.index
      %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%arg0, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %14, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %15 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%3, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%3, %14, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %16 = "it.OperandOp"(%3, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%9, %13) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%9, %14, %pos_7) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
      %17 = "it.OperandOp"(%9, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
      %18 = "it.ComputeOp"(%14, %15, %16, %17) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      it.yield %18 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    "ta.set_op"(%11, %8) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.print"(%8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    return
  }
}


// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %c0 = arith.constant 0 : index
  %4 = "ta.dim"(%3, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1 = arith.constant 1 : index
  %5 = "ta.dim"(%3, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %6 = "ta.dense_tensor_decl"(%4) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %7 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<4x?xf64>
  %8 = "ta.spTensor_decl"(%4, %5) <{format = "CSR", temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %9 = "ta.dense_tensor_decl"(%4, %5) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
  "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%6) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%7) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %10 = "it.itree"(%9) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %12 = "it.RootOp"() : () -> !it.index_tree
    %13 = "it.IndexOp"(%12) : (!it.index_tree) -> !it.index
    %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index
    %15 = "it.IndexOp"(%14) : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %13) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %14, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %16 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%6, %13) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%6, %15, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %17 = "it.OperandOp"(%6, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %15) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %14, %pos_7) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %18 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %19 = "it.ComputeOp"(%15, %16, %17, %18) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %19 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.set_op"(%10, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  %11 = "it.itree"(%8) ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %12 = "it.RootOp"() : () -> !it.index_tree
    %13 = "it.IndexOp"(%12) : (!it.index_tree) -> !it.index
    %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %14, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %15 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%3, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%3, %14, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%3, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%9, %13) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%9, %14, %pos_7) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %17 = "it.OperandOp"(%9, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %18 = "it.ComputeOp"(%14, %15, %16, %17) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %18 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%11, %8) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainInference (indextree-domain-inference) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %0 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %1 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %2 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %3 = "ta.dense_tensor_decl"(%1) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %4 = "ta.dense_tensor_decl"(%2) <{format = "Dense"}> : (index) -> tensor<4x?xf64>
  %5 = "ta.spTensor_decl"(%1, %2) <{format = "CSR", temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %6 = "ta.dense_tensor_decl"(%1, %2) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%3) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%6) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %7 = "it.itree"(%6) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %9 = "it.RootOp"() : () -> !it.index_tree
    %10 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %11 = "it.IndexOp"(%9, %10) : (!it.index_tree, !it.domain) -> !it.index
    %12 = "it.DomainOp"(%4) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %13 = "it.IndexOp"(%11, %12) : (!it.index, !it.domain) -> !it.index
    %14 = "it.DomainOp"(%4) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %15 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %16 = "it.DomainIntersectionOp"(%15, %14) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %17 = "it.IndexOp"(%13, %16) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %11) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %18 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%3, %11) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%3, %17, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %19 = "it.OperandOp"(%3, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%4, %17) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%4, %13, %pos_7) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %20 = "it.OperandOp"(%4, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %21 = "it.ComputeOp"(%17, %18, %19, %20) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %21 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.set_op"(%7, %6) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  %8 = "it.itree"(%5) ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %9 = "it.RootOp"() : () -> !it.index_tree
    %10 = "it.DomainOp"(%6) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %11 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %12 = "it.DomainIntersectionOp"(%11, %10) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %13 = "it.IndexOp"(%9, %12) : (!it.index_tree, !it.domain) -> !it.index
    %14 = "it.DomainOp"(%6) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %15 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %16 = "it.DomainIntersectionOp"(%15, %14) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %17 = "it.IndexOp"(%13, %16) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %17, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %18 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %17, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %19 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%6, %13) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%6, %17, %pos_7) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %20 = "it.OperandOp"(%6, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %21 = "it.ComputeOp"(%17, %18, %19, %20) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %21 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%8, %5) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%5) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func @main() {
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
  %23 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %24 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %25 = "ta.dense_tensor_decl"(%23) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %26 = "ta.dense_tensor_decl"(%24) <{format = "Dense"}> : (index) -> tensor<4x?xf64>
  %27 = "ta.sparse_output_tensor_decl"(%23, %24) <{format = "CSR"}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %28 = "ta.dense_tensor_decl"(%23, %24) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%28) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %29 = "it.itree"(%28) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.IndexOp"(%31, %32) : (!it.index_tree, !it.domain) -> !it.index
    %34 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %37 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %33) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_31, %pos_32 = "it.IndexToTensorDim"(%arg0, %35, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos, %pos_32, %crd, %crd_31) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%25, %33) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%25, %39, %pos_34) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%25, %pos_34, %pos_36, %crd_33, %crd_35) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%26, %39) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%26, %35, %pos_38) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%26, %pos_38, %pos_40, %crd_37, %crd_39) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %43 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.set_op"(%29, %28) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  %30 = "it.itree"(%27) ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%28) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %33 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %34 = "it.DomainIntersectionOp"(%33, %32) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %35 = "it.IndexOp"(%31, %34) : (!it.index_tree, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%28) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %37 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_31, %pos_32 = "it.IndexToTensorDim"(%arg0, %39, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos, %pos_32, %crd, %crd_31) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%22, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%22, %39, %pos_34) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%22, %pos_34, %pos_36, %crd_33, %crd_35) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%28, %35) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%28, %39, %pos_38) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%28, %pos_38, %pos_40, %crd_37, %crd_39) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %43 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%30, %27) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%27) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
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
  %23 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %24 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_31 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %25 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x4xf64>
  %alloc_32 = memref.alloc(%24) {alignment = 32 : i64} : memref<4x?xf64>
  %26 = bufferization.to_tensor %alloc_32 restrict writable : memref<4x?xf64>
  %27 = "ta.sparse_output_tensor_decl"(%23, %24) <{format = "CSR"}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_33 = memref.alloc(%23, %24) {alignment = 32 : i64} : memref<?x?xf64>
  %28 = bufferization.to_tensor %alloc_33 restrict writable : memref<?x?xf64>
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%28) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %29 = "it.itree"(%28) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.IndexOp"(%31, %32) : (!it.index_tree, !it.domain) -> !it.index
    %34 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %37 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %33) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%arg0, %35, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos, %pos_35, %crd, %crd_34) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%25, %33) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%25, %39, %pos_37) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%25, %pos_37, %pos_39, %crd_36, %crd_38) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%26, %39) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%26, %35, %pos_41) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%26, %pos_41, %pos_43, %crd_40, %crd_42) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %43 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.set_op"(%29, %28) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  %30 = "it.itree"(%27) ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%28) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %33 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %34 = "it.DomainIntersectionOp"(%33, %32) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %35 = "it.IndexOp"(%31, %34) : (!it.index_tree, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%28) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %37 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%arg0, %39, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos, %pos_35, %crd, %crd_34) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%22, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%22, %39, %pos_37) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%22, %pos_37, %pos_39, %crd_36, %crd_38) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%28, %35) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%28, %39, %pos_41) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%28, %pos_41, %pos_43, %crd_40, %crd_42) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %43 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%30, %27) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%27) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func @main() {
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
  %23 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %24 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_31 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %25 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x4xf64>
  %alloc_32 = memref.alloc(%24) {alignment = 32 : i64} : memref<4x?xf64>
  %26 = bufferization.to_tensor %alloc_32 restrict writable : memref<4x?xf64>
  %27 = "ta.sparse_output_tensor_decl"(%23, %24) <{format = "CSR"}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_33 = memref.alloc(%23, %24) {alignment = 32 : i64} : memref<?x?xf64>
  %28 = bufferization.to_tensor %alloc_33 restrict writable : memref<?x?xf64>
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%28) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %29 = "it.itree"(%28) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %33 = "it.IndexOp"(%31, %32) : (!it.index_tree, !it.domain) -> !it.index
    %34 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) : (!it.index, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %37 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %33) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%arg0, %35, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos, %pos_35, %crd, %crd_34) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%25, %33) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%25, %39, %pos_37) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%25, %pos_37, %pos_39, %crd_36, %crd_38) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%26, %39) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%26, %35, %pos_41) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%26, %pos_41, %pos_43, %crd_40, %crd_42) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %43 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.set_op"(%29, %28) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  %30 = "it.itree"(%27) ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %31 = "it.RootOp"() : () -> !it.index_tree
    %32 = "it.DomainOp"(%28) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %33 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %34 = "it.DomainIntersectionOp"(%33, %32) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %35 = "it.IndexOp"(%31, %34) : (!it.index_tree, !it.domain) -> !it.index
    %36 = "it.DomainOp"(%28) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %37 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %38 = "it.DomainIntersectionOp"(%37, %36) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %39 = "it.IndexOp"(%35, %38) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%arg0, %39, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos, %pos_35, %crd, %crd_34) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%22, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%22, %39, %pos_37) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%22, %pos_37, %pos_39, %crd_36, %crd_38) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%28, %35) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%28, %39, %pos_41) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%28, %pos_41, %pos_43, %crd_40, %crd_42) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %43 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%30, %27) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%27) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func @main() {
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
  %23 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %24 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_31 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %25 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x4xf64>
  %alloc_32 = memref.alloc(%24) {alignment = 32 : i64} : memref<4x?xf64>
  %26 = bufferization.to_tensor %alloc_32 restrict writable : memref<4x?xf64>
  %27 = "it.EmptyDomain"() : () -> !it.domain
  %28 = "it.IndexTreeSparseTensorOp"(%27, %27) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_33 = memref.alloc(%23, %24) {alignment = 32 : i64} : memref<?x?xf64>
  %29 = bufferization.to_tensor %alloc_33 restrict writable : memref<?x?xf64>
  "ta.fill"(%25) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%29) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %30 = "it.itree"(%29) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) : (!it.index_tree, !it.domain) -> !it.index
    %35 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %38 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %39 = "it.DomainIntersectionOp"(%38, %37) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %40 = "it.IndexOp"(%36, %39) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %34) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%arg0, %36, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %41 = "it.LHSOperandOp"(%arg0, %pos, %pos_35, %crd, %crd_34) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%25, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%25, %40, %pos_37) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%25, %pos_37, %pos_39, %crd_36, %crd_38) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%26, %40) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%26, %36, %pos_41) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%26, %pos_41, %pos_43, %crd_40, %crd_42) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %44 = "it.ComputeOp"(%40, %41, %42, %43) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %44 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.set_op"(%30, %29) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  %31 = "it.itree"(%28) ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DomainOp"(%29) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %34 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.DomainIntersectionOp"(%34, %33) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %36 = "it.IndexOp"(%32, %35) : (!it.index_tree, !it.domain) -> !it.index
    %37 = "it.DomainOp"(%29) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %38 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %39 = "it.DomainIntersectionOp"(%38, %37) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %40 = "it.IndexOp"(%36, %39) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %36) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%arg0, %40, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %41 = "it.LHSOperandOp"(%arg0, %pos, %pos_35, %crd, %crd_34) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%22, %36) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%22, %40, %pos_37) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%22, %pos_37, %pos_39, %crd_36, %crd_38) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%29, %36) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%29, %40, %pos_41) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%29, %pos_41, %pos_43, %crd_40, %crd_42) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %44 = "it.ComputeOp"(%40, %41, %42, %43) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %44 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%31, %28) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%28) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func @main() {
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
  %23 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %24 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_31 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_32 = arith.constant 1.200000e+00 : f64
  linalg.fill ins(%cst_32 : f64) outs(%alloc_31 : memref<?x4xf64>)
  %25 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x4xf64>
  %alloc_33 = memref.alloc(%24) {alignment = 32 : i64} : memref<4x?xf64>
  %cst_34 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_34 : f64) outs(%alloc_33 : memref<4x?xf64>)
  %26 = bufferization.to_tensor %alloc_33 restrict writable : memref<4x?xf64>
  %27 = "it.EmptyDomain"() : () -> !it.domain
  %28 = "it.IndexTreeSparseTensorOp"(%27, %27) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_35 = memref.alloc(%23, %24) {alignment = 32 : i64} : memref<?x?xf64>
  %cst_36 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_36 : f64) outs(%alloc_35 : memref<?x?xf64>)
  %29 = bufferization.to_tensor %alloc_35 restrict writable : memref<?x?xf64>
  %30 = "it.itree"(%29) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) : (!it.index_tree, !it.domain) -> !it.index
    %35 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %38 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %39 = "it.DomainIntersectionOp"(%38, %37) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %40 = "it.IndexOp"(%36, %39) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %34) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%arg0, %36, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %41 = "it.LHSOperandOp"(%arg0, %pos, %pos_38, %crd, %crd_37) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%25, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%25, %40, %pos_40) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%25, %pos_40, %pos_42, %crd_39, %crd_41) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%26, %40) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%26, %36, %pos_44) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%26, %pos_44, %pos_46, %crd_43, %crd_45) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %44 = "it.ComputeOp"(%40, %41, %42, %43) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %44 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.set_op"(%30, %29) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  %31 = "it.itree"(%28) ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DomainOp"(%29) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %34 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.DomainIntersectionOp"(%34, %33) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %36 = "it.IndexOp"(%32, %35) : (!it.index_tree, !it.domain) -> !it.index
    %37 = "it.DomainOp"(%29) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %38 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %39 = "it.DomainIntersectionOp"(%38, %37) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %40 = "it.IndexOp"(%36, %39) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %36) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%arg0, %40, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %41 = "it.LHSOperandOp"(%arg0, %pos, %pos_38, %crd, %crd_37) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%22, %36) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%22, %40, %pos_40) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%22, %pos_40, %pos_42, %crd_39, %crd_41) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%29, %36) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%29, %40, %pos_44) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%29, %pos_44, %pos_46, %crd_43, %crd_45) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %44 = "it.ComputeOp"(%40, %41, %42, %43) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %44 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%31, %28) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%28) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func @main() {
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
  %24 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_31 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_32 = arith.constant 1.200000e+00 : f64
  linalg.fill ins(%cst_32 : f64) outs(%alloc_31 : memref<?x4xf64>)
  %25 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x4xf64>
  %alloc_33 = memref.alloc(%24) {alignment = 32 : i64} : memref<4x?xf64>
  %cst_34 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_34 : f64) outs(%alloc_33 : memref<4x?xf64>)
  %26 = bufferization.to_tensor %alloc_33 restrict writable : memref<4x?xf64>
  %27 = "it.EmptyDomain"() : () -> !it.domain
  %28 = "it.IndexTreeSparseTensorOp"(%27, %27) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_35 = memref.alloc(%23, %24) {alignment = 32 : i64} : memref<?x?xf64>
  %cst_36 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_36 : f64) outs(%alloc_35 : memref<?x?xf64>)
  %29 = bufferization.to_tensor %alloc_35 restrict writable : memref<?x?xf64>
  %30 = "it.itree"(%29) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) : (!it.index_tree, !it.domain) -> !it.index
    %35 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %38 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %39 = "it.DomainIntersectionOp"(%38, %37) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %40 = "it.IndexOp"(%36, %39) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %34) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%arg0, %36, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %41 = "it.LHSOperandOp"(%arg0, %pos, %pos_38, %crd, %crd_37) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%25, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%25, %40, %pos_40) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%25, %pos_40, %pos_42, %crd_39, %crd_41) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%26, %40) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%26, %36, %pos_44) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%26, %pos_44, %pos_46, %crd_43, %crd_45) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %44 = "it.ComputeOp"(%40, %41, %42, %43) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %44 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  "ta.set_op"(%30, %29) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  %31 = "it.itree"(%28) ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DomainOp"(%29) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %34 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.DomainIntersectionOp"(%34, %33) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %36 = "it.IndexOp"(%32, %35) : (!it.index_tree, !it.domain) -> !it.index
    %37 = "it.DomainOp"(%29) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %38 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %39 = "it.DomainIntersectionOp"(%38, %37) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %40 = "it.IndexOp"(%36, %39) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %36) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%arg0, %40, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %41 = "it.LHSOperandOp"(%arg0, %pos, %pos_38, %crd, %crd_37) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%22, %36) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%22, %40, %pos_40) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%22, %pos_40, %pos_42, %crd_39, %crd_41) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%29, %36) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%29, %40, %pos_44) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%29, %pos_44, %pos_46, %crd_43, %crd_45) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %44 = "it.ComputeOp"(%40, %41, %42, %43) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %44 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%31, %28) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%28) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func @main() {
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
  %24 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_31 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_32 = arith.constant 1.200000e+00 : f64
  linalg.fill ins(%cst_32 : f64) outs(%alloc_31 : memref<?x4xf64>)
  %25 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x4xf64>
  %alloc_33 = memref.alloc(%24) {alignment = 32 : i64} : memref<4x?xf64>
  %cst_34 = arith.constant 3.400000e+00 : f64
  linalg.fill ins(%cst_34 : f64) outs(%alloc_33 : memref<4x?xf64>)
  %26 = bufferization.to_tensor %alloc_33 restrict writable : memref<4x?xf64>
  %27 = "it.EmptyDomain"() : () -> !it.domain
  %28 = "it.IndexTreeSparseTensorOp"(%27, %27) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %alloc_35 = memref.alloc(%23, %24) {alignment = 32 : i64} : memref<?x?xf64>
  %cst_36 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_36 : f64) outs(%alloc_35 : memref<?x?xf64>)
  %29 = bufferization.to_tensor %alloc_35 restrict writable : memref<?x?xf64>
  %30 = "it.itree"(%29) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) : (!it.index_tree, !it.domain) -> !it.index
    %35 = "it.DomainOp"(%26) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DomainOp"(%26) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %38 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %39 = "it.DomainIntersectionOp"(%38, %37) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %40 = "it.IndexOp"(%36, %39) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %34) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%arg0, %36, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %41 = "it.LHSOperandOp"(%arg0, %pos, %pos_38, %crd, %crd_37) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%25, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%25, %40, %pos_40) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%25, %pos_40, %pos_42, %crd_39, %crd_41) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%26, %40) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%26, %36, %pos_44) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%26, %pos_44, %pos_46, %crd_43, %crd_45) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %44 = "it.ComputeOp"(%40, %41, %42, %43) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %44 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  %31 = "it.itree"(%28) ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DomainOp"(%30) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %34 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.DomainIntersectionOp"(%34, %33) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %36 = "it.IndexOp"(%32, %35) : (!it.index_tree, !it.domain) -> !it.index
    %37 = "it.DomainOp"(%30) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %38 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %39 = "it.DomainIntersectionOp"(%38, %37) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %40 = "it.IndexOp"(%36, %39) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %36) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%arg0, %40, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %41 = "it.LHSOperandOp"(%arg0, %pos, %pos_38, %crd, %crd_37) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%22, %36) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%22, %40, %pos_40) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%22, %pos_40, %pos_42, %crd_39, %crd_41) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%30, %36) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%30, %40, %pos_44) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%30, %pos_44, %pos_46, %crd_43, %crd_45) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %44 = "it.ComputeOp"(%40, %41, %42, %43) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %44 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.print"(%31) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %idx4 = index.constant 4
  %idx1 = index.constant 1
  %idx0 = index.constant 0
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
  %alloc_21 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %dim_22 = tensor.dim %27, %idx0 : tensor<?x4xf64>
  %alloc_23 = memref.alloc(%26) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_23 : memref<4x?xf64>)
  %28 = bufferization.to_tensor %alloc_23 restrict writable : memref<4x?xf64>
  %dim_24 = tensor.dim %28, %idx1 : tensor<4x?xf64>
  %alloc_25 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x?xf64>)
  %29 = bufferization.to_tensor %alloc_25 restrict writable : memref<?x?xf64>
  %30 = "it.itree"(%29) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %35 = "it.RootOp"() : () -> !it.index_tree
    %36 = "it.DenseDomainOp"(%dim_22, %27) <{dims = [0 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) : (!it.index_tree, !it.domain) -> !it.index
    %38 = "it.DenseDomainOp"(%dim_24, %28) <{dims = [1 : i32]}> : (index, tensor<4x?xf64>) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) : (!it.index, !it.domain) -> !it.index
    %40 = "it.DenseDomainOp"(%idx4, %27, %28) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<?x4xf64>, tensor<4x?xf64>) -> !it.domain
    %41 = "it.IndexOp"(%39, %40) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %37) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_26, %pos_27 = "it.IndexToTensorDim"(%arg0, %39, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.LHSOperandOp"(%arg0, %pos, %pos_27, %crd, %crd_26) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_28, %pos_29 = "it.IndexToTensorDim"(%27, %37) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_30, %pos_31 = "it.IndexToTensorDim"(%27, %41, %pos_29) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%27, %pos_29, %pos_31, %crd_28, %crd_30) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%28, %41) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%28, %39, %pos_33) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %44 = "it.OperandOp"(%28, %pos_33, %pos_35, %crd_32, %crd_34) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %45 = "it.ComputeOp"(%41, %42, %43, %44) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %45 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  %31 = "it.DenseDomainOp"(%21, %20, %30) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
  %32 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %33 = "it.IndexTreeSparseTensorOp"(%31, %32) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %34 = "it.itree"(%33) ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %35 = "it.RootOp"() : () -> !it.index_tree
    %36 = "it.DenseDomainOp"(%21, %20, %30) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %37) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %38 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) : (!it.index, !it.domain) -> !it.index
    %crd_26, %pos_27 = "it.IndexToTensorDim"(%arg0, %37) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_28, %pos_29 = "it.IndexToTensorDim"(%arg0, %39, %pos_27) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos_27, %pos_29, %crd_26, %crd_28) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_30, %pos_31 = "it.IndexToTensorDim"(%20, %39, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%20, %pos, %pos_31, %crd, %crd_30) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%30, %37) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%30, %39, %pos_33) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%30, %pos_33, %pos_35, %crd_32, %crd_34) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %43 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.print"(%34) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func @main() {
  %idx4 = index.constant 4
  %idx1 = index.constant 1
  %idx0 = index.constant 0
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
  %alloc_21 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %dim_22 = tensor.dim %27, %idx0 : tensor<?x4xf64>
  %alloc_23 = memref.alloc(%26) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_23 : memref<4x?xf64>)
  %28 = bufferization.to_tensor %alloc_23 restrict writable : memref<4x?xf64>
  %dim_24 = tensor.dim %28, %idx1 : tensor<4x?xf64>
  %alloc_25 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x?xf64>)
  %29 = bufferization.to_tensor %alloc_25 restrict writable : memref<?x?xf64>
  %30 = "it.itree"(%29) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %35 = "it.RootOp"() : () -> !it.index_tree
    %36 = "it.DenseDomainOp"(%dim_22, %27) <{dims = [0 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) : (!it.index_tree, !it.domain) -> !it.index
    %38 = "it.DenseDomainOp"(%dim_24, %28) <{dims = [1 : i32]}> : (index, tensor<4x?xf64>) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) : (!it.index, !it.domain) -> !it.index
    %40 = "it.DenseDomainOp"(%idx4, %27, %28) <{dims = [1 : i32, 0 : i32]}> : (index, tensor<?x4xf64>, tensor<4x?xf64>) -> !it.domain
    %41 = "it.IndexOp"(%39, %40) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %37) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_26, %pos_27 = "it.IndexToTensorDim"(%arg0, %39, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.LHSOperandOp"(%arg0, %pos, %pos_27, %crd, %crd_26) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_28, %pos_29 = "it.IndexToTensorDim"(%27, %37) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_30, %pos_31 = "it.IndexToTensorDim"(%27, %41, %pos_29) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%27, %pos_29, %pos_31, %crd_28, %crd_30) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%28, %41) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%28, %39, %pos_33) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %44 = "it.OperandOp"(%28, %pos_33, %pos_35, %crd_32, %crd_34) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %45 = "it.ComputeOp"(%41, %42, %43, %44) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %45 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  %31 = "it.DenseDomainOp"(%21, %20, %30) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
  %32 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %33 = "it.IndexTreeSparseTensorOp"(%31, %32) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %34 = "it.itree"(%33) ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %35 = "it.RootOp"() : () -> !it.index_tree
    %36 = "it.DenseDomainOp"(%21, %20, %30) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %37) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %38 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) : (!it.index, !it.domain) -> !it.index
    %crd_26, %pos_27 = "it.IndexToTensorDim"(%arg0, %37) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_28, %pos_29 = "it.IndexToTensorDim"(%arg0, %39, %pos_27) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos_27, %pos_29, %crd_26, %crd_28) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_30, %pos_31 = "it.IndexToTensorDim"(%20, %39, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%20, %pos, %pos_31, %crd, %crd_30) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%30, %37) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%30, %39, %pos_33) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%30, %pos_33, %pos_35, %crd_32, %crd_34) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %43 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.print"(%34) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %idx1 = index.constant 1
  %idx0 = index.constant 0
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
  %alloc_21 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %dim_22 = tensor.dim %27, %idx0 : tensor<?x4xf64>
  %alloc_23 = memref.alloc(%26) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_23 : memref<4x?xf64>)
  %28 = bufferization.to_tensor %alloc_23 restrict writable : memref<4x?xf64>
  %dim_24 = tensor.dim %28, %idx1 : tensor<4x?xf64>
  %alloc_25 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x?xf64>)
  %29 = bufferization.to_tensor %alloc_25 restrict writable : memref<?x?xf64>
  %30 = "it.itree"(%29) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %c0_26 = arith.constant 0 : index
    %c1_27 = arith.constant 1 : index
    %35 = scf.for %arg1 = %c0_26 to %dim_22 step %c1_27 iter_args(%arg2 = %arg0) -> (tensor<?x?xf64>) {
      %c0_28 = arith.constant 0 : index
      %c1_29 = arith.constant 1 : index
      %36 = scf.for %arg3 = %c0_28 to %dim_24 step %c1_29 iter_args(%arg4 = %arg2) -> (tensor<?x?xf64>) {
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %37 = scf.for %arg5 = %c0_30 to %idx4 step %c1_31 iter_args(%arg6 = %arg4) -> (tensor<?x?xf64>) {
          %extracted = tensor.extract %27[%arg1, %arg5] : tensor<?x4xf64>
          %extracted_32 = tensor.extract %28[%arg5, %arg3] : tensor<4x?xf64>
          %38 = arith.mulf %extracted, %extracted_32 : f64
          %extracted_33 = tensor.extract %arg6[%arg1, %arg3] : tensor<?x?xf64>
          %39 = arith.addf %extracted_33, %38 : f64
          %inserted = tensor.insert %39 into %arg6[%arg1, %arg3] : tensor<?x?xf64>
          scf.yield %inserted : tensor<?x?xf64>
        }
        scf.yield %37 : tensor<?x?xf64>
      }
      scf.yield %36 : tensor<?x?xf64>
    }
    it.yield %35 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  %31 = "it.DenseDomainOp"(%21, %20, %30) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
  %32 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_20, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %33 = "it.IndexTreeSparseTensorOp"(%31, %32) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %34 = "it.itree"(%33) ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %c0_26 = arith.constant 0 : index
    %c1_27 = arith.constant 1 : index
    %35 = scf.for %arg1 = %c0_26 to %21 step %c1_27 iter_args(%arg2 = %arg0) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) {
      %c1_28 = arith.constant 1 : index
      %36 = arith.addi %arg1, %c1_28 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %37 = arith.index_cast %extracted : i64 to index
      %extracted_29 = tensor.extract %22[%36] : tensor<?xi64>
      %38 = arith.index_cast %extracted_29 : i64 to index
      %c1_30 = arith.constant 1 : index
      %39 = scf.for %arg3 = %37 to %38 step %c1_30 iter_args(%arg4 = %arg2) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) {
        %40 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %41 = arith.index_cast %40 : i64 to index
        %42 = "ta.TensorFindPos"(%arg4, %41) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
        %43 = "ta.TAExtractOp"(%20, %arg3, %arg1, %41) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
        %extracted_31 = tensor.extract %30[%arg1, %41] : tensor<?x?xf64>
        %44 = arith.mulf %43, %extracted_31 : f64
        %45 = "ta.TAExtractOp"(%arg4, %42, %arg1, %41) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
        %46 = "ta.TAInsertOp"(%arg4, %arg1, %42, %arg1, %41, %44) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %46 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      }
      scf.yield %39 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    }
    it.yield %35 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.print"(%34) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %idx1 = index.constant 1
  %idx0 = index.constant 0
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
  %alloc_21 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %dim_22 = tensor.dim %27, %idx0 : tensor<?x4xf64>
  %alloc_23 = memref.alloc(%26) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_23 : memref<4x?xf64>)
  %28 = bufferization.to_tensor %alloc_23 restrict writable : memref<4x?xf64>
  %dim_24 = tensor.dim %28, %idx1 : tensor<4x?xf64>
  %alloc_25 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_25 : memref<?x?xf64>)
  %29 = bufferization.to_tensor %alloc_25 restrict writable : memref<?x?xf64>
  %30 = "it.itree"(%29) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %c0_38 = arith.constant 0 : index
    %c1_39 = arith.constant 1 : index
    %42 = scf.for %arg1 = %c0_38 to %dim_22 step %c1_39 iter_args(%arg2 = %arg0) -> (tensor<?x?xf64>) {
      %c0_40 = arith.constant 0 : index
      %c1_41 = arith.constant 1 : index
      %43 = scf.for %arg3 = %c0_40 to %dim_24 step %c1_41 iter_args(%arg4 = %arg2) -> (tensor<?x?xf64>) {
        %c0_42 = arith.constant 0 : index
        %c1_43 = arith.constant 1 : index
        %44 = scf.for %arg5 = %c0_42 to %idx4 step %c1_43 iter_args(%arg6 = %arg4) -> (tensor<?x?xf64>) {
          %extracted = tensor.extract %27[%arg1, %arg5] : tensor<?x4xf64>
          %extracted_44 = tensor.extract %28[%arg5, %arg3] : tensor<4x?xf64>
          %45 = arith.mulf %extracted, %extracted_44 : f64
          %extracted_45 = tensor.extract %arg6[%arg1, %arg3] : tensor<?x?xf64>
          %46 = arith.addf %extracted_45, %45 : f64
          %inserted = tensor.insert %46 into %arg6[%arg1, %arg3] : tensor<?x?xf64>
          scf.yield %inserted : tensor<?x?xf64>
        }
        scf.yield %44 : tensor<?x?xf64>
      }
      scf.yield %43 : tensor<?x?xf64>
    }
    it.yield %42 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  %idx0_26 = index.constant 0
  %idx1_27 = index.constant 1
  %31 = arith.index_cast %21 : index to i64
  %idx1_28 = index.constant 1
  %alloc_29 = memref.alloc(%idx1_28) : memref<?xi64>
  memref.store %31, %alloc_29[%idx0_26] : memref<?xi64>
  %alloc_30 = memref.alloc() : memref<0xi64>
  %alloc_31 = memref.alloc() : memref<0xi64>
  %alloc_32 = memref.alloc() : memref<0xi64>
  %32 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xi64>
  %33 = bufferization.to_tensor %alloc_30 restrict writable : memref<0xi64>
  %34 = bufferization.to_tensor %alloc_31 restrict writable : memref<0xi64>
  %35 = bufferization.to_tensor %alloc_32 restrict writable : memref<0xi64>
  %36 = index.mul %idx1_27, %21
  %alloc_33 = memref.alloc() : memref<0xi64>
  %alloc_34 = memref.alloc() : memref<0xi64>
  %37 = bufferization.to_tensor %alloc_33 restrict writable : memref<0xi64>
  %38 = bufferization.to_tensor %alloc_34 restrict writable : memref<0xi64>
  %alloc_35 = memref.alloc(%dim_20) : memref<?xf64>
  %cst_36 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_26 to %dim_20 step %idx1_27 {
    memref.store %cst_36, %alloc_35[%arg0] : memref<?xf64>
  }
  %39 = bufferization.to_tensor %alloc_35 restrict writable : memref<?xf64>
  %from_elements_37 = tensor.from_elements %21, %24 : tensor<2xindex>
  %40 = "ta.spTensor_construct"(%from_elements_37, %32, %22, %33, %23, %34, %37, %35, %38, %39) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<0xi64>, tensor<?xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %41 = "it.itree"(%40) ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %c0_38 = arith.constant 0 : index
    %c1_39 = arith.constant 1 : index
    %42 = scf.for %arg1 = %c0_38 to %21 step %c1_39 iter_args(%arg2 = %arg0) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) {
      %c1_40 = arith.constant 1 : index
      %43 = arith.addi %arg1, %c1_40 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %44 = arith.index_cast %extracted : i64 to index
      %extracted_41 = tensor.extract %22[%43] : tensor<?xi64>
      %45 = arith.index_cast %extracted_41 : i64 to index
      %c1_42 = arith.constant 1 : index
      %46 = scf.for %arg3 = %44 to %45 step %c1_42 iter_args(%arg4 = %arg2) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) {
        %47 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %48 = arith.index_cast %47 : i64 to index
        %49 = "ta.TensorFindPos"(%arg4, %48) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
        %50 = "ta.TAExtractOp"(%20, %arg3, %arg1, %48) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
        %extracted_43 = tensor.extract %30[%arg1, %48] : tensor<?x?xf64>
        %51 = arith.mulf %50, %extracted_43 : f64
        %52 = "ta.TAExtractOp"(%arg4, %49, %arg1, %48) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
        %53 = "ta.TAInsertOp"(%arg4, %arg1, %49, %arg1, %48, %51) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %53 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      }
      scf.yield %46 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    }
    it.yield %42 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.print"(%41) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func @main() {
  %idx4 = index.constant 4
  %idx1 = index.constant 1
  %idx0 = index.constant 0
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
  %idx0_20 = index.constant 0
  %idx0_21 = index.constant 0
  %20 = builtin.unrealized_conversion_cast %from_elements, %idx0_20, %11, %idx0_21, %15, %16, %19 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_22 = index.constant 0
  %extracted = tensor.extract %from_elements[%idx0_22] : tensor<2xindex>
  %dim = tensor.dim %15, %c0 : tensor<?xi64>
  %dim_23 = tensor.dim %16, %c0 : tensor<?xi64>
  %idx1_24 = index.constant 1
  %extracted_25 = tensor.extract %from_elements[%idx1_24] : tensor<2xindex>
  %idx0_26 = index.constant 0
  %extracted_27 = tensor.extract %from_elements[%idx0_26] : tensor<2xindex>
  %idx1_28 = index.constant 1
  %extracted_29 = tensor.extract %from_elements[%idx1_28] : tensor<2xindex>
  %alloc_30 = memref.alloc(%extracted_27) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_30 : memref<?x4xf64>)
  %21 = bufferization.to_tensor %alloc_30 restrict writable : memref<?x4xf64>
  %dim_31 = tensor.dim %21, %idx0 : tensor<?x4xf64>
  %alloc_32 = memref.alloc(%extracted_29) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_32 : memref<4x?xf64>)
  %22 = bufferization.to_tensor %alloc_32 restrict writable : memref<4x?xf64>
  %dim_33 = tensor.dim %22, %idx1 : tensor<4x?xf64>
  %alloc_34 = memref.alloc(%extracted_27, %extracted_29) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_34 : memref<?x?xf64>)
  %23 = bufferization.to_tensor %alloc_34 restrict writable : memref<?x?xf64>
  %24 = "it.itree"(%23) ({
  ^bb0(%arg0: tensor<?x?xf64>):
    %c0_50 = arith.constant 0 : index
    %c1_51 = arith.constant 1 : index
    %38 = scf.for %arg1 = %c0_50 to %dim_31 step %c1_51 iter_args(%arg2 = %arg0) -> (tensor<?x?xf64>) {
      %c0_52 = arith.constant 0 : index
      %c1_53 = arith.constant 1 : index
      %39 = scf.for %arg3 = %c0_52 to %dim_33 step %c1_53 iter_args(%arg4 = %arg2) -> (tensor<?x?xf64>) {
        %c0_54 = arith.constant 0 : index
        %c1_55 = arith.constant 1 : index
        %40 = scf.for %arg5 = %c0_54 to %idx4 step %c1_55 iter_args(%arg6 = %arg4) -> (tensor<?x?xf64>) {
          %extracted_56 = tensor.extract %21[%arg1, %arg5] : tensor<?x4xf64>
          %extracted_57 = tensor.extract %22[%arg5, %arg3] : tensor<4x?xf64>
          %41 = arith.mulf %extracted_56, %extracted_57 : f64
          %extracted_58 = tensor.extract %arg6[%arg1, %arg3] : tensor<?x?xf64>
          %42 = arith.addf %extracted_58, %41 : f64
          %inserted_59 = tensor.insert %42 into %arg6[%arg1, %arg3] : tensor<?x?xf64>
          scf.yield %inserted_59 : tensor<?x?xf64>
        }
        scf.yield %40 : tensor<?x?xf64>
      }
      scf.yield %39 : tensor<?x?xf64>
    }
    it.yield %38 : tensor<?x?xf64>
  }) : (tensor<?x?xf64>) -> tensor<?x?xf64>
  %idx0_35 = index.constant 0
  %idx1_36 = index.constant 1
  %25 = arith.index_cast %extracted : index to i64
  %idx1_37 = index.constant 1
  %alloc_38 = memref.alloc(%idx1_37) : memref<?xi64>
  memref.store %25, %alloc_38[%idx0_35] : memref<?xi64>
  %alloc_39 = memref.alloc() : memref<0xi64>
  %alloc_40 = memref.alloc() : memref<0xi64>
  %alloc_41 = memref.alloc() : memref<0xi64>
  %26 = bufferization.to_tensor %alloc_38 restrict writable : memref<?xi64>
  %27 = bufferization.to_tensor %alloc_39 restrict writable : memref<0xi64>
  %28 = bufferization.to_tensor %alloc_40 restrict writable : memref<0xi64>
  %29 = bufferization.to_tensor %alloc_41 restrict writable : memref<0xi64>
  %30 = index.mul %idx1_36, %extracted
  %alloc_42 = memref.alloc() : memref<0xi64>
  %alloc_43 = memref.alloc() : memref<0xi64>
  %31 = bufferization.to_tensor %alloc_42 restrict writable : memref<0xi64>
  %32 = bufferization.to_tensor %alloc_43 restrict writable : memref<0xi64>
  %alloc_44 = memref.alloc(%dim_23) : memref<?xf64>
  %cst_45 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_35 to %dim_23 step %idx1_36 {
    memref.store %cst_45, %alloc_44[%arg0] : memref<?xf64>
  }
  %33 = bufferization.to_tensor %alloc_44 restrict writable : memref<?xf64>
  %from_elements_46 = tensor.from_elements %extracted, %extracted_25 : tensor<2xindex>
  %idx0_47 = index.constant 0
  %idx0_48 = index.constant 0
  %34 = builtin.unrealized_conversion_cast %from_elements_46, %idx0_47, %26, %idx0_48, %15, %16, %33 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %35:7 = "it.itree"(%from_elements_46, %idx0_47, %26, %idx0_48, %15, %16, %33) ({
  ^bb0(%arg0: tensor<2xindex>, %arg1: index, %arg2: tensor<?xi64>, %arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xi64>, %arg6: tensor<?xf64>):
    %c0_50 = arith.constant 0 : index
    %c1_51 = arith.constant 1 : index
    %38:7 = scf.for %arg7 = %c0_50 to %extracted step %c1_51 iter_args(%arg8 = %arg0, %arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3, %arg12 = %arg4, %arg13 = %arg5, %arg14 = %arg6) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) {
      %c1_52 = arith.constant 1 : index
      %40 = arith.addi %arg7, %c1_52 : index
      %extracted_53 = tensor.extract %15[%arg7] : tensor<?xi64>
      %41 = arith.index_cast %extracted_53 : i64 to index
      %extracted_54 = tensor.extract %15[%40] : tensor<?xi64>
      %42 = arith.index_cast %extracted_54 : i64 to index
      %c1_55 = arith.constant 1 : index
      %43:7 = scf.for %arg15 = %41 to %42 step %c1_55 iter_args(%arg16 = %arg8, %arg17 = %arg9, %arg18 = %arg10, %arg19 = %arg11, %arg20 = %arg12, %arg21 = %arg13, %arg22 = %arg14) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) {
        %extracted_56 = tensor.extract %16[%arg15] : tensor<?xi64>
        %45 = arith.index_cast %extracted_56 : i64 to index
        %extracted_57 = tensor.extract %19[%arg15] : tensor<?xf64>
        %extracted_58 = tensor.extract %24[%arg7, %45] : tensor<?x?xf64>
        %46 = arith.mulf %extracted_57, %extracted_58 : f64
        %extracted_59 = tensor.extract %arg22[%arg19] : tensor<?xf64>
        %47 = arith.index_cast %45 : index to i64
        %inserted_60 = tensor.insert %47 into %arg21[%arg19] : tensor<?xi64>
        %idx1_61 = index.constant 1
        %48 = index.add %arg19, %idx1_61
        %inserted_62 = tensor.insert %46 into %arg22[%arg19] : tensor<?xf64>
        %49 = builtin.unrealized_conversion_cast %arg16, %arg17, %arg18, %48, %arg20, %inserted_60, %inserted_62 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %arg16, %arg17, %arg18, %48, %arg20, %inserted_60, %inserted_62 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
      }
      %44 = builtin.unrealized_conversion_cast %43#0, %43#1, %43#2, %43#3, %43#4, %43#5, %43#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      scf.yield %43#0, %43#1, %43#2, %43#3, %43#4, %43#5, %43#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
    }
    %39 = builtin.unrealized_conversion_cast %38#0, %38#1, %38#2, %38#3, %38#4, %38#5, %38#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %38#0, %38#1, %38#2, %38#3, %38#4, %38#5, %38#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
  }) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>)
  %36 = builtin.unrealized_conversion_cast %35#0, %35#1, %35#2, %35#3, %35#4, %35#5, %35#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %37 = bufferization.alloc_tensor() : tensor<1xindex>
  %idx-1 = index.constant -1
  %idx0_49 = index.constant 0
  %inserted = tensor.insert %idx-1 into %37[%idx0_49] : tensor<1xindex>
  "ta.print"(%35#2) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted) : (tensor<1xindex>) -> ()
  "ta.print"(%35#4) : (tensor<?xi64>) -> ()
  "ta.print"(%35#5) : (tensor<?xi64>) -> ()
  "ta.print"(%35#6) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %idx1 = index.constant 1
  %idx0 = index.constant 0
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
  %idx0_20 = index.constant 0
  %idx0_21 = index.constant 0
  %20 = builtin.unrealized_conversion_cast %from_elements, %idx0_20, %11, %idx0_21, %15, %16, %19 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_22 = index.constant 0
  %dim = tensor.dim %15, %c0 : tensor<?xi64>
  %dim_23 = tensor.dim %16, %c0 : tensor<?xi64>
  %idx1_24 = index.constant 1
  %idx0_25 = index.constant 0
  %idx1_26 = index.constant 1
  %alloc_27 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_27 : memref<?x4xf64>)
  %21 = bufferization.to_tensor %alloc_27 restrict writable : memref<?x4xf64>
  %dim_28 = tensor.dim %21, %idx0 : tensor<?x4xf64>
  %alloc_29 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_29 : memref<4x?xf64>)
  %22 = bufferization.to_tensor %alloc_29 restrict writable : memref<4x?xf64>
  %dim_30 = tensor.dim %22, %idx1 : tensor<4x?xf64>
  %alloc_31 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_31 : memref<?x?xf64>)
  %23 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x?xf64>
  %c0_32 = arith.constant 0 : index
  %c1_33 = arith.constant 1 : index
  %24 = scf.for %arg0 = %c0_32 to %dim_28 step %c1_33 iter_args(%arg1 = %23) -> (tensor<?x?xf64>) {
    %c0_51 = arith.constant 0 : index
    %c1_52 = arith.constant 1 : index
    %39 = scf.for %arg2 = %c0_51 to %dim_30 step %c1_52 iter_args(%arg3 = %arg1) -> (tensor<?x?xf64>) {
      %c0_53 = arith.constant 0 : index
      %c1_54 = arith.constant 1 : index
      %40 = scf.for %arg4 = %c0_53 to %idx4 step %c1_54 iter_args(%arg5 = %arg3) -> (tensor<?x?xf64>) {
        %extracted = tensor.extract %21[%arg0, %arg4] : tensor<?x4xf64>
        %extracted_55 = tensor.extract %22[%arg4, %arg2] : tensor<4x?xf64>
        %41 = arith.mulf %extracted, %extracted_55 : f64
        %extracted_56 = tensor.extract %arg5[%arg0, %arg2] : tensor<?x?xf64>
        %42 = arith.addf %extracted_56, %41 : f64
        %inserted_57 = tensor.insert %42 into %arg5[%arg0, %arg2] : tensor<?x?xf64>
        scf.yield %inserted_57 : tensor<?x?xf64>
      }
      scf.yield %40 : tensor<?x?xf64>
    }
    scf.yield %39 : tensor<?x?xf64>
  }
  %idx0_34 = index.constant 0
  %idx1_35 = index.constant 1
  %25 = arith.index_cast %9 : index to i64
  %idx1_36 = index.constant 1
  %alloc_37 = memref.alloc(%idx1_36) : memref<?xi64>
  memref.store %25, %alloc_37[%idx0_34] : memref<?xi64>
  %alloc_38 = memref.alloc() : memref<0xi64>
  %alloc_39 = memref.alloc() : memref<0xi64>
  %alloc_40 = memref.alloc() : memref<0xi64>
  %26 = bufferization.to_tensor %alloc_37 restrict writable : memref<?xi64>
  %27 = bufferization.to_tensor %alloc_38 restrict writable : memref<0xi64>
  %28 = bufferization.to_tensor %alloc_39 restrict writable : memref<0xi64>
  %29 = bufferization.to_tensor %alloc_40 restrict writable : memref<0xi64>
  %30 = index.mul %idx1_35, %9
  %alloc_41 = memref.alloc() : memref<0xi64>
  %alloc_42 = memref.alloc() : memref<0xi64>
  %31 = bufferization.to_tensor %alloc_41 restrict writable : memref<0xi64>
  %32 = bufferization.to_tensor %alloc_42 restrict writable : memref<0xi64>
  %alloc_43 = memref.alloc(%dim_23) : memref<?xf64>
  %cst_44 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_34 to %dim_23 step %idx1_35 {
    memref.store %cst_44, %alloc_43[%arg0] : memref<?xf64>
  }
  %33 = bufferization.to_tensor %alloc_43 restrict writable : memref<?xf64>
  %from_elements_45 = tensor.from_elements %9, %10 : tensor<2xindex>
  %idx0_46 = index.constant 0
  %idx0_47 = index.constant 0
  %34 = builtin.unrealized_conversion_cast %from_elements_45, %idx0_46, %26, %idx0_47, %15, %16, %33 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %c0_48 = arith.constant 0 : index
  %c1_49 = arith.constant 1 : index
  %35:7 = scf.for %arg0 = %c0_48 to %9 step %c1_49 iter_args(%arg1 = %from_elements_45, %arg2 = %idx0_46, %arg3 = %26, %arg4 = %idx0_47, %arg5 = %15, %arg6 = %16, %arg7 = %33) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) {
    %c1_51 = arith.constant 1 : index
    %39 = arith.addi %arg0, %c1_51 : index
    %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
    %40 = arith.index_cast %extracted : i64 to index
    %extracted_52 = tensor.extract %15[%39] : tensor<?xi64>
    %41 = arith.index_cast %extracted_52 : i64 to index
    %c1_53 = arith.constant 1 : index
    %42:7 = scf.for %arg8 = %40 to %41 step %c1_53 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3, %arg12 = %arg4, %arg13 = %arg5, %arg14 = %arg6, %arg15 = %arg7) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) {
      %extracted_54 = tensor.extract %16[%arg8] : tensor<?xi64>
      %44 = arith.index_cast %extracted_54 : i64 to index
      %extracted_55 = tensor.extract %19[%arg8] : tensor<?xf64>
      %extracted_56 = tensor.extract %24[%arg0, %44] : tensor<?x?xf64>
      %45 = arith.mulf %extracted_55, %extracted_56 : f64
      %extracted_57 = tensor.extract %arg15[%arg12] : tensor<?xf64>
      %46 = arith.index_cast %44 : index to i64
      %inserted_58 = tensor.insert %46 into %arg14[%arg12] : tensor<?xi64>
      %idx1_59 = index.constant 1
      %47 = index.add %arg12, %idx1_59
      %inserted_60 = tensor.insert %45 into %arg15[%arg12] : tensor<?xf64>
      %48 = builtin.unrealized_conversion_cast %arg9, %arg10, %arg11, %47, %arg13, %inserted_58, %inserted_60 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      scf.yield %arg9, %arg10, %arg11, %47, %arg13, %inserted_58, %inserted_60 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
    }
    %43 = builtin.unrealized_conversion_cast %42#0, %42#1, %42#2, %42#3, %42#4, %42#5, %42#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    scf.yield %42#0, %42#1, %42#2, %42#3, %42#4, %42#5, %42#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
  }
  %36 = builtin.unrealized_conversion_cast %35#0, %35#1, %35#2, %35#3, %35#4, %35#5, %35#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %37 = builtin.unrealized_conversion_cast %35#0, %35#1, %35#2, %35#3, %35#4, %35#5, %35#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %38 = bufferization.alloc_tensor() : tensor<1xindex>
  %idx-1 = index.constant -1
  %idx0_50 = index.constant 0
  %inserted = tensor.insert %idx-1 into %38[%idx0_50] : tensor<1xindex>
  "ta.print"(%35#2) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted) : (tensor<1xindex>) -> ()
  "ta.print"(%35#4) : (tensor<?xi64>) -> ()
  "ta.print"(%35#5) : (tensor<?xi64>) -> ()
  "ta.print"(%35#6) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx4 = index.constant 4
  %idx1 = index.constant 1
  %idx0 = index.constant 0
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
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
  %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<4x?xf64>
  %alloc_22 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x?xf64>)
  %16 = bufferization.to_tensor %alloc_22 restrict writable : memref<?x?xf64>
  %17 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %16) -> (tensor<?x?xf64>) {
    %23 = scf.for %arg2 = %c0 to %10 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x?xf64>) {
      %24 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x?xf64>) {
        %extracted = tensor.extract %14[%arg0, %arg4] : tensor<?x4xf64>
        %extracted_26 = tensor.extract %15[%arg4, %arg2] : tensor<4x?xf64>
        %25 = arith.mulf %extracted, %extracted_26 : f64
        %extracted_27 = tensor.extract %arg5[%arg0, %arg2] : tensor<?x?xf64>
        %26 = arith.addf %extracted_27, %25 : f64
        %inserted_28 = tensor.insert %26 into %arg5[%arg0, %arg2] : tensor<?x?xf64>
        scf.yield %inserted_28 : tensor<?x?xf64>
      }
      scf.yield %24 : tensor<?x?xf64>
    }
    scf.yield %23 : tensor<?x?xf64>
  }
  %18 = arith.index_cast %9 : index to i64
  %alloc_23 = memref.alloc() : memref<1xi64>
  %cast_24 = memref.cast %alloc_23 : memref<1xi64> to memref<?xi64>
  memref.store %18, %alloc_23[%idx0] : memref<1xi64>
  %19 = bufferization.to_tensor %cast_24 restrict writable : memref<?xi64>
  %alloc_25 = memref.alloc(%5) : memref<?xf64>
  scf.for %arg0 = %idx0 to %5 step %idx1 {
    memref.store %cst_1, %alloc_25[%arg0] : memref<?xf64>
  }
  %20 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xf64>
  %21:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %12, %arg3 = %20) -> (index, tensor<?xi64>, tensor<?xf64>) {
    %23 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %24 = arith.index_cast %extracted : i64 to index
    %extracted_26 = tensor.extract %11[%23] : tensor<?xi64>
    %25 = arith.index_cast %extracted_26 : i64 to index
    %26:3 = scf.for %arg4 = %24 to %25 step %c1 iter_args(%arg5 = %arg1, %arg6 = %arg2, %arg7 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
      %extracted_27 = tensor.extract %12[%arg4] : tensor<?xi64>
      %27 = arith.index_cast %extracted_27 : i64 to index
      %extracted_28 = tensor.extract %13[%arg4] : tensor<?xf64>
      %extracted_29 = tensor.extract %17[%arg0, %27] : tensor<?x?xf64>
      %28 = arith.mulf %extracted_28, %extracted_29 : f64
      %inserted_30 = tensor.insert %extracted_27 into %arg6[%arg5] : tensor<?xi64>
      %29 = index.add %arg5, %idx1
      %inserted_31 = tensor.insert %28 into %arg7[%arg5] : tensor<?xf64>
      scf.yield %29, %inserted_30, %inserted_31 : index, tensor<?xi64>, tensor<?xf64>
    }
    scf.yield %26#0, %26#1, %26#2 : index, tensor<?xi64>, tensor<?xf64>
  }
  %22 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted = tensor.insert %idx-1 into %22[%idx0] : tensor<1xindex>
  "ta.print"(%19) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted) : (tensor<1xindex>) -> ()
  "ta.print"(%11) : (tensor<?xi64>) -> ()
  "ta.print"(%21#1) : (tensor<?xi64>) -> ()
  "ta.print"(%21#2) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx4 = index.constant 4
    %idx1 = index.constant 1
    %idx0 = index.constant 0
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
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<4x?xf64>
    %alloc_22 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x?xf64>)
    %16 = bufferization.to_tensor %alloc_22 restrict writable : memref<?x?xf64>
    %17 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %16) -> (tensor<?x?xf64>) {
      %23 = scf.for %arg2 = %c0 to %10 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x?xf64>) {
        %24 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x?xf64>) {
          %extracted = tensor.extract %14[%arg0, %arg4] : tensor<?x4xf64>
          %extracted_26 = tensor.extract %15[%arg4, %arg2] : tensor<4x?xf64>
          %25 = arith.mulf %extracted, %extracted_26 : f64
          %extracted_27 = tensor.extract %arg5[%arg0, %arg2] : tensor<?x?xf64>
          %26 = arith.addf %extracted_27, %25 : f64
          %inserted_28 = tensor.insert %26 into %arg5[%arg0, %arg2] : tensor<?x?xf64>
          scf.yield %inserted_28 : tensor<?x?xf64>
        }
        scf.yield %24 : tensor<?x?xf64>
      }
      scf.yield %23 : tensor<?x?xf64>
    }
    %18 = arith.index_cast %9 : index to i64
    %alloc_23 = memref.alloc() : memref<1xi64>
    %cast_24 = memref.cast %alloc_23 : memref<1xi64> to memref<?xi64>
    memref.store %18, %alloc_23[%idx0] : memref<1xi64>
    %19 = bufferization.to_tensor %cast_24 restrict writable : memref<?xi64>
    %alloc_25 = memref.alloc(%5) : memref<?xf64>
    scf.for %arg0 = %idx0 to %5 step %idx1 {
      memref.store %cst_1, %alloc_25[%arg0] : memref<?xf64>
    }
    %20 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xf64>
    %21:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %12, %arg3 = %20) -> (index, tensor<?xi64>, tensor<?xf64>) {
      %23 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %24 = arith.index_cast %extracted : i64 to index
      %extracted_26 = tensor.extract %11[%23] : tensor<?xi64>
      %25 = arith.index_cast %extracted_26 : i64 to index
      %26:3 = scf.for %arg4 = %24 to %25 step %c1 iter_args(%arg5 = %arg1, %arg6 = %arg2, %arg7 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
        %extracted_27 = tensor.extract %12[%arg4] : tensor<?xi64>
        %27 = arith.index_cast %extracted_27 : i64 to index
        %extracted_28 = tensor.extract %13[%arg4] : tensor<?xf64>
        %extracted_29 = tensor.extract %17[%arg0, %27] : tensor<?x?xf64>
        %28 = arith.mulf %extracted_28, %extracted_29 : f64
        %inserted_30 = tensor.insert %extracted_27 into %arg6[%arg5] : tensor<?xi64>
        %29 = index.add %arg5, %idx1
        %inserted_31 = tensor.insert %28 into %arg7[%arg5] : tensor<?xf64>
        scf.yield %29, %inserted_30, %inserted_31 : index, tensor<?xi64>, tensor<?xf64>
      }
      scf.yield %26#0, %26#1, %26#2 : index, tensor<?xi64>, tensor<?xf64>
    }
    %22 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted = tensor.insert %idx-1 into %22[%idx0] : tensor<1xindex>
    "ta.print"(%19) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted) : (tensor<1xindex>) -> ()
    "ta.print"(%11) : (tensor<?xi64>) -> ()
    "ta.print"(%21#1) : (tensor<?xi64>) -> ()
    "ta.print"(%21#2) : (tensor<?xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx4 = index.constant 4
    %idx1 = index.constant 1
    %idx0 = index.constant 0
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
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %14 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %15 = bufferization.to_tensor %alloc_21 restrict writable : memref<4x?xf64>
    %alloc_22 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x?xf64>)
    %16 = bufferization.to_tensor %alloc_22 restrict writable : memref<?x?xf64>
    %17 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %16) -> (tensor<?x?xf64>) {
      %23 = scf.for %arg2 = %c0 to %10 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x?xf64>) {
        %24 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x?xf64>) {
          %extracted = tensor.extract %14[%arg0, %arg4] : tensor<?x4xf64>
          %extracted_26 = tensor.extract %15[%arg4, %arg2] : tensor<4x?xf64>
          %25 = arith.mulf %extracted, %extracted_26 : f64
          %extracted_27 = tensor.extract %arg5[%arg0, %arg2] : tensor<?x?xf64>
          %26 = arith.addf %extracted_27, %25 : f64
          %inserted_28 = tensor.insert %26 into %arg5[%arg0, %arg2] : tensor<?x?xf64>
          scf.yield %inserted_28 : tensor<?x?xf64>
        }
        scf.yield %24 : tensor<?x?xf64>
      }
      scf.yield %23 : tensor<?x?xf64>
    }
    %18 = arith.index_cast %9 : index to i64
    %alloc_23 = memref.alloc() : memref<1xi64>
    %cast_24 = memref.cast %alloc_23 : memref<1xi64> to memref<?xi64>
    memref.store %18, %alloc_23[%idx0] : memref<1xi64>
    %19 = bufferization.to_tensor %cast_24 restrict writable : memref<?xi64>
    %alloc_25 = memref.alloc(%5) : memref<?xf64>
    scf.for %arg0 = %idx0 to %5 step %idx1 {
      memref.store %cst_1, %alloc_25[%arg0] : memref<?xf64>
    }
    %20 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xf64>
    %21:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %12, %arg3 = %20) -> (index, tensor<?xi64>, tensor<?xf64>) {
      %23 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %24 = arith.index_cast %extracted : i64 to index
      %extracted_26 = tensor.extract %11[%23] : tensor<?xi64>
      %25 = arith.index_cast %extracted_26 : i64 to index
      %26:3 = scf.for %arg4 = %24 to %25 step %c1 iter_args(%arg5 = %arg1, %arg6 = %arg2, %arg7 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
        %extracted_27 = tensor.extract %12[%arg4] : tensor<?xi64>
        %27 = arith.index_cast %extracted_27 : i64 to index
        %extracted_28 = tensor.extract %13[%arg4] : tensor<?xf64>
        %extracted_29 = tensor.extract %17[%arg0, %27] : tensor<?x?xf64>
        %28 = arith.mulf %extracted_28, %extracted_29 : f64
        %inserted_30 = tensor.insert %extracted_27 into %arg6[%arg5] : tensor<?xi64>
        %29 = index.add %arg5, %idx1
        %inserted_31 = tensor.insert %28 into %arg7[%arg5] : tensor<?xf64>
        scf.yield %29, %inserted_30, %inserted_31 : index, tensor<?xi64>, tensor<?xf64>
      }
      scf.yield %26#0, %26#1, %26#2 : index, tensor<?xi64>, tensor<?xf64>
    }
    %22 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted = tensor.insert %idx-1 into %22[%idx0] : tensor<1xindex>
    "ta.print"(%19) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted) : (tensor<1xindex>) -> ()
    "ta.print"(%11) : (tensor<?xi64>) -> ()
    "ta.print"(%21#1) : (tensor<?xi64>) -> ()
    "ta.print"(%21#2) : (tensor<?xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After OneShotBufferize (one-shot-bufferize) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx4 = index.constant 4
    %idx1 = index.constant 1
    %idx0 = index.constant 0
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
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %alloc_22 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x?xf64>)
    %12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %alloc_22) -> (memref<?x?xf64>) {
      %19 = scf.for %arg2 = %c0 to %10 step %c1 iter_args(%arg3 = %arg1) -> (memref<?x?xf64>) {
        %20 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (memref<?x?xf64>) {
          %21 = memref.load %alloc_20[%arg0, %arg4] : memref<?x4xf64>
          %22 = memref.load %alloc_21[%arg4, %arg2] : memref<4x?xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = memref.load %arg5[%arg0, %arg2] : memref<?x?xf64>
          %25 = arith.addf %24, %23 : f64
          memref.store %25, %arg5[%arg0, %arg2] : memref<?x?xf64>
          scf.yield %arg5 : memref<?x?xf64>
        }
        scf.yield %20 : memref<?x?xf64>
      }
      scf.yield %19 : memref<?x?xf64>
    }
    %13 = arith.index_cast %9 : index to i64
    %alloc_23 = memref.alloc() : memref<1xi64>
    %cast_24 = memref.cast %alloc_23 : memref<1xi64> to memref<?xi64>
    memref.store %13, %alloc_23[%idx0] : memref<1xi64>
    %14 = bufferization.to_tensor %cast_24 restrict writable : memref<?xi64>
    %alloc_25 = memref.alloc(%5) : memref<?xf64>
    scf.for %arg0 = %idx0 to %5 step %idx1 {
      memref.store %cst_1, %alloc_25[%arg0] : memref<?xf64>
    }
    %c0_26 = arith.constant 0 : index
    %dim = memref.dim %alloc_12, %c0_26 : memref<?xi64>
    %alloc_27 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_12, %alloc_27 : memref<?xi64> to memref<?xi64>
    %15:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_27, %arg3 = %alloc_25) -> (index, memref<?xi64>, memref<?xf64>) {
      %19 = arith.addi %arg0, %c1 : index
      %20 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %21 = arith.index_cast %20 : i64 to index
      %22 = memref.load %alloc_10[%19] : memref<?xi64>
      %23 = arith.index_cast %22 : i64 to index
      %24:3 = scf.for %arg4 = %21 to %23 step %c1 iter_args(%arg5 = %arg1, %arg6 = %arg2, %arg7 = %arg3) -> (index, memref<?xi64>, memref<?xf64>) {
        %25 = memref.load %alloc_12[%arg4] : memref<?xi64>
        %26 = arith.index_cast %25 : i64 to index
        %27 = memref.load %alloc_18[%arg4] : memref<?xf64>
        %28 = memref.load %12[%arg0, %26] : memref<?x?xf64>
        %29 = arith.mulf %27, %28 : f64
        memref.store %25, %arg6[%arg5] : memref<?xi64>
        %30 = index.add %arg5, %idx1
        memref.store %29, %arg7[%arg5] : memref<?xf64>
        scf.yield %30, %arg6, %arg7 : index, memref<?xi64>, memref<?xf64>
      }
      scf.yield %24#0, %24#1, %24#2 : index, memref<?xi64>, memref<?xf64>
    }
    %16 = bufferization.to_tensor %15#2 : memref<?xf64>
    %17 = bufferization.to_tensor %15#1 : memref<?xi64>
    %alloc_28 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_28[%idx0] : memref<1xindex>
    %18 = bufferization.to_tensor %alloc_28 : memref<1xindex>
    "ta.print"(%14) : (tensor<?xi64>) -> ()
    "ta.print"(%18) : (tensor<1xindex>) -> ()
    "ta.print"(%11) : (tensor<?xi64>) -> ()
    "ta.print"(%17) : (tensor<?xi64>) -> ()
    "ta.print"(%16) : (tensor<?xf64>) -> ()
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
  %idx-1 = index.constant -1
  %idx4 = index.constant 4
  %idx1 = index.constant 1
  %idx0 = index.constant 0
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
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
  %alloc_22 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x?xf64>)
  %12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %alloc_22) -> (memref<?x?xf64>) {
    %19 = scf.for %arg2 = %c0 to %10 step %c1 iter_args(%arg3 = %arg1) -> (memref<?x?xf64>) {
      %20 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (memref<?x?xf64>) {
        %21 = memref.load %alloc_20[%arg0, %arg4] : memref<?x4xf64>
        %22 = memref.load %alloc_21[%arg4, %arg2] : memref<4x?xf64>
        %23 = arith.mulf %21, %22 : f64
        %24 = memref.load %arg5[%arg0, %arg2] : memref<?x?xf64>
        %25 = arith.addf %24, %23 : f64
        memref.store %25, %arg5[%arg0, %arg2] : memref<?x?xf64>
        scf.yield %arg5 : memref<?x?xf64>
      }
      scf.yield %20 : memref<?x?xf64>
    }
    scf.yield %19 : memref<?x?xf64>
  }
  %13 = arith.index_cast %9 : index to i64
  %alloc_23 = memref.alloc() : memref<1xi64>
  %cast_24 = memref.cast %alloc_23 : memref<1xi64> to memref<?xi64>
  memref.store %13, %alloc_23[%idx0] : memref<1xi64>
  %14 = bufferization.to_tensor %cast_24 restrict writable : memref<?xi64>
  %alloc_25 = memref.alloc(%5) : memref<?xf64>
  scf.for %arg0 = %idx0 to %5 step %idx1 {
    memref.store %cst_1, %alloc_25[%arg0] : memref<?xf64>
  }
  %c0_26 = arith.constant 0 : index
  %dim = memref.dim %alloc_12, %c0_26 : memref<?xi64>
  %alloc_27 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
  memref.copy %alloc_12, %alloc_27 : memref<?xi64> to memref<?xi64>
  %15:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_27, %arg3 = %alloc_25) -> (index, memref<?xi64>, memref<?xf64>) {
    %19 = arith.addi %arg0, %c1 : index
    %20 = memref.load %alloc_10[%arg0] : memref<?xi64>
    %21 = arith.index_cast %20 : i64 to index
    %22 = memref.load %alloc_10[%19] : memref<?xi64>
    %23 = arith.index_cast %22 : i64 to index
    %24:3 = scf.for %arg4 = %21 to %23 step %c1 iter_args(%arg5 = %arg1, %arg6 = %arg2, %arg7 = %arg3) -> (index, memref<?xi64>, memref<?xf64>) {
      %25 = memref.load %alloc_12[%arg4] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = memref.load %alloc_18[%arg4] : memref<?xf64>
      %28 = memref.load %12[%arg0, %26] : memref<?x?xf64>
      %29 = arith.mulf %27, %28 : f64
      memref.store %25, %arg6[%arg5] : memref<?xi64>
      %30 = index.add %arg5, %idx1
      memref.store %29, %arg7[%arg5] : memref<?xf64>
      scf.yield %30, %arg6, %arg7 : index, memref<?xi64>, memref<?xf64>
    }
    scf.yield %24#0, %24#1, %24#2 : index, memref<?xi64>, memref<?xf64>
  }
  %16 = bufferization.to_tensor %15#2 : memref<?xf64>
  %17 = bufferization.to_tensor %15#1 : memref<?xi64>
  %alloc_28 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_28[%idx0] : memref<1xindex>
  %18 = bufferization.to_tensor %alloc_28 : memref<1xindex>
  "ta.print"(%14) : (tensor<?xi64>) -> ()
  "ta.print"(%18) : (tensor<1xindex>) -> ()
  "ta.print"(%11) : (tensor<?xi64>) -> ()
  "ta.print"(%17) : (tensor<?xi64>) -> ()
  "ta.print"(%16) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx4 = index.constant 4
  %idx1 = index.constant 1
  %idx0 = index.constant 0
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
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
  %alloc_22 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x?xf64>)
  %12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %alloc_22) -> (memref<?x?xf64>) {
    %24 = scf.for %arg2 = %c0 to %10 step %c1 iter_args(%arg3 = %arg1) -> (memref<?x?xf64>) {
      %25 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (memref<?x?xf64>) {
        %26 = memref.load %alloc_20[%arg0, %arg4] : memref<?x4xf64>
        %27 = memref.load %alloc_21[%arg4, %arg2] : memref<4x?xf64>
        %28 = arith.mulf %26, %27 : f64
        %29 = memref.load %arg5[%arg0, %arg2] : memref<?x?xf64>
        %30 = arith.addf %29, %28 : f64
        memref.store %30, %arg5[%arg0, %arg2] : memref<?x?xf64>
        scf.yield %arg5 : memref<?x?xf64>
      }
      scf.yield %25 : memref<?x?xf64>
    }
    scf.yield %24 : memref<?x?xf64>
  }
  %13 = arith.index_cast %9 : index to i64
  %alloc_23 = memref.alloc() : memref<1xi64>
  %cast_24 = memref.cast %alloc_23 : memref<1xi64> to memref<?xi64>
  memref.store %13, %alloc_23[%idx0] : memref<1xi64>
  %14 = bufferization.to_tensor %cast_24 restrict writable : memref<?xi64>
  %alloc_25 = memref.alloc(%5) : memref<?xf64>
  scf.for %arg0 = %idx0 to %5 step %idx1 {
    memref.store %cst_1, %alloc_25[%arg0] : memref<?xf64>
  }
  %c0_26 = arith.constant 0 : index
  %dim = memref.dim %alloc_12, %c0_26 : memref<?xi64>
  %alloc_27 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
  memref.copy %alloc_12, %alloc_27 : memref<?xi64> to memref<?xi64>
  %15:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_27, %arg3 = %alloc_25) -> (index, memref<?xi64>, memref<?xf64>) {
    %24 = arith.addi %arg0, %c1 : index
    %25 = memref.load %alloc_10[%arg0] : memref<?xi64>
    %26 = arith.index_cast %25 : i64 to index
    %27 = memref.load %alloc_10[%24] : memref<?xi64>
    %28 = arith.index_cast %27 : i64 to index
    %29:3 = scf.for %arg4 = %26 to %28 step %c1 iter_args(%arg5 = %arg1, %arg6 = %arg2, %arg7 = %arg3) -> (index, memref<?xi64>, memref<?xf64>) {
      %30 = memref.load %alloc_12[%arg4] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_18[%arg4] : memref<?xf64>
      %33 = memref.load %12[%arg0, %31] : memref<?x?xf64>
      %34 = arith.mulf %32, %33 : f64
      memref.store %30, %arg6[%arg5] : memref<?xi64>
      %35 = index.add %arg5, %idx1
      memref.store %34, %arg7[%arg5] : memref<?xf64>
      scf.yield %35, %arg6, %arg7 : index, memref<?xi64>, memref<?xf64>
    }
    scf.yield %29#0, %29#1, %29#2 : index, memref<?xi64>, memref<?xf64>
  }
  %16 = bufferization.to_tensor %15#2 : memref<?xf64>
  %17 = bufferization.to_tensor %15#1 : memref<?xi64>
  %alloc_28 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_28[%idx0] : memref<1xindex>
  %18 = bufferization.to_tensor %alloc_28 : memref<1xindex>
  %19 = bufferization.to_memref %14 : memref<?xi64>
  %cast_29 = memref.cast %19 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_29) : (memref<*xi64>) -> ()
  %20 = bufferization.to_memref %18 : memref<1xindex>
  %cast_30 = memref.cast %20 : memref<1xindex> to memref<*xindex>
  call @comet_print_memref_index(%cast_30) : (memref<*xindex>) -> ()
  %21 = bufferization.to_memref %11 : memref<?xi64>
  %cast_31 = memref.cast %21 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_31) : (memref<*xi64>) -> ()
  %22 = bufferization.to_memref %17 : memref<?xi64>
  %cast_32 = memref.cast %22 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_32) : (memref<*xi64>) -> ()
  %23 = bufferization.to_memref %16 : memref<?xf64>
  %cast_33 = memref.cast %23 : memref<?xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_33) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx4 = index.constant 4
    %idx1 = index.constant 1
    %idx0 = index.constant 0
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
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %alloc_22 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x?xf64>)
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %10 step %c1 {
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %13 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
          %14 = memref.load %alloc_21[%arg2, %arg1] : memref<4x?xf64>
          %15 = arith.mulf %13, %14 : f64
          %16 = memref.load %alloc_22[%arg0, %arg1] : memref<?x?xf64>
          %17 = arith.addf %16, %15 : f64
          memref.store %17, %alloc_22[%arg0, %arg1] : memref<?x?xf64>
        }
      }
    }
    %11 = arith.index_cast %9 : index to i64
    %alloc_23 = memref.alloc() : memref<1xi64>
    memref.store %11, %alloc_23[%idx0] : memref<1xi64>
    %alloc_24 = memref.alloc(%5) : memref<?xf64>
    scf.for %arg0 = %idx0 to %5 step %idx1 {
      memref.store %cst_1, %alloc_24[%arg0] : memref<?xf64>
    }
    %alloc_25 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_12, %alloc_25 : memref<?xi64> to memref<?xi64>
    %12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %13 = arith.addi %arg0, %c1 : index
      %14 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %16 = memref.load %alloc_10[%13] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = scf.for %arg2 = %15 to %17 step %c1 iter_args(%arg3 = %arg1) -> (index) {
        %19 = memref.load %alloc_12[%arg2] : memref<?xi64>
        %20 = arith.index_cast %19 : i64 to index
        %21 = memref.load %alloc_18[%arg2] : memref<?xf64>
        %22 = memref.load %alloc_22[%arg0, %20] : memref<?x?xf64>
        %23 = arith.mulf %21, %22 : f64
        memref.store %19, %alloc_25[%arg3] : memref<?xi64>
        %24 = index.add %arg3, %idx1
        memref.store %23, %alloc_24[%arg3] : memref<?xf64>
        scf.yield %24 : index
      }
      scf.yield %18 : index
    }
    %alloc_26 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_26[%idx0] : memref<1xindex>
    %cast_27 = memref.cast %alloc_23 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_27) : (memref<*xi64>) -> ()
    %cast_28 = memref.cast %alloc_26 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_28) : (memref<*xindex>) -> ()
    %cast_29 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_29) : (memref<*xi64>) -> ()
    %cast_30 = memref.cast %alloc_25 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_30) : (memref<*xi64>) -> ()
    %cast_31 = memref.cast %alloc_24 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_31) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx4 = index.constant 4
    %idx1 = index.constant 1
    %idx0 = index.constant 0
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
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %alloc_22 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x?xf64>)
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %10 step %c1 {
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %13 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
          %14 = memref.load %alloc_21[%arg2, %arg1] : memref<4x?xf64>
          %15 = arith.mulf %13, %14 : f64
          %16 = memref.load %alloc_22[%arg0, %arg1] : memref<?x?xf64>
          %17 = arith.addf %16, %15 : f64
          memref.store %17, %alloc_22[%arg0, %arg1] : memref<?x?xf64>
        }
      }
    }
    %11 = arith.index_cast %9 : index to i64
    %alloc_23 = memref.alloc() : memref<1xi64>
    memref.store %11, %alloc_23[%idx0] : memref<1xi64>
    %alloc_24 = memref.alloc(%5) : memref<?xf64>
    scf.for %arg0 = %idx0 to %5 step %idx1 {
      memref.store %cst_1, %alloc_24[%arg0] : memref<?xf64>
    }
    %alloc_25 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_12, %alloc_25 : memref<?xi64> to memref<?xi64>
    %12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %13 = arith.addi %arg0, %c1 : index
      %14 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %16 = memref.load %alloc_10[%13] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = scf.for %arg2 = %15 to %17 step %c1 iter_args(%arg3 = %arg1) -> (index) {
        %19 = memref.load %alloc_12[%arg2] : memref<?xi64>
        %20 = arith.index_cast %19 : i64 to index
        %21 = memref.load %alloc_18[%arg2] : memref<?xf64>
        %22 = memref.load %alloc_22[%arg0, %20] : memref<?x?xf64>
        %23 = arith.mulf %21, %22 : f64
        memref.store %19, %alloc_25[%arg3] : memref<?xi64>
        %24 = index.add %arg3, %idx1
        memref.store %23, %alloc_24[%arg3] : memref<?xf64>
        scf.yield %24 : index
      }
      scf.yield %18 : index
    }
    %alloc_26 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_26[%idx0] : memref<1xindex>
    %cast_27 = memref.cast %alloc_23 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_27) : (memref<*xi64>) -> ()
    %cast_28 = memref.cast %alloc_26 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_28) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_11) : (memref<*xi64>) -> ()
    %cast_29 = memref.cast %alloc_25 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_29) : (memref<*xi64>) -> ()
    %cast_30 = memref.cast %alloc_24 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_30) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx4 = index.constant 4
    %idx1 = index.constant 1
    %idx0 = index.constant 0
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
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %alloc_22 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x?xf64>)
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %10 step %c1 {
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %13 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
          %14 = memref.load %alloc_21[%arg2, %arg1] : memref<4x?xf64>
          %15 = arith.mulf %13, %14 : f64
          %16 = memref.load %alloc_22[%arg0, %arg1] : memref<?x?xf64>
          %17 = arith.addf %16, %15 : f64
          memref.store %17, %alloc_22[%arg0, %arg1] : memref<?x?xf64>
        }
      }
    }
    %11 = arith.index_cast %9 : index to i64
    %alloc_23 = memref.alloc() : memref<1xi64>
    memref.store %11, %alloc_23[%idx0] : memref<1xi64>
    %alloc_24 = memref.alloc(%5) : memref<?xf64>
    scf.for %arg0 = %idx0 to %5 step %idx1 {
      memref.store %cst_1, %alloc_24[%arg0] : memref<?xf64>
    }
    %alloc_25 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_12, %alloc_25 : memref<?xi64> to memref<?xi64>
    %12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %13 = arith.addi %arg0, %c1 : index
      %14 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %16 = memref.load %alloc_10[%13] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = scf.for %arg2 = %15 to %17 step %c1 iter_args(%arg3 = %arg1) -> (index) {
        %19 = memref.load %alloc_12[%arg2] : memref<?xi64>
        %20 = arith.index_cast %19 : i64 to index
        %21 = memref.load %alloc_18[%arg2] : memref<?xf64>
        %22 = memref.load %alloc_22[%arg0, %20] : memref<?x?xf64>
        %23 = arith.mulf %21, %22 : f64
        memref.store %19, %alloc_25[%arg3] : memref<?xi64>
        %24 = index.add %arg3, %idx1
        memref.store %23, %alloc_24[%arg3] : memref<?xf64>
        scf.yield %24 : index
      }
      scf.yield %18 : index
    }
    %alloc_26 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_26[%idx0] : memref<1xindex>
    %cast_27 = memref.cast %alloc_23 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_27) : (memref<*xi64>) -> ()
    %cast_28 = memref.cast %alloc_26 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_28) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_11) : (memref<*xi64>) -> ()
    %cast_29 = memref.cast %alloc_25 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_29) : (memref<*xi64>) -> ()
    %cast_30 = memref.cast %alloc_24 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_30) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx4 = index.constant 4
    %idx1 = index.constant 1
    %idx0 = index.constant 0
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
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %alloc_21 = memref.alloc(%10) {alignment = 32 : i64} : memref<4x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x?xf64>)
    %alloc_22 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x?xf64>)
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %10 step %c1 {
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %13 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
          %14 = memref.load %alloc_21[%arg2, %arg1] : memref<4x?xf64>
          %15 = arith.mulf %13, %14 : f64
          %16 = memref.load %alloc_22[%arg0, %arg1] : memref<?x?xf64>
          %17 = arith.addf %16, %15 : f64
          memref.store %17, %alloc_22[%arg0, %arg1] : memref<?x?xf64>
        }
      }
    }
    %11 = arith.index_cast %9 : index to i64
    %alloc_23 = memref.alloc() : memref<1xi64>
    memref.store %11, %alloc_23[%idx0] : memref<1xi64>
    %alloc_24 = memref.alloc(%5) : memref<?xf64>
    scf.for %arg0 = %idx0 to %5 step %idx1 {
      memref.store %cst_1, %alloc_24[%arg0] : memref<?xf64>
    }
    %alloc_25 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_12, %alloc_25 : memref<?xi64> to memref<?xi64>
    %12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %13 = arith.addi %arg0, %c1 : index
      %14 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %16 = memref.load %alloc_10[%13] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = scf.for %arg2 = %15 to %17 step %c1 iter_args(%arg3 = %arg1) -> (index) {
        %19 = memref.load %alloc_12[%arg2] : memref<?xi64>
        %20 = arith.index_cast %19 : i64 to index
        %21 = memref.load %alloc_18[%arg2] : memref<?xf64>
        %22 = memref.load %alloc_22[%arg0, %20] : memref<?x?xf64>
        %23 = arith.mulf %21, %22 : f64
        memref.store %19, %alloc_25[%arg3] : memref<?xi64>
        %24 = index.add %arg3, %idx1
        memref.store %23, %alloc_24[%arg3] : memref<?xf64>
        scf.yield %24 : index
      }
      scf.yield %18 : index
    }
    %alloc_26 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_26[%idx0] : memref<1xindex>
    %cast_27 = memref.cast %alloc_23 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_27) : (memref<*xi64>) -> ()
    %cast_28 = memref.cast %alloc_26 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_28) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_11) : (memref<*xi64>) -> ()
    %cast_29 = memref.cast %alloc_25 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_29) : (memref<*xi64>) -> ()
    %cast_30 = memref.cast %alloc_24 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_30) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}
