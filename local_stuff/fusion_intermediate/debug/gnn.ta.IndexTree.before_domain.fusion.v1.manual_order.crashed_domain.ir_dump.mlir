/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/cmake-build-debug/bin/comet-opt --convert-ta-to-it --opt-fusion --emit-it --mlir-print-ir-after-all /Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/local_stuff/fusion_intermediate/debug/gnn.ta.IndexTree.before_domain.no-fusion.v2.manual_order.mlir
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
    %7 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
    %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<16x16xf64>
    %9 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
    %10 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
    "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x16xf64>) -> ()
    "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<16x16xf64>) -> ()
    "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
    "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
    %11 = "ta.getTime"() : () -> f64
    %12 = "it.itree"(%10) <{operandSegmentSizes = array<i32: 1, 0>}> ({
    ^bb0(%arg0: tensor<?x16xf64>):
      %16 = "it.RootOp"() : () -> !it.index_tree
      %17 = "it.IndexOp"(%16) : (!it.index_tree) -> !it.index
      %18 = "it.IndexOp"(%17) : (!it.index) -> !it.index
      %19 = "it.IndexOp"(%18) : (!it.index) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%arg0, %17) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %19, %pos) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
      %20 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%4, %17) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%4, %18, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %21 = "it.OperandOp"(%4, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %18) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %19, %pos_7) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
      %22 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
      %23 = "it.ComputeOp"(%19, %20, %21, %22) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x16xf64>
      it.yield %23 : tensor<?x16xf64>
    }) : (tensor<?x16xf64>) -> tensor<?x16xf64>
    "ta.set_op"(%12, %10) {__beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<?x16xf64>) -> ()
    %13 = "it.itree"(%9) <{operandSegmentSizes = array<i32: 1, 0>}> ({
    ^bb0(%arg0: tensor<?x16xf64>):
      %16 = "it.RootOp"() : () -> !it.index_tree
      %17 = "it.IndexOp"(%16) : (!it.index_tree) -> !it.index
      %18 = "it.IndexOp"(%17) : (!it.index) -> !it.index
      %19 = "it.IndexOp"(%18) : (!it.index) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%arg0, %17) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %19, %pos) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
      %20 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%10, %17) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%10, %18, %pos_3) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
      %21 = "it.OperandOp"(%10, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%8, %18) <{dim = 0 : ui32}> : (tensor<16x16xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%8, %19, %pos_7) <{dim = 1 : ui32}> : (tensor<16x16xf64>, !it.index, index) -> (index, index)
      %22 = "it.OperandOp"(%8, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<16x16xf64>, index, index, index, index) -> !it.operand
      %23 = "it.ComputeOp"(%19, %20, %21, %22) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x16xf64>
      it.yield %23 : tensor<?x16xf64>
    }) : (tensor<?x16xf64>) -> tensor<?x16xf64>
    "ta.set_op"(%13, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<?x16xf64>) -> ()
    %14 = "ta.getTime"() : () -> f64
    %15 = "ta.reduce"(%9) : (tensor<?x16xf64>) -> f64
    "ta.print"(%15) : (f64) -> ()
    "ta.print_elapsed_time"(%11, %14) : (f64, f64) -> ()
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
  %7 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
  %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<16x16xf64>
  %9 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
  %10 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
  "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<16x16xf64>) -> ()
  "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  %11 = "ta.getTime"() : () -> f64
  %12 = "it.itree"(%10) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x16xf64>):
    %16 = "it.RootOp"() : () -> !it.index_tree
    %17 = "it.IndexOp"(%16) : (!it.index_tree) -> !it.index
    %18 = "it.IndexOp"(%17) : (!it.index) -> !it.index
    %19 = "it.IndexOp"(%18) : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %17) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %19, %pos) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %20 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%4, %17) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%4, %18, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %21 = "it.OperandOp"(%4, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %18) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %19, %pos_7) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %22 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %23 = "it.ComputeOp"(%19, %20, %21, %22) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x16xf64>
    it.yield %23 : tensor<?x16xf64>
  }) : (tensor<?x16xf64>) -> tensor<?x16xf64>
  "ta.set_op"(%12, %10) {__beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<?x16xf64>) -> ()
  %13 = "it.itree"(%9) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x16xf64>):
    %16 = "it.RootOp"() : () -> !it.index_tree
    %17 = "it.IndexOp"(%16) : (!it.index_tree) -> !it.index
    %18 = "it.IndexOp"(%17) : (!it.index) -> !it.index
    %19 = "it.IndexOp"(%18) : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %17) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %19, %pos) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %20 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%10, %17) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%10, %18, %pos_3) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %21 = "it.OperandOp"(%10, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%8, %18) <{dim = 0 : ui32}> : (tensor<16x16xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%8, %19, %pos_7) <{dim = 1 : ui32}> : (tensor<16x16xf64>, !it.index, index) -> (index, index)
    %22 = "it.OperandOp"(%8, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<16x16xf64>, index, index, index, index) -> !it.operand
    %23 = "it.ComputeOp"(%19, %20, %21, %22) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x16xf64>
    it.yield %23 : tensor<?x16xf64>
  }) : (tensor<?x16xf64>) -> tensor<?x16xf64>
  "ta.set_op"(%13, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<?x16xf64>) -> ()
  %14 = "ta.getTime"() : () -> f64
  %15 = "ta.reduce"(%9) : (tensor<?x16xf64>) -> f64
  "ta.print"(%15) : (f64) -> ()
  "ta.print_elapsed_time"(%11, %14) : (f64, f64) -> ()
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
  %7 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
  %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<16x16xf64>
  %9 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
  %10 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
  "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<16x16xf64>) -> ()
  "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  %11 = "ta.getTime"() : () -> f64
  %12 = "it.itree"(%10) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x16xf64>):
    %16 = "it.RootOp"() : () -> !it.index_tree
    %17 = "it.IndexOp"(%16) : (!it.index_tree) -> !it.index
    %18 = "it.IndexOp"(%17) : (!it.index) -> !it.index
    %19 = "it.IndexOp"(%18) : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %17) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %19, %pos) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %20 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%4, %17) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%4, %18, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %21 = "it.OperandOp"(%4, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %18) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %19, %pos_7) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %22 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %23 = "it.ComputeOp"(%19, %20, %21, %22) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x16xf64>
    it.yield %23 : tensor<?x16xf64>
  }) : (tensor<?x16xf64>) -> tensor<?x16xf64>
  "ta.set_op"(%12, %10) {__beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<?x16xf64>) -> ()
  %13 = "it.itree"(%9) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x16xf64>):
    %16 = "it.RootOp"() : () -> !it.index_tree
    %17 = "it.IndexOp"(%16) : (!it.index_tree) -> !it.index
    %18 = "it.IndexOp"(%17) : (!it.index) -> !it.index
    %19 = "it.IndexOp"(%18) : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %17) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %19, %pos) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %20 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%10, %17) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%10, %18, %pos_3) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %21 = "it.OperandOp"(%10, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%8, %18) <{dim = 0 : ui32}> : (tensor<16x16xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%8, %19, %pos_7) <{dim = 1 : ui32}> : (tensor<16x16xf64>, !it.index, index) -> (index, index)
    %22 = "it.OperandOp"(%8, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<16x16xf64>, index, index, index, index) -> !it.operand
    %23 = "it.ComputeOp"(%19, %20, %21, %22) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x16xf64>
    it.yield %23 : tensor<?x16xf64>
  }) : (tensor<?x16xf64>) -> tensor<?x16xf64>
  "ta.set_op"(%13, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<?x16xf64>) -> ()
  %14 = "ta.getTime"() : () -> f64
  %15 = "ta.reduce"(%9) : (tensor<?x16xf64>) -> f64
  "ta.print"(%15) : (f64) -> ()
  "ta.print_elapsed_time"(%11, %14) : (f64, f64) -> ()
  return
}

