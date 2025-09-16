// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
#map = affine_map<(d0, d1) -> (d0, d1)>
module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.spTensor_decl"() <{temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %c0 = arith.constant 0 : index
    %3 = "ta.dim"(%2, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %c1 = arith.constant 1 : index
    %4 = "ta.dim"(%2, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %5 = "ta.dense_tensor_decl"(%3, %4) : (index, index) -> tensor<?x?xf64>
    %6 = "ta.spTensor_decl"(%3, %4) <{temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    "ta.fill_from_file"(%2) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%5) <{value = 2.700000e+00 : f64}> : (tensor<?x?xf64>) -> ()
    %7 = "ta.elews_mul"(%2, %5, %0, %1, %0, %1, %0, %1) <{MaskType = "none", indexing_maps = [#map, #map, #map], semiring = "noop_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    "ta.set_op"(%7, %6) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.print"(%6) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    return
  }
}


// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.spTensor_decl"() <{temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %c0 = arith.constant 0 : index
  %3 = "ta.dim"(%2, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1 = arith.constant 1 : index
  %4 = "ta.dim"(%2, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %5 = "ta.dense_tensor_decl"(%3, %4) : (index, index) -> tensor<?x?xf64>
  %6 = "ta.spTensor_decl"(%3, %4) <{temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.fill_from_file"(%2) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%5) <{value = 2.700000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %7 = "ta.elews_mul"(%2, %5, %0, %1, %0, %1, %0, %1) <{MaskType = "none", indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], semiring = "noop_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%7, %6) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%6) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToIndexTreePass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.spTensor_decl"() <{temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %c0 = arith.constant 0 : index
  %3 = "ta.dim"(%2, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1 = arith.constant 1 : index
  %4 = "ta.dim"(%2, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %5 = "ta.dense_tensor_decl"(%3, %4) : (index, index) -> tensor<?x?xf64>
  %6 = "ta.spTensor_decl"(%3, %4) <{temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.fill_from_file"(%2) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%5) <{value = 2.700000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %7 = "it.itree"(%6) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %8 = "it.RootOp"() : () -> !it.index_tree
    %9 = "it.IndexOp"(%8) <{IsParallel = false}> : (!it.index_tree) -> !it.index
    %10 = "it.IndexOp"(%9) <{IsParallel = false}> : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %9) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %10, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %11 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%2, %9) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%2, %10, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %12 = "it.OperandOp"(%2, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%5, %9) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%5, %10, %pos_7) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %13 = "it.OperandOp"(%5, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %14 = "it.ComputeOp"(%10, %11, %12, %13) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %14 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%7, %6) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%6) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainInference (indextree-domain-inference) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %0 = "ta.spTensor_decl"() <{temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %1 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %2 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %3 = "ta.dense_tensor_decl"(%1, %2) : (index, index) -> tensor<?x?xf64>
  %4 = "ta.spTensor_decl"(%1, %2) <{temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%3) <{value = 2.700000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %5 = "it.itree"(%4) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %6 = "it.RootOp"() : () -> !it.index_tree
    %7 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %8 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %9 = "it.DomainIntersectionOp"(%8, %7) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %10 = "it.IndexOp"(%6, %9) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %11 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x?xf64>) -> !it.domain
    %12 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %13 = "it.DomainIntersectionOp"(%12, %11) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %14 = "it.IndexOp"(%10, %13) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %10) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %14, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %15 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %10) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %14, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%3, %10) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%3, %14, %pos_7) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %17 = "it.OperandOp"(%3, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %18 = "it.ComputeOp"(%14, %15, %16, %17) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %18 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%5, %4) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %0 = "ta.spTensor_decl"() <{temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %1 = "ta.SpTensorGetDimSize"(%0) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %2 = "ta.SpTensorGetDimPos"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %3 = "ta.SpTensorGetDimCrd"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %2, %c0 : tensor<?xi64>
  %dim_0 = tensor.dim %3, %c0 : tensor<?xi64>
  %4 = "ta.SpTensorGetDimSize"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %5 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %6 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %7 = "ta.dense_tensor_decl"(%5, %6) : (index, index) -> tensor<?x?xf64>
  %8 = "ta.spTensor_decl"(%5, %6) <{temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%7) <{value = 2.700000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %9 = "it.itree"(%8) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %10 = "it.RootOp"() : () -> !it.index_tree
    %11 = "it.DenseDomainOp"(%1, %0, %7) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
    %12 = "it.IndexOp"(%10, %11) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%0, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %13 = "it.SparseDomainOp"(%0, %2, %3, %dim, %dim_0, %4, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %14 = "it.IndexOp"(%12, %13) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_1, %pos_2 = "it.IndexToTensorDim"(%arg0, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_3, %pos_4 = "it.IndexToTensorDim"(%arg0, %14, %pos_2) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %15 = "it.LHSOperandOp"(%arg0, %pos_2, %pos_4, %crd_1, %crd_3) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_5, %pos_6 = "it.IndexToTensorDim"(%0, %14, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%0, %pos, %pos_6, %crd, %crd_5) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_7, %pos_8 = "it.IndexToTensorDim"(%7, %12) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_9, %pos_10 = "it.IndexToTensorDim"(%7, %14, %pos_8) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %17 = "it.OperandOp"(%7, %pos_8, %pos_10, %crd_7, %crd_9) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %18 = "it.ComputeOp"(%14, %15, %16, %17) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %18 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%9, %8) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %23 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %25 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %24, %c0 : tensor<?xi64>
  %dim_31 = tensor.dim %25, %c0 : tensor<?xi64>
  %26 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %27 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %28 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %29 = "ta.dense_tensor_decl"(%27, %28) : (index, index) -> tensor<?x?xf64>
  %30 = "ta.sparse_output_tensor_decl"(%27, %28) : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.fill"(%29) <{value = 2.700000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %31 = "it.itree"(%30) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DenseDomainOp"(%23, %22, %29) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %35 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%arg0, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%arg0, %36, %pos_33) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %37 = "it.LHSOperandOp"(%arg0, %pos_33, %pos_35, %crd_32, %crd_34) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%22, %36, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %38 = "it.OperandOp"(%22, %pos, %pos_37, %crd, %crd_36) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%29, %34) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%29, %36, %pos_39) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%29, %pos_39, %pos_41, %crd_38, %crd_40) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %40 = "it.ComputeOp"(%36, %37, %38, %39) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %40 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%31, %30) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%30) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %23 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %25 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %24, %c0 : tensor<?xi64>
  %dim_31 = tensor.dim %25, %c0 : tensor<?xi64>
  %26 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %27 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %28 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_32 = memref.alloc(%27, %28) {alignment = 32 : i64} : memref<?x?xf64>
  %29 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x?xf64>
  %30 = "ta.sparse_output_tensor_decl"(%27, %28) : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.fill"(%29) <{value = 2.700000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %31 = "it.itree"(%30) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DenseDomainOp"(%23, %22, %29) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %35 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%arg0, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%arg0, %36, %pos_34) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %37 = "it.LHSOperandOp"(%arg0, %pos_34, %pos_36, %crd_33, %crd_35) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%22, %36, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %38 = "it.OperandOp"(%22, %pos, %pos_38, %crd, %crd_37) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%29, %34) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%29, %36, %pos_40) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%29, %pos_40, %pos_42, %crd_39, %crd_41) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %40 = "it.ComputeOp"(%36, %37, %38, %39) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %40 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%31, %30) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%30) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %23 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %25 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %24, %c0 : tensor<?xi64>
  %dim_31 = tensor.dim %25, %c0 : tensor<?xi64>
  %26 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %27 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %28 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_32 = memref.alloc(%27, %28) {alignment = 32 : i64} : memref<?x?xf64>
  %29 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x?xf64>
  %30 = "ta.sparse_output_tensor_decl"(%27, %28) : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.fill"(%29) <{value = 2.700000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %31 = "it.itree"(%30) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DenseDomainOp"(%23, %22, %29) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %35 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%arg0, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%arg0, %36, %pos_34) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %37 = "it.LHSOperandOp"(%arg0, %pos_34, %pos_36, %crd_33, %crd_35) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%22, %36, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %38 = "it.OperandOp"(%22, %pos, %pos_38, %crd, %crd_37) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%29, %34) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%29, %36, %pos_40) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%29, %pos_40, %pos_42, %crd_39, %crd_41) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %40 = "it.ComputeOp"(%36, %37, %38, %39) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %40 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%31, %30) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%30) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %23 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %25 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %24, %c0 : tensor<?xi64>
  %dim_31 = tensor.dim %25, %c0 : tensor<?xi64>
  %26 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %27 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %28 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_32 = memref.alloc(%27, %28) {alignment = 32 : i64} : memref<?x?xf64>
  %29 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x?xf64>
  %30 = "it.EmptyDomain"() : () -> !it.domain
  %31 = "it.IndexTreeSparseTensorOp"(%30, %30) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.fill"(%29) <{value = 2.700000e+00 : f64}> : (tensor<?x?xf64>) -> ()
  %32 = "it.itree"(%31) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %33 = "it.RootOp"() : () -> !it.index_tree
    %34 = "it.DenseDomainOp"(%23, %22, %29) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %36 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%arg0, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%arg0, %37, %pos_34) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %38 = "it.LHSOperandOp"(%arg0, %pos_34, %pos_36, %crd_33, %crd_35) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%22, %37, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%22, %pos, %pos_38, %crd, %crd_37) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%29, %35) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%29, %37, %pos_40) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%29, %pos_40, %pos_42, %crd_39, %crd_41) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %41 = "it.ComputeOp"(%37, %38, %39, %40) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %41 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%32, %31) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%31) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %23 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %25 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %24, %c0 : tensor<?xi64>
  %dim_31 = tensor.dim %25, %c0 : tensor<?xi64>
  %26 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %27 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %28 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_32 = memref.alloc(%27, %28) {alignment = 32 : i64} : memref<?x?xf64>
  %cst_33 = arith.constant 2.700000e+00 : f64
  linalg.fill ins(%cst_33 : f64) outs(%alloc_32 : memref<?x?xf64>)
  %29 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x?xf64>
  %30 = "it.EmptyDomain"() : () -> !it.domain
  %31 = "it.IndexTreeSparseTensorOp"(%30, %30) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %32 = "it.itree"(%31) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %33 = "it.RootOp"() : () -> !it.index_tree
    %34 = "it.DenseDomainOp"(%23, %22, %29) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %36 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%arg0, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%arg0, %37, %pos_35) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %38 = "it.LHSOperandOp"(%arg0, %pos_35, %pos_37, %crd_34, %crd_36) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%22, %37, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%22, %pos, %pos_39, %crd, %crd_38) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%29, %35) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%29, %37, %pos_41) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%29, %pos_41, %pos_43, %crd_40, %crd_42) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %41 = "it.ComputeOp"(%37, %38, %39, %40) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %41 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%32, %31) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%31) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %24 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %25 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %24, %c0 : tensor<?xi64>
  %dim_31 = tensor.dim %25, %c0 : tensor<?xi64>
  %26 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %27 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %28 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_32 = memref.alloc(%27, %28) {alignment = 32 : i64} : memref<?x?xf64>
  %cst_33 = arith.constant 2.700000e+00 : f64
  linalg.fill ins(%cst_33 : f64) outs(%alloc_32 : memref<?x?xf64>)
  %29 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x?xf64>
  %30 = "it.EmptyDomain"() : () -> !it.domain
  %31 = "it.IndexTreeSparseTensorOp"(%30, %30) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %32 = "it.itree"(%31) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %33 = "it.RootOp"() : () -> !it.index_tree
    %34 = "it.DenseDomainOp"(%23, %22, %29) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %36 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_31, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%arg0, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%arg0, %37, %pos_35) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %38 = "it.LHSOperandOp"(%arg0, %pos_35, %pos_37, %crd_34, %crd_36) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%22, %37, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%22, %pos, %pos_39, %crd, %crd_38) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%29, %35) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%29, %37, %pos_41) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%29, %pos_41, %pos_43, %crd_40, %crd_42) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %41 = "it.ComputeOp"(%37, %38, %39, %40) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %41 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%32, %31) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%31) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %cst = arith.constant 2.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_1 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_3 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_5 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_19 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %25 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %26 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_20 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_20 : memref<?x?xf64>)
  %27 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x?xf64>
  %28 = "it.DenseDomainOp"(%21, %20, %27) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
  %29 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_19, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %30 = "it.IndexTreeSparseTensorOp"(%28, %29) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %31 = "it.itree"(%30) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DenseDomainOp"(%21, %20, %27) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %35 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_19, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_21, %pos_22 = "it.IndexToTensorDim"(%arg0, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_23, %pos_24 = "it.IndexToTensorDim"(%arg0, %36, %pos_22) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %37 = "it.LHSOperandOp"(%arg0, %pos_22, %pos_24, %crd_21, %crd_23) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_25, %pos_26 = "it.IndexToTensorDim"(%20, %36, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %38 = "it.OperandOp"(%20, %pos, %pos_26, %crd, %crd_25) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_27, %pos_28 = "it.IndexToTensorDim"(%27, %34) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_29, %pos_30 = "it.IndexToTensorDim"(%27, %36, %pos_28) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%27, %pos_28, %pos_30, %crd_27, %crd_29) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %40 = "it.ComputeOp"(%36, %37, %38, %39) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %40 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%31, %30) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%30) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::IndexTreeWorkspaceTransformationsPass () //----- //
