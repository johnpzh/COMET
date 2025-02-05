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
    %10:2 = "it.itree"(%9, %8) ({
    ^bb0(%arg0: tensor<?x?xf64>, %arg1: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
      %11 = "it.RootOp"() : () -> !it.index_tree
      %12 = "it.IndexOp"(%11) : (!it.index_tree) -> !it.index
      %13 = "it.IndexOp"(%12) : (!it.index) -> !it.index
      %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%arg0, %12) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
      %15 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%6, %12) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%6, %14, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %16 = "it.OperandOp"(%6, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %14) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %13, %pos_7) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
      %17 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
      %18 = "it.ComputeOp"(%14, %15, %16, %17) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
      %crd_10, %pos_11 = "it.IndexToTensorDim"(%arg1, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %crd_12, %pos_13 = "it.IndexToTensorDim"(%arg1, %13, %pos_11) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %19 = "it.LHSOperandOp"(%arg1, %pos_11, %pos_13, %crd_10, %crd_12) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_14, %pos_15 = "it.IndexToTensorDim"(%3, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %crd_16, %pos_17 = "it.IndexToTensorDim"(%3, %13, %pos_15) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %20 = "it.OperandOp"(%3, %pos_15, %pos_17, %crd_14, %crd_16) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_18, %pos_19 = "it.IndexToTensorDim"(%18, %12) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
      %crd_20, %pos_21 = "it.IndexToTensorDim"(%18, %13, %pos_19) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
      %21 = "it.OperandOp"(%18, %pos_19, %pos_21, %crd_18, %crd_20) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
      %22 = "it.ComputeOp"(%13, %19, %20, %21) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      it.yield %18, %22 : tensor<?x?xf64>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    }) : (tensor<?x?xf64>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> (tensor<?x?xf64>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>)
    "ta.set_op"(%10#0, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
    "ta.set_op"(%10#1, %8) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %10:2 = "it.itree"(%9, %8) ({
  ^bb0(%arg0: tensor<?x?xf64>, %arg1: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %11 = "it.RootOp"() : () -> !it.index_tree
    %12 = "it.IndexOp"(%11) : (!it.index_tree) -> !it.index
    %13 = "it.IndexOp"(%12) : (!it.index) -> !it.index
    %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %12) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %15 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%6, %12) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%6, %14, %pos_3) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%6, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %14) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %13, %pos_7) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %17 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %18 = "it.ComputeOp"(%14, %15, %16, %17) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%arg1, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%arg1, %13, %pos_11) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %19 = "it.LHSOperandOp"(%arg1, %pos_11, %pos_13, %crd_10, %crd_12) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_14, %pos_15 = "it.IndexToTensorDim"(%3, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_16, %pos_17 = "it.IndexToTensorDim"(%3, %13, %pos_15) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %20 = "it.OperandOp"(%3, %pos_15, %pos_17, %crd_14, %crd_16) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_18, %pos_19 = "it.IndexToTensorDim"(%18, %12) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_20, %pos_21 = "it.IndexToTensorDim"(%18, %13, %pos_19) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %21 = "it.OperandOp"(%18, %pos_19, %pos_21, %crd_18, %crd_20) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %22 = "it.ComputeOp"(%13, %19, %20, %21) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %18, %22 : tensor<?x?xf64>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (tensor<?x?xf64>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> (tensor<?x?xf64>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>)
  "ta.set_op"(%10#0, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  "ta.set_op"(%10#1, %8) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

loc("debug/sddmm.ta.IndexTree.before_domain.manual.v0.mlir":70:11): error: operand #0 does not dominate this use
// -----// IR Dump After IndexTreeDomainInference Failed (indextree-domain-inference) //----- //
"func.func"() <{function_type = () -> (), sym_name = "main"}> ({
  %0 = "arith.constant"() <{value = 1 : index}> : () -> index
  %1 = "arith.constant"() <{value = 0 : index}> : () -> index
  %2 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %3 = "ta.dim"(%2, %1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %4 = "ta.dim"(%2, %0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %5 = "ta.dense_tensor_decl"(%3) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %6 = "ta.dense_tensor_decl"(%4) <{format = "Dense"}> : (index) -> tensor<4x?xf64>
  %7 = "ta.spTensor_decl"(%3, %4) <{format = "CSR", temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %8 = "ta.dense_tensor_decl"(%3, %4) <{format = "Dense"}> : (index, index) -> tensor<?x?xf64>
  "ta.fill_from_file"(%2) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%5) <{value = 1.200000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%6) <{value = 3.400000e+00 : f64}> : (tensor<4x?xf64>) -> ()
  "ta.fill"(%8) <{value = 0.000000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %9:2 = "it.itree"(%8, %7) ({
  ^bb0(%arg0: tensor<?x?xf64>, %arg1: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %10 = "it.RootOp"() : () -> !it.index_tree
    %11 = "it.DomainOp"(%36) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %12 = "it.DomainOp"(%2) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %13 = "it.DomainOp"(%5) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %14 = "it.DomainIntersectionOp"(%12, %11) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %15 = "it.DomainUnionOp"(%14, %13) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %16 = "it.IndexOp"(%10, %15) : (!it.index_tree, !it.domain) -> !it.index
    %17 = "it.DomainOp"(%36) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %18 = "it.DomainOp"(%2) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %19 = "it.DomainOp"(%6) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %20 = "it.DomainIntersectionOp"(%18, %17) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %21 = "it.DomainUnionOp"(%20, %19) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %22 = "it.IndexOp"(%16, %21) : (!it.index, !it.domain) -> !it.index
    %23 = "it.DomainOp"(%6) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x?xf64>) -> !it.domain
    %24 = "it.DomainOp"(%5) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %25 = "it.DomainIntersectionOp"(%24, %23) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %26 = "it.IndexOp"(%22, %25) : (!it.index, !it.domain) -> !it.index
    %27:2 = "it.IndexToTensorDim"(%arg0, %16) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %28:2 = "it.IndexToTensorDim"(%arg0, %22, %27#1) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %29 = "it.LHSOperandOp"(%arg0, %27#1, %28#1, %27#0, %28#0) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %30:2 = "it.IndexToTensorDim"(%5, %16) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %31:2 = "it.IndexToTensorDim"(%5, %26, %30#1) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %32 = "it.OperandOp"(%5, %30#1, %31#1, %30#0, %31#0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %33:2 = "it.IndexToTensorDim"(%6, %26) <{dim = 0 : ui32}> : (tensor<4x?xf64>, !it.index) -> (index, index)
    %34:2 = "it.IndexToTensorDim"(%6, %22, %33#1) <{dim = 1 : ui32}> : (tensor<4x?xf64>, !it.index, index) -> (index, index)
    %35 = "it.OperandOp"(%6, %33#1, %34#1, %33#0, %34#0) : (tensor<4x?xf64>, index, index, index, index) -> !it.operand
    %36 = "it.ComputeOp"(%26, %29, %32, %35) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    %37:2 = "it.IndexToTensorDim"(%arg1, %16) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %38:2 = "it.IndexToTensorDim"(%arg1, %22, %37#1) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %39 = "it.LHSOperandOp"(%arg1, %37#1, %38#1, %37#0, %38#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %40:2 = "it.IndexToTensorDim"(%2, %16) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %41:2 = "it.IndexToTensorDim"(%2, %22, %40#1) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%2, %40#1, %41#1, %40#0, %41#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %43:2 = "it.IndexToTensorDim"(%36, %16) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %44:2 = "it.IndexToTensorDim"(%36, %22, %43#1) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %45 = "it.OperandOp"(%36, %43#1, %44#1, %43#0, %44#0) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %46 = "it.ComputeOp"(%22, %39, %42, %45) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    "it.yield"(%36, %46) : (tensor<?x?xf64>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  }) : (tensor<?x?xf64>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> (tensor<?x?xf64>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>)
  "ta.set_op"(%9#0, %8) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  "ta.set_op"(%9#1, %7) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%7) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "func.return"() : () -> ()
}) : () -> ()