// -----// IR Dump After IndexTreeKernelFusion (indextree-kernel-fusion) //----- //
/// GNN kernel A = B * C * D
/// B is sparse
/// T[i, h] = B[i, k] * C[k, h];
/// A[i, j] = T[i, h] * D[h, j];
///
/// void no_fution_index_tree()
/// {
///     for (i = 0 to NI) {
///         for (k = 0 to NK) {
///             for (h = 0 to NH) {
///                 T[i, h] += B[i, k] * C[k, h];
///             }
///         }
///     }
///     for (i = 0 to NI) {
///         for (h = 0 to NH) {
///             for (j = 0 to NJ) {
///                 A[i, j] += T[i, h] * D[h, j];
///             }
///         }
///     }
/// }
/// void partial_fusion_index_tree()
/// {
///     for (i = 0 to NI) {
///         for (k = 0 to NK) {
///             for (h = 0 to NH) {
///                 T[i, h] += B[i, k] * C[k, h];
///             }
///         }
///         for (h = 0 to NH) {
///             for (j = 0 to NJ) {
///                 A[i, j] += T[i, h] * D[h, j];
///             }
///         }
///     }
/// }
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.index_label"() : () -> !ta.index
  %4 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>  /// %4 = B[i,k]
  %c0 = arith.constant 0 : index
  %5 = "ta.dim"(%4, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1 = arith.constant 1 : index
  %6 = "ta.dim"(%4, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %7 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?x16xf64>  /// %7 = C[k,h]
  %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<16x16xf64>  /// %8 = D[h,j]
  %9 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x16xf64>  /// %9 = A[i,j]
  %10 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x16xf64>  /// %10 = T[i,h]
  "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<16x16xf64>) -> ()
  "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  %11 = "ta.getTime"() : () -> f64
  %12:2 = "it.itree"(%9, %10) <{operandSegmentSizes = array<i32: 1, 1>}> ({
  ^bb0(%arg0: tensor<?x16xf64>, %arg1: tensor<?x16xf64>):  /// %arg0: A[i,j], %arg1: T[i,h]
    %15 = "it.RootOp"() : () -> !it.index_tree
    %16 = "it.IndexOp"(%15) : (!it.index_tree) -> !it.index  /// %16 = i
    %17 = "it.IndexOp"(%16) : (!it.index) -> !it.index  /// %17 = k
    %18 = "it.IndexOp"(%17) : (!it.index) -> !it.index  /// %18 = h
    %crd, %pos = "it.IndexToTensorDim"(%arg1, %16) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg1, %18, %pos) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %19 = "it.LHSOperandOp"(%arg1, %pos, %pos_1, %crd, %crd_0) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%4, %16) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%4, %17, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %20 = "it.OperandOp"(%4, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %17) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %18, %pos_7) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %21 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %22 = "it.ComputeOp"(%18, %19, %20, %21) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x16xf64>  /// %22 = T[i,h]
    %23 = "it.IndexOp"(%16) : (!it.index) -> !it.index  /// %23 = h
    %24 = "it.IndexOp"(%23) : (!it.index) -> !it.index  /// %24 = j
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%arg0, %16) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%arg0, %24, %pos_11) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %25 = "it.LHSOperandOp"(%arg0, %pos_11, %pos_13, %crd_10, %crd_12) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %crd_14, %pos_15 = "it.IndexToTensorDim"(%22, %16) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_16, %pos_17 = "it.IndexToTensorDim"(%22, %23, %pos_15) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %26 = "it.OperandOp"(%22, %pos_15, %pos_17, %crd_14, %crd_16) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %crd_18, %pos_19 = "it.IndexToTensorDim"(%8, %23) <{dim = 0 : ui32}> : (tensor<16x16xf64>, !it.index) -> (index, index)
    %crd_20, %pos_21 = "it.IndexToTensorDim"(%8, %24, %pos_19) <{dim = 1 : ui32}> : (tensor<16x16xf64>, !it.index, index) -> (index, index)
    %27 = "it.OperandOp"(%8, %pos_19, %pos_21, %crd_18, %crd_20) : (tensor<16x16xf64>, index, index, index, index) -> !it.operand
    %28 = "it.ComputeOp"(%24, %25, %26, %27) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x16xf64>
    it.yield %28, %22 : tensor<?x16xf64>, tensor<?x16xf64>
  }) : (tensor<?x16xf64>, tensor<?x16xf64>) -> (tensor<?x16xf64>, tensor<?x16xf64>)
  "ta.set_op"(%12#0, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<?x16xf64>) -> ()
  %13 = "ta.getTime"() : () -> f64
  %14 = "ta.reduce"(%9) : (tensor<?x16xf64>) -> f64
  "ta.print"(%14) : (f64) -> ()
  "ta.print_elapsed_time"(%11, %13) : (f64, f64) -> ()
  return
}

Assertion failed: (idx < size()), function operator[], file SmallVector.h, line 294.
Signal: SIGABRT (hit program assert)
