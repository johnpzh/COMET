// -----// IR Dump After {anonymous}::FuncOpLoweringPass () //----- //
#map = affine_map<(d0, d1, d2) -> (d0, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.spTensor_decl"() <{allocator = "rapid", format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %c0 = arith.constant 0 : index
    %4 = "ta.dim"(%3, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %c1 = arith.constant 1 : index
    %5 = "ta.dim"(%3, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %6 = "ta.dense_tensor_decl"(%5) <{allocator = "rapid", format = "Dense"}> : (index) -> tensor<?x4xf64>
    %7 = "ta.dense_tensor_decl"(%4) <{allocator = "rapid", format = "Dense"}> : (index) -> tensor<?x4xf64>
    "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%6) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    %8 = "ta.mul"(%3, %6, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["CSR", "Dense", "Dense"], indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<?x4xf64>
    "ta.set_op"(%8, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    "ta.print"(%7) : (tensor<?x4xf64>) -> ()
    return
  }
}


// -----// IR Dump After {anonymous}::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.spTensor_decl"() <{allocator = "rapid", format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %c0 = arith.constant 0 : index
  %4 = "ta.dim"(%3, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1 = arith.constant 1 : index
  %5 = "ta.dim"(%3, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %6 = "ta.dense_tensor_decl"(%5) <{allocator = "rapid", format = "Dense"}> : (index) -> tensor<?x4xf64>
  %7 = "ta.dense_tensor_decl"(%4) <{allocator = "rapid", format = "Dense"}> : (index) -> tensor<?x4xf64>
  "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%6) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %8 = "ta.mul"(%3, %6, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["CSR", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x4xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<?x4xf64>
  "ta.set_op"(%8, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%7) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After {anonymous}::LowerTensorAlgebraToIndexTreePass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.spTensor_decl"() <{allocator = "rapid", format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %c0 = arith.constant 0 : index
  %4 = "ta.dim"(%3, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1 = arith.constant 1 : index
  %5 = "ta.dim"(%3, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %6 = "ta.dense_tensor_decl"(%5) <{allocator = "rapid", format = "Dense"}> : (index) -> tensor<?x4xf64>
  %7 = "ta.dense_tensor_decl"(%4) <{allocator = "rapid", format = "Dense"}> : (index) -> tensor<?x4xf64>
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
  %0 = "ta.spTensor_decl"() <{allocator = "rapid", format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %1 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %2 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %3 = "ta.dense_tensor_decl"(%2) <{allocator = "rapid", format = "Dense"}> : (index) -> tensor<?x4xf64>
  %4 = "ta.dense_tensor_decl"(%1) <{allocator = "rapid", format = "Dense"}> : (index) -> tensor<?x4xf64>
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

// -----// IR Dump After {anonymous}::SparseTensorDeclLoweringPass () //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
  %alloc_6 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_12 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_12 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_15 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_15 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_18 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_18 : i64) outs(%alloc_17 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_17 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_21 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_21 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_24 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_24 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_27 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_27 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
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
  %25 = "ta.dense_tensor_decl"(%24) <{allocator = "rapid", format = "Dense"}> : (index) -> tensor<?x4xf64>
  %26 = "ta.dense_tensor_decl"(%23) <{allocator = "rapid", format = "Dense"}> : (index) -> tensor<?x4xf64>
  "ta.fill"(%25) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %27 = "it.itree"(%26) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %28 = "it.RootOp"() : () -> !it.index_tree
    %29 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %30 = "it.IndexOp"(%28, %29) : (!it.index_tree, !it.domain) -> !it.index
    %31 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %32 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %33 = "it.DomainIntersectionOp"(%32, %31) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %34 = "it.IndexOp"(%30, %33) : (!it.index, !it.domain) -> !it.index
    %35 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %30) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_31, %pos_32 = "it.IndexToTensorDim"(%arg0, %36, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %37 = "it.LHSOperandOp"(%arg0, %pos, %pos_32, %crd, %crd_31) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%22, %30) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%22, %34, %pos_34) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %38 = "it.OperandOp"(%22, %pos_34, %pos_36, %crd_33, %crd_35) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%25, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%25, %36, %pos_38) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%25, %pos_38, %pos_40, %crd_37, %crd_39) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %40 = "it.ComputeOp"(%36, %37, %38, %39) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %40 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%27, %26) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%26) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After {anonymous}::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
  %alloc_6 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_12 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_12 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_15 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_15 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_18 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_18 : i64) outs(%alloc_17 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_17 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_21 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_21 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_24 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_24 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_27 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_27 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
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
  %alloc_31 = memref.alloc(%24) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  %25 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x4xf64>
  %alloc_32 = memref.alloc(%23) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  %26 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x4xf64>
  "ta.fill"(%25) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %27 = "it.itree"(%26) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %28 = "it.RootOp"() : () -> !it.index_tree
    %29 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %30 = "it.IndexOp"(%28, %29) : (!it.index_tree, !it.domain) -> !it.index
    %31 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %32 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %33 = "it.DomainIntersectionOp"(%32, %31) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %34 = "it.IndexOp"(%30, %33) : (!it.index, !it.domain) -> !it.index
    %35 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %30) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%arg0, %36, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %37 = "it.LHSOperandOp"(%arg0, %pos, %pos_34, %crd, %crd_33) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%22, %30) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%22, %34, %pos_36) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %38 = "it.OperandOp"(%22, %pos_36, %pos_38, %crd_35, %crd_37) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%25, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%25, %36, %pos_40) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%25, %pos_40, %pos_42, %crd_39, %crd_41) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %40 = "it.ComputeOp"(%36, %37, %38, %39) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %40 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%27, %26) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%26) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After {anonymous}::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
  %alloc_6 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_12 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_12 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_15 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_15 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_18 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_18 : i64) outs(%alloc_17 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_17 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_21 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_21 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_24 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_24 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_27 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_27 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
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
  %alloc_31 = memref.alloc(%24) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  %25 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x4xf64>
  %alloc_32 = memref.alloc(%23) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  %26 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x4xf64>
  "ta.fill"(%25) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %27 = "it.itree"(%26) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %28 = "it.RootOp"() : () -> !it.index_tree
    %29 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %30 = "it.IndexOp"(%28, %29) : (!it.index_tree, !it.domain) -> !it.index
    %31 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %32 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %33 = "it.DomainIntersectionOp"(%32, %31) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %34 = "it.IndexOp"(%30, %33) : (!it.index, !it.domain) -> !it.index
    %35 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %30) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%arg0, %36, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %37 = "it.LHSOperandOp"(%arg0, %pos, %pos_34, %crd, %crd_33) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%22, %30) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%22, %34, %pos_36) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %38 = "it.OperandOp"(%22, %pos_36, %pos_38, %crd_35, %crd_37) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%25, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%25, %36, %pos_40) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%25, %pos_40, %pos_42, %crd_39, %crd_41) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %40 = "it.ComputeOp"(%36, %37, %38, %39) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %40 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%27, %26) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%26) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After {anonymous}::SparseOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
  %alloc_6 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_12 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_12 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_15 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_15 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_18 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_18 : i64) outs(%alloc_17 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_17 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_21 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_21 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_24 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_24 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_27 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_27 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
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
  %alloc_31 = memref.alloc(%24) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  %25 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x4xf64>
  %alloc_32 = memref.alloc(%23) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  %26 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x4xf64>
  "ta.fill"(%25) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %27 = "it.itree"(%26) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %28 = "it.RootOp"() : () -> !it.index_tree
    %29 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %30 = "it.IndexOp"(%28, %29) : (!it.index_tree, !it.domain) -> !it.index
    %31 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %32 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %33 = "it.DomainIntersectionOp"(%32, %31) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %34 = "it.IndexOp"(%30, %33) : (!it.index, !it.domain) -> !it.index
    %35 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %30) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%arg0, %36, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %37 = "it.LHSOperandOp"(%arg0, %pos, %pos_34, %crd, %crd_33) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%22, %30) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%22, %34, %pos_36) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %38 = "it.OperandOp"(%22, %pos_36, %pos_38, %crd_35, %crd_37) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%25, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%25, %36, %pos_40) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%25, %pos_40, %pos_42, %crd_39, %crd_41) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %40 = "it.ComputeOp"(%36, %37, %38, %39) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %40 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%27, %26) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%26) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After {anonymous}::TensorFillLoweringPass () //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
  %alloc_6 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_12 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_12 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_15 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_15 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_18 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_18 : i64) outs(%alloc_17 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_17 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_21 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_21 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_24 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_24 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_27 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_27 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
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
  %alloc_31 = memref.alloc(%24) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  %cst_32 = arith.constant 1.700000e+00 : f64
  linalg.fill ins(%cst_32 : f64) outs(%alloc_31 : memref<?x4xf64>)
  %25 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x4xf64>
  %alloc_33 = memref.alloc(%23) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  %cst_34 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_34 : f64) outs(%alloc_33 : memref<?x4xf64>)
  %26 = bufferization.to_tensor %alloc_33 restrict writable : memref<?x4xf64>
  %27 = "it.itree"(%26) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %28 = "it.RootOp"() : () -> !it.index_tree
    %29 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %30 = "it.IndexOp"(%28, %29) : (!it.index_tree, !it.domain) -> !it.index
    %31 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %32 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %33 = "it.DomainIntersectionOp"(%32, %31) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %34 = "it.IndexOp"(%30, %33) : (!it.index, !it.domain) -> !it.index
    %35 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %30) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%arg0, %36, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %37 = "it.LHSOperandOp"(%arg0, %pos, %pos_36, %crd, %crd_35) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%22, %30) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%22, %34, %pos_38) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %38 = "it.OperandOp"(%22, %pos_38, %pos_40, %crd_37, %crd_39) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%25, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%25, %36, %pos_42) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%25, %pos_42, %pos_44, %crd_41, %crd_43) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %40 = "it.ComputeOp"(%36, %37, %38, %39) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %40 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%27, %26) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%26) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After {anonymous}::DimOpLoweringPass () //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
  %alloc_6 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_12 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_12 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_15 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_15 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_18 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_18 : i64) outs(%alloc_17 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_17 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_21 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_21 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_24 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_24 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_27 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_27 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
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
  %alloc_31 = memref.alloc(%24) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  %cst_32 = arith.constant 1.700000e+00 : f64
  linalg.fill ins(%cst_32 : f64) outs(%alloc_31 : memref<?x4xf64>)
  %25 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x4xf64>
  %alloc_33 = memref.alloc(%23) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  %cst_34 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_34 : f64) outs(%alloc_33 : memref<?x4xf64>)
  %26 = bufferization.to_tensor %alloc_33 restrict writable : memref<?x4xf64>
  %27 = "it.itree"(%26) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %28 = "it.RootOp"() : () -> !it.index_tree
    %29 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %30 = "it.IndexOp"(%28, %29) : (!it.index_tree, !it.domain) -> !it.index
    %31 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %32 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %33 = "it.DomainIntersectionOp"(%32, %31) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %34 = "it.IndexOp"(%30, %33) : (!it.index, !it.domain) -> !it.index
    %35 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %30) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%arg0, %36, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %37 = "it.LHSOperandOp"(%arg0, %pos, %pos_36, %crd, %crd_35) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%22, %30) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%22, %34, %pos_38) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %38 = "it.OperandOp"(%22, %pos_38, %pos_40, %crd_37, %crd_39) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%25, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%25, %36, %pos_42) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%25, %pos_42, %pos_44, %crd_41, %crd_43) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %40 = "it.ComputeOp"(%36, %37, %38, %39) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %40 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.set_op"(%27, %26) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%26) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After {anonymous}::LowerTensorAlgebraToSCFPass () //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
  %alloc_6 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_12 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_12 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_15 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_15 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_18 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_18 : i64) outs(%alloc_17 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_17 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_21 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_21 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_24 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_24 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
  %c0_i64_27 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_27 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
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
  %alloc_31 = memref.alloc(%24) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  %cst_32 = arith.constant 1.700000e+00 : f64
  linalg.fill ins(%cst_32 : f64) outs(%alloc_31 : memref<?x4xf64>)
  %25 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x4xf64>
  %alloc_33 = memref.alloc(%23) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  %cst_34 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_34 : f64) outs(%alloc_33 : memref<?x4xf64>)
  %26 = bufferization.to_tensor %alloc_33 restrict writable : memref<?x4xf64>
  %27 = "it.itree"(%26) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %28 = "it.RootOp"() : () -> !it.index_tree
    %29 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %30 = "it.IndexOp"(%28, %29) : (!it.index_tree, !it.domain) -> !it.index
    %31 = "it.DomainOp"(%25) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %32 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %33 = "it.DomainIntersectionOp"(%32, %31) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %34 = "it.IndexOp"(%30, %33) : (!it.index, !it.domain) -> !it.index
    %35 = "it.DomainOp"(%25) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %30) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_35, %pos_36 = "it.IndexToTensorDim"(%arg0, %36, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %37 = "it.LHSOperandOp"(%arg0, %pos, %pos_36, %crd, %crd_35) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_37, %pos_38 = "it.IndexToTensorDim"(%22, %30) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%22, %34, %pos_38) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %38 = "it.OperandOp"(%22, %pos_38, %pos_40, %crd_37, %crd_39) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%25, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%25, %36, %pos_42) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%25, %pos_42, %pos_44, %crd_41, %crd_43) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %40 = "it.ComputeOp"(%36, %37, %38, %39) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %40 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.print"(%27) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %idx4 = index.constant 4
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
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
  %alloc_1 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
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
  %alloc_20 = memref.alloc(%26) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_20 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %alloc_21 = memref.alloc(%25) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %28 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %29 = "it.itree"(%28) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %30 = "it.RootOp"() : () -> !it.index_tree
    %31 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %32 = "it.IndexOp"(%30, %31) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %32) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %33 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_19, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) : (!it.index, !it.domain) -> !it.index
    %35 = "it.DenseDomainOp"(%idx4, %27) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %crd_22, %pos_23 = "it.IndexToTensorDim"(%arg0, %32) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_24, %pos_25 = "it.IndexToTensorDim"(%arg0, %36, %pos_23) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %37 = "it.LHSOperandOp"(%arg0, %pos_23, %pos_25, %crd_22, %crd_24) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_26, %pos_27 = "it.IndexToTensorDim"(%20, %34, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %38 = "it.OperandOp"(%20, %pos, %pos_27, %crd, %crd_26) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_28, %pos_29 = "it.IndexToTensorDim"(%27, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_30, %pos_31 = "it.IndexToTensorDim"(%27, %36, %pos_29) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%27, %pos_29, %pos_31, %crd_28, %crd_30) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %40 = "it.ComputeOp"(%36, %37, %38, %39) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %40 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.print"(%29) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func @main() {
  %idx4 = index.constant 4
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
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
  %alloc_1 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
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
  %alloc_20 = memref.alloc(%26) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_20 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %alloc_21 = memref.alloc(%25) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %28 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %29 = "it.itree"(%28) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %30 = "it.RootOp"() : () -> !it.index_tree
    %31 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %32 = "it.IndexOp"(%30, %31) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %32) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %33 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_19, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %34 = "it.IndexOp"(%32, %33) : (!it.index, !it.domain) -> !it.index
    %35 = "it.DenseDomainOp"(%idx4, %27) <{dims = [1 : i32]}> : (index, tensor<?x4xf64>) -> !it.domain
    %36 = "it.IndexOp"(%34, %35) : (!it.index, !it.domain) -> !it.index
    %crd_22, %pos_23 = "it.IndexToTensorDim"(%arg0, %32) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_24, %pos_25 = "it.IndexToTensorDim"(%arg0, %36, %pos_23) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %37 = "it.LHSOperandOp"(%arg0, %pos_23, %pos_25, %crd_22, %crd_24) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %crd_26, %pos_27 = "it.IndexToTensorDim"(%20, %34, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %38 = "it.OperandOp"(%20, %pos, %pos_27, %crd, %crd_26) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_28, %pos_29 = "it.IndexToTensorDim"(%27, %34) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
    %crd_30, %pos_31 = "it.IndexToTensorDim"(%27, %36, %pos_29) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
    %39 = "it.OperandOp"(%27, %pos_29, %pos_31, %crd_28, %crd_30) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
    %40 = "it.ComputeOp"(%36, %37, %38, %39) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
    it.yield %40 : tensor<?x4xf64>
  }) : (tensor<?x4xf64>) -> tensor<?x4xf64>
  "ta.print"(%29) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After {anonymous}::LowerIndexTreeToSCFPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
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
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
  %alloc_1 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
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
  %alloc_20 = memref.alloc(%26) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_20 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %alloc_21 = memref.alloc(%25) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %28 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %29 = "it.itree"(%28) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %c0_22 = arith.constant 0 : index
    %c1_23 = arith.constant 1 : index
    %30 = scf.for %arg1 = %c0_22 to %21 step %c1_23 iter_args(%arg2 = %arg0) -> (tensor<?x4xf64>) {
      %c1_24 = arith.constant 1 : index
      %31 = arith.addi %arg1, %c1_24 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %32 = arith.index_cast %extracted : i64 to index
      %extracted_25 = tensor.extract %22[%31] : tensor<?xi64>
      %33 = arith.index_cast %extracted_25 : i64 to index
      %c1_26 = arith.constant 1 : index
      %34 = scf.for %arg3 = %32 to %33 step %c1_26 iter_args(%arg4 = %arg2) -> (tensor<?x4xf64>) {
        %c0_27 = arith.constant 0 : index
        %c1_28 = arith.constant 1 : index
        %35 = scf.for %arg5 = %c0_27 to %idx4 step %c1_28 iter_args(%arg6 = %arg4) -> (tensor<?x4xf64>) {
          %36 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %37 = arith.index_cast %36 : i64 to index
          %38 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %39 = arith.index_cast %38 : i64 to index
          %40 = "ta.TAExtractOp"(%20, %arg3, %arg1, %37) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %extracted_29 = tensor.extract %27[%39, %arg5] : tensor<?x4xf64>
          %41 = arith.mulf %40, %extracted_29 : f64
          %extracted_30 = tensor.extract %arg6[%arg1, %arg5] : tensor<?x4xf64>
          %42 = arith.addf %extracted_30, %41 : f64
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

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
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
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
  %alloc_1 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
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
  %alloc_20 = memref.alloc(%26) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_20 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %alloc_21 = memref.alloc(%25) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %28 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %29 = "it.itree"(%28) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %c0_22 = arith.constant 0 : index
    %c1_23 = arith.constant 1 : index
    %30 = scf.for %arg1 = %c0_22 to %21 step %c1_23 iter_args(%arg2 = %arg0) -> (tensor<?x4xf64>) {
      %c1_24 = arith.constant 1 : index
      %31 = arith.addi %arg1, %c1_24 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %32 = arith.index_cast %extracted : i64 to index
      %extracted_25 = tensor.extract %22[%31] : tensor<?xi64>
      %33 = arith.index_cast %extracted_25 : i64 to index
      %c1_26 = arith.constant 1 : index
      %34 = scf.for %arg3 = %32 to %33 step %c1_26 iter_args(%arg4 = %arg2) -> (tensor<?x4xf64>) {
        %c0_27 = arith.constant 0 : index
        %c1_28 = arith.constant 1 : index
        %35 = scf.for %arg5 = %c0_27 to %idx4 step %c1_28 iter_args(%arg6 = %arg4) -> (tensor<?x4xf64>) {
          %36 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %37 = arith.index_cast %36 : i64 to index
          %38 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %39 = arith.index_cast %38 : i64 to index
          %40 = "ta.TAExtractOp"(%20, %arg3, %arg1, %37) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %extracted_29 = tensor.extract %27[%39, %arg5] : tensor<?x4xf64>
          %41 = arith.mulf %40, %extracted_29 : f64
          %extracted_30 = tensor.extract %arg6[%arg1, %arg5] : tensor<?x4xf64>
          %42 = arith.addf %extracted_30, %41 : f64
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

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func @main() {
  %idx4 = index.constant 4
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
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
  %alloc_1 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
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
  %alloc_27 = memref.alloc(%extracted_26) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_27 : memref<?x4xf64>)
  %21 = bufferization.to_tensor %alloc_27 restrict writable : memref<?x4xf64>
  %alloc_28 = memref.alloc(%extracted_24) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_28 : memref<?x4xf64>)
  %22 = bufferization.to_tensor %alloc_28 restrict writable : memref<?x4xf64>
  %23 = "it.itree"(%22) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x4xf64>):
    %c0_29 = arith.constant 0 : index
    %c1_30 = arith.constant 1 : index
    %24 = scf.for %arg1 = %c0_29 to %extracted step %c1_30 iter_args(%arg2 = %arg0) -> (tensor<?x4xf64>) {
      %c1_31 = arith.constant 1 : index
      %25 = arith.addi %arg1, %c1_31 : index
      %extracted_32 = tensor.extract %15[%arg1] : tensor<?xi64>
      %26 = arith.index_cast %extracted_32 : i64 to index
      %extracted_33 = tensor.extract %15[%25] : tensor<?xi64>
      %27 = arith.index_cast %extracted_33 : i64 to index
      %c1_34 = arith.constant 1 : index
      %28 = scf.for %arg3 = %26 to %27 step %c1_34 iter_args(%arg4 = %arg2) -> (tensor<?x4xf64>) {
        %c0_35 = arith.constant 0 : index
        %c1_36 = arith.constant 1 : index
        %29 = scf.for %arg5 = %c0_35 to %idx4 step %c1_36 iter_args(%arg6 = %arg4) -> (tensor<?x4xf64>) {
          %extracted_37 = tensor.extract %16[%arg3] : tensor<?xi64>
          %30 = arith.index_cast %extracted_37 : i64 to index
          %extracted_38 = tensor.extract %16[%arg3] : tensor<?xi64>
          %31 = arith.index_cast %extracted_38 : i64 to index
          %extracted_39 = tensor.extract %19[%arg3] : tensor<?xf64>
          %extracted_40 = tensor.extract %21[%31, %arg5] : tensor<?x4xf64>
          %32 = arith.mulf %extracted_39, %extracted_40 : f64
          %extracted_41 = tensor.extract %arg6[%arg1, %arg5] : tensor<?x4xf64>
          %33 = arith.addf %extracted_41, %32 : f64
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
  %idx4 = index.constant 4
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
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
  %alloc_1 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
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
  %alloc_24 = memref.alloc(%10) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_24 : memref<?x4xf64>)
  %21 = bufferization.to_tensor %alloc_24 restrict writable : memref<?x4xf64>
  %alloc_25 = memref.alloc(%9) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_25 : memref<?x4xf64>)
  %22 = bufferization.to_tensor %alloc_25 restrict writable : memref<?x4xf64>
  %c0_26 = arith.constant 0 : index
  %c1_27 = arith.constant 1 : index
  %23 = scf.for %arg0 = %c0_26 to %9 step %c1_27 iter_args(%arg1 = %22) -> (tensor<?x4xf64>) {
    %c1_28 = arith.constant 1 : index
    %24 = arith.addi %arg0, %c1_28 : index
    %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
    %25 = arith.index_cast %extracted : i64 to index
    %extracted_29 = tensor.extract %15[%24] : tensor<?xi64>
    %26 = arith.index_cast %extracted_29 : i64 to index
    %c1_30 = arith.constant 1 : index
    %27 = scf.for %arg2 = %25 to %26 step %c1_30 iter_args(%arg3 = %arg1) -> (tensor<?x4xf64>) {
      %c0_31 = arith.constant 0 : index
      %c1_32 = arith.constant 1 : index
      %28 = scf.for %arg4 = %c0_31 to %idx4 step %c1_32 iter_args(%arg5 = %arg3) -> (tensor<?x4xf64>) {
        %extracted_33 = tensor.extract %16[%arg2] : tensor<?xi64>
        %29 = arith.index_cast %extracted_33 : i64 to index
        %extracted_34 = tensor.extract %16[%arg2] : tensor<?xi64>
        %30 = arith.index_cast %extracted_34 : i64 to index
        %extracted_35 = tensor.extract %19[%arg2] : tensor<?xf64>
        %extracted_36 = tensor.extract %21[%30, %arg4] : tensor<?x4xf64>
        %31 = arith.mulf %extracted_35, %extracted_36 : f64
        %extracted_37 = tensor.extract %arg5[%arg0, %arg4] : tensor<?x4xf64>
        %32 = arith.addf %extracted_37, %31 : f64
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
  %idx4 = index.constant 4
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
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
  %alloc_1 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
  %14 = bufferization.to_tensor %alloc_19 restrict writable : memref<?x4xf64>
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %15 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %16 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %15) -> (tensor<?x4xf64>) {
    %17 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %18 = arith.index_cast %extracted : i64 to index
    %extracted_21 = tensor.extract %11[%17] : tensor<?xi64>
    %19 = arith.index_cast %extracted_21 : i64 to index
    %20 = scf.for %arg2 = %18 to %19 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x4xf64>) {
      %21 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x4xf64>) {
        %extracted_22 = tensor.extract %12[%arg2] : tensor<?xi64>
        %22 = arith.index_cast %extracted_22 : i64 to index
        %extracted_23 = tensor.extract %13[%arg2] : tensor<?xf64>
        %extracted_24 = tensor.extract %14[%22, %arg4] : tensor<?x4xf64>
        %23 = arith.mulf %extracted_23, %extracted_24 : f64
        %extracted_25 = tensor.extract %arg5[%arg0, %arg4] : tensor<?x4xf64>
        %24 = arith.addf %extracted_25, %23 : f64
        %inserted = tensor.insert %24 into %arg5[%arg0, %arg4] : tensor<?x4xf64>
        scf.yield %inserted : tensor<?x4xf64>
      }
      scf.yield %21 : tensor<?x4xf64>
    }
    scf.yield %20 : tensor<?x4xf64>
  }
  "ta.print"(%16) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %idx4 = index.constant 4
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
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
  %alloc_1 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
  %14 = bufferization.to_tensor %alloc_19 restrict writable : memref<?x4xf64>
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %15 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %16 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %15) -> (tensor<?x4xf64>) {
    %17 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
    %18 = arith.index_cast %extracted : i64 to index
    %extracted_21 = tensor.extract %11[%17] : tensor<?xi64>
    %19 = arith.index_cast %extracted_21 : i64 to index
    %20 = scf.for %arg2 = %18 to %19 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x4xf64>) {
      %21 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x4xf64>) {
        %extracted_22 = tensor.extract %12[%arg2] : tensor<?xi64>
        %22 = arith.index_cast %extracted_22 : i64 to index
        %extracted_23 = tensor.extract %13[%arg2] : tensor<?xf64>
        %extracted_24 = tensor.extract %14[%22, %arg4] : tensor<?x4xf64>
        %23 = arith.mulf %extracted_23, %extracted_24 : f64
        %extracted_25 = tensor.extract %arg5[%arg0, %arg4] : tensor<?x4xf64>
        %24 = arith.addf %extracted_25, %23 : f64
        %inserted = tensor.insert %24 into %arg5[%arg0, %arg4] : tensor<?x4xf64>
        scf.yield %inserted : tensor<?x4xf64>
      }
      scf.yield %21 : tensor<?x4xf64>
    }
    scf.yield %20 : tensor<?x4xf64>
  }
  "ta.print"(%16) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After {anonymous}::BufferizeFunc () //----- //
module {
  func.func @main() {
    %idx4 = index.constant 4
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
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
    %alloc_1 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
    %13 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
    %14 = bufferization.to_tensor %alloc_19 restrict writable : memref<?x4xf64>
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %15 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
    %16 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %15) -> (tensor<?x4xf64>) {
      %17 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %18 = arith.index_cast %extracted : i64 to index
      %extracted_21 = tensor.extract %11[%17] : tensor<?xi64>
      %19 = arith.index_cast %extracted_21 : i64 to index
      %20 = scf.for %arg2 = %18 to %19 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x4xf64>) {
        %21 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x4xf64>) {
          %extracted_22 = tensor.extract %12[%arg2] : tensor<?xi64>
          %22 = arith.index_cast %extracted_22 : i64 to index
          %extracted_23 = tensor.extract %13[%arg2] : tensor<?xf64>
          %extracted_24 = tensor.extract %14[%22, %arg4] : tensor<?x4xf64>
          %23 = arith.mulf %extracted_23, %extracted_24 : f64
          %extracted_25 = tensor.extract %arg5[%arg0, %arg4] : tensor<?x4xf64>
          %24 = arith.addf %extracted_25, %23 : f64
          %inserted = tensor.insert %24 into %arg5[%arg0, %arg4] : tensor<?x4xf64>
          scf.yield %inserted : tensor<?x4xf64>
        }
        scf.yield %21 : tensor<?x4xf64>
      }
      scf.yield %20 : tensor<?x4xf64>
    }
    "ta.print"(%16) : (tensor<?x4xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx4 = index.constant 4
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
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
    %alloc_1 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = bufferization.to_tensor %alloc_9 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_11 restrict writable : memref<?xi64>
    %13 = bufferization.to_tensor %alloc_17 restrict writable : memref<?xf64>
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
    %14 = bufferization.to_tensor %alloc_19 restrict writable : memref<?x4xf64>
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %15 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
    %16 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %15) -> (tensor<?x4xf64>) {
      %17 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %11[%arg0] : tensor<?xi64>
      %18 = arith.index_cast %extracted : i64 to index
      %extracted_21 = tensor.extract %11[%17] : tensor<?xi64>
      %19 = arith.index_cast %extracted_21 : i64 to index
      %20 = scf.for %arg2 = %18 to %19 step %c1 iter_args(%arg3 = %arg1) -> (tensor<?x4xf64>) {
        %21 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (tensor<?x4xf64>) {
          %extracted_22 = tensor.extract %12[%arg2] : tensor<?xi64>
          %22 = arith.index_cast %extracted_22 : i64 to index
          %extracted_23 = tensor.extract %13[%arg2] : tensor<?xf64>
          %extracted_24 = tensor.extract %14[%22, %arg4] : tensor<?x4xf64>
          %23 = arith.mulf %extracted_23, %extracted_24 : f64
          %extracted_25 = tensor.extract %arg5[%arg0, %arg4] : tensor<?x4xf64>
          %24 = arith.addf %extracted_25, %23 : f64
          %inserted = tensor.insert %24 into %arg5[%arg0, %arg4] : tensor<?x4xf64>
          scf.yield %inserted : tensor<?x4xf64>
        }
        scf.yield %21 : tensor<?x4xf64>
      }
      scf.yield %20 : tensor<?x4xf64>
    }
    "ta.print"(%16) : (tensor<?x4xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After OneShotBufferize (one-shot-bufferize) //----- //
module {
  func.func @main() {
    %idx4 = index.constant 4
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
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
    %alloc_1 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %11 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %alloc_20) -> (memref<?x4xf64>) {
      %13 = arith.addi %arg0, %c1 : index
      %14 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      %16 = memref.load %alloc_9[%13] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = scf.for %arg2 = %15 to %17 step %c1 iter_args(%arg3 = %arg1) -> (memref<?x4xf64>) {
        %19 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (memref<?x4xf64>) {
          %20 = memref.load %alloc_11[%arg2] : memref<?xi64>
          %21 = arith.index_cast %20 : i64 to index
          %22 = memref.load %alloc_17[%arg2] : memref<?xf64>
          %23 = memref.load %alloc_19[%21, %arg4] : memref<?x4xf64>
          %24 = arith.mulf %22, %23 : f64
          %25 = memref.load %arg5[%arg0, %arg4] : memref<?x4xf64>
          %26 = arith.addf %25, %24 : f64
          memref.store %26, %arg5[%arg0, %arg4] : memref<?x4xf64>
          scf.yield %arg5 : memref<?x4xf64>
        }
        scf.yield %19 : memref<?x4xf64>
      }
      scf.yield %18 : memref<?x4xf64>
    }
    %12 = bufferization.to_tensor %11 : memref<?x4xf64>
    "ta.print"(%12) : (tensor<?x4xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
}


// -----// IR Dump After {anonymous}::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After {anonymous}::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After {anonymous}::STCRemoveDeadOpsPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
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
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
  %alloc_1 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %11 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %alloc_20) -> (memref<?x4xf64>) {
    %13 = arith.addi %arg0, %c1 : index
    %14 = memref.load %alloc_9[%arg0] : memref<?xi64>
    %15 = arith.index_cast %14 : i64 to index
    %16 = memref.load %alloc_9[%13] : memref<?xi64>
    %17 = arith.index_cast %16 : i64 to index
    %18 = scf.for %arg2 = %15 to %17 step %c1 iter_args(%arg3 = %arg1) -> (memref<?x4xf64>) {
      %19 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (memref<?x4xf64>) {
        %20 = memref.load %alloc_11[%arg2] : memref<?xi64>
        %21 = arith.index_cast %20 : i64 to index
        %22 = memref.load %alloc_17[%arg2] : memref<?xf64>
        %23 = memref.load %alloc_19[%21, %arg4] : memref<?x4xf64>
        %24 = arith.mulf %22, %23 : f64
        %25 = memref.load %arg5[%arg0, %arg4] : memref<?x4xf64>
        %26 = arith.addf %25, %24 : f64
        memref.store %26, %arg5[%arg0, %arg4] : memref<?x4xf64>
        scf.yield %arg5 : memref<?x4xf64>
      }
      scf.yield %19 : memref<?x4xf64>
    }
    scf.yield %18 : memref<?x4xf64>
  }
  %12 = bufferization.to_tensor %11 : memref<?x4xf64>
  "ta.print"(%12) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After {anonymous}::LateLoweringPass () //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After {anonymous}::LateLoweringPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After {anonymous}::LateLoweringPass () //----- //
func.func @main() {
  %idx4 = index.constant 4
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
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
  %alloc_1 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %11 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %alloc_20) -> (memref<?x4xf64>) {
    %14 = arith.addi %arg0, %c1 : index
    %15 = memref.load %alloc_9[%arg0] : memref<?xi64>
    %16 = arith.index_cast %15 : i64 to index
    %17 = memref.load %alloc_9[%14] : memref<?xi64>
    %18 = arith.index_cast %17 : i64 to index
    %19 = scf.for %arg2 = %16 to %18 step %c1 iter_args(%arg3 = %arg1) -> (memref<?x4xf64>) {
      %20 = scf.for %arg4 = %c0 to %idx4 step %c1 iter_args(%arg5 = %arg3) -> (memref<?x4xf64>) {
        %21 = memref.load %alloc_11[%arg2] : memref<?xi64>
        %22 = arith.index_cast %21 : i64 to index
        %23 = memref.load %alloc_17[%arg2] : memref<?xf64>
        %24 = memref.load %alloc_19[%22, %arg4] : memref<?x4xf64>
        %25 = arith.mulf %23, %24 : f64
        %26 = memref.load %arg5[%arg0, %arg4] : memref<?x4xf64>
        %27 = arith.addf %26, %25 : f64
        memref.store %27, %arg5[%arg0, %arg4] : memref<?x4xf64>
        scf.yield %arg5 : memref<?x4xf64>
      }
      scf.yield %20 : memref<?x4xf64>
    }
    scf.yield %19 : memref<?x4xf64>
  }
  %12 = bufferization.to_tensor %11 : memref<?x4xf64>
  %13 = bufferization.to_memref %12 : memref<?x4xf64>
  %cast_21 = memref.cast %13 : memref<?x4xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx4 = index.constant 4
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
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
    %alloc_1 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    scf.for %arg0 = %c0 to %9 step %c1 {
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_9[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      scf.for %arg1 = %13 to %15 step %c1 {
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %16 = memref.load %alloc_11[%arg1] : memref<?xi64>
          %17 = arith.index_cast %16 : i64 to index
          %18 = memref.load %alloc_17[%arg1] : memref<?xf64>
          %19 = memref.load %alloc_19[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_20[%arg0, %arg2] : memref<?x4xf64>
        }
      }
    }
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
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
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
    %alloc_1 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    scf.for %arg0 = %c0 to %9 step %c1 {
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_9[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      scf.for %arg1 = %13 to %15 step %c1 {
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %16 = memref.load %alloc_11[%arg1] : memref<?xi64>
          %17 = arith.index_cast %16 : i64 to index
          %18 = memref.load %alloc_17[%arg1] : memref<?xf64>
          %19 = memref.load %alloc_19[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_20[%arg0, %arg2] : memref<?x4xf64>
        }
      }
    }
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
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
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
    %alloc_1 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    scf.for %arg0 = %c0 to %9 step %c1 {
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_9[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      scf.for %arg1 = %13 to %15 step %c1 {
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %16 = memref.load %alloc_11[%arg1] : memref<?xi64>
          %17 = arith.index_cast %16 : i64 to index
          %18 = memref.load %alloc_17[%arg1] : memref<?xf64>
          %19 = memref.load %alloc_19[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_20[%arg0, %arg2] : memref<?x4xf64>
        }
      }
    }
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func @main() {
  %idx4 = index.constant 4
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
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
  %alloc_1 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_1 : memref<?xi64>)
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_3 : memref<?xi64>)
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_5 : memref<?xi64>)
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_7 : memref<?xi64>)
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_9 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_13 : memref<?xi64>)
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_15 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?xf64>)
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  scf.for %arg0 = %c0 to %9 step %c1 {
    %11 = arith.addi %arg0, %c1 : index
    %12 = memref.load %alloc_9[%arg0] : memref<?xi64>
    %13 = arith.index_cast %12 : i64 to index
    %14 = memref.load %alloc_9[%11] : memref<?xi64>
    %15 = arith.index_cast %14 : i64 to index
    scf.for %arg1 = %13 to %15 step %c1 {
      scf.for %arg2 = %c0 to %idx4 step %c1 {
        %16 = memref.load %alloc_11[%arg1] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = memref.load %alloc_17[%arg1] : memref<?xf64>
        %19 = memref.load %alloc_19[%17, %arg2] : memref<?x4xf64>
        %20 = arith.mulf %18, %19 : f64
        %21 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
        %22 = arith.addf %21, %20 : f64
        memref.store %22, %alloc_20[%arg0, %arg2] : memref<?x4xf64>
      }
    }
  }
  %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
