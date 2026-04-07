// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
#map = affine_map<(d0, d1, d2) -> (d0, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.spTensor_decl"() <{allocator = "default", format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %c0 = arith.constant 0 : index
    %4 = "ta.dim"(%3, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %c1 = arith.constant 1 : index
    %5 = "ta.dim"(%3, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %6 = "ta.dense_tensor_decl"(%5) <{allocator = "default", format = "Dense"}> : (index) -> tensor<?x4xf64>
    %7 = "ta.dense_tensor_decl"(%4) <{allocator = "default", format = "Dense"}> : (index) -> tensor<?x4xf64>
    "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%6) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    %8 = "ta.mul"(%3, %6, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["CSR", "Dense", "Dense"], indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<?x4xf64>
    "ta.set_op"(%8, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    "ta.print"(%7) : (tensor<?x4xf64>) -> ()
    return
  }
}


// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.spTensor_decl"() <{allocator = "default", format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %c0 = arith.constant 0 : index
  %4 = "ta.dim"(%3, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1 = arith.constant 1 : index
  %5 = "ta.dim"(%3, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %6 = "ta.dense_tensor_decl"(%5) <{allocator = "default", format = "Dense"}> : (index) -> tensor<?x4xf64>
  %7 = "ta.dense_tensor_decl"(%4) <{allocator = "default", format = "Dense"}> : (index) -> tensor<?x4xf64>
  "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%6) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %8 = "ta.mul"(%3, %6, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["CSR", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<?x4xf64>
  "ta.set_op"(%8, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%7) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToIndexTreePass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.spTensor_decl"() <{allocator = "default", format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %c0 = arith.constant 0 : index
  %4 = "ta.dim"(%3, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1 = arith.constant 1 : index
  %5 = "ta.dim"(%3, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %6 = "ta.dense_tensor_decl"(%5) <{allocator = "default", format = "Dense"}> : (index) -> tensor<?x4xf64>
  %7 = "ta.dense_tensor_decl"(%4) <{allocator = "default", format = "Dense"}> : (index) -> tensor<?x4xf64>
  "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%6) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %8 = "it.itree"(%7) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %9 = "it.RootOp"() : () -> !it.index_tree
    %10 = "it.IndexOp"(%9) : (!it.index_tree) -> !it.index
    %11 = "it.IndexOp"(%10) : (!it.index) -> !it.index
    %12 = "it.IndexOp"(%11) : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %10) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %12, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %13 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%3, %10) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%3, %11, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %14 = "it.OperandOp"(%3, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%6, %11) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%6, %12, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%6, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %16 = "it.ComputeOp"(%12, %13, %14, %15) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %16 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%8, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%7) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainInference (indextree-domain-inference) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %0 = "ta.spTensor_decl"() <{allocator = "default", format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %1 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %2 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %3 = "ta.dense_tensor_decl"(%2) <{allocator = "default", format = "Dense"}> : (index) -> tensor<?x4xf64>
  %4 = "ta.dense_tensor_decl"(%1) <{allocator = "default", format = "Dense"}> : (index) -> tensor<?x4xf64>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%3) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%4) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %5 = "it.itree"(%4) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %6 = "it.RootOp"() : () -> !it.index_tree
    %7 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %8 = "it.IndexOp"(%6, %7) : (!it.index_tree, !it.domain) -> !it.index
    %9 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %10 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %11 = "it.DomainIntersectionOp"(%10, %9) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %12 = "it.IndexOp"(%8, %11) : (!it.index, !it.domain) -> !it.index
    %13 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %14 = "it.IndexOp"(%12, %13) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %8) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %14, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %15 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %8) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %12, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%3, %12) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%3, %14, %pos_7) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %17 = "it.OperandOp"(%3, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %18 = "it.ComputeOp"(%14, %15, %16, %17) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %18 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%5, %4) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%4) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %0 = "ta.spTensor_decl"() <{allocator = "default", format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %1 = "ta.SpTensorGetDimSize"(%0) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %2 = "ta.SpTensorGetDimPos"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %3 = "ta.SpTensorGetDimCrd"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %2, %c0 : tensor<?xi64>
  %dim_0 = tensor.dim %3, %c0 : tensor<?xi64>
  %4 = "ta.SpTensorGetDimSize"(%0) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %5 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %6 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %7 = "ta.dense_tensor_decl"(%6) <{allocator = "default", format = "Dense"}> : (index) -> tensor<?x4xf64>
  %8 = "ta.dense_tensor_decl"(%5) <{allocator = "default", format = "Dense"}> : (index) -> tensor<?x4xf64>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%7) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%8) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %9 = "it.itree"(%8) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %10 = "it.RootOp"() : () -> !it.index_tree
    %11 = "it.DenseDomainOp"(%1, %0) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %12 = "it.IndexOp"(%10, %11) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%0, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %13 = "it.SparseDomainOp"(%0, %2, %3, %dim, %dim_0, %4, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %14 = "it.IndexOp"(%12, %13) : (!it.index, !it.domain) -> !it.index
    %15 = "it.DenseDomainOp"(%idx4, %7) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %16 = "it.IndexOp"(%14, %15) : (!it.index, !it.domain) -> !it.index
    %crd_1, %pos_2 = "it.IndexToTensorDim"(%arg0, %12) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_3, %pos_4 = "it.IndexToTensorDim"(%arg0, %16, %pos_2) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %17 = "it.LHSOperandOp"(%arg0, %pos_2, %pos_4, %crd_1, %crd_3) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_5, %pos_6 = "it.IndexToTensorDim"(%0, %14, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %18 = "it.OperandOp"(%0, %pos, %pos_6, %crd, %crd_5) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_7, %pos_8 = "it.IndexToTensorDim"(%7, %14) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_9, %pos_10 = "it.IndexToTensorDim"(%7, %16, %pos_8) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %19 = "it.OperandOp"(%7, %pos_8, %pos_10, %crd_7, %crd_9) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %20 = "it.ComputeOp"(%16, %17, %18, %19) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %20 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%9, %8) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%8) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "default"} : memref<13xindex>
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
  %alloc_6 = memref.alloc(%0) {allocator = "default"} : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) {allocator = "default"} : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) {allocator = "default"} : memref<?xi64>
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%3) {allocator = "default"} : memref<?xi64>
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%4) {allocator = "default"} : memref<?xi64>
  %c0_i64_16 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_16 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%5) {allocator = "default"} : memref<?xi64>
  %c0_i64_19 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_19 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_20 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_21 = memref.alloc(%6) {allocator = "default"} : memref<?xi64>
  %cast_22 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%7) {allocator = "default"} : memref<?xi64>
  %cast_24 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_25 = memref.alloc(%8) {allocator = "default"} : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc_25 : memref<?xf64>)
  %cast_26 = memref.cast %alloc_25 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64_no_tiles(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_17, %cast_20, %cast_26, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_21 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %22 = "ta.spTensor_construct"(%from_elements, %13, %17, %14, %18, %15, %19, %16, %20, %21) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %23 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %25 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %24, %c0 : tensor<?xi64>
  %dim_27 = tensor.dim %25, %c0 : tensor<?xi64>
  %26 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %27 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %28 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %29 = "ta.dense_tensor_decl"(%28) <{allocator = "default", format = "Dense"}> : (index) -> tensor<?x4xf64>
  %30 = "ta.dense_tensor_decl"(%27) <{allocator = "default", format = "Dense"}> : (index) -> tensor<?x4xf64>
  "ta.fill"(%29) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%30) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %31 = "it.itree"(%30) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %35 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_27, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DenseDomainOp"(%idx4, %29) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %38 = "it.IndexOp"(%36, %37) : (!it.index, !it.domain) -> !it.index
    %crd_28, %pos_29 = "it.IndexToTensorDim"(%arg0, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_30, %pos_31 = "it.IndexToTensorDim"(%arg0, %38, %pos_29) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %39 = "it.LHSOperandOp"(%arg0, %pos_29, %pos_31, %crd_28, %crd_30) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%22, %36, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%22, %pos, %pos_33, %crd, %crd_32) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%29, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%29, %38, %pos_35) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%29, %pos_35, %pos_37, %crd_34, %crd_36) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %42 = "it.ComputeOp"(%38, %39, %40, %41) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %42 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%31, %30) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%30) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "default"} : memref<13xindex>
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
  %alloc_6 = memref.alloc(%0) {allocator = "default"} : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) {allocator = "default"} : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) {allocator = "default"} : memref<?xi64>
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%3) {allocator = "default"} : memref<?xi64>
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%4) {allocator = "default"} : memref<?xi64>
  %c0_i64_16 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_16 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%5) {allocator = "default"} : memref<?xi64>
  %c0_i64_19 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_19 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_20 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_21 = memref.alloc(%6) {allocator = "default"} : memref<?xi64>
  %cast_22 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%7) {allocator = "default"} : memref<?xi64>
  %cast_24 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_25 = memref.alloc(%8) {allocator = "default"} : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc_25 : memref<?xf64>)
  %cast_26 = memref.cast %alloc_25 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64_no_tiles(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_17, %cast_20, %cast_26, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_21 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %22 = "ta.spTensor_construct"(%from_elements, %13, %17, %14, %18, %15, %19, %16, %20, %21) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %23 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %25 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %24, %c0 : tensor<?xi64>
  %dim_27 = tensor.dim %25, %c0 : tensor<?xi64>
  %26 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %27 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %28 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_28 = memref.alloc(%28) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  %29 = bufferization.to_tensor %alloc_28 restrict writable : memref<?x4xf64>
  %alloc_29 = memref.alloc(%27) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  %30 = bufferization.to_tensor %alloc_29 restrict writable : memref<?x4xf64>
  "ta.fill"(%29) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%30) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %31 = "it.itree"(%30) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %35 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_27, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DenseDomainOp"(%idx4, %29) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %38 = "it.IndexOp"(%36, %37) : (!it.index, !it.domain) -> !it.index
    %crd_30, %pos_31 = "it.IndexToTensorDim"(%arg0, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%arg0, %38, %pos_31) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %39 = "it.LHSOperandOp"(%arg0, %pos_31, %pos_33, %crd_30, %crd_32) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%22, %36, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%22, %pos, %pos_35, %crd, %crd_34) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%29, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%29, %38, %pos_37) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%29, %pos_37, %pos_39, %crd_36, %crd_38) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %42 = "it.ComputeOp"(%38, %39, %40, %41) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %42 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%31, %30) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%30) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "default"} : memref<13xindex>
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
  %alloc_6 = memref.alloc(%0) {allocator = "default"} : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) {allocator = "default"} : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) {allocator = "default"} : memref<?xi64>
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%3) {allocator = "default"} : memref<?xi64>
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%4) {allocator = "default"} : memref<?xi64>
  %c0_i64_16 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_16 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%5) {allocator = "default"} : memref<?xi64>
  %c0_i64_19 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_19 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_20 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_21 = memref.alloc(%6) {allocator = "default"} : memref<?xi64>
  %cast_22 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%7) {allocator = "default"} : memref<?xi64>
  %cast_24 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_25 = memref.alloc(%8) {allocator = "default"} : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc_25 : memref<?xf64>)
  %cast_26 = memref.cast %alloc_25 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64_no_tiles(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_17, %cast_20, %cast_26, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_21 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %22 = "ta.spTensor_construct"(%from_elements, %13, %17, %14, %18, %15, %19, %16, %20, %21) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %23 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %25 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %24, %c0 : tensor<?xi64>
  %dim_27 = tensor.dim %25, %c0 : tensor<?xi64>
  %26 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %27 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %28 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_28 = memref.alloc(%28) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  %29 = bufferization.to_tensor %alloc_28 restrict writable : memref<?x4xf64>
  %alloc_29 = memref.alloc(%27) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  %30 = bufferization.to_tensor %alloc_29 restrict writable : memref<?x4xf64>
  "ta.fill"(%29) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%30) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %31 = "it.itree"(%30) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %35 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_27, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DenseDomainOp"(%idx4, %29) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %38 = "it.IndexOp"(%36, %37) : (!it.index, !it.domain) -> !it.index
    %crd_30, %pos_31 = "it.IndexToTensorDim"(%arg0, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%arg0, %38, %pos_31) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %39 = "it.LHSOperandOp"(%arg0, %pos_31, %pos_33, %crd_30, %crd_32) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%22, %36, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%22, %pos, %pos_35, %crd, %crd_34) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%29, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%29, %38, %pos_37) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%29, %pos_37, %pos_39, %crd_36, %crd_38) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %42 = "it.ComputeOp"(%38, %39, %40, %41) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %42 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%31, %30) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%30) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "default"} : memref<13xindex>
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
  %alloc_6 = memref.alloc(%0) {allocator = "default"} : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) {allocator = "default"} : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) {allocator = "default"} : memref<?xi64>
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%3) {allocator = "default"} : memref<?xi64>
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%4) {allocator = "default"} : memref<?xi64>
  %c0_i64_16 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_16 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%5) {allocator = "default"} : memref<?xi64>
  %c0_i64_19 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_19 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_20 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_21 = memref.alloc(%6) {allocator = "default"} : memref<?xi64>
  %cast_22 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%7) {allocator = "default"} : memref<?xi64>
  %cast_24 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_25 = memref.alloc(%8) {allocator = "default"} : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc_25 : memref<?xf64>)
  %cast_26 = memref.cast %alloc_25 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64_no_tiles(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_17, %cast_20, %cast_26, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_21 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %22 = "ta.spTensor_construct"(%from_elements, %13, %17, %14, %18, %15, %19, %16, %20, %21) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %23 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %25 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %24, %c0 : tensor<?xi64>
  %dim_27 = tensor.dim %25, %c0 : tensor<?xi64>
  %26 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %27 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %28 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_28 = memref.alloc(%28) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  %29 = bufferization.to_tensor %alloc_28 restrict writable : memref<?x4xf64>
  %alloc_29 = memref.alloc(%27) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  %30 = bufferization.to_tensor %alloc_29 restrict writable : memref<?x4xf64>
  "ta.fill"(%29) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%30) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %31 = "it.itree"(%30) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %35 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_27, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DenseDomainOp"(%idx4, %29) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %38 = "it.IndexOp"(%36, %37) : (!it.index, !it.domain) -> !it.index
    %crd_30, %pos_31 = "it.IndexToTensorDim"(%arg0, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%arg0, %38, %pos_31) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %39 = "it.LHSOperandOp"(%arg0, %pos_31, %pos_33, %crd_30, %crd_32) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%22, %36, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%22, %pos, %pos_35, %crd, %crd_34) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%29, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%29, %38, %pos_37) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%29, %pos_37, %pos_39, %crd_36, %crd_38) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %42 = "it.ComputeOp"(%38, %39, %40, %41) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %42 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%31, %30) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%30) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "default"} : memref<13xindex>
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
  %alloc_6 = memref.alloc(%0) {allocator = "default"} : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) {allocator = "default"} : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) {allocator = "default"} : memref<?xi64>
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%3) {allocator = "default"} : memref<?xi64>
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%4) {allocator = "default"} : memref<?xi64>
  %c0_i64_16 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_16 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%5) {allocator = "default"} : memref<?xi64>
  %c0_i64_19 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_19 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_20 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_21 = memref.alloc(%6) {allocator = "default"} : memref<?xi64>
  %cast_22 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%7) {allocator = "default"} : memref<?xi64>
  %cast_24 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_25 = memref.alloc(%8) {allocator = "default"} : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc_25 : memref<?xf64>)
  %cast_26 = memref.cast %alloc_25 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64_no_tiles(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_17, %cast_20, %cast_26, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_21 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %22 = "ta.spTensor_construct"(%from_elements, %13, %17, %14, %18, %15, %19, %16, %20, %21) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %23 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %25 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %24, %c0 : tensor<?xi64>
  %dim_27 = tensor.dim %25, %c0 : tensor<?xi64>
  %26 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %27 = "ta.dim"(%22, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %28 = "ta.dim"(%22, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %alloc_28 = memref.alloc(%28) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  %cst_29 = arith.constant 1.700000e+00 : f64
  linalg.fill ins(%cst_29 : f64) outs(%alloc_28 : memref<?x4xf64>)
  %29 = bufferization.to_tensor %alloc_28 restrict writable : memref<?x4xf64>
  %alloc_30 = memref.alloc(%27) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  %cst_31 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_31 : f64) outs(%alloc_30 : memref<?x4xf64>)
  %30 = bufferization.to_tensor %alloc_30 restrict writable : memref<?x4xf64>
  %31 = "it.itree"(%30) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %35 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_27, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DenseDomainOp"(%idx4, %29) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %38 = "it.IndexOp"(%36, %37) : (!it.index, !it.domain) -> !it.index
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%arg0, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%arg0, %38, %pos_33) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %39 = "it.LHSOperandOp"(%arg0, %pos_33, %pos_35, %crd_32, %crd_34) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%22, %36, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%22, %pos, %pos_37, %crd, %crd_36) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%29, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%29, %38, %pos_39) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%29, %pos_39, %pos_41, %crd_38, %crd_40) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %42 = "it.ComputeOp"(%38, %39, %40, %41) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %42 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%31, %30) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%30) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "default"} : memref<13xindex>
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
  %alloc_6 = memref.alloc(%0) {allocator = "default"} : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) {allocator = "default"} : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) {allocator = "default"} : memref<?xi64>
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%3) {allocator = "default"} : memref<?xi64>
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%4) {allocator = "default"} : memref<?xi64>
  %c0_i64_16 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_16 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%5) {allocator = "default"} : memref<?xi64>
  %c0_i64_19 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_19 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_20 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_21 = memref.alloc(%6) {allocator = "default"} : memref<?xi64>
  %cast_22 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%7) {allocator = "default"} : memref<?xi64>
  %cast_24 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_25 = memref.alloc(%8) {allocator = "default"} : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc_25 : memref<?xf64>)
  %cast_26 = memref.cast %alloc_25 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64_no_tiles(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_17, %cast_20, %cast_26, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_21 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %22 = "ta.spTensor_construct"(%from_elements, %13, %17, %14, %18, %15, %19, %16, %20, %21) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %23 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %25 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %24, %c0 : tensor<?xi64>
  %dim_27 = tensor.dim %25, %c0 : tensor<?xi64>
  %26 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %27 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %28 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_28 = memref.alloc(%28) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  %cst_29 = arith.constant 1.700000e+00 : f64
  linalg.fill ins(%cst_29 : f64) outs(%alloc_28 : memref<?x4xf64>)
  %29 = bufferization.to_tensor %alloc_28 restrict writable : memref<?x4xf64>
  %alloc_30 = memref.alloc(%27) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  %cst_31 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_31 : f64) outs(%alloc_30 : memref<?x4xf64>)
  %30 = bufferization.to_tensor %alloc_30 restrict writable : memref<?x4xf64>
  %31 = "it.itree"(%30) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %35 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_27, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DenseDomainOp"(%idx4, %29) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %38 = "it.IndexOp"(%36, %37) : (!it.index, !it.domain) -> !it.index
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%arg0, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%arg0, %38, %pos_33) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %39 = "it.LHSOperandOp"(%arg0, %pos_33, %pos_35, %crd_32, %crd_34) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%22, %36, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%22, %pos, %pos_37, %crd, %crd_36) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%29, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%29, %38, %pos_39) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%29, %pos_39, %pos_41, %crd_38, %crd_40) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %42 = "it.ComputeOp"(%38, %39, %40, %41) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %42 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%31, %30) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%30) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "default"} : memref<13xindex>
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
  %alloc_6 = memref.alloc(%0) {allocator = "default"} : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) {allocator = "default"} : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) {allocator = "default"} : memref<?xi64>
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%3) {allocator = "default"} : memref<?xi64>
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%4) {allocator = "default"} : memref<?xi64>
  %c0_i64_16 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_16 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_17 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_18 = memref.alloc(%5) {allocator = "default"} : memref<?xi64>
  %c0_i64_19 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_19 : i64) outs(%alloc_18 : memref<?xi64>)
  %cast_20 = memref.cast %alloc_18 : memref<?xi64> to memref<*xi64>
  %alloc_21 = memref.alloc(%6) {allocator = "default"} : memref<?xi64>
  %cast_22 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%7) {allocator = "default"} : memref<?xi64>
  %cast_24 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_25 = memref.alloc(%8) {allocator = "default"} : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst : f64) outs(%alloc_25 : memref<?xf64>)
  %cast_26 = memref.cast %alloc_25 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64_no_tiles(%c0_i32, %c0_0, %c-1, %c1_1, %c-1, %cast_7, %cast_10, %cast_17, %cast_20, %cast_26, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_15 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_21 restrict writable : memref<?xi64>
  %20 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %21 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %22 = "ta.spTensor_construct"(%from_elements, %13, %17, %14, %18, %15, %19, %16, %20, %21) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %23 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimPos"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %25 = "ta.SpTensorGetDimCrd"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %24, %c0 : tensor<?xi64>
  %dim_27 = tensor.dim %25, %c0 : tensor<?xi64>
  %26 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %27 = "ta.SpTensorGetDimSize"(%22) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %28 = "ta.SpTensorGetDimSize"(%22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_28 = memref.alloc(%28) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  %cst_29 = arith.constant 1.700000e+00 : f64
  linalg.fill ins(%cst_29 : f64) outs(%alloc_28 : memref<?x4xf64>)
  %29 = bufferization.to_tensor %alloc_28 restrict writable : memref<?x4xf64>
  %alloc_30 = memref.alloc(%27) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  %cst_31 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_31 : f64) outs(%alloc_30 : memref<?x4xf64>)
  %30 = bufferization.to_tensor %alloc_30 restrict writable : memref<?x4xf64>
  %31 = "it.itree"(%30) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %32 = "it.RootOp"() : () -> !it.index_tree
    %33 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %34) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %35 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_27, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %37 = "it.DenseDomainOp"(%idx4, %29) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %38 = "it.IndexOp"(%36, %37) : (!it.index, !it.domain) -> !it.index
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%arg0, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%arg0, %38, %pos_33) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %39 = "it.LHSOperandOp"(%arg0, %pos_33, %pos_35, %crd_32, %crd_34) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%22, %36, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %40 = "it.OperandOp"(%22, %pos, %pos_37, %crd, %crd_36) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%29, %36) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%29, %38, %pos_39) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%29, %pos_39, %pos_41, %crd_38, %crd_40) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %42 = "it.ComputeOp"(%38, %39, %40, %41) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %42 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.print"(%31) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
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
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "default"} : memref<13xindex>
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
  %alloc_1 = memref.alloc(%0) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) {allocator = "default"} : memref<?xi64>
  %alloc_6 = memref.alloc(%3) {allocator = "default"} : memref<?xi64>
  %alloc_7 = memref.alloc(%4) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%5) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%6) {allocator = "default"} : memref<?xi64>
  %alloc_12 = memref.alloc(%7) {allocator = "default"} : memref<?xi64>
  %alloc_13 = memref.alloc(%8) {allocator = "default"} : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_13 : memref<?xf64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64_no_tiles(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_8, %cast_10, %cast_14, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_1 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_3 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_5 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_15 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %25 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %26 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_16 = memref.alloc(%26) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_16 restrict writable : memref<?x4xf64>
  %alloc_17 = memref.alloc(%25) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?x4xf64>)
  %28 = bufferization.to_tensor %alloc_17 restrict writable : memref<?x4xf64>
  %29 = "it.itree"(%28) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %30 = "it.RootOp"() : () -> !it.index_tree
    %31 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %32 = "it.IndexOp"(%30, %31) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %32) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %33 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_15, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) : (!it.index, !it.domain) -> !it.index
    %35 = "it.DenseDomainOp"(%idx4, %27) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %crd_18, %pos_19 = "it.IndexToTensorDim"(%arg0, %32) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_20, %pos_21 = "it.IndexToTensorDim"(%arg0, %36, %pos_19) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %37 = "it.LHSOperandOp"(%arg0, %pos_19, %pos_21, %crd_18, %crd_20) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_22, %pos_23 = "it.IndexToTensorDim"(%20, %34, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %38 = "it.OperandOp"(%20, %pos, %pos_23, %crd, %crd_22) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_24, %pos_25 = "it.IndexToTensorDim"(%27, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_26, %pos_27 = "it.IndexToTensorDim"(%27, %36, %pos_25) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%27, %pos_25, %pos_27, %crd_24, %crd_26) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %40 = "it.ComputeOp"(%36, %37, %38, %39) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %40 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.print"(%29) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
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
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "default"} : memref<13xindex>
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
  %alloc_1 = memref.alloc(%0) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) {allocator = "default"} : memref<?xi64>
  %alloc_6 = memref.alloc(%3) {allocator = "default"} : memref<?xi64>
  %alloc_7 = memref.alloc(%4) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%5) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%6) {allocator = "default"} : memref<?xi64>
  %alloc_12 = memref.alloc(%7) {allocator = "default"} : memref<?xi64>
  %alloc_13 = memref.alloc(%8) {allocator = "default"} : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_13 : memref<?xf64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64_no_tiles(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_8, %cast_10, %cast_14, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_1 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_3 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_5 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_15 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %25 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %26 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_16 = memref.alloc(%26) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_16 restrict writable : memref<?x4xf64>
  %alloc_17 = memref.alloc(%25) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?x4xf64>)
  %28 = bufferization.to_tensor %alloc_17 restrict writable : memref<?x4xf64>
  %29 = "it.itree"(%28) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %30 = "it.RootOp"() : () -> !it.index_tree
    %31 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %32 = "it.IndexOp"(%30, %31) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %32) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %33 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_15, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) : (!it.index, !it.domain) -> !it.index
    %35 = "it.DenseDomainOp"(%idx4, %27) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %crd_18, %pos_19 = "it.IndexToTensorDim"(%arg0, %32) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_20, %pos_21 = "it.IndexToTensorDim"(%arg0, %36, %pos_19) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %37 = "it.LHSOperandOp"(%arg0, %pos_19, %pos_21, %crd_18, %crd_20) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_22, %pos_23 = "it.IndexToTensorDim"(%20, %34, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %38 = "it.OperandOp"(%20, %pos, %pos_23, %crd, %crd_22) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_24, %pos_25 = "it.IndexToTensorDim"(%27, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_26, %pos_27 = "it.IndexToTensorDim"(%27, %36, %pos_25) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%27, %pos_25, %pos_27, %crd_24, %crd_26) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %40 = "it.ComputeOp"(%36, %37, %38, %39) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %40 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.print"(%29) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
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
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "default"} : memref<13xindex>
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
  %alloc_1 = memref.alloc(%0) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) {allocator = "default"} : memref<?xi64>
  %alloc_6 = memref.alloc(%3) {allocator = "default"} : memref<?xi64>
  %alloc_7 = memref.alloc(%4) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%5) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%6) {allocator = "default"} : memref<?xi64>
  %alloc_12 = memref.alloc(%7) {allocator = "default"} : memref<?xi64>
  %alloc_13 = memref.alloc(%8) {allocator = "default"} : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_13 : memref<?xf64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64_no_tiles(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_8, %cast_10, %cast_14, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_1 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_3 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_5 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_15 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %25 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %26 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_16 = memref.alloc(%26) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_16 restrict writable : memref<?x4xf64>
  %alloc_17 = memref.alloc(%25) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?x4xf64>)
  %28 = bufferization.to_tensor %alloc_17 restrict writable : memref<?x4xf64>
  %29 = "it.itree"(%28) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %c0_18 = arith.constant 0 : index
    %c1_19 = arith.constant 1 : index
    %30 = scf.for %arg1 = %c0_18 to %21 step %c1_19 iter_args(%arg2 = %arg0) -> (tensor<?x4xf64>) {
      %c1_20 = arith.constant 1 : index
      %31 = arith.addi %arg1, %c1_20 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %32 = arith.index_cast %extracted : i64 to index
      %extracted_21 = tensor.extract %22[%31] : tensor<?xi64>
      %33 = arith.index_cast %extracted_21 : i64 to index
      %c1_22 = arith.constant 1 : index
      %34 = scf.for %arg3 = %32 to %33 step %c1_22 iter_args(%arg4 = %arg2) -> (tensor<?x4xf64>) {
        %c0_23 = arith.constant 0 : index
        %c1_24 = arith.constant 1 : index
        %35 = scf.for %arg5 = %c0_23 to %idx4 step %c1_24 iter_args(%arg6 = %arg4) -> (tensor<?x4xf64>) {
          %36 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %37 = arith.index_cast %36 : i64 to index
          %38 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %39 = arith.index_cast %38 : i64 to index
          %40 = "ta.TAExtractOp"(%20, %arg3, %arg1, %37) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %extracted_25 = tensor.extract %27[%39, %arg5] : tensor<?x4xf64>
          %41 = arith.mulf %40, %extracted_25 : f64
          %extracted_26 = tensor.extract %arg6[%arg1, %arg5] : tensor<?x4xf64>
          %42 = arith.addf %extracted_26, %41 : f64
          %inserted = tensor.insert %42 into %arg6[%arg1, %arg5] : tensor<?x4xf64>
          scf.yield %inserted : tensor<?x4xf64>
        }
        scf.yield %35 : tensor<?x4xf64>
      }
      scf.yield %34 : tensor<?x4xf64>
    }
    it.yield %30 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.print"(%29) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
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
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "default"} : memref<13xindex>
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
  %alloc_1 = memref.alloc(%0) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) {allocator = "default"} : memref<?xi64>
  %alloc_6 = memref.alloc(%3) {allocator = "default"} : memref<?xi64>
  %alloc_7 = memref.alloc(%4) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%5) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%6) {allocator = "default"} : memref<?xi64>
  %alloc_12 = memref.alloc(%7) {allocator = "default"} : memref<?xi64>
  %alloc_13 = memref.alloc(%8) {allocator = "default"} : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_13 : memref<?xf64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64_no_tiles(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_8, %cast_10, %cast_14, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_1 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_3 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_5 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_15 = memref.alloc(%24) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_15 : memref<?x4xf64>)
  %25 = bufferization.to_tensor %alloc_15 restrict writable : memref<?x4xf64>
  %alloc_16 = memref.alloc(%23) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_16 : memref<?x4xf64>)
  %26 = bufferization.to_tensor %alloc_16 restrict writable : memref<?x4xf64>
  %27 = "it.itree"(%26) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %28 = scf.for %arg1 = %c0 to %21 step %c1 iter_args(%arg2 = %arg0) -> (tensor<?x4xf64>) {
      %29 = arith.addi %arg1, %c1 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %30 = arith.index_cast %extracted : i64 to index
      %extracted_17 = tensor.extract %22[%29] : tensor<?xi64>
      %31 = arith.index_cast %extracted_17 : i64 to index
      %32 = scf.for %arg3 = %30 to %31 step %c1 iter_args(%arg4 = %arg2) -> (tensor<?x4xf64>) {
        %33 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %arg4) -> (tensor<?x4xf64>) {
          %34 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %35 = arith.index_cast %34 : i64 to index
          %36 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %37 = arith.index_cast %36 : i64 to index
          %38 = "ta.TAExtractOp"(%20, %arg3, %arg1, %35) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %extracted_18 = tensor.extract %25[%37, %arg5] : tensor<?x4xf64>
          %39 = arith.mulf %38, %extracted_18 : f64
          %extracted_19 = tensor.extract %arg6[%arg1, %arg5] : tensor<?x4xf64>
          %40 = arith.addf %extracted_19, %39 : f64
          %inserted = tensor.insert %40 into %arg6[%arg1, %arg5] : tensor<?x4xf64>
          scf.yield %inserted : tensor<?x4xf64>
        }
        scf.yield %33 : tensor<?x4xf64>
      }
      scf.yield %32 : tensor<?x4xf64>
    }
    it.yield %28 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.print"(%27) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
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
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "default"} : memref<13xindex>
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
  %alloc_1 = memref.alloc(%0) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) {allocator = "default"} : memref<?xi64>
  %alloc_6 = memref.alloc(%3) {allocator = "default"} : memref<?xi64>
  %alloc_7 = memref.alloc(%4) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%5) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%6) {allocator = "default"} : memref<?xi64>
  %alloc_12 = memref.alloc(%7) {allocator = "default"} : memref<?xi64>
  %alloc_13 = memref.alloc(%8) {allocator = "default"} : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_13 : memref<?xf64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64_no_tiles(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_8, %cast_10, %cast_14, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_1 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_3 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_5 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_15 = memref.alloc(%24) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_15 : memref<?x4xf64>)
  %25 = bufferization.to_tensor %alloc_15 restrict writable : memref<?x4xf64>
  %alloc_16 = memref.alloc(%23) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_16 : memref<?x4xf64>)
  %26 = bufferization.to_tensor %alloc_16 restrict writable : memref<?x4xf64>
  %27 = "it.itree"(%26) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %28 = scf.for %arg1 = %c0 to %21 step %c1 iter_args(%arg2 = %arg0) -> (tensor<?x4xf64>) {
      %29 = arith.addi %arg1, %c1 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %30 = arith.index_cast %extracted : i64 to index
      %extracted_17 = tensor.extract %22[%29] : tensor<?xi64>
      %31 = arith.index_cast %extracted_17 : i64 to index
      %32 = scf.for %arg3 = %30 to %31 step %c1 iter_args(%arg4 = %arg2) -> (tensor<?x4xf64>) {
        %33 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %arg4) -> (tensor<?x4xf64>) {
          %34 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %35 = arith.index_cast %34 : i64 to index
          %36 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %37 = arith.index_cast %36 : i64 to index
          %38 = "ta.TAExtractOp"(%20, %arg3, %arg1, %35) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %extracted_18 = tensor.extract %25[%37, %arg5] : tensor<?x4xf64>
          %39 = arith.mulf %38, %extracted_18 : f64
          %extracted_19 = tensor.extract %arg6[%arg1, %arg5] : tensor<?x4xf64>
          %40 = arith.addf %extracted_19, %39 : f64
          %inserted = tensor.insert %40 into %arg6[%arg1, %arg5] : tensor<?x4xf64>
          scf.yield %inserted : tensor<?x4xf64>
        }
        scf.yield %33 : tensor<?x4xf64>
      }
      scf.yield %32 : tensor<?x4xf64>
    }
    it.yield %28 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.print"(%27) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
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
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "default"} : memref<13xindex>
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
  %alloc_1 = memref.alloc(%0) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) {allocator = "default"} : memref<?xi64>
  %alloc_6 = memref.alloc(%3) {allocator = "default"} : memref<?xi64>
  %alloc_7 = memref.alloc(%4) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%5) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%6) {allocator = "default"} : memref<?xi64>
  %alloc_12 = memref.alloc(%7) {allocator = "default"} : memref<?xi64>
  %alloc_13 = memref.alloc(%8) {allocator = "default"} : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_13 : memref<?xf64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64_no_tiles(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_8, %cast_10, %cast_14, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_1 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_3 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_5 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %idx0 = index.constant 0
  %idx0_15 = index.constant 0
  %20 = builtin.unrealized_conversion_cast %from_elements, %idx0, %11, %idx0_15, %15, %16, %19 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_16 = index.constant 0
  %extracted = tensor.extract %from_elements[%idx0_16] : tensor<2xindex>
  %idx0_17 = index.constant 0
  %extracted_18 = tensor.extract %from_elements[%idx0_17] : tensor<2xindex>
  %idx1 = index.constant 1
  %extracted_19 = tensor.extract %from_elements[%idx1] : tensor<2xindex>
  %alloc_20 = memref.alloc(%extracted_19) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_20 : memref<?x4xf64>)
  %21 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %alloc_21 = memref.alloc(%extracted_18) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %22 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %23 = "it.itree"(%22) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %24 = scf.for %arg1 = %c0 to %extracted step %c1 iter_args(%arg2 = %arg0) -> (tensor<?x4xf64>) {
      %25 = arith.addi %arg1, %c1 : index
      %extracted_22 = tensor.extract %15[%arg1] : tensor<?xi64>
      %26 = arith.index_cast %extracted_22 : i64 to index
      %extracted_23 = tensor.extract %15[%25] : tensor<?xi64>
      %27 = arith.index_cast %extracted_23 : i64 to index
      %28 = scf.for %arg3 = %26 to %27 step %c1 iter_args(%arg4 = %arg2) -> (tensor<?x4xf64>) {
        %29 = scf.for %arg5 = %c0 to %idx4 step %c1 iter_args(%arg6 = %arg4) -> (tensor<?x4xf64>) {
          %extracted_24 = tensor.extract %16[%arg3] : tensor<?xi64>
          %30 = arith.index_cast %extracted_24 : i64 to index
          %extracted_25 = tensor.extract %16[%arg3] : tensor<?xi64>
          %31 = arith.index_cast %extracted_25 : i64 to index
          %extracted_26 = tensor.extract %19[%arg3] : tensor<?xf64>
          %extracted_27 = tensor.extract %21[%31, %arg5] : tensor<?x4xf64>
          %32 = arith.mulf %extracted_26, %extracted_27 : f64
          %extracted_28 = tensor.extract %arg6[%arg1, %arg5] : tensor<?x4xf64>
          %33 = arith.addf %extracted_28, %32 : f64
          %inserted = tensor.insert %33 into %arg6[%arg1, %arg5] : tensor<?x4xf64>
          scf.yield %inserted : tensor<?x4xf64>
        }
        scf.yield %29 : tensor<?x4xf64>
      }
      scf.yield %28 : tensor<?x4xf64>
    }
    it.yield %24 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.print"(%23) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
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
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "default"} : memref<13xindex>
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
  %alloc_1 = memref.alloc(%0) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) {allocator = "default"} : memref<?xi64>
  %alloc_6 = memref.alloc(%3) {allocator = "default"} : memref<?xi64>
  %alloc_7 = memref.alloc(%4) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%5) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%6) {allocator = "default"} : memref<?xi64>
  %alloc_12 = memref.alloc(%7) {allocator = "default"} : memref<?xi64>
  %alloc_13 = memref.alloc(%8) {allocator = "default"} : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_13 : memref<?xf64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64_no_tiles(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_8, %cast_10, %cast_14, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_1 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_3 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_5 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_13 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %idx0 = index.constant 0
  %idx0_15 = index.constant 0
  %20 = builtin.unrealized_conversion_cast %from_elements, %idx0, %11, %idx0_15, %15, %16, %19 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_16 = index.constant 0
  %idx0_17 = index.constant 0
  %idx1 = index.constant 1
  %alloc_18 = memref.alloc(%10) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_18 : memref<?x4xf64>)
  %21 = bufferization.to_tensor %alloc_18 restrict writable : memref<?x4xf64>
  %alloc_19 = memref.alloc(%9) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_19 : memref<?x4xf64>)
  %22 = bufferization.to_tensor %alloc_19 restrict writable : memref<?x4xf64>
  %23 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %22) -> (tensor<?x4xf64>) {
    %24 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
    %25 = arith.index_cast %extracted : i64 to index
    %extracted_20 = tensor.extract %15[%24] : tensor<?xi64>
    %26 = arith.index_cast %extracted_20 : i64 to index
    %27 = scf.for %arg2 = %25 to %26 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x4xf64>) {
      %28 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x4xf64>) {
        %extracted_21 = tensor.extract %16[%arg2] : tensor<?xi64>
        %29 = arith.index_cast %extracted_21 : i64 to index
        %extracted_22 = tensor.extract %16[%arg2] : tensor<?xi64>
        %30 = arith.index_cast %extracted_22 : i64 to index
        %extracted_23 = tensor.extract %19[%arg2] : tensor<?xf64>
        %extracted_24 = tensor.extract %21[%30, %arg4] : tensor<?x4xf64>
        %31 = arith.mulf %extracted_23, %extracted_24 : f64
        %extracted_25 = tensor.extract %arg5[%arg0, %arg4] : tensor<?x4xf64>
        %32 = arith.addf %extracted_25, %31 : f64
        %inserted = tensor.insert %32 into %arg5[%arg0, %arg4] : tensor<?x4xf64>
        scf.yield %inserted : tensor<?x4xf64>
      }
      scf.yield %28 : tensor<?x4xf64>
    }
    scf.yield %27 : tensor<?x4xf64>
  }
  "ta.print"(%23) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "default"} : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<13xindex>
  %1 = memref.load %alloc[%c1] : memref<13xindex>
  %2 = memref.load %alloc[%c4] : memref<13xindex>
  %3 = memref.load %alloc[%c5] : memref<13xindex>
  %4 = memref.load %alloc[%c8] : memref<13xindex>
  %5 = memref.load %alloc[%c9] : memref<13xindex>
  %6 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_1 = memref.alloc(%0) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) {allocator = "default"} : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_9 : memref<?xf64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64_no_tiles(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %7 = bufferization.to_tensor %alloc_5 restrict writable : memref<?xi64>
  %8 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %9 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xf64>
  %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x4xf64>)
  %10 = bufferization.to_tensor %alloc_11 restrict writable : memref<?x4xf64>
  %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x4xf64>)
  %11 = bufferization.to_tensor %alloc_12 restrict writable : memref<?x4xf64>
  %12 = scf.for %arg0 = %c0 to %5 step %c1 iter_args(%arg1 = %11) -> (tensor<?x4xf64>) {
    %13 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %7[%arg0] : tensor<?xi64>
    %14 = arith.index_cast %extracted : i64 to index
    %extracted_13 = tensor.extract %7[%13] : tensor<?xi64>
    %15 = arith.index_cast %extracted_13 : i64 to index
    %16 = scf.for %arg2 = %14 to %15 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x4xf64>) {
      %17 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x4xf64>) {
        %extracted_14 = tensor.extract %8[%arg2] : tensor<?xi64>
        %18 = arith.index_cast %extracted_14 : i64 to index
        %extracted_15 = tensor.extract %9[%arg2] : tensor<?xf64>
        %extracted_16 = tensor.extract %10[%18, %arg4] : tensor<?x4xf64>
        %19 = arith.mulf %extracted_15, %extracted_16 : f64
        %extracted_17 = tensor.extract %arg5[%arg0, %arg4] : tensor<?x4xf64>
        %20 = arith.addf %extracted_17, %19 : f64
        %inserted = tensor.insert %20 into %arg5[%arg0, %arg4] : tensor<?x4xf64>
        scf.yield %inserted : tensor<?x4xf64>
      }
      scf.yield %17 : tensor<?x4xf64>
    }
    scf.yield %16 : tensor<?x4xf64>
  }
  "ta.print"(%12) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "default"} : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<13xindex>
  %1 = memref.load %alloc[%c1] : memref<13xindex>
  %2 = memref.load %alloc[%c4] : memref<13xindex>
  %3 = memref.load %alloc[%c5] : memref<13xindex>
  %4 = memref.load %alloc[%c8] : memref<13xindex>
  %5 = memref.load %alloc[%c9] : memref<13xindex>
  %6 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_1 = memref.alloc(%0) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) {allocator = "default"} : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_9 : memref<?xf64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64_no_tiles(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %7 = bufferization.to_tensor %alloc_5 restrict writable : memref<?xi64>
  %8 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %9 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xf64>
  %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x4xf64>)
  %10 = bufferization.to_tensor %alloc_11 restrict writable : memref<?x4xf64>
  %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x4xf64>)
  %11 = bufferization.to_tensor %alloc_12 restrict writable : memref<?x4xf64>
  %12 = scf.for %arg0 = %c0 to %5 step %c1 iter_args(%arg1 = %11) -> (tensor<?x4xf64>) {
    %13 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %7[%arg0] : tensor<?xi64>
    %14 = arith.index_cast %extracted : i64 to index
    %extracted_13 = tensor.extract %7[%13] : tensor<?xi64>
    %15 = arith.index_cast %extracted_13 : i64 to index
    %16 = scf.for %arg2 = %14 to %15 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x4xf64>) {
      %extracted_14 = tensor.extract %8[%arg2] : tensor<?xi64>
      %17 = arith.index_cast %extracted_14 : i64 to index
      %extracted_15 = tensor.extract %9[%arg2] : tensor<?xf64>
      %18 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x4xf64>) {
        %extracted_16 = tensor.extract %10[%17, %arg4] : tensor<?x4xf64>
        %19 = arith.mulf %extracted_15, %extracted_16 : f64
        %extracted_17 = tensor.extract %arg5[%arg0, %arg4] : tensor<?x4xf64>
        %20 = arith.addf %extracted_17, %19 : f64
        %inserted = tensor.insert %20 into %arg5[%arg0, %arg4] : tensor<?x4xf64>
        scf.yield %inserted : tensor<?x4xf64>
      }
      scf.yield %18 : tensor<?x4xf64>
    }
    scf.yield %16 : tensor<?x4xf64>
  }
  "ta.print"(%12) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "default"} : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<13xindex>
  %1 = memref.load %alloc[%c1] : memref<13xindex>
  %2 = memref.load %alloc[%c4] : memref<13xindex>
  %3 = memref.load %alloc[%c5] : memref<13xindex>
  %4 = memref.load %alloc[%c8] : memref<13xindex>
  %5 = memref.load %alloc[%c9] : memref<13xindex>
  %6 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_1 = memref.alloc(%0) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) {allocator = "default"} : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_9 : memref<?xf64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64_no_tiles(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %7 = bufferization.to_tensor %alloc_5 restrict writable : memref<?xi64>
  %8 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
  %9 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xf64>
  %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x4xf64>)
  %10 = bufferization.to_tensor %alloc_11 restrict writable : memref<?x4xf64>
  %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x4xf64>)
  %11 = bufferization.to_tensor %alloc_12 restrict writable : memref<?x4xf64>
  %12 = scf.for %arg0 = %c0 to %5 step %c1 iter_args(%arg1 = %11) -> (tensor<?x4xf64>) {
    %13 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %7[%arg0] : tensor<?xi64>
    %14 = arith.index_cast %extracted : i64 to index
    %extracted_13 = tensor.extract %7[%13] : tensor<?xi64>
    %15 = arith.index_cast %extracted_13 : i64 to index
    %16 = scf.for %arg2 = %14 to %15 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x4xf64>) {
      %extracted_14 = tensor.extract %8[%arg2] : tensor<?xi64>
      %17 = arith.index_cast %extracted_14 : i64 to index
      %extracted_15 = tensor.extract %9[%arg2] : tensor<?xf64>
      %18 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x4xf64>) {
        %extracted_16 = tensor.extract %10[%17, %arg4] : tensor<?x4xf64>
        %19 = arith.mulf %extracted_15, %extracted_16 : f64
        %extracted_17 = tensor.extract %arg5[%arg0, %arg4] : tensor<?x4xf64>
        %20 = arith.addf %extracted_17, %19 : f64
        %inserted = tensor.insert %20 into %arg5[%arg0, %arg4] : tensor<?x4xf64>
        scf.yield %inserted : tensor<?x4xf64>
      }
      scf.yield %18 : tensor<?x4xf64>
    }
    scf.yield %16 : tensor<?x4xf64>
  }
  "ta.print"(%12) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() {allocator = "default"} : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<13xindex>
    %1 = memref.load %alloc[%c1] : memref<13xindex>
    %2 = memref.load %alloc[%c4] : memref<13xindex>
    %3 = memref.load %alloc[%c5] : memref<13xindex>
    %4 = memref.load %alloc[%c8] : memref<13xindex>
    %5 = memref.load %alloc[%c9] : memref<13xindex>
    %6 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) {allocator = "default"} : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_9 : memref<?xf64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64_no_tiles(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %7 = bufferization.to_tensor %alloc_5 restrict writable : memref<?xi64>
    %8 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
    %9 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xf64>
    %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x4xf64>)
    %10 = bufferization.to_tensor %alloc_11 restrict writable : memref<?x4xf64>
    %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x4xf64>)
    %11 = bufferization.to_tensor %alloc_12 restrict writable : memref<?x4xf64>
    %12 = scf.for %arg0 = %c0 to %5 step %c1 iter_args(%arg1 = %11) -> (tensor<?x4xf64>) {
      %13 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %7[%arg0] : tensor<?xi64>
      %14 = arith.index_cast %extracted : i64 to index
      %extracted_13 = tensor.extract %7[%13] : tensor<?xi64>
      %15 = arith.index_cast %extracted_13 : i64 to index
      %16 = scf.for %arg2 = %14 to %15 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x4xf64>) {
        %extracted_14 = tensor.extract %8[%arg2] : tensor<?xi64>
        %17 = arith.index_cast %extracted_14 : i64 to index
        %extracted_15 = tensor.extract %9[%arg2] : tensor<?xf64>
        %18 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x4xf64>) {
          %extracted_16 = tensor.extract %10[%17, %arg4] : tensor<?x4xf64>
          %19 = arith.mulf %extracted_15, %extracted_16 : f64
          %extracted_17 = tensor.extract %arg5[%arg0, %arg4] : tensor<?x4xf64>
          %20 = arith.addf %extracted_17, %19 : f64
          %inserted = tensor.insert %20 into %arg5[%arg0, %arg4] : tensor<?x4xf64>
          scf.yield %inserted : tensor<?x4xf64>
        }
        scf.yield %18 : tensor<?x4xf64>
      }
      scf.yield %16 : tensor<?x4xf64>
    }
    "ta.print"(%12) : (tensor<?x4xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64_no_tiles(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() {allocator = "default"} : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<13xindex>
    %1 = memref.load %alloc[%c1] : memref<13xindex>
    %2 = memref.load %alloc[%c4] : memref<13xindex>
    %3 = memref.load %alloc[%c5] : memref<13xindex>
    %4 = memref.load %alloc[%c8] : memref<13xindex>
    %5 = memref.load %alloc[%c9] : memref<13xindex>
    %6 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) {allocator = "default"} : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_9 : memref<?xf64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64_no_tiles(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %7 = bufferization.to_tensor %alloc_5 restrict writable : memref<?xi64>
    %8 = bufferization.to_tensor %alloc_7 restrict writable : memref<?xi64>
    %9 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xf64>
    %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x4xf64>)
    %10 = bufferization.to_tensor %alloc_11 restrict writable : memref<?x4xf64>
    %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x4xf64>)
    %11 = bufferization.to_tensor %alloc_12 restrict writable : memref<?x4xf64>
    %12 = scf.for %arg0 = %c0 to %5 step %c1 iter_args(%arg1 = %11) -> (tensor<?x4xf64>) {
      %13 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %7[%arg0] : tensor<?xi64>
      %14 = arith.index_cast %extracted : i64 to index
      %extracted_13 = tensor.extract %7[%13] : tensor<?xi64>
      %15 = arith.index_cast %extracted_13 : i64 to index
      %16 = scf.for %arg2 = %14 to %15 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x4xf64>) {
        %extracted_14 = tensor.extract %8[%arg2] : tensor<?xi64>
        %17 = arith.index_cast %extracted_14 : i64 to index
        %extracted_15 = tensor.extract %9[%arg2] : tensor<?xf64>
        %18 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x4xf64>) {
          %extracted_16 = tensor.extract %10[%17, %arg4] : tensor<?x4xf64>
          %19 = arith.mulf %extracted_15, %extracted_16 : f64
          %extracted_17 = tensor.extract %arg5[%arg0, %arg4] : tensor<?x4xf64>
          %20 = arith.addf %extracted_17, %19 : f64
          %inserted = tensor.insert %20 into %arg5[%arg0, %arg4] : tensor<?x4xf64>
          scf.yield %inserted : tensor<?x4xf64>
        }
        scf.yield %18 : tensor<?x4xf64>
      }
      scf.yield %16 : tensor<?x4xf64>
    }
    "ta.print"(%12) : (tensor<?x4xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64_no_tiles(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After OneShotBufferize (one-shot-bufferize) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() {allocator = "default"} : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<13xindex>
    %1 = memref.load %alloc[%c1] : memref<13xindex>
    %2 = memref.load %alloc[%c4] : memref<13xindex>
    %3 = memref.load %alloc[%c5] : memref<13xindex>
    %4 = memref.load %alloc[%c8] : memref<13xindex>
    %5 = memref.load %alloc[%c9] : memref<13xindex>
    %6 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) {allocator = "default"} : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_9 : memref<?xf64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64_no_tiles(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x4xf64>)
    %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x4xf64>)
    %7 = scf.for %arg0 = %c0 to %5 step %c1 iter_args(%arg1 = %alloc_12) -> (memref<?x4xf64>) {
      %9 = arith.addi %arg0, %c1 : index
      %10 = memref.load %alloc_5[%arg0] : memref<?xi64>
      %11 = arith.index_cast %10 : i64 to index
      %12 = memref.load %alloc_5[%9] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = scf.for %arg2 = %11 to %13 step %c1 iter_args(%arg3 = %arg1) -> (memref<?x4xf64>) {
        %15 = memref.load %alloc_7[%arg2] : memref<?xi64>
        %16 = arith.index_cast %15 : i64 to index
        %17 = memref.load %alloc_9[%arg2] : memref<?xf64>
        %18 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (memref<?x4xf64>) {
          %19 = memref.load %alloc_11[%16, %arg4] : memref<?x4xf64>
          %20 = arith.mulf %17, %19 : f64
          %21 = memref.load %arg5[%arg0, %arg4] : memref<?x4xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %arg5[%arg0, %arg4] : memref<?x4xf64>
          scf.yield %arg5 : memref<?x4xf64>
        }
        scf.yield %18 : memref<?x4xf64>
      }
      scf.yield %14 : memref<?x4xf64>
    }
    %8 = bufferization.to_tensor %7 : memref<?x4xf64>
    "ta.print"(%8) : (tensor<?x4xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64_no_tiles(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_2D_f64_i64_no_tiles(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @read_input_2D_f64_i64_no_tiles(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "default"} : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<13xindex>
  %1 = memref.load %alloc[%c1] : memref<13xindex>
  %2 = memref.load %alloc[%c4] : memref<13xindex>
  %3 = memref.load %alloc[%c5] : memref<13xindex>
  %4 = memref.load %alloc[%c8] : memref<13xindex>
  %5 = memref.load %alloc[%c9] : memref<13xindex>
  %6 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_1 = memref.alloc(%0) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) {allocator = "default"} : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_9 : memref<?xf64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64_no_tiles(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x4xf64>)
  %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x4xf64>)
  %7 = scf.for %arg0 = %c0 to %5 step %c1 iter_args(%arg1 = %alloc_12) -> (memref<?x4xf64>) {
    %9 = arith.addi %arg0, %c1 : index
    %10 = memref.load %alloc_5[%arg0] : memref<?xi64>
    %11 = arith.index_cast %10 : i64 to index
    %12 = memref.load %alloc_5[%9] : memref<?xi64>
    %13 = arith.index_cast %12 : i64 to index
    %14 = scf.for %arg2 = %11 to %13 step %c1 iter_args(%arg3 = %arg1) -> (memref<?x4xf64>) {
      %15 = memref.load %alloc_7[%arg2] : memref<?xi64>
      %16 = arith.index_cast %15 : i64 to index
      %17 = memref.load %alloc_9[%arg2] : memref<?xf64>
      %18 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (memref<?x4xf64>) {
        %19 = memref.load %alloc_11[%16, %arg4] : memref<?x4xf64>
        %20 = arith.mulf %17, %19 : f64
        %21 = memref.load %arg5[%arg0, %arg4] : memref<?x4xf64>
        %22 = arith.addf %21, %20 : f64
        memref.store %22, %arg5[%arg0, %arg4] : memref<?x4xf64>
        scf.yield %arg5 : memref<?x4xf64>
      }
      scf.yield %18 : memref<?x4xf64>
    }
    scf.yield %14 : memref<?x4xf64>
  }
  %8 = bufferization.to_tensor %7 : memref<?x4xf64>
  "ta.print"(%8) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
  %c0_i64 = arith.constant 0 : i64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c-1 = arith.constant -1 : index
  %idx4 = index.constant 4
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "default"} : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<13xindex>
  %1 = memref.load %alloc[%c1] : memref<13xindex>
  %2 = memref.load %alloc[%c4] : memref<13xindex>
  %3 = memref.load %alloc[%c5] : memref<13xindex>
  %4 = memref.load %alloc[%c8] : memref<13xindex>
  %5 = memref.load %alloc[%c9] : memref<13xindex>
  %6 = memref.load %alloc[%c10] : memref<13xindex>
  %alloc_1 = memref.alloc(%0) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) {allocator = "default"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) {allocator = "default"} : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_9 : memref<?xf64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64_no_tiles(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x4xf64>)
  %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x4xf64>)
  %7 = scf.for %arg0 = %c0 to %5 step %c1 iter_args(%arg1 = %alloc_12) -> (memref<?x4xf64>) {
    %10 = arith.addi %arg0, %c1 : index
    %11 = memref.load %alloc_5[%arg0] : memref<?xi64>
    %12 = arith.index_cast %11 : i64 to index
    %13 = memref.load %alloc_5[%10] : memref<?xi64>
    %14 = arith.index_cast %13 : i64 to index
    %15 = scf.for %arg2 = %12 to %14 step %c1 iter_args(%arg3 = %arg1) -> (memref<?x4xf64>) {
      %16 = memref.load %alloc_7[%arg2] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = memref.load %alloc_9[%arg2] : memref<?xf64>
      %19 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (memref<?x4xf64>) {
        %20 = memref.load %alloc_11[%17, %arg4] : memref<?x4xf64>
        %21 = arith.mulf %18, %20 : f64
        %22 = memref.load %arg5[%arg0, %arg4] : memref<?x4xf64>
        %23 = arith.addf %22, %21 : f64
        memref.store %23, %arg5[%arg0, %arg4] : memref<?x4xf64>
        scf.yield %arg5 : memref<?x4xf64>
      }
      scf.yield %19 : memref<?x4xf64>
    }
    scf.yield %15 : memref<?x4xf64>
  }
  %8 = bufferization.to_tensor %7 : memref<?x4xf64>
  %9 = bufferization.to_memref %8 : memref<?x4xf64>
  %cast_13 = memref.cast %9 : memref<?x4xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_13) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() {allocator = "default"} : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<13xindex>
    %1 = memref.load %alloc[%c1] : memref<13xindex>
    %2 = memref.load %alloc[%c4] : memref<13xindex>
    %3 = memref.load %alloc[%c5] : memref<13xindex>
    %4 = memref.load %alloc[%c8] : memref<13xindex>
    %5 = memref.load %alloc[%c9] : memref<13xindex>
    %6 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) {allocator = "default"} : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_9 : memref<?xf64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64_no_tiles(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x4xf64>)
    %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x4xf64>)
    scf.for %arg0 = %c0 to %5 step %c1 {
      %7 = arith.addi %arg0, %c1 : index
      %8 = memref.load %alloc_5[%arg0] : memref<?xi64>
      %9 = arith.index_cast %8 : i64 to index
      %10 = memref.load %alloc_5[%7] : memref<?xi64>
      %11 = arith.index_cast %10 : i64 to index
      scf.for %arg1 = %9 to %11 step %c1 {
        %12 = memref.load %alloc_7[%arg1] : memref<?xi64>
        %13 = arith.index_cast %12 : i64 to index
        %14 = memref.load %alloc_9[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %15 = memref.load %alloc_11[%13, %arg2] : memref<?x4xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = memref.load %alloc_12[%arg0, %arg2] : memref<?x4xf64>
          %18 = arith.addf %17, %16 : f64
          memref.store %18, %alloc_12[%arg0, %arg2] : memref<?x4xf64>
        }
      }
    }
    %cast_13 = memref.cast %alloc_12 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_13) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64_no_tiles(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() {allocator = "default"} : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<13xindex>
    %1 = memref.load %alloc[%c1] : memref<13xindex>
    %2 = memref.load %alloc[%c4] : memref<13xindex>
    %3 = memref.load %alloc[%c5] : memref<13xindex>
    %4 = memref.load %alloc[%c8] : memref<13xindex>
    %5 = memref.load %alloc[%c9] : memref<13xindex>
    %6 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) {allocator = "default"} : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_9 : memref<?xf64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64_no_tiles(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x4xf64>)
    %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x4xf64>)
    scf.for %arg0 = %c0 to %5 step %c1 {
      %7 = arith.addi %arg0, %c1 : index
      %8 = memref.load %alloc_5[%arg0] : memref<?xi64>
      %9 = arith.index_cast %8 : i64 to index
      %10 = memref.load %alloc_5[%7] : memref<?xi64>
      %11 = arith.index_cast %10 : i64 to index
      scf.for %arg1 = %9 to %11 step %c1 {
        %12 = memref.load %alloc_7[%arg1] : memref<?xi64>
        %13 = arith.index_cast %12 : i64 to index
        %14 = memref.load %alloc_9[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %15 = memref.load %alloc_11[%13, %arg2] : memref<?x4xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = memref.load %alloc_12[%arg0, %arg2] : memref<?x4xf64>
          %18 = arith.addf %17, %16 : f64
          memref.store %18, %alloc_12[%arg0, %arg2] : memref<?x4xf64>
        }
      }
    }
    %cast_13 = memref.cast %alloc_12 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_13) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64_no_tiles(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() {allocator = "default"} : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<13xindex>
    %1 = memref.load %alloc[%c1] : memref<13xindex>
    %2 = memref.load %alloc[%c4] : memref<13xindex>
    %3 = memref.load %alloc[%c5] : memref<13xindex>
    %4 = memref.load %alloc[%c8] : memref<13xindex>
    %5 = memref.load %alloc[%c9] : memref<13xindex>
    %6 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) {allocator = "default"} : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_9 : memref<?xf64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64_no_tiles(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x4xf64>)
    %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x4xf64>)
    scf.for %arg0 = %c0 to %5 step %c1 {
      %7 = arith.addi %arg0, %c1 : index
      %8 = memref.load %alloc_5[%arg0] : memref<?xi64>
      %9 = arith.index_cast %8 : i64 to index
      %10 = memref.load %alloc_5[%7] : memref<?xi64>
      %11 = arith.index_cast %10 : i64 to index
      scf.for %arg1 = %9 to %11 step %c1 {
        %12 = memref.load %alloc_7[%arg1] : memref<?xi64>
        %13 = arith.index_cast %12 : i64 to index
        %14 = memref.load %alloc_9[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %15 = memref.load %alloc_11[%13, %arg2] : memref<?x4xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = memref.load %alloc_12[%arg0, %arg2] : memref<?x4xf64>
          %18 = arith.addf %17, %16 : f64
          memref.store %18, %alloc_12[%arg0, %arg2] : memref<?x4xf64>
        }
      }
    }
    %cast_13 = memref.cast %alloc_12 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_13) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64_no_tiles(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c-1 = arith.constant -1 : index
    %idx4 = index.constant 4
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() {allocator = "default"} : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<13xindex>
    %1 = memref.load %alloc[%c1] : memref<13xindex>
    %2 = memref.load %alloc[%c4] : memref<13xindex>
    %3 = memref.load %alloc[%c5] : memref<13xindex>
    %4 = memref.load %alloc[%c8] : memref<13xindex>
    %5 = memref.load %alloc[%c9] : memref<13xindex>
    %6 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_1 = memref.alloc(%0) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) {allocator = "default"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) {allocator = "default"} : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_9 : memref<?xf64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64_no_tiles(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x4xf64>)
    %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x4xf64>)
    scf.for %arg0 = %c0 to %5 step %c1 {
      %7 = arith.addi %arg0, %c1 : index
      %8 = memref.load %alloc_5[%arg0] : memref<?xi64>
      %9 = arith.index_cast %8 : i64 to index
      %10 = memref.load %alloc_5[%7] : memref<?xi64>
      %11 = arith.index_cast %10 : i64 to index
      scf.for %arg1 = %9 to %11 step %c1 {
        %12 = memref.load %alloc_7[%arg1] : memref<?xi64>
        %13 = arith.index_cast %12 : i64 to index
        %14 = memref.load %alloc_9[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %15 = memref.load %alloc_11[%13, %arg2] : memref<?x4xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = memref.load %alloc_12[%arg0, %arg2] : memref<?x4xf64>
          %18 = arith.addf %17, %16 : f64
          memref.store %18, %alloc_12[%arg0, %arg2] : memref<?x4xf64>
        }
      }
    }
    %cast_13 = memref.cast %alloc_12 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_13) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64_no_tiles(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}
