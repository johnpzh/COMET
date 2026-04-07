// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
#map = affine_map<(d0, d1, d2) -> (d0, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
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
    %6 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %7 = "ta.dense_tensor_decl"(%4) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
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
  %3 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %c0 = arith.constant 0 : index
  %4 = "ta.dim"(%3, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1 = arith.constant 1 : index
  %5 = "ta.dim"(%3, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %6 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %7 = "ta.dense_tensor_decl"(%4) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
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
  %3 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %c0 = arith.constant 0 : index
  %4 = "ta.dim"(%3, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1 = arith.constant 1 : index
  %5 = "ta.dim"(%3, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %6 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %7 = "ta.dense_tensor_decl"(%4) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%6) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %8 = "it.itree"(%7) ({
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
  %0 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %1 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %2 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %3 = "ta.dense_tensor_decl"(%2) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %4 = "ta.dense_tensor_decl"(%1) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%3) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%4) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %5 = "it.itree"(%4) ({
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
  %25 = "ta.dense_tensor_decl"(%24) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %26 = "ta.dense_tensor_decl"(%23) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  "ta.fill"(%25) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %27 = "it.itree"(%26) ({
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

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %alloc = memref.alloc() : memref<13xindex>  /// 1
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
  %alloc_6 = memref.alloc(%0) : memref<?xi64>  /// 2
  %c0_i64 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%1) : memref<?xi64>  /// 3
  %c0_i64_9 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_9 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_10 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_11 = memref.alloc(%2) : memref<?xi64>  /// 4 Note!!
  %c0_i64_12 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_12 : i64) outs(%alloc_11 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_11 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%3) : memref<?xi64>  /// 5 Note!!
  %c0_i64_15 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_15 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_16 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_17 = memref.alloc(%4) : memref<?xi64>  /// 6
  %c0_i64_18 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_18 : i64) outs(%alloc_17 : memref<?xi64>)
  %cast_19 = memref.cast %alloc_17 : memref<?xi64> to memref<*xi64>
  %alloc_20 = memref.alloc(%5) : memref<?xi64>  /// 7
  %c0_i64_21 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_21 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%6) : memref<?xi64>  /// 8 Note!!
  %c0_i64_24 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_24 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%7) : memref<?xi64>  /// 9 Note!!
  %c0_i64_27 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_27 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%8) : memref<?xf64>  /// 10
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
  %alloc_31 = memref.alloc(%24) {alignment = 32 : i64} : memref<?x4xf64>  /// 11
  %25 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x4xf64>
  %alloc_32 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>  /// 12
  %26 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x4xf64>
  "ta.fill"(%25) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %27 = "it.itree"(%26) ({
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
  %alloc_31 = memref.alloc(%24) {alignment = 32 : i64} : memref<?x4xf64>
  %25 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x4xf64>
  %alloc_32 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %26 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x4xf64>
  "ta.fill"(%25) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %27 = "it.itree"(%26) ({
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
  %alloc_31 = memref.alloc(%24) {alignment = 32 : i64} : memref<?x4xf64>
  %25 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x4xf64>
  %alloc_32 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %26 = bufferization.to_tensor %alloc_32 restrict writable : memref<?x4xf64>
  "ta.fill"(%25) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%26) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %27 = "it.itree"(%26) ({
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
  %alloc_31 = memref.alloc(%24) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_32 = arith.constant 1.700000e+00 : f64
  linalg.fill ins(%cst_32 : f64) outs(%alloc_31 : memref<?x4xf64>)
  %25 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x4xf64>
  %alloc_33 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_34 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_34 : f64) outs(%alloc_33 : memref<?x4xf64>)
  %26 = bufferization.to_tensor %alloc_33 restrict writable : memref<?x4xf64>
  %27 = "it.itree"(%26) ({
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
  %alloc_31 = memref.alloc(%24) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_32 = arith.constant 1.700000e+00 : f64
  linalg.fill ins(%cst_32 : f64) outs(%alloc_31 : memref<?x4xf64>)
  %25 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x4xf64>
  %alloc_33 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_34 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_34 : f64) outs(%alloc_33 : memref<?x4xf64>)
  %26 = bufferization.to_tensor %alloc_33 restrict writable : memref<?x4xf64>
  %27 = "it.itree"(%26) ({
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
  %alloc_31 = memref.alloc(%24) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_32 = arith.constant 1.700000e+00 : f64
  linalg.fill ins(%cst_32 : f64) outs(%alloc_31 : memref<?x4xf64>)
  %25 = bufferization.to_tensor %alloc_31 restrict writable : memref<?x4xf64>
  %alloc_33 = memref.alloc(%23) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_34 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_34 : f64) outs(%alloc_33 : memref<?x4xf64>)
  %26 = bufferization.to_tensor %alloc_33 restrict writable : memref<?x4xf64>
  %27 = "it.itree"(%26) ({
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
  %alloc_20 = memref.alloc(%26) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_20 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %alloc_21 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %28 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %29 = "it.itree"(%28) ({
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
  %alloc_20 = memref.alloc(%26) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_20 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %alloc_21 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %28 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %29 = "it.itree"(%28) ({
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

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
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
  %alloc_20 = memref.alloc(%26) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_20 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %alloc_21 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %28 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %29 = "it.itree"(%28) ({
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
          %38 = "ta.TAExtractOp"(%20, %arg3, %arg1, %37) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %extracted_29 = tensor.extract %27[%37, %arg5] : tensor<?x4xf64>
          %39 = arith.mulf %38, %extracted_29 : f64
          %extracted_30 = tensor.extract %arg6[%arg1, %arg5] : tensor<?x4xf64>
          %40 = arith.addf %extracted_30, %39 : f64
          %inserted = tensor.insert %40 into %arg6[%arg1, %arg5] : tensor<?x4xf64>
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
  %alloc_20 = memref.alloc(%26) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_20 : memref<?x4xf64>)
  %27 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
  %alloc_21 = memref.alloc(%25) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_21 : memref<?x4xf64>)
  %28 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x4xf64>
  %29 = "it.itree"(%28) ({
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
          %38 = "ta.TAExtractOp"(%20, %arg3, %arg1, %37) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %extracted_29 = tensor.extract %27[%37, %arg5] : tensor<?x4xf64>
          %39 = arith.mulf %38, %extracted_29 : f64
          %extracted_30 = tensor.extract %arg6[%arg1, %arg5] : tensor<?x4xf64>
          %40 = arith.addf %extracted_30, %39 : f64
          %inserted = tensor.insert %40 into %arg6[%arg1, %arg5] : tensor<?x4xf64>
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
  %alloc_27 = memref.alloc(%extracted_26) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_27 : memref<?x4xf64>)
  %21 = bufferization.to_tensor %alloc_27 restrict writable : memref<?x4xf64>
  %alloc_28 = memref.alloc(%extracted_24) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_28 : memref<?x4xf64>)
  %22 = bufferization.to_tensor %alloc_28 restrict writable : memref<?x4xf64>
  %23 = "it.itree"(%22) ({
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
          %extracted_38 = tensor.extract %19[%arg3] : tensor<?xf64>
          %extracted_39 = tensor.extract %21[%30, %arg5] : tensor<?x4xf64>
          %31 = arith.mulf %extracted_38, %extracted_39 : f64
          %extracted_40 = tensor.extract %arg6[%arg1, %arg5] : tensor<?x4xf64>
          %32 = arith.addf %extracted_40, %31 : f64
          %inserted = tensor.insert %32 into %arg6[%arg1, %arg5] : tensor<?x4xf64>
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
  %alloc_24 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_24 : memref<?x4xf64>)
  %21 = bufferization.to_tensor %alloc_24 restrict writable : memref<?x4xf64>
  %alloc_25 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
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
        %extracted_34 = tensor.extract %19[%arg2] : tensor<?xf64>
        %extracted_35 = tensor.extract %21[%29, %arg4] : tensor<?x4xf64>
        %30 = arith.mulf %extracted_34, %extracted_35 : f64
        %extracted_36 = tensor.extract %arg5[%arg0, %arg4] : tensor<?x4xf64>
        %31 = arith.addf %extracted_36, %30 : f64
        %inserted = tensor.insert %31 into %arg5[%arg0, %arg4] : tensor<?x4xf64>
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
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
  %14 = bufferization.to_tensor %alloc_19 restrict writable : memref<?x4xf64>
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
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
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
  %14 = bufferization.to_tensor %alloc_19 restrict writable : memref<?x4xf64>
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
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

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
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
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
    %14 = bufferization.to_tensor %alloc_19 restrict writable : memref<?x4xf64>
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
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
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
    %14 = bufferization.to_tensor %alloc_19 restrict writable : memref<?x4xf64>
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
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
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
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
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
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

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
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
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
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
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
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
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
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
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
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
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

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
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
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
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  scf.for %arg0 = %c0 to %10 step %c1 {
    scf.for %arg1 = %c0 to %c4 step %c1 {
      memref.store %cst, %alloc_19[%arg0, %arg1] : memref<?x4xf64>
    }
  }
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
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
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst, %alloc_19[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
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
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
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
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
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
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
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
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
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
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
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
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
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
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
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
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
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
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
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
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
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
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
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
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
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
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
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
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
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
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
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
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
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
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
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
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
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
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
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
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
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
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
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
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
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
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
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
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
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
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
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
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
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
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
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
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
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
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
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
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
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
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
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
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
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
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
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
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
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
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
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
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
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
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
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
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
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
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
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
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
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
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

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
  %alloc_3 = memref.alloc(%1) : memref<?xi64>
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
  %alloc_5 = memref.alloc(%2) : memref<?xi64>
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
  %alloc_7 = memref.alloc(%3) : memref<?xi64>
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
  %alloc_9 = memref.alloc(%4) : memref<?xi64>
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
  %alloc_11 = memref.alloc(%5) : memref<?xi64>
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
  %alloc_13 = memref.alloc(%6) : memref<?xi64>
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
  %alloc_15 = memref.alloc(%7) : memref<?xi64>
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
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
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
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
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
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
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
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
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
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
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
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
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
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
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
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
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
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
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
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
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
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
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
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
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
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
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
    %alloc_3 = memref.alloc(%1) : memref<?xi64>
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
    %alloc_5 = memref.alloc(%2) : memref<?xi64>
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
    %alloc_7 = memref.alloc(%3) : memref<?xi64>
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
    %alloc_9 = memref.alloc(%4) : memref<?xi64>
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
    %alloc_11 = memref.alloc(%5) : memref<?xi64>
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
    %alloc_13 = memref.alloc(%6) : memref<?xi64>
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
    %alloc_15 = memref.alloc(%7) : memref<?xi64>
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
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
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
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
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
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
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
  llvm.func @malloc(i64) -> !llvm.ptr
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
    %16 = llvm.call @malloc(%15) : (i64) -> !llvm.ptr
    %17 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %18 = llvm.insertvalue %16, %17[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %16, %18[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.mlir.constant(0 : index) : i64
    %21 = llvm.insertvalue %20, %19[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.insertvalue %11, %21[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.insertvalue %12, %22[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.alloca %24 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %23, %25 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %28 = llvm.insertvalue %26, %27[0] : !llvm.struct<(i64, ptr)> 
    %29 = llvm.insertvalue %25, %28[1] : !llvm.struct<(i64, ptr)> 
    %30 = builtin.unrealized_conversion_cast %29 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %30, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %31 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.getelementptr %31[%10] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %33 = llvm.load %32 : !llvm.ptr -> i64
    %34 = builtin.unrealized_conversion_cast %33 : i64 to index
    %35 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.getelementptr %35[%9] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %37 = llvm.load %36 : !llvm.ptr -> i64
    %38 = builtin.unrealized_conversion_cast %37 : i64 to index
    %39 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.getelementptr %39[%8] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %41 = llvm.load %40 : !llvm.ptr -> i64
    %42 = builtin.unrealized_conversion_cast %41 : i64 to index
    %43 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.getelementptr %43[%7] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %45 = llvm.load %44 : !llvm.ptr -> i64
    %46 = builtin.unrealized_conversion_cast %45 : i64 to index
    %47 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.getelementptr %47[%6] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %49 = llvm.load %48 : !llvm.ptr -> i64
    %50 = builtin.unrealized_conversion_cast %49 : i64 to index
    %51 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.getelementptr %51[%5] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %53 = llvm.load %52 : !llvm.ptr -> i64
    %54 = builtin.unrealized_conversion_cast %53 : i64 to index
    %55 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.getelementptr %55[%4] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %57 = llvm.load %56 : !llvm.ptr -> i64
    %58 = builtin.unrealized_conversion_cast %57 : i64 to index
    %59 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.getelementptr %59[%3] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %61 = llvm.load %60 : !llvm.ptr -> i64
    %62 = builtin.unrealized_conversion_cast %61 : i64 to index
    %63 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.getelementptr %63[%2] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %65 = llvm.load %64 : !llvm.ptr -> i64
    %66 = builtin.unrealized_conversion_cast %65 : i64 to index
    %67 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.getelementptr %67[%1] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %69 = llvm.load %68 : !llvm.ptr -> i64
    %70 = builtin.unrealized_conversion_cast %69 : i64 to index
    %71 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.getelementptr %71[%0] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %73 = llvm.load %72 : !llvm.ptr -> i64
    %74 = builtin.unrealized_conversion_cast %73 : i64 to index
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.zero : !llvm.ptr
    %77 = llvm.getelementptr %76[%33] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %78 = llvm.ptrtoint %77 : !llvm.ptr to i64
    %79 = llvm.call @malloc(%78) : (i64) -> !llvm.ptr
    %80 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %81 = llvm.insertvalue %79, %80[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %82 = llvm.insertvalue %79, %81[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %83 = llvm.mlir.constant(0 : index) : i64
    %84 = llvm.insertvalue %83, %82[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %85 = llvm.insertvalue %33, %84[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.insertvalue %75, %85[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb1(%c0 : index)
  ^bb1(%87: index):  // 2 preds: ^bb0, ^bb2
    %88 = builtin.unrealized_conversion_cast %87 : index to i64
    %89 = arith.cmpi slt, %87, %34 : index
    cf.cond_br %89, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %90 = llvm.extractvalue %86[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %91 = llvm.getelementptr %90[%88] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %91 : i64, !llvm.ptr
    %92 = arith.addi %87, %c1 : index
    cf.br ^bb1(%92 : index)
  ^bb3:  // pred: ^bb1
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.alloca %93 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %86, %94 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %97 = llvm.insertvalue %95, %96[0] : !llvm.struct<(i64, ptr)> 
    %98 = llvm.insertvalue %94, %97[1] : !llvm.struct<(i64, ptr)> 
    %99 = builtin.unrealized_conversion_cast %98 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.mlir.zero : !llvm.ptr
    %102 = llvm.getelementptr %101[%37] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %103 = llvm.ptrtoint %102 : !llvm.ptr to i64
    %104 = llvm.call @malloc(%103) : (i64) -> !llvm.ptr
    %105 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %106 = llvm.insertvalue %104, %105[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %107 = llvm.insertvalue %104, %106[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %108 = llvm.mlir.constant(0 : index) : i64
    %109 = llvm.insertvalue %108, %107[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.insertvalue %37, %109[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.insertvalue %100, %110[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb4(%c0 : index)
  ^bb4(%112: index):  // 2 preds: ^bb3, ^bb5
    %113 = builtin.unrealized_conversion_cast %112 : index to i64
    %114 = arith.cmpi slt, %112, %38 : index
    cf.cond_br %114, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %115 = llvm.extractvalue %111[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %116 = llvm.getelementptr %115[%113] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %116 : i64, !llvm.ptr
    %117 = arith.addi %112, %c1 : index
    cf.br ^bb4(%117 : index)
  ^bb6:  // pred: ^bb4
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.alloca %118 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %111, %119 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %122 = llvm.insertvalue %120, %121[0] : !llvm.struct<(i64, ptr)> 
    %123 = llvm.insertvalue %119, %122[1] : !llvm.struct<(i64, ptr)> 
    %124 = builtin.unrealized_conversion_cast %123 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.mlir.zero : !llvm.ptr
    %127 = llvm.getelementptr %126[%41] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %128 = llvm.ptrtoint %127 : !llvm.ptr to i64
    %129 = llvm.call @malloc(%128) : (i64) -> !llvm.ptr
    %130 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %131 = llvm.insertvalue %129, %130[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.insertvalue %129, %131[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.mlir.constant(0 : index) : i64
    %134 = llvm.insertvalue %133, %132[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %135 = llvm.insertvalue %41, %134[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %136 = llvm.insertvalue %125, %135[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb7(%c0 : index)
  ^bb7(%137: index):  // 2 preds: ^bb6, ^bb8
    %138 = builtin.unrealized_conversion_cast %137 : index to i64
    %139 = arith.cmpi slt, %137, %42 : index
    cf.cond_br %139, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %140 = llvm.extractvalue %136[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %141 = llvm.getelementptr %140[%138] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %141 : i64, !llvm.ptr
    %142 = arith.addi %137, %c1 : index
    cf.br ^bb7(%142 : index)
  ^bb9:  // pred: ^bb7
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.alloca %143 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %136, %144 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %147 = llvm.insertvalue %145, %146[0] : !llvm.struct<(i64, ptr)> 
    %148 = llvm.insertvalue %144, %147[1] : !llvm.struct<(i64, ptr)> 
    %149 = builtin.unrealized_conversion_cast %148 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %150 = llvm.mlir.constant(1 : index) : i64
    %151 = llvm.mlir.zero : !llvm.ptr
    %152 = llvm.getelementptr %151[%45] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %153 = llvm.ptrtoint %152 : !llvm.ptr to i64
    %154 = llvm.call @malloc(%153) : (i64) -> !llvm.ptr
    %155 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %156 = llvm.insertvalue %154, %155[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %157 = llvm.insertvalue %154, %156[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %158 = llvm.mlir.constant(0 : index) : i64
    %159 = llvm.insertvalue %158, %157[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %160 = llvm.insertvalue %45, %159[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %161 = llvm.insertvalue %150, %160[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb10(%c0 : index)
  ^bb10(%162: index):  // 2 preds: ^bb9, ^bb11
    %163 = builtin.unrealized_conversion_cast %162 : index to i64
    %164 = arith.cmpi slt, %162, %46 : index
    cf.cond_br %164, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %165 = llvm.extractvalue %161[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.getelementptr %165[%163] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %166 : i64, !llvm.ptr
    %167 = arith.addi %162, %c1 : index
    cf.br ^bb10(%167 : index)
  ^bb12:  // pred: ^bb10
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.alloca %168 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %161, %169 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %172 = llvm.insertvalue %170, %171[0] : !llvm.struct<(i64, ptr)> 
    %173 = llvm.insertvalue %169, %172[1] : !llvm.struct<(i64, ptr)> 
    %174 = builtin.unrealized_conversion_cast %173 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.zero : !llvm.ptr
    %177 = llvm.getelementptr %176[%49] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %178 = llvm.ptrtoint %177 : !llvm.ptr to i64
    %179 = llvm.call @malloc(%178) : (i64) -> !llvm.ptr
    %180 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %181 = llvm.insertvalue %179, %180[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %182 = llvm.insertvalue %179, %181[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %183 = llvm.mlir.constant(0 : index) : i64
    %184 = llvm.insertvalue %183, %182[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %185 = llvm.insertvalue %49, %184[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %186 = llvm.insertvalue %175, %185[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb13(%c0 : index)
  ^bb13(%187: index):  // 2 preds: ^bb12, ^bb14
    %188 = builtin.unrealized_conversion_cast %187 : index to i64
    %189 = arith.cmpi slt, %187, %50 : index
    cf.cond_br %189, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %190 = llvm.extractvalue %186[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %191 = llvm.getelementptr %190[%188] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %191 : i64, !llvm.ptr
    %192 = arith.addi %187, %c1 : index
    cf.br ^bb13(%192 : index)
  ^bb15:  // pred: ^bb13
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.alloca %193 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %186, %194 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %195 = llvm.mlir.constant(1 : index) : i64
    %196 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %197 = llvm.insertvalue %195, %196[0] : !llvm.struct<(i64, ptr)> 
    %198 = llvm.insertvalue %194, %197[1] : !llvm.struct<(i64, ptr)> 
    %199 = builtin.unrealized_conversion_cast %198 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.mlir.zero : !llvm.ptr
    %202 = llvm.getelementptr %201[%53] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %203 = llvm.ptrtoint %202 : !llvm.ptr to i64
    %204 = llvm.call @malloc(%203) : (i64) -> !llvm.ptr
    %205 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %206 = llvm.insertvalue %204, %205[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %207 = llvm.insertvalue %204, %206[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %208 = llvm.mlir.constant(0 : index) : i64
    %209 = llvm.insertvalue %208, %207[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %210 = llvm.insertvalue %53, %209[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %211 = llvm.insertvalue %200, %210[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb16(%c0 : index)
  ^bb16(%212: index):  // 2 preds: ^bb15, ^bb17
    %213 = builtin.unrealized_conversion_cast %212 : index to i64
    %214 = arith.cmpi slt, %212, %54 : index
    cf.cond_br %214, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %215 = llvm.extractvalue %211[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %216 = llvm.getelementptr %215[%213] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %216 : i64, !llvm.ptr
    %217 = arith.addi %212, %c1 : index
    cf.br ^bb16(%217 : index)
  ^bb18:  // pred: ^bb16
    %218 = llvm.mlir.constant(1 : index) : i64
    %219 = llvm.alloca %218 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %211, %219 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %222 = llvm.insertvalue %220, %221[0] : !llvm.struct<(i64, ptr)> 
    %223 = llvm.insertvalue %219, %222[1] : !llvm.struct<(i64, ptr)> 
    %224 = builtin.unrealized_conversion_cast %223 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.mlir.zero : !llvm.ptr
    %227 = llvm.getelementptr %226[%57] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %228 = llvm.ptrtoint %227 : !llvm.ptr to i64
    %229 = llvm.call @malloc(%228) : (i64) -> !llvm.ptr
    %230 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %231 = llvm.insertvalue %229, %230[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %232 = llvm.insertvalue %229, %231[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.mlir.constant(0 : index) : i64
    %234 = llvm.insertvalue %233, %232[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %235 = llvm.insertvalue %57, %234[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %236 = llvm.insertvalue %225, %235[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb19(%c0 : index)
  ^bb19(%237: index):  // 2 preds: ^bb18, ^bb20
    %238 = builtin.unrealized_conversion_cast %237 : index to i64
    %239 = arith.cmpi slt, %237, %58 : index
    cf.cond_br %239, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %240 = llvm.extractvalue %236[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %241 = llvm.getelementptr %240[%238] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %241 : i64, !llvm.ptr
    %242 = arith.addi %237, %c1 : index
    cf.br ^bb19(%242 : index)
  ^bb21:  // pred: ^bb19
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.alloca %243 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %236, %244 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %247 = llvm.insertvalue %245, %246[0] : !llvm.struct<(i64, ptr)> 
    %248 = llvm.insertvalue %244, %247[1] : !llvm.struct<(i64, ptr)> 
    %249 = builtin.unrealized_conversion_cast %248 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.mlir.zero : !llvm.ptr
    %252 = llvm.getelementptr %251[%61] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %253 = llvm.ptrtoint %252 : !llvm.ptr to i64
    %254 = llvm.call @malloc(%253) : (i64) -> !llvm.ptr
    %255 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %256 = llvm.insertvalue %254, %255[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %257 = llvm.insertvalue %254, %256[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %258 = llvm.mlir.constant(0 : index) : i64
    %259 = llvm.insertvalue %258, %257[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %260 = llvm.insertvalue %61, %259[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %261 = llvm.insertvalue %250, %260[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb22(%c0 : index)
  ^bb22(%262: index):  // 2 preds: ^bb21, ^bb23
    %263 = builtin.unrealized_conversion_cast %262 : index to i64
    %264 = arith.cmpi slt, %262, %62 : index
    cf.cond_br %264, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %265 = llvm.extractvalue %261[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %266 = llvm.getelementptr %265[%263] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %266 : i64, !llvm.ptr
    %267 = arith.addi %262, %c1 : index
    cf.br ^bb22(%267 : index)
  ^bb24:  // pred: ^bb22
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.alloca %268 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %261, %269 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %272 = llvm.insertvalue %270, %271[0] : !llvm.struct<(i64, ptr)> 
    %273 = llvm.insertvalue %269, %272[1] : !llvm.struct<(i64, ptr)> 
    %274 = builtin.unrealized_conversion_cast %273 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.mlir.zero : !llvm.ptr
    %277 = llvm.getelementptr %276[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %278 = llvm.ptrtoint %277 : !llvm.ptr to i64
    %279 = llvm.call @malloc(%278) : (i64) -> !llvm.ptr
    %280 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %281 = llvm.insertvalue %279, %280[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %282 = llvm.insertvalue %279, %281[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.insertvalue %283, %282[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %285 = llvm.insertvalue %65, %284[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %286 = llvm.insertvalue %275, %285[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb25(%c0 : index)
  ^bb25(%287: index):  // 2 preds: ^bb24, ^bb26
    %288 = builtin.unrealized_conversion_cast %287 : index to i64
    %289 = arith.cmpi slt, %287, %66 : index
    cf.cond_br %289, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %290 = llvm.extractvalue %286[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %291 = llvm.getelementptr %290[%288] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst_0, %291 : f64, !llvm.ptr
    %292 = arith.addi %287, %c1 : index
    cf.br ^bb25(%292 : index)
  ^bb27:  // pred: ^bb25
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.alloca %293 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %286, %294 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %297 = llvm.insertvalue %295, %296[0] : !llvm.struct<(i64, ptr)> 
    %298 = llvm.insertvalue %294, %297[1] : !llvm.struct<(i64, ptr)> 
    %299 = builtin.unrealized_conversion_cast %298 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %99, %124, %149, %174, %199, %224, %249, %274, %299, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %300 = llvm.mlir.constant(4 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.mul %300, %73  : i64
    %303 = llvm.mlir.zero : !llvm.ptr
    %304 = llvm.getelementptr %303[%302] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %305 = llvm.ptrtoint %304 : !llvm.ptr to i64
    %306 = llvm.mlir.constant(32 : index) : i64
    %307 = llvm.add %305, %306  : i64
    %308 = llvm.call @malloc(%307) : (i64) -> !llvm.ptr
    %309 = llvm.ptrtoint %308 : !llvm.ptr to i64
    %310 = llvm.mlir.constant(1 : index) : i64
    %311 = llvm.sub %306, %310  : i64
    %312 = llvm.add %309, %311  : i64
    %313 = llvm.urem %312, %306  : i64
    %314 = llvm.sub %312, %313  : i64
    %315 = llvm.inttoptr %314 : i64 to !llvm.ptr
    %316 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %317 = llvm.insertvalue %308, %316[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %318 = llvm.insertvalue %315, %317[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.insertvalue %319, %318[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %321 = llvm.insertvalue %73, %320[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %322 = llvm.insertvalue %300, %321[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %323 = llvm.insertvalue %300, %322[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %324 = llvm.insertvalue %301, %323[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    cf.br ^bb28(%c0 : index)
  ^bb28(%325: index):  // 2 preds: ^bb27, ^bb31
    %326 = builtin.unrealized_conversion_cast %325 : index to i64
    %327 = arith.cmpi slt, %325, %74 : index
    cf.cond_br %327, ^bb29(%c0 : index), ^bb32
  ^bb29(%328: index):  // 2 preds: ^bb28, ^bb30
    %329 = builtin.unrealized_conversion_cast %328 : index to i64
    %330 = arith.cmpi slt, %328, %c4 : index
    cf.cond_br %330, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %331 = llvm.extractvalue %324[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %332 = llvm.mlir.constant(4 : index) : i64
    %333 = llvm.mul %326, %332  : i64
    %334 = llvm.add %333, %329  : i64
    %335 = llvm.getelementptr %331[%334] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst, %335 : f64, !llvm.ptr
    %336 = arith.addi %328, %c1 : index
    cf.br ^bb29(%336 : index)
  ^bb31:  // pred: ^bb29
    %337 = arith.addi %325, %c1 : index
    cf.br ^bb28(%337 : index)
  ^bb32:  // pred: ^bb28
    %338 = llvm.mlir.constant(4 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    %340 = llvm.mul %338, %69  : i64
    %341 = llvm.mlir.zero : !llvm.ptr
    %342 = llvm.getelementptr %341[%340] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %343 = llvm.ptrtoint %342 : !llvm.ptr to i64
    %344 = llvm.mlir.constant(32 : index) : i64
    %345 = llvm.add %343, %344  : i64
    %346 = llvm.call @malloc(%345) : (i64) -> !llvm.ptr
    %347 = llvm.ptrtoint %346 : !llvm.ptr to i64
    %348 = llvm.mlir.constant(1 : index) : i64
    %349 = llvm.sub %344, %348  : i64
    %350 = llvm.add %347, %349  : i64
    %351 = llvm.urem %350, %344  : i64
    %352 = llvm.sub %350, %351  : i64
    %353 = llvm.inttoptr %352 : i64 to !llvm.ptr
    %354 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %355 = llvm.insertvalue %346, %354[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %356 = llvm.insertvalue %353, %355[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %357 = llvm.mlir.constant(0 : index) : i64
    %358 = llvm.insertvalue %357, %356[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %359 = llvm.insertvalue %69, %358[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %360 = llvm.insertvalue %338, %359[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %361 = llvm.insertvalue %338, %360[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %362 = llvm.insertvalue %339, %361[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    cf.br ^bb33(%c0 : index)
  ^bb33(%363: index):  // 2 preds: ^bb32, ^bb36
    %364 = builtin.unrealized_conversion_cast %363 : index to i64
    %365 = arith.cmpi slt, %363, %70 : index
    cf.cond_br %365, ^bb34(%c0 : index), ^bb37(%c0 : index)
  ^bb34(%366: index):  // 2 preds: ^bb33, ^bb35
    %367 = builtin.unrealized_conversion_cast %366 : index to i64
    %368 = arith.cmpi slt, %366, %c4 : index
    cf.cond_br %368, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %369 = llvm.extractvalue %362[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %370 = llvm.mlir.constant(4 : index) : i64
    %371 = llvm.mul %364, %370  : i64
    %372 = llvm.add %371, %367  : i64
    %373 = llvm.getelementptr %369[%372] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst_0, %373 : f64, !llvm.ptr
    %374 = arith.addi %366, %c1 : index
    cf.br ^bb34(%374 : index)
  ^bb36:  // pred: ^bb34
    %375 = arith.addi %363, %c1 : index
    cf.br ^bb33(%375 : index)
  ^bb37(%376: index):  // 2 preds: ^bb33, ^bb43
    %377 = builtin.unrealized_conversion_cast %376 : index to i64
    %378 = arith.cmpi slt, %376, %70 : index
    cf.cond_br %378, ^bb38, ^bb44
  ^bb38:  // pred: ^bb37
    %379 = arith.addi %376, %c1 : index
    %380 = builtin.unrealized_conversion_cast %379 : index to i64
    %381 = llvm.extractvalue %186[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %382 = llvm.getelementptr %381[%377] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %383 = llvm.load %382 : !llvm.ptr -> i64
    %384 = arith.index_cast %383 : i64 to index
    %385 = llvm.extractvalue %186[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %386 = llvm.getelementptr %385[%380] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %387 = llvm.load %386 : !llvm.ptr -> i64
    %388 = arith.index_cast %387 : i64 to index
    cf.br ^bb39(%384 : index)
  ^bb39(%389: index):  // 2 preds: ^bb38, ^bb42
    %390 = builtin.unrealized_conversion_cast %389 : index to i64
    %391 = arith.cmpi slt, %389, %388 : index
    cf.cond_br %391, ^bb40(%c0 : index), ^bb43
  ^bb40(%392: index):  // 2 preds: ^bb39, ^bb41
    %393 = builtin.unrealized_conversion_cast %392 : index to i64
    %394 = arith.cmpi slt, %392, %idx4 : index
    cf.cond_br %394, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %395 = llvm.extractvalue %211[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %396 = llvm.getelementptr %395[%390] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %397 = llvm.load %396 : !llvm.ptr -> i64
    %398 = arith.index_cast %397 : i64 to index
    %399 = builtin.unrealized_conversion_cast %398 : index to i64
    %400 = llvm.extractvalue %286[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %401 = llvm.getelementptr %400[%390] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %402 = llvm.load %401 : !llvm.ptr -> f64
    %403 = llvm.extractvalue %324[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %404 = llvm.mlir.constant(4 : index) : i64
    %405 = llvm.mul %399, %404  : i64
    %406 = llvm.add %405, %393  : i64
    %407 = llvm.getelementptr %403[%406] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %408 = llvm.load %407 : !llvm.ptr -> f64
    %409 = arith.mulf %402, %408 : f64
    %410 = llvm.extractvalue %362[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %411 = llvm.mlir.constant(4 : index) : i64
    %412 = llvm.mul %377, %411  : i64
    %413 = llvm.add %412, %393  : i64
    %414 = llvm.getelementptr %410[%413] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %415 = llvm.load %414 : !llvm.ptr -> f64
    %416 = arith.addf %415, %409 : f64
    %417 = llvm.extractvalue %362[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %418 = llvm.mlir.constant(4 : index) : i64
    %419 = llvm.mul %377, %418  : i64
    %420 = llvm.add %419, %393  : i64
    %421 = llvm.getelementptr %417[%420] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %416, %421 : f64, !llvm.ptr
    %422 = arith.addi %392, %c1 : index
    cf.br ^bb40(%422 : index)
  ^bb42:  // pred: ^bb40
    %423 = arith.addi %389, %c1 : index
    cf.br ^bb39(%423 : index)
  ^bb43:  // pred: ^bb39
    cf.br ^bb37(%379 : index)
  ^bb44:  // pred: ^bb37
    %424 = llvm.mlir.constant(1 : index) : i64
    %425 = llvm.alloca %424 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %362, %425 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %426 = llvm.mlir.constant(2 : index) : i64
    %427 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %428 = llvm.insertvalue %426, %427[0] : !llvm.struct<(i64, ptr)> 
    %429 = llvm.insertvalue %425, %428[1] : !llvm.struct<(i64, ptr)> 
    %430 = builtin.unrealized_conversion_cast %429 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    call @comet_print_memref_f64(%430) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertFuncToLLVMPass (convert-func-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
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
    %45 = llvm.call @malloc(%44) : (i64) -> !llvm.ptr
    %46 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %47 = llvm.insertvalue %45, %46[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.insertvalue %45, %47[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.insertvalue %49, %48[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.insertvalue %40, %50[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.insertvalue %41, %51[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.alloca %53 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %52, %54 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %57 = llvm.insertvalue %55, %56[0] : !llvm.struct<(i64, ptr)> 
    %58 = llvm.insertvalue %54, %57[1] : !llvm.struct<(i64, ptr)> 
    %59 = builtin.unrealized_conversion_cast %58 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %60 = llvm.extractvalue %58[0] : !llvm.struct<(i64, ptr)> 
    %61 = llvm.extractvalue %58[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%26, %37, %33, %34, %33, %60, %61, %25) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %62 = llvm.extractvalue %52[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.getelementptr %62[%39] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %64 = llvm.load %63 : !llvm.ptr -> i64
    %65 = builtin.unrealized_conversion_cast %64 : i64 to index
    %66 = llvm.extractvalue %52[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.getelementptr %66[%36] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %68 = llvm.load %67 : !llvm.ptr -> i64
    %69 = builtin.unrealized_conversion_cast %68 : i64 to index
    %70 = llvm.extractvalue %52[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %71 = llvm.getelementptr %70[%32] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %72 = llvm.load %71 : !llvm.ptr -> i64
    %73 = builtin.unrealized_conversion_cast %72 : i64 to index
    %74 = llvm.extractvalue %52[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.getelementptr %74[%29] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %76 = llvm.load %75 : !llvm.ptr -> i64
    %77 = builtin.unrealized_conversion_cast %76 : i64 to index
    %78 = llvm.extractvalue %52[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %79 = llvm.getelementptr %78[%24] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %80 = llvm.load %79 : !llvm.ptr -> i64
    %81 = builtin.unrealized_conversion_cast %80 : i64 to index
    %82 = llvm.extractvalue %52[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %83 = llvm.getelementptr %82[%21] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %84 = llvm.load %83 : !llvm.ptr -> i64
    %85 = builtin.unrealized_conversion_cast %84 : i64 to index
    %86 = llvm.extractvalue %52[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.getelementptr %86[%18] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %88 = llvm.load %87 : !llvm.ptr -> i64
    %89 = builtin.unrealized_conversion_cast %88 : i64 to index
    %90 = llvm.extractvalue %52[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %91 = llvm.getelementptr %90[%15] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %92 = llvm.load %91 : !llvm.ptr -> i64
    %93 = builtin.unrealized_conversion_cast %92 : i64 to index
    %94 = llvm.extractvalue %52[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %95 = llvm.getelementptr %94[%12] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %96 = llvm.load %95 : !llvm.ptr -> i64
    %97 = builtin.unrealized_conversion_cast %96 : i64 to index
    %98 = llvm.extractvalue %52[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %99 = llvm.getelementptr %98[%9] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %100 = llvm.load %99 : !llvm.ptr -> i64
    %101 = builtin.unrealized_conversion_cast %100 : i64 to index
    %102 = llvm.extractvalue %52[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %103 = llvm.getelementptr %102[%6] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %104 = llvm.load %103 : !llvm.ptr -> i64
    %105 = builtin.unrealized_conversion_cast %104 : i64 to index
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.zero : !llvm.ptr
    %108 = llvm.getelementptr %107[%64] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %109 = llvm.ptrtoint %108 : !llvm.ptr to i64
    %110 = llvm.call @malloc(%109) : (i64) -> !llvm.ptr
    %111 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %112 = llvm.insertvalue %110, %111[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %113 = llvm.insertvalue %110, %112[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %114 = llvm.mlir.constant(0 : index) : i64
    %115 = llvm.insertvalue %114, %113[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %116 = llvm.insertvalue %64, %115[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %117 = llvm.insertvalue %106, %116[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%37 : i64)
  ^bb1(%118: i64):  // 2 preds: ^bb0, ^bb2
    %119 = builtin.unrealized_conversion_cast %118 : i64 to index
    %120 = builtin.unrealized_conversion_cast %119 : index to i64
    %121 = llvm.icmp "slt" %118, %64 : i64
    llvm.cond_br %121, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %122 = llvm.extractvalue %117[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %123 = llvm.getelementptr %122[%120] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %123 : i64, !llvm.ptr
    %124 = llvm.add %118, %34  : i64
    llvm.br ^bb1(%124 : i64)
  ^bb3:  // pred: ^bb1
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.alloca %125 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %117, %126 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %129 = llvm.insertvalue %127, %128[0] : !llvm.struct<(i64, ptr)> 
    %130 = llvm.insertvalue %126, %129[1] : !llvm.struct<(i64, ptr)> 
    %131 = builtin.unrealized_conversion_cast %130 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.zero : !llvm.ptr
    %134 = llvm.getelementptr %133[%68] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %135 = llvm.ptrtoint %134 : !llvm.ptr to i64
    %136 = llvm.call @malloc(%135) : (i64) -> !llvm.ptr
    %137 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %138 = llvm.insertvalue %136, %137[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %139 = llvm.insertvalue %136, %138[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %140 = llvm.mlir.constant(0 : index) : i64
    %141 = llvm.insertvalue %140, %139[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %142 = llvm.insertvalue %68, %141[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %143 = llvm.insertvalue %132, %142[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%37 : i64)
  ^bb4(%144: i64):  // 2 preds: ^bb3, ^bb5
    %145 = builtin.unrealized_conversion_cast %144 : i64 to index
    %146 = builtin.unrealized_conversion_cast %145 : index to i64
    %147 = llvm.icmp "slt" %144, %68 : i64
    llvm.cond_br %147, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %148 = llvm.extractvalue %143[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %149 = llvm.getelementptr %148[%146] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %149 : i64, !llvm.ptr
    %150 = llvm.add %144, %34  : i64
    llvm.br ^bb4(%150 : i64)
  ^bb6:  // pred: ^bb4
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.alloca %151 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %143, %152 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %155 = llvm.insertvalue %153, %154[0] : !llvm.struct<(i64, ptr)> 
    %156 = llvm.insertvalue %152, %155[1] : !llvm.struct<(i64, ptr)> 
    %157 = builtin.unrealized_conversion_cast %156 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.mlir.zero : !llvm.ptr
    %160 = llvm.getelementptr %159[%72] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %161 = llvm.ptrtoint %160 : !llvm.ptr to i64
    %162 = llvm.call @malloc(%161) : (i64) -> !llvm.ptr
    %163 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %164 = llvm.insertvalue %162, %163[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %165 = llvm.insertvalue %162, %164[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.insertvalue %166, %165[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %168 = llvm.insertvalue %72, %167[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %169 = llvm.insertvalue %158, %168[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%37 : i64)
  ^bb7(%170: i64):  // 2 preds: ^bb6, ^bb8
    %171 = builtin.unrealized_conversion_cast %170 : i64 to index
    %172 = builtin.unrealized_conversion_cast %171 : index to i64
    %173 = llvm.icmp "slt" %170, %72 : i64
    llvm.cond_br %173, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %174 = llvm.extractvalue %169[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %175 = llvm.getelementptr %174[%172] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %175 : i64, !llvm.ptr
    %176 = llvm.add %170, %34  : i64
    llvm.br ^bb7(%176 : i64)
  ^bb9:  // pred: ^bb7
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.alloca %177 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %169, %178 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %179 = llvm.mlir.constant(1 : index) : i64
    %180 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %181 = llvm.insertvalue %179, %180[0] : !llvm.struct<(i64, ptr)> 
    %182 = llvm.insertvalue %178, %181[1] : !llvm.struct<(i64, ptr)> 
    %183 = builtin.unrealized_conversion_cast %182 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.mlir.zero : !llvm.ptr
    %186 = llvm.getelementptr %185[%76] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %187 = llvm.ptrtoint %186 : !llvm.ptr to i64
    %188 = llvm.call @malloc(%187) : (i64) -> !llvm.ptr
    %189 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %190 = llvm.insertvalue %188, %189[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %191 = llvm.insertvalue %188, %190[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.insertvalue %192, %191[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %194 = llvm.insertvalue %76, %193[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %195 = llvm.insertvalue %184, %194[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%37 : i64)
  ^bb10(%196: i64):  // 2 preds: ^bb9, ^bb11
    %197 = builtin.unrealized_conversion_cast %196 : i64 to index
    %198 = builtin.unrealized_conversion_cast %197 : index to i64
    %199 = llvm.icmp "slt" %196, %76 : i64
    llvm.cond_br %199, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %200 = llvm.extractvalue %195[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %201 = llvm.getelementptr %200[%198] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %201 : i64, !llvm.ptr
    %202 = llvm.add %196, %34  : i64
    llvm.br ^bb10(%202 : i64)
  ^bb12:  // pred: ^bb10
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.alloca %203 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %195, %204 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %207 = llvm.insertvalue %205, %206[0] : !llvm.struct<(i64, ptr)> 
    %208 = llvm.insertvalue %204, %207[1] : !llvm.struct<(i64, ptr)> 
    %209 = builtin.unrealized_conversion_cast %208 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.zero : !llvm.ptr
    %212 = llvm.getelementptr %211[%80] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %213 = llvm.ptrtoint %212 : !llvm.ptr to i64
    %214 = llvm.call @malloc(%213) : (i64) -> !llvm.ptr
    %215 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %216 = llvm.insertvalue %214, %215[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %217 = llvm.insertvalue %214, %216[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %218 = llvm.mlir.constant(0 : index) : i64
    %219 = llvm.insertvalue %218, %217[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %220 = llvm.insertvalue %80, %219[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %221 = llvm.insertvalue %210, %220[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%37 : i64)
  ^bb13(%222: i64):  // 2 preds: ^bb12, ^bb14
    %223 = builtin.unrealized_conversion_cast %222 : i64 to index
    %224 = builtin.unrealized_conversion_cast %223 : index to i64
    %225 = llvm.icmp "slt" %222, %80 : i64
    llvm.cond_br %225, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %226 = llvm.extractvalue %221[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %227 = llvm.getelementptr %226[%224] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %227 : i64, !llvm.ptr
    %228 = llvm.add %222, %34  : i64
    llvm.br ^bb13(%228 : i64)
  ^bb15:  // pred: ^bb13
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.alloca %229 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %221, %230 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %233 = llvm.insertvalue %231, %232[0] : !llvm.struct<(i64, ptr)> 
    %234 = llvm.insertvalue %230, %233[1] : !llvm.struct<(i64, ptr)> 
    %235 = builtin.unrealized_conversion_cast %234 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.mlir.zero : !llvm.ptr
    %238 = llvm.getelementptr %237[%84] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %239 = llvm.ptrtoint %238 : !llvm.ptr to i64
    %240 = llvm.call @malloc(%239) : (i64) -> !llvm.ptr
    %241 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %242 = llvm.insertvalue %240, %241[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %243 = llvm.insertvalue %240, %242[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %244 = llvm.mlir.constant(0 : index) : i64
    %245 = llvm.insertvalue %244, %243[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %246 = llvm.insertvalue %84, %245[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %247 = llvm.insertvalue %236, %246[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%37 : i64)
  ^bb16(%248: i64):  // 2 preds: ^bb15, ^bb17
    %249 = builtin.unrealized_conversion_cast %248 : i64 to index
    %250 = builtin.unrealized_conversion_cast %249 : index to i64
    %251 = llvm.icmp "slt" %248, %84 : i64
    llvm.cond_br %251, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %252 = llvm.extractvalue %247[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %253 = llvm.getelementptr %252[%250] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %253 : i64, !llvm.ptr
    %254 = llvm.add %248, %34  : i64
    llvm.br ^bb16(%254 : i64)
  ^bb18:  // pred: ^bb16
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.alloca %255 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %247, %256 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %259 = llvm.insertvalue %257, %258[0] : !llvm.struct<(i64, ptr)> 
    %260 = llvm.insertvalue %256, %259[1] : !llvm.struct<(i64, ptr)> 
    %261 = builtin.unrealized_conversion_cast %260 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %262 = llvm.mlir.constant(1 : index) : i64
    %263 = llvm.mlir.zero : !llvm.ptr
    %264 = llvm.getelementptr %263[%88] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %265 = llvm.ptrtoint %264 : !llvm.ptr to i64
    %266 = llvm.call @malloc(%265) : (i64) -> !llvm.ptr
    %267 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %268 = llvm.insertvalue %266, %267[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %269 = llvm.insertvalue %266, %268[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %270 = llvm.mlir.constant(0 : index) : i64
    %271 = llvm.insertvalue %270, %269[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %272 = llvm.insertvalue %88, %271[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %273 = llvm.insertvalue %262, %272[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%37 : i64)
  ^bb19(%274: i64):  // 2 preds: ^bb18, ^bb20
    %275 = builtin.unrealized_conversion_cast %274 : i64 to index
    %276 = builtin.unrealized_conversion_cast %275 : index to i64
    %277 = llvm.icmp "slt" %274, %88 : i64
    llvm.cond_br %277, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %278 = llvm.extractvalue %273[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %279 = llvm.getelementptr %278[%276] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %279 : i64, !llvm.ptr
    %280 = llvm.add %274, %34  : i64
    llvm.br ^bb19(%280 : i64)
  ^bb21:  // pred: ^bb19
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.alloca %281 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %273, %282 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %283 = llvm.mlir.constant(1 : index) : i64
    %284 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %285 = llvm.insertvalue %283, %284[0] : !llvm.struct<(i64, ptr)> 
    %286 = llvm.insertvalue %282, %285[1] : !llvm.struct<(i64, ptr)> 
    %287 = builtin.unrealized_conversion_cast %286 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %288 = llvm.mlir.constant(1 : index) : i64
    %289 = llvm.mlir.zero : !llvm.ptr
    %290 = llvm.getelementptr %289[%92] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %291 = llvm.ptrtoint %290 : !llvm.ptr to i64
    %292 = llvm.call @malloc(%291) : (i64) -> !llvm.ptr
    %293 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %294 = llvm.insertvalue %292, %293[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %295 = llvm.insertvalue %292, %294[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %296 = llvm.mlir.constant(0 : index) : i64
    %297 = llvm.insertvalue %296, %295[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %298 = llvm.insertvalue %92, %297[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %299 = llvm.insertvalue %288, %298[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%37 : i64)
  ^bb22(%300: i64):  // 2 preds: ^bb21, ^bb23
    %301 = builtin.unrealized_conversion_cast %300 : i64 to index
    %302 = builtin.unrealized_conversion_cast %301 : index to i64
    %303 = llvm.icmp "slt" %300, %92 : i64
    llvm.cond_br %303, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %304 = llvm.extractvalue %299[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %305 = llvm.getelementptr %304[%302] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %305 : i64, !llvm.ptr
    %306 = llvm.add %300, %34  : i64
    llvm.br ^bb22(%306 : i64)
  ^bb24:  // pred: ^bb22
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.alloca %307 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %299, %308 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %309 = llvm.mlir.constant(1 : index) : i64
    %310 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %311 = llvm.insertvalue %309, %310[0] : !llvm.struct<(i64, ptr)> 
    %312 = llvm.insertvalue %308, %311[1] : !llvm.struct<(i64, ptr)> 
    %313 = builtin.unrealized_conversion_cast %312 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.mlir.zero : !llvm.ptr
    %316 = llvm.getelementptr %315[%96] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %317 = llvm.ptrtoint %316 : !llvm.ptr to i64
    %318 = llvm.call @malloc(%317) : (i64) -> !llvm.ptr
    %319 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %320 = llvm.insertvalue %318, %319[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %321 = llvm.insertvalue %318, %320[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %322 = llvm.mlir.constant(0 : index) : i64
    %323 = llvm.insertvalue %322, %321[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %324 = llvm.insertvalue %96, %323[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %325 = llvm.insertvalue %314, %324[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%37 : i64)
  ^bb25(%326: i64):  // 2 preds: ^bb24, ^bb26
    %327 = builtin.unrealized_conversion_cast %326 : i64 to index
    %328 = builtin.unrealized_conversion_cast %327 : index to i64
    %329 = llvm.icmp "slt" %326, %96 : i64
    llvm.cond_br %329, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %330 = llvm.extractvalue %325[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %331 = llvm.getelementptr %330[%328] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %2, %331 : f64, !llvm.ptr
    %332 = llvm.add %326, %34  : i64
    llvm.br ^bb25(%332 : i64)
  ^bb27:  // pred: ^bb25
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.alloca %333 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %325, %334 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %335 = llvm.mlir.constant(1 : index) : i64
    %336 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %337 = llvm.insertvalue %335, %336[0] : !llvm.struct<(i64, ptr)> 
    %338 = llvm.insertvalue %334, %337[1] : !llvm.struct<(i64, ptr)> 
    %339 = builtin.unrealized_conversion_cast %338 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    %340 = llvm.extractvalue %130[0] : !llvm.struct<(i64, ptr)> 
    %341 = llvm.extractvalue %130[1] : !llvm.struct<(i64, ptr)> 
    %342 = llvm.extractvalue %156[0] : !llvm.struct<(i64, ptr)> 
    %343 = llvm.extractvalue %156[1] : !llvm.struct<(i64, ptr)> 
    %344 = llvm.extractvalue %182[0] : !llvm.struct<(i64, ptr)> 
    %345 = llvm.extractvalue %182[1] : !llvm.struct<(i64, ptr)> 
    %346 = llvm.extractvalue %208[0] : !llvm.struct<(i64, ptr)> 
    %347 = llvm.extractvalue %208[1] : !llvm.struct<(i64, ptr)> 
    %348 = llvm.extractvalue %234[0] : !llvm.struct<(i64, ptr)> 
    %349 = llvm.extractvalue %234[1] : !llvm.struct<(i64, ptr)> 
    %350 = llvm.extractvalue %260[0] : !llvm.struct<(i64, ptr)> 
    %351 = llvm.extractvalue %260[1] : !llvm.struct<(i64, ptr)> 
    %352 = llvm.extractvalue %286[0] : !llvm.struct<(i64, ptr)> 
    %353 = llvm.extractvalue %286[1] : !llvm.struct<(i64, ptr)> 
    %354 = llvm.extractvalue %312[0] : !llvm.struct<(i64, ptr)> 
    %355 = llvm.extractvalue %312[1] : !llvm.struct<(i64, ptr)> 
    %356 = llvm.extractvalue %338[0] : !llvm.struct<(i64, ptr)> 
    %357 = llvm.extractvalue %338[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64_i64(%26, %37, %33, %34, %33, %340, %341, %342, %343, %344, %345, %346, %347, %348, %349, %350, %351, %352, %353, %354, %355, %356, %357, %25) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %358 = llvm.mlir.constant(4 : index) : i64
    %359 = llvm.mlir.constant(1 : index) : i64
    %360 = llvm.mul %358, %104  : i64
    %361 = llvm.mlir.zero : !llvm.ptr
    %362 = llvm.getelementptr %361[%360] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %363 = llvm.ptrtoint %362 : !llvm.ptr to i64
    %364 = llvm.mlir.constant(32 : index) : i64
    %365 = llvm.add %363, %364  : i64
    %366 = llvm.call @malloc(%365) : (i64) -> !llvm.ptr
    %367 = llvm.ptrtoint %366 : !llvm.ptr to i64
    %368 = llvm.mlir.constant(1 : index) : i64
    %369 = llvm.sub %364, %368  : i64
    %370 = llvm.add %367, %369  : i64
    %371 = llvm.urem %370, %364  : i64
    %372 = llvm.sub %370, %371  : i64
    %373 = llvm.inttoptr %372 : i64 to !llvm.ptr
    %374 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %375 = llvm.insertvalue %366, %374[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %376 = llvm.insertvalue %373, %375[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %377 = llvm.mlir.constant(0 : index) : i64
    %378 = llvm.insertvalue %377, %376[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %379 = llvm.insertvalue %104, %378[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %380 = llvm.insertvalue %358, %379[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %381 = llvm.insertvalue %358, %380[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %382 = llvm.insertvalue %359, %381[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb28(%37 : i64)
  ^bb28(%383: i64):  // 2 preds: ^bb27, ^bb31
    %384 = builtin.unrealized_conversion_cast %383 : i64 to index
    %385 = builtin.unrealized_conversion_cast %384 : index to i64
    %386 = llvm.icmp "slt" %383, %104 : i64
    llvm.cond_br %386, ^bb29(%37 : i64), ^bb32
  ^bb29(%387: i64):  // 2 preds: ^bb28, ^bb30
    %388 = builtin.unrealized_conversion_cast %387 : i64 to index
    %389 = builtin.unrealized_conversion_cast %388 : index to i64
    %390 = llvm.icmp "slt" %387, %22 : i64
    llvm.cond_br %390, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %391 = llvm.extractvalue %382[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %392 = llvm.mlir.constant(4 : index) : i64
    %393 = llvm.mul %385, %392  : i64
    %394 = llvm.add %393, %389  : i64
    %395 = llvm.getelementptr %391[%394] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %395 : f64, !llvm.ptr
    %396 = llvm.add %387, %34  : i64
    llvm.br ^bb29(%396 : i64)
  ^bb31:  // pred: ^bb29
    %397 = llvm.add %383, %34  : i64
    llvm.br ^bb28(%397 : i64)
  ^bb32:  // pred: ^bb28
    %398 = llvm.mlir.constant(4 : index) : i64
    %399 = llvm.mlir.constant(1 : index) : i64
    %400 = llvm.mul %398, %100  : i64
    %401 = llvm.mlir.zero : !llvm.ptr
    %402 = llvm.getelementptr %401[%400] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %403 = llvm.ptrtoint %402 : !llvm.ptr to i64
    %404 = llvm.mlir.constant(32 : index) : i64
    %405 = llvm.add %403, %404  : i64
    %406 = llvm.call @malloc(%405) : (i64) -> !llvm.ptr
    %407 = llvm.ptrtoint %406 : !llvm.ptr to i64
    %408 = llvm.mlir.constant(1 : index) : i64
    %409 = llvm.sub %404, %408  : i64
    %410 = llvm.add %407, %409  : i64
    %411 = llvm.urem %410, %404  : i64
    %412 = llvm.sub %410, %411  : i64
    %413 = llvm.inttoptr %412 : i64 to !llvm.ptr
    %414 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %415 = llvm.insertvalue %406, %414[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %416 = llvm.insertvalue %413, %415[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %417 = llvm.mlir.constant(0 : index) : i64
    %418 = llvm.insertvalue %417, %416[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %419 = llvm.insertvalue %100, %418[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %420 = llvm.insertvalue %398, %419[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %421 = llvm.insertvalue %398, %420[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %422 = llvm.insertvalue %399, %421[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb33(%37 : i64)
  ^bb33(%423: i64):  // 2 preds: ^bb32, ^bb36
    %424 = builtin.unrealized_conversion_cast %423 : i64 to index
    %425 = builtin.unrealized_conversion_cast %424 : index to i64
    %426 = llvm.icmp "slt" %423, %100 : i64
    llvm.cond_br %426, ^bb34(%37 : i64), ^bb37(%37 : i64)
  ^bb34(%427: i64):  // 2 preds: ^bb33, ^bb35
    %428 = builtin.unrealized_conversion_cast %427 : i64 to index
    %429 = builtin.unrealized_conversion_cast %428 : index to i64
    %430 = llvm.icmp "slt" %427, %22 : i64
    llvm.cond_br %430, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %431 = llvm.extractvalue %422[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %432 = llvm.mlir.constant(4 : index) : i64
    %433 = llvm.mul %425, %432  : i64
    %434 = llvm.add %433, %429  : i64
    %435 = llvm.getelementptr %431[%434] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %2, %435 : f64, !llvm.ptr
    %436 = llvm.add %427, %34  : i64
    llvm.br ^bb34(%436 : i64)
  ^bb36:  // pred: ^bb34
    %437 = llvm.add %423, %34  : i64
    llvm.br ^bb33(%437 : i64)
  ^bb37(%438: i64):  // 2 preds: ^bb33, ^bb43
    %439 = builtin.unrealized_conversion_cast %438 : i64 to index
    %440 = builtin.unrealized_conversion_cast %439 : index to i64
    %441 = llvm.icmp "slt" %438, %100 : i64
    llvm.cond_br %441, ^bb38, ^bb44
  ^bb38:  // pred: ^bb37
    %442 = llvm.add %438, %34  : i64
    %443 = builtin.unrealized_conversion_cast %442 : i64 to index
    %444 = builtin.unrealized_conversion_cast %443 : index to i64
    %445 = llvm.extractvalue %221[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %446 = llvm.getelementptr %445[%440] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %447 = llvm.load %446 : !llvm.ptr -> i64
    %448 = llvm.extractvalue %221[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %449 = llvm.getelementptr %448[%444] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %450 = llvm.load %449 : !llvm.ptr -> i64
    llvm.br ^bb39(%447 : i64)
  ^bb39(%451: i64):  // 2 preds: ^bb38, ^bb42
    %452 = builtin.unrealized_conversion_cast %451 : i64 to index
    %453 = builtin.unrealized_conversion_cast %452 : index to i64
    %454 = llvm.icmp "slt" %451, %450 : i64
    llvm.cond_br %454, ^bb40(%37 : i64), ^bb43
  ^bb40(%455: i64):  // 2 preds: ^bb39, ^bb41
    %456 = builtin.unrealized_conversion_cast %455 : i64 to index
    %457 = builtin.unrealized_conversion_cast %456 : index to i64
    %458 = llvm.icmp "slt" %455, %0 : i64
    llvm.cond_br %458, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %459 = llvm.extractvalue %247[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %460 = llvm.getelementptr %459[%453] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %461 = llvm.load %460 : !llvm.ptr -> i64
    %462 = builtin.unrealized_conversion_cast %461 : i64 to index
    %463 = builtin.unrealized_conversion_cast %462 : index to i64
    %464 = llvm.extractvalue %325[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %465 = llvm.getelementptr %464[%453] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %466 = llvm.load %465 : !llvm.ptr -> f64
    %467 = llvm.extractvalue %382[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %468 = llvm.mlir.constant(4 : index) : i64
    %469 = llvm.mul %463, %468  : i64
    %470 = llvm.add %469, %457  : i64
    %471 = llvm.getelementptr %467[%470] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %472 = llvm.load %471 : !llvm.ptr -> f64
    %473 = llvm.fmul %466, %472  : f64
    %474 = llvm.extractvalue %422[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %475 = llvm.mlir.constant(4 : index) : i64
    %476 = llvm.mul %440, %475  : i64
    %477 = llvm.add %476, %457  : i64
    %478 = llvm.getelementptr %474[%477] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %479 = llvm.load %478 : !llvm.ptr -> f64
    %480 = llvm.fadd %479, %473  : f64
    %481 = llvm.extractvalue %422[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %482 = llvm.mlir.constant(4 : index) : i64
    %483 = llvm.mul %440, %482  : i64
    %484 = llvm.add %483, %457  : i64
    %485 = llvm.getelementptr %481[%484] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %480, %485 : f64, !llvm.ptr
    %486 = llvm.add %455, %34  : i64
    llvm.br ^bb40(%486 : i64)
  ^bb42:  // pred: ^bb40
    %487 = llvm.add %451, %34  : i64
    llvm.br ^bb39(%487 : i64)
  ^bb43:  // pred: ^bb39
    llvm.br ^bb37(%442 : i64)
  ^bb44:  // pred: ^bb37
    %488 = llvm.mlir.constant(1 : index) : i64
    %489 = llvm.alloca %488 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %422, %489 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %490 = llvm.mlir.constant(2 : index) : i64
    %491 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %492 = llvm.insertvalue %490, %491[0] : !llvm.struct<(i64, ptr)> 
    %493 = llvm.insertvalue %489, %492[1] : !llvm.struct<(i64, ptr)> 
    %494 = builtin.unrealized_conversion_cast %493 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    %495 = llvm.extractvalue %493[0] : !llvm.struct<(i64, ptr)> 
    %496 = llvm.extractvalue %493[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%495, %496) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @read_input_2D_f64_i64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @read_input_sizes_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


// -----// IR Dump After ConvertIndexToLLVMPass (convert-index-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
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
    %36 = llvm.call @malloc(%35) : (i64) -> !llvm.ptr
    %37 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %38 = llvm.insertvalue %36, %37[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.insertvalue %36, %38[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.insertvalue %40, %39[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.insertvalue %31, %41[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.insertvalue %32, %42[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.alloca %44 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %43, %45 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %48 = llvm.insertvalue %46, %47[0] : !llvm.struct<(i64, ptr)> 
    %49 = llvm.insertvalue %45, %48[1] : !llvm.struct<(i64, ptr)> 
    %50 = builtin.unrealized_conversion_cast %49 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %51 = llvm.extractvalue %49[0] : !llvm.struct<(i64, ptr)> 
    %52 = llvm.extractvalue %49[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%21, %29, %26, %27, %26, %51, %52, %20) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %53 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.getelementptr %53[%29] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %55 = llvm.load %54 : !llvm.ptr -> i64
    %56 = builtin.unrealized_conversion_cast %55 : i64 to index
    %57 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.getelementptr %57[%27] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %59 = llvm.load %58 : !llvm.ptr -> i64
    %60 = builtin.unrealized_conversion_cast %59 : i64 to index
    %61 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.getelementptr %61[%24] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %63 = llvm.load %62 : !llvm.ptr -> i64
    %64 = builtin.unrealized_conversion_cast %63 : i64 to index
    %65 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.getelementptr %65[%22] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %67 = llvm.load %66 : !llvm.ptr -> i64
    %68 = builtin.unrealized_conversion_cast %67 : i64 to index
    %69 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.getelementptr %69[%18] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %71 = llvm.load %70 : !llvm.ptr -> i64
    %72 = builtin.unrealized_conversion_cast %71 : i64 to index
    %73 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %74 = llvm.getelementptr %73[%16] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %75 = llvm.load %74 : !llvm.ptr -> i64
    %76 = builtin.unrealized_conversion_cast %75 : i64 to index
    %77 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %78 = llvm.getelementptr %77[%14] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %79 = llvm.load %78 : !llvm.ptr -> i64
    %80 = builtin.unrealized_conversion_cast %79 : i64 to index
    %81 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %82 = llvm.getelementptr %81[%12] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %83 = llvm.load %82 : !llvm.ptr -> i64
    %84 = builtin.unrealized_conversion_cast %83 : i64 to index
    %85 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.getelementptr %85[%10] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %87 = llvm.load %86 : !llvm.ptr -> i64
    %88 = builtin.unrealized_conversion_cast %87 : i64 to index
    %89 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.getelementptr %89[%8] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %91 = llvm.load %90 : !llvm.ptr -> i64
    %92 = builtin.unrealized_conversion_cast %91 : i64 to index
    %93 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %94 = llvm.getelementptr %93[%6] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %95 = llvm.load %94 : !llvm.ptr -> i64
    %96 = builtin.unrealized_conversion_cast %95 : i64 to index
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.zero : !llvm.ptr
    %99 = llvm.getelementptr %98[%55] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %100 = llvm.ptrtoint %99 : !llvm.ptr to i64
    %101 = llvm.call @malloc(%100) : (i64) -> !llvm.ptr
    %102 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %103 = llvm.insertvalue %101, %102[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %104 = llvm.insertvalue %101, %103[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %105 = llvm.mlir.constant(0 : index) : i64
    %106 = llvm.insertvalue %105, %104[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %107 = llvm.insertvalue %55, %106[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %108 = llvm.insertvalue %97, %107[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%29 : i64)
  ^bb1(%109: i64):  // 2 preds: ^bb0, ^bb2
    %110 = builtin.unrealized_conversion_cast %109 : i64 to index
    %111 = llvm.icmp "slt" %109, %55 : i64
    llvm.cond_br %111, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %112 = llvm.extractvalue %108[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %113 = llvm.getelementptr %112[%109] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %113 : i64, !llvm.ptr
    %114 = llvm.add %109, %27  : i64
    llvm.br ^bb1(%114 : i64)
  ^bb3:  // pred: ^bb1
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.alloca %115 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %108, %116 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %119 = llvm.insertvalue %117, %118[0] : !llvm.struct<(i64, ptr)> 
    %120 = llvm.insertvalue %116, %119[1] : !llvm.struct<(i64, ptr)> 
    %121 = builtin.unrealized_conversion_cast %120 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.mlir.zero : !llvm.ptr
    %124 = llvm.getelementptr %123[%59] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %125 = llvm.ptrtoint %124 : !llvm.ptr to i64
    %126 = llvm.call @malloc(%125) : (i64) -> !llvm.ptr
    %127 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %128 = llvm.insertvalue %126, %127[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.insertvalue %126, %128[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %130 = llvm.mlir.constant(0 : index) : i64
    %131 = llvm.insertvalue %130, %129[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.insertvalue %59, %131[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.insertvalue %122, %132[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%29 : i64)
  ^bb4(%134: i64):  // 2 preds: ^bb3, ^bb5
    %135 = builtin.unrealized_conversion_cast %134 : i64 to index
    %136 = llvm.icmp "slt" %134, %59 : i64
    llvm.cond_br %136, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %137 = llvm.extractvalue %133[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %138 = llvm.getelementptr %137[%134] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %138 : i64, !llvm.ptr
    %139 = llvm.add %134, %27  : i64
    llvm.br ^bb4(%139 : i64)
  ^bb6:  // pred: ^bb4
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.alloca %140 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %133, %141 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %144 = llvm.insertvalue %142, %143[0] : !llvm.struct<(i64, ptr)> 
    %145 = llvm.insertvalue %141, %144[1] : !llvm.struct<(i64, ptr)> 
    %146 = builtin.unrealized_conversion_cast %145 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.mlir.zero : !llvm.ptr
    %149 = llvm.getelementptr %148[%63] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %150 = llvm.ptrtoint %149 : !llvm.ptr to i64
    %151 = llvm.call @malloc(%150) : (i64) -> !llvm.ptr
    %152 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %153 = llvm.insertvalue %151, %152[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %154 = llvm.insertvalue %151, %153[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %155 = llvm.mlir.constant(0 : index) : i64
    %156 = llvm.insertvalue %155, %154[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %157 = llvm.insertvalue %63, %156[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %158 = llvm.insertvalue %147, %157[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%29 : i64)
  ^bb7(%159: i64):  // 2 preds: ^bb6, ^bb8
    %160 = builtin.unrealized_conversion_cast %159 : i64 to index
    %161 = llvm.icmp "slt" %159, %63 : i64
    llvm.cond_br %161, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %162 = llvm.extractvalue %158[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %163 = llvm.getelementptr %162[%159] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %163 : i64, !llvm.ptr
    %164 = llvm.add %159, %27  : i64
    llvm.br ^bb7(%164 : i64)
  ^bb9:  // pred: ^bb7
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.alloca %165 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %158, %166 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %169 = llvm.insertvalue %167, %168[0] : !llvm.struct<(i64, ptr)> 
    %170 = llvm.insertvalue %166, %169[1] : !llvm.struct<(i64, ptr)> 
    %171 = builtin.unrealized_conversion_cast %170 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.mlir.zero : !llvm.ptr
    %174 = llvm.getelementptr %173[%67] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %175 = llvm.ptrtoint %174 : !llvm.ptr to i64
    %176 = llvm.call @malloc(%175) : (i64) -> !llvm.ptr
    %177 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %178 = llvm.insertvalue %176, %177[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %179 = llvm.insertvalue %176, %178[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %180 = llvm.mlir.constant(0 : index) : i64
    %181 = llvm.insertvalue %180, %179[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %182 = llvm.insertvalue %67, %181[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %183 = llvm.insertvalue %172, %182[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%29 : i64)
  ^bb10(%184: i64):  // 2 preds: ^bb9, ^bb11
    %185 = builtin.unrealized_conversion_cast %184 : i64 to index
    %186 = llvm.icmp "slt" %184, %67 : i64
    llvm.cond_br %186, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %187 = llvm.extractvalue %183[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %188 = llvm.getelementptr %187[%184] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %188 : i64, !llvm.ptr
    %189 = llvm.add %184, %27  : i64
    llvm.br ^bb10(%189 : i64)
  ^bb12:  // pred: ^bb10
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.alloca %190 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %183, %191 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %192 = llvm.mlir.constant(1 : index) : i64
    %193 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %194 = llvm.insertvalue %192, %193[0] : !llvm.struct<(i64, ptr)> 
    %195 = llvm.insertvalue %191, %194[1] : !llvm.struct<(i64, ptr)> 
    %196 = builtin.unrealized_conversion_cast %195 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %197 = llvm.mlir.constant(1 : index) : i64
    %198 = llvm.mlir.zero : !llvm.ptr
    %199 = llvm.getelementptr %198[%71] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %200 = llvm.ptrtoint %199 : !llvm.ptr to i64
    %201 = llvm.call @malloc(%200) : (i64) -> !llvm.ptr
    %202 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %203 = llvm.insertvalue %201, %202[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %204 = llvm.insertvalue %201, %203[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %205 = llvm.mlir.constant(0 : index) : i64
    %206 = llvm.insertvalue %205, %204[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %207 = llvm.insertvalue %71, %206[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %208 = llvm.insertvalue %197, %207[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%29 : i64)
  ^bb13(%209: i64):  // 2 preds: ^bb12, ^bb14
    %210 = builtin.unrealized_conversion_cast %209 : i64 to index
    %211 = llvm.icmp "slt" %209, %71 : i64
    llvm.cond_br %211, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %212 = llvm.extractvalue %208[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %213 = llvm.getelementptr %212[%209] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %213 : i64, !llvm.ptr
    %214 = llvm.add %209, %27  : i64
    llvm.br ^bb13(%214 : i64)
  ^bb15:  // pred: ^bb13
    %215 = llvm.mlir.constant(1 : index) : i64
    %216 = llvm.alloca %215 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %208, %216 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %219 = llvm.insertvalue %217, %218[0] : !llvm.struct<(i64, ptr)> 
    %220 = llvm.insertvalue %216, %219[1] : !llvm.struct<(i64, ptr)> 
    %221 = builtin.unrealized_conversion_cast %220 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %222 = llvm.mlir.constant(1 : index) : i64
    %223 = llvm.mlir.zero : !llvm.ptr
    %224 = llvm.getelementptr %223[%75] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %225 = llvm.ptrtoint %224 : !llvm.ptr to i64
    %226 = llvm.call @malloc(%225) : (i64) -> !llvm.ptr
    %227 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %228 = llvm.insertvalue %226, %227[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %229 = llvm.insertvalue %226, %228[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %230 = llvm.mlir.constant(0 : index) : i64
    %231 = llvm.insertvalue %230, %229[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %232 = llvm.insertvalue %75, %231[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.insertvalue %222, %232[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%29 : i64)
  ^bb16(%234: i64):  // 2 preds: ^bb15, ^bb17
    %235 = builtin.unrealized_conversion_cast %234 : i64 to index
    %236 = llvm.icmp "slt" %234, %75 : i64
    llvm.cond_br %236, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %237 = llvm.extractvalue %233[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %238 = llvm.getelementptr %237[%234] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %238 : i64, !llvm.ptr
    %239 = llvm.add %234, %27  : i64
    llvm.br ^bb16(%239 : i64)
  ^bb18:  // pred: ^bb16
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.alloca %240 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %233, %241 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %244 = llvm.insertvalue %242, %243[0] : !llvm.struct<(i64, ptr)> 
    %245 = llvm.insertvalue %241, %244[1] : !llvm.struct<(i64, ptr)> 
    %246 = builtin.unrealized_conversion_cast %245 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.mlir.zero : !llvm.ptr
    %249 = llvm.getelementptr %248[%79] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %250 = llvm.ptrtoint %249 : !llvm.ptr to i64
    %251 = llvm.call @malloc(%250) : (i64) -> !llvm.ptr
    %252 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %253 = llvm.insertvalue %251, %252[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %254 = llvm.insertvalue %251, %253[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %255 = llvm.mlir.constant(0 : index) : i64
    %256 = llvm.insertvalue %255, %254[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %257 = llvm.insertvalue %79, %256[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %258 = llvm.insertvalue %247, %257[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%29 : i64)
  ^bb19(%259: i64):  // 2 preds: ^bb18, ^bb20
    %260 = builtin.unrealized_conversion_cast %259 : i64 to index
    %261 = llvm.icmp "slt" %259, %79 : i64
    llvm.cond_br %261, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %262 = llvm.extractvalue %258[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %263 = llvm.getelementptr %262[%259] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %263 : i64, !llvm.ptr
    %264 = llvm.add %259, %27  : i64
    llvm.br ^bb19(%264 : i64)
  ^bb21:  // pred: ^bb19
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.alloca %265 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %258, %266 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %267 = llvm.mlir.constant(1 : index) : i64
    %268 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %269 = llvm.insertvalue %267, %268[0] : !llvm.struct<(i64, ptr)> 
    %270 = llvm.insertvalue %266, %269[1] : !llvm.struct<(i64, ptr)> 
    %271 = builtin.unrealized_conversion_cast %270 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %272 = llvm.mlir.constant(1 : index) : i64
    %273 = llvm.mlir.zero : !llvm.ptr
    %274 = llvm.getelementptr %273[%83] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %275 = llvm.ptrtoint %274 : !llvm.ptr to i64
    %276 = llvm.call @malloc(%275) : (i64) -> !llvm.ptr
    %277 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %278 = llvm.insertvalue %276, %277[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %279 = llvm.insertvalue %276, %278[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %280 = llvm.mlir.constant(0 : index) : i64
    %281 = llvm.insertvalue %280, %279[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %282 = llvm.insertvalue %83, %281[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %283 = llvm.insertvalue %272, %282[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%29 : i64)
  ^bb22(%284: i64):  // 2 preds: ^bb21, ^bb23
    %285 = builtin.unrealized_conversion_cast %284 : i64 to index
    %286 = llvm.icmp "slt" %284, %83 : i64
    llvm.cond_br %286, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %287 = llvm.extractvalue %283[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %288 = llvm.getelementptr %287[%284] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %288 : i64, !llvm.ptr
    %289 = llvm.add %284, %27  : i64
    llvm.br ^bb22(%289 : i64)
  ^bb24:  // pred: ^bb22
    %290 = llvm.mlir.constant(1 : index) : i64
    %291 = llvm.alloca %290 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %283, %291 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %294 = llvm.insertvalue %292, %293[0] : !llvm.struct<(i64, ptr)> 
    %295 = llvm.insertvalue %291, %294[1] : !llvm.struct<(i64, ptr)> 
    %296 = builtin.unrealized_conversion_cast %295 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %297 = llvm.mlir.constant(1 : index) : i64
    %298 = llvm.mlir.zero : !llvm.ptr
    %299 = llvm.getelementptr %298[%87] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %300 = llvm.ptrtoint %299 : !llvm.ptr to i64
    %301 = llvm.call @malloc(%300) : (i64) -> !llvm.ptr
    %302 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %303 = llvm.insertvalue %301, %302[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %304 = llvm.insertvalue %301, %303[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %305 = llvm.mlir.constant(0 : index) : i64
    %306 = llvm.insertvalue %305, %304[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %307 = llvm.insertvalue %87, %306[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %308 = llvm.insertvalue %297, %307[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%29 : i64)
  ^bb25(%309: i64):  // 2 preds: ^bb24, ^bb26
    %310 = builtin.unrealized_conversion_cast %309 : i64 to index
    %311 = llvm.icmp "slt" %309, %87 : i64
    llvm.cond_br %311, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %312 = llvm.extractvalue %308[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %313 = llvm.getelementptr %312[%309] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %4, %313 : f64, !llvm.ptr
    %314 = llvm.add %309, %27  : i64
    llvm.br ^bb25(%314 : i64)
  ^bb27:  // pred: ^bb25
    %315 = llvm.mlir.constant(1 : index) : i64
    %316 = llvm.alloca %315 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %308, %316 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %317 = llvm.mlir.constant(1 : index) : i64
    %318 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %319 = llvm.insertvalue %317, %318[0] : !llvm.struct<(i64, ptr)> 
    %320 = llvm.insertvalue %316, %319[1] : !llvm.struct<(i64, ptr)> 
    %321 = builtin.unrealized_conversion_cast %320 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    %322 = llvm.extractvalue %120[0] : !llvm.struct<(i64, ptr)> 
    %323 = llvm.extractvalue %120[1] : !llvm.struct<(i64, ptr)> 
    %324 = llvm.extractvalue %145[0] : !llvm.struct<(i64, ptr)> 
    %325 = llvm.extractvalue %145[1] : !llvm.struct<(i64, ptr)> 
    %326 = llvm.extractvalue %170[0] : !llvm.struct<(i64, ptr)> 
    %327 = llvm.extractvalue %170[1] : !llvm.struct<(i64, ptr)> 
    %328 = llvm.extractvalue %195[0] : !llvm.struct<(i64, ptr)> 
    %329 = llvm.extractvalue %195[1] : !llvm.struct<(i64, ptr)> 
    %330 = llvm.extractvalue %220[0] : !llvm.struct<(i64, ptr)> 
    %331 = llvm.extractvalue %220[1] : !llvm.struct<(i64, ptr)> 
    %332 = llvm.extractvalue %245[0] : !llvm.struct<(i64, ptr)> 
    %333 = llvm.extractvalue %245[1] : !llvm.struct<(i64, ptr)> 
    %334 = llvm.extractvalue %270[0] : !llvm.struct<(i64, ptr)> 
    %335 = llvm.extractvalue %270[1] : !llvm.struct<(i64, ptr)> 
    %336 = llvm.extractvalue %295[0] : !llvm.struct<(i64, ptr)> 
    %337 = llvm.extractvalue %295[1] : !llvm.struct<(i64, ptr)> 
    %338 = llvm.extractvalue %320[0] : !llvm.struct<(i64, ptr)> 
    %339 = llvm.extractvalue %320[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64_i64(%21, %29, %26, %27, %26, %322, %323, %324, %325, %326, %327, %328, %329, %330, %331, %332, %333, %334, %335, %336, %337, %338, %339, %20) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %340 = llvm.mlir.constant(4 : index) : i64
    %341 = llvm.mlir.constant(1 : index) : i64
    %342 = llvm.mul %340, %95  : i64
    %343 = llvm.mlir.zero : !llvm.ptr
    %344 = llvm.getelementptr %343[%342] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %345 = llvm.ptrtoint %344 : !llvm.ptr to i64
    %346 = llvm.mlir.constant(32 : index) : i64
    %347 = llvm.add %345, %346  : i64
    %348 = llvm.call @malloc(%347) : (i64) -> !llvm.ptr
    %349 = llvm.ptrtoint %348 : !llvm.ptr to i64
    %350 = llvm.mlir.constant(1 : index) : i64
    %351 = llvm.sub %346, %350  : i64
    %352 = llvm.add %349, %351  : i64
    %353 = llvm.urem %352, %346  : i64
    %354 = llvm.sub %352, %353  : i64
    %355 = llvm.inttoptr %354 : i64 to !llvm.ptr
    %356 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %357 = llvm.insertvalue %348, %356[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %358 = llvm.insertvalue %355, %357[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %359 = llvm.mlir.constant(0 : index) : i64
    %360 = llvm.insertvalue %359, %358[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %361 = llvm.insertvalue %95, %360[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %362 = llvm.insertvalue %340, %361[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %363 = llvm.insertvalue %340, %362[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %364 = llvm.insertvalue %341, %363[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb28(%29 : i64)
  ^bb28(%365: i64):  // 2 preds: ^bb27, ^bb31
    %366 = builtin.unrealized_conversion_cast %365 : i64 to index
    %367 = llvm.icmp "slt" %365, %95 : i64
    llvm.cond_br %367, ^bb29(%29 : i64), ^bb32
  ^bb29(%368: i64):  // 2 preds: ^bb28, ^bb30
    %369 = builtin.unrealized_conversion_cast %368 : i64 to index
    %370 = llvm.icmp "slt" %368, %18 : i64
    llvm.cond_br %370, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %371 = llvm.extractvalue %364[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %372 = llvm.mlir.constant(4 : index) : i64
    %373 = llvm.mul %365, %372  : i64
    %374 = llvm.add %373, %368  : i64
    %375 = llvm.getelementptr %371[%374] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %3, %375 : f64, !llvm.ptr
    %376 = llvm.add %368, %27  : i64
    llvm.br ^bb29(%376 : i64)
  ^bb31:  // pred: ^bb29
    %377 = llvm.add %365, %27  : i64
    llvm.br ^bb28(%377 : i64)
  ^bb32:  // pred: ^bb28
    %378 = llvm.mlir.constant(4 : index) : i64
    %379 = llvm.mlir.constant(1 : index) : i64
    %380 = llvm.mul %378, %91  : i64
    %381 = llvm.mlir.zero : !llvm.ptr
    %382 = llvm.getelementptr %381[%380] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %383 = llvm.ptrtoint %382 : !llvm.ptr to i64
    %384 = llvm.mlir.constant(32 : index) : i64
    %385 = llvm.add %383, %384  : i64
    %386 = llvm.call @malloc(%385) : (i64) -> !llvm.ptr
    %387 = llvm.ptrtoint %386 : !llvm.ptr to i64
    %388 = llvm.mlir.constant(1 : index) : i64
    %389 = llvm.sub %384, %388  : i64
    %390 = llvm.add %387, %389  : i64
    %391 = llvm.urem %390, %384  : i64
    %392 = llvm.sub %390, %391  : i64
    %393 = llvm.inttoptr %392 : i64 to !llvm.ptr
    %394 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %395 = llvm.insertvalue %386, %394[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %396 = llvm.insertvalue %393, %395[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %397 = llvm.mlir.constant(0 : index) : i64
    %398 = llvm.insertvalue %397, %396[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %399 = llvm.insertvalue %91, %398[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %400 = llvm.insertvalue %378, %399[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %401 = llvm.insertvalue %378, %400[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %402 = llvm.insertvalue %379, %401[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb33(%29 : i64)
  ^bb33(%403: i64):  // 2 preds: ^bb32, ^bb36
    %404 = builtin.unrealized_conversion_cast %403 : i64 to index
    %405 = llvm.icmp "slt" %403, %91 : i64
    llvm.cond_br %405, ^bb34(%29 : i64), ^bb37(%29 : i64)
  ^bb34(%406: i64):  // 2 preds: ^bb33, ^bb35
    %407 = builtin.unrealized_conversion_cast %406 : i64 to index
    %408 = llvm.icmp "slt" %406, %18 : i64
    llvm.cond_br %408, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %409 = llvm.extractvalue %402[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %410 = llvm.mlir.constant(4 : index) : i64
    %411 = llvm.mul %403, %410  : i64
    %412 = llvm.add %411, %406  : i64
    %413 = llvm.getelementptr %409[%412] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %4, %413 : f64, !llvm.ptr
    %414 = llvm.add %406, %27  : i64
    llvm.br ^bb34(%414 : i64)
  ^bb36:  // pred: ^bb34
    %415 = llvm.add %403, %27  : i64
    llvm.br ^bb33(%415 : i64)
  ^bb37(%416: i64):  // 2 preds: ^bb33, ^bb43
    %417 = builtin.unrealized_conversion_cast %416 : i64 to index
    %418 = llvm.icmp "slt" %416, %91 : i64
    llvm.cond_br %418, ^bb38, ^bb44
  ^bb38:  // pred: ^bb37
    %419 = llvm.add %416, %27  : i64
    %420 = builtin.unrealized_conversion_cast %419 : i64 to index
    %421 = llvm.extractvalue %208[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %422 = llvm.getelementptr %421[%416] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %423 = llvm.load %422 : !llvm.ptr -> i64
    %424 = llvm.extractvalue %208[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %425 = llvm.getelementptr %424[%419] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %426 = llvm.load %425 : !llvm.ptr -> i64
    llvm.br ^bb39(%423 : i64)
  ^bb39(%427: i64):  // 2 preds: ^bb38, ^bb42
    %428 = builtin.unrealized_conversion_cast %427 : i64 to index
    %429 = llvm.icmp "slt" %427, %426 : i64
    llvm.cond_br %429, ^bb40(%29 : i64), ^bb43
  ^bb40(%430: i64):  // 2 preds: ^bb39, ^bb41
    %431 = builtin.unrealized_conversion_cast %430 : i64 to index
    %432 = llvm.icmp "slt" %430, %2 : i64
    llvm.cond_br %432, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %433 = llvm.extractvalue %233[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %434 = llvm.getelementptr %433[%427] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %435 = llvm.load %434 : !llvm.ptr -> i64
    %436 = builtin.unrealized_conversion_cast %435 : i64 to index
    %437 = llvm.extractvalue %308[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %438 = llvm.getelementptr %437[%427] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %439 = llvm.load %438 : !llvm.ptr -> f64
    %440 = llvm.extractvalue %364[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %441 = llvm.mlir.constant(4 : index) : i64
    %442 = llvm.mul %435, %441  : i64
    %443 = llvm.add %442, %430  : i64
    %444 = llvm.getelementptr %440[%443] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %445 = llvm.load %444 : !llvm.ptr -> f64
    %446 = llvm.fmul %439, %445  : f64
    %447 = llvm.extractvalue %402[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %448 = llvm.mlir.constant(4 : index) : i64
    %449 = llvm.mul %416, %448  : i64
    %450 = llvm.add %449, %430  : i64
    %451 = llvm.getelementptr %447[%450] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %452 = llvm.load %451 : !llvm.ptr -> f64
    %453 = llvm.fadd %452, %446  : f64
    %454 = llvm.extractvalue %402[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %455 = llvm.mlir.constant(4 : index) : i64
    %456 = llvm.mul %416, %455  : i64
    %457 = llvm.add %456, %430  : i64
    %458 = llvm.getelementptr %454[%457] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %453, %458 : f64, !llvm.ptr
    %459 = llvm.add %430, %27  : i64
    llvm.br ^bb40(%459 : i64)
  ^bb42:  // pred: ^bb40
    %460 = llvm.add %427, %27  : i64
    llvm.br ^bb39(%460 : i64)
  ^bb43:  // pred: ^bb39
    llvm.br ^bb37(%419 : i64)
  ^bb44:  // pred: ^bb37
    %461 = llvm.mlir.constant(1 : index) : i64
    %462 = llvm.alloca %461 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %402, %462 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %463 = llvm.mlir.constant(2 : index) : i64
    %464 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %465 = llvm.insertvalue %463, %464[0] : !llvm.struct<(i64, ptr)> 
    %466 = llvm.insertvalue %462, %465[1] : !llvm.struct<(i64, ptr)> 
    %467 = builtin.unrealized_conversion_cast %466 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    %468 = llvm.extractvalue %466[0] : !llvm.struct<(i64, ptr)> 
    %469 = llvm.extractvalue %466[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%468, %469) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @read_input_2D_f64_i64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @read_input_sizes_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


// -----// IR Dump After ReconcileUnrealizedCasts (reconcile-unrealized-casts) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
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
    %23 = llvm.call @malloc(%22) : (i64) -> !llvm.ptr
    %24 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %25 = llvm.insertvalue %23, %24[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.insertvalue %23, %25[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.constant(0 : index) : i64
    %28 = llvm.insertvalue %27, %26[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.insertvalue %18, %28[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.insertvalue %19, %29[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.alloca %31 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %30, %32 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %35 = llvm.insertvalue %33, %34[0] : !llvm.struct<(i64, ptr)> 
    %36 = llvm.insertvalue %32, %35[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%12, %17, %15, %16, %15, %33, %32, %11) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %37 = llvm.load %23 : !llvm.ptr -> i64
    %38 = llvm.getelementptr %23[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %39 = llvm.load %38 : !llvm.ptr -> i64
    %40 = llvm.getelementptr %23[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %41 = llvm.load %40 : !llvm.ptr -> i64
    %42 = llvm.getelementptr %23[3] : (!llvm.ptr) -> !llvm.ptr, i64
    %43 = llvm.load %42 : !llvm.ptr -> i64
    %44 = llvm.getelementptr %23[4] : (!llvm.ptr) -> !llvm.ptr, i64
    %45 = llvm.load %44 : !llvm.ptr -> i64
    %46 = llvm.getelementptr %23[5] : (!llvm.ptr) -> !llvm.ptr, i64
    %47 = llvm.load %46 : !llvm.ptr -> i64
    %48 = llvm.getelementptr %23[6] : (!llvm.ptr) -> !llvm.ptr, i64
    %49 = llvm.load %48 : !llvm.ptr -> i64
    %50 = llvm.getelementptr %23[7] : (!llvm.ptr) -> !llvm.ptr, i64
    %51 = llvm.load %50 : !llvm.ptr -> i64
    %52 = llvm.getelementptr %23[8] : (!llvm.ptr) -> !llvm.ptr, i64
    %53 = llvm.load %52 : !llvm.ptr -> i64
    %54 = llvm.getelementptr %23[9] : (!llvm.ptr) -> !llvm.ptr, i64
    %55 = llvm.load %54 : !llvm.ptr -> i64
    %56 = llvm.getelementptr %23[10] : (!llvm.ptr) -> !llvm.ptr, i64
    %57 = llvm.load %56 : !llvm.ptr -> i64
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.mlir.zero : !llvm.ptr
    %60 = llvm.getelementptr %59[%37] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %61 = llvm.ptrtoint %60 : !llvm.ptr to i64
    %62 = llvm.call @malloc(%61) : (i64) -> !llvm.ptr
    %63 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %64 = llvm.insertvalue %62, %63[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.insertvalue %62, %64[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.insertvalue %66, %65[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.insertvalue %37, %67[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.insertvalue %58, %68[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%17 : i64)
  ^bb1(%70: i64):  // 2 preds: ^bb0, ^bb2
    %71 = llvm.icmp "slt" %70, %37 : i64
    llvm.cond_br %71, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %72 = llvm.getelementptr %62[%70] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %72 : i64, !llvm.ptr
    %73 = llvm.add %70, %16  : i64
    llvm.br ^bb1(%73 : i64)
  ^bb3:  // pred: ^bb1
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.alloca %74 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %69, %75 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %78 = llvm.insertvalue %76, %77[0] : !llvm.struct<(i64, ptr)> 
    %79 = llvm.insertvalue %75, %78[1] : !llvm.struct<(i64, ptr)> 
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.mlir.zero : !llvm.ptr
    %82 = llvm.getelementptr %81[%39] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %83 = llvm.ptrtoint %82 : !llvm.ptr to i64
    %84 = llvm.call @malloc(%83) : (i64) -> !llvm.ptr
    %85 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %86 = llvm.insertvalue %84, %85[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.insertvalue %84, %86[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.insertvalue %88, %87[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.insertvalue %39, %89[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %91 = llvm.insertvalue %80, %90[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%17 : i64)
  ^bb4(%92: i64):  // 2 preds: ^bb3, ^bb5
    %93 = llvm.icmp "slt" %92, %39 : i64
    llvm.cond_br %93, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %94 = llvm.getelementptr %84[%92] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %94 : i64, !llvm.ptr
    %95 = llvm.add %92, %16  : i64
    llvm.br ^bb4(%95 : i64)
  ^bb6:  // pred: ^bb4
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.alloca %96 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %91, %97 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %100 = llvm.insertvalue %98, %99[0] : !llvm.struct<(i64, ptr)> 
    %101 = llvm.insertvalue %97, %100[1] : !llvm.struct<(i64, ptr)> 
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.mlir.zero : !llvm.ptr
    %104 = llvm.getelementptr %103[%41] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %105 = llvm.ptrtoint %104 : !llvm.ptr to i64
    %106 = llvm.call @malloc(%105) : (i64) -> !llvm.ptr
    %107 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %108 = llvm.insertvalue %106, %107[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %109 = llvm.insertvalue %106, %108[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.mlir.constant(0 : index) : i64
    %111 = llvm.insertvalue %110, %109[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %112 = llvm.insertvalue %41, %111[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %113 = llvm.insertvalue %102, %112[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%17 : i64)
  ^bb7(%114: i64):  // 2 preds: ^bb6, ^bb8
    %115 = llvm.icmp "slt" %114, %41 : i64
    llvm.cond_br %115, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %116 = llvm.getelementptr %106[%114] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %116 : i64, !llvm.ptr
    %117 = llvm.add %114, %16  : i64
    llvm.br ^bb7(%117 : i64)
  ^bb9:  // pred: ^bb7
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.alloca %118 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %113, %119 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %122 = llvm.insertvalue %120, %121[0] : !llvm.struct<(i64, ptr)> 
    %123 = llvm.insertvalue %119, %122[1] : !llvm.struct<(i64, ptr)> 
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.zero : !llvm.ptr
    %126 = llvm.getelementptr %125[%43] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %127 = llvm.ptrtoint %126 : !llvm.ptr to i64
    %128 = llvm.call @malloc(%127) : (i64) -> !llvm.ptr
    %129 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %130 = llvm.insertvalue %128, %129[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.insertvalue %128, %130[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.mlir.constant(0 : index) : i64
    %133 = llvm.insertvalue %132, %131[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %134 = llvm.insertvalue %43, %133[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %135 = llvm.insertvalue %124, %134[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%17 : i64)
  ^bb10(%136: i64):  // 2 preds: ^bb9, ^bb11
    %137 = llvm.icmp "slt" %136, %43 : i64
    llvm.cond_br %137, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %138 = llvm.getelementptr %128[%136] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %138 : i64, !llvm.ptr
    %139 = llvm.add %136, %16  : i64
    llvm.br ^bb10(%139 : i64)
  ^bb12:  // pred: ^bb10
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.alloca %140 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %135, %141 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %144 = llvm.insertvalue %142, %143[0] : !llvm.struct<(i64, ptr)> 
    %145 = llvm.insertvalue %141, %144[1] : !llvm.struct<(i64, ptr)> 
    %146 = llvm.mlir.constant(1 : index) : i64
    %147 = llvm.mlir.zero : !llvm.ptr
    %148 = llvm.getelementptr %147[%45] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %149 = llvm.ptrtoint %148 : !llvm.ptr to i64
    %150 = llvm.call @malloc(%149) : (i64) -> !llvm.ptr
    %151 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %152 = llvm.insertvalue %150, %151[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %153 = llvm.insertvalue %150, %152[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.insertvalue %154, %153[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.insertvalue %45, %155[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %157 = llvm.insertvalue %146, %156[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%17 : i64)
  ^bb13(%158: i64):  // 2 preds: ^bb12, ^bb14
    %159 = llvm.icmp "slt" %158, %45 : i64
    llvm.cond_br %159, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %160 = llvm.getelementptr %150[%158] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %160 : i64, !llvm.ptr
    %161 = llvm.add %158, %16  : i64
    llvm.br ^bb13(%161 : i64)
  ^bb15:  // pred: ^bb13
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.alloca %162 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %157, %163 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %166 = llvm.insertvalue %164, %165[0] : !llvm.struct<(i64, ptr)> 
    %167 = llvm.insertvalue %163, %166[1] : !llvm.struct<(i64, ptr)> 
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.zero : !llvm.ptr
    %170 = llvm.getelementptr %169[%47] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %171 = llvm.ptrtoint %170 : !llvm.ptr to i64
    %172 = llvm.call @malloc(%171) : (i64) -> !llvm.ptr
    %173 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %174 = llvm.insertvalue %172, %173[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %175 = llvm.insertvalue %172, %174[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %176 = llvm.mlir.constant(0 : index) : i64
    %177 = llvm.insertvalue %176, %175[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %178 = llvm.insertvalue %47, %177[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %179 = llvm.insertvalue %168, %178[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%17 : i64)
  ^bb16(%180: i64):  // 2 preds: ^bb15, ^bb17
    %181 = llvm.icmp "slt" %180, %47 : i64
    llvm.cond_br %181, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %182 = llvm.getelementptr %172[%180] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %182 : i64, !llvm.ptr
    %183 = llvm.add %180, %16  : i64
    llvm.br ^bb16(%183 : i64)
  ^bb18:  // pred: ^bb16
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.alloca %184 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %179, %185 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %188 = llvm.insertvalue %186, %187[0] : !llvm.struct<(i64, ptr)> 
    %189 = llvm.insertvalue %185, %188[1] : !llvm.struct<(i64, ptr)> 
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.mlir.zero : !llvm.ptr
    %192 = llvm.getelementptr %191[%49] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %193 = llvm.ptrtoint %192 : !llvm.ptr to i64
    %194 = llvm.call @malloc(%193) : (i64) -> !llvm.ptr
    %195 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %196 = llvm.insertvalue %194, %195[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %197 = llvm.insertvalue %194, %196[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %198 = llvm.mlir.constant(0 : index) : i64
    %199 = llvm.insertvalue %198, %197[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.insertvalue %49, %199[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %201 = llvm.insertvalue %190, %200[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%17 : i64)
  ^bb19(%202: i64):  // 2 preds: ^bb18, ^bb20
    %203 = llvm.icmp "slt" %202, %49 : i64
    llvm.cond_br %203, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %204 = llvm.getelementptr %194[%202] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %204 : i64, !llvm.ptr
    %205 = llvm.add %202, %16  : i64
    llvm.br ^bb19(%205 : i64)
  ^bb21:  // pred: ^bb19
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.alloca %206 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %201, %207 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %210 = llvm.insertvalue %208, %209[0] : !llvm.struct<(i64, ptr)> 
    %211 = llvm.insertvalue %207, %210[1] : !llvm.struct<(i64, ptr)> 
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.zero : !llvm.ptr
    %214 = llvm.getelementptr %213[%51] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %215 = llvm.ptrtoint %214 : !llvm.ptr to i64
    %216 = llvm.call @malloc(%215) : (i64) -> !llvm.ptr
    %217 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %218 = llvm.insertvalue %216, %217[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %219 = llvm.insertvalue %216, %218[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %220 = llvm.mlir.constant(0 : index) : i64
    %221 = llvm.insertvalue %220, %219[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %222 = llvm.insertvalue %51, %221[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %223 = llvm.insertvalue %212, %222[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%17 : i64)
  ^bb22(%224: i64):  // 2 preds: ^bb21, ^bb23
    %225 = llvm.icmp "slt" %224, %51 : i64
    llvm.cond_br %225, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %226 = llvm.getelementptr %216[%224] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %226 : i64, !llvm.ptr
    %227 = llvm.add %224, %16  : i64
    llvm.br ^bb22(%227 : i64)
  ^bb24:  // pred: ^bb22
    %228 = llvm.mlir.constant(1 : index) : i64
    %229 = llvm.alloca %228 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %223, %229 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %230 = llvm.mlir.constant(1 : index) : i64
    %231 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %232 = llvm.insertvalue %230, %231[0] : !llvm.struct<(i64, ptr)> 
    %233 = llvm.insertvalue %229, %232[1] : !llvm.struct<(i64, ptr)> 
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.mlir.zero : !llvm.ptr
    %236 = llvm.getelementptr %235[%53] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %237 = llvm.ptrtoint %236 : !llvm.ptr to i64
    %238 = llvm.call @malloc(%237) : (i64) -> !llvm.ptr
    %239 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %240 = llvm.insertvalue %238, %239[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %241 = llvm.insertvalue %238, %240[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.insertvalue %242, %241[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %244 = llvm.insertvalue %53, %243[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %245 = llvm.insertvalue %234, %244[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%17 : i64)
  ^bb25(%246: i64):  // 2 preds: ^bb24, ^bb26
    %247 = llvm.icmp "slt" %246, %53 : i64
    llvm.cond_br %247, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %248 = llvm.getelementptr %238[%246] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %2, %248 : f64, !llvm.ptr
    %249 = llvm.add %246, %16  : i64
    llvm.br ^bb25(%249 : i64)
  ^bb27:  // pred: ^bb25
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.alloca %250 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %245, %251 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %254 = llvm.insertvalue %252, %253[0] : !llvm.struct<(i64, ptr)> 
    %255 = llvm.insertvalue %251, %254[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64_i64(%12, %17, %15, %16, %15, %76, %75, %98, %97, %120, %119, %142, %141, %164, %163, %186, %185, %208, %207, %230, %229, %252, %251, %11) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %256 = llvm.mlir.constant(4 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.mul %57, %256  : i64
    %259 = llvm.mlir.zero : !llvm.ptr
    %260 = llvm.getelementptr %259[%258] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %261 = llvm.ptrtoint %260 : !llvm.ptr to i64
    %262 = llvm.mlir.constant(32 : index) : i64
    %263 = llvm.add %261, %262  : i64
    %264 = llvm.call @malloc(%263) : (i64) -> !llvm.ptr
    %265 = llvm.ptrtoint %264 : !llvm.ptr to i64
    %266 = llvm.mlir.constant(1 : index) : i64
    %267 = llvm.sub %262, %266  : i64
    %268 = llvm.add %265, %267  : i64
    %269 = llvm.urem %268, %262  : i64
    %270 = llvm.sub %268, %269  : i64
    %271 = llvm.inttoptr %270 : i64 to !llvm.ptr
    %272 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %273 = llvm.insertvalue %264, %272[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %274 = llvm.insertvalue %271, %273[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %275 = llvm.mlir.constant(0 : index) : i64
    %276 = llvm.insertvalue %275, %274[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %277 = llvm.insertvalue %57, %276[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %278 = llvm.insertvalue %256, %277[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %279 = llvm.insertvalue %256, %278[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %280 = llvm.insertvalue %257, %279[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb28(%17 : i64)
  ^bb28(%281: i64):  // 2 preds: ^bb27, ^bb31
    %282 = llvm.icmp "slt" %281, %57 : i64
    llvm.cond_br %282, ^bb29(%17 : i64), ^bb32
  ^bb29(%283: i64):  // 2 preds: ^bb28, ^bb30
    %284 = llvm.icmp "slt" %283, %10 : i64
    llvm.cond_br %284, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %285 = llvm.mlir.constant(4 : index) : i64
    %286 = llvm.mul %281, %285  : i64
    %287 = llvm.add %286, %283  : i64
    %288 = llvm.getelementptr %271[%287] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %288 : f64, !llvm.ptr
    %289 = llvm.add %283, %16  : i64
    llvm.br ^bb29(%289 : i64)
  ^bb31:  // pred: ^bb29
    %290 = llvm.add %281, %16  : i64
    llvm.br ^bb28(%290 : i64)
  ^bb32:  // pred: ^bb28
    %291 = llvm.mlir.constant(4 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.mul %55, %291  : i64
    %294 = llvm.mlir.zero : !llvm.ptr
    %295 = llvm.getelementptr %294[%293] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %296 = llvm.ptrtoint %295 : !llvm.ptr to i64
    %297 = llvm.mlir.constant(32 : index) : i64
    %298 = llvm.add %296, %297  : i64
    %299 = llvm.call @malloc(%298) : (i64) -> !llvm.ptr
    %300 = llvm.ptrtoint %299 : !llvm.ptr to i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.sub %297, %301  : i64
    %303 = llvm.add %300, %302  : i64
    %304 = llvm.urem %303, %297  : i64
    %305 = llvm.sub %303, %304  : i64
    %306 = llvm.inttoptr %305 : i64 to !llvm.ptr
    %307 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %308 = llvm.insertvalue %299, %307[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %309 = llvm.insertvalue %306, %308[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %310 = llvm.mlir.constant(0 : index) : i64
    %311 = llvm.insertvalue %310, %309[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %312 = llvm.insertvalue %55, %311[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %313 = llvm.insertvalue %291, %312[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %314 = llvm.insertvalue %291, %313[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %315 = llvm.insertvalue %292, %314[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb33(%17 : i64)
  ^bb33(%316: i64):  // 2 preds: ^bb32, ^bb36
    %317 = llvm.icmp "slt" %316, %55 : i64
    llvm.cond_br %317, ^bb34(%17 : i64), ^bb37(%17 : i64)
  ^bb34(%318: i64):  // 2 preds: ^bb33, ^bb35
    %319 = llvm.icmp "slt" %318, %10 : i64
    llvm.cond_br %319, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %320 = llvm.mlir.constant(4 : index) : i64
    %321 = llvm.mul %316, %320  : i64
    %322 = llvm.add %321, %318  : i64
    %323 = llvm.getelementptr %306[%322] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %2, %323 : f64, !llvm.ptr
    %324 = llvm.add %318, %16  : i64
    llvm.br ^bb34(%324 : i64)
  ^bb36:  // pred: ^bb34
    %325 = llvm.add %316, %16  : i64
    llvm.br ^bb33(%325 : i64)
  ^bb37(%326: i64):  // 2 preds: ^bb33, ^bb43
    %327 = llvm.icmp "slt" %326, %55 : i64
    llvm.cond_br %327, ^bb38, ^bb44
  ^bb38:  // pred: ^bb37
    %328 = llvm.add %326, %16  : i64
    %329 = llvm.getelementptr %150[%326] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %330 = llvm.load %329 : !llvm.ptr -> i64
    %331 = llvm.getelementptr %150[%328] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %332 = llvm.load %331 : !llvm.ptr -> i64
    llvm.br ^bb39(%330 : i64)
  ^bb39(%333: i64):  // 2 preds: ^bb38, ^bb42
    %334 = llvm.icmp "slt" %333, %332 : i64
    llvm.cond_br %334, ^bb40(%17 : i64), ^bb43
  ^bb40(%335: i64):  // 2 preds: ^bb39, ^bb41
    %336 = llvm.icmp "slt" %335, %0 : i64
    llvm.cond_br %336, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %337 = llvm.getelementptr %172[%333] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %338 = llvm.load %337 : !llvm.ptr -> i64
    %339 = llvm.getelementptr %238[%333] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %340 = llvm.load %339 : !llvm.ptr -> f64
    %341 = llvm.mlir.constant(4 : index) : i64
    %342 = llvm.mul %338, %341  : i64
    %343 = llvm.add %342, %335  : i64
    %344 = llvm.getelementptr %271[%343] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %345 = llvm.load %344 : !llvm.ptr -> f64
    %346 = llvm.fmul %340, %345  : f64
    %347 = llvm.mlir.constant(4 : index) : i64
    %348 = llvm.mul %326, %347  : i64
    %349 = llvm.add %348, %335  : i64
    %350 = llvm.getelementptr %306[%349] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %351 = llvm.load %350 : !llvm.ptr -> f64
    %352 = llvm.fadd %351, %346  : f64
    %353 = llvm.mlir.constant(4 : index) : i64
    %354 = llvm.mul %326, %353  : i64
    %355 = llvm.add %354, %335  : i64
    %356 = llvm.getelementptr %306[%355] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %352, %356 : f64, !llvm.ptr
    %357 = llvm.add %335, %16  : i64
    llvm.br ^bb40(%357 : i64)
  ^bb42:  // pred: ^bb40
    %358 = llvm.add %333, %16  : i64
    llvm.br ^bb39(%358 : i64)
  ^bb43:  // pred: ^bb39
    llvm.br ^bb37(%328 : i64)
  ^bb44:  // pred: ^bb37
    %359 = llvm.mlir.constant(1 : index) : i64
    %360 = llvm.alloca %359 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %315, %360 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %361 = llvm.mlir.constant(2 : index) : i64
    %362 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %363 = llvm.insertvalue %361, %362[0] : !llvm.struct<(i64, ptr)> 
    %364 = llvm.insertvalue %360, %363[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%361, %360) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @read_input_2D_f64_i64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @read_input_sizes_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


module {
  llvm.func @malloc(i64) -> !llvm.ptr
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
    %23 = llvm.call @malloc(%22) : (i64) -> !llvm.ptr
    %24 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %25 = llvm.insertvalue %23, %24[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.insertvalue %23, %25[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.constant(0 : index) : i64
    %28 = llvm.insertvalue %27, %26[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.insertvalue %18, %28[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.insertvalue %19, %29[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.alloca %31 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %30, %32 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %35 = llvm.insertvalue %33, %34[0] : !llvm.struct<(i64, ptr)> 
    %36 = llvm.insertvalue %32, %35[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%12, %17, %15, %16, %15, %33, %32, %11) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %37 = llvm.load %23 : !llvm.ptr -> i64
    %38 = llvm.getelementptr %23[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %39 = llvm.load %38 : !llvm.ptr -> i64
    %40 = llvm.getelementptr %23[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %41 = llvm.load %40 : !llvm.ptr -> i64
    %42 = llvm.getelementptr %23[3] : (!llvm.ptr) -> !llvm.ptr, i64
    %43 = llvm.load %42 : !llvm.ptr -> i64
    %44 = llvm.getelementptr %23[4] : (!llvm.ptr) -> !llvm.ptr, i64
    %45 = llvm.load %44 : !llvm.ptr -> i64
    %46 = llvm.getelementptr %23[5] : (!llvm.ptr) -> !llvm.ptr, i64
    %47 = llvm.load %46 : !llvm.ptr -> i64
    %48 = llvm.getelementptr %23[6] : (!llvm.ptr) -> !llvm.ptr, i64
    %49 = llvm.load %48 : !llvm.ptr -> i64
    %50 = llvm.getelementptr %23[7] : (!llvm.ptr) -> !llvm.ptr, i64
    %51 = llvm.load %50 : !llvm.ptr -> i64
    %52 = llvm.getelementptr %23[8] : (!llvm.ptr) -> !llvm.ptr, i64
    %53 = llvm.load %52 : !llvm.ptr -> i64
    %54 = llvm.getelementptr %23[9] : (!llvm.ptr) -> !llvm.ptr, i64
    %55 = llvm.load %54 : !llvm.ptr -> i64
    %56 = llvm.getelementptr %23[10] : (!llvm.ptr) -> !llvm.ptr, i64
    %57 = llvm.load %56 : !llvm.ptr -> i64
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.mlir.zero : !llvm.ptr
    %60 = llvm.getelementptr %59[%37] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %61 = llvm.ptrtoint %60 : !llvm.ptr to i64
    %62 = llvm.call @malloc(%61) : (i64) -> !llvm.ptr
    %63 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %64 = llvm.insertvalue %62, %63[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.insertvalue %62, %64[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.insertvalue %66, %65[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.insertvalue %37, %67[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.insertvalue %58, %68[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%17 : i64)
  ^bb1(%70: i64):  // 2 preds: ^bb0, ^bb2
    %71 = llvm.icmp "slt" %70, %37 : i64
    llvm.cond_br %71, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %72 = llvm.getelementptr %62[%70] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %72 : i64, !llvm.ptr
    %73 = llvm.add %70, %16  : i64
    llvm.br ^bb1(%73 : i64)
  ^bb3:  // pred: ^bb1
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.alloca %74 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %69, %75 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %78 = llvm.insertvalue %76, %77[0] : !llvm.struct<(i64, ptr)> 
    %79 = llvm.insertvalue %75, %78[1] : !llvm.struct<(i64, ptr)> 
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.mlir.zero : !llvm.ptr
    %82 = llvm.getelementptr %81[%39] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %83 = llvm.ptrtoint %82 : !llvm.ptr to i64
    %84 = llvm.call @malloc(%83) : (i64) -> !llvm.ptr
    %85 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %86 = llvm.insertvalue %84, %85[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.insertvalue %84, %86[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.insertvalue %88, %87[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.insertvalue %39, %89[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %91 = llvm.insertvalue %80, %90[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%17 : i64)
  ^bb4(%92: i64):  // 2 preds: ^bb3, ^bb5
    %93 = llvm.icmp "slt" %92, %39 : i64
    llvm.cond_br %93, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %94 = llvm.getelementptr %84[%92] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %94 : i64, !llvm.ptr
    %95 = llvm.add %92, %16  : i64
    llvm.br ^bb4(%95 : i64)
  ^bb6:  // pred: ^bb4
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.alloca %96 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %91, %97 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %100 = llvm.insertvalue %98, %99[0] : !llvm.struct<(i64, ptr)> 
    %101 = llvm.insertvalue %97, %100[1] : !llvm.struct<(i64, ptr)> 
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.mlir.zero : !llvm.ptr
    %104 = llvm.getelementptr %103[%41] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %105 = llvm.ptrtoint %104 : !llvm.ptr to i64
    %106 = llvm.call @malloc(%105) : (i64) -> !llvm.ptr
    %107 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %108 = llvm.insertvalue %106, %107[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %109 = llvm.insertvalue %106, %108[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.mlir.constant(0 : index) : i64
    %111 = llvm.insertvalue %110, %109[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %112 = llvm.insertvalue %41, %111[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %113 = llvm.insertvalue %102, %112[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%17 : i64)
  ^bb7(%114: i64):  // 2 preds: ^bb6, ^bb8
    %115 = llvm.icmp "slt" %114, %41 : i64
    llvm.cond_br %115, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %116 = llvm.getelementptr %106[%114] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %116 : i64, !llvm.ptr
    %117 = llvm.add %114, %16  : i64
    llvm.br ^bb7(%117 : i64)
  ^bb9:  // pred: ^bb7
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.alloca %118 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %113, %119 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %122 = llvm.insertvalue %120, %121[0] : !llvm.struct<(i64, ptr)> 
    %123 = llvm.insertvalue %119, %122[1] : !llvm.struct<(i64, ptr)> 
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.zero : !llvm.ptr
    %126 = llvm.getelementptr %125[%43] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %127 = llvm.ptrtoint %126 : !llvm.ptr to i64
    %128 = llvm.call @malloc(%127) : (i64) -> !llvm.ptr
    %129 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %130 = llvm.insertvalue %128, %129[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.insertvalue %128, %130[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.mlir.constant(0 : index) : i64
    %133 = llvm.insertvalue %132, %131[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %134 = llvm.insertvalue %43, %133[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %135 = llvm.insertvalue %124, %134[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%17 : i64)
  ^bb10(%136: i64):  // 2 preds: ^bb9, ^bb11
    %137 = llvm.icmp "slt" %136, %43 : i64
    llvm.cond_br %137, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %138 = llvm.getelementptr %128[%136] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %138 : i64, !llvm.ptr
    %139 = llvm.add %136, %16  : i64
    llvm.br ^bb10(%139 : i64)
  ^bb12:  // pred: ^bb10
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.alloca %140 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %135, %141 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %144 = llvm.insertvalue %142, %143[0] : !llvm.struct<(i64, ptr)> 
    %145 = llvm.insertvalue %141, %144[1] : !llvm.struct<(i64, ptr)> 
    %146 = llvm.mlir.constant(1 : index) : i64
    %147 = llvm.mlir.zero : !llvm.ptr
    %148 = llvm.getelementptr %147[%45] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %149 = llvm.ptrtoint %148 : !llvm.ptr to i64
    %150 = llvm.call @malloc(%149) : (i64) -> !llvm.ptr
    %151 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %152 = llvm.insertvalue %150, %151[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %153 = llvm.insertvalue %150, %152[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.insertvalue %154, %153[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.insertvalue %45, %155[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %157 = llvm.insertvalue %146, %156[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%17 : i64)
  ^bb13(%158: i64):  // 2 preds: ^bb12, ^bb14
    %159 = llvm.icmp "slt" %158, %45 : i64
    llvm.cond_br %159, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %160 = llvm.getelementptr %150[%158] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %160 : i64, !llvm.ptr
    %161 = llvm.add %158, %16  : i64
    llvm.br ^bb13(%161 : i64)
  ^bb15:  // pred: ^bb13
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.alloca %162 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %157, %163 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %166 = llvm.insertvalue %164, %165[0] : !llvm.struct<(i64, ptr)> 
    %167 = llvm.insertvalue %163, %166[1] : !llvm.struct<(i64, ptr)> 
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.zero : !llvm.ptr
    %170 = llvm.getelementptr %169[%47] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %171 = llvm.ptrtoint %170 : !llvm.ptr to i64
    %172 = llvm.call @malloc(%171) : (i64) -> !llvm.ptr
    %173 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %174 = llvm.insertvalue %172, %173[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %175 = llvm.insertvalue %172, %174[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %176 = llvm.mlir.constant(0 : index) : i64
    %177 = llvm.insertvalue %176, %175[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %178 = llvm.insertvalue %47, %177[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %179 = llvm.insertvalue %168, %178[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%17 : i64)
  ^bb16(%180: i64):  // 2 preds: ^bb15, ^bb17
    %181 = llvm.icmp "slt" %180, %47 : i64
    llvm.cond_br %181, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %182 = llvm.getelementptr %172[%180] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %182 : i64, !llvm.ptr
    %183 = llvm.add %180, %16  : i64
    llvm.br ^bb16(%183 : i64)
  ^bb18:  // pred: ^bb16
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.alloca %184 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %179, %185 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %188 = llvm.insertvalue %186, %187[0] : !llvm.struct<(i64, ptr)> 
    %189 = llvm.insertvalue %185, %188[1] : !llvm.struct<(i64, ptr)> 
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.mlir.zero : !llvm.ptr
    %192 = llvm.getelementptr %191[%49] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %193 = llvm.ptrtoint %192 : !llvm.ptr to i64
    %194 = llvm.call @malloc(%193) : (i64) -> !llvm.ptr
    %195 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %196 = llvm.insertvalue %194, %195[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %197 = llvm.insertvalue %194, %196[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %198 = llvm.mlir.constant(0 : index) : i64
    %199 = llvm.insertvalue %198, %197[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.insertvalue %49, %199[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %201 = llvm.insertvalue %190, %200[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%17 : i64)
  ^bb19(%202: i64):  // 2 preds: ^bb18, ^bb20
    %203 = llvm.icmp "slt" %202, %49 : i64
    llvm.cond_br %203, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %204 = llvm.getelementptr %194[%202] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %204 : i64, !llvm.ptr
    %205 = llvm.add %202, %16  : i64
    llvm.br ^bb19(%205 : i64)
  ^bb21:  // pred: ^bb19
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.alloca %206 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %201, %207 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %210 = llvm.insertvalue %208, %209[0] : !llvm.struct<(i64, ptr)> 
    %211 = llvm.insertvalue %207, %210[1] : !llvm.struct<(i64, ptr)> 
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.zero : !llvm.ptr
    %214 = llvm.getelementptr %213[%51] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %215 = llvm.ptrtoint %214 : !llvm.ptr to i64
    %216 = llvm.call @malloc(%215) : (i64) -> !llvm.ptr
    %217 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %218 = llvm.insertvalue %216, %217[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %219 = llvm.insertvalue %216, %218[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %220 = llvm.mlir.constant(0 : index) : i64
    %221 = llvm.insertvalue %220, %219[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %222 = llvm.insertvalue %51, %221[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %223 = llvm.insertvalue %212, %222[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%17 : i64)
  ^bb22(%224: i64):  // 2 preds: ^bb21, ^bb23
    %225 = llvm.icmp "slt" %224, %51 : i64
    llvm.cond_br %225, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %226 = llvm.getelementptr %216[%224] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %3, %226 : i64, !llvm.ptr
    %227 = llvm.add %224, %16  : i64
    llvm.br ^bb22(%227 : i64)
  ^bb24:  // pred: ^bb22
    %228 = llvm.mlir.constant(1 : index) : i64
    %229 = llvm.alloca %228 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %223, %229 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %230 = llvm.mlir.constant(1 : index) : i64
    %231 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %232 = llvm.insertvalue %230, %231[0] : !llvm.struct<(i64, ptr)> 
    %233 = llvm.insertvalue %229, %232[1] : !llvm.struct<(i64, ptr)> 
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.mlir.zero : !llvm.ptr
    %236 = llvm.getelementptr %235[%53] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %237 = llvm.ptrtoint %236 : !llvm.ptr to i64
    %238 = llvm.call @malloc(%237) : (i64) -> !llvm.ptr
    %239 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %240 = llvm.insertvalue %238, %239[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %241 = llvm.insertvalue %238, %240[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.insertvalue %242, %241[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %244 = llvm.insertvalue %53, %243[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %245 = llvm.insertvalue %234, %244[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%17 : i64)
  ^bb25(%246: i64):  // 2 preds: ^bb24, ^bb26
    %247 = llvm.icmp "slt" %246, %53 : i64
    llvm.cond_br %247, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %248 = llvm.getelementptr %238[%246] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %2, %248 : f64, !llvm.ptr
    %249 = llvm.add %246, %16  : i64
    llvm.br ^bb25(%249 : i64)
  ^bb27:  // pred: ^bb25
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.alloca %250 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %245, %251 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %254 = llvm.insertvalue %252, %253[0] : !llvm.struct<(i64, ptr)> 
    %255 = llvm.insertvalue %251, %254[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64_i64(%12, %17, %15, %16, %15, %76, %75, %98, %97, %120, %119, %142, %141, %164, %163, %186, %185, %208, %207, %230, %229, %252, %251, %11) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %256 = llvm.mlir.constant(4 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.mul %57, %256  : i64
    %259 = llvm.mlir.zero : !llvm.ptr
    %260 = llvm.getelementptr %259[%258] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %261 = llvm.ptrtoint %260 : !llvm.ptr to i64
    %262 = llvm.mlir.constant(32 : index) : i64
    %263 = llvm.add %261, %262  : i64
    %264 = llvm.call @malloc(%263) : (i64) -> !llvm.ptr
    %265 = llvm.ptrtoint %264 : !llvm.ptr to i64
    %266 = llvm.mlir.constant(1 : index) : i64
    %267 = llvm.sub %262, %266  : i64
    %268 = llvm.add %265, %267  : i64
    %269 = llvm.urem %268, %262  : i64
    %270 = llvm.sub %268, %269  : i64
    %271 = llvm.inttoptr %270 : i64 to !llvm.ptr
    %272 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %273 = llvm.insertvalue %264, %272[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %274 = llvm.insertvalue %271, %273[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %275 = llvm.mlir.constant(0 : index) : i64
    %276 = llvm.insertvalue %275, %274[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %277 = llvm.insertvalue %57, %276[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %278 = llvm.insertvalue %256, %277[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %279 = llvm.insertvalue %256, %278[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %280 = llvm.insertvalue %257, %279[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb28(%17 : i64)
  ^bb28(%281: i64):  // 2 preds: ^bb27, ^bb31
    %282 = llvm.icmp "slt" %281, %57 : i64
    llvm.cond_br %282, ^bb29(%17 : i64), ^bb32
  ^bb29(%283: i64):  // 2 preds: ^bb28, ^bb30
    %284 = llvm.icmp "slt" %283, %10 : i64
    llvm.cond_br %284, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %285 = llvm.mlir.constant(4 : index) : i64
    %286 = llvm.mul %281, %285  : i64
    %287 = llvm.add %286, %283  : i64
    %288 = llvm.getelementptr %271[%287] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %288 : f64, !llvm.ptr
    %289 = llvm.add %283, %16  : i64
    llvm.br ^bb29(%289 : i64)
  ^bb31:  // pred: ^bb29
    %290 = llvm.add %281, %16  : i64
    llvm.br ^bb28(%290 : i64)
  ^bb32:  // pred: ^bb28
    %291 = llvm.mlir.constant(4 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.mul %55, %291  : i64
    %294 = llvm.mlir.zero : !llvm.ptr
    %295 = llvm.getelementptr %294[%293] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %296 = llvm.ptrtoint %295 : !llvm.ptr to i64
    %297 = llvm.mlir.constant(32 : index) : i64
    %298 = llvm.add %296, %297  : i64
    %299 = llvm.call @malloc(%298) : (i64) -> !llvm.ptr
    %300 = llvm.ptrtoint %299 : !llvm.ptr to i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.sub %297, %301  : i64
    %303 = llvm.add %300, %302  : i64
    %304 = llvm.urem %303, %297  : i64
    %305 = llvm.sub %303, %304  : i64
    %306 = llvm.inttoptr %305 : i64 to !llvm.ptr
    %307 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %308 = llvm.insertvalue %299, %307[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %309 = llvm.insertvalue %306, %308[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %310 = llvm.mlir.constant(0 : index) : i64
    %311 = llvm.insertvalue %310, %309[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %312 = llvm.insertvalue %55, %311[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %313 = llvm.insertvalue %291, %312[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %314 = llvm.insertvalue %291, %313[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %315 = llvm.insertvalue %292, %314[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb33(%17 : i64)
  ^bb33(%316: i64):  // 2 preds: ^bb32, ^bb36
    %317 = llvm.icmp "slt" %316, %55 : i64
    llvm.cond_br %317, ^bb34(%17 : i64), ^bb37(%17 : i64)
  ^bb34(%318: i64):  // 2 preds: ^bb33, ^bb35
    %319 = llvm.icmp "slt" %318, %10 : i64
    llvm.cond_br %319, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %320 = llvm.mlir.constant(4 : index) : i64
    %321 = llvm.mul %316, %320  : i64
    %322 = llvm.add %321, %318  : i64
    %323 = llvm.getelementptr %306[%322] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %2, %323 : f64, !llvm.ptr
    %324 = llvm.add %318, %16  : i64
    llvm.br ^bb34(%324 : i64)
  ^bb36:  // pred: ^bb34
    %325 = llvm.add %316, %16  : i64
    llvm.br ^bb33(%325 : i64)
  ^bb37(%326: i64):  // 2 preds: ^bb33, ^bb43
    %327 = llvm.icmp "slt" %326, %55 : i64
    llvm.cond_br %327, ^bb38, ^bb44
  ^bb38:  // pred: ^bb37
    %328 = llvm.add %326, %16  : i64
    %329 = llvm.getelementptr %150[%326] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %330 = llvm.load %329 : !llvm.ptr -> i64
    %331 = llvm.getelementptr %150[%328] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %332 = llvm.load %331 : !llvm.ptr -> i64
    llvm.br ^bb39(%330 : i64)
  ^bb39(%333: i64):  // 2 preds: ^bb38, ^bb42
    %334 = llvm.icmp "slt" %333, %332 : i64
    llvm.cond_br %334, ^bb40(%17 : i64), ^bb43
  ^bb40(%335: i64):  // 2 preds: ^bb39, ^bb41
    %336 = llvm.icmp "slt" %335, %0 : i64
    llvm.cond_br %336, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %337 = llvm.getelementptr %172[%333] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %338 = llvm.load %337 : !llvm.ptr -> i64
    %339 = llvm.getelementptr %238[%333] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %340 = llvm.load %339 : !llvm.ptr -> f64
    %341 = llvm.mlir.constant(4 : index) : i64
    %342 = llvm.mul %338, %341  : i64
    %343 = llvm.add %342, %335  : i64
    %344 = llvm.getelementptr %271[%343] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %345 = llvm.load %344 : !llvm.ptr -> f64
    %346 = llvm.fmul %340, %345  : f64
    %347 = llvm.mlir.constant(4 : index) : i64
    %348 = llvm.mul %326, %347  : i64
    %349 = llvm.add %348, %335  : i64
    %350 = llvm.getelementptr %306[%349] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %351 = llvm.load %350 : !llvm.ptr -> f64
    %352 = llvm.fadd %351, %346  : f64
    %353 = llvm.mlir.constant(4 : index) : i64
    %354 = llvm.mul %326, %353  : i64
    %355 = llvm.add %354, %335  : i64
    %356 = llvm.getelementptr %306[%355] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %352, %356 : f64, !llvm.ptr
    %357 = llvm.add %335, %16  : i64
    llvm.br ^bb40(%357 : i64)
  ^bb42:  // pred: ^bb40
    %358 = llvm.add %333, %16  : i64
    llvm.br ^bb39(%358 : i64)
  ^bb43:  // pred: ^bb39
    llvm.br ^bb37(%328 : i64)
  ^bb44:  // pred: ^bb37
    %359 = llvm.mlir.constant(1 : index) : i64
    %360 = llvm.alloca %359 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %315, %360 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %361 = llvm.mlir.constant(2 : index) : i64
    %362 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %363 = llvm.insertvalue %361, %362[0] : !llvm.struct<(i64, ptr)> 
    %364 = llvm.insertvalue %360, %363[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%361, %360) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @read_input_2D_f64_i64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @read_input_sizes_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}
    