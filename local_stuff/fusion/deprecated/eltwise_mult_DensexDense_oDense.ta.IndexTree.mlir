/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Conversion/TensorAlgebraToIndexTree/TensorAlgebraToIndexTree.cpp:444  Calling createLowerTensorAlgebraToIndexTreePass
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Conversion/TensorAlgebraToIndexTree/TensorAlgebraToIndexTree.cpp:423 module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    %3 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    "ta.fill"(%2) <{value = 2.700000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%3) <{value = 3.200000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%4) <{value = 0.000000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    %5 = "ta.elews_mul"(%2, %3, %0, %1, %0, %1, %0, %1) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], semiring = "noop_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<4x4xf64>, tensor<4x4xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<4x4xf64>
    "ta.set_op"(%5, %4) {__beta__ = 0.000000e+00 : f64} : (tensor<4x4xf64>, tensor<4x4xf64>) -> ()
    "ta.print"(%4) : (tensor<4x4xf64>) -> ()
    return
  }
}
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Conversion/TensorAlgebraToIndexTree/TensorAlgebraToIndexTree.cpp:231 %5 = "ta.elews_mul"(%2, %3, %0, %1, %0, %1, %0, %1) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], semiring = "noop_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<4x4xf64>, tensor<4x4xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<4x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Conversion/TensorAlgebraToIndexTree/TensorAlgebraToIndexTree.cpp:158 %3 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Conversion/TensorAlgebraToIndexTree/TensorAlgebraToIndexTree.cpp:158 %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Conversion/TensorAlgebraToIndexTree/TensorAlgebraToIndexTree.cpp:137 "ta.set_op"(%5, %4) {__beta__ = 0.000000e+00 : f64} : (tensor<4x4xf64>, tensor<4x4xf64>) -> ()
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Conversion/TensorAlgebraToIndexTree/TensorAlgebraToIndexTree.cpp:241 %2 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Conversion/TensorAlgebraToIndexTree/TensorAlgebraToIndexTree.cpp:242 %3 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Conversion/TensorAlgebraToIndexTree/TensorAlgebraToIndexTree.cpp:243 %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Conversion/TensorAlgebraToIndexTree/TensorAlgebraToIndexTree.cpp:260 %5 = "it.itree"() ({
^bb0:
}) : () -> tensor<4x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Conversion/TensorAlgebraToIndexTree/TensorAlgebraToIndexTree.cpp:261 ^bb0:
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Conversion/TensorAlgebraToIndexTree/TensorAlgebraToIndexTree.cpp:265 %7 = "it.RootOp"() : () -> !it.index_tree
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Conversion/TensorAlgebraToIndexTree/TensorAlgebraToIndexTree.cpp:269 (d0, d1) -> (d0, d1)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Conversion/TensorAlgebraToIndexTree/TensorAlgebraToIndexTree.cpp:276 %8 = "it.IndexOp"(%7) : (!it.index_tree) -> !it.index
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Conversion/TensorAlgebraToIndexTree/TensorAlgebraToIndexTree.cpp:276 %9 = "it.IndexOp"(%8) : (!it.index) -> !it.index
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Conversion/TensorAlgebraToIndexTree/TensorAlgebraToIndexTree.cpp:303 %10:2 = "it.IndexToTensorDim"(%4, %8) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Conversion/TensorAlgebraToIndexTree/TensorAlgebraToIndexTree.cpp:303 %11:2 = "it.IndexToTensorDim"(%4, %9, %10#1) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Conversion/TensorAlgebraToIndexTree/TensorAlgebraToIndexTree.cpp:309 %12 = "it.LHSOperandOp"(%4, %10#1, %11#1, %10#0, %11#0) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Conversion/TensorAlgebraToIndexTree/TensorAlgebraToIndexTree.cpp:332 %13:2 = "it.IndexToTensorDim"(%2, %8) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Conversion/TensorAlgebraToIndexTree/TensorAlgebraToIndexTree.cpp:332 %14:2 = "it.IndexToTensorDim"(%2, %9, %13#1) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Conversion/TensorAlgebraToIndexTree/TensorAlgebraToIndexTree.cpp:356 %16:2 = "it.IndexToTensorDim"(%3, %8) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Conversion/TensorAlgebraToIndexTree/TensorAlgebraToIndexTree.cpp:356 %17:2 = "it.IndexToTensorDim"(%3, %9, %16#1) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Conversion/TensorAlgebraToIndexTree/TensorAlgebraToIndexTree.cpp:370 %19 = "it.ComputeOp"(%9, %12, %15, %18) <{compute_missing = false, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Conversion/TensorAlgebraToIndexTree/TensorAlgebraToIndexTree.cpp:438 module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    %3 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    "ta.fill"(%2) <{value = 2.700000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%3) <{value = 3.200000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%4) <{value = 0.000000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    %5 = "it.itree"() ({
      %6 = "it.RootOp"() : () -> !it.index_tree
      %7 = "it.IndexOp"(%6) : (!it.index_tree) -> !it.index
      %8 = "it.IndexOp"(%7) : (!it.index) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%4, %7) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%4, %8, %pos) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
      %9 = "it.LHSOperandOp"(%4, %pos, %pos_1, %crd, %crd_0) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%2, %7) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%2, %8, %pos_3) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
      %10 = "it.OperandOp"(%2, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%3, %7) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%3, %8, %pos_7) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
      %11 = "it.OperandOp"(%3, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
      %12 = "it.ComputeOp"(%8, %9, %10, %11) <{compute_missing = false, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4x4xf64>
      it.yield %12 : tensor<4x4xf64>
    }) : () -> tensor<4x4xf64>
    "ta.set_op"(%5, %4) {__beta__ = 0.000000e+00 : f64} : (tensor<4x4xf64>, tensor<4x4xf64>) -> ()
    "ta.print"(%4) : (tensor<4x4xf64>) -> ()
    return
  }
}
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:41 %8 = "it.IndexOp"(%7) : (!it.index) -> !it.index
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:56 %crd_8, %pos_9 = "it.IndexToTensorDim"(%3, %8, %pos_7) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:62 %11 = "it.OperandOp"(%3, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:65 %3 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:66 dim: 1
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:73 %8 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:56 %crd_4, %pos_5 = "it.IndexToTensorDim"(%2, %9, %pos_3) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:62 %11 = "it.OperandOp"(%2, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:65 %2 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:66 dim: 1
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:73 %9 = "it.DomainOp"(%2) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:56 %crd_0, %pos_1 = "it.IndexToTensorDim"(%4, %10, %pos) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:88 %14 = "it.ComputeOp"(%10, %11, %12, %13) <{compute_missing = false, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:102 %12 = "it.OperandOp"(%2, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:102 %13 = "it.OperandOp"(%3, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:121 %10 = "it.DomainIntersectionOp"(%9, %8) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:41 %7 = "it.IndexOp"(%6) : (!it.index_tree) -> !it.index
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:56 %crd_6, %pos_7 = "it.IndexToTensorDim"(%3, %7) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:62 %14 = "it.OperandOp"(%3, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:65 %3 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:66 dim: 0
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:73 %7 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:56 %crd_2, %pos_3 = "it.IndexToTensorDim"(%2, %8) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:62 %14 = "it.OperandOp"(%2, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:65 %2 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:66 dim: 0
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:73 %8 = "it.DomainOp"(%2) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:56 %crd, %pos = "it.IndexToTensorDim"(%4, %9) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:88 %17 = "it.ComputeOp"(%13, %14, %15, %16) <{compute_missing = false, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4x4xf64>
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:102 %15 = "it.OperandOp"(%2, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:102 %16 = "it.OperandOp"(%3, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Dialect/IndexTree/Transforms/IterationDomainInference.cpp:121 %9 = "it.DomainIntersectionOp"(%8, %7) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
module {
  func.func @main() {
    %0 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    %1 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    %2 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<4x4xf64>
    "ta.fill"(%0) <{value = 2.700000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%1) <{value = 3.200000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    "ta.fill"(%2) <{value = 0.000000e+00 : f64}> : (tensor<4x4xf64>) -> ()
    %3 = "it.itree"() ({
      %4 = "it.RootOp"() : () -> !it.index_tree
      %5 = "it.DomainOp"(%1) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
      %6 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
      %7 = "it.DomainIntersectionOp"(%6, %5) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
      %8 = "it.IndexOp"(%4, %7) : (!it.index_tree, !it.domain) -> !it.index
      %9 = "it.DomainOp"(%1) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
      %10 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
      %11 = "it.DomainIntersectionOp"(%10, %9) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
      %12 = "it.IndexOp"(%8, %11) : (!it.index, !it.domain) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%2, %8) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%2, %12, %pos) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
      %13 = "it.LHSOperandOp"(%2, %pos, %pos_1, %crd, %crd_0) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %8) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %12, %pos_3) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
      %14 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%1, %8) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%1, %12, %pos_7) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
      %15 = "it.OperandOp"(%1, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
      %16 = "it.ComputeOp"(%12, %13, %14, %15) <{compute_missing = false, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<4x4xf64>
      it.yield %16 : tensor<4x4xf64>
    }) : () -> tensor<4x4xf64>
    "ta.set_op"(%3, %2) {__beta__ = 0.000000e+00 : f64} : (tensor<4x4xf64>, tensor<4x4xf64>) -> ()
    "ta.print"(%2) : (tensor<4x4xf64>) -> ()
    return
  }
}