func.func @main() {
  %idx4 = index.constant 4
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
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
  %alloc_1 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
  scf.for %arg0 = %c0 to %0 step %c1 {
    memref.store %c0_i64, %alloc_1[%arg0] : memref<?xi64>
  }
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
  scf.for %arg0 = %c0 to %1 step %c1 {
    memref.store %c0_i64, %alloc_3[%arg0] : memref<?xi64>
  }
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
  scf.for %arg0 = %c0 to %2 step %c1 {
    memref.store %c0_i64, %alloc_5[%arg0] : memref<?xi64>
  }
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
  scf.for %arg0 = %c0 to %3 step %c1 {
    memref.store %c0_i64, %alloc_7[%arg0] : memref<?xi64>
  }
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
  scf.for %arg0 = %c0 to %4 step %c1 {
    memref.store %c0_i64, %alloc_9[%arg0] : memref<?xi64>
  }
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
  scf.for %arg0 = %c0 to %5 step %c1 {
    memref.store %c0_i64, %alloc_11[%arg0] : memref<?xi64>
  }
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
  scf.for %arg0 = %c0 to %6 step %c1 {
    memref.store %c0_i64, %alloc_13[%arg0] : memref<?xi64>
  }
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
  scf.for %arg0 = %c0 to %7 step %c1 {
    memref.store %c0_i64, %alloc_15[%arg0] : memref<?xi64>
  }
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
  scf.for %arg0 = %c0 to %8 step %c1 {
    memref.store %cst_0, %alloc_17[%arg0] : memref<?xf64>
  }
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  scf.for %arg0 = %c0 to %10 step %c1 {
    scf.for %arg1 = %c0 to %c4 step %c1 {
      memref.store %cst, %alloc_19[%arg0, %arg1] : memref<?x4xf64>
    }
  }
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  scf.for %arg0 = %c0 to %9 step %c1 {
    scf.for %arg1 = %c0 to %c4 step %c1 {
      memref.store %cst_0, %alloc_20[%arg0, %arg1] : memref<?x4xf64>
    }
  }
  scf.for %arg0 = %c0 to %9 step %c1 {
    %11 = arith.addi %arg0, %c1 : index
    %12 = memref.load %alloc_9[%arg0] : memref<?xi64>
    %13 = arith.index_cast %12 : i64 to index
    %14 = memref.load %alloc_9[%11] : memref<?xi64>
    %15 = arith.index_cast %14 : i64 to index
    scf.for %arg1 = %13 to %15 step %c1 {
      scf.for %arg2 = %c0 to %idx4 step %c1 {
        %16 = memref.load %alloc_11[%arg1] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = memref.load %alloc_17[%arg1] : memref<?xf64>
        %19 = memref.load %alloc_19[%17, %arg2] : memref<?x4xf64>
        %20 = arith.mulf %18, %19 : f64
        %21 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
        %22 = arith.addf %21, %20 : f64
        memref.store %22, %alloc_20[%arg0, %arg2] : memref<?x4xf64>
      }
    }
  }
  %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %idx4 = index.constant 4
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
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
    %alloc_1 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_1[%arg0] : memref<?xi64>
    }
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_3[%arg0] : memref<?xi64>
    }
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_5[%arg0] : memref<?xi64>
    }
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_7[%arg0] : memref<?xi64>
    }
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_9[%arg0] : memref<?xi64>
    }
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_11[%arg0] : memref<?xi64>
    }
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_13[%arg0] : memref<?xi64>
    }
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_15[%arg0] : memref<?xi64>
    }
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_0, %alloc_17[%arg0] : memref<?xf64>
    }
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst, %alloc_19[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_0, %alloc_20[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    scf.for %arg0 = %c0 to %9 step %c1 {
      %11 = arith.addi %arg0, %c1 : index
      %12 = memref.load %alloc_9[%arg0] : memref<?xi64>
      %13 = arith.index_cast %12 : i64 to index
      %14 = memref.load %alloc_9[%11] : memref<?xi64>
      %15 = arith.index_cast %14 : i64 to index
      scf.for %arg1 = %13 to %15 step %c1 {
        scf.for %arg2 = %c0 to %idx4 step %c1 {
          %16 = memref.load %alloc_11[%arg1] : memref<?xi64>
          %17 = arith.index_cast %16 : i64 to index
          %18 = memref.load %alloc_17[%arg1] : memref<?xf64>
          %19 = memref.load %alloc_19[%17, %arg2] : memref<?x4xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloc_20[%arg0, %arg2] : memref<?x4xf64>
        }
      }
    }
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After SCFToControlFlow (convert-scf-to-cf) //----- //
module {
  func.func @main() {
    %idx4 = index.constant 4
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
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
    %alloc_1 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%11: index):  // 2 preds: ^bb0, ^bb2
    %12 = arith.cmpi slt, %11, %0 : index
    cf.cond_br %12, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    memref.store %c0_i64, %alloc_1[%11] : memref<?xi64>
    %13 = arith.addi %11, %c1 : index
    cf.br ^bb1(%13 : index)
  ^bb3:  // pred: ^bb1
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb4(%c0 : index)
  ^bb4(%14: index):  // 2 preds: ^bb3, ^bb5
    %15 = arith.cmpi slt, %14, %1 : index
    cf.cond_br %15, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %c0_i64, %alloc_3[%14] : memref<?xi64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb4(%16 : index)
  ^bb6:  // pred: ^bb4
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%17: index):  // 2 preds: ^bb6, ^bb8
    %18 = arith.cmpi slt, %17, %2 : index
    cf.cond_br %18, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %c0_i64, %alloc_5[%17] : memref<?xi64>
    %19 = arith.addi %17, %c1 : index
    cf.br ^bb7(%19 : index)
  ^bb9:  // pred: ^bb7
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb10(%c0 : index)
  ^bb10(%20: index):  // 2 preds: ^bb9, ^bb11
    %21 = arith.cmpi slt, %20, %3 : index
    cf.cond_br %21, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %c0_i64, %alloc_7[%20] : memref<?xi64>
    %22 = arith.addi %20, %c1 : index
    cf.br ^bb10(%22 : index)
  ^bb12:  // pred: ^bb10
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%23: index):  // 2 preds: ^bb12, ^bb14
    %24 = arith.cmpi slt, %23, %4 : index
    cf.cond_br %24, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %c0_i64, %alloc_9[%23] : memref<?xi64>
    %25 = arith.addi %23, %c1 : index
    cf.br ^bb13(%25 : index)
  ^bb15:  // pred: ^bb13
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb16(%c0 : index)
  ^bb16(%26: index):  // 2 preds: ^bb15, ^bb17
    %27 = arith.cmpi slt, %26, %5 : index
    cf.cond_br %27, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    memref.store %c0_i64, %alloc_11[%26] : memref<?xi64>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb16(%28 : index)
  ^bb18:  // pred: ^bb16
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%29: index):  // 2 preds: ^bb18, ^bb20
    %30 = arith.cmpi slt, %29, %6 : index
    cf.cond_br %30, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %c0_i64, %alloc_13[%29] : memref<?xi64>
    %31 = arith.addi %29, %c1 : index
    cf.br ^bb19(%31 : index)
  ^bb21:  // pred: ^bb19
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb22(%c0 : index)
  ^bb22(%32: index):  // 2 preds: ^bb21, ^bb23
    %33 = arith.cmpi slt, %32, %7 : index
    cf.cond_br %33, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    memref.store %c0_i64, %alloc_15[%32] : memref<?xi64>
    %34 = arith.addi %32, %c1 : index
    cf.br ^bb22(%34 : index)
  ^bb24:  // pred: ^bb22
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%35: index):  // 2 preds: ^bb24, ^bb26
    %36 = arith.cmpi slt, %35, %8 : index
    cf.cond_br %36, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    memref.store %cst_0, %alloc_17[%35] : memref<?xf64>
    %37 = arith.addi %35, %c1 : index
    cf.br ^bb25(%37 : index)
  ^bb27:  // pred: ^bb25
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%38: index):  // 2 preds: ^bb27, ^bb32
    %39 = arith.cmpi slt, %38, %10 : index
    cf.cond_br %39, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    cf.br ^bb30(%c0 : index)
  ^bb30(%40: index):  // 2 preds: ^bb29, ^bb31
    %41 = arith.cmpi slt, %40, %c4 : index
    cf.cond_br %41, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    memref.store %cst, %alloc_19[%38, %40] : memref<?x4xf64>
    %42 = arith.addi %40, %c1 : index
    cf.br ^bb30(%42 : index)
  ^bb32:  // pred: ^bb30
    %43 = arith.addi %38, %c1 : index
    cf.br ^bb28(%43 : index)
  ^bb33:  // pred: ^bb28
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
    cf.br ^bb34(%c0 : index)
  ^bb34(%44: index):  // 2 preds: ^bb33, ^bb38
    %45 = arith.cmpi slt, %44, %9 : index
    cf.cond_br %45, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    cf.br ^bb36(%c0 : index)
  ^bb36(%46: index):  // 2 preds: ^bb35, ^bb37
    %47 = arith.cmpi slt, %46, %c4 : index
    cf.cond_br %47, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    memref.store %cst_0, %alloc_20[%44, %46] : memref<?x4xf64>
    %48 = arith.addi %46, %c1 : index
    cf.br ^bb36(%48 : index)
  ^bb38:  // pred: ^bb36
    %49 = arith.addi %44, %c1 : index
    cf.br ^bb34(%49 : index)
  ^bb39:  // pred: ^bb34
    cf.br ^bb40(%c0 : index)
  ^bb40(%50: index):  // 2 preds: ^bb39, ^bb47
    %51 = arith.cmpi slt, %50, %9 : index
    cf.cond_br %51, ^bb41, ^bb48
  ^bb41:  // pred: ^bb40
    %52 = arith.addi %50, %c1 : index
    %53 = memref.load %alloc_9[%50] : memref<?xi64>
    %54 = arith.index_cast %53 : i64 to index
    %55 = memref.load %alloc_9[%52] : memref<?xi64>
    %56 = arith.index_cast %55 : i64 to index
    cf.br ^bb42(%54 : index)
  ^bb42(%57: index):  // 2 preds: ^bb41, ^bb46
    %58 = arith.cmpi slt, %57, %56 : index
    cf.cond_br %58, ^bb43, ^bb47
  ^bb43:  // pred: ^bb42
    cf.br ^bb44(%c0 : index)
  ^bb44(%59: index):  // 2 preds: ^bb43, ^bb45
    %60 = arith.cmpi slt, %59, %idx4 : index
    cf.cond_br %60, ^bb45, ^bb46
  ^bb45:  // pred: ^bb44
    %61 = memref.load %alloc_11[%57] : memref<?xi64>
    %62 = arith.index_cast %61 : i64 to index
    %63 = memref.load %alloc_17[%57] : memref<?xf64>
    %64 = memref.load %alloc_19[%62, %59] : memref<?x4xf64>
    %65 = arith.mulf %63, %64 : f64
    %66 = memref.load %alloc_20[%50, %59] : memref<?x4xf64>
    %67 = arith.addf %66, %65 : f64
    memref.store %67, %alloc_20[%50, %59] : memref<?x4xf64>
    %68 = arith.addi %59, %c1 : index
    cf.br ^bb44(%68 : index)
  ^bb46:  // pred: ^bb44
    %69 = arith.addi %57, %c1 : index
    cf.br ^bb42(%69 : index)
  ^bb47:  // pred: ^bb42
    %70 = arith.addi %50, %c1 : index
    cf.br ^bb40(%70 : index)
  ^bb48:  // pred: ^bb40
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
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
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
    %alloc_1 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%11: index):  // 2 preds: ^bb0, ^bb2
    %12 = arith.cmpi slt, %11, %0 : index
    cf.cond_br %12, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    memref.store %c0_i64, %alloc_1[%11] : memref<?xi64>
    %13 = arith.addi %11, %c1 : index
    cf.br ^bb1(%13 : index)
  ^bb3:  // pred: ^bb1
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb4(%c0 : index)
  ^bb4(%14: index):  // 2 preds: ^bb3, ^bb5
    %15 = arith.cmpi slt, %14, %1 : index
    cf.cond_br %15, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %c0_i64, %alloc_3[%14] : memref<?xi64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb4(%16 : index)
  ^bb6:  // pred: ^bb4
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%17: index):  // 2 preds: ^bb6, ^bb8
    %18 = arith.cmpi slt, %17, %2 : index
    cf.cond_br %18, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %c0_i64, %alloc_5[%17] : memref<?xi64>
    %19 = arith.addi %17, %c1 : index
    cf.br ^bb7(%19 : index)
  ^bb9:  // pred: ^bb7
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb10(%c0 : index)
  ^bb10(%20: index):  // 2 preds: ^bb9, ^bb11
    %21 = arith.cmpi slt, %20, %3 : index
    cf.cond_br %21, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %c0_i64, %alloc_7[%20] : memref<?xi64>
    %22 = arith.addi %20, %c1 : index
    cf.br ^bb10(%22 : index)
  ^bb12:  // pred: ^bb10
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%23: index):  // 2 preds: ^bb12, ^bb14
    %24 = arith.cmpi slt, %23, %4 : index
    cf.cond_br %24, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %c0_i64, %alloc_9[%23] : memref<?xi64>
    %25 = arith.addi %23, %c1 : index
    cf.br ^bb13(%25 : index)
  ^bb15:  // pred: ^bb13
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb16(%c0 : index)
  ^bb16(%26: index):  // 2 preds: ^bb15, ^bb17
    %27 = arith.cmpi slt, %26, %5 : index
    cf.cond_br %27, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    memref.store %c0_i64, %alloc_11[%26] : memref<?xi64>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb16(%28 : index)
  ^bb18:  // pred: ^bb16
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%29: index):  // 2 preds: ^bb18, ^bb20
    %30 = arith.cmpi slt, %29, %6 : index
    cf.cond_br %30, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %c0_i64, %alloc_13[%29] : memref<?xi64>
    %31 = arith.addi %29, %c1 : index
    cf.br ^bb19(%31 : index)
  ^bb21:  // pred: ^bb19
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb22(%c0 : index)
  ^bb22(%32: index):  // 2 preds: ^bb21, ^bb23
    %33 = arith.cmpi slt, %32, %7 : index
    cf.cond_br %33, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    memref.store %c0_i64, %alloc_15[%32] : memref<?xi64>
    %34 = arith.addi %32, %c1 : index
    cf.br ^bb22(%34 : index)
  ^bb24:  // pred: ^bb22
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%35: index):  // 2 preds: ^bb24, ^bb26
    %36 = arith.cmpi slt, %35, %8 : index
    cf.cond_br %36, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    memref.store %cst_0, %alloc_17[%35] : memref<?xf64>
    %37 = arith.addi %35, %c1 : index
    cf.br ^bb25(%37 : index)
  ^bb27:  // pred: ^bb25
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%38: index):  // 2 preds: ^bb27, ^bb31
    %39 = arith.cmpi slt, %38, %10 : index
    cf.cond_br %39, ^bb29(%c0 : index), ^bb32
  ^bb29(%40: index):  // 2 preds: ^bb28, ^bb30
    %41 = arith.cmpi slt, %40, %c4 : index
    cf.cond_br %41, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    memref.store %cst, %alloc_19[%38, %40] : memref<?x4xf64>
    %42 = arith.addi %40, %c1 : index
    cf.br ^bb29(%42 : index)
  ^bb31:  // pred: ^bb29
    %43 = arith.addi %38, %c1 : index
    cf.br ^bb28(%43 : index)
  ^bb32:  // pred: ^bb28
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
    cf.br ^bb33(%c0 : index)
  ^bb33(%44: index):  // 2 preds: ^bb32, ^bb36
    %45 = arith.cmpi slt, %44, %9 : index
    cf.cond_br %45, ^bb34(%c0 : index), ^bb37(%c0 : index)
  ^bb34(%46: index):  // 2 preds: ^bb33, ^bb35
    %47 = arith.cmpi slt, %46, %c4 : index
    cf.cond_br %47, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    memref.store %cst_0, %alloc_20[%44, %46] : memref<?x4xf64>
    %48 = arith.addi %46, %c1 : index
    cf.br ^bb34(%48 : index)
  ^bb36:  // pred: ^bb34
    %49 = arith.addi %44, %c1 : index
    cf.br ^bb33(%49 : index)
  ^bb37(%50: index):  // 2 preds: ^bb33, ^bb43
    %51 = arith.cmpi slt, %50, %9 : index
    cf.cond_br %51, ^bb38, ^bb44
  ^bb38:  // pred: ^bb37
    %52 = arith.addi %50, %c1 : index
    %53 = memref.load %alloc_9[%50] : memref<?xi64>
    %54 = arith.index_cast %53 : i64 to index
    %55 = memref.load %alloc_9[%52] : memref<?xi64>
    %56 = arith.index_cast %55 : i64 to index
    cf.br ^bb39(%54 : index)
  ^bb39(%57: index):  // 2 preds: ^bb38, ^bb42
    %58 = arith.cmpi slt, %57, %56 : index
    cf.cond_br %58, ^bb40(%c0 : index), ^bb43
  ^bb40(%59: index):  // 2 preds: ^bb39, ^bb41
    %60 = arith.cmpi slt, %59, %idx4 : index
    cf.cond_br %60, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %61 = memref.load %alloc_11[%57] : memref<?xi64>
    %62 = arith.index_cast %61 : i64 to index
    %63 = memref.load %alloc_17[%57] : memref<?xf64>
    %64 = memref.load %alloc_19[%62, %59] : memref<?x4xf64>
    %65 = arith.mulf %63, %64 : f64
    %66 = memref.load %alloc_20[%50, %59] : memref<?x4xf64>
    %67 = arith.addf %66, %65 : f64
    memref.store %67, %alloc_20[%50, %59] : memref<?x4xf64>
    %68 = arith.addi %59, %c1 : index
    cf.br ^bb40(%68 : index)
  ^bb42:  // pred: ^bb40
    %69 = arith.addi %57, %c1 : index
    cf.br ^bb39(%69 : index)
  ^bb43:  // pred: ^bb39
    %70 = arith.addi %50, %c1 : index
    cf.br ^bb37(%70 : index)
  ^bb44:  // pred: ^bb37
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
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
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
    %alloc_1 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%11: index):  // 2 preds: ^bb0, ^bb2
    %12 = arith.cmpi slt, %11, %0 : index
    cf.cond_br %12, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    memref.store %c0_i64, %alloc_1[%11] : memref<?xi64>
    %13 = arith.addi %11, %c1 : index
    cf.br ^bb1(%13 : index)
  ^bb3:  // pred: ^bb1
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb4(%c0 : index)
  ^bb4(%14: index):  // 2 preds: ^bb3, ^bb5
    %15 = arith.cmpi slt, %14, %1 : index
    cf.cond_br %15, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %c0_i64, %alloc_3[%14] : memref<?xi64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb4(%16 : index)
  ^bb6:  // pred: ^bb4
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%17: index):  // 2 preds: ^bb6, ^bb8
    %18 = arith.cmpi slt, %17, %2 : index
    cf.cond_br %18, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %c0_i64, %alloc_5[%17] : memref<?xi64>
    %19 = arith.addi %17, %c1 : index
    cf.br ^bb7(%19 : index)
  ^bb9:  // pred: ^bb7
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb10(%c0 : index)
  ^bb10(%20: index):  // 2 preds: ^bb9, ^bb11
    %21 = arith.cmpi slt, %20, %3 : index
    cf.cond_br %21, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %c0_i64, %alloc_7[%20] : memref<?xi64>
    %22 = arith.addi %20, %c1 : index
    cf.br ^bb10(%22 : index)
  ^bb12:  // pred: ^bb10
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%23: index):  // 2 preds: ^bb12, ^bb14
    %24 = arith.cmpi slt, %23, %4 : index
    cf.cond_br %24, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %c0_i64, %alloc_9[%23] : memref<?xi64>
    %25 = arith.addi %23, %c1 : index
    cf.br ^bb13(%25 : index)
  ^bb15:  // pred: ^bb13
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb16(%c0 : index)
  ^bb16(%26: index):  // 2 preds: ^bb15, ^bb17
    %27 = arith.cmpi slt, %26, %5 : index
    cf.cond_br %27, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    memref.store %c0_i64, %alloc_11[%26] : memref<?xi64>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb16(%28 : index)
  ^bb18:  // pred: ^bb16
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%29: index):  // 2 preds: ^bb18, ^bb20
    %30 = arith.cmpi slt, %29, %6 : index
    cf.cond_br %30, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %c0_i64, %alloc_13[%29] : memref<?xi64>
    %31 = arith.addi %29, %c1 : index
    cf.br ^bb19(%31 : index)
  ^bb21:  // pred: ^bb19
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb22(%c0 : index)
  ^bb22(%32: index):  // 2 preds: ^bb21, ^bb23
    %33 = arith.cmpi slt, %32, %7 : index
    cf.cond_br %33, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    memref.store %c0_i64, %alloc_15[%32] : memref<?xi64>
    %34 = arith.addi %32, %c1 : index
    cf.br ^bb22(%34 : index)
  ^bb24:  // pred: ^bb22
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%35: index):  // 2 preds: ^bb24, ^bb26
    %36 = arith.cmpi slt, %35, %8 : index
    cf.cond_br %36, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    memref.store %cst_0, %alloc_17[%35] : memref<?xf64>
    %37 = arith.addi %35, %c1 : index
    cf.br ^bb25(%37 : index)
  ^bb27:  // pred: ^bb25
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%38: index):  // 2 preds: ^bb27, ^bb31
    %39 = arith.cmpi slt, %38, %10 : index
    cf.cond_br %39, ^bb29(%c0 : index), ^bb32
  ^bb29(%40: index):  // 2 preds: ^bb28, ^bb30
    %41 = arith.cmpi slt, %40, %c4 : index
    cf.cond_br %41, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    memref.store %cst, %alloc_19[%38, %40] : memref<?x4xf64>
    %42 = arith.addi %40, %c1 : index
    cf.br ^bb29(%42 : index)
  ^bb31:  // pred: ^bb29
    %43 = arith.addi %38, %c1 : index
    cf.br ^bb28(%43 : index)
  ^bb32:  // pred: ^bb28
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
    cf.br ^bb33(%c0 : index)
  ^bb33(%44: index):  // 2 preds: ^bb32, ^bb36
    %45 = arith.cmpi slt, %44, %9 : index
    cf.cond_br %45, ^bb34(%c0 : index), ^bb37(%c0 : index)
  ^bb34(%46: index):  // 2 preds: ^bb33, ^bb35
    %47 = arith.cmpi slt, %46, %c4 : index
    cf.cond_br %47, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    memref.store %cst_0, %alloc_20[%44, %46] : memref<?x4xf64>
    %48 = arith.addi %46, %c1 : index
    cf.br ^bb34(%48 : index)
  ^bb36:  // pred: ^bb34
    %49 = arith.addi %44, %c1 : index
    cf.br ^bb33(%49 : index)
  ^bb37(%50: index):  // 2 preds: ^bb33, ^bb43
    %51 = arith.cmpi slt, %50, %9 : index
    cf.cond_br %51, ^bb38, ^bb44
  ^bb38:  // pred: ^bb37
    %52 = arith.addi %50, %c1 : index
    %53 = memref.load %alloc_9[%50] : memref<?xi64>
    %54 = arith.index_cast %53 : i64 to index
    %55 = memref.load %alloc_9[%52] : memref<?xi64>
    %56 = arith.index_cast %55 : i64 to index
    cf.br ^bb39(%54 : index)
  ^bb39(%57: index):  // 2 preds: ^bb38, ^bb42
    %58 = arith.cmpi slt, %57, %56 : index
    cf.cond_br %58, ^bb40(%c0 : index), ^bb43
  ^bb40(%59: index):  // 2 preds: ^bb39, ^bb41
    %60 = arith.cmpi slt, %59, %idx4 : index
    cf.cond_br %60, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %61 = memref.load %alloc_11[%57] : memref<?xi64>
    %62 = arith.index_cast %61 : i64 to index
    %63 = memref.load %alloc_17[%57] : memref<?xf64>
    %64 = memref.load %alloc_19[%62, %59] : memref<?x4xf64>
    %65 = arith.mulf %63, %64 : f64
    %66 = memref.load %alloc_20[%50, %59] : memref<?x4xf64>
    %67 = arith.addf %66, %65 : f64
    memref.store %67, %alloc_20[%50, %59] : memref<?x4xf64>
    %68 = arith.addi %59, %c1 : index
    cf.br ^bb40(%68 : index)
  ^bb42:  // pred: ^bb40
    %69 = arith.addi %57, %c1 : index
    cf.br ^bb39(%69 : index)
  ^bb43:  // pred: ^bb39
    cf.br ^bb37(%52 : index)
  ^bb44:  // pred: ^bb37
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertVectorToLLVMPass (convert-vector-to-llvm) //----- //
module {
  func.func @main() {
    %idx4 = index.constant 4
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
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
    %alloc_1 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%11: index):  // 2 preds: ^bb0, ^bb2
    %12 = arith.cmpi slt, %11, %0 : index
    cf.cond_br %12, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    memref.store %c0_i64, %alloc_1[%11] : memref<?xi64>
    %13 = arith.addi %11, %c1 : index
    cf.br ^bb1(%13 : index)
  ^bb3:  // pred: ^bb1
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb4(%c0 : index)
  ^bb4(%14: index):  // 2 preds: ^bb3, ^bb5
    %15 = arith.cmpi slt, %14, %1 : index
    cf.cond_br %15, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %c0_i64, %alloc_3[%14] : memref<?xi64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb4(%16 : index)
  ^bb6:  // pred: ^bb4
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%17: index):  // 2 preds: ^bb6, ^bb8
    %18 = arith.cmpi slt, %17, %2 : index
    cf.cond_br %18, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %c0_i64, %alloc_5[%17] : memref<?xi64>
    %19 = arith.addi %17, %c1 : index
    cf.br ^bb7(%19 : index)
  ^bb9:  // pred: ^bb7
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb10(%c0 : index)
  ^bb10(%20: index):  // 2 preds: ^bb9, ^bb11
    %21 = arith.cmpi slt, %20, %3 : index
    cf.cond_br %21, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %c0_i64, %alloc_7[%20] : memref<?xi64>
    %22 = arith.addi %20, %c1 : index
    cf.br ^bb10(%22 : index)
  ^bb12:  // pred: ^bb10
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%23: index):  // 2 preds: ^bb12, ^bb14
    %24 = arith.cmpi slt, %23, %4 : index
    cf.cond_br %24, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %c0_i64, %alloc_9[%23] : memref<?xi64>
    %25 = arith.addi %23, %c1 : index
    cf.br ^bb13(%25 : index)
  ^bb15:  // pred: ^bb13
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb16(%c0 : index)
  ^bb16(%26: index):  // 2 preds: ^bb15, ^bb17
    %27 = arith.cmpi slt, %26, %5 : index
    cf.cond_br %27, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    memref.store %c0_i64, %alloc_11[%26] : memref<?xi64>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb16(%28 : index)
  ^bb18:  // pred: ^bb16
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%29: index):  // 2 preds: ^bb18, ^bb20
    %30 = arith.cmpi slt, %29, %6 : index
    cf.cond_br %30, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %c0_i64, %alloc_13[%29] : memref<?xi64>
    %31 = arith.addi %29, %c1 : index
    cf.br ^bb19(%31 : index)
  ^bb21:  // pred: ^bb19
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb22(%c0 : index)
  ^bb22(%32: index):  // 2 preds: ^bb21, ^bb23
    %33 = arith.cmpi slt, %32, %7 : index
    cf.cond_br %33, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    memref.store %c0_i64, %alloc_15[%32] : memref<?xi64>
    %34 = arith.addi %32, %c1 : index
    cf.br ^bb22(%34 : index)
  ^bb24:  // pred: ^bb22
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%35: index):  // 2 preds: ^bb24, ^bb26
    %36 = arith.cmpi slt, %35, %8 : index
    cf.cond_br %36, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    memref.store %cst_0, %alloc_17[%35] : memref<?xf64>
    %37 = arith.addi %35, %c1 : index
    cf.br ^bb25(%37 : index)
  ^bb27:  // pred: ^bb25
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%38: index):  // 2 preds: ^bb27, ^bb31
    %39 = arith.cmpi slt, %38, %10 : index
    cf.cond_br %39, ^bb29(%c0 : index), ^bb32
  ^bb29(%40: index):  // 2 preds: ^bb28, ^bb30
    %41 = arith.cmpi slt, %40, %c4 : index
    cf.cond_br %41, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    memref.store %cst, %alloc_19[%38, %40] : memref<?x4xf64>
    %42 = arith.addi %40, %c1 : index
    cf.br ^bb29(%42 : index)
  ^bb31:  // pred: ^bb29
    %43 = arith.addi %38, %c1 : index
    cf.br ^bb28(%43 : index)
  ^bb32:  // pred: ^bb28
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
    cf.br ^bb33(%c0 : index)
  ^bb33(%44: index):  // 2 preds: ^bb32, ^bb36
    %45 = arith.cmpi slt, %44, %9 : index
    cf.cond_br %45, ^bb34(%c0 : index), ^bb37(%c0 : index)
  ^bb34(%46: index):  // 2 preds: ^bb33, ^bb35
    %47 = arith.cmpi slt, %46, %c4 : index
    cf.cond_br %47, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    memref.store %cst_0, %alloc_20[%44, %46] : memref<?x4xf64>
    %48 = arith.addi %46, %c1 : index
    cf.br ^bb34(%48 : index)
  ^bb36:  // pred: ^bb34
    %49 = arith.addi %44, %c1 : index
    cf.br ^bb33(%49 : index)
  ^bb37(%50: index):  // 2 preds: ^bb33, ^bb43
    %51 = arith.cmpi slt, %50, %9 : index
    cf.cond_br %51, ^bb38, ^bb44
  ^bb38:  // pred: ^bb37
    %52 = arith.addi %50, %c1 : index
    %53 = memref.load %alloc_9[%50] : memref<?xi64>
    %54 = arith.index_cast %53 : i64 to index
    %55 = memref.load %alloc_9[%52] : memref<?xi64>
    %56 = arith.index_cast %55 : i64 to index
    cf.br ^bb39(%54 : index)
  ^bb39(%57: index):  // 2 preds: ^bb38, ^bb42
    %58 = arith.cmpi slt, %57, %56 : index
    cf.cond_br %58, ^bb40(%c0 : index), ^bb43
  ^bb40(%59: index):  // 2 preds: ^bb39, ^bb41
    %60 = arith.cmpi slt, %59, %idx4 : index
    cf.cond_br %60, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %61 = memref.load %alloc_11[%57] : memref<?xi64>
    %62 = arith.index_cast %61 : i64 to index
    %63 = memref.load %alloc_17[%57] : memref<?xf64>
    %64 = memref.load %alloc_19[%62, %59] : memref<?x4xf64>
    %65 = arith.mulf %63, %64 : f64
    %66 = memref.load %alloc_20[%50, %59] : memref<?x4xf64>
    %67 = arith.addf %66, %65 : f64
    memref.store %67, %alloc_20[%50, %59] : memref<?x4xf64>
    %68 = arith.addi %59, %c1 : index
    cf.br ^bb40(%68 : index)
  ^bb42:  // pred: ^bb40
    %69 = arith.addi %57, %c1 : index
    cf.br ^bb39(%69 : index)
  ^bb43:  // pred: ^bb39
    cf.br ^bb37(%52 : index)
  ^bb44:  // pred: ^bb37
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func @main() {
  %idx4 = index.constant 4
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
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
  %alloc_1 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
  cf.br ^bb1(%c0 : index)
^bb1(%11: index):  // 2 preds: ^bb0, ^bb2
  %12 = arith.cmpi slt, %11, %0 : index
  cf.cond_br %12, ^bb2, ^bb3
^bb2:  // pred: ^bb1
  memref.store %c0_i64, %alloc_1[%11] : memref<?xi64>
  %13 = arith.addi %11, %c1 : index
  cf.br ^bb1(%13 : index)
^bb3:  // pred: ^bb1
  %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
  %alloc_3 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
  cf.br ^bb4(%c0 : index)
^bb4(%14: index):  // 2 preds: ^bb3, ^bb5
  %15 = arith.cmpi slt, %14, %1 : index
  cf.cond_br %15, ^bb5, ^bb6
^bb5:  // pred: ^bb4
  memref.store %c0_i64, %alloc_3[%14] : memref<?xi64>
  %16 = arith.addi %14, %c1 : index
  cf.br ^bb4(%16 : index)
^bb6:  // pred: ^bb4
  %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
  %alloc_5 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
  cf.br ^bb7(%c0 : index)
^bb7(%17: index):  // 2 preds: ^bb6, ^bb8
  %18 = arith.cmpi slt, %17, %2 : index
  cf.cond_br %18, ^bb8, ^bb9
^bb8:  // pred: ^bb7
  memref.store %c0_i64, %alloc_5[%17] : memref<?xi64>
  %19 = arith.addi %17, %c1 : index
  cf.br ^bb7(%19 : index)
^bb9:  // pred: ^bb7
  %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
  %alloc_7 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
  cf.br ^bb10(%c0 : index)
^bb10(%20: index):  // 2 preds: ^bb9, ^bb11
  %21 = arith.cmpi slt, %20, %3 : index
  cf.cond_br %21, ^bb11, ^bb12
^bb11:  // pred: ^bb10
  memref.store %c0_i64, %alloc_7[%20] : memref<?xi64>
  %22 = arith.addi %20, %c1 : index
  cf.br ^bb10(%22 : index)
^bb12:  // pred: ^bb10
  %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
  %alloc_9 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
  cf.br ^bb13(%c0 : index)
^bb13(%23: index):  // 2 preds: ^bb12, ^bb14
  %24 = arith.cmpi slt, %23, %4 : index
  cf.cond_br %24, ^bb14, ^bb15
^bb14:  // pred: ^bb13
  memref.store %c0_i64, %alloc_9[%23] : memref<?xi64>
  %25 = arith.addi %23, %c1 : index
  cf.br ^bb13(%25 : index)
^bb15:  // pred: ^bb13
  %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
  cf.br ^bb16(%c0 : index)
^bb16(%26: index):  // 2 preds: ^bb15, ^bb17
  %27 = arith.cmpi slt, %26, %5 : index
  cf.cond_br %27, ^bb17, ^bb18
^bb17:  // pred: ^bb16
  memref.store %c0_i64, %alloc_11[%26] : memref<?xi64>
  %28 = arith.addi %26, %c1 : index
  cf.br ^bb16(%28 : index)
^bb18:  // pred: ^bb16
  %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_13 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
  cf.br ^bb19(%c0 : index)
^bb19(%29: index):  // 2 preds: ^bb18, ^bb20
  %30 = arith.cmpi slt, %29, %6 : index
  cf.cond_br %30, ^bb20, ^bb21
^bb20:  // pred: ^bb19
  memref.store %c0_i64, %alloc_13[%29] : memref<?xi64>
  %31 = arith.addi %29, %c1 : index
  cf.br ^bb19(%31 : index)
^bb21:  // pred: ^bb19
  %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
  %alloc_15 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
  cf.br ^bb22(%c0 : index)
^bb22(%32: index):  // 2 preds: ^bb21, ^bb23
  %33 = arith.cmpi slt, %32, %7 : index
  cf.cond_br %33, ^bb23, ^bb24
^bb23:  // pred: ^bb22
  memref.store %c0_i64, %alloc_15[%32] : memref<?xi64>
  %34 = arith.addi %32, %c1 : index
  cf.br ^bb22(%34 : index)
^bb24:  // pred: ^bb22
  %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
  cf.br ^bb25(%c0 : index)
^bb25(%35: index):  // 2 preds: ^bb24, ^bb26
  %36 = arith.cmpi slt, %35, %8 : index
  cf.cond_br %36, ^bb26, ^bb27
^bb26:  // pred: ^bb25
  memref.store %cst_0, %alloc_17[%35] : memref<?xf64>
  %37 = arith.addi %35, %c1 : index
  cf.br ^bb25(%37 : index)
^bb27:  // pred: ^bb25
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  cf.br ^bb28(%c0 : index)
^bb28(%38: index):  // 2 preds: ^bb27, ^bb31
  %39 = arith.cmpi slt, %38, %10 : index
  cf.cond_br %39, ^bb29(%c0 : index), ^bb32
^bb29(%40: index):  // 2 preds: ^bb28, ^bb30
  %41 = arith.cmpi slt, %40, %c4 : index
  cf.cond_br %41, ^bb30, ^bb31
^bb30:  // pred: ^bb29
  memref.store %cst, %alloc_19[%38, %40] : memref<?x4xf64>
  %42 = arith.addi %40, %c1 : index
  cf.br ^bb29(%42 : index)
^bb31:  // pred: ^bb29
  %43 = arith.addi %38, %c1 : index
  cf.br ^bb28(%43 : index)
^bb32:  // pred: ^bb28
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
  cf.br ^bb33(%c0 : index)
^bb33(%44: index):  // 2 preds: ^bb32, ^bb36
  %45 = arith.cmpi slt, %44, %9 : index
  cf.cond_br %45, ^bb34(%c0 : index), ^bb37(%c0 : index)
^bb34(%46: index):  // 2 preds: ^bb33, ^bb35
  %47 = arith.cmpi slt, %46, %c4 : index
  cf.cond_br %47, ^bb35, ^bb36
^bb35:  // pred: ^bb34
  memref.store %cst_0, %alloc_20[%44, %46] : memref<?x4xf64>
  %48 = arith.addi %46, %c1 : index
  cf.br ^bb34(%48 : index)
^bb36:  // pred: ^bb34
  %49 = arith.addi %44, %c1 : index
  cf.br ^bb33(%49 : index)
^bb37(%50: index):  // 2 preds: ^bb33, ^bb43
  %51 = arith.cmpi slt, %50, %9 : index
  cf.cond_br %51, ^bb38, ^bb44
^bb38:  // pred: ^bb37
  %52 = arith.addi %50, %c1 : index
  %53 = memref.load %alloc_9[%50] : memref<?xi64>
  %54 = arith.index_cast %53 : i64 to index
  %55 = memref.load %alloc_9[%52] : memref<?xi64>
  %56 = arith.index_cast %55 : i64 to index
  cf.br ^bb39(%54 : index)
^bb39(%57: index):  // 2 preds: ^bb38, ^bb42
  %58 = arith.cmpi slt, %57, %56 : index
  cf.cond_br %58, ^bb40(%c0 : index), ^bb43
^bb40(%59: index):  // 2 preds: ^bb39, ^bb41
  %60 = arith.cmpi slt, %59, %idx4 : index
  cf.cond_br %60, ^bb41, ^bb42
^bb41:  // pred: ^bb40
  %61 = memref.load %alloc_11[%57] : memref<?xi64>
  %62 = arith.index_cast %61 : i64 to index
  %63 = memref.load %alloc_17[%57] : memref<?xf64>
  %64 = memref.load %alloc_19[%62, %59] : memref<?x4xf64>
  %65 = arith.mulf %63, %64 : f64
  %66 = memref.load %alloc_20[%50, %59] : memref<?x4xf64>
  %67 = arith.addf %66, %65 : f64
  memref.store %67, %alloc_20[%50, %59] : memref<?x4xf64>
  %68 = arith.addi %59, %c1 : index
  cf.br ^bb40(%68 : index)
^bb42:  // pred: ^bb40
  %69 = arith.addi %57, %c1 : index
  cf.br ^bb39(%69 : index)
^bb43:  // pred: ^bb39
  cf.br ^bb37(%52 : index)
^bb44:  // pred: ^bb37
  %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ExpandStridedMetadata (expand-strided-metadata) //----- //
module {
  func.func @main() {
    %idx4 = index.constant 4
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
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
    %alloc_1 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%11: index):  // 2 preds: ^bb0, ^bb2
    %12 = arith.cmpi slt, %11, %0 : index
    cf.cond_br %12, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    memref.store %c0_i64, %alloc_1[%11] : memref<?xi64>
    %13 = arith.addi %11, %c1 : index
    cf.br ^bb1(%13 : index)
  ^bb3:  // pred: ^bb1
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb4(%c0 : index)
  ^bb4(%14: index):  // 2 preds: ^bb3, ^bb5
    %15 = arith.cmpi slt, %14, %1 : index
    cf.cond_br %15, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %c0_i64, %alloc_3[%14] : memref<?xi64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb4(%16 : index)
  ^bb6:  // pred: ^bb4
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%17: index):  // 2 preds: ^bb6, ^bb8
    %18 = arith.cmpi slt, %17, %2 : index
    cf.cond_br %18, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %c0_i64, %alloc_5[%17] : memref<?xi64>
    %19 = arith.addi %17, %c1 : index
    cf.br ^bb7(%19 : index)
  ^bb9:  // pred: ^bb7
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb10(%c0 : index)
  ^bb10(%20: index):  // 2 preds: ^bb9, ^bb11
    %21 = arith.cmpi slt, %20, %3 : index
    cf.cond_br %21, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %c0_i64, %alloc_7[%20] : memref<?xi64>
    %22 = arith.addi %20, %c1 : index
    cf.br ^bb10(%22 : index)
  ^bb12:  // pred: ^bb10
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%23: index):  // 2 preds: ^bb12, ^bb14
    %24 = arith.cmpi slt, %23, %4 : index
    cf.cond_br %24, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %c0_i64, %alloc_9[%23] : memref<?xi64>
    %25 = arith.addi %23, %c1 : index
    cf.br ^bb13(%25 : index)
  ^bb15:  // pred: ^bb13
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb16(%c0 : index)
  ^bb16(%26: index):  // 2 preds: ^bb15, ^bb17
    %27 = arith.cmpi slt, %26, %5 : index
    cf.cond_br %27, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    memref.store %c0_i64, %alloc_11[%26] : memref<?xi64>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb16(%28 : index)
  ^bb18:  // pred: ^bb16
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%29: index):  // 2 preds: ^bb18, ^bb20
    %30 = arith.cmpi slt, %29, %6 : index
    cf.cond_br %30, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %c0_i64, %alloc_13[%29] : memref<?xi64>
    %31 = arith.addi %29, %c1 : index
    cf.br ^bb19(%31 : index)
  ^bb21:  // pred: ^bb19
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb22(%c0 : index)
  ^bb22(%32: index):  // 2 preds: ^bb21, ^bb23
    %33 = arith.cmpi slt, %32, %7 : index
    cf.cond_br %33, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    memref.store %c0_i64, %alloc_15[%32] : memref<?xi64>
    %34 = arith.addi %32, %c1 : index
    cf.br ^bb22(%34 : index)
  ^bb24:  // pred: ^bb22
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%35: index):  // 2 preds: ^bb24, ^bb26
    %36 = arith.cmpi slt, %35, %8 : index
    cf.cond_br %36, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    memref.store %cst_0, %alloc_17[%35] : memref<?xf64>
    %37 = arith.addi %35, %c1 : index
    cf.br ^bb25(%37 : index)
  ^bb27:  // pred: ^bb25
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%38: index):  // 2 preds: ^bb27, ^bb31
    %39 = arith.cmpi slt, %38, %10 : index
    cf.cond_br %39, ^bb29(%c0 : index), ^bb32
  ^bb29(%40: index):  // 2 preds: ^bb28, ^bb30
    %41 = arith.cmpi slt, %40, %c4 : index
    cf.cond_br %41, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    memref.store %cst, %alloc_19[%38, %40] : memref<?x4xf64>
    %42 = arith.addi %40, %c1 : index
    cf.br ^bb29(%42 : index)
  ^bb31:  // pred: ^bb29
    %43 = arith.addi %38, %c1 : index
    cf.br ^bb28(%43 : index)
  ^bb32:  // pred: ^bb28
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
    cf.br ^bb33(%c0 : index)
  ^bb33(%44: index):  // 2 preds: ^bb32, ^bb36
    %45 = arith.cmpi slt, %44, %9 : index
    cf.cond_br %45, ^bb34(%c0 : index), ^bb37(%c0 : index)
  ^bb34(%46: index):  // 2 preds: ^bb33, ^bb35
    %47 = arith.cmpi slt, %46, %c4 : index
    cf.cond_br %47, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    memref.store %cst_0, %alloc_20[%44, %46] : memref<?x4xf64>
    %48 = arith.addi %46, %c1 : index
    cf.br ^bb34(%48 : index)
  ^bb36:  // pred: ^bb34
    %49 = arith.addi %44, %c1 : index
    cf.br ^bb33(%49 : index)
  ^bb37(%50: index):  // 2 preds: ^bb33, ^bb43
    %51 = arith.cmpi slt, %50, %9 : index
    cf.cond_br %51, ^bb38, ^bb44
  ^bb38:  // pred: ^bb37
    %52 = arith.addi %50, %c1 : index
    %53 = memref.load %alloc_9[%50] : memref<?xi64>
    %54 = arith.index_cast %53 : i64 to index
    %55 = memref.load %alloc_9[%52] : memref<?xi64>
    %56 = arith.index_cast %55 : i64 to index
    cf.br ^bb39(%54 : index)
  ^bb39(%57: index):  // 2 preds: ^bb38, ^bb42
    %58 = arith.cmpi slt, %57, %56 : index
    cf.cond_br %58, ^bb40(%c0 : index), ^bb43
  ^bb40(%59: index):  // 2 preds: ^bb39, ^bb41
    %60 = arith.cmpi slt, %59, %idx4 : index
    cf.cond_br %60, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %61 = memref.load %alloc_11[%57] : memref<?xi64>
    %62 = arith.index_cast %61 : i64 to index
    %63 = memref.load %alloc_17[%57] : memref<?xf64>
    %64 = memref.load %alloc_19[%62, %59] : memref<?x4xf64>
    %65 = arith.mulf %63, %64 : f64
    %66 = memref.load %alloc_20[%50, %59] : memref<?x4xf64>
    %67 = arith.addf %66, %65 : f64
    memref.store %67, %alloc_20[%50, %59] : memref<?x4xf64>
    %68 = arith.addi %59, %c1 : index
    cf.br ^bb40(%68 : index)
  ^bb42:  // pred: ^bb40
    %69 = arith.addi %57, %c1 : index
    cf.br ^bb39(%69 : index)
  ^bb43:  // pred: ^bb39
    cf.br ^bb37(%52 : index)
  ^bb44:  // pred: ^bb37
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %idx4 = index.constant 4
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
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() {allocator = "rapid"} : memref<13xindex>
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
    %alloc_1 = memref.alloc(%0) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb1(%c0 : index)
  ^bb1(%11: index):  // 2 preds: ^bb0, ^bb2
    %12 = arith.cmpi slt, %11, %0 : index
    cf.cond_br %12, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    memref.store %c0_i64, %alloc_1[%11] : memref<?xi64>
    %13 = arith.addi %11, %c1 : index
    cf.br ^bb1(%13 : index)
  ^bb3:  // pred: ^bb1
    %cast_2 = memref.cast %alloc_1 : memref<?xi64> to memref<*xi64>
    %alloc_3 = memref.alloc(%1) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb4(%c0 : index)
  ^bb4(%14: index):  // 2 preds: ^bb3, ^bb5
    %15 = arith.cmpi slt, %14, %1 : index
    cf.cond_br %15, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %c0_i64, %alloc_3[%14] : memref<?xi64>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb4(%16 : index)
  ^bb6:  // pred: ^bb4
    %cast_4 = memref.cast %alloc_3 : memref<?xi64> to memref<*xi64>
    %alloc_5 = memref.alloc(%2) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%17: index):  // 2 preds: ^bb6, ^bb8
    %18 = arith.cmpi slt, %17, %2 : index
    cf.cond_br %18, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %c0_i64, %alloc_5[%17] : memref<?xi64>
    %19 = arith.addi %17, %c1 : index
    cf.br ^bb7(%19 : index)
  ^bb9:  // pred: ^bb7
    %cast_6 = memref.cast %alloc_5 : memref<?xi64> to memref<*xi64>
    %alloc_7 = memref.alloc(%3) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb10(%c0 : index)
  ^bb10(%20: index):  // 2 preds: ^bb9, ^bb11
    %21 = arith.cmpi slt, %20, %3 : index
    cf.cond_br %21, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %c0_i64, %alloc_7[%20] : memref<?xi64>
    %22 = arith.addi %20, %c1 : index
    cf.br ^bb10(%22 : index)
  ^bb12:  // pred: ^bb10
    %cast_8 = memref.cast %alloc_7 : memref<?xi64> to memref<*xi64>
    %alloc_9 = memref.alloc(%4) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%23: index):  // 2 preds: ^bb12, ^bb14
    %24 = arith.cmpi slt, %23, %4 : index
    cf.cond_br %24, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %c0_i64, %alloc_9[%23] : memref<?xi64>
    %25 = arith.addi %23, %c1 : index
    cf.br ^bb13(%25 : index)
  ^bb15:  // pred: ^bb13
    %cast_10 = memref.cast %alloc_9 : memref<?xi64> to memref<*xi64>
    %alloc_11 = memref.alloc(%5) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb16(%c0 : index)
  ^bb16(%26: index):  // 2 preds: ^bb15, ^bb17
    %27 = arith.cmpi slt, %26, %5 : index
    cf.cond_br %27, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    memref.store %c0_i64, %alloc_11[%26] : memref<?xi64>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb16(%28 : index)
  ^bb18:  // pred: ^bb16
    %cast_12 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
    %alloc_13 = memref.alloc(%6) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%29: index):  // 2 preds: ^bb18, ^bb20
    %30 = arith.cmpi slt, %29, %6 : index
    cf.cond_br %30, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %c0_i64, %alloc_13[%29] : memref<?xi64>
    %31 = arith.addi %29, %c1 : index
    cf.br ^bb19(%31 : index)
  ^bb21:  // pred: ^bb19
    %cast_14 = memref.cast %alloc_13 : memref<?xi64> to memref<*xi64>
    %alloc_15 = memref.alloc(%7) {allocator = "rapid"} : memref<?xi64>
    cf.br ^bb22(%c0 : index)
  ^bb22(%32: index):  // 2 preds: ^bb21, ^bb23
    %33 = arith.cmpi slt, %32, %7 : index
    cf.cond_br %33, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    memref.store %c0_i64, %alloc_15[%32] : memref<?xi64>
    %34 = arith.addi %32, %c1 : index
    cf.br ^bb22(%34 : index)
  ^bb24:  // pred: ^bb22
    %cast_16 = memref.cast %alloc_15 : memref<?xi64> to memref<*xi64>
    %alloc_17 = memref.alloc(%8) {allocator = "rapid"} : memref<?xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%35: index):  // 2 preds: ^bb24, ^bb26
    %36 = arith.cmpi slt, %35, %8 : index
    cf.cond_br %36, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    memref.store %cst_0, %alloc_17[%35] : memref<?xf64>
    %37 = arith.addi %35, %c1 : index
    cf.br ^bb25(%37 : index)
  ^bb27:  // pred: ^bb25
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%38: index):  // 2 preds: ^bb27, ^bb31
    %39 = arith.cmpi slt, %38, %10 : index
    cf.cond_br %39, ^bb29(%c0 : index), ^bb32
  ^bb29(%40: index):  // 2 preds: ^bb28, ^bb30
    %41 = arith.cmpi slt, %40, %c4 : index
    cf.cond_br %41, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    memref.store %cst, %alloc_19[%38, %40] : memref<?x4xf64>
    %42 = arith.addi %40, %c1 : index
    cf.br ^bb29(%42 : index)
  ^bb31:  // pred: ^bb29
    %43 = arith.addi %38, %c1 : index
    cf.br ^bb28(%43 : index)
  ^bb32:  // pred: ^bb28
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64, allocator = "rapid"} : memref<?x4xf64>
    cf.br ^bb33(%c0 : index)
  ^bb33(%44: index):  // 2 preds: ^bb32, ^bb36
    %45 = arith.cmpi slt, %44, %9 : index
    cf.cond_br %45, ^bb34(%c0 : index), ^bb37(%c0 : index)
  ^bb34(%46: index):  // 2 preds: ^bb33, ^bb35
    %47 = arith.cmpi slt, %46, %c4 : index
    cf.cond_br %47, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    memref.store %cst_0, %alloc_20[%44, %46] : memref<?x4xf64>
    %48 = arith.addi %46, %c1 : index
    cf.br ^bb34(%48 : index)
  ^bb36:  // pred: ^bb34
    %49 = arith.addi %44, %c1 : index
    cf.br ^bb33(%49 : index)
  ^bb37(%50: index):  // 2 preds: ^bb33, ^bb43
    %51 = arith.cmpi slt, %50, %9 : index
    cf.cond_br %51, ^bb38, ^bb44
  ^bb38:  // pred: ^bb37
    %52 = arith.addi %50, %c1 : index
    %53 = memref.load %alloc_9[%50] : memref<?xi64>
    %54 = arith.index_cast %53 : i64 to index
    %55 = memref.load %alloc_9[%52] : memref<?xi64>
    %56 = arith.index_cast %55 : i64 to index
    cf.br ^bb39(%54 : index)
  ^bb39(%57: index):  // 2 preds: ^bb38, ^bb42
    %58 = arith.cmpi slt, %57, %56 : index
    cf.cond_br %58, ^bb40(%c0 : index), ^bb43
  ^bb40(%59: index):  // 2 preds: ^bb39, ^bb41
    %60 = arith.cmpi slt, %59, %idx4 : index
    cf.cond_br %60, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %61 = memref.load %alloc_11[%57] : memref<?xi64>
    %62 = arith.index_cast %61 : i64 to index
    %63 = memref.load %alloc_17[%57] : memref<?xf64>
    %64 = memref.load %alloc_19[%62, %59] : memref<?x4xf64>
    %65 = arith.mulf %63, %64 : f64
    %66 = memref.load %alloc_20[%50, %59] : memref<?x4xf64>
    %67 = arith.addf %66, %65 : f64
    memref.store %67, %alloc_20[%50, %59] : memref<?x4xf64>
    %68 = arith.addi %59, %c1 : index
    cf.br ^bb40(%68 : index)
  ^bb42:  // pred: ^bb40
    %69 = arith.addi %57, %c1 : index
    cf.br ^bb39(%69 : index)
  ^bb43:  // pred: ^bb39
    cf.br ^bb37(%52 : index)
  ^bb44:  // pred: ^bb37
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After FinalizeMemRefToLLVMConversionPass (finalize-memref-to-llvm) //----- //
module {
  llvm.func @rapid_malloc(!llvm.ptr, i64) -> !llvm.ptr
  llvm.func @rapid_initialize() -> !llvm.ptr
  func.func @main() {
    %idx4 = index.constant 4
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c10 = arith.constant 10 : index
    %0 = builtin.unrealized_conversion_cast %c10 : index to i64
    %c9 = arith.constant 9 : index
    %1 = builtin.unrealized_conversion_cast %c9 : index to i64
    %c8 = arith.constant 8 : index
    %2 = builtin.unrealized_conversion_cast %c8 : index to i64
    %c7 = arith.constant 7 : index
    %3 = builtin.unrealized_conversion_cast %c7 : index to i64
    %c6 = arith.constant 6 : index
    %4 = builtin.unrealized_conversion_cast %c6 : index to i64
    %c5 = arith.constant 5 : index
    %5 = builtin.unrealized_conversion_cast %c5 : index to i64
    %c4 = arith.constant 4 : index
    %6 = builtin.unrealized_conversion_cast %c4 : index to i64
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %7 = builtin.unrealized_conversion_cast %c3 : index to i64
    %c2 = arith.constant 2 : index
    %8 = builtin.unrealized_conversion_cast %c2 : index to i64
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %9 = builtin.unrealized_conversion_cast %c1 : index to i64
    %c0 = arith.constant 0 : index
    %10 = builtin.unrealized_conversion_cast %c0 : index to i64
    %11 = llvm.mlir.constant(13 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.mlir.zero : !llvm.ptr
    %14 = llvm.getelementptr %13[%11] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %15 = llvm.ptrtoint %14 : !llvm.ptr to i64
    %16 = llvm.call @rapid_initialize() : () -> !llvm.ptr
    %17 = llvm.call @rapid_malloc(%16, %15) : (!llvm.ptr, i64) -> !llvm.ptr
    %18 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.insertvalue %17, %18[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %17, %19[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.insertvalue %21, %20[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.insertvalue %11, %22[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.insertvalue %12, %23[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.alloca %25 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %24, %26 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %29 = llvm.insertvalue %27, %28[0] : !llvm.struct<(i64, ptr)> 
    %30 = llvm.insertvalue %26, %29[1] : !llvm.struct<(i64, ptr)> 
    %31 = builtin.unrealized_conversion_cast %30 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %31, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %32 = llvm.extractvalue %24[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.getelementptr %32[%10] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %34 = llvm.load %33 : !llvm.ptr -> i64
    %35 = builtin.unrealized_conversion_cast %34 : i64 to index
    %36 = llvm.extractvalue %24[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.getelementptr %36[%9] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %38 = llvm.load %37 : !llvm.ptr -> i64
    %39 = builtin.unrealized_conversion_cast %38 : i64 to index
    %40 = llvm.extractvalue %24[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.getelementptr %40[%8] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %42 = llvm.load %41 : !llvm.ptr -> i64
    %43 = builtin.unrealized_conversion_cast %42 : i64 to index
    %44 = llvm.extractvalue %24[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.getelementptr %44[%7] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %46 = llvm.load %45 : !llvm.ptr -> i64
    %47 = builtin.unrealized_conversion_cast %46 : i64 to index
    %48 = llvm.extractvalue %24[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.getelementptr %48[%6] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %50 = llvm.load %49 : !llvm.ptr -> i64
    %51 = builtin.unrealized_conversion_cast %50 : i64 to index
    %52 = llvm.extractvalue %24[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.getelementptr %52[%5] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %54 = llvm.load %53 : !llvm.ptr -> i64
    %55 = builtin.unrealized_conversion_cast %54 : i64 to index
    %56 = llvm.extractvalue %24[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.getelementptr %56[%4] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %58 = llvm.load %57 : !llvm.ptr -> i64
    %59 = builtin.unrealized_conversion_cast %58 : i64 to index
    %60 = llvm.extractvalue %24[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.getelementptr %60[%3] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %62 = llvm.load %61 : !llvm.ptr -> i64
    %63 = builtin.unrealized_conversion_cast %62 : i64 to index
    %64 = llvm.extractvalue %24[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.getelementptr %64[%2] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %66 = llvm.load %65 : !llvm.ptr -> i64
    %67 = builtin.unrealized_conversion_cast %66 : i64 to index
    %68 = llvm.extractvalue %24[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.getelementptr %68[%1] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %70 = llvm.load %69 : !llvm.ptr -> i64
    %71 = builtin.unrealized_conversion_cast %70 : i64 to index
    %72 = llvm.extractvalue %24[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.getelementptr %72[%0] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %74 = llvm.load %73 : !llvm.ptr -> i64
    %75 = builtin.unrealized_conversion_cast %74 : i64 to index
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.mlir.zero : !llvm.ptr
    %78 = llvm.getelementptr %77[%34] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %79 = llvm.ptrtoint %78 : !llvm.ptr to i64
    %80 = llvm.call @rapid_malloc(%16, %79) : (!llvm.ptr, i64) -> !llvm.ptr
    %81 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %82 = llvm.insertvalue %80, %81[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %83 = llvm.insertvalue %80, %82[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %84 = llvm.mlir.constant(0 : index) : i64
    %85 = llvm.insertvalue %84, %83[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.insertvalue %34, %85[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.insertvalue %76, %86[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb1(%c0 : index)
  ^bb1(%88: index):  // 2 preds: ^bb0, ^bb2
    %89 = builtin.unrealized_conversion_cast %88 : index to i64
    %90 = arith.cmpi slt, %88, %35 : index
    cf.cond_br %90, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %91 = llvm.extractvalue %87[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %92 = llvm.getelementptr %91[%89] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %92 : i64, !llvm.ptr
    %93 = arith.addi %88, %c1 : index
    cf.br ^bb1(%93 : index)
  ^bb3:  // pred: ^bb1
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.alloca %94 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %87, %95 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %98 = llvm.insertvalue %96, %97[0] : !llvm.struct<(i64, ptr)> 
    %99 = llvm.insertvalue %95, %98[1] : !llvm.struct<(i64, ptr)> 
    %100 = builtin.unrealized_conversion_cast %99 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.mlir.zero : !llvm.ptr
    %103 = llvm.getelementptr %102[%38] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %104 = llvm.ptrtoint %103 : !llvm.ptr to i64
    %105 = llvm.call @rapid_malloc(%16, %104) : (!llvm.ptr, i64) -> !llvm.ptr
    %106 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %107 = llvm.insertvalue %105, %106[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %108 = llvm.insertvalue %105, %107[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %109 = llvm.mlir.constant(0 : index) : i64
    %110 = llvm.insertvalue %109, %108[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.insertvalue %38, %110[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %112 = llvm.insertvalue %101, %111[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb4(%c0 : index)
  ^bb4(%113: index):  // 2 preds: ^bb3, ^bb5
    %114 = builtin.unrealized_conversion_cast %113 : index to i64
    %115 = arith.cmpi slt, %113, %39 : index
    cf.cond_br %115, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %116 = llvm.extractvalue %112[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %117 = llvm.getelementptr %116[%114] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %117 : i64, !llvm.ptr
    %118 = arith.addi %113, %c1 : index
    cf.br ^bb4(%118 : index)
  ^bb6:  // pred: ^bb4
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.alloca %119 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %112, %120 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %123 = llvm.insertvalue %121, %122[0] : !llvm.struct<(i64, ptr)> 
    %124 = llvm.insertvalue %120, %123[1] : !llvm.struct<(i64, ptr)> 
    %125 = builtin.unrealized_conversion_cast %124 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.mlir.zero : !llvm.ptr
    %128 = llvm.getelementptr %127[%42] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %129 = llvm.ptrtoint %128 : !llvm.ptr to i64
    %130 = llvm.call @rapid_malloc(%16, %129) : (!llvm.ptr, i64) -> !llvm.ptr
    %131 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %132 = llvm.insertvalue %130, %131[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.insertvalue %130, %132[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %134 = llvm.mlir.constant(0 : index) : i64
    %135 = llvm.insertvalue %134, %133[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %136 = llvm.insertvalue %42, %135[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %137 = llvm.insertvalue %126, %136[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb7(%c0 : index)
  ^bb7(%138: index):  // 2 preds: ^bb6, ^bb8
    %139 = builtin.unrealized_conversion_cast %138 : index to i64
    %140 = arith.cmpi slt, %138, %43 : index
    cf.cond_br %140, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %141 = llvm.extractvalue %137[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %142 = llvm.getelementptr %141[%139] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %142 : i64, !llvm.ptr
    %143 = arith.addi %138, %c1 : index
    cf.br ^bb7(%143 : index)
  ^bb9:  // pred: ^bb7
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.alloca %144 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %137, %145 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %146 = llvm.mlir.constant(1 : index) : i64
    %147 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %148 = llvm.insertvalue %146, %147[0] : !llvm.struct<(i64, ptr)> 
    %149 = llvm.insertvalue %145, %148[1] : !llvm.struct<(i64, ptr)> 
    %150 = builtin.unrealized_conversion_cast %149 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.mlir.zero : !llvm.ptr
    %153 = llvm.getelementptr %152[%46] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %154 = llvm.ptrtoint %153 : !llvm.ptr to i64
    %155 = llvm.call @rapid_malloc(%16, %154) : (!llvm.ptr, i64) -> !llvm.ptr
    %156 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %157 = llvm.insertvalue %155, %156[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %158 = llvm.insertvalue %155, %157[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %159 = llvm.mlir.constant(0 : index) : i64
    %160 = llvm.insertvalue %159, %158[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %161 = llvm.insertvalue %46, %160[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %162 = llvm.insertvalue %151, %161[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb10(%c0 : index)
  ^bb10(%163: index):  // 2 preds: ^bb9, ^bb11
    %164 = builtin.unrealized_conversion_cast %163 : index to i64
    %165 = arith.cmpi slt, %163, %47 : index
    cf.cond_br %165, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %166 = llvm.extractvalue %162[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %167 = llvm.getelementptr %166[%164] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %167 : i64, !llvm.ptr
    %168 = arith.addi %163, %c1 : index
    cf.br ^bb10(%168 : index)
  ^bb12:  // pred: ^bb10
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.alloca %169 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %162, %170 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %173 = llvm.insertvalue %171, %172[0] : !llvm.struct<(i64, ptr)> 
    %174 = llvm.insertvalue %170, %173[1] : !llvm.struct<(i64, ptr)> 
    %175 = builtin.unrealized_conversion_cast %174 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.mlir.zero : !llvm.ptr
    %178 = llvm.getelementptr %177[%50] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %179 = llvm.ptrtoint %178 : !llvm.ptr to i64
    %180 = llvm.call @rapid_malloc(%16, %179) : (!llvm.ptr, i64) -> !llvm.ptr
    %181 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %182 = llvm.insertvalue %180, %181[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %183 = llvm.insertvalue %180, %182[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %184 = llvm.mlir.constant(0 : index) : i64
    %185 = llvm.insertvalue %184, %183[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %186 = llvm.insertvalue %50, %185[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %187 = llvm.insertvalue %176, %186[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb13(%c0 : index)
  ^bb13(%188: index):  // 2 preds: ^bb12, ^bb14
    %189 = builtin.unrealized_conversion_cast %188 : index to i64
    %190 = arith.cmpi slt, %188, %51 : index
    cf.cond_br %190, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %191 = llvm.extractvalue %187[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %192 = llvm.getelementptr %191[%189] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %192 : i64, !llvm.ptr
    %193 = arith.addi %188, %c1 : index
    cf.br ^bb13(%193 : index)
  ^bb15:  // pred: ^bb13
    %194 = llvm.mlir.constant(1 : index) : i64
    %195 = llvm.alloca %194 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %187, %195 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %196 = llvm.mlir.constant(1 : index) : i64
    %197 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %198 = llvm.insertvalue %196, %197[0] : !llvm.struct<(i64, ptr)> 
    %199 = llvm.insertvalue %195, %198[1] : !llvm.struct<(i64, ptr)> 
    %200 = builtin.unrealized_conversion_cast %199 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %201 = llvm.mlir.constant(1 : index) : i64
    %202 = llvm.mlir.zero : !llvm.ptr
    %203 = llvm.getelementptr %202[%54] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %204 = llvm.ptrtoint %203 : !llvm.ptr to i64
    %205 = llvm.call @rapid_malloc(%16, %204) : (!llvm.ptr, i64) -> !llvm.ptr
    %206 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %207 = llvm.insertvalue %205, %206[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %208 = llvm.insertvalue %205, %207[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %209 = llvm.mlir.constant(0 : index) : i64
    %210 = llvm.insertvalue %209, %208[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %211 = llvm.insertvalue %54, %210[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %212 = llvm.insertvalue %201, %211[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb16(%c0 : index)
  ^bb16(%213: index):  // 2 preds: ^bb15, ^bb17
    %214 = builtin.unrealized_conversion_cast %213 : index to i64
    %215 = arith.cmpi slt, %213, %55 : index
    cf.cond_br %215, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %216 = llvm.extractvalue %212[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %217 = llvm.getelementptr %216[%214] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %217 : i64, !llvm.ptr
    %218 = arith.addi %213, %c1 : index
    cf.br ^bb16(%218 : index)
  ^bb18:  // pred: ^bb16
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.alloca %219 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %212, %220 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %221 = llvm.mlir.constant(1 : index) : i64
    %222 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %223 = llvm.insertvalue %221, %222[0] : !llvm.struct<(i64, ptr)> 
    %224 = llvm.insertvalue %220, %223[1] : !llvm.struct<(i64, ptr)> 
    %225 = builtin.unrealized_conversion_cast %224 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %226 = llvm.mlir.constant(1 : index) : i64
    %227 = llvm.mlir.zero : !llvm.ptr
    %228 = llvm.getelementptr %227[%58] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %229 = llvm.ptrtoint %228 : !llvm.ptr to i64
    %230 = llvm.call @rapid_malloc(%16, %229) : (!llvm.ptr, i64) -> !llvm.ptr
    %231 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %232 = llvm.insertvalue %230, %231[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.insertvalue %230, %232[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %234 = llvm.mlir.constant(0 : index) : i64
    %235 = llvm.insertvalue %234, %233[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %236 = llvm.insertvalue %58, %235[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %237 = llvm.insertvalue %226, %236[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb19(%c0 : index)
  ^bb19(%238: index):  // 2 preds: ^bb18, ^bb20
    %239 = builtin.unrealized_conversion_cast %238 : index to i64
    %240 = arith.cmpi slt, %238, %59 : index
    cf.cond_br %240, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %241 = llvm.extractvalue %237[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %242 = llvm.getelementptr %241[%239] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %242 : i64, !llvm.ptr
    %243 = arith.addi %238, %c1 : index
    cf.br ^bb19(%243 : index)
  ^bb21:  // pred: ^bb19
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.alloca %244 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %237, %245 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %246 = llvm.mlir.constant(1 : index) : i64
    %247 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %248 = llvm.insertvalue %246, %247[0] : !llvm.struct<(i64, ptr)> 
    %249 = llvm.insertvalue %245, %248[1] : !llvm.struct<(i64, ptr)> 
    %250 = builtin.unrealized_conversion_cast %249 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.mlir.zero : !llvm.ptr
    %253 = llvm.getelementptr %252[%62] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %254 = llvm.ptrtoint %253 : !llvm.ptr to i64
    %255 = llvm.call @rapid_malloc(%16, %254) : (!llvm.ptr, i64) -> !llvm.ptr
    %256 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %257 = llvm.insertvalue %255, %256[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %258 = llvm.insertvalue %255, %257[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %259 = llvm.mlir.constant(0 : index) : i64
    %260 = llvm.insertvalue %259, %258[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %261 = llvm.insertvalue %62, %260[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %262 = llvm.insertvalue %251, %261[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb22(%c0 : index)
  ^bb22(%263: index):  // 2 preds: ^bb21, ^bb23
    %264 = builtin.unrealized_conversion_cast %263 : index to i64
    %265 = arith.cmpi slt, %263, %63 : index
    cf.cond_br %265, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %266 = llvm.extractvalue %262[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.getelementptr %266[%264] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %267 : i64, !llvm.ptr
    %268 = arith.addi %263, %c1 : index
    cf.br ^bb22(%268 : index)
  ^bb24:  // pred: ^bb22
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.alloca %269 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %262, %270 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %271 = llvm.mlir.constant(1 : index) : i64
    %272 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %273 = llvm.insertvalue %271, %272[0] : !llvm.struct<(i64, ptr)> 
    %274 = llvm.insertvalue %270, %273[1] : !llvm.struct<(i64, ptr)> 
    %275 = builtin.unrealized_conversion_cast %274 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %276 = llvm.mlir.constant(1 : index) : i64
    %277 = llvm.mlir.zero : !llvm.ptr
    %278 = llvm.getelementptr %277[%66] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %279 = llvm.ptrtoint %278 : !llvm.ptr to i64
    %280 = llvm.call @rapid_malloc(%16, %279) : (!llvm.ptr, i64) -> !llvm.ptr
    %281 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %282 = llvm.insertvalue %280, %281[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %283 = llvm.insertvalue %280, %282[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %284 = llvm.mlir.constant(0 : index) : i64
    %285 = llvm.insertvalue %284, %283[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %286 = llvm.insertvalue %66, %285[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %287 = llvm.insertvalue %276, %286[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb25(%c0 : index)
  ^bb25(%288: index):  // 2 preds: ^bb24, ^bb26
    %289 = builtin.unrealized_conversion_cast %288 : index to i64
    %290 = arith.cmpi slt, %288, %67 : index
    cf.cond_br %290, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %291 = llvm.extractvalue %287[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %292 = llvm.getelementptr %291[%289] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst_0, %292 : f64, !llvm.ptr
    %293 = arith.addi %288, %c1 : index
    cf.br ^bb25(%293 : index)
  ^bb27:  // pred: ^bb25
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.alloca %294 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %287, %295 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %296 = llvm.mlir.constant(1 : index) : i64
    %297 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %298 = llvm.insertvalue %296, %297[0] : !llvm.struct<(i64, ptr)> 
    %299 = llvm.insertvalue %295, %298[1] : !llvm.struct<(i64, ptr)> 
    %300 = builtin.unrealized_conversion_cast %299 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %100, %125, %150, %175, %200, %225, %250, %275, %300, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %301 = llvm.mlir.constant(4 : index) : i64
    %302 = llvm.mlir.constant(1 : index) : i64
    %303 = llvm.mul %301, %74  : i64
    %304 = llvm.mlir.zero : !llvm.ptr
    %305 = llvm.getelementptr %304[%303] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %306 = llvm.ptrtoint %305 : !llvm.ptr to i64
    %307 = llvm.mlir.constant(32 : index) : i64
    %308 = llvm.add %306, %307  : i64
    %309 = llvm.call @rapid_malloc(%16, %308) : (!llvm.ptr, i64) -> !llvm.ptr
    %310 = llvm.ptrtoint %309 : !llvm.ptr to i64
    %311 = llvm.mlir.constant(1 : index) : i64
    %312 = llvm.sub %307, %311  : i64
    %313 = llvm.add %310, %312  : i64
    %314 = llvm.urem %313, %307  : i64
    %315 = llvm.sub %313, %314  : i64
    %316 = llvm.inttoptr %315 : i64 to !llvm.ptr
    %317 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %318 = llvm.insertvalue %309, %317[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %319 = llvm.insertvalue %316, %318[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %320 = llvm.mlir.constant(0 : index) : i64
    %321 = llvm.insertvalue %320, %319[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %322 = llvm.insertvalue %74, %321[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %323 = llvm.insertvalue %301, %322[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %324 = llvm.insertvalue %301, %323[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %325 = llvm.insertvalue %302, %324[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    cf.br ^bb28(%c0 : index)
  ^bb28(%326: index):  // 2 preds: ^bb27, ^bb31
    %327 = builtin.unrealized_conversion_cast %326 : index to i64
    %328 = arith.cmpi slt, %326, %75 : index
    cf.cond_br %328, ^bb29(%c0 : index), ^bb32
  ^bb29(%329: index):  // 2 preds: ^bb28, ^bb30
    %330 = builtin.unrealized_conversion_cast %329 : index to i64
    %331 = arith.cmpi slt, %329, %c4 : index
    cf.cond_br %331, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %332 = llvm.extractvalue %325[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %333 = llvm.mlir.constant(4 : index) : i64
    %334 = llvm.mul %327, %333  : i64
    %335 = llvm.add %334, %330  : i64
    %336 = llvm.getelementptr %332[%335] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst, %336 : f64, !llvm.ptr
    %337 = arith.addi %329, %c1 : index
    cf.br ^bb29(%337 : index)
  ^bb31:  // pred: ^bb29
    %338 = arith.addi %326, %c1 : index
    cf.br ^bb28(%338 : index)
  ^bb32:  // pred: ^bb28
    %339 = llvm.mlir.constant(4 : index) : i64
    %340 = llvm.mlir.constant(1 : index) : i64
    %341 = llvm.mul %339, %70  : i64
    %342 = llvm.mlir.zero : !llvm.ptr
    %343 = llvm.getelementptr %342[%341] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %344 = llvm.ptrtoint %343 : !llvm.ptr to i64
    %345 = llvm.mlir.constant(32 : index) : i64
    %346 = llvm.add %344, %345  : i64
    %347 = llvm.call @rapid_malloc(%16, %346) : (!llvm.ptr, i64) -> !llvm.ptr
    %348 = llvm.ptrtoint %347 : !llvm.ptr to i64
    %349 = llvm.mlir.constant(1 : index) : i64
    %350 = llvm.sub %345, %349  : i64
    %351 = llvm.add %348, %350  : i64
    %352 = llvm.urem %351, %345  : i64
    %353 = llvm.sub %351, %352  : i64
    %354 = llvm.inttoptr %353 : i64 to !llvm.ptr
    %355 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %356 = llvm.insertvalue %347, %355[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %357 = llvm.insertvalue %354, %356[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %358 = llvm.mlir.constant(0 : index) : i64
    %359 = llvm.insertvalue %358, %357[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %360 = llvm.insertvalue %70, %359[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %361 = llvm.insertvalue %339, %360[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %362 = llvm.insertvalue %339, %361[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %363 = llvm.insertvalue %340, %362[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    cf.br ^bb33(%c0 : index)
  ^bb33(%364: index):  // 2 preds: ^bb32, ^bb36
    %365 = builtin.unrealized_conversion_cast %364 : index to i64
    %366 = arith.cmpi slt, %364, %71 : index
    cf.cond_br %366, ^bb34(%c0 : index), ^bb37(%c0 : index)
  ^bb34(%367: index):  // 2 preds: ^bb33, ^bb35
    %368 = builtin.unrealized_conversion_cast %367 : index to i64
    %369 = arith.cmpi slt, %367, %c4 : index
    cf.cond_br %369, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %370 = llvm.extractvalue %363[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %371 = llvm.mlir.constant(4 : index) : i64
    %372 = llvm.mul %365, %371  : i64
    %373 = llvm.add %372, %368  : i64
    %374 = llvm.getelementptr %370[%373] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst_0, %374 : f64, !llvm.ptr
    %375 = arith.addi %367, %c1 : index
    cf.br ^bb34(%375 : index)
  ^bb36:  // pred: ^bb34
    %376 = arith.addi %364, %c1 : index
    cf.br ^bb33(%376 : index)
  ^bb37(%377: index):  // 2 preds: ^bb33, ^bb43
    %378 = builtin.unrealized_conversion_cast %377 : index to i64
    %379 = arith.cmpi slt, %377, %71 : index
    cf.cond_br %379, ^bb38, ^bb44
  ^bb38:  // pred: ^bb37
    %380 = arith.addi %377, %c1 : index
    %381 = builtin.unrealized_conversion_cast %380 : index to i64
    %382 = llvm.extractvalue %187[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %383 = llvm.getelementptr %382[%378] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %384 = llvm.load %383 : !llvm.ptr -> i64
    %385 = arith.index_cast %384 : i64 to index
    %386 = llvm.extractvalue %187[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %387 = llvm.getelementptr %386[%381] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %388 = llvm.load %387 : !llvm.ptr -> i64
    %389 = arith.index_cast %388 : i64 to index
    cf.br ^bb39(%385 : index)
  ^bb39(%390: index):  // 2 preds: ^bb38, ^bb42
    %391 = builtin.unrealized_conversion_cast %390 : index to i64
    %392 = arith.cmpi slt, %390, %389 : index
    cf.cond_br %392, ^bb40(%c0 : index), ^bb43
  ^bb40(%393: index):  // 2 preds: ^bb39, ^bb41
    %394 = builtin.unrealized_conversion_cast %393 : index to i64
    %395 = arith.cmpi slt, %393, %idx4 : index
    cf.cond_br %395, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %396 = llvm.extractvalue %212[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %397 = llvm.getelementptr %396[%391] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %398 = llvm.load %397 : !llvm.ptr -> i64
    %399 = arith.index_cast %398 : i64 to index
    %400 = builtin.unrealized_conversion_cast %399 : index to i64
    %401 = llvm.extractvalue %287[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %402 = llvm.getelementptr %401[%391] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %403 = llvm.load %402 : !llvm.ptr -> f64
    %404 = llvm.extractvalue %325[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %405 = llvm.mlir.constant(4 : index) : i64
    %406 = llvm.mul %400, %405  : i64
    %407 = llvm.add %406, %394  : i64
    %408 = llvm.getelementptr %404[%407] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %409 = llvm.load %408 : !llvm.ptr -> f64
    %410 = arith.mulf %403, %409 : f64
    %411 = llvm.extractvalue %363[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %412 = llvm.mlir.constant(4 : index) : i64
    %413 = llvm.mul %378, %412  : i64
    %414 = llvm.add %413, %394  : i64
    %415 = llvm.getelementptr %411[%414] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %416 = llvm.load %415 : !llvm.ptr -> f64
    %417 = arith.addf %416, %410 : f64
    %418 = llvm.extractvalue %363[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %419 = llvm.mlir.constant(4 : index) : i64
    %420 = llvm.mul %378, %419  : i64
    %421 = llvm.add %420, %394  : i64
    %422 = llvm.getelementptr %418[%421] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %417, %422 : f64, !llvm.ptr
    %423 = arith.addi %393, %c1 : index
    cf.br ^bb40(%423 : index)
  ^bb42:  // pred: ^bb40
    %424 = arith.addi %390, %c1 : index
    cf.br ^bb39(%424 : index)
  ^bb43:  // pred: ^bb39
    cf.br ^bb37(%380 : index)
  ^bb44:  // pred: ^bb37
    %425 = llvm.mlir.constant(1 : index) : i64
    %426 = llvm.alloca %425 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %363, %426 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %427 = llvm.mlir.constant(2 : index) : i64
    %428 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %429 = llvm.insertvalue %427, %428[0] : !llvm.struct<(i64, ptr)> 
    %430 = llvm.insertvalue %426, %429[1] : !llvm.struct<(i64, ptr)> 
    %431 = builtin.unrealized_conversion_cast %430 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    call @comet_print_memref_f64(%431) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertFuncToLLVMPass (convert-func-to-llvm) //----- //
module {
  llvm.func @rapid_malloc(!llvm.ptr, i64) -> !llvm.ptr
  llvm.func @rapid_initialize() -> !llvm.ptr
  llvm.func @main() {
    %idx4 = index.constant 4
    %0 = builtin.unrealized_conversion_cast %idx4 : index to i64
    %1 = llvm.mlir.constant(1.700000e+00 : f64) : f64
    %2 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.mlir.constant(10 : index) : i64
    %5 = builtin.unrealized_conversion_cast %4 : i64 to index
    %6 = builtin.unrealized_conversion_cast %5 : index to i64
    %7 = llvm.mlir.constant(9 : index) : i64
    %8 = builtin.unrealized_conversion_cast %7 : i64 to index
    %9 = builtin.unrealized_conversion_cast %8 : index to i64
    %10 = llvm.mlir.constant(8 : index) : i64
    %11 = builtin.unrealized_conversion_cast %10 : i64 to index
    %12 = builtin.unrealized_conversion_cast %11 : index to i64
    %13 = llvm.mlir.constant(7 : index) : i64
    %14 = builtin.unrealized_conversion_cast %13 : i64 to index
    %15 = builtin.unrealized_conversion_cast %14 : index to i64
    %16 = llvm.mlir.constant(6 : index) : i64
    %17 = builtin.unrealized_conversion_cast %16 : i64 to index
    %18 = builtin.unrealized_conversion_cast %17 : index to i64
    %19 = llvm.mlir.constant(5 : index) : i64
    %20 = builtin.unrealized_conversion_cast %19 : i64 to index
    %21 = builtin.unrealized_conversion_cast %20 : index to i64
    %22 = llvm.mlir.constant(4 : index) : i64
    %23 = builtin.unrealized_conversion_cast %22 : i64 to index
    %24 = builtin.unrealized_conversion_cast %23 : index to i64
    %25 = llvm.mlir.constant(1 : i32) : i32
    %26 = llvm.mlir.constant(0 : i32) : i32
    %27 = llvm.mlir.constant(3 : index) : i64
    %28 = builtin.unrealized_conversion_cast %27 : i64 to index
    %29 = builtin.unrealized_conversion_cast %28 : index to i64
    %30 = llvm.mlir.constant(2 : index) : i64
    %31 = builtin.unrealized_conversion_cast %30 : i64 to index
    %32 = builtin.unrealized_conversion_cast %31 : index to i64
    %33 = llvm.mlir.constant(-1 : index) : i64
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = builtin.unrealized_conversion_cast %34 : i64 to index
    %36 = builtin.unrealized_conversion_cast %35 : index to i64
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = builtin.unrealized_conversion_cast %37 : i64 to index
    %39 = builtin.unrealized_conversion_cast %38 : index to i64
    %40 = llvm.mlir.constant(13 : index) : i64
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.mlir.zero : !llvm.ptr
    %43 = llvm.getelementptr %42[%40] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %44 = llvm.ptrtoint %43 : !llvm.ptr to i64
    %45 = llvm.call @rapid_initialize() : () -> !llvm.ptr
    %46 = llvm.call @rapid_malloc(%45, %44) : (!llvm.ptr, i64) -> !llvm.ptr
    %47 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %48 = llvm.insertvalue %46, %47[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.insertvalue %46, %48[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.insertvalue %50, %49[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.insertvalue %40, %51[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.insertvalue %41, %52[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.alloca %54 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %53, %55 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %58 = llvm.insertvalue %56, %57[0] : !llvm.struct<(i64, ptr)> 
    %59 = llvm.insertvalue %55, %58[1] : !llvm.struct<(i64, ptr)> 
    %60 = builtin.unrealized_conversion_cast %59 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %61 = llvm.extractvalue %59[0] : !llvm.struct<(i64, ptr)> 
    %62 = llvm.extractvalue %59[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%26, %37, %33, %34, %33, %61, %62, %25) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %63 = llvm.extractvalue %53[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.getelementptr %63[%39] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %65 = llvm.load %64 : !llvm.ptr -> i64
    %66 = builtin.unrealized_conversion_cast %65 : i64 to index
    %67 = llvm.extractvalue %53[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.getelementptr %67[%36] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %69 = llvm.load %68 : !llvm.ptr -> i64
    %70 = builtin.unrealized_conversion_cast %69 : i64 to index
    %71 = llvm.extractvalue %53[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.getelementptr %71[%32] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %73 = llvm.load %72 : !llvm.ptr -> i64
    %74 = builtin.unrealized_conversion_cast %73 : i64 to index
    %75 = llvm.extractvalue %53[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %76 = llvm.getelementptr %75[%29] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %77 = llvm.load %76 : !llvm.ptr -> i64
    %78 = builtin.unrealized_conversion_cast %77 : i64 to index
    %79 = llvm.extractvalue %53[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %80 = llvm.getelementptr %79[%24] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %81 = llvm.load %80 : !llvm.ptr -> i64
    %82 = builtin.unrealized_conversion_cast %81 : i64 to index
    %83 = llvm.extractvalue %53[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %84 = llvm.getelementptr %83[%21] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %85 = llvm.load %84 : !llvm.ptr -> i64
    %86 = builtin.unrealized_conversion_cast %85 : i64 to index
    %87 = llvm.extractvalue %53[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.getelementptr %87[%18] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %89 = llvm.load %88 : !llvm.ptr -> i64
    %90 = builtin.unrealized_conversion_cast %89 : i64 to index
    %91 = llvm.extractvalue %53[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %92 = llvm.getelementptr %91[%15] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %93 = llvm.load %92 : !llvm.ptr -> i64
    %94 = builtin.unrealized_conversion_cast %93 : i64 to index
    %95 = llvm.extractvalue %53[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %96 = llvm.getelementptr %95[%12] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %97 = llvm.load %96 : !llvm.ptr -> i64
    %98 = builtin.unrealized_conversion_cast %97 : i64 to index
    %99 = llvm.extractvalue %53[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %100 = llvm.getelementptr %99[%9] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %101 = llvm.load %100 : !llvm.ptr -> i64
    %102 = builtin.unrealized_conversion_cast %101 : i64 to index
    %103 = llvm.extractvalue %53[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %104 = llvm.getelementptr %103[%6] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %105 = llvm.load %104 : !llvm.ptr -> i64
    %106 = builtin.unrealized_conversion_cast %105 : i64 to index
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.mlir.zero : !llvm.ptr
    %109 = llvm.getelementptr %108[%65] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %110 = llvm.ptrtoint %109 : !llvm.ptr to i64
    %111 = llvm.call @rapid_malloc(%45, %110) : (!llvm.ptr, i64) -> !llvm.ptr
    %112 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %113 = llvm.insertvalue %111, %112[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %114 = llvm.insertvalue %111, %113[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.insertvalue %115, %114[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %117 = llvm.insertvalue %65, %116[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %118 = llvm.insertvalue %107, %117[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%37 : i64)
  ^bb1(%119: i64):  // 2 preds: ^bb0, ^bb2
    %120 = builtin.unrealized_conversion_cast %119 : i64 to index
    %121 = builtin.unrealized_conversion_cast %120 : index to i64
    %122 = llvm.icmp "slt" %119, %65 : i64
    llvm.cond_br %122, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %123 = llvm.extractvalue %118[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %124 = llvm.getelementptr %123[%121] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %124 : i64, !llvm.ptr
    %125 = llvm.add %119, %34  : i64
    llvm.br ^bb1(%125 : i64)
  ^bb3:  // pred: ^bb1
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.alloca %126 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %118, %127 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %130 = llvm.insertvalue %128, %129[0] : !llvm.struct<(i64, ptr)> 
    %131 = llvm.insertvalue %127, %130[1] : !llvm.struct<(i64, ptr)> 
    %132 = builtin.unrealized_conversion_cast %131 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.zero : !llvm.ptr
    %135 = llvm.getelementptr %134[%69] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %136 = llvm.ptrtoint %135 : !llvm.ptr to i64
    %137 = llvm.call @rapid_malloc(%45, %136) : (!llvm.ptr, i64) -> !llvm.ptr
    %138 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %139 = llvm.insertvalue %137, %138[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %140 = llvm.insertvalue %137, %139[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %141 = llvm.mlir.constant(0 : index) : i64
    %142 = llvm.insertvalue %141, %140[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %143 = llvm.insertvalue %69, %142[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %144 = llvm.insertvalue %133, %143[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%37 : i64)
  ^bb4(%145: i64):  // 2 preds: ^bb3, ^bb5
    %146 = builtin.unrealized_conversion_cast %145 : i64 to index
    %147 = builtin.unrealized_conversion_cast %146 : index to i64
    %148 = llvm.icmp "slt" %145, %69 : i64
    llvm.cond_br %148, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %149 = llvm.extractvalue %144[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %150 = llvm.getelementptr %149[%147] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %150 : i64, !llvm.ptr
    %151 = llvm.add %145, %34  : i64
    llvm.br ^bb4(%151 : i64)
  ^bb6:  // pred: ^bb4
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.alloca %152 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %144, %153 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %156 = llvm.insertvalue %154, %155[0] : !llvm.struct<(i64, ptr)> 
    %157 = llvm.insertvalue %153, %156[1] : !llvm.struct<(i64, ptr)> 
    %158 = builtin.unrealized_conversion_cast %157 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %159 = llvm.mlir.constant(1 : index) : i64
    %160 = llvm.mlir.zero : !llvm.ptr
    %161 = llvm.getelementptr %160[%73] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %162 = llvm.ptrtoint %161 : !llvm.ptr to i64
    %163 = llvm.call @rapid_malloc(%45, %162) : (!llvm.ptr, i64) -> !llvm.ptr
    %164 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %165 = llvm.insertvalue %163, %164[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.insertvalue %163, %165[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %167 = llvm.mlir.constant(0 : index) : i64
    %168 = llvm.insertvalue %167, %166[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %169 = llvm.insertvalue %73, %168[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %170 = llvm.insertvalue %159, %169[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%37 : i64)
  ^bb7(%171: i64):  // 2 preds: ^bb6, ^bb8
    %172 = builtin.unrealized_conversion_cast %171 : i64 to index
    %173 = builtin.unrealized_conversion_cast %172 : index to i64
    %174 = llvm.icmp "slt" %171, %73 : i64
    llvm.cond_br %174, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %175 = llvm.extractvalue %170[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %176 = llvm.getelementptr %175[%173] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %176 : i64, !llvm.ptr
    %177 = llvm.add %171, %34  : i64
    llvm.br ^bb7(%177 : i64)
  ^bb9:  // pred: ^bb7
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.alloca %178 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %170, %179 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %182 = llvm.insertvalue %180, %181[0] : !llvm.struct<(i64, ptr)> 
    %183 = llvm.insertvalue %179, %182[1] : !llvm.struct<(i64, ptr)> 
    %184 = builtin.unrealized_conversion_cast %183 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.mlir.zero : !llvm.ptr
    %187 = llvm.getelementptr %186[%77] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %188 = llvm.ptrtoint %187 : !llvm.ptr to i64
    %189 = llvm.call @rapid_malloc(%45, %188) : (!llvm.ptr, i64) -> !llvm.ptr
    %190 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %191 = llvm.insertvalue %189, %190[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %192 = llvm.insertvalue %189, %191[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %193 = llvm.mlir.constant(0 : index) : i64
    %194 = llvm.insertvalue %193, %192[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %195 = llvm.insertvalue %77, %194[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %196 = llvm.insertvalue %185, %195[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%37 : i64)
  ^bb10(%197: i64):  // 2 preds: ^bb9, ^bb11
    %198 = builtin.unrealized_conversion_cast %197 : i64 to index
    %199 = builtin.unrealized_conversion_cast %198 : index to i64
    %200 = llvm.icmp "slt" %197, %77 : i64
    llvm.cond_br %200, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %201 = llvm.extractvalue %196[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %202 = llvm.getelementptr %201[%199] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %202 : i64, !llvm.ptr
    %203 = llvm.add %197, %34  : i64
    llvm.br ^bb10(%203 : i64)
  ^bb12:  // pred: ^bb10
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.alloca %204 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %196, %205 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %208 = llvm.insertvalue %206, %207[0] : !llvm.struct<(i64, ptr)> 
    %209 = llvm.insertvalue %205, %208[1] : !llvm.struct<(i64, ptr)> 
    %210 = builtin.unrealized_conversion_cast %209 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.zero : !llvm.ptr
    %213 = llvm.getelementptr %212[%81] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %214 = llvm.ptrtoint %213 : !llvm.ptr to i64
    %215 = llvm.call @rapid_malloc(%45, %214) : (!llvm.ptr, i64) -> !llvm.ptr
    %216 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %217 = llvm.insertvalue %215, %216[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %218 = llvm.insertvalue %215, %217[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.insertvalue %219, %218[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %221 = llvm.insertvalue %81, %220[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %222 = llvm.insertvalue %211, %221[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%37 : i64)
  ^bb13(%223: i64):  // 2 preds: ^bb12, ^bb14
    %224 = builtin.unrealized_conversion_cast %223 : i64 to index
    %225 = builtin.unrealized_conversion_cast %224 : index to i64
    %226 = llvm.icmp "slt" %223, %81 : i64
    llvm.cond_br %226, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %227 = llvm.extractvalue %222[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %228 = llvm.getelementptr %227[%225] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %228 : i64, !llvm.ptr
    %229 = llvm.add %223, %34  : i64
    llvm.br ^bb13(%229 : i64)
  ^bb15:  // pred: ^bb13
    %230 = llvm.mlir.constant(1 : index) : i64
    %231 = llvm.alloca %230 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %222, %231 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %232 = llvm.mlir.constant(1 : index) : i64
    %233 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %234 = llvm.insertvalue %232, %233[0] : !llvm.struct<(i64, ptr)> 
    %235 = llvm.insertvalue %231, %234[1] : !llvm.struct<(i64, ptr)> 
    %236 = builtin.unrealized_conversion_cast %235 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.mlir.zero : !llvm.ptr
    %239 = llvm.getelementptr %238[%85] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %240 = llvm.ptrtoint %239 : !llvm.ptr to i64
    %241 = llvm.call @rapid_malloc(%45, %240) : (!llvm.ptr, i64) -> !llvm.ptr
    %242 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %243 = llvm.insertvalue %241, %242[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %244 = llvm.insertvalue %241, %243[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %245 = llvm.mlir.constant(0 : index) : i64
    %246 = llvm.insertvalue %245, %244[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %247 = llvm.insertvalue %85, %246[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %248 = llvm.insertvalue %237, %247[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%37 : i64)
  ^bb16(%249: i64):  // 2 preds: ^bb15, ^bb17
    %250 = builtin.unrealized_conversion_cast %249 : i64 to index
    %251 = builtin.unrealized_conversion_cast %250 : index to i64
    %252 = llvm.icmp "slt" %249, %85 : i64
    llvm.cond_br %252, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %253 = llvm.extractvalue %248[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %254 = llvm.getelementptr %253[%251] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %254 : i64, !llvm.ptr
    %255 = llvm.add %249, %34  : i64
    llvm.br ^bb16(%255 : i64)
  ^bb18:  // pred: ^bb16
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.alloca %256 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %248, %257 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %258 = llvm.mlir.constant(1 : index) : i64
    %259 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %260 = llvm.insertvalue %258, %259[0] : !llvm.struct<(i64, ptr)> 
    %261 = llvm.insertvalue %257, %260[1] : !llvm.struct<(i64, ptr)> 
    %262 = builtin.unrealized_conversion_cast %261 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %263 = llvm.mlir.constant(1 : index) : i64
    %264 = llvm.mlir.zero : !llvm.ptr
    %265 = llvm.getelementptr %264[%89] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %266 = llvm.ptrtoint %265 : !llvm.ptr to i64
    %267 = llvm.call @rapid_malloc(%45, %266) : (!llvm.ptr, i64) -> !llvm.ptr
    %268 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %269 = llvm.insertvalue %267, %268[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %270 = llvm.insertvalue %267, %269[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %271 = llvm.mlir.constant(0 : index) : i64
    %272 = llvm.insertvalue %271, %270[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %273 = llvm.insertvalue %89, %272[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %274 = llvm.insertvalue %263, %273[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%37 : i64)
  ^bb19(%275: i64):  // 2 preds: ^bb18, ^bb20
    %276 = builtin.unrealized_conversion_cast %275 : i64 to index
    %277 = builtin.unrealized_conversion_cast %276 : index to i64
    %278 = llvm.icmp "slt" %275, %89 : i64
    llvm.cond_br %278, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %279 = llvm.extractvalue %274[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %280 = llvm.getelementptr %279[%277] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %280 : i64, !llvm.ptr
    %281 = llvm.add %275, %34  : i64
    llvm.br ^bb19(%281 : i64)
  ^bb21:  // pred: ^bb19
    %282 = llvm.mlir.constant(1 : index) : i64
    %283 = llvm.alloca %282 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %274, %283 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %286 = llvm.insertvalue %284, %285[0] : !llvm.struct<(i64, ptr)> 
    %287 = llvm.insertvalue %283, %286[1] : !llvm.struct<(i64, ptr)> 
    %288 = builtin.unrealized_conversion_cast %287 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %289 = llvm.mlir.constant(1 : index) : i64
    %290 = llvm.mlir.zero : !llvm.ptr
    %291 = llvm.getelementptr %290[%93] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %292 = llvm.ptrtoint %291 : !llvm.ptr to i64
    %293 = llvm.call @rapid_malloc(%45, %292) : (!llvm.ptr, i64) -> !llvm.ptr
    %294 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %295 = llvm.insertvalue %293, %294[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %296 = llvm.insertvalue %293, %295[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %297 = llvm.mlir.constant(0 : index) : i64
    %298 = llvm.insertvalue %297, %296[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %299 = llvm.insertvalue %93, %298[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %300 = llvm.insertvalue %289, %299[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%37 : i64)
  ^bb22(%301: i64):  // 2 preds: ^bb21, ^bb23
    %302 = builtin.unrealized_conversion_cast %301 : i64 to index
    %303 = builtin.unrealized_conversion_cast %302 : index to i64
    %304 = llvm.icmp "slt" %301, %93 : i64
    llvm.cond_br %304, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %305 = llvm.extractvalue %300[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %306 = llvm.getelementptr %305[%303] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %306 : i64, !llvm.ptr
    %307 = llvm.add %301, %34  : i64
    llvm.br ^bb22(%307 : i64)
  ^bb24:  // pred: ^bb22
    %308 = llvm.mlir.constant(1 : index) : i64
    %309 = llvm.alloca %308 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %300, %309 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %310 = llvm.mlir.constant(1 : index) : i64
    %311 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %312 = llvm.insertvalue %310, %311[0] : !llvm.struct<(i64, ptr)> 
    %313 = llvm.insertvalue %309, %312[1] : !llvm.struct<(i64, ptr)> 
    %314 = builtin.unrealized_conversion_cast %313 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %315 = llvm.mlir.constant(1 : index) : i64
    %316 = llvm.mlir.zero : !llvm.ptr
    %317 = llvm.getelementptr %316[%97] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %318 = llvm.ptrtoint %317 : !llvm.ptr to i64
    %319 = llvm.call @rapid_malloc(%45, %318) : (!llvm.ptr, i64) -> !llvm.ptr
    %320 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %321 = llvm.insertvalue %319, %320[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %322 = llvm.insertvalue %319, %321[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.insertvalue %323, %322[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %325 = llvm.insertvalue %97, %324[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %326 = llvm.insertvalue %315, %325[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%37 : i64)
  ^bb25(%327: i64):  // 2 preds: ^bb24, ^bb26
    %328 = builtin.unrealized_conversion_cast %327 : i64 to index
    %329 = builtin.unrealized_conversion_cast %328 : index to i64
    %330 = llvm.icmp "slt" %327, %97 : i64
    llvm.cond_br %330, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %331 = llvm.extractvalue %326[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %332 = llvm.getelementptr %331[%329] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %2, %332 : f64, !llvm.ptr
    %333 = llvm.add %327, %34  : i64
    llvm.br ^bb25(%333 : i64)
  ^bb27:  // pred: ^bb25
    %334 = llvm.mlir.constant(1 : index) : i64
    %335 = llvm.alloca %334 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %326, %335 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %336 = llvm.mlir.constant(1 : index) : i64
    %337 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %338 = llvm.insertvalue %336, %337[0] : !llvm.struct<(i64, ptr)> 
    %339 = llvm.insertvalue %335, %338[1] : !llvm.struct<(i64, ptr)> 
    %340 = builtin.unrealized_conversion_cast %339 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    %341 = llvm.extractvalue %131[0] : !llvm.struct<(i64, ptr)> 
    %342 = llvm.extractvalue %131[1] : !llvm.struct<(i64, ptr)> 
    %343 = llvm.extractvalue %157[0] : !llvm.struct<(i64, ptr)> 
    %344 = llvm.extractvalue %157[1] : !llvm.struct<(i64, ptr)> 
    %345 = llvm.extractvalue %183[0] : !llvm.struct<(i64, ptr)> 
    %346 = llvm.extractvalue %183[1] : !llvm.struct<(i64, ptr)> 
    %347 = llvm.extractvalue %209[0] : !llvm.struct<(i64, ptr)> 
    %348 = llvm.extractvalue %209[1] : !llvm.struct<(i64, ptr)> 
    %349 = llvm.extractvalue %235[0] : !llvm.struct<(i64, ptr)> 
    %350 = llvm.extractvalue %235[1] : !llvm.struct<(i64, ptr)> 
    %351 = llvm.extractvalue %261[0] : !llvm.struct<(i64, ptr)> 
    %352 = llvm.extractvalue %261[1] : !llvm.struct<(i64, ptr)> 
    %353 = llvm.extractvalue %287[0] : !llvm.struct<(i64, ptr)> 
    %354 = llvm.extractvalue %287[1] : !llvm.struct<(i64, ptr)> 
    %355 = llvm.extractvalue %313[0] : !llvm.struct<(i64, ptr)> 
    %356 = llvm.extractvalue %313[1] : !llvm.struct<(i64, ptr)> 
    %357 = llvm.extractvalue %339[0] : !llvm.struct<(i64, ptr)> 
    %358 = llvm.extractvalue %339[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64_i64(%26, %37, %33, %34, %33, %341, %342, %343, %344, %345, %346, %347, %348, %349, %350, %351, %352, %353, %354, %355, %356, %357, %358, %25) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %359 = llvm.mlir.constant(4 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.mul %359, %105  : i64
    %362 = llvm.mlir.zero : !llvm.ptr
    %363 = llvm.getelementptr %362[%361] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %364 = llvm.ptrtoint %363 : !llvm.ptr to i64
    %365 = llvm.mlir.constant(32 : index) : i64
    %366 = llvm.add %364, %365  : i64
    %367 = llvm.call @rapid_malloc(%45, %366) : (!llvm.ptr, i64) -> !llvm.ptr
    %368 = llvm.ptrtoint %367 : !llvm.ptr to i64
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.sub %365, %369  : i64
    %371 = llvm.add %368, %370  : i64
    %372 = llvm.urem %371, %365  : i64
    %373 = llvm.sub %371, %372  : i64
    %374 = llvm.inttoptr %373 : i64 to !llvm.ptr
    %375 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %376 = llvm.insertvalue %367, %375[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %377 = llvm.insertvalue %374, %376[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %378 = llvm.mlir.constant(0 : index) : i64
    %379 = llvm.insertvalue %378, %377[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %380 = llvm.insertvalue %105, %379[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %381 = llvm.insertvalue %359, %380[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %382 = llvm.insertvalue %359, %381[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %383 = llvm.insertvalue %360, %382[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb28(%37 : i64)
  ^bb28(%384: i64):  // 2 preds: ^bb27, ^bb31
    %385 = builtin.unrealized_conversion_cast %384 : i64 to index
    %386 = builtin.unrealized_conversion_cast %385 : index to i64
    %387 = llvm.icmp "slt" %384, %105 : i64
    llvm.cond_br %387, ^bb29(%37 : i64), ^bb32
  ^bb29(%388: i64):  // 2 preds: ^bb28, ^bb30
    %389 = builtin.unrealized_conversion_cast %388 : i64 to index
    %390 = builtin.unrealized_conversion_cast %389 : index to i64
    %391 = llvm.icmp "slt" %388, %22 : i64
    llvm.cond_br %391, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %392 = llvm.extractvalue %383[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %393 = llvm.mlir.constant(4 : index) : i64
    %394 = llvm.mul %386, %393  : i64
    %395 = llvm.add %394, %390  : i64
    %396 = llvm.getelementptr %392[%395] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %396 : f64, !llvm.ptr
    %397 = llvm.add %388, %34  : i64
    llvm.br ^bb29(%397 : i64)
  ^bb31:  // pred: ^bb29
    %398 = llvm.add %384, %34  : i64
    llvm.br ^bb28(%398 : i64)
  ^bb32:  // pred: ^bb28
    %399 = llvm.mlir.constant(4 : index) : i64
    %400 = llvm.mlir.constant(1 : index) : i64
    %401 = llvm.mul %399, %101  : i64
    %402 = llvm.mlir.zero : !llvm.ptr
    %403 = llvm.getelementptr %402[%401] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %404 = llvm.ptrtoint %403 : !llvm.ptr to i64
    %405 = llvm.mlir.constant(32 : index) : i64
    %406 = llvm.add %404, %405  : i64
    %407 = llvm.call @rapid_malloc(%45, %406) : (!llvm.ptr, i64) -> !llvm.ptr
    %408 = llvm.ptrtoint %407 : !llvm.ptr to i64
    %409 = llvm.mlir.constant(1 : index) : i64
    %410 = llvm.sub %405, %409  : i64
    %411 = llvm.add %408, %410  : i64
    %412 = llvm.urem %411, %405  : i64
    %413 = llvm.sub %411, %412  : i64
    %414 = llvm.inttoptr %413 : i64 to !llvm.ptr
    %415 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %416 = llvm.insertvalue %407, %415[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %417 = llvm.insertvalue %414, %416[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %418 = llvm.mlir.constant(0 : index) : i64
    %419 = llvm.insertvalue %418, %417[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %420 = llvm.insertvalue %101, %419[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %421 = llvm.insertvalue %399, %420[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %422 = llvm.insertvalue %399, %421[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %423 = llvm.insertvalue %400, %422[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb33(%37 : i64)
  ^bb33(%424: i64):  // 2 preds: ^bb32, ^bb36
    %425 = builtin.unrealized_conversion_cast %424 : i64 to index
    %426 = builtin.unrealized_conversion_cast %425 : index to i64
    %427 = llvm.icmp "slt" %424, %101 : i64
    llvm.cond_br %427, ^bb34(%37 : i64), ^bb37(%37 : i64)
  ^bb34(%428: i64):  // 2 preds: ^bb33, ^bb35
    %429 = builtin.unrealized_conversion_cast %428 : i64 to index
    %430 = builtin.unrealized_conversion_cast %429 : index to i64
    %431 = llvm.icmp "slt" %428, %22 : i64
    llvm.cond_br %431, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %432 = llvm.extractvalue %423[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %433 = llvm.mlir.constant(4 : index) : i64
    %434 = llvm.mul %426, %433  : i64
    %435 = llvm.add %434, %430  : i64
    %436 = llvm.getelementptr %432[%435] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %2, %436 : f64, !llvm.ptr
    %437 = llvm.add %428, %34  : i64
    llvm.br ^bb34(%437 : i64)
  ^bb36:  // pred: ^bb34
    %438 = llvm.add %424, %34  : i64
    llvm.br ^bb33(%438 : i64)
  ^bb37(%439: i64):  // 2 preds: ^bb33, ^bb43
    %440 = builtin.unrealized_conversion_cast %439 : i64 to index
    %441 = builtin.unrealized_conversion_cast %440 : index to i64
    %442 = llvm.icmp "slt" %439, %101 : i64
    llvm.cond_br %442, ^bb38, ^bb44
  ^bb38:  // pred: ^bb37
    %443 = llvm.add %439, %34  : i64
    %444 = builtin.unrealized_conversion_cast %443 : i64 to index
    %445 = builtin.unrealized_conversion_cast %444 : index to i64
    %446 = llvm.extractvalue %222[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %447 = llvm.getelementptr %446[%441] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %448 = llvm.load %447 : !llvm.ptr -> i64
    %449 = llvm.extractvalue %222[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %450 = llvm.getelementptr %449[%445] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %451 = llvm.load %450 : !llvm.ptr -> i64
    llvm.br ^bb39(%448 : i64)
  ^bb39(%452: i64):  // 2 preds: ^bb38, ^bb42
    %453 = builtin.unrealized_conversion_cast %452 : i64 to index
    %454 = builtin.unrealized_conversion_cast %453 : index to i64
    %455 = llvm.icmp "slt" %452, %451 : i64
    llvm.cond_br %455, ^bb40(%37 : i64), ^bb43
  ^bb40(%456: i64):  // 2 preds: ^bb39, ^bb41
    %457 = builtin.unrealized_conversion_cast %456 : i64 to index
    %458 = builtin.unrealized_conversion_cast %457 : index to i64
    %459 = llvm.icmp "slt" %456, %0 : i64
    llvm.cond_br %459, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %460 = llvm.extractvalue %248[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %461 = llvm.getelementptr %460[%454] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %462 = llvm.load %461 : !llvm.ptr -> i64
    %463 = builtin.unrealized_conversion_cast %462 : i64 to index
    %464 = builtin.unrealized_conversion_cast %463 : index to i64
    %465 = llvm.extractvalue %326[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %466 = llvm.getelementptr %465[%454] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %467 = llvm.load %466 : !llvm.ptr -> f64
    %468 = llvm.extractvalue %383[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %469 = llvm.mlir.constant(4 : index) : i64
    %470 = llvm.mul %464, %469  : i64
    %471 = llvm.add %470, %458  : i64
    %472 = llvm.getelementptr %468[%471] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %473 = llvm.load %472 : !llvm.ptr -> f64
    %474 = llvm.fmul %467, %473  : f64
    %475 = llvm.extractvalue %423[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %476 = llvm.mlir.constant(4 : index) : i64
    %477 = llvm.mul %441, %476  : i64
    %478 = llvm.add %477, %458  : i64
    %479 = llvm.getelementptr %475[%478] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %480 = llvm.load %479 : !llvm.ptr -> f64
    %481 = llvm.fadd %480, %474  : f64
    %482 = llvm.extractvalue %423[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %483 = llvm.mlir.constant(4 : index) : i64
    %484 = llvm.mul %441, %483  : i64
    %485 = llvm.add %484, %458  : i64
    %486 = llvm.getelementptr %482[%485] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %481, %486 : f64, !llvm.ptr
    %487 = llvm.add %456, %34  : i64
    llvm.br ^bb40(%487 : i64)
  ^bb42:  // pred: ^bb40
    %488 = llvm.add %452, %34  : i64
    llvm.br ^bb39(%488 : i64)
  ^bb43:  // pred: ^bb39
    llvm.br ^bb37(%443 : i64)
  ^bb44:  // pred: ^bb37
    %489 = llvm.mlir.constant(1 : index) : i64
    %490 = llvm.alloca %489 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %423, %490 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %491 = llvm.mlir.constant(2 : index) : i64
    %492 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %493 = llvm.insertvalue %491, %492[0] : !llvm.struct<(i64, ptr)> 
    %494 = llvm.insertvalue %490, %493[1] : !llvm.struct<(i64, ptr)> 
    %495 = builtin.unrealized_conversion_cast %494 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    %496 = llvm.extractvalue %494[0] : !llvm.struct<(i64, ptr)> 
    %497 = llvm.extractvalue %494[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%496, %497) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @read_input_2D_f64_i64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @read_input_sizes_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


// -----// IR Dump After ConvertIndexToLLVMPass (convert-index-to-llvm) //----- //
module {
  llvm.func @rapid_malloc(!llvm.ptr, i64) -> !llvm.ptr
  llvm.func @rapid_initialize() -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = builtin.unrealized_conversion_cast %0 : i64 to index
    %2 = builtin.unrealized_conversion_cast %1 : index to i64
    %3 = llvm.mlir.constant(1.700000e+00 : f64) : f64
    %4 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %5 = llvm.mlir.constant(0 : i64) : i64
    %6 = llvm.mlir.constant(10 : index) : i64
    %7 = builtin.unrealized_conversion_cast %6 : i64 to index
    %8 = llvm.mlir.constant(9 : index) : i64
    %9 = builtin.unrealized_conversion_cast %8 : i64 to index
    %10 = llvm.mlir.constant(8 : index) : i64
    %11 = builtin.unrealized_conversion_cast %10 : i64 to index
    %12 = llvm.mlir.constant(7 : index) : i64
    %13 = builtin.unrealized_conversion_cast %12 : i64 to index
    %14 = llvm.mlir.constant(6 : index) : i64
    %15 = builtin.unrealized_conversion_cast %14 : i64 to index
    %16 = llvm.mlir.constant(5 : index) : i64
    %17 = builtin.unrealized_conversion_cast %16 : i64 to index
    %18 = llvm.mlir.constant(4 : index) : i64
    %19 = builtin.unrealized_conversion_cast %18 : i64 to index
    %20 = llvm.mlir.constant(1 : i32) : i32
    %21 = llvm.mlir.constant(0 : i32) : i32
    %22 = llvm.mlir.constant(3 : index) : i64
    %23 = builtin.unrealized_conversion_cast %22 : i64 to index
    %24 = llvm.mlir.constant(2 : index) : i64
    %25 = builtin.unrealized_conversion_cast %24 : i64 to index
    %26 = llvm.mlir.constant(-1 : index) : i64
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = builtin.unrealized_conversion_cast %27 : i64 to index
    %29 = llvm.mlir.constant(0 : index) : i64
    %30 = builtin.unrealized_conversion_cast %29 : i64 to index
    %31 = llvm.mlir.constant(13 : index) : i64
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.mlir.zero : !llvm.ptr
    %34 = llvm.getelementptr %33[%31] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %35 = llvm.ptrtoint %34 : !llvm.ptr to i64
    %36 = llvm.call @rapid_initialize() : () -> !llvm.ptr
    %37 = llvm.call @rapid_malloc(%36, %35) : (!llvm.ptr, i64) -> !llvm.ptr
    %38 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %39 = llvm.insertvalue %37, %38[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.insertvalue %37, %39[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(0 : index) : i64
    %42 = llvm.insertvalue %41, %40[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.insertvalue %31, %42[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.insertvalue %32, %43[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.alloca %45 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %44, %46 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %49 = llvm.insertvalue %47, %48[0] : !llvm.struct<(i64, ptr)> 
    %50 = llvm.insertvalue %46, %49[1] : !llvm.struct<(i64, ptr)> 
    %51 = builtin.unrealized_conversion_cast %50 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %52 = llvm.extractvalue %50[0] : !llvm.struct<(i64, ptr)> 
    %53 = llvm.extractvalue %50[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%21, %29, %26, %27, %26, %52, %53, %20) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %54 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.getelementptr %54[%29] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %56 = llvm.load %55 : !llvm.ptr -> i64
    %57 = builtin.unrealized_conversion_cast %56 : i64 to index
    %58 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.getelementptr %58[%27] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %60 = llvm.load %59 : !llvm.ptr -> i64
    %61 = builtin.unrealized_conversion_cast %60 : i64 to index
    %62 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.getelementptr %62[%24] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %64 = llvm.load %63 : !llvm.ptr -> i64
    %65 = builtin.unrealized_conversion_cast %64 : i64 to index
    %66 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.getelementptr %66[%22] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %68 = llvm.load %67 : !llvm.ptr -> i64
    %69 = builtin.unrealized_conversion_cast %68 : i64 to index
    %70 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %71 = llvm.getelementptr %70[%18] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %72 = llvm.load %71 : !llvm.ptr -> i64
    %73 = builtin.unrealized_conversion_cast %72 : i64 to index
    %74 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.getelementptr %74[%16] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %76 = llvm.load %75 : !llvm.ptr -> i64
    %77 = builtin.unrealized_conversion_cast %76 : i64 to index
    %78 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %79 = llvm.getelementptr %78[%14] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %80 = llvm.load %79 : !llvm.ptr -> i64
    %81 = builtin.unrealized_conversion_cast %80 : i64 to index
    %82 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %83 = llvm.getelementptr %82[%12] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %84 = llvm.load %83 : !llvm.ptr -> i64
    %85 = builtin.unrealized_conversion_cast %84 : i64 to index
    %86 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.getelementptr %86[%10] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %88 = llvm.load %87 : !llvm.ptr -> i64
    %89 = builtin.unrealized_conversion_cast %88 : i64 to index
    %90 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %91 = llvm.getelementptr %90[%8] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %92 = llvm.load %91 : !llvm.ptr -> i64
    %93 = builtin.unrealized_conversion_cast %92 : i64 to index
    %94 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %95 = llvm.getelementptr %94[%6] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %96 = llvm.load %95 : !llvm.ptr -> i64
    %97 = builtin.unrealized_conversion_cast %96 : i64 to index
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.mlir.zero : !llvm.ptr
    %100 = llvm.getelementptr %99[%56] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %101 = llvm.ptrtoint %100 : !llvm.ptr to i64
    %102 = llvm.call @rapid_malloc(%36, %101) : (!llvm.ptr, i64) -> !llvm.ptr
    %103 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %104 = llvm.insertvalue %102, %103[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %105 = llvm.insertvalue %102, %104[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %106 = llvm.mlir.constant(0 : index) : i64
    %107 = llvm.insertvalue %106, %105[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %108 = llvm.insertvalue %56, %107[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %109 = llvm.insertvalue %98, %108[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%29 : i64)
  ^bb1(%110: i64):  // 2 preds: ^bb0, ^bb2
    %111 = builtin.unrealized_conversion_cast %110 : i64 to index
    %112 = llvm.icmp "slt" %110, %56 : i64
    llvm.cond_br %112, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %113 = llvm.extractvalue %109[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %114 = llvm.getelementptr %113[%110] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %114 : i64, !llvm.ptr
    %115 = llvm.add %110, %27  : i64
    llvm.br ^bb1(%115 : i64)
  ^bb3:  // pred: ^bb1
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.alloca %116 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %109, %117 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %120 = llvm.insertvalue %118, %119[0] : !llvm.struct<(i64, ptr)> 
    %121 = llvm.insertvalue %117, %120[1] : !llvm.struct<(i64, ptr)> 
    %122 = builtin.unrealized_conversion_cast %121 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.mlir.zero : !llvm.ptr
    %125 = llvm.getelementptr %124[%60] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %126 = llvm.ptrtoint %125 : !llvm.ptr to i64
    %127 = llvm.call @rapid_malloc(%36, %126) : (!llvm.ptr, i64) -> !llvm.ptr
    %128 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %129 = llvm.insertvalue %127, %128[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %130 = llvm.insertvalue %127, %129[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.mlir.constant(0 : index) : i64
    %132 = llvm.insertvalue %131, %130[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.insertvalue %60, %132[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %134 = llvm.insertvalue %123, %133[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%29 : i64)
  ^bb4(%135: i64):  // 2 preds: ^bb3, ^bb5
    %136 = builtin.unrealized_conversion_cast %135 : i64 to index
    %137 = llvm.icmp "slt" %135, %60 : i64
    llvm.cond_br %137, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %138 = llvm.extractvalue %134[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %139 = llvm.getelementptr %138[%135] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %139 : i64, !llvm.ptr
    %140 = llvm.add %135, %27  : i64
    llvm.br ^bb4(%140 : i64)
  ^bb6:  // pred: ^bb4
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.alloca %141 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %134, %142 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %145 = llvm.insertvalue %143, %144[0] : !llvm.struct<(i64, ptr)> 
    %146 = llvm.insertvalue %142, %145[1] : !llvm.struct<(i64, ptr)> 
    %147 = builtin.unrealized_conversion_cast %146 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.mlir.zero : !llvm.ptr
    %150 = llvm.getelementptr %149[%64] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %151 = llvm.ptrtoint %150 : !llvm.ptr to i64
    %152 = llvm.call @rapid_malloc(%36, %151) : (!llvm.ptr, i64) -> !llvm.ptr
    %153 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %154 = llvm.insertvalue %152, %153[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %155 = llvm.insertvalue %152, %154[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.insertvalue %156, %155[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %158 = llvm.insertvalue %64, %157[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %159 = llvm.insertvalue %148, %158[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%29 : i64)
  ^bb7(%160: i64):  // 2 preds: ^bb6, ^bb8
    %161 = builtin.unrealized_conversion_cast %160 : i64 to index
    %162 = llvm.icmp "slt" %160, %64 : i64
    llvm.cond_br %162, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %163 = llvm.extractvalue %159[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %164 = llvm.getelementptr %163[%160] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %164 : i64, !llvm.ptr
    %165 = llvm.add %160, %27  : i64
    llvm.br ^bb7(%165 : i64)
  ^bb9:  // pred: ^bb7
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.alloca %166 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %159, %167 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %170 = llvm.insertvalue %168, %169[0] : !llvm.struct<(i64, ptr)> 
    %171 = llvm.insertvalue %167, %170[1] : !llvm.struct<(i64, ptr)> 
    %172 = builtin.unrealized_conversion_cast %171 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.mlir.zero : !llvm.ptr
    %175 = llvm.getelementptr %174[%68] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %176 = llvm.ptrtoint %175 : !llvm.ptr to i64
    %177 = llvm.call @rapid_malloc(%36, %176) : (!llvm.ptr, i64) -> !llvm.ptr
    %178 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %179 = llvm.insertvalue %177, %178[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %180 = llvm.insertvalue %177, %179[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %181 = llvm.mlir.constant(0 : index) : i64
    %182 = llvm.insertvalue %181, %180[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %183 = llvm.insertvalue %68, %182[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %184 = llvm.insertvalue %173, %183[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%29 : i64)
  ^bb10(%185: i64):  // 2 preds: ^bb9, ^bb11
    %186 = builtin.unrealized_conversion_cast %185 : i64 to index
    %187 = llvm.icmp "slt" %185, %68 : i64
    llvm.cond_br %187, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %188 = llvm.extractvalue %184[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %189 = llvm.getelementptr %188[%185] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %189 : i64, !llvm.ptr
    %190 = llvm.add %185, %27  : i64
    llvm.br ^bb10(%190 : i64)
  ^bb12:  // pred: ^bb10
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.alloca %191 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %184, %192 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %195 = llvm.insertvalue %193, %194[0] : !llvm.struct<(i64, ptr)> 
    %196 = llvm.insertvalue %192, %195[1] : !llvm.struct<(i64, ptr)> 
    %197 = builtin.unrealized_conversion_cast %196 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.mlir.zero : !llvm.ptr
    %200 = llvm.getelementptr %199[%72] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %201 = llvm.ptrtoint %200 : !llvm.ptr to i64
    %202 = llvm.call @rapid_malloc(%36, %201) : (!llvm.ptr, i64) -> !llvm.ptr
    %203 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %204 = llvm.insertvalue %202, %203[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %205 = llvm.insertvalue %202, %204[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %206 = llvm.mlir.constant(0 : index) : i64
    %207 = llvm.insertvalue %206, %205[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %208 = llvm.insertvalue %72, %207[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %209 = llvm.insertvalue %198, %208[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%29 : i64)
  ^bb13(%210: i64):  // 2 preds: ^bb12, ^bb14
    %211 = builtin.unrealized_conversion_cast %210 : i64 to index
    %212 = llvm.icmp "slt" %210, %72 : i64
    llvm.cond_br %212, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %213 = llvm.extractvalue %209[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %214 = llvm.getelementptr %213[%210] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %214 : i64, !llvm.ptr
    %215 = llvm.add %210, %27  : i64
    llvm.br ^bb13(%215 : i64)
  ^bb15:  // pred: ^bb13
    %216 = llvm.mlir.constant(1 : index) : i64
    %217 = llvm.alloca %216 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %209, %217 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %218 = llvm.mlir.constant(1 : index) : i64
    %219 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %220 = llvm.insertvalue %218, %219[0] : !llvm.struct<(i64, ptr)> 
    %221 = llvm.insertvalue %217, %220[1] : !llvm.struct<(i64, ptr)> 
    %222 = builtin.unrealized_conversion_cast %221 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %223 = llvm.mlir.constant(1 : index) : i64
    %224 = llvm.mlir.zero : !llvm.ptr
    %225 = llvm.getelementptr %224[%76] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %226 = llvm.ptrtoint %225 : !llvm.ptr to i64
    %227 = llvm.call @rapid_malloc(%36, %226) : (!llvm.ptr, i64) -> !llvm.ptr
    %228 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %229 = llvm.insertvalue %227, %228[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %230 = llvm.insertvalue %227, %229[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %231 = llvm.mlir.constant(0 : index) : i64
    %232 = llvm.insertvalue %231, %230[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.insertvalue %76, %232[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %234 = llvm.insertvalue %223, %233[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%29 : i64)
  ^bb16(%235: i64):  // 2 preds: ^bb15, ^bb17
    %236 = builtin.unrealized_conversion_cast %235 : i64 to index
    %237 = llvm.icmp "slt" %235, %76 : i64
    llvm.cond_br %237, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %238 = llvm.extractvalue %234[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %239 = llvm.getelementptr %238[%235] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %239 : i64, !llvm.ptr
    %240 = llvm.add %235, %27  : i64
    llvm.br ^bb16(%240 : i64)
  ^bb18:  // pred: ^bb16
    %241 = llvm.mlir.constant(1 : index) : i64
    %242 = llvm.alloca %241 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %234, %242 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %245 = llvm.insertvalue %243, %244[0] : !llvm.struct<(i64, ptr)> 
    %246 = llvm.insertvalue %242, %245[1] : !llvm.struct<(i64, ptr)> 
    %247 = builtin.unrealized_conversion_cast %246 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.mlir.zero : !llvm.ptr
    %250 = llvm.getelementptr %249[%80] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %251 = llvm.ptrtoint %250 : !llvm.ptr to i64
    %252 = llvm.call @rapid_malloc(%36, %251) : (!llvm.ptr, i64) -> !llvm.ptr
    %253 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %254 = llvm.insertvalue %252, %253[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %255 = llvm.insertvalue %252, %254[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %256 = llvm.mlir.constant(0 : index) : i64
    %257 = llvm.insertvalue %256, %255[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %258 = llvm.insertvalue %80, %257[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %259 = llvm.insertvalue %248, %258[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%29 : i64)
  ^bb19(%260: i64):  // 2 preds: ^bb18, ^bb20
    %261 = builtin.unrealized_conversion_cast %260 : i64 to index
    %262 = llvm.icmp "slt" %260, %80 : i64
    llvm.cond_br %262, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %263 = llvm.extractvalue %259[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %264 = llvm.getelementptr %263[%260] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %264 : i64, !llvm.ptr
    %265 = llvm.add %260, %27  : i64
    llvm.br ^bb19(%265 : i64)
  ^bb21:  // pred: ^bb19
    %266 = llvm.mlir.constant(1 : index) : i64
    %267 = llvm.alloca %266 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %259, %267 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %270 = llvm.insertvalue %268, %269[0] : !llvm.struct<(i64, ptr)> 
    %271 = llvm.insertvalue %267, %270[1] : !llvm.struct<(i64, ptr)> 
    %272 = builtin.unrealized_conversion_cast %271 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %273 = llvm.mlir.constant(1 : index) : i64
    %274 = llvm.mlir.zero : !llvm.ptr
    %275 = llvm.getelementptr %274[%84] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %276 = llvm.ptrtoint %275 : !llvm.ptr to i64
    %277 = llvm.call @rapid_malloc(%36, %276) : (!llvm.ptr, i64) -> !llvm.ptr
    %278 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %279 = llvm.insertvalue %277, %278[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %280 = llvm.insertvalue %277, %279[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %281 = llvm.mlir.constant(0 : index) : i64
    %282 = llvm.insertvalue %281, %280[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %283 = llvm.insertvalue %84, %282[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %284 = llvm.insertvalue %273, %283[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%29 : i64)
  ^bb22(%285: i64):  // 2 preds: ^bb21, ^bb23
    %286 = builtin.unrealized_conversion_cast %285 : i64 to index
    %287 = llvm.icmp "slt" %285, %84 : i64
    llvm.cond_br %287, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %288 = llvm.extractvalue %284[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %289 = llvm.getelementptr %288[%285] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %289 : i64, !llvm.ptr
    %290 = llvm.add %285, %27  : i64
    llvm.br ^bb22(%290 : i64)
  ^bb24:  // pred: ^bb22
    %291 = llvm.mlir.constant(1 : index) : i64
    %292 = llvm.alloca %291 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %284, %292 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %295 = llvm.insertvalue %293, %294[0] : !llvm.struct<(i64, ptr)> 
    %296 = llvm.insertvalue %292, %295[1] : !llvm.struct<(i64, ptr)> 
    %297 = builtin.unrealized_conversion_cast %296 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.mlir.zero : !llvm.ptr
    %300 = llvm.getelementptr %299[%88] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %301 = llvm.ptrtoint %300 : !llvm.ptr to i64
    %302 = llvm.call @rapid_malloc(%36, %301) : (!llvm.ptr, i64) -> !llvm.ptr
    %303 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %304 = llvm.insertvalue %302, %303[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %305 = llvm.insertvalue %302, %304[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %306 = llvm.mlir.constant(0 : index) : i64
    %307 = llvm.insertvalue %306, %305[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %308 = llvm.insertvalue %88, %307[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %309 = llvm.insertvalue %298, %308[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%29 : i64)
  ^bb25(%310: i64):  // 2 preds: ^bb24, ^bb26
    %311 = builtin.unrealized_conversion_cast %310 : i64 to index
    %312 = llvm.icmp "slt" %310, %88 : i64
    llvm.cond_br %312, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %313 = llvm.extractvalue %309[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %314 = llvm.getelementptr %313[%310] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %4, %314 : f64, !llvm.ptr
    %315 = llvm.add %310, %27  : i64
    llvm.br ^bb25(%315 : i64)
  ^bb27:  // pred: ^bb25
    %316 = llvm.mlir.constant(1 : index) : i64
    %317 = llvm.alloca %316 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %309, %317 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %318 = llvm.mlir.constant(1 : index) : i64
    %319 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %320 = llvm.insertvalue %318, %319[0] : !llvm.struct<(i64, ptr)> 
    %321 = llvm.insertvalue %317, %320[1] : !llvm.struct<(i64, ptr)> 
    %322 = builtin.unrealized_conversion_cast %321 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    %323 = llvm.extractvalue %121[0] : !llvm.struct<(i64, ptr)> 
    %324 = llvm.extractvalue %121[1] : !llvm.struct<(i64, ptr)> 
    %325 = llvm.extractvalue %146[0] : !llvm.struct<(i64, ptr)> 
    %326 = llvm.extractvalue %146[1] : !llvm.struct<(i64, ptr)> 
    %327 = llvm.extractvalue %171[0] : !llvm.struct<(i64, ptr)> 
    %328 = llvm.extractvalue %171[1] : !llvm.struct<(i64, ptr)> 
    %329 = llvm.extractvalue %196[0] : !llvm.struct<(i64, ptr)> 
    %330 = llvm.extractvalue %196[1] : !llvm.struct<(i64, ptr)> 
    %331 = llvm.extractvalue %221[0] : !llvm.struct<(i64, ptr)> 
    %332 = llvm.extractvalue %221[1] : !llvm.struct<(i64, ptr)> 
    %333 = llvm.extractvalue %246[0] : !llvm.struct<(i64, ptr)> 
    %334 = llvm.extractvalue %246[1] : !llvm.struct<(i64, ptr)> 
    %335 = llvm.extractvalue %271[0] : !llvm.struct<(i64, ptr)> 
    %336 = llvm.extractvalue %271[1] : !llvm.struct<(i64, ptr)> 
    %337 = llvm.extractvalue %296[0] : !llvm.struct<(i64, ptr)> 
    %338 = llvm.extractvalue %296[1] : !llvm.struct<(i64, ptr)> 
    %339 = llvm.extractvalue %321[0] : !llvm.struct<(i64, ptr)> 
    %340 = llvm.extractvalue %321[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64_i64(%21, %29, %26, %27, %26, %323, %324, %325, %326, %327, %328, %329, %330, %331, %332, %333, %334, %335, %336, %337, %338, %339, %340, %20) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %341 = llvm.mlir.constant(4 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    %343 = llvm.mul %341, %96  : i64
    %344 = llvm.mlir.zero : !llvm.ptr
    %345 = llvm.getelementptr %344[%343] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %346 = llvm.ptrtoint %345 : !llvm.ptr to i64
    %347 = llvm.mlir.constant(32 : index) : i64
    %348 = llvm.add %346, %347  : i64
    %349 = llvm.call @rapid_malloc(%36, %348) : (!llvm.ptr, i64) -> !llvm.ptr
    %350 = llvm.ptrtoint %349 : !llvm.ptr to i64
    %351 = llvm.mlir.constant(1 : index) : i64
    %352 = llvm.sub %347, %351  : i64
    %353 = llvm.add %350, %352  : i64
    %354 = llvm.urem %353, %347  : i64
    %355 = llvm.sub %353, %354  : i64
    %356 = llvm.inttoptr %355 : i64 to !llvm.ptr
    %357 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %358 = llvm.insertvalue %349, %357[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %359 = llvm.insertvalue %356, %358[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %360 = llvm.mlir.constant(0 : index) : i64
    %361 = llvm.insertvalue %360, %359[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %362 = llvm.insertvalue %96, %361[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %363 = llvm.insertvalue %341, %362[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %364 = llvm.insertvalue %341, %363[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %365 = llvm.insertvalue %342, %364[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb28(%29 : i64)
  ^bb28(%366: i64):  // 2 preds: ^bb27, ^bb31
    %367 = builtin.unrealized_conversion_cast %366 : i64 to index
    %368 = llvm.icmp "slt" %366, %96 : i64
    llvm.cond_br %368, ^bb29(%29 : i64), ^bb32
  ^bb29(%369: i64):  // 2 preds: ^bb28, ^bb30
    %370 = builtin.unrealized_conversion_cast %369 : i64 to index
    %371 = llvm.icmp "slt" %369, %18 : i64
    llvm.cond_br %371, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %372 = llvm.extractvalue %365[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %373 = llvm.mlir.constant(4 : index) : i64
    %374 = llvm.mul %366, %373  : i64
    %375 = llvm.add %374, %369  : i64
    %376 = llvm.getelementptr %372[%375] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %3, %376 : f64, !llvm.ptr
    %377 = llvm.add %369, %27  : i64
    llvm.br ^bb29(%377 : i64)
  ^bb31:  // pred: ^bb29
    %378 = llvm.add %366, %27  : i64
    llvm.br ^bb28(%378 : i64)
  ^bb32:  // pred: ^bb28
    %379 = llvm.mlir.constant(4 : index) : i64
    %380 = llvm.mlir.constant(1 : index) : i64
    %381 = llvm.mul %379, %92  : i64
    %382 = llvm.mlir.zero : !llvm.ptr
    %383 = llvm.getelementptr %382[%381] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %384 = llvm.ptrtoint %383 : !llvm.ptr to i64
    %385 = llvm.mlir.constant(32 : index) : i64
    %386 = llvm.add %384, %385  : i64
    %387 = llvm.call @rapid_malloc(%36, %386) : (!llvm.ptr, i64) -> !llvm.ptr
    %388 = llvm.ptrtoint %387 : !llvm.ptr to i64
    %389 = llvm.mlir.constant(1 : index) : i64
    %390 = llvm.sub %385, %389  : i64
    %391 = llvm.add %388, %390  : i64
    %392 = llvm.urem %391, %385  : i64
    %393 = llvm.sub %391, %392  : i64
    %394 = llvm.inttoptr %393 : i64 to !llvm.ptr
    %395 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %396 = llvm.insertvalue %387, %395[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %397 = llvm.insertvalue %394, %396[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %398 = llvm.mlir.constant(0 : index) : i64
    %399 = llvm.insertvalue %398, %397[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %400 = llvm.insertvalue %92, %399[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %401 = llvm.insertvalue %379, %400[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %402 = llvm.insertvalue %379, %401[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %403 = llvm.insertvalue %380, %402[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb33(%29 : i64)
  ^bb33(%404: i64):  // 2 preds: ^bb32, ^bb36
    %405 = builtin.unrealized_conversion_cast %404 : i64 to index
    %406 = llvm.icmp "slt" %404, %92 : i64
    llvm.cond_br %406, ^bb34(%29 : i64), ^bb37(%29 : i64)
  ^bb34(%407: i64):  // 2 preds: ^bb33, ^bb35
    %408 = builtin.unrealized_conversion_cast %407 : i64 to index
    %409 = llvm.icmp "slt" %407, %18 : i64
    llvm.cond_br %409, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %410 = llvm.extractvalue %403[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %411 = llvm.mlir.constant(4 : index) : i64
    %412 = llvm.mul %404, %411  : i64
    %413 = llvm.add %412, %407  : i64
    %414 = llvm.getelementptr %410[%413] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %4, %414 : f64, !llvm.ptr
    %415 = llvm.add %407, %27  : i64
    llvm.br ^bb34(%415 : i64)
  ^bb36:  // pred: ^bb34
    %416 = llvm.add %404, %27  : i64
    llvm.br ^bb33(%416 : i64)
  ^bb37(%417: i64):  // 2 preds: ^bb33, ^bb43
    %418 = builtin.unrealized_conversion_cast %417 : i64 to index
    %419 = llvm.icmp "slt" %417, %92 : i64
    llvm.cond_br %419, ^bb38, ^bb44
  ^bb38:  // pred: ^bb37
    %420 = llvm.add %417, %27  : i64
    %421 = builtin.unrealized_conversion_cast %420 : i64 to index
    %422 = llvm.extractvalue %209[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %423 = llvm.getelementptr %422[%417] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %424 = llvm.load %423 : !llvm.ptr -> i64
    %425 = llvm.extractvalue %209[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %426 = llvm.getelementptr %425[%420] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %427 = llvm.load %426 : !llvm.ptr -> i64
    llvm.br ^bb39(%424 : i64)
  ^bb39(%428: i64):  // 2 preds: ^bb38, ^bb42
    %429 = builtin.unrealized_conversion_cast %428 : i64 to index
    %430 = llvm.icmp "slt" %428, %427 : i64
    llvm.cond_br %430, ^bb40(%29 : i64), ^bb43
  ^bb40(%431: i64):  // 2 preds: ^bb39, ^bb41
    %432 = builtin.unrealized_conversion_cast %431 : i64 to index
    %433 = llvm.icmp "slt" %431, %2 : i64
    llvm.cond_br %433, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %434 = llvm.extractvalue %234[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %435 = llvm.getelementptr %434[%428] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %436 = llvm.load %435 : !llvm.ptr -> i64
    %437 = builtin.unrealized_conversion_cast %436 : i64 to index
    %438 = llvm.extractvalue %309[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %439 = llvm.getelementptr %438[%428] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %440 = llvm.load %439 : !llvm.ptr -> f64
    %441 = llvm.extractvalue %365[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %442 = llvm.mlir.constant(4 : index) : i64
    %443 = llvm.mul %436, %442  : i64
    %444 = llvm.add %443, %431  : i64
    %445 = llvm.getelementptr %441[%444] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %446 = llvm.load %445 : !llvm.ptr -> f64
    %447 = llvm.fmul %440, %446  : f64
    %448 = llvm.extractvalue %403[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %449 = llvm.mlir.constant(4 : index) : i64
    %450 = llvm.mul %417, %449  : i64
    %451 = llvm.add %450, %431  : i64
    %452 = llvm.getelementptr %448[%451] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %453 = llvm.load %452 : !llvm.ptr -> f64
    %454 = llvm.fadd %453, %447  : f64
    %455 = llvm.extractvalue %403[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %456 = llvm.mlir.constant(4 : index) : i64
    %457 = llvm.mul %417, %456  : i64
    %458 = llvm.add %457, %431  : i64
    %459 = llvm.getelementptr %455[%458] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %454, %459 : f64, !llvm.ptr
    %460 = llvm.add %431, %27  : i64
    llvm.br ^bb40(%460 : i64)
  ^bb42:  // pred: ^bb40
    %461 = llvm.add %428, %27  : i64
    llvm.br ^bb39(%461 : i64)
  ^bb43:  // pred: ^bb39
    llvm.br ^bb37(%420 : i64)
  ^bb44:  // pred: ^bb37
    %462 = llvm.mlir.constant(1 : index) : i64
    %463 = llvm.alloca %462 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %403, %463 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %464 = llvm.mlir.constant(2 : index) : i64
    %465 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %466 = llvm.insertvalue %464, %465[0] : !llvm.struct<(i64, ptr)> 
    %467 = llvm.insertvalue %463, %466[1] : !llvm.struct<(i64, ptr)> 
    %468 = builtin.unrealized_conversion_cast %467 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    %469 = llvm.extractvalue %467[0] : !llvm.struct<(i64, ptr)> 
    %470 = llvm.extractvalue %467[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%469, %470) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @read_input_2D_f64_i64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @read_input_sizes_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


// -----// IR Dump After ReconcileUnrealizedCasts (reconcile-unrealized-casts) //----- //
module {
  llvm.func @rapid_malloc(!llvm.ptr, i64) -> !llvm.ptr
  llvm.func @rapid_initialize() -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.mlir.constant(1.700000e+00 : f64) : f64
    %2 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.mlir.constant(10 : index) : i64
    %5 = llvm.mlir.constant(9 : index) : i64
    %6 = llvm.mlir.constant(8 : index) : i64
    %7 = llvm.mlir.constant(7 : index) : i64
    %8 = llvm.mlir.constant(6 : index) : i64
    %9 = llvm.mlir.constant(5 : index) : i64
    %10 = llvm.mlir.constant(4 : index) : i64
    %11 = llvm.mlir.constant(1 : i32) : i32
    %12 = llvm.mlir.constant(0 : i32) : i32
    %13 = llvm.mlir.constant(3 : index) : i64
    %14 = llvm.mlir.constant(2 : index) : i64
    %15 = llvm.mlir.constant(-1 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(0 : index) : i64
    %18 = llvm.mlir.constant(13 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.zero : !llvm.ptr
    %21 = llvm.getelementptr %20[13] : (!llvm.ptr) -> !llvm.ptr, i64
    %22 = llvm.ptrtoint %21 : !llvm.ptr to i64
    %23 = llvm.call @rapid_initialize() : () -> !llvm.ptr
    %24 = llvm.call @rapid_malloc(%23, %22) : (!llvm.ptr, i64) -> !llvm.ptr
    %25 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %26 = llvm.insertvalue %24, %25[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.insertvalue %24, %26[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.mlir.constant(0 : index) : i64
    %29 = llvm.insertvalue %28, %27[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.insertvalue %18, %29[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.insertvalue %19, %30[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.alloca %32 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %31, %33 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %36 = llvm.insertvalue %34, %35[0] : !llvm.struct<(i64, ptr)> 
    %37 = llvm.insertvalue %33, %36[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%12, %17, %15, %16, %15, %34, %33, %11) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %38 = llvm.load %24 : !llvm.ptr -> i64
    %39 = llvm.getelementptr %24[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %40 = llvm.load %39 : !llvm.ptr -> i64
    %41 = llvm.getelementptr %24[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %42 = llvm.load %41 : !llvm.ptr -> i64
    %43 = llvm.getelementptr %24[3] : (!llvm.ptr) -> !llvm.ptr, i64
    %44 = llvm.load %43 : !llvm.ptr -> i64
    %45 = llvm.getelementptr %24[4] : (!llvm.ptr) -> !llvm.ptr, i64
    %46 = llvm.load %45 : !llvm.ptr -> i64
    %47 = llvm.getelementptr %24[5] : (!llvm.ptr) -> !llvm.ptr, i64
    %48 = llvm.load %47 : !llvm.ptr -> i64
    %49 = llvm.getelementptr %24[6] : (!llvm.ptr) -> !llvm.ptr, i64
    %50 = llvm.load %49 : !llvm.ptr -> i64
    %51 = llvm.getelementptr %24[7] : (!llvm.ptr) -> !llvm.ptr, i64
    %52 = llvm.load %51 : !llvm.ptr -> i64
    %53 = llvm.getelementptr %24[8] : (!llvm.ptr) -> !llvm.ptr, i64
    %54 = llvm.load %53 : !llvm.ptr -> i64
    %55 = llvm.getelementptr %24[9] : (!llvm.ptr) -> !llvm.ptr, i64
    %56 = llvm.load %55 : !llvm.ptr -> i64
    %57 = llvm.getelementptr %24[10] : (!llvm.ptr) -> !llvm.ptr, i64
    %58 = llvm.load %57 : !llvm.ptr -> i64
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.mlir.zero : !llvm.ptr
    %61 = llvm.getelementptr %60[%38] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %62 = llvm.ptrtoint %61 : !llvm.ptr to i64
    %63 = llvm.call @rapid_malloc(%23, %62) : (!llvm.ptr, i64) -> !llvm.ptr
    %64 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %65 = llvm.insertvalue %63, %64[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.insertvalue %63, %65[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.insertvalue %67, %66[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.insertvalue %38, %68[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.insertvalue %59, %69[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%17 : i64)
  ^bb1(%71: i64):  // 2 preds: ^bb0, ^bb2
    %72 = llvm.icmp "slt" %71, %38 : i64
    llvm.cond_br %72, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %73 = llvm.getelementptr %63[%71] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %73 : i64, !llvm.ptr
    %74 = llvm.add %71, %16  : i64
    llvm.br ^bb1(%74 : i64)
  ^bb3:  // pred: ^bb1
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.alloca %75 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %70, %76 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %79 = llvm.insertvalue %77, %78[0] : !llvm.struct<(i64, ptr)> 
    %80 = llvm.insertvalue %76, %79[1] : !llvm.struct<(i64, ptr)> 
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.zero : !llvm.ptr
    %83 = llvm.getelementptr %82[%40] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %84 = llvm.ptrtoint %83 : !llvm.ptr to i64
    %85 = llvm.call @rapid_malloc(%23, %84) : (!llvm.ptr, i64) -> !llvm.ptr
    %86 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %87 = llvm.insertvalue %85, %86[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.insertvalue %85, %87[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = llvm.insertvalue %89, %88[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %91 = llvm.insertvalue %40, %90[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %92 = llvm.insertvalue %81, %91[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%17 : i64)
  ^bb4(%93: i64):  // 2 preds: ^bb3, ^bb5
    %94 = llvm.icmp "slt" %93, %40 : i64
    llvm.cond_br %94, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %95 = llvm.getelementptr %85[%93] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %95 : i64, !llvm.ptr
    %96 = llvm.add %93, %16  : i64
    llvm.br ^bb4(%96 : i64)
  ^bb6:  // pred: ^bb4
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.alloca %97 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %92, %98 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %101 = llvm.insertvalue %99, %100[0] : !llvm.struct<(i64, ptr)> 
    %102 = llvm.insertvalue %98, %101[1] : !llvm.struct<(i64, ptr)> 
    %103 = llvm.mlir.constant(1 : index) : i64
    %104 = llvm.mlir.zero : !llvm.ptr
    %105 = llvm.getelementptr %104[%42] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %106 = llvm.ptrtoint %105 : !llvm.ptr to i64
    %107 = llvm.call @rapid_malloc(%23, %106) : (!llvm.ptr, i64) -> !llvm.ptr
    %108 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %109 = llvm.insertvalue %107, %108[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.insertvalue %107, %109[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.insertvalue %111, %110[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %113 = llvm.insertvalue %42, %112[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %114 = llvm.insertvalue %103, %113[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%17 : i64)
  ^bb7(%115: i64):  // 2 preds: ^bb6, ^bb8
    %116 = llvm.icmp "slt" %115, %42 : i64
    llvm.cond_br %116, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %117 = llvm.getelementptr %107[%115] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %117 : i64, !llvm.ptr
    %118 = llvm.add %115, %16  : i64
    llvm.br ^bb7(%118 : i64)
  ^bb9:  // pred: ^bb7
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.alloca %119 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %114, %120 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %123 = llvm.insertvalue %121, %122[0] : !llvm.struct<(i64, ptr)> 
    %124 = llvm.insertvalue %120, %123[1] : !llvm.struct<(i64, ptr)> 
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.mlir.zero : !llvm.ptr
    %127 = llvm.getelementptr %126[%44] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %128 = llvm.ptrtoint %127 : !llvm.ptr to i64
    %129 = llvm.call @rapid_malloc(%23, %128) : (!llvm.ptr, i64) -> !llvm.ptr
    %130 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %131 = llvm.insertvalue %129, %130[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.insertvalue %129, %131[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.mlir.constant(0 : index) : i64
    %134 = llvm.insertvalue %133, %132[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %135 = llvm.insertvalue %44, %134[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %136 = llvm.insertvalue %125, %135[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%17 : i64)
  ^bb10(%137: i64):  // 2 preds: ^bb9, ^bb11
    %138 = llvm.icmp "slt" %137, %44 : i64
    llvm.cond_br %138, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %139 = llvm.getelementptr %129[%137] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %139 : i64, !llvm.ptr
    %140 = llvm.add %137, %16  : i64
    llvm.br ^bb10(%140 : i64)
  ^bb12:  // pred: ^bb10
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.alloca %141 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %136, %142 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %145 = llvm.insertvalue %143, %144[0] : !llvm.struct<(i64, ptr)> 
    %146 = llvm.insertvalue %142, %145[1] : !llvm.struct<(i64, ptr)> 
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.mlir.zero : !llvm.ptr
    %149 = llvm.getelementptr %148[%46] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %150 = llvm.ptrtoint %149 : !llvm.ptr to i64
    %151 = llvm.call @rapid_malloc(%23, %150) : (!llvm.ptr, i64) -> !llvm.ptr
    %152 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %153 = llvm.insertvalue %151, %152[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %154 = llvm.insertvalue %151, %153[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %155 = llvm.mlir.constant(0 : index) : i64
    %156 = llvm.insertvalue %155, %154[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %157 = llvm.insertvalue %46, %156[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %158 = llvm.insertvalue %147, %157[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%17 : i64)
  ^bb13(%159: i64):  // 2 preds: ^bb12, ^bb14
    %160 = llvm.icmp "slt" %159, %46 : i64
    llvm.cond_br %160, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %161 = llvm.getelementptr %151[%159] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %161 : i64, !llvm.ptr
    %162 = llvm.add %159, %16  : i64
    llvm.br ^bb13(%162 : i64)
  ^bb15:  // pred: ^bb13
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.alloca %163 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %158, %164 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %167 = llvm.insertvalue %165, %166[0] : !llvm.struct<(i64, ptr)> 
    %168 = llvm.insertvalue %164, %167[1] : !llvm.struct<(i64, ptr)> 
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.mlir.zero : !llvm.ptr
    %171 = llvm.getelementptr %170[%48] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %172 = llvm.ptrtoint %171 : !llvm.ptr to i64
    %173 = llvm.call @rapid_malloc(%23, %172) : (!llvm.ptr, i64) -> !llvm.ptr
    %174 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %175 = llvm.insertvalue %173, %174[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %176 = llvm.insertvalue %173, %175[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %177 = llvm.mlir.constant(0 : index) : i64
    %178 = llvm.insertvalue %177, %176[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %179 = llvm.insertvalue %48, %178[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %180 = llvm.insertvalue %169, %179[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%17 : i64)
  ^bb16(%181: i64):  // 2 preds: ^bb15, ^bb17
    %182 = llvm.icmp "slt" %181, %48 : i64
    llvm.cond_br %182, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %183 = llvm.getelementptr %173[%181] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %183 : i64, !llvm.ptr
    %184 = llvm.add %181, %16  : i64
    llvm.br ^bb16(%184 : i64)
  ^bb18:  // pred: ^bb16
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.alloca %185 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %180, %186 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %187 = llvm.mlir.constant(1 : index) : i64
    %188 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %189 = llvm.insertvalue %187, %188[0] : !llvm.struct<(i64, ptr)> 
    %190 = llvm.insertvalue %186, %189[1] : !llvm.struct<(i64, ptr)> 
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.mlir.zero : !llvm.ptr
    %193 = llvm.getelementptr %192[%50] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %194 = llvm.ptrtoint %193 : !llvm.ptr to i64
    %195 = llvm.call @rapid_malloc(%23, %194) : (!llvm.ptr, i64) -> !llvm.ptr
    %196 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %197 = llvm.insertvalue %195, %196[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %198 = llvm.insertvalue %195, %197[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %199 = llvm.mlir.constant(0 : index) : i64
    %200 = llvm.insertvalue %199, %198[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %201 = llvm.insertvalue %50, %200[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %202 = llvm.insertvalue %191, %201[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%17 : i64)
  ^bb19(%203: i64):  // 2 preds: ^bb18, ^bb20
    %204 = llvm.icmp "slt" %203, %50 : i64
    llvm.cond_br %204, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %205 = llvm.getelementptr %195[%203] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %205 : i64, !llvm.ptr
    %206 = llvm.add %203, %16  : i64
    llvm.br ^bb19(%206 : i64)
  ^bb21:  // pred: ^bb19
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.alloca %207 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %202, %208 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %209 = llvm.mlir.constant(1 : index) : i64
    %210 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %211 = llvm.insertvalue %209, %210[0] : !llvm.struct<(i64, ptr)> 
    %212 = llvm.insertvalue %208, %211[1] : !llvm.struct<(i64, ptr)> 
    %213 = llvm.mlir.constant(1 : index) : i64
    %214 = llvm.mlir.zero : !llvm.ptr
    %215 = llvm.getelementptr %214[%52] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %216 = llvm.ptrtoint %215 : !llvm.ptr to i64
    %217 = llvm.call @rapid_malloc(%23, %216) : (!llvm.ptr, i64) -> !llvm.ptr
    %218 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %219 = llvm.insertvalue %217, %218[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %220 = llvm.insertvalue %217, %219[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %221 = llvm.mlir.constant(0 : index) : i64
    %222 = llvm.insertvalue %221, %220[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %223 = llvm.insertvalue %52, %222[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %224 = llvm.insertvalue %213, %223[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%17 : i64)
  ^bb22(%225: i64):  // 2 preds: ^bb21, ^bb23
    %226 = llvm.icmp "slt" %225, %52 : i64
    llvm.cond_br %226, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %227 = llvm.getelementptr %217[%225] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %227 : i64, !llvm.ptr
    %228 = llvm.add %225, %16  : i64
    llvm.br ^bb22(%228 : i64)
  ^bb24:  // pred: ^bb22
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.alloca %229 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %224, %230 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %233 = llvm.insertvalue %231, %232[0] : !llvm.struct<(i64, ptr)> 
    %234 = llvm.insertvalue %230, %233[1] : !llvm.struct<(i64, ptr)> 
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.mlir.zero : !llvm.ptr
    %237 = llvm.getelementptr %236[%54] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %238 = llvm.ptrtoint %237 : !llvm.ptr to i64
    %239 = llvm.call @rapid_malloc(%23, %238) : (!llvm.ptr, i64) -> !llvm.ptr
    %240 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %241 = llvm.insertvalue %239, %240[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %242 = llvm.insertvalue %239, %241[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %243 = llvm.mlir.constant(0 : index) : i64
    %244 = llvm.insertvalue %243, %242[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %245 = llvm.insertvalue %54, %244[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %246 = llvm.insertvalue %235, %245[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%17 : i64)
  ^bb25(%247: i64):  // 2 preds: ^bb24, ^bb26
    %248 = llvm.icmp "slt" %247, %54 : i64
    llvm.cond_br %248, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %249 = llvm.getelementptr %239[%247] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %2, %249 : f64, !llvm.ptr
    %250 = llvm.add %247, %16  : i64
    llvm.br ^bb25(%250 : i64)
  ^bb27:  // pred: ^bb25
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.alloca %251 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %246, %252 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %253 = llvm.mlir.constant(1 : index) : i64
    %254 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %255 = llvm.insertvalue %253, %254[0] : !llvm.struct<(i64, ptr)> 
    %256 = llvm.insertvalue %252, %255[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64_i64(%12, %17, %15, %16, %15, %77, %76, %99, %98, %121, %120, %143, %142, %165, %164, %187, %186, %209, %208, %231, %230, %253, %252, %11) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %257 = llvm.mlir.constant(4 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    %259 = llvm.mul %58, %257  : i64
    %260 = llvm.mlir.zero : !llvm.ptr
    %261 = llvm.getelementptr %260[%259] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %262 = llvm.ptrtoint %261 : !llvm.ptr to i64
    %263 = llvm.mlir.constant(32 : index) : i64
    %264 = llvm.add %262, %263  : i64
    %265 = llvm.call @rapid_malloc(%23, %264) : (!llvm.ptr, i64) -> !llvm.ptr
    %266 = llvm.ptrtoint %265 : !llvm.ptr to i64
    %267 = llvm.mlir.constant(1 : index) : i64
    %268 = llvm.sub %263, %267  : i64
    %269 = llvm.add %266, %268  : i64
    %270 = llvm.urem %269, %263  : i64
    %271 = llvm.sub %269, %270  : i64
    %272 = llvm.inttoptr %271 : i64 to !llvm.ptr
    %273 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %274 = llvm.insertvalue %265, %273[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %275 = llvm.insertvalue %272, %274[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %276 = llvm.mlir.constant(0 : index) : i64
    %277 = llvm.insertvalue %276, %275[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %278 = llvm.insertvalue %58, %277[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %279 = llvm.insertvalue %257, %278[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %280 = llvm.insertvalue %257, %279[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %281 = llvm.insertvalue %258, %280[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb28(%17 : i64)
  ^bb28(%282: i64):  // 2 preds: ^bb27, ^bb31
    %283 = llvm.icmp "slt" %282, %58 : i64
    llvm.cond_br %283, ^bb29(%17 : i64), ^bb32
  ^bb29(%284: i64):  // 2 preds: ^bb28, ^bb30
    %285 = llvm.icmp "slt" %284, %10 : i64
    llvm.cond_br %285, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %286 = llvm.mlir.constant(4 : index) : i64
    %287 = llvm.mul %282, %286  : i64
    %288 = llvm.add %287, %284  : i64
    %289 = llvm.getelementptr %272[%288] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %289 : f64, !llvm.ptr
    %290 = llvm.add %284, %16  : i64
    llvm.br ^bb29(%290 : i64)
  ^bb31:  // pred: ^bb29
    %291 = llvm.add %282, %16  : i64
    llvm.br ^bb28(%291 : i64)
  ^bb32:  // pred: ^bb28
    %292 = llvm.mlir.constant(4 : index) : i64
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.mul %56, %292  : i64
    %295 = llvm.mlir.zero : !llvm.ptr
    %296 = llvm.getelementptr %295[%294] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %297 = llvm.ptrtoint %296 : !llvm.ptr to i64
    %298 = llvm.mlir.constant(32 : index) : i64
    %299 = llvm.add %297, %298  : i64
    %300 = llvm.call @rapid_malloc(%23, %299) : (!llvm.ptr, i64) -> !llvm.ptr
    %301 = llvm.ptrtoint %300 : !llvm.ptr to i64
    %302 = llvm.mlir.constant(1 : index) : i64
    %303 = llvm.sub %298, %302  : i64
    %304 = llvm.add %301, %303  : i64
    %305 = llvm.urem %304, %298  : i64
    %306 = llvm.sub %304, %305  : i64
    %307 = llvm.inttoptr %306 : i64 to !llvm.ptr
    %308 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %309 = llvm.insertvalue %300, %308[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %310 = llvm.insertvalue %307, %309[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %311 = llvm.mlir.constant(0 : index) : i64
    %312 = llvm.insertvalue %311, %310[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %313 = llvm.insertvalue %56, %312[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %314 = llvm.insertvalue %292, %313[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %315 = llvm.insertvalue %292, %314[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %316 = llvm.insertvalue %293, %315[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb33(%17 : i64)
  ^bb33(%317: i64):  // 2 preds: ^bb32, ^bb36
    %318 = llvm.icmp "slt" %317, %56 : i64
    llvm.cond_br %318, ^bb34(%17 : i64), ^bb37(%17 : i64)
  ^bb34(%319: i64):  // 2 preds: ^bb33, ^bb35
    %320 = llvm.icmp "slt" %319, %10 : i64
    llvm.cond_br %320, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %321 = llvm.mlir.constant(4 : index) : i64
    %322 = llvm.mul %317, %321  : i64
    %323 = llvm.add %322, %319  : i64
    %324 = llvm.getelementptr %307[%323] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %2, %324 : f64, !llvm.ptr
    %325 = llvm.add %319, %16  : i64
    llvm.br ^bb34(%325 : i64)
  ^bb36:  // pred: ^bb34
    %326 = llvm.add %317, %16  : i64
    llvm.br ^bb33(%326 : i64)
  ^bb37(%327: i64):  // 2 preds: ^bb33, ^bb43
    %328 = llvm.icmp "slt" %327, %56 : i64
    llvm.cond_br %328, ^bb38, ^bb44
  ^bb38:  // pred: ^bb37
    %329 = llvm.add %327, %16  : i64
    %330 = llvm.getelementptr %151[%327] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %331 = llvm.load %330 : !llvm.ptr -> i64
    %332 = llvm.getelementptr %151[%329] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %333 = llvm.load %332 : !llvm.ptr -> i64
    llvm.br ^bb39(%331 : i64)
  ^bb39(%334: i64):  // 2 preds: ^bb38, ^bb42
    %335 = llvm.icmp "slt" %334, %333 : i64
    llvm.cond_br %335, ^bb40(%17 : i64), ^bb43
  ^bb40(%336: i64):  // 2 preds: ^bb39, ^bb41
    %337 = llvm.icmp "slt" %336, %0 : i64
    llvm.cond_br %337, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %338 = llvm.getelementptr %173[%334] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %339 = llvm.load %338 : !llvm.ptr -> i64
    %340 = llvm.getelementptr %239[%334] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %341 = llvm.load %340 : !llvm.ptr -> f64
    %342 = llvm.mlir.constant(4 : index) : i64
    %343 = llvm.mul %339, %342  : i64
    %344 = llvm.add %343, %336  : i64
    %345 = llvm.getelementptr %272[%344] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %346 = llvm.load %345 : !llvm.ptr -> f64
    %347 = llvm.fmul %341, %346  : f64
    %348 = llvm.mlir.constant(4 : index) : i64
    %349 = llvm.mul %327, %348  : i64
    %350 = llvm.add %349, %336  : i64
    %351 = llvm.getelementptr %307[%350] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %352 = llvm.load %351 : !llvm.ptr -> f64
    %353 = llvm.fadd %352, %347  : f64
    %354 = llvm.mlir.constant(4 : index) : i64
    %355 = llvm.mul %327, %354  : i64
    %356 = llvm.add %355, %336  : i64
    %357 = llvm.getelementptr %307[%356] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %353, %357 : f64, !llvm.ptr
    %358 = llvm.add %336, %16  : i64
    llvm.br ^bb40(%358 : i64)
  ^bb42:  // pred: ^bb40
    %359 = llvm.add %334, %16  : i64
    llvm.br ^bb39(%359 : i64)
  ^bb43:  // pred: ^bb39
    llvm.br ^bb37(%329 : i64)
  ^bb44:  // pred: ^bb37
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.alloca %360 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %316, %361 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %362 = llvm.mlir.constant(2 : index) : i64
    %363 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %364 = llvm.insertvalue %362, %363[0] : !llvm.struct<(i64, ptr)> 
    %365 = llvm.insertvalue %361, %364[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%362, %361) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @read_input_2D_f64_i64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @read_input_sizes_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


module {
  llvm.func @rapid_malloc(!llvm.ptr, i64) -> !llvm.ptr
  llvm.func @rapid_initialize() -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.mlir.constant(1.700000e+00 : f64) : f64
    %2 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.mlir.constant(10 : index) : i64
    %5 = llvm.mlir.constant(9 : index) : i64
    %6 = llvm.mlir.constant(8 : index) : i64
    %7 = llvm.mlir.constant(7 : index) : i64
    %8 = llvm.mlir.constant(6 : index) : i64
    %9 = llvm.mlir.constant(5 : index) : i64
    %10 = llvm.mlir.constant(4 : index) : i64
    %11 = llvm.mlir.constant(1 : i32) : i32
    %12 = llvm.mlir.constant(0 : i32) : i32
    %13 = llvm.mlir.constant(3 : index) : i64
    %14 = llvm.mlir.constant(2 : index) : i64
    %15 = llvm.mlir.constant(-1 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(0 : index) : i64
    %18 = llvm.mlir.constant(13 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.zero : !llvm.ptr
    %21 = llvm.getelementptr %20[13] : (!llvm.ptr) -> !llvm.ptr, i64
    %22 = llvm.ptrtoint %21 : !llvm.ptr to i64
    %23 = llvm.call @rapid_initialize() : () -> !llvm.ptr
    %24 = llvm.call @rapid_malloc(%23, %22) : (!llvm.ptr, i64) -> !llvm.ptr
    %25 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %26 = llvm.insertvalue %24, %25[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.insertvalue %24, %26[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.mlir.constant(0 : index) : i64
    %29 = llvm.insertvalue %28, %27[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.insertvalue %18, %29[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.insertvalue %19, %30[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.alloca %32 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %31, %33 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %36 = llvm.insertvalue %34, %35[0] : !llvm.struct<(i64, ptr)> 
    %37 = llvm.insertvalue %33, %36[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%12, %17, %15, %16, %15, %34, %33, %11) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %38 = llvm.load %24 : !llvm.ptr -> i64
    %39 = llvm.getelementptr %24[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %40 = llvm.load %39 : !llvm.ptr -> i64
    %41 = llvm.getelementptr %24[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %42 = llvm.load %41 : !llvm.ptr -> i64
    %43 = llvm.getelementptr %24[3] : (!llvm.ptr) -> !llvm.ptr, i64
    %44 = llvm.load %43 : !llvm.ptr -> i64
    %45 = llvm.getelementptr %24[4] : (!llvm.ptr) -> !llvm.ptr, i64
    %46 = llvm.load %45 : !llvm.ptr -> i64
    %47 = llvm.getelementptr %24[5] : (!llvm.ptr) -> !llvm.ptr, i64
    %48 = llvm.load %47 : !llvm.ptr -> i64
    %49 = llvm.getelementptr %24[6] : (!llvm.ptr) -> !llvm.ptr, i64
    %50 = llvm.load %49 : !llvm.ptr -> i64
    %51 = llvm.getelementptr %24[7] : (!llvm.ptr) -> !llvm.ptr, i64
    %52 = llvm.load %51 : !llvm.ptr -> i64
    %53 = llvm.getelementptr %24[8] : (!llvm.ptr) -> !llvm.ptr, i64
    %54 = llvm.load %53 : !llvm.ptr -> i64
    %55 = llvm.getelementptr %24[9] : (!llvm.ptr) -> !llvm.ptr, i64
    %56 = llvm.load %55 : !llvm.ptr -> i64
    %57 = llvm.getelementptr %24[10] : (!llvm.ptr) -> !llvm.ptr, i64
    %58 = llvm.load %57 : !llvm.ptr -> i64
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.mlir.zero : !llvm.ptr
    %61 = llvm.getelementptr %60[%38] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %62 = llvm.ptrtoint %61 : !llvm.ptr to i64
    %63 = llvm.call @rapid_malloc(%23, %62) : (!llvm.ptr, i64) -> !llvm.ptr
    %64 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %65 = llvm.insertvalue %63, %64[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.insertvalue %63, %65[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.insertvalue %67, %66[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.insertvalue %38, %68[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.insertvalue %59, %69[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%17 : i64)
  ^bb1(%71: i64):  // 2 preds: ^bb0, ^bb2
    %72 = llvm.icmp "slt" %71, %38 : i64
    llvm.cond_br %72, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %73 = llvm.getelementptr %63[%71] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %73 : i64, !llvm.ptr
    %74 = llvm.add %71, %16  : i64
    llvm.br ^bb1(%74 : i64)
  ^bb3:  // pred: ^bb1
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.alloca %75 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %70, %76 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %79 = llvm.insertvalue %77, %78[0] : !llvm.struct<(i64, ptr)> 
    %80 = llvm.insertvalue %76, %79[1] : !llvm.struct<(i64, ptr)> 
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.zero : !llvm.ptr
    %83 = llvm.getelementptr %82[%40] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %84 = llvm.ptrtoint %83 : !llvm.ptr to i64
    %85 = llvm.call @rapid_malloc(%23, %84) : (!llvm.ptr, i64) -> !llvm.ptr
    %86 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %87 = llvm.insertvalue %85, %86[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.insertvalue %85, %87[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = llvm.insertvalue %89, %88[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %91 = llvm.insertvalue %40, %90[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %92 = llvm.insertvalue %81, %91[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%17 : i64)
  ^bb4(%93: i64):  // 2 preds: ^bb3, ^bb5
    %94 = llvm.icmp "slt" %93, %40 : i64
    llvm.cond_br %94, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %95 = llvm.getelementptr %85[%93] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %95 : i64, !llvm.ptr
    %96 = llvm.add %93, %16  : i64
    llvm.br ^bb4(%96 : i64)
  ^bb6:  // pred: ^bb4
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.alloca %97 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %92, %98 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %101 = llvm.insertvalue %99, %100[0] : !llvm.struct<(i64, ptr)> 
    %102 = llvm.insertvalue %98, %101[1] : !llvm.struct<(i64, ptr)> 
    %103 = llvm.mlir.constant(1 : index) : i64
    %104 = llvm.mlir.zero : !llvm.ptr
    %105 = llvm.getelementptr %104[%42] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %106 = llvm.ptrtoint %105 : !llvm.ptr to i64
    %107 = llvm.call @rapid_malloc(%23, %106) : (!llvm.ptr, i64) -> !llvm.ptr
    %108 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %109 = llvm.insertvalue %107, %108[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.insertvalue %107, %109[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.insertvalue %111, %110[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %113 = llvm.insertvalue %42, %112[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %114 = llvm.insertvalue %103, %113[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%17 : i64)
  ^bb7(%115: i64):  // 2 preds: ^bb6, ^bb8
    %116 = llvm.icmp "slt" %115, %42 : i64
    llvm.cond_br %116, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %117 = llvm.getelementptr %107[%115] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %117 : i64, !llvm.ptr
    %118 = llvm.add %115, %16  : i64
    llvm.br ^bb7(%118 : i64)
  ^bb9:  // pred: ^bb7
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.alloca %119 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %114, %120 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %123 = llvm.insertvalue %121, %122[0] : !llvm.struct<(i64, ptr)> 
    %124 = llvm.insertvalue %120, %123[1] : !llvm.struct<(i64, ptr)> 
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.mlir.zero : !llvm.ptr
    %127 = llvm.getelementptr %126[%44] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %128 = llvm.ptrtoint %127 : !llvm.ptr to i64
    %129 = llvm.call @rapid_malloc(%23, %128) : (!llvm.ptr, i64) -> !llvm.ptr
    %130 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %131 = llvm.insertvalue %129, %130[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.insertvalue %129, %131[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.mlir.constant(0 : index) : i64
    %134 = llvm.insertvalue %133, %132[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %135 = llvm.insertvalue %44, %134[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %136 = llvm.insertvalue %125, %135[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%17 : i64)
  ^bb10(%137: i64):  // 2 preds: ^bb9, ^bb11
    %138 = llvm.icmp "slt" %137, %44 : i64
    llvm.cond_br %138, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %139 = llvm.getelementptr %129[%137] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %139 : i64, !llvm.ptr
    %140 = llvm.add %137, %16  : i64
    llvm.br ^bb10(%140 : i64)
  ^bb12:  // pred: ^bb10
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.alloca %141 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %136, %142 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %145 = llvm.insertvalue %143, %144[0] : !llvm.struct<(i64, ptr)> 
    %146 = llvm.insertvalue %142, %145[1] : !llvm.struct<(i64, ptr)> 
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.mlir.zero : !llvm.ptr
    %149 = llvm.getelementptr %148[%46] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %150 = llvm.ptrtoint %149 : !llvm.ptr to i64
    %151 = llvm.call @rapid_malloc(%23, %150) : (!llvm.ptr, i64) -> !llvm.ptr
    %152 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %153 = llvm.insertvalue %151, %152[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %154 = llvm.insertvalue %151, %153[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %155 = llvm.mlir.constant(0 : index) : i64
    %156 = llvm.insertvalue %155, %154[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %157 = llvm.insertvalue %46, %156[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %158 = llvm.insertvalue %147, %157[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%17 : i64)
  ^bb13(%159: i64):  // 2 preds: ^bb12, ^bb14
    %160 = llvm.icmp "slt" %159, %46 : i64
    llvm.cond_br %160, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %161 = llvm.getelementptr %151[%159] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %161 : i64, !llvm.ptr
    %162 = llvm.add %159, %16  : i64
    llvm.br ^bb13(%162 : i64)
  ^bb15:  // pred: ^bb13
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.alloca %163 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %158, %164 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %167 = llvm.insertvalue %165, %166[0] : !llvm.struct<(i64, ptr)> 
    %168 = llvm.insertvalue %164, %167[1] : !llvm.struct<(i64, ptr)> 
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.mlir.zero : !llvm.ptr
    %171 = llvm.getelementptr %170[%48] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %172 = llvm.ptrtoint %171 : !llvm.ptr to i64
    %173 = llvm.call @rapid_malloc(%23, %172) : (!llvm.ptr, i64) -> !llvm.ptr
    %174 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %175 = llvm.insertvalue %173, %174[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %176 = llvm.insertvalue %173, %175[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %177 = llvm.mlir.constant(0 : index) : i64
    %178 = llvm.insertvalue %177, %176[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %179 = llvm.insertvalue %48, %178[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %180 = llvm.insertvalue %169, %179[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%17 : i64)
  ^bb16(%181: i64):  // 2 preds: ^bb15, ^bb17
    %182 = llvm.icmp "slt" %181, %48 : i64
    llvm.cond_br %182, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %183 = llvm.getelementptr %173[%181] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %183 : i64, !llvm.ptr
    %184 = llvm.add %181, %16  : i64
    llvm.br ^bb16(%184 : i64)
  ^bb18:  // pred: ^bb16
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.alloca %185 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %180, %186 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %187 = llvm.mlir.constant(1 : index) : i64
    %188 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %189 = llvm.insertvalue %187, %188[0] : !llvm.struct<(i64, ptr)> 
    %190 = llvm.insertvalue %186, %189[1] : !llvm.struct<(i64, ptr)> 
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.mlir.zero : !llvm.ptr
    %193 = llvm.getelementptr %192[%50] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %194 = llvm.ptrtoint %193 : !llvm.ptr to i64
    %195 = llvm.call @rapid_malloc(%23, %194) : (!llvm.ptr, i64) -> !llvm.ptr
    %196 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %197 = llvm.insertvalue %195, %196[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %198 = llvm.insertvalue %195, %197[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %199 = llvm.mlir.constant(0 : index) : i64
    %200 = llvm.insertvalue %199, %198[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %201 = llvm.insertvalue %50, %200[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %202 = llvm.insertvalue %191, %201[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%17 : i64)
  ^bb19(%203: i64):  // 2 preds: ^bb18, ^bb20
    %204 = llvm.icmp "slt" %203, %50 : i64
    llvm.cond_br %204, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %205 = llvm.getelementptr %195[%203] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %205 : i64, !llvm.ptr
    %206 = llvm.add %203, %16  : i64
    llvm.br ^bb19(%206 : i64)
  ^bb21:  // pred: ^bb19
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.alloca %207 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %202, %208 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %209 = llvm.mlir.constant(1 : index) : i64
    %210 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %211 = llvm.insertvalue %209, %210[0] : !llvm.struct<(i64, ptr)> 
    %212 = llvm.insertvalue %208, %211[1] : !llvm.struct<(i64, ptr)> 
    %213 = llvm.mlir.constant(1 : index) : i64
    %214 = llvm.mlir.zero : !llvm.ptr
    %215 = llvm.getelementptr %214[%52] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %216 = llvm.ptrtoint %215 : !llvm.ptr to i64
    %217 = llvm.call @rapid_malloc(%23, %216) : (!llvm.ptr, i64) -> !llvm.ptr
    %218 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %219 = llvm.insertvalue %217, %218[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %220 = llvm.insertvalue %217, %219[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %221 = llvm.mlir.constant(0 : index) : i64
    %222 = llvm.insertvalue %221, %220[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %223 = llvm.insertvalue %52, %222[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %224 = llvm.insertvalue %213, %223[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%17 : i64)
  ^bb22(%225: i64):  // 2 preds: ^bb21, ^bb23
    %226 = llvm.icmp "slt" %225, %52 : i64
    llvm.cond_br %226, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %227 = llvm.getelementptr %217[%225] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %227 : i64, !llvm.ptr
    %228 = llvm.add %225, %16  : i64
    llvm.br ^bb22(%228 : i64)
  ^bb24:  // pred: ^bb22
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.alloca %229 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %224, %230 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %233 = llvm.insertvalue %231, %232[0] : !llvm.struct<(i64, ptr)> 
    %234 = llvm.insertvalue %230, %233[1] : !llvm.struct<(i64, ptr)> 
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.mlir.zero : !llvm.ptr
    %237 = llvm.getelementptr %236[%54] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %238 = llvm.ptrtoint %237 : !llvm.ptr to i64
    %239 = llvm.call @rapid_malloc(%23, %238) : (!llvm.ptr, i64) -> !llvm.ptr
    %240 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %241 = llvm.insertvalue %239, %240[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %242 = llvm.insertvalue %239, %241[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %243 = llvm.mlir.constant(0 : index) : i64
    %244 = llvm.insertvalue %243, %242[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %245 = llvm.insertvalue %54, %244[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %246 = llvm.insertvalue %235, %245[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%17 : i64)
  ^bb25(%247: i64):  // 2 preds: ^bb24, ^bb26
    %248 = llvm.icmp "slt" %247, %54 : i64
    llvm.cond_br %248, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %249 = llvm.getelementptr %239[%247] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %2, %249 : f64, !llvm.ptr
    %250 = llvm.add %247, %16  : i64
    llvm.br ^bb25(%250 : i64)
  ^bb27:  // pred: ^bb25
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.alloca %251 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %246, %252 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %253 = llvm.mlir.constant(1 : index) : i64
    %254 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %255 = llvm.insertvalue %253, %254[0] : !llvm.struct<(i64, ptr)> 
    %256 = llvm.insertvalue %252, %255[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64_i64(%12, %17, %15, %16, %15, %77, %76, %99, %98, %121, %120, %143, %142, %165, %164, %187, %186, %209, %208, %231, %230, %253, %252, %11) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %257 = llvm.mlir.constant(4 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    %259 = llvm.mul %58, %257  : i64
    %260 = llvm.mlir.zero : !llvm.ptr
    %261 = llvm.getelementptr %260[%259] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %262 = llvm.ptrtoint %261 : !llvm.ptr to i64
    %263 = llvm.mlir.constant(32 : index) : i64
    %264 = llvm.add %262, %263  : i64
    %265 = llvm.call @rapid_malloc(%23, %264) : (!llvm.ptr, i64) -> !llvm.ptr
    %266 = llvm.ptrtoint %265 : !llvm.ptr to i64
    %267 = llvm.mlir.constant(1 : index) : i64
    %268 = llvm.sub %263, %267  : i64
    %269 = llvm.add %266, %268  : i64
    %270 = llvm.urem %269, %263  : i64
    %271 = llvm.sub %269, %270  : i64
    %272 = llvm.inttoptr %271 : i64 to !llvm.ptr
    %273 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %274 = llvm.insertvalue %265, %273[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %275 = llvm.insertvalue %272, %274[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %276 = llvm.mlir.constant(0 : index) : i64
    %277 = llvm.insertvalue %276, %275[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %278 = llvm.insertvalue %58, %277[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %279 = llvm.insertvalue %257, %278[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %280 = llvm.insertvalue %257, %279[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %281 = llvm.insertvalue %258, %280[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb28(%17 : i64)
  ^bb28(%282: i64):  // 2 preds: ^bb27, ^bb31
    %283 = llvm.icmp "slt" %282, %58 : i64
    llvm.cond_br %283, ^bb29(%17 : i64), ^bb32
  ^bb29(%284: i64):  // 2 preds: ^bb28, ^bb30
    %285 = llvm.icmp "slt" %284, %10 : i64
    llvm.cond_br %285, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %286 = llvm.mlir.constant(4 : index) : i64
    %287 = llvm.mul %282, %286  : i64
    %288 = llvm.add %287, %284  : i64
    %289 = llvm.getelementptr %272[%288] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %289 : f64, !llvm.ptr
    %290 = llvm.add %284, %16  : i64
    llvm.br ^bb29(%290 : i64)
  ^bb31:  // pred: ^bb29
    %291 = llvm.add %282, %16  : i64
    llvm.br ^bb28(%291 : i64)
  ^bb32:  // pred: ^bb28
    %292 = llvm.mlir.constant(4 : index) : i64
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.mul %56, %292  : i64
    %295 = llvm.mlir.zero : !llvm.ptr
    %296 = llvm.getelementptr %295[%294] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %297 = llvm.ptrtoint %296 : !llvm.ptr to i64
    %298 = llvm.mlir.constant(32 : index) : i64
    %299 = llvm.add %297, %298  : i64
    %300 = llvm.call @rapid_malloc(%23, %299) : (!llvm.ptr, i64) -> !llvm.ptr
    %301 = llvm.ptrtoint %300 : !llvm.ptr to i64
    %302 = llvm.mlir.constant(1 : index) : i64
    %303 = llvm.sub %298, %302  : i64
    %304 = llvm.add %301, %303  : i64
    %305 = llvm.urem %304, %298  : i64
    %306 = llvm.sub %304, %305  : i64
    %307 = llvm.inttoptr %306 : i64 to !llvm.ptr
    %308 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %309 = llvm.insertvalue %300, %308[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %310 = llvm.insertvalue %307, %309[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %311 = llvm.mlir.constant(0 : index) : i64
    %312 = llvm.insertvalue %311, %310[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %313 = llvm.insertvalue %56, %312[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %314 = llvm.insertvalue %292, %313[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %315 = llvm.insertvalue %292, %314[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %316 = llvm.insertvalue %293, %315[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb33(%17 : i64)
  ^bb33(%317: i64):  // 2 preds: ^bb32, ^bb36
    %318 = llvm.icmp "slt" %317, %56 : i64
    llvm.cond_br %318, ^bb34(%17 : i64), ^bb37(%17 : i64)
  ^bb34(%319: i64):  // 2 preds: ^bb33, ^bb35
    %320 = llvm.icmp "slt" %319, %10 : i64
    llvm.cond_br %320, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %321 = llvm.mlir.constant(4 : index) : i64
    %322 = llvm.mul %317, %321  : i64
    %323 = llvm.add %322, %319  : i64
    %324 = llvm.getelementptr %307[%323] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %2, %324 : f64, !llvm.ptr
    %325 = llvm.add %319, %16  : i64
    llvm.br ^bb34(%325 : i64)
  ^bb36:  // pred: ^bb34
    %326 = llvm.add %317, %16  : i64
    llvm.br ^bb33(%326 : i64)
  ^bb37(%327: i64):  // 2 preds: ^bb33, ^bb43
    %328 = llvm.icmp "slt" %327, %56 : i64
    llvm.cond_br %328, ^bb38, ^bb44
  ^bb38:  // pred: ^bb37
    %329 = llvm.add %327, %16  : i64
    %330 = llvm.getelementptr %151[%327] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %331 = llvm.load %330 : !llvm.ptr -> i64
    %332 = llvm.getelementptr %151[%329] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %333 = llvm.load %332 : !llvm.ptr -> i64
    llvm.br ^bb39(%331 : i64)
  ^bb39(%334: i64):  // 2 preds: ^bb38, ^bb42
    %335 = llvm.icmp "slt" %334, %333 : i64
    llvm.cond_br %335, ^bb40(%17 : i64), ^bb43
  ^bb40(%336: i64):  // 2 preds: ^bb39, ^bb41
    %337 = llvm.icmp "slt" %336, %0 : i64
    llvm.cond_br %337, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %338 = llvm.getelementptr %173[%334] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %339 = llvm.load %338 : !llvm.ptr -> i64
    %340 = llvm.getelementptr %239[%334] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %341 = llvm.load %340 : !llvm.ptr -> f64
    %342 = llvm.mlir.constant(4 : index) : i64
    %343 = llvm.mul %339, %342  : i64
    %344 = llvm.add %343, %336  : i64
    %345 = llvm.getelementptr %272[%344] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %346 = llvm.load %345 : !llvm.ptr -> f64
    %347 = llvm.fmul %341, %346  : f64
    %348 = llvm.mlir.constant(4 : index) : i64
    %349 = llvm.mul %327, %348  : i64
    %350 = llvm.add %349, %336  : i64
    %351 = llvm.getelementptr %307[%350] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %352 = llvm.load %351 : !llvm.ptr -> f64
    %353 = llvm.fadd %352, %347  : f64
    %354 = llvm.mlir.constant(4 : index) : i64
    %355 = llvm.mul %327, %354  : i64
    %356 = llvm.add %355, %336  : i64
    %357 = llvm.getelementptr %307[%356] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %353, %357 : f64, !llvm.ptr
    %358 = llvm.add %336, %16  : i64
    llvm.br ^bb40(%358 : i64)
  ^bb42:  // pred: ^bb40
    %359 = llvm.add %334, %16  : i64
    llvm.br ^bb39(%359 : i64)
  ^bb43:  // pred: ^bb39
    llvm.br ^bb37(%329 : i64)
  ^bb44:  // pred: ^bb37
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.alloca %360 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %316, %361 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %362 = llvm.mlir.constant(2 : index) : i64
    %363 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %364 = llvm.insertvalue %362, %363[0] : !llvm.struct<(i64, ptr)> 
    %365 = llvm.insertvalue %361, %364[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%362, %361) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @read_input_2D_f64_i64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @read_input_sizes_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}