func.func @main() {
  %cst = arith.constant 2.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_1 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_3 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_5 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_19 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %25 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %26 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_20 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_20 : memref<?x?xf64>)
  %27 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x?xf64>
  %28 = "it.DenseDomainOp"(%21, %20, %27) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
  %29 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_19, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %30 = "it.IndexTreeSparseTensorOp"(%28, %29) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %31 = "it.itree"(%30) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DenseDomainOp"(%21, %20, %27) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %35 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_19, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_21, %pos_22 = "it.IndexToTensorDim"(%arg0, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_23, %pos_24 = "it.IndexToTensorDim"(%arg0, %36, %pos_22) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %37 = "it.LHSOperandOp"(%arg0, %pos_22, %pos_24, %crd_21, %crd_23) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_25, %pos_26 = "it.IndexToTensorDim"(%20, %36, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %38 = "it.OperandOp"(%20, %pos, %pos_26, %crd, %crd_25) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_27, %pos_28 = "it.IndexToTensorDim"(%27, %34) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_29, %pos_30 = "it.IndexToTensorDim"(%27, %36, %pos_28) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%27, %pos_28, %pos_30, %crd_27, %crd_29) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %40 = "it.ComputeOp"(%36, %37, %38, %39) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %40 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%31, %30) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%30) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func @main() {
  %cst = arith.constant 2.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_1 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_3 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_5 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_19 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %25 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %26 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_20 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_20 : memref<?x?xf64>)
  %27 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x?xf64>
  %28 = "it.DenseDomainOp"(%21, %20, %27) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
  %29 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_19, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %30 = "it.IndexTreeSparseTensorOp"(%28, %29) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %31 = "it.itree"(%30) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DenseDomainOp"(%21, %20, %27) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %35 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_19, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_21, %pos_22 = "it.IndexToTensorDim"(%arg0, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_23, %pos_24 = "it.IndexToTensorDim"(%arg0, %36, %pos_22) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %37 = "it.LHSOperandOp"(%arg0, %pos_22, %pos_24, %crd_21, %crd_23) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_25, %pos_26 = "it.IndexToTensorDim"(%20, %36, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %38 = "it.OperandOp"(%20, %pos, %pos_26, %crd, %crd_25) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_27, %pos_28 = "it.IndexToTensorDim"(%27, %34) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_29, %pos_30 = "it.IndexToTensorDim"(%27, %36, %pos_28) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%27, %pos_28, %pos_30, %crd_27, %crd_29) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %40 = "it.ComputeOp"(%36, %37, %38, %39) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %40 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.print"(%31) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func @main() {
  %cst = arith.constant 2.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_1 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_3 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_5 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_19 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %25 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %26 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_20 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_20 : memref<?x?xf64>)
  %27 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x?xf64>
  %28 = "it.DenseDomainOp"(%21, %20, %27) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
  %29 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_19, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %30 = "it.IndexTreeSparseTensorOp"(%28, %29) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %31 = "it.itree"(%30) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DenseDomainOp"(%21, %20, %27) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) <{IsParallel = false}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %35 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_19, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_21, %pos_22 = "it.IndexToTensorDim"(%arg0, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_23, %pos_24 = "it.IndexToTensorDim"(%arg0, %36, %pos_22) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %37 = "it.LHSOperandOp"(%arg0, %pos_22, %pos_24, %crd_21, %crd_23) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_25, %pos_26 = "it.IndexToTensorDim"(%20, %36, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %38 = "it.OperandOp"(%20, %pos, %pos_26, %crd, %crd_25) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_27, %pos_28 = "it.IndexToTensorDim"(%27, %34) <{dim = 0 : ui32}> : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_29, %pos_30 = "it.IndexToTensorDim"(%27, %36, %pos_28) <{dim = 1 : ui32}> : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%27, %pos_28, %pos_30, %crd_27, %crd_29) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %40 = "it.ComputeOp"(%36, %37, %38, %39) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "noop_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %40 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.print"(%31) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func @main() {
  %cst = arith.constant 2.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_1 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_3 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_5 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_19 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %25 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %26 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_20 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_20 : memref<?x?xf64>)
  %27 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x?xf64>
  %28 = "it.DenseDomainOp"(%21, %20, %27) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
  %29 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_19, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %30 = "it.IndexTreeSparseTensorOp"(%28, %29) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %31 = "it.itree"(%30) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %c0_21 = arith.constant 0 : index
    %c1_22 = arith.constant 1 : index
    %32 = scf.for %arg1 = %c0_21 to %21 step %c1_22 iter_args(%arg2 = %arg0) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) {
      %c1_23 = arith.constant 1 : index
      %33 = arith.addi %arg1, %c1_23 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %34 = arith.index_cast %extracted : i64 to index
      %extracted_24 = tensor.extract %22[%33] : tensor<?xi64>
      %35 = arith.index_cast %extracted_24 : i64 to index
      %c1_25 = arith.constant 1 : index
      %36 = scf.for %arg3 = %34 to %35 step %c1_25 iter_args(%arg4 = %arg2) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) {
        %37 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %38 = arith.index_cast %37 : i64 to index
        %39 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %40 = arith.index_cast %39 : i64 to index
        %41 = "ta.TensorFindPos"(%arg4, %40) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
        %42 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %43 = arith.index_cast %42 : i64 to index
        %44 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %45 = arith.index_cast %44 : i64 to index
        %46 = "ta.TAExtractOp"(%20, %arg3, %arg1, %43) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
        %extracted_26 = tensor.extract %27[%arg1, %45] : tensor<?x?xf64>
        %47 = arith.mulf %46, %extracted_26 : f64
        %48 = "ta.TAExtractOp"(%arg4, %41, %arg1, %38) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
        %49 = "ta.TAInsertOp"(%arg4, %arg1, %41, %arg1, %38, %47) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %49 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      }
      scf.yield %36 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    }
    it.yield %32 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.print"(%31) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func @main() {
  %cst = arith.constant 2.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_1 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_3 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_5 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_19 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %25 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %26 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_20 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_20 : memref<?x?xf64>)
  %27 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x?xf64>
  %28 = "it.DenseDomainOp"(%21, %20, %27) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
  %29 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_19, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %30 = "it.IndexTreeSparseTensorOp"(%28, %29) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %31 = "it.itree"(%30) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %32 = scf.for %arg1 = %c0 to %21 step %c1 iter_args(%arg2 = %arg0) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) {
      %33 = arith.addi %arg1, %c1 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %34 = arith.index_cast %extracted : i64 to index
      %extracted_21 = tensor.extract %22[%33] : tensor<?xi64>
      %35 = arith.index_cast %extracted_21 : i64 to index
      %36 = scf.for %arg3 = %34 to %35 step %c1 iter_args(%arg4 = %arg2) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) {
        %37 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %38 = arith.index_cast %37 : i64 to index
        %39 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %40 = arith.index_cast %39 : i64 to index
        %41 = "ta.TensorFindPos"(%arg4, %40) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
        %42 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %43 = arith.index_cast %42 : i64 to index
        %44 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %45 = arith.index_cast %44 : i64 to index
        %46 = "ta.TAExtractOp"(%20, %arg3, %arg1, %43) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
        %extracted_22 = tensor.extract %27[%arg1, %45] : tensor<?x?xf64>
        %47 = arith.mulf %46, %extracted_22 : f64
        %48 = "ta.TAInsertOp"(%arg4, %arg1, %41, %arg1, %38, %47) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %48 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      }
      scf.yield %36 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    }
    it.yield %32 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.print"(%31) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func @main() {
  %cst = arith.constant 2.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_1 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_3 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_5 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_19 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %25 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %26 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_20 = memref.alloc(%25, %26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_20 : memref<?x?xf64>)
  %27 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x?xf64>
  %28 = "it.DenseDomainOp"(%21, %20, %27) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
  %29 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_19, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %idx0 = index.constant 0
  %idx1 = index.constant 1
  %30 = arith.index_cast %21 : index to i64
  %idx1_21 = index.constant 1
  %31 = tensor.empty(%idx1_21) : tensor<?xi64>
  %inserted = tensor.insert %30 into %31[%idx0] : tensor<?xi64>
  %32 = tensor.empty() : tensor<0xi64>
  %33 = tensor.empty() : tensor<0xi64>
  %34 = tensor.empty() : tensor<0xi64>
  %35 = index.mul %idx1, %21
  %36 = tensor.empty() : tensor<0xi64>
  %37 = tensor.empty() : tensor<0xi64>
  %38 = tensor.empty(%dim_19) : tensor<?xf64>
  %cst_22 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0 to %dim_19 step %idx1 {
    %inserted_24 = tensor.insert %cst_22 into %38[%arg0] : tensor<?xf64>
  }
  %from_elements_23 = tensor.from_elements %21, %24 : tensor<2xindex>
  %39 = "ta.spTensor_construct"(%from_elements_23, %inserted, %22, %32, %23, %33, %36, %34, %37, %38) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<0xi64>, tensor<?xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %40 = "it.itree"(%39) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %41 = scf.for %arg1 = %c0 to %21 step %c1 iter_args(%arg2 = %arg0) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) {
      %42 = arith.addi %arg1, %c1 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %43 = arith.index_cast %extracted : i64 to index
      %extracted_24 = tensor.extract %22[%42] : tensor<?xi64>
      %44 = arith.index_cast %extracted_24 : i64 to index
      %45 = scf.for %arg3 = %43 to %44 step %c1 iter_args(%arg4 = %arg2) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) {
        %46 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %47 = arith.index_cast %46 : i64 to index
        %48 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %49 = arith.index_cast %48 : i64 to index
        %50 = "ta.TensorFindPos"(%arg4, %49) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
        %51 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %52 = arith.index_cast %51 : i64 to index
        %53 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %54 = arith.index_cast %53 : i64 to index
        %55 = "ta.TAExtractOp"(%20, %arg3, %arg1, %52) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
        %extracted_25 = tensor.extract %27[%arg1, %54] : tensor<?x?xf64>
        %56 = arith.mulf %55, %extracted_25 : f64
        %57 = "ta.TAInsertOp"(%arg4, %arg1, %50, %arg1, %47, %56) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %57 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      }
      scf.yield %45 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    }
    it.yield %41 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.print"(%40) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func @main() {
  %cst = arith.constant 2.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_1 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_3 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_5 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %idx0 = index.constant 0
  %idx0_19 = index.constant 0
  %20 = builtin.unrealized_conversion_cast %from_elements, %idx0, %11, %idx0_19, %15, %16, %19 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_20 = index.constant 0
  %extracted = tensor.extract %from_elements[%idx0_20] : tensor<2xindex>
  %dim = tensor.dim %15, %c0 : tensor<?xi64>
  %dim_21 = tensor.dim %16, %c0 : tensor<?xi64>
  %idx1 = index.constant 1
  %extracted_22 = tensor.extract %from_elements[%idx1] : tensor<2xindex>
  %idx0_23 = index.constant 0
  %extracted_24 = tensor.extract %from_elements[%idx0_23] : tensor<2xindex>
  %idx1_25 = index.constant 1
  %extracted_26 = tensor.extract %from_elements[%idx1_25] : tensor<2xindex>
  %alloc_27 = memref.alloc(%extracted_24, %extracted_26) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_27 : memref<?x?xf64>)
  %21 = bufferization.to_tensor %alloc_27 restrict writable : memref<?x?xf64>
  %22 = "it.DenseDomainOp"(%extracted, %20, %21) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
  %23 = "it.SparseDomainOp"(%20, %15, %16, %dim, %dim_21, %extracted_22) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %idx0_28 = index.constant 0
  %idx1_29 = index.constant 1
  %24 = arith.index_cast %extracted : index to i64
  %idx1_30 = index.constant 1
  %25 = tensor.empty(%idx1_30) : tensor<?xi64>
  %inserted = tensor.insert %24 into %25[%idx0_28] : tensor<?xi64>
  %26 = tensor.empty() : tensor<0xi64>
  %27 = tensor.empty() : tensor<0xi64>
  %28 = tensor.empty() : tensor<0xi64>
  %29 = index.mul %idx1_29, %extracted
  %30 = tensor.empty() : tensor<0xi64>
  %31 = tensor.empty() : tensor<0xi64>
  %32 = tensor.empty(%dim_21) : tensor<?xf64>
  %cst_31 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_28 to %dim_21 step %idx1_29 {
    %inserted_37 = tensor.insert %cst_31 into %32[%arg0] : tensor<?xf64>
  }
  %from_elements_32 = tensor.from_elements %extracted, %extracted_22 : tensor<2xindex>
  %idx0_33 = index.constant 0
  %idx0_34 = index.constant 0
  %33 = builtin.unrealized_conversion_cast %from_elements_32, %idx0_33, %inserted, %idx0_34, %15, %16, %32 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %34:7 = "it.itree"(%from_elements_32, %idx0_33, %inserted, %idx0_34, %15, %16, %32) <{operandSegmentSizes = array<i32: 7, 0>}> ({
  ^bb0(%arg0: tensor<2xindex>, %arg1: index, %arg2: tensor<?xi64>, %arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xi64>, %arg6: tensor<?xf64>):
    %37:7 = scf.for %arg7 = %c0 to %extracted step %c1 iter_args(%arg8 = %arg0, %arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3, %arg12 = %arg4, %arg13 = %arg5, %arg14 = %arg6) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) {
      %39 = arith.addi %arg7, %c1 : index
      %extracted_37 = tensor.extract %15[%arg7] : tensor<?xi64>
      %40 = arith.index_cast %extracted_37 : i64 to index
      %extracted_38 = tensor.extract %15[%39] : tensor<?xi64>
      %41 = arith.index_cast %extracted_38 : i64 to index
      %42:7 = scf.for %arg15 = %40 to %41 step %c1 iter_args(%arg16 = %arg8, %arg17 = %arg9, %arg18 = %arg10, %arg19 = %arg11, %arg20 = %arg12, %arg21 = %arg13, %arg22 = %arg14) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) {
        %extracted_39 = tensor.extract %16[%arg15] : tensor<?xi64>
        %44 = arith.index_cast %extracted_39 : i64 to index
        %extracted_40 = tensor.extract %16[%arg15] : tensor<?xi64>
        %45 = arith.index_cast %extracted_40 : i64 to index
        %extracted_41 = tensor.extract %16[%arg15] : tensor<?xi64>
        %46 = arith.index_cast %extracted_41 : i64 to index
        %extracted_42 = tensor.extract %16[%arg15] : tensor<?xi64>
        %47 = arith.index_cast %extracted_42 : i64 to index
        %extracted_43 = tensor.extract %19[%arg15] : tensor<?xf64>
        %extracted_44 = tensor.extract %21[%arg7, %47] : tensor<?x?xf64>
        %48 = arith.mulf %extracted_43, %extracted_44 : f64
        %49 = arith.index_cast %44 : index to i64
        %inserted_45 = tensor.insert %49 into %arg21[%arg19] : tensor<?xi64>
        %idx1_46 = index.constant 1
        %50 = index.add %arg19, %idx1_46
        %inserted_47 = tensor.insert %48 into %arg22[%arg19] : tensor<?xf64>
        %51 = builtin.unrealized_conversion_cast %arg16, %arg17, %arg18, %50, %arg20, %inserted_45, %inserted_47 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %arg16, %arg17, %arg18, %50, %arg20, %inserted_45, %inserted_47 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
      }
      %43 = builtin.unrealized_conversion_cast %42#0, %42#1, %42#2, %42#3, %42#4, %42#5, %42#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      scf.yield %42#0, %42#1, %42#2, %42#3, %42#4, %42#5, %42#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
    }
    %38 = builtin.unrealized_conversion_cast %37#0, %37#1, %37#2, %37#3, %37#4, %37#5, %37#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %37#0, %37#1, %37#2, %37#3, %37#4, %37#5, %37#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
  }) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>)
  %35 = builtin.unrealized_conversion_cast %34#0, %34#1, %34#2, %34#3, %34#4, %34#5, %34#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %36 = bufferization.alloc_tensor() : tensor<1xindex>
  %idx-1 = index.constant -1
  %idx0_35 = index.constant 0
  %inserted_36 = tensor.insert %idx-1 into %36[%idx0_35] : tensor<1xindex>
  "ta.print"(%34#2) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_36) : (tensor<1xindex>) -> ()
  "ta.print"(%34#4) : (tensor<?xi64>) -> ()
  "ta.print"(%34#5) : (tensor<?xi64>) -> ()
  "ta.print"(%34#6) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func @main() {
  %cst = arith.constant 2.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_1 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_3 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_5 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %idx0 = index.constant 0
  %idx0_19 = index.constant 0
  %20 = builtin.unrealized_conversion_cast %from_elements, %idx0, %11, %idx0_19, %15, %16, %19 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_20 = index.constant 0
  %dim = tensor.dim %15, %c0 : tensor<?xi64>
  %dim_21 = tensor.dim %16, %c0 : tensor<?xi64>
  %idx1 = index.constant 1
  %idx0_22 = index.constant 0
  %idx1_23 = index.constant 1
  %alloc_24 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_24 : memref<?x?xf64>)
  %21 = bufferization.to_tensor %alloc_24 restrict writable : memref<?x?xf64>
  %22 = "it.DenseDomainOp"(%9, %20, %21) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x?xf64>) -> !it.domain
  %23 = "it.SparseDomainOp"(%20, %15, %16, %dim, %dim_21, %10) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %idx0_25 = index.constant 0
  %idx1_26 = index.constant 1
  %24 = arith.index_cast %9 : index to i64
  %idx1_27 = index.constant 1
  %25 = tensor.empty(%idx1_27) : tensor<?xi64>
  %inserted = tensor.insert %24 into %25[%idx0_25] : tensor<?xi64>
  %26 = tensor.empty() : tensor<0xi64>
  %27 = tensor.empty() : tensor<0xi64>
  %28 = tensor.empty() : tensor<0xi64>
  %29 = index.mul %idx1_26, %9
  %30 = tensor.empty() : tensor<0xi64>
  %31 = tensor.empty() : tensor<0xi64>
  %32 = tensor.empty(%dim_21) : tensor<?xf64>
  %cst_28 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_25 to %dim_21 step %idx1_26 {
    %inserted_34 = tensor.insert %cst_28 into %32[%arg0] : tensor<?xf64>
  }
  %from_elements_29 = tensor.from_elements %9, %10 : tensor<2xindex>
  %idx0_30 = index.constant 0
  %idx0_31 = index.constant 0
  %33 = builtin.unrealized_conversion_cast %from_elements_29, %idx0_30, %inserted, %idx0_31, %15, %16, %32 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %34:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %from_elements_29, %arg2 = %idx0_30, %arg3 = %inserted, %arg4 = %idx0_31, %arg5 = %15, %arg6 = %16, %arg7 = %32) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) {
    %38 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
    %39 = arith.index_cast %extracted : i64 to index
    %extracted_34 = tensor.extract %15[%38] : tensor<?xi64>
    %40 = arith.index_cast %extracted_34 : i64 to index
    %41:7 = scf.for %arg8 = %39 to %40 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3, %arg12 = %arg4, %arg13 = %arg5, %arg14 = %arg6, %arg15 = %arg7) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) {
      %extracted_35 = tensor.extract %16[%arg8] : tensor<?xi64>
      %43 = arith.index_cast %extracted_35 : i64 to index
      %extracted_36 = tensor.extract %16[%arg8] : tensor<?xi64>
      %44 = arith.index_cast %extracted_36 : i64 to index
      %extracted_37 = tensor.extract %16[%arg8] : tensor<?xi64>
      %45 = arith.index_cast %extracted_37 : i64 to index
      %extracted_38 = tensor.extract %16[%arg8] : tensor<?xi64>
      %46 = arith.index_cast %extracted_38 : i64 to index
      %extracted_39 = tensor.extract %19[%arg8] : tensor<?xf64>
      %extracted_40 = tensor.extract %21[%arg0, %46] : tensor<?x?xf64>
      %47 = arith.mulf %extracted_39, %extracted_40 : f64
      %48 = arith.index_cast %43 : index to i64
      %inserted_41 = tensor.insert %48 into %arg14[%arg12] : tensor<?xi64>
      %idx1_42 = index.constant 1
      %49 = index.add %arg12, %idx1_42
      %inserted_43 = tensor.insert %47 into %arg15[%arg12] : tensor<?xf64>
      %50 = builtin.unrealized_conversion_cast %arg9, %arg10, %arg11, %49, %arg13, %inserted_41, %inserted_43 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      scf.yield %arg9, %arg10, %arg11, %49, %arg13, %inserted_41, %inserted_43 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
    }
    %42 = builtin.unrealized_conversion_cast %41#0, %41#1, %41#2, %41#3, %41#4, %41#5, %41#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    scf.yield %41#0, %41#1, %41#2, %41#3, %41#4, %41#5, %41#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>
  }
  %35 = builtin.unrealized_conversion_cast %34#0, %34#1, %34#2, %34#3, %34#4, %34#5, %34#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %36 = builtin.unrealized_conversion_cast %34#0, %34#1, %34#2, %34#3, %34#4, %34#5, %34#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %37 = bufferization.alloc_tensor() : tensor<1xindex>
  %idx-1 = index.constant -1
  %idx0_32 = index.constant 0
  %inserted_33 = tensor.insert %idx-1 into %37[%idx0_32] : tensor<1xindex>
  "ta.print"(%34#2) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_33) : (tensor<1xindex>) -> ()
  "ta.print"(%34#4) : (tensor<?xi64>) -> ()
  "ta.print"(%34#5) : (tensor<?xi64>) -> ()
  "ta.print"(%34#6) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
  %cst = arith.constant 2.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
  %alloc_19 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x?xf64>)
  %14 = bufferization.to_tensor %alloc_19 restrict writable : memref<?x?xf64>
  %15 = arith.index_cast %9 : index to i64
  %16 = tensor.empty() : tensor<1xi64>
  %inserted = tensor.insert %15 into %16[%idx0] : tensor<1xi64>
  %cast_20 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
  %17 = tensor.empty(%5) : tensor<?xf64>
  %18:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %12, %arg3 = %17) -> (index, tensor<?xi64>, tensor<?xf64>) {
    %20 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %21 = arith.index_cast %extracted : i64 to index
    %extracted_22 = tensor.extract %11[%20] : tensor<?xi64>
    %22 = arith.index_cast %extracted_22 : i64 to index
    %23:3 = scf.for %arg4 = %21 to %22 step %c1 iter_args(%arg5 = %arg1, %arg6 = %arg2, %arg7 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
      %extracted_23 = tensor.extract %12[%arg4] : tensor<?xi64>
      %extracted_24 = tensor.extract %12[%arg4] : tensor<?xi64>
      %24 = arith.index_cast %extracted_24 : i64 to index
      %extracted_25 = tensor.extract %13[%arg4] : tensor<?xf64>
      %extracted_26 = tensor.extract %14[%arg0, %24] : tensor<?x?xf64>
      %25 = arith.mulf %extracted_25, %extracted_26 : f64
      %inserted_27 = tensor.insert %extracted_23 into %arg6[%arg5] : tensor<?xi64>
      %26 = index.add %arg5, %idx1
      %inserted_28 = tensor.insert %25 into %arg7[%arg5] : tensor<?xf64>
      scf.yield %26, %inserted_27, %inserted_28 : index, tensor<?xi64>, tensor<?xf64>
    }
    scf.yield %23#0, %23#1, %23#2 : index, tensor<?xi64>, tensor<?xf64>
  }
  %19 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted_21 = tensor.insert %idx-1 into %19[%idx0] : tensor<1xindex>
  "ta.print"(%cast_20) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_21) : (tensor<1xindex>) -> ()
  "ta.print"(%11) : (tensor<?xi64>) -> ()
  "ta.print"(%18#1) : (tensor<?xi64>) -> ()
  "ta.print"(%18#2) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
  %cst = arith.constant 2.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
  %alloc_19 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x?xf64>)
  %14 = bufferization.to_tensor %alloc_19 restrict writable : memref<?x?xf64>
  %15 = arith.index_cast %9 : index to i64
  %16 = tensor.empty() : tensor<1xi64>
  %inserted = tensor.insert %15 into %16[%idx0] : tensor<1xi64>
  %cast_20 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
  %17 = tensor.empty(%5) : tensor<?xf64>
  %18:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %12, %arg3 = %17) -> (index, tensor<?xi64>, tensor<?xf64>) {
    %20 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %21 = arith.index_cast %extracted : i64 to index
    %extracted_22 = tensor.extract %11[%20] : tensor<?xi64>
    %22 = arith.index_cast %extracted_22 : i64 to index
    %23:3 = scf.for %arg4 = %21 to %22 step %c1 iter_args(%arg5 = %arg1, %arg6 = %arg2, %arg7 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
      %extracted_23 = tensor.extract %12[%arg4] : tensor<?xi64>
      %extracted_24 = tensor.extract %12[%arg4] : tensor<?xi64>
      %24 = arith.index_cast %extracted_24 : i64 to index
      %extracted_25 = tensor.extract %13[%arg4] : tensor<?xf64>
      %extracted_26 = tensor.extract %14[%arg0, %24] : tensor<?x?xf64>
      %25 = arith.mulf %extracted_25, %extracted_26 : f64
      %inserted_27 = tensor.insert %extracted_23 into %arg6[%arg5] : tensor<?xi64>
      %26 = index.add %arg5, %idx1
      %inserted_28 = tensor.insert %25 into %arg7[%arg5] : tensor<?xf64>
      scf.yield %26, %inserted_27, %inserted_28 : index, tensor<?xi64>, tensor<?xf64>
    }
    scf.yield %23#0, %23#1, %23#2 : index, tensor<?xi64>, tensor<?xf64>
  }
  %19 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted_21 = tensor.insert %idx-1 into %19[%idx0] : tensor<1xindex>
  "ta.print"(%cast_20) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_21) : (tensor<1xindex>) -> ()
  "ta.print"(%11) : (tensor<?xi64>) -> ()
  "ta.print"(%18#1) : (tensor<?xi64>) -> ()
  "ta.print"(%18#2) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
  %cst = arith.constant 2.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
  %alloc_19 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x?xf64>)
  %14 = bufferization.to_tensor %alloc_19 restrict writable : memref<?x?xf64>
  %15 = arith.index_cast %9 : index to i64
  %16 = tensor.empty() : tensor<1xi64>
  %inserted = tensor.insert %15 into %16[%idx0] : tensor<1xi64>
  %cast_20 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
  %17 = tensor.empty(%5) : tensor<?xf64>
  %18:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %12, %arg3 = %17) -> (index, tensor<?xi64>, tensor<?xf64>) {
    %20 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %21 = arith.index_cast %extracted : i64 to index
    %extracted_22 = tensor.extract %11[%20] : tensor<?xi64>
    %22 = arith.index_cast %extracted_22 : i64 to index
    %23:3 = scf.for %arg4 = %21 to %22 step %c1 iter_args(%arg5 = %arg1, %arg6 = %arg2, %arg7 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
      %extracted_23 = tensor.extract %12[%arg4] : tensor<?xi64>
      %extracted_24 = tensor.extract %12[%arg4] : tensor<?xi64>
      %24 = arith.index_cast %extracted_24 : i64 to index
      %extracted_25 = tensor.extract %13[%arg4] : tensor<?xf64>
      %extracted_26 = tensor.extract %14[%arg0, %24] : tensor<?x?xf64>
      %25 = arith.mulf %extracted_25, %extracted_26 : f64
      %inserted_27 = tensor.insert %extracted_23 into %arg6[%arg5] : tensor<?xi64>
      %26 = index.add %arg5, %idx1
      %inserted_28 = tensor.insert %25 into %arg7[%arg5] : tensor<?xf64>
      scf.yield %26, %inserted_27, %inserted_28 : index, tensor<?xi64>, tensor<?xf64>
    }
    scf.yield %23#0, %23#1, %23#2 : index, tensor<?xi64>, tensor<?xf64>
  }
  %19 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted_21 = tensor.insert %idx-1 into %19[%idx0] : tensor<1xindex>
  "ta.print"(%cast_20) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted_21) : (tensor<1xindex>) -> ()
  "ta.print"(%11) : (tensor<?xi64>) -> ()
  "ta.print"(%18#1) : (tensor<?xi64>) -> ()
  "ta.print"(%18#2) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %cst = arith.constant 2.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
    %13 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
    %alloc_19 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x?xf64>)
    %14 = bufferization.to_tensor %alloc_19 restrict writable : memref<?x?xf64>
    %15 = arith.index_cast %9 : index to i64
    %16 = tensor.empty() : tensor<1xi64>
    %inserted = tensor.insert %15 into %16[%idx0] : tensor<1xi64>
    %cast_20 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
    %17 = tensor.empty(%5) : tensor<?xf64>
    %18:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %12, %arg3 = %17) -> (index, tensor<?xi64>, tensor<?xf64>) {
      %20 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %21 = arith.index_cast %extracted : i64 to index
      %extracted_22 = tensor.extract %11[%20] : tensor<?xi64>
      %22 = arith.index_cast %extracted_22 : i64 to index
      %23:3 = scf.for %arg4 = %21 to %22 step %c1 iter_args(%arg5 = %arg1, %arg6 = %arg2, %arg7 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
        %extracted_23 = tensor.extract %12[%arg4] : tensor<?xi64>
        %extracted_24 = tensor.extract %12[%arg4] : tensor<?xi64>
        %24 = arith.index_cast %extracted_24 : i64 to index
        %extracted_25 = tensor.extract %13[%arg4] : tensor<?xf64>
        %extracted_26 = tensor.extract %14[%arg0, %24] : tensor<?x?xf64>
        %25 = arith.mulf %extracted_25, %extracted_26 : f64
        %inserted_27 = tensor.insert %extracted_23 into %arg6[%arg5] : tensor<?xi64>
        %26 = index.add %arg5, %idx1
        %inserted_28 = tensor.insert %25 into %arg7[%arg5] : tensor<?xf64>
        scf.yield %26, %inserted_27, %inserted_28 : index, tensor<?xi64>, tensor<?xf64>
      }
      scf.yield %23#0, %23#1, %23#2 : index, tensor<?xi64>, tensor<?xf64>
    }
    %19 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted_21 = tensor.insert %idx-1 into %19[%idx0] : tensor<1xindex>
    "ta.print"(%cast_20) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted_21) : (tensor<1xindex>) -> ()
    "ta.print"(%11) : (tensor<?xi64>) -> ()
    "ta.print"(%18#1) : (tensor<?xi64>) -> ()
    "ta.print"(%18#2) : (tensor<?xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %cst = arith.constant 2.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
    %13 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
    %alloc_19 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x?xf64>)
    %14 = bufferization.to_tensor %alloc_19 restrict writable : memref<?x?xf64>
    %15 = arith.index_cast %9 : index to i64
    %16 = tensor.empty() : tensor<1xi64>
    %inserted = tensor.insert %15 into %16[%idx0] : tensor<1xi64>
    %cast_20 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
    %17 = tensor.empty(%5) : tensor<?xf64>
    %18:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %12, %arg3 = %17) -> (index, tensor<?xi64>, tensor<?xf64>) {
      %20 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %21 = arith.index_cast %extracted : i64 to index
      %extracted_22 = tensor.extract %11[%20] : tensor<?xi64>
      %22 = arith.index_cast %extracted_22 : i64 to index
      %23:3 = scf.for %arg4 = %21 to %22 step %c1 iter_args(%arg5 = %arg1, %arg6 = %arg2, %arg7 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
        %extracted_23 = tensor.extract %12[%arg4] : tensor<?xi64>
        %extracted_24 = tensor.extract %12[%arg4] : tensor<?xi64>
        %24 = arith.index_cast %extracted_24 : i64 to index
        %extracted_25 = tensor.extract %13[%arg4] : tensor<?xf64>
        %extracted_26 = tensor.extract %14[%arg0, %24] : tensor<?x?xf64>
        %25 = arith.mulf %extracted_25, %extracted_26 : f64
        %inserted_27 = tensor.insert %extracted_23 into %arg6[%arg5] : tensor<?xi64>
        %26 = index.add %arg5, %idx1
        %inserted_28 = tensor.insert %25 into %arg7[%arg5] : tensor<?xf64>
        scf.yield %26, %inserted_27, %inserted_28 : index, tensor<?xi64>, tensor<?xf64>
      }
      scf.yield %23#0, %23#1, %23#2 : index, tensor<?xi64>, tensor<?xf64>
    }
    %19 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted_21 = tensor.insert %idx-1 into %19[%idx0] : tensor<1xindex>
    "ta.print"(%cast_20) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted_21) : (tensor<1xindex>) -> ()
    "ta.print"(%11) : (tensor<?xi64>) -> ()
    "ta.print"(%18#1) : (tensor<?xi64>) -> ()
    "ta.print"(%18#2) : (tensor<?xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %cst = arith.constant 2.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
    %13 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
    %alloc_19 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x?xf64>)
    %14 = bufferization.to_tensor %alloc_19 restrict writable : memref<?x?xf64>
    %15 = arith.index_cast %9 : index to i64
    %16 = tensor.empty() : tensor<1xi64>
    %inserted = tensor.insert %15 into %16[%idx0] : tensor<1xi64>
    %cast_20 = tensor.cast %inserted : tensor<1xi64> to tensor<?xi64>
    %17 = tensor.empty(%5) : tensor<?xf64>
    %18:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %12, %arg3 = %17) -> (index, tensor<?xi64>, tensor<?xf64>) {
      %20 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %21 = arith.index_cast %extracted : i64 to index
      %extracted_22 = tensor.extract %11[%20] : tensor<?xi64>
      %22 = arith.index_cast %extracted_22 : i64 to index
      %23:3 = scf.for %arg4 = %21 to %22 step %c1 iter_args(%arg5 = %arg1, %arg6 = %arg2, %arg7 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
        %extracted_23 = tensor.extract %12[%arg4] : tensor<?xi64>
        %extracted_24 = tensor.extract %12[%arg4] : tensor<?xi64>
        %24 = arith.index_cast %extracted_24 : i64 to index
        %extracted_25 = tensor.extract %13[%arg4] : tensor<?xf64>
        %extracted_26 = tensor.extract %14[%arg0, %24] : tensor<?x?xf64>
        %25 = arith.mulf %extracted_25, %extracted_26 : f64
        %inserted_27 = tensor.insert %extracted_23 into %arg6[%arg5] : tensor<?xi64>
        %26 = index.add %arg5, %idx1
        %inserted_28 = tensor.insert %25 into %arg7[%arg5] : tensor<?xf64>
        scf.yield %26, %inserted_27, %inserted_28 : index, tensor<?xi64>, tensor<?xf64>
      }
      scf.yield %23#0, %23#1, %23#2 : index, tensor<?xi64>, tensor<?xf64>
    }
    %19 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted_21 = tensor.insert %idx-1 into %19[%idx0] : tensor<1xindex>
    "ta.print"(%cast_20) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted_21) : (tensor<1xindex>) -> ()
    "ta.print"(%11) : (tensor<?xi64>) -> ()
    "ta.print"(%18#1) : (tensor<?xi64>) -> ()
    "ta.print"(%18#2) : (tensor<?xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After OneShotBufferize (one-shot-bufferize) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %cst = arith.constant 2.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
    %alloc_19 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x?xf64>)
    %12 = arith.index_cast %9 : index to i64
    %alloc_20 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %12, %alloc_20[%idx0] : memref<1xi64>
    %cast_21 = memref.cast %alloc_20 : memref<1xi64> to memref<?xi64>
    %13 = bufferization.to_tensor %cast_21 : memref<?xi64>
    %alloc_22 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xf64>
    %c0_23 = arith.constant 0 : index
    %dim = memref.dim %alloc_11, %c0_23 : memref<?xi64>
    %alloc_24 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_11, %alloc_24 : memref<?xi64> to memref<?xi64>
    %14:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_24, %arg3 = %alloc_22) -> (index, memref<?xi64>, memref<?xf64>) {
      %18 = arith.addi %arg0, %c1 : index
      %19 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_9[%18] : memref<?xi64>
      %22 = arith.index_cast %21 : i64 to index
      %23:3 = scf.for %arg4 = %20 to %22 step %c1 iter_args(%arg5 = %arg1, %arg6 = %arg2, %arg7 = %arg3) -> (index, memref<?xi64>, memref<?xf64>) {
        %24 = memref.load %alloc_11[%arg4] : memref<?xi64>
        %25 = memref.load %alloc_11[%arg4] : memref<?xi64>
        %26 = arith.index_cast %25 : i64 to index
        %27 = memref.load %alloc_17[%arg4] : memref<?xf64>
        %28 = memref.load %alloc_19[%arg0, %26] : memref<?x?xf64>
        %29 = arith.mulf %27, %28 : f64
        memref.store %24, %arg6[%arg5] : memref<?xi64>
        %30 = index.add %arg5, %idx1
        memref.store %29, %arg7[%arg5] : memref<?xf64>
        scf.yield %30, %arg6, %arg7 : index, memref<?xi64>, memref<?xf64>
      }
      scf.yield %23#0, %23#1, %23#2 : index, memref<?xi64>, memref<?xf64>
    }
    %15 = bufferization.to_tensor %14#2 : memref<?xf64>
    %16 = bufferization.to_tensor %14#1 : memref<?xi64>
    %alloc_25 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_25[%idx0] : memref<1xindex>
    %17 = bufferization.to_tensor %alloc_25 : memref<1xindex>
    "ta.print"(%13) : (tensor<?xi64>) -> ()
    "ta.print"(%17) : (tensor<1xindex>) -> ()
    "ta.print"(%11) : (tensor<?xi64>) -> ()
    "ta.print"(%16) : (tensor<?xi64>) -> ()
    "ta.print"(%15) : (tensor<?xf64>) -> ()
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
  %idx1 = index.constant 1
  %idx0 = index.constant 0
  %cst = arith.constant 2.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %alloc_19 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x?xf64>)
  %12 = arith.index_cast %9 : index to i64
  %alloc_20 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  memref.store %12, %alloc_20[%idx0] : memref<1xi64>
  %cast_21 = memref.cast %alloc_20 : memref<1xi64> to memref<?xi64>
  %13 = bufferization.to_tensor %cast_21 : memref<?xi64>
  %alloc_22 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xf64>
  %c0_23 = arith.constant 0 : index
  %dim = memref.dim %alloc_11, %c0_23 : memref<?xi64>
  %alloc_24 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
  memref.copy %alloc_11, %alloc_24 : memref<?xi64> to memref<?xi64>
  %14:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_24, %arg3 = %alloc_22) -> (index, memref<?xi64>, memref<?xf64>) {
    %18 = arith.addi %arg0, %c1 : index
    %19 = memref.load %alloc_9[%arg0] : memref<?xi64>
    %20 = arith.index_cast %19 : i64 to index
    %21 = memref.load %alloc_9[%18] : memref<?xi64>
    %22 = arith.index_cast %21 : i64 to index
    %23:3 = scf.for %arg4 = %20 to %22 step %c1 iter_args(%arg5 = %arg1, %arg6 = %arg2, %arg7 = %arg3) -> (index, memref<?xi64>, memref<?xf64>) {
      %24 = memref.load %alloc_11[%arg4] : memref<?xi64>
      %25 = memref.load %alloc_11[%arg4] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = memref.load %alloc_17[%arg4] : memref<?xf64>
      %28 = memref.load %alloc_19[%arg0, %26] : memref<?x?xf64>
      %29 = arith.mulf %27, %28 : f64
      memref.store %24, %arg6[%arg5] : memref<?xi64>
      %30 = index.add %arg5, %idx1
      memref.store %29, %arg7[%arg5] : memref<?xf64>
      scf.yield %30, %arg6, %arg7 : index, memref<?xi64>, memref<?xf64>
    }
    scf.yield %23#0, %23#1, %23#2 : index, memref<?xi64>, memref<?xf64>
  }
  %15 = bufferization.to_tensor %14#2 : memref<?xf64>
  %16 = bufferization.to_tensor %14#1 : memref<?xi64>
  %alloc_25 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_25[%idx0] : memref<1xindex>
  %17 = bufferization.to_tensor %alloc_25 : memref<1xindex>
  "ta.print"(%13) : (tensor<?xi64>) -> ()
  "ta.print"(%17) : (tensor<1xindex>) -> ()
  "ta.print"(%11) : (tensor<?xi64>) -> ()
  "ta.print"(%16) : (tensor<?xi64>) -> ()
  "ta.print"(%15) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
  %cst = arith.constant 2.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %alloc_19 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x?xf64>)
  %12 = arith.index_cast %9 : index to i64
  %alloc_20 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  memref.store %12, %alloc_20[%idx0] : memref<1xi64>
  %cast_21 = memref.cast %alloc_20 : memref<1xi64> to memref<?xi64>
  %13 = bufferization.to_tensor %cast_21 : memref<?xi64>
  %alloc_22 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xf64>
  %c0_23 = arith.constant 0 : index
  %dim = memref.dim %alloc_11, %c0_23 : memref<?xi64>
  %alloc_24 = memref.alloc(%dim) {alignment = 64 : i64} : memref<?xi64>
  memref.copy %alloc_11, %alloc_24 : memref<?xi64> to memref<?xi64>
  %14:3 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_24, %arg3 = %alloc_22) -> (index, memref<?xi64>, memref<?xf64>) {
    %23 = arith.addi %arg0, %c1 : index
    %24 = memref.load %alloc_9[%arg0] : memref<?xi64>
    %25 = arith.index_cast %24 : i64 to index
    %26 = memref.load %alloc_9[%23] : memref<?xi64>
    %27 = arith.index_cast %26 : i64 to index
    %28:3 = scf.for %arg4 = %25 to %27 step %c1 iter_args(%arg5 = %arg1, %arg6 = %arg2, %arg7 = %arg3) -> (index, memref<?xi64>, memref<?xf64>) {
      %29 = memref.load %alloc_11[%arg4] : memref<?xi64>
      %30 = memref.load %alloc_11[%arg4] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_17[%arg4] : memref<?xf64>
      %33 = memref.load %alloc_19[%arg0, %31] : memref<?x?xf64>
      %34 = arith.mulf %32, %33 : f64
      memref.store %29, %arg6[%arg5] : memref<?xi64>
      %35 = index.add %arg5, %idx1
      memref.store %34, %arg7[%arg5] : memref<?xf64>
      scf.yield %35, %arg6, %arg7 : index, memref<?xi64>, memref<?xf64>
    }
    scf.yield %28#0, %28#1, %28#2 : index, memref<?xi64>, memref<?xf64>
  }
  %15 = bufferization.to_tensor %14#2 : memref<?xf64>
  %16 = bufferization.to_tensor %14#1 : memref<?xi64>
  %alloc_25 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_25[%idx0] : memref<1xindex>
  %17 = bufferization.to_tensor %alloc_25 : memref<1xindex>
  %18 = bufferization.to_memref %13 : memref<?xi64>
  %cast_26 = memref.cast %18 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_26) : (memref<*xi64>) -> ()
  %19 = bufferization.to_memref %17 : memref<1xindex>
  %cast_27 = memref.cast %19 : memref<1xindex> to memref<*xindex>
  call @comet_print_memref_index(%cast_27) : (memref<*xindex>) -> ()
  %20 = bufferization.to_memref %11 : memref<?xi64>
  %cast_28 = memref.cast %20 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_28) : (memref<*xi64>) -> ()
  %21 = bufferization.to_memref %16 : memref<?xi64>
  %cast_29 = memref.cast %21 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_29) : (memref<*xi64>) -> ()
  %22 = bufferization.to_memref %15 : memref<?xf64>
  %cast_30 = memref.cast %22 : memref<?xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_30) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %cst = arith.constant 2.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x?xf64>)
    %11 = arith.index_cast %9 : index to i64
    %alloc_20 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %11, %alloc_20[%idx0] : memref<1xi64>
    %alloc_21 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xf64>
    %alloc_22 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_11, %alloc_22 : memref<?xi64> to memref<?xi64>
    %12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %13 = arith.addi %arg0, %c1 : index
      %14 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %16 = memref.load %alloc_9[%13] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = scf.for %arg2 = %15 to %17 step %c1 iter_args(%arg3 = %arg1) -> (index) {
        %19 = memref.load %alloc_11[%arg2] : memref<?xi64>
        %20 = memref.load %alloc_11[%arg2] : memref<?xi64>
        %21 = arith.index_cast %20 : i64 to index
        %22 = memref.load %alloc_17[%arg2] : memref<?xf64>
        %23 = memref.load %alloc_19[%arg0, %21] : memref<?x?xf64>
        %24 = arith.mulf %22, %23 : f64
        memref.store %19, %alloc_22[%arg3] : memref<?xi64>
        %25 = index.add %arg3, %idx1
        memref.store %24, %alloc_21[%arg3] : memref<?xf64>
        scf.yield %25 : index
      }
      scf.yield %18 : index
    }
    %alloc_23 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_23[%idx0] : memref<1xindex>
    %cast_24 = memref.cast %alloc_20 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_24) : (memref<*xi64>) -> ()
    %cast_25 = memref.cast %alloc_23 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_25) : (memref<*xindex>) -> ()
    %cast_26 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_26) : (memref<*xi64>) -> ()
    %cast_27 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_27) : (memref<*xi64>) -> ()
    %cast_28 = memref.cast %alloc_21 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_28) : (memref<*xf64>) -> ()
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
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %cst = arith.constant 2.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x?xf64>)
    %11 = arith.index_cast %9 : index to i64
    %alloc_20 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %11, %alloc_20[%idx0] : memref<1xi64>
    %alloc_21 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xf64>
    %alloc_22 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_11, %alloc_22 : memref<?xi64> to memref<?xi64>
    %12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %13 = arith.addi %arg0, %c1 : index
      %14 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %16 = memref.load %alloc_9[%13] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = scf.for %arg2 = %15 to %17 step %c1 iter_args(%arg3 = %arg1) -> (index) {
        %19 = memref.load %alloc_11[%arg2] : memref<?xi64>
        %20 = arith.index_cast %19 : i64 to index
        %21 = memref.load %alloc_17[%arg2] : memref<?xf64>
        %22 = memref.load %alloc_19[%arg0, %20] : memref<?x?xf64>
        %23 = arith.mulf %21, %22 : f64
        memref.store %19, %alloc_22[%arg3] : memref<?xi64>
        %24 = index.add %arg3, %idx1
        memref.store %23, %alloc_21[%arg3] : memref<?xf64>
        scf.yield %24 : index
      }
      scf.yield %18 : index
    }
    %alloc_23 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_23[%idx0] : memref<1xindex>
    %cast_24 = memref.cast %alloc_20 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_24) : (memref<*xi64>) -> ()
    %cast_25 = memref.cast %alloc_23 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_25) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_10) : (memref<*xi64>) -> ()
    %cast_26 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_26) : (memref<*xi64>) -> ()
    %cast_27 = memref.cast %alloc_21 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_27) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After FoldMemRefAliasOps (fold-memref-alias-ops) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %cst = arith.constant 2.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x?xf64>)
    %11 = arith.index_cast %9 : index to i64
    %alloc_20 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %11, %alloc_20[%idx0] : memref<1xi64>
    %alloc_21 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xf64>
    %alloc_22 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_11, %alloc_22 : memref<?xi64> to memref<?xi64>
    %12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %13 = arith.addi %arg0, %c1 : index
      %14 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %16 = memref.load %alloc_9[%13] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = scf.for %arg2 = %15 to %17 step %c1 iter_args(%arg3 = %arg1) -> (index) {
        %19 = memref.load %alloc_11[%arg2] : memref<?xi64>
        %20 = arith.index_cast %19 : i64 to index
        %21 = memref.load %alloc_17[%arg2] : memref<?xf64>
        %22 = memref.load %alloc_19[%arg0, %20] : memref<?x?xf64>
        %23 = arith.mulf %21, %22 : f64
        memref.store %19, %alloc_22[%arg3] : memref<?xi64>
        %24 = index.add %arg3, %idx1
        memref.store %23, %alloc_21[%arg3] : memref<?xf64>
        scf.yield %24 : index
      }
      scf.yield %18 : index
    }
    %alloc_23 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_23[%idx0] : memref<1xindex>
    %cast_24 = memref.cast %alloc_20 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_24) : (memref<*xi64>) -> ()
    %cast_25 = memref.cast %alloc_23 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_25) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_10) : (memref<*xi64>) -> ()
    %cast_26 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_26) : (memref<*xi64>) -> ()
    %cast_27 = memref.cast %alloc_21 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_27) : (memref<*xf64>) -> ()
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
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %cst = arith.constant 2.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x?xf64>)
    %11 = arith.index_cast %9 : index to i64
    %alloc_20 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %11, %alloc_20[%idx0] : memref<1xi64>
    %alloc_21 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xf64>
    %alloc_22 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_11, %alloc_22 : memref<?xi64> to memref<?xi64>
    %12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %13 = arith.addi %arg0, %c1 : index
      %14 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %16 = memref.load %alloc_9[%13] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = scf.for %arg2 = %15 to %17 step %c1 iter_args(%arg3 = %arg1) -> (index) {
        %19 = memref.load %alloc_11[%arg2] : memref<?xi64>
        %20 = arith.index_cast %19 : i64 to index
        %21 = memref.load %alloc_17[%arg2] : memref<?xf64>
        %22 = memref.load %alloc_19[%arg0, %20] : memref<?x?xf64>
        %23 = arith.mulf %21, %22 : f64
        memref.store %19, %alloc_22[%arg3] : memref<?xi64>
        %24 = index.add %arg3, %idx1
        memref.store %23, %alloc_21[%arg3] : memref<?xf64>
        scf.yield %24 : index
      }
      scf.yield %18 : index
    }
    %alloc_23 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_23[%idx0] : memref<1xindex>
    %cast_24 = memref.cast %alloc_20 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_24) : (memref<*xi64>) -> ()
    %cast_25 = memref.cast %alloc_23 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_25) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_10) : (memref<*xi64>) -> ()
    %cast_26 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_26) : (memref<*xi64>) -> ()
    %cast_27 = memref.cast %alloc_21 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_27) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
  %cst = arith.constant 2.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_19 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x?xf64>)
  %11 = arith.index_cast %9 : index to i64
  %alloc_20 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  memref.store %11, %alloc_20[%idx0] : memref<1xi64>
  %alloc_21 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xf64>
  %alloc_22 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xi64>
  memref.copy %alloc_11, %alloc_22 : memref<?xi64> to memref<?xi64>
  %12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
    %13 = arith.addi %arg0, %c1 : index
    %14 = memref.load %alloc_9[%arg0] : memref<?xi64>
    %15 = arith.index_cast %14 : i64 to index
    %16 = memref.load %alloc_9[%13] : memref<?xi64>
    %17 = arith.index_cast %16 : i64 to index
    %18 = scf.for %arg2 = %15 to %17 step %c1 iter_args(%arg3 = %arg1) -> (index) {
      %19 = memref.load %alloc_11[%arg2] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_17[%arg2] : memref<?xf64>
      %22 = memref.load %alloc_19[%arg0, %20] : memref<?x?xf64>
      %23 = arith.mulf %21, %22 : f64
      memref.store %19, %alloc_22[%arg3] : memref<?xi64>
      %24 = index.add %arg3, %idx1
      memref.store %23, %alloc_21[%arg3] : memref<?xf64>
      scf.yield %24 : index
    }
    scf.yield %18 : index
  }
  %alloc_23 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_23[%idx0] : memref<1xindex>
  %cast_24 = memref.cast %alloc_20 : memref<1xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_24) : (memref<*xi64>) -> ()
  %cast_25 = memref.cast %alloc_23 : memref<1xindex> to memref<*xindex>
  call @comet_print_memref_index(%cast_25) : (memref<*xindex>) -> ()
  call @comet_print_memref_i64(%cast_10) : (memref<*xi64>) -> ()
  %cast_26 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_26) : (memref<*xi64>) -> ()
  %cast_27 = memref.cast %alloc_21 : memref<?xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_27) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ConvertLinalgToLoopsPass (convert-linalg-to-loops) //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
  %cst = arith.constant 2.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
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
  %alloc_1 = memref.alloc(%0) : memref<?xi64>
  scf.for %arg0 = %c0 to %0 step %c1 {
    memref.store %c0_i64, %alloc_1[%arg0] : memref<?xi64>
  }
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
  scf.for %arg0 = %c0 to %1 step %c1 {
    memref.store %c0_i64, %alloc_3[%arg0] : memref<?xi64>
  }
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
  scf.for %arg0 = %c0 to %2 step %c1 {
    memref.store %c0_i64, %alloc_5[%arg0] : memref<?xi64>
  }
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
  scf.for %arg0 = %c0 to %3 step %c1 {
    memref.store %c0_i64, %alloc_7[%arg0] : memref<?xi64>
  }
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
  scf.for %arg0 = %c0 to %4 step %c1 {
    memref.store %c0_i64, %alloc_9[%arg0] : memref<?xi64>
  }
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
  scf.for %arg0 = %c0 to %5 step %c1 {
    memref.store %c0_i64, %alloc_11[%arg0] : memref<?xi64>
  }
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
  scf.for %arg0 = %c0 to %6 step %c1 {
    memref.store %c0_i64, %alloc_13[%arg0] : memref<?xi64>
  }
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
  scf.for %arg0 = %c0 to %7 step %c1 {
    memref.store %c0_i64, %alloc_15[%arg0] : memref<?xi64>
  }
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  scf.for %arg0 = %c0 to %8 step %c1 {
    memref.store %cst_0, %alloc_17[%arg0] : memref<?xf64>
  }
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_19 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
  scf.for %arg0 = %c0 to %9 step %c1 {
    scf.for %arg1 = %c0 to %10 step %c1 {
      memref.store %cst, %alloc_19[%arg0, %arg1] : memref<?x?xf64>
    }
  }
  %11 = arith.index_cast %9 : index to i64
  %alloc_20 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
  memref.store %11, %alloc_20[%idx0] : memref<1xi64>
  %alloc_21 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xf64>
  %alloc_22 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xi64>
  memref.copy %alloc_11, %alloc_22 : memref<?xi64> to memref<?xi64>
  %12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
    %13 = arith.addi %arg0, %c1 : index
    %14 = memref.load %alloc_9[%arg0] : memref<?xi64>
    %15 = arith.index_cast %14 : i64 to index
    %16 = memref.load %alloc_9[%13] : memref<?xi64>
    %17 = arith.index_cast %16 : i64 to index
    %18 = scf.for %arg2 = %15 to %17 step %c1 iter_args(%arg3 = %arg1) -> (index) {
      %19 = memref.load %alloc_11[%arg2] : memref<?xi64>
      %20 = arith.index_cast %19 : i64 to index
      %21 = memref.load %alloc_17[%arg2] : memref<?xf64>
      %22 = memref.load %alloc_19[%arg0, %20] : memref<?x?xf64>
      %23 = arith.mulf %21, %22 : f64
      memref.store %19, %alloc_22[%arg3] : memref<?xi64>
      %24 = index.add %arg3, %idx1
      memref.store %23, %alloc_21[%arg3] : memref<?xf64>
      scf.yield %24 : index
    }
    scf.yield %18 : index
  }
  %alloc_23 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_23[%idx0] : memref<1xindex>
  %cast_24 = memref.cast %alloc_20 : memref<1xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_24) : (memref<*xi64>) -> ()
  %cast_25 = memref.cast %alloc_23 : memref<1xindex> to memref<*xindex>
  call @comet_print_memref_index(%cast_25) : (memref<*xindex>) -> ()
  call @comet_print_memref_i64(%cast_10) : (memref<*xi64>) -> ()
  %cast_26 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_26) : (memref<*xi64>) -> ()
  %cast_27 = memref.cast %alloc_21 : memref<?xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_27) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %cst = arith.constant 2.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_1[%arg0] : memref<?xi64>
    }
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_3[%arg0] : memref<?xi64>
    }
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_5[%arg0] : memref<?xi64>
    }
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_7[%arg0] : memref<?xi64>
    }
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_9[%arg0] : memref<?xi64>
    }
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_11[%arg0] : memref<?xi64>
    }
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_13[%arg0] : memref<?xi64>
    }
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_15[%arg0] : memref<?xi64>
    }
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_0, %alloc_17[%arg0] : memref<?xf64>
    }
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %10 step %c1 {
        memref.store %cst, %alloc_19[%arg0, %arg1] : memref<?x?xf64>
      }
    }
    %11 = arith.index_cast %9 : index to i64
    %alloc_20 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %11, %alloc_20[%idx0] : memref<1xi64>
    %alloc_21 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xf64>
    %alloc_22 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_11, %alloc_22 : memref<?xi64> to memref<?xi64>
    %12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %13 = arith.addi %arg0, %c1 : index
      %14 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %16 = memref.load %alloc_9[%13] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = scf.for %arg2 = %15 to %17 step %c1 iter_args(%arg3 = %arg1) -> (index) {
        %19 = memref.load %alloc_11[%arg2] : memref<?xi64>
        %20 = arith.index_cast %19 : i64 to index
        %21 = memref.load %alloc_17[%arg2] : memref<?xf64>
        %22 = memref.load %alloc_19[%arg0, %20] : memref<?x?xf64>
        %23 = arith.mulf %21, %22 : f64
        memref.store %19, %alloc_22[%arg3] : memref<?xi64>
        %24 = index.add %arg3, %idx1
        memref.store %23, %alloc_21[%arg3] : memref<?xf64>
        scf.yield %24 : index
      }
      scf.yield %18 : index
    }
    %alloc_23 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_23[%idx0] : memref<1xindex>
    %cast_24 = memref.cast %alloc_20 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_24) : (memref<*xi64>) -> ()
    %cast_25 = memref.cast %alloc_23 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_25) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_10) : (memref<*xi64>) -> ()
    %cast_26 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_26) : (memref<*xi64>) -> ()
    %cast_27 = memref.cast %alloc_21 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_27) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After SCFForallToParallelLoop (scf-forall-to-parallel) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %cst = arith.constant 2.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_1[%arg0] : memref<?xi64>
    }
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_3[%arg0] : memref<?xi64>
    }
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_5[%arg0] : memref<?xi64>
    }
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_7[%arg0] : memref<?xi64>
    }
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_9[%arg0] : memref<?xi64>
    }
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_11[%arg0] : memref<?xi64>
    }
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_13[%arg0] : memref<?xi64>
    }
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_15[%arg0] : memref<?xi64>
    }
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_0, %alloc_17[%arg0] : memref<?xf64>
    }
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %10 step %c1 {
        memref.store %cst, %alloc_19[%arg0, %arg1] : memref<?x?xf64>
      }
    }
    %11 = arith.index_cast %9 : index to i64
    %alloc_20 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %11, %alloc_20[%idx0] : memref<1xi64>
    %alloc_21 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xf64>
    %alloc_22 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_11, %alloc_22 : memref<?xi64> to memref<?xi64>
    %12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %13 = arith.addi %arg0, %c1 : index
      %14 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %16 = memref.load %alloc_9[%13] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = scf.for %arg2 = %15 to %17 step %c1 iter_args(%arg3 = %arg1) -> (index) {
        %19 = memref.load %alloc_11[%arg2] : memref<?xi64>
        %20 = arith.index_cast %19 : i64 to index
        %21 = memref.load %alloc_17[%arg2] : memref<?xf64>
        %22 = memref.load %alloc_19[%arg0, %20] : memref<?x?xf64>
        %23 = arith.mulf %21, %22 : f64
        memref.store %19, %alloc_22[%arg3] : memref<?xi64>
        %24 = index.add %arg3, %idx1
        memref.store %23, %alloc_21[%arg3] : memref<?xf64>
        scf.yield %24 : index
      }
      scf.yield %18 : index
    }
    %alloc_23 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_23[%idx0] : memref<1xindex>
    %cast_24 = memref.cast %alloc_20 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_24) : (memref<*xi64>) -> ()
    %cast_25 = memref.cast %alloc_23 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_25) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_10) : (memref<*xi64>) -> ()
    %cast_26 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_26) : (memref<*xi64>) -> ()
    %cast_27 = memref.cast %alloc_21 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_27) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %cst = arith.constant 2.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_1[%arg0] : memref<?xi64>
    }
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_3[%arg0] : memref<?xi64>
    }
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_5[%arg0] : memref<?xi64>
    }
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_7[%arg0] : memref<?xi64>
    }
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_9[%arg0] : memref<?xi64>
    }
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_11[%arg0] : memref<?xi64>
    }
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_13[%arg0] : memref<?xi64>
    }
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_15[%arg0] : memref<?xi64>
    }
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_0, %alloc_17[%arg0] : memref<?xf64>
    }
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %10 step %c1 {
        memref.store %cst, %alloc_19[%arg0, %arg1] : memref<?x?xf64>
      }
    }
    %11 = arith.index_cast %9 : index to i64
    %alloc_20 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %11, %alloc_20[%idx0] : memref<1xi64>
    %alloc_21 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xf64>
    %alloc_22 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_11, %alloc_22 : memref<?xi64> to memref<?xi64>
    %12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %13 = arith.addi %arg0, %c1 : index
      %14 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %16 = memref.load %alloc_9[%13] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = scf.for %arg2 = %15 to %17 step %c1 iter_args(%arg3 = %arg1) -> (index) {
        %19 = memref.load %alloc_11[%arg2] : memref<?xi64>
        %20 = arith.index_cast %19 : i64 to index
        %21 = memref.load %alloc_17[%arg2] : memref<?xf64>
        %22 = memref.load %alloc_19[%arg0, %20] : memref<?x?xf64>
        %23 = arith.mulf %21, %22 : f64
        memref.store %19, %alloc_22[%arg3] : memref<?xi64>
        %24 = index.add %arg3, %idx1
        memref.store %23, %alloc_21[%arg3] : memref<?xf64>
        scf.yield %24 : index
      }
      scf.yield %18 : index
    }
    %alloc_23 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_23[%idx0] : memref<1xindex>
    %cast_24 = memref.cast %alloc_20 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_24) : (memref<*xi64>) -> ()
    %cast_25 = memref.cast %alloc_23 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_25) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_10) : (memref<*xi64>) -> ()
    %cast_26 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_26) : (memref<*xi64>) -> ()
    %cast_27 = memref.cast %alloc_21 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_27) : (memref<*xf64>) -> ()
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
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %cst = arith.constant 2.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_1[%arg0] : memref<?xi64>
    }
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_3[%arg0] : memref<?xi64>
    }
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_5[%arg0] : memref<?xi64>
    }
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_7[%arg0] : memref<?xi64>
    }
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_9[%arg0] : memref<?xi64>
    }
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_11[%arg0] : memref<?xi64>
    }
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_13[%arg0] : memref<?xi64>
    }
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_15[%arg0] : memref<?xi64>
    }
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_0, %alloc_17[%arg0] : memref<?xf64>
    }
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %10 step %c1 {
        memref.store %cst, %alloc_19[%arg0, %arg1] : memref<?x?xf64>
      }
    }
    %11 = arith.index_cast %9 : index to i64
    %alloc_20 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %11, %alloc_20[%idx0] : memref<1xi64>
    %alloc_21 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xf64>
    %alloc_22 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_11, %alloc_22 : memref<?xi64> to memref<?xi64>
    %12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %13 = arith.addi %arg0, %c1 : index
      %14 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %16 = memref.load %alloc_9[%13] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = scf.for %arg2 = %15 to %17 step %c1 iter_args(%arg3 = %arg1) -> (index) {
        %19 = memref.load %alloc_11[%arg2] : memref<?xi64>
        %20 = arith.index_cast %19 : i64 to index
        %21 = memref.load %alloc_17[%arg2] : memref<?xf64>
        %22 = memref.load %alloc_19[%arg0, %20] : memref<?x?xf64>
        %23 = arith.mulf %21, %22 : f64
        memref.store %19, %alloc_22[%arg3] : memref<?xi64>
        %24 = index.add %arg3, %idx1
        memref.store %23, %alloc_21[%arg3] : memref<?xf64>
        scf.yield %24 : index
      }
      scf.yield %18 : index
    }
    %alloc_23 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_23[%idx0] : memref<1xindex>
    %cast_24 = memref.cast %alloc_20 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_24) : (memref<*xi64>) -> ()
    %cast_25 = memref.cast %alloc_23 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_25) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_10) : (memref<*xi64>) -> ()
    %cast_26 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_26) : (memref<*xi64>) -> ()
    %cast_27 = memref.cast %alloc_21 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_27) : (memref<*xf64>) -> ()
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
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %cst = arith.constant 2.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_1[%arg0] : memref<?xi64>
    }
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_3[%arg0] : memref<?xi64>
    }
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_5[%arg0] : memref<?xi64>
    }
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_7[%arg0] : memref<?xi64>
    }
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_9[%arg0] : memref<?xi64>
    }
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_11[%arg0] : memref<?xi64>
    }
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_13[%arg0] : memref<?xi64>
    }
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_15[%arg0] : memref<?xi64>
    }
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_0, %alloc_17[%arg0] : memref<?xf64>
    }
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %10 step %c1 {
        memref.store %cst, %alloc_19[%arg0, %arg1] : memref<?x?xf64>
      }
    }
    %11 = arith.index_cast %9 : index to i64
    %alloc_20 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %11, %alloc_20[%idx0] : memref<1xi64>
    %alloc_21 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xf64>
    %alloc_22 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_11, %alloc_22 : memref<?xi64> to memref<?xi64>
    %12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %13 = arith.addi %arg0, %c1 : index
      %14 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %16 = memref.load %alloc_9[%13] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = scf.for %arg2 = %15 to %17 step %c1 iter_args(%arg3 = %arg1) -> (index) {
        %19 = memref.load %alloc_11[%arg2] : memref<?xi64>
        %20 = arith.index_cast %19 : i64 to index
        %21 = memref.load %alloc_17[%arg2] : memref<?xf64>
        %22 = memref.load %alloc_19[%arg0, %20] : memref<?x?xf64>
        %23 = arith.mulf %21, %22 : f64
        memref.store %19, %alloc_22[%arg3] : memref<?xi64>
        %24 = index.add %arg3, %idx1
        memref.store %23, %alloc_21[%arg3] : memref<?xf64>
        scf.yield %24 : index
      }
      scf.yield %18 : index
    }
    %alloc_23 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_23[%idx0] : memref<1xindex>
    %cast_24 = memref.cast %alloc_20 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_24) : (memref<*xi64>) -> ()
    %cast_25 = memref.cast %alloc_23 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_25) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_10) : (memref<*xi64>) -> ()
    %cast_26 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_26) : (memref<*xi64>) -> ()
    %cast_27 = memref.cast %alloc_21 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_27) : (memref<*xf64>) -> ()
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
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %cst = arith.constant 2.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
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
    %alloc_1 = memref.alloc(%0) : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_1[%arg0] : memref<?xi64>
    }
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_3[%arg0] : memref<?xi64>
    }
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_5[%arg0] : memref<?xi64>
    }
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_7[%arg0] : memref<?xi64>
    }
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_9[%arg0] : memref<?xi64>
    }
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_11[%arg0] : memref<?xi64>
    }
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_13[%arg0] : memref<?xi64>
    }
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_15[%arg0] : memref<?xi64>
    }
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_0, %alloc_17[%arg0] : memref<?xf64>
    }
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%9, %10) {alignment = 32 : i64} : memref<?x?xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %10 step %c1 {
        memref.store %cst, %alloc_19[%arg0, %arg1] : memref<?x?xf64>
      }
    }
    %11 = arith.index_cast %9 : index to i64
    %alloc_20 = memref.alloc() {alignment = 64 : i64} : memref<1xi64>
    memref.store %11, %alloc_20[%idx0] : memref<1xi64>
    %alloc_21 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xf64>
    %alloc_22 = memref.alloc(%5) {alignment = 64 : i64} : memref<?xi64>
    memref.copy %alloc_11, %alloc_22 : memref<?xi64> to memref<?xi64>
    %12 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0) -> (index) {
      %13 = arith.addi %arg0, %c1 : index
      %14 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %16 = memref.load %alloc_9[%13] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = scf.for %arg2 = %15 to %17 step %c1 iter_args(%arg3 = %arg1) -> (index) {
        %19 = memref.load %alloc_11[%arg2] : memref<?xi64>
        %20 = arith.index_cast %19 : i64 to index
        %21 = memref.load %alloc_17[%arg2] : memref<?xf64>
        %22 = memref.load %alloc_19[%arg0, %20] : memref<?x?xf64>
        %23 = arith.mulf %21, %22 : f64
        memref.store %19, %alloc_22[%arg3] : memref<?xi64>
        %24 = index.add %arg3, %idx1
        memref.store %23, %alloc_21[%arg3] : memref<?xf64>
        scf.yield %24 : index
      }
      scf.yield %18 : index
    }
    %alloc_23 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_23[%idx0] : memref<1xindex>
    %cast_24 = memref.cast %alloc_20 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_24) : (memref<*xi64>) -> ()
    %cast_25 = memref.cast %alloc_23 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_25) : (memref<*xindex>) -> ()
    call @comet_print_memref_i64(%cast_10) : (memref<*xi64>) -> ()
    %cast_26 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_26) : (memref<*xi64>) -> ()
    %cast_27 = memref.cast %alloc_21 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_27) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}
