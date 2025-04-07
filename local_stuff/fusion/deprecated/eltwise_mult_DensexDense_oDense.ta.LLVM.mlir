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
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(4 : index) : i64
    %1 = llvm.mlir.constant(1 : index) : i64
    %2 = llvm.mlir.constant(0 : index) : i64
    %3 = llvm.mlir.constant(4 : i64) : i64
    %4 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %5 = llvm.mlir.constant(3.200000e+00 : f64) : f64
    %6 = llvm.mlir.constant(2.700000e+00 : f64) : f64
    %7 = llvm.mlir.constant(4 : index) : i64
    %8 = llvm.mlir.constant(4 : index) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    %10 = llvm.mlir.constant(16 : index) : i64
    %11 = llvm.mlir.zero : !llvm.ptr
    %12 = llvm.getelementptr %11[16] : (!llvm.ptr) -> !llvm.ptr, f64
    %13 = llvm.ptrtoint %12 : !llvm.ptr to i64
    %14 = llvm.mlir.constant(32 : index) : i64
    %15 = llvm.add %13, %14  : i64
    %16 = llvm.call @malloc(%15) : (i64) -> !llvm.ptr
    %17 = llvm.ptrtoint %16 : !llvm.ptr to i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.sub %14, %18  : i64
    %20 = llvm.add %17, %19  : i64
    %21 = llvm.urem %20, %14  : i64
    %22 = llvm.sub %20, %21  : i64
    %23 = llvm.inttoptr %22 : i64 to !llvm.ptr
    %24 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %25 = llvm.insertvalue %16, %24[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %23, %25[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.mlir.constant(0 : index) : i64
    %28 = llvm.insertvalue %27, %26[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.insertvalue %7, %28[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.insertvalue %8, %29[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.insertvalue %8, %30[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.insertvalue %9, %31[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%2 : i64)
  ^bb1(%33: i64):  // 2 preds: ^bb0, ^bb4
    %34 = llvm.icmp "slt" %33, %0 : i64
    llvm.cond_br %34, ^bb2(%2 : i64), ^bb5
  ^bb2(%35: i64):  // 2 preds: ^bb1, ^bb3
    %36 = llvm.icmp "slt" %35, %0 : i64
    llvm.cond_br %36, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %37 = llvm.mlir.constant(4 : index) : i64
    %38 = llvm.mul %33, %37  : i64
    %39 = llvm.add %38, %35  : i64
    %40 = llvm.getelementptr %23[%39] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %6, %40 : f64, !llvm.ptr
    %41 = llvm.add %35, %1  : i64
    llvm.br ^bb2(%41 : i64)
  ^bb4:  // pred: ^bb2
    %42 = llvm.add %33, %1  : i64
    llvm.br ^bb1(%42 : i64)
  ^bb5:  // pred: ^bb1
    %43 = llvm.mlir.constant(4 : index) : i64
    %44 = llvm.mlir.constant(4 : index) : i64
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.mlir.constant(16 : index) : i64
    %47 = llvm.mlir.zero : !llvm.ptr
    %48 = llvm.getelementptr %47[16] : (!llvm.ptr) -> !llvm.ptr, f64
    %49 = llvm.ptrtoint %48 : !llvm.ptr to i64
    %50 = llvm.mlir.constant(32 : index) : i64
    %51 = llvm.add %49, %50  : i64
    %52 = llvm.call @malloc(%51) : (i64) -> !llvm.ptr
    %53 = llvm.ptrtoint %52 : !llvm.ptr to i64
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.sub %50, %54  : i64
    %56 = llvm.add %53, %55  : i64
    %57 = llvm.urem %56, %50  : i64
    %58 = llvm.sub %56, %57  : i64
    %59 = llvm.inttoptr %58 : i64 to !llvm.ptr
    %60 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %61 = llvm.insertvalue %52, %60[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %62 = llvm.insertvalue %59, %61[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %63 = llvm.mlir.constant(0 : index) : i64
    %64 = llvm.insertvalue %63, %62[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %65 = llvm.insertvalue %43, %64[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.insertvalue %44, %65[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.insertvalue %44, %66[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.insertvalue %45, %67[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb6(%2 : i64)
  ^bb6(%69: i64):  // 2 preds: ^bb5, ^bb9
    %70 = llvm.icmp "slt" %69, %0 : i64
    llvm.cond_br %70, ^bb7(%2 : i64), ^bb10
  ^bb7(%71: i64):  // 2 preds: ^bb6, ^bb8
    %72 = llvm.icmp "slt" %71, %0 : i64
    llvm.cond_br %72, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %73 = llvm.mlir.constant(4 : index) : i64
    %74 = llvm.mul %69, %73  : i64
    %75 = llvm.add %74, %71  : i64
    %76 = llvm.getelementptr %59[%75] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %5, %76 : f64, !llvm.ptr
    %77 = llvm.add %71, %1  : i64
    llvm.br ^bb7(%77 : i64)
  ^bb9:  // pred: ^bb7
    %78 = llvm.add %69, %1  : i64
    llvm.br ^bb6(%78 : i64)
  ^bb10:  // pred: ^bb6
    %79 = llvm.mlir.constant(4 : index) : i64
    %80 = llvm.mlir.constant(4 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(16 : index) : i64
    %83 = llvm.mlir.zero : !llvm.ptr
    %84 = llvm.getelementptr %83[16] : (!llvm.ptr) -> !llvm.ptr, f64
    %85 = llvm.ptrtoint %84 : !llvm.ptr to i64
    %86 = llvm.mlir.constant(32 : index) : i64
    %87 = llvm.add %85, %86  : i64
    %88 = llvm.call @malloc(%87) : (i64) -> !llvm.ptr
    %89 = llvm.ptrtoint %88 : !llvm.ptr to i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.sub %86, %90  : i64
    %92 = llvm.add %89, %91  : i64
    %93 = llvm.urem %92, %86  : i64
    %94 = llvm.sub %92, %93  : i64
    %95 = llvm.inttoptr %94 : i64 to !llvm.ptr
    %96 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %97 = llvm.insertvalue %88, %96[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %98 = llvm.insertvalue %95, %97[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %99 = llvm.mlir.constant(0 : index) : i64
    %100 = llvm.insertvalue %99, %98[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %101 = llvm.insertvalue %79, %100[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %102 = llvm.insertvalue %80, %101[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.insertvalue %80, %102[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.insertvalue %81, %103[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb11(%2 : i64)
  ^bb11(%105: i64):  // 2 preds: ^bb10, ^bb14
    %106 = llvm.icmp "slt" %105, %0 : i64
    llvm.cond_br %106, ^bb12(%2 : i64), ^bb15(%2 : i64)
  ^bb12(%107: i64):  // 2 preds: ^bb11, ^bb13
    %108 = llvm.icmp "slt" %107, %0 : i64
    llvm.cond_br %108, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    %109 = llvm.mlir.constant(4 : index) : i64
    %110 = llvm.mul %105, %109  : i64
    %111 = llvm.add %110, %107  : i64
    %112 = llvm.getelementptr %95[%111] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %4, %112 : f64, !llvm.ptr
    %113 = llvm.add %107, %1  : i64
    llvm.br ^bb12(%113 : i64)
  ^bb14:  // pred: ^bb12
    %114 = llvm.add %105, %1  : i64
    llvm.br ^bb11(%114 : i64)
  ^bb15(%115: i64):  // 2 preds: ^bb11, ^bb18
    %116 = llvm.icmp "slt" %115, %3 : i64
    llvm.cond_br %116, ^bb16(%2 : i64), ^bb19
  ^bb16(%117: i64):  // 2 preds: ^bb15, ^bb17
    %118 = llvm.icmp "slt" %117, %3 : i64
    llvm.cond_br %118, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %119 = llvm.mlir.constant(4 : index) : i64
    %120 = llvm.mul %115, %119  : i64
    %121 = llvm.add %120, %117  : i64
    %122 = llvm.getelementptr %23[%121] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %123 = llvm.load %122 : !llvm.ptr -> f64
    %124 = llvm.mlir.constant(4 : index) : i64
    %125 = llvm.mul %115, %124  : i64
    %126 = llvm.add %125, %117  : i64
    %127 = llvm.getelementptr %59[%126] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %128 = llvm.load %127 : !llvm.ptr -> f64
    %129 = llvm.fmul %123, %128  : f64
    %130 = llvm.mlir.constant(4 : index) : i64
    %131 = llvm.mul %115, %130  : i64
    %132 = llvm.add %131, %117  : i64
    %133 = llvm.getelementptr %95[%132] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %129, %133 : f64, !llvm.ptr
    %134 = llvm.add %117, %1  : i64
    llvm.br ^bb16(%134 : i64)
  ^bb18:  // pred: ^bb16
    %135 = llvm.add %115, %1  : i64
    llvm.br ^bb15(%135 : i64)
  ^bb19:  // pred: ^bb15
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.alloca %136 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %104, %137 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %138 = llvm.mlir.constant(2 : index) : i64
    %139 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %140 = llvm.insertvalue %138, %139[0] : !llvm.struct<(i64, ptr)> 
    %141 = llvm.insertvalue %137, %140[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%138, %137) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_i64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}
