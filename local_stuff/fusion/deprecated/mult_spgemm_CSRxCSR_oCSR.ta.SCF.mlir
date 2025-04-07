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
    %6 = "ta.spTensor_decl"(%5) <{format = "CSR", temporal_tensor = false}> : (index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %c1_0 = arith.constant 1 : index
    %7 = "ta.dim"(%6, %c1_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %8 = "ta.spTensor_decl"(%4, %7) <{format = "CSR", temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill_from_file"(%6) <{filename = "SPARSE_FILE_NAME1", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    %9 = "ta.mul"(%3, %6, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["CSR", "CSR", "CSR"], indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    "ta.set_op"(%9, %8) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %6 = "ta.spTensor_decl"(%5) <{format = "CSR", temporal_tensor = false}> : (index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %c1_0 = arith.constant 1 : index
  %7 = "ta.dim"(%6, %c1_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %8 = "ta.spTensor_decl"(%4, %7) <{format = "CSR", temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill_from_file"(%6) <{filename = "SPARSE_FILE_NAME1", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %9 = "ta.mul"(%3, %6, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["CSR", "CSR", "CSR"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%9, %8) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %6 = "ta.spTensor_decl"(%5) <{format = "CSR", temporal_tensor = false}> : (index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %c1_0 = arith.constant 1 : index
  %7 = "ta.dim"(%6, %c1_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %8 = "ta.spTensor_decl"(%4, %7) <{format = "CSR", temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill_from_file"(%6) <{filename = "SPARSE_FILE_NAME1", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %9 = "it.itree"(%8) ({
    %10 = "it.RootOp"() : () -> !it.index_tree
    %11 = "it.IndexOp"(%10) : (!it.index_tree) -> !it.index
    %12 = "it.IndexOp"(%11) : (!it.index) -> !it.index
    %13 = "it.IndexOp"(%12) : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%8, %11) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_1, %pos_2 = "it.IndexToTensorDim"(%8, %13, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %14 = "it.LHSOperandOp"(%8, %pos, %pos_2, %crd, %crd_1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_3, %pos_4 = "it.IndexToTensorDim"(%3, %11) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_5, %pos_6 = "it.IndexToTensorDim"(%3, %12, %pos_4) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %15 = "it.OperandOp"(%3, %pos_4, %pos_6, %crd_3, %crd_5) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_7, %pos_8 = "it.IndexToTensorDim"(%6, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_9, %pos_10 = "it.IndexToTensorDim"(%6, %13, %pos_8) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %16 = "it.OperandOp"(%6, %pos_8, %pos_10, %crd_7, %crd_9) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %17 = "it.ComputeOp"(%13, %14, %15, %16) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %17 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%9, %8) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %3 = "ta.spTensor_decl"(%2) <{format = "CSR", temporal_tensor = false}> : (index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %4 = "ta.dim"(%3, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %5 = "ta.spTensor_decl"(%1, %4) <{format = "CSR", temporal_tensor = false}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME1", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  %6 = "it.itree"(%5) ({
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %9 = "it.IndexOp"(%7, %8) : (!it.index_tree, !it.domain) -> !it.index
    %10 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %11 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %12 = "it.DomainIntersectionOp"(%11, %10) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %13 = "it.IndexOp"(%9, %12) : (!it.index, !it.domain) -> !it.index
    %14 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %15 = "it.IndexOp"(%13, %14) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%5, %9) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%5, %15, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %16 = "it.LHSOperandOp"(%5, %pos, %pos_1, %crd, %crd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %9) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %13, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %17 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%3, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%3, %15, %pos_7) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %18 = "it.OperandOp"(%3, %pos_7, %pos_9, %crd_6, %crd_8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %19 = "it.ComputeOp"(%15, %16, %17, %18) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %19 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%6, %5) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %alloc_31 = memref.alloc() : memref<13xindex>
  %cast_32 = memref.cast %alloc_31 : memref<13xindex> to memref<*xindex>
  %c-1_33 = arith.constant -1 : index
  %c0_34 = arith.constant 0 : index
  %c1_35 = arith.constant 1 : index
  %c2_36 = arith.constant 2 : index
  %c3_37 = arith.constant 3 : index
  %c1_i32_38 = arith.constant 1 : i32
  %c1_i32_39 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c1_i32_38, %c0_34, %c-1_33, %c1_35, %c-1_33, %cast_32, %c1_i32_39) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_40 = arith.constant 0 : index
  %25 = memref.load %alloc_31[%c0_40] : memref<13xindex>
  %c1_41 = arith.constant 1 : index
  %26 = memref.load %alloc_31[%c1_41] : memref<13xindex>
  %c2_42 = arith.constant 2 : index
  %27 = memref.load %alloc_31[%c2_42] : memref<13xindex>
  %c3_43 = arith.constant 3 : index
  %28 = memref.load %alloc_31[%c3_43] : memref<13xindex>
  %c4_44 = arith.constant 4 : index
  %29 = memref.load %alloc_31[%c4_44] : memref<13xindex>
  %c5_45 = arith.constant 5 : index
  %30 = memref.load %alloc_31[%c5_45] : memref<13xindex>
  %c6_46 = arith.constant 6 : index
  %31 = memref.load %alloc_31[%c6_46] : memref<13xindex>
  %c7_47 = arith.constant 7 : index
  %32 = memref.load %alloc_31[%c7_47] : memref<13xindex>
  %c8_48 = arith.constant 8 : index
  %33 = memref.load %alloc_31[%c8_48] : memref<13xindex>
  %c9_49 = arith.constant 9 : index
  %34 = memref.load %alloc_31[%c9_49] : memref<13xindex>
  %c10_50 = arith.constant 10 : index
  %35 = memref.load %alloc_31[%c10_50] : memref<13xindex>
  %c11_51 = arith.constant 11 : index
  %36 = memref.load %alloc_31[%c11_51] : memref<13xindex>
  %c12_52 = arith.constant 12 : index
  %37 = memref.load %alloc_31[%c12_52] : memref<13xindex>
  %alloc_53 = memref.alloc(%25) : memref<?xi64>
  %c0_i64_54 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_54 : i64) outs(%alloc_53 : memref<?xi64>)
  %cast_55 = memref.cast %alloc_53 : memref<?xi64> to memref<*xi64>
  %alloc_56 = memref.alloc(%26) : memref<?xi64>
  %c0_i64_57 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_57 : i64) outs(%alloc_56 : memref<?xi64>)
  %cast_58 = memref.cast %alloc_56 : memref<?xi64> to memref<*xi64>
  %alloc_59 = memref.alloc(%27) : memref<?xi64>
  %c0_i64_60 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_60 : i64) outs(%alloc_59 : memref<?xi64>)
  %cast_61 = memref.cast %alloc_59 : memref<?xi64> to memref<*xi64>
  %alloc_62 = memref.alloc(%28) : memref<?xi64>
  %c0_i64_63 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_63 : i64) outs(%alloc_62 : memref<?xi64>)
  %cast_64 = memref.cast %alloc_62 : memref<?xi64> to memref<*xi64>
  %alloc_65 = memref.alloc(%29) : memref<?xi64>
  %c0_i64_66 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_66 : i64) outs(%alloc_65 : memref<?xi64>)
  %cast_67 = memref.cast %alloc_65 : memref<?xi64> to memref<*xi64>
  %alloc_68 = memref.alloc(%30) : memref<?xi64>
  %c0_i64_69 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_69 : i64) outs(%alloc_68 : memref<?xi64>)
  %cast_70 = memref.cast %alloc_68 : memref<?xi64> to memref<*xi64>
  %alloc_71 = memref.alloc(%31) : memref<?xi64>
  %c0_i64_72 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_72 : i64) outs(%alloc_71 : memref<?xi64>)
  %cast_73 = memref.cast %alloc_71 : memref<?xi64> to memref<*xi64>
  %alloc_74 = memref.alloc(%32) : memref<?xi64>
  %c0_i64_75 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_75 : i64) outs(%alloc_74 : memref<?xi64>)
  %cast_76 = memref.cast %alloc_74 : memref<?xi64> to memref<*xi64>
  %alloc_77 = memref.alloc(%33) : memref<?xf64>
  %cst_78 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_78 : f64) outs(%alloc_77 : memref<?xf64>)
  %cast_79 = memref.cast %alloc_77 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32_38, %c0_34, %c-1_33, %c1_35, %c-1_33, %cast_55, %cast_58, %cast_61, %cast_64, %cast_67, %cast_70, %cast_73, %cast_76, %cast_79, %c1_i32_39) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %38 = bufferization.to_tensor %alloc_53 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_56 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_59 restrict writable : memref<?xi64>
  %41 = bufferization.to_tensor %alloc_62 restrict writable : memref<?xi64>
  %42 = bufferization.to_tensor %alloc_65 restrict writable : memref<?xi64>
  %43 = bufferization.to_tensor %alloc_68 restrict writable : memref<?xi64>
  %44 = bufferization.to_tensor %alloc_71 restrict writable : memref<?xi64>
  %45 = bufferization.to_tensor %alloc_74 restrict writable : memref<?xi64>
  %46 = bufferization.to_tensor %alloc_77 restrict writable : memref<?xf64>
  %from_elements_80 = tensor.from_elements %34, %35 : tensor<2xindex>
  %47 = "ta.spTensor_construct"(%from_elements_80, %38, %42, %39, %43, %40, %44, %41, %45, %46) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %48 = "ta.dim"(%47, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %49 = "ta.sparse_output_tensor_decl"(%23, %48) <{format = "CSR"}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %50 = "it.itree"(%49) ({
    %51 = "it.RootOp"() : () -> !it.index_tree
    %52 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %53 = "it.IndexOp"(%51, %52) : (!it.index_tree, !it.domain) -> !it.index
    %54 = "it.DomainOp"(%47) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %55 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %56 = "it.DomainIntersectionOp"(%55, %54) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %57 = "it.IndexOp"(%53, %56) : (!it.index, !it.domain) -> !it.index
    %58 = "it.DomainOp"(%47) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %59 = "it.IndexOp"(%57, %58) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%49, %53) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_81, %pos_82 = "it.IndexToTensorDim"(%49, %59, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %60 = "it.LHSOperandOp"(%49, %pos, %pos_82, %crd, %crd_81) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_83, %pos_84 = "it.IndexToTensorDim"(%22, %53) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_85, %pos_86 = "it.IndexToTensorDim"(%22, %57, %pos_84) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %61 = "it.OperandOp"(%22, %pos_84, %pos_86, %crd_83, %crd_85) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_87, %pos_88 = "it.IndexToTensorDim"(%47, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_89, %pos_90 = "it.IndexToTensorDim"(%47, %59, %pos_88) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %62 = "it.OperandOp"(%47, %pos_88, %pos_90, %crd_87, %crd_89) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %63 = "it.ComputeOp"(%59, %60, %61, %62) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %63 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%50, %49) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%49) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %alloc_31 = memref.alloc() : memref<13xindex>
  %cast_32 = memref.cast %alloc_31 : memref<13xindex> to memref<*xindex>
  %c-1_33 = arith.constant -1 : index
  %c0_34 = arith.constant 0 : index
  %c1_35 = arith.constant 1 : index
  %c2_36 = arith.constant 2 : index
  %c3_37 = arith.constant 3 : index
  %c1_i32_38 = arith.constant 1 : i32
  %c1_i32_39 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c1_i32_38, %c0_34, %c-1_33, %c1_35, %c-1_33, %cast_32, %c1_i32_39) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_40 = arith.constant 0 : index
  %25 = memref.load %alloc_31[%c0_40] : memref<13xindex>
  %c1_41 = arith.constant 1 : index
  %26 = memref.load %alloc_31[%c1_41] : memref<13xindex>
  %c2_42 = arith.constant 2 : index
  %27 = memref.load %alloc_31[%c2_42] : memref<13xindex>
  %c3_43 = arith.constant 3 : index
  %28 = memref.load %alloc_31[%c3_43] : memref<13xindex>
  %c4_44 = arith.constant 4 : index
  %29 = memref.load %alloc_31[%c4_44] : memref<13xindex>
  %c5_45 = arith.constant 5 : index
  %30 = memref.load %alloc_31[%c5_45] : memref<13xindex>
  %c6_46 = arith.constant 6 : index
  %31 = memref.load %alloc_31[%c6_46] : memref<13xindex>
  %c7_47 = arith.constant 7 : index
  %32 = memref.load %alloc_31[%c7_47] : memref<13xindex>
  %c8_48 = arith.constant 8 : index
  %33 = memref.load %alloc_31[%c8_48] : memref<13xindex>
  %c9_49 = arith.constant 9 : index
  %34 = memref.load %alloc_31[%c9_49] : memref<13xindex>
  %c10_50 = arith.constant 10 : index
  %35 = memref.load %alloc_31[%c10_50] : memref<13xindex>
  %c11_51 = arith.constant 11 : index
  %36 = memref.load %alloc_31[%c11_51] : memref<13xindex>
  %c12_52 = arith.constant 12 : index
  %37 = memref.load %alloc_31[%c12_52] : memref<13xindex>
  %alloc_53 = memref.alloc(%25) : memref<?xi64>
  %c0_i64_54 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_54 : i64) outs(%alloc_53 : memref<?xi64>)
  %cast_55 = memref.cast %alloc_53 : memref<?xi64> to memref<*xi64>
  %alloc_56 = memref.alloc(%26) : memref<?xi64>
  %c0_i64_57 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_57 : i64) outs(%alloc_56 : memref<?xi64>)
  %cast_58 = memref.cast %alloc_56 : memref<?xi64> to memref<*xi64>
  %alloc_59 = memref.alloc(%27) : memref<?xi64>
  %c0_i64_60 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_60 : i64) outs(%alloc_59 : memref<?xi64>)
  %cast_61 = memref.cast %alloc_59 : memref<?xi64> to memref<*xi64>
  %alloc_62 = memref.alloc(%28) : memref<?xi64>
  %c0_i64_63 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_63 : i64) outs(%alloc_62 : memref<?xi64>)
  %cast_64 = memref.cast %alloc_62 : memref<?xi64> to memref<*xi64>
  %alloc_65 = memref.alloc(%29) : memref<?xi64>
  %c0_i64_66 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_66 : i64) outs(%alloc_65 : memref<?xi64>)
  %cast_67 = memref.cast %alloc_65 : memref<?xi64> to memref<*xi64>
  %alloc_68 = memref.alloc(%30) : memref<?xi64>
  %c0_i64_69 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_69 : i64) outs(%alloc_68 : memref<?xi64>)
  %cast_70 = memref.cast %alloc_68 : memref<?xi64> to memref<*xi64>
  %alloc_71 = memref.alloc(%31) : memref<?xi64>
  %c0_i64_72 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_72 : i64) outs(%alloc_71 : memref<?xi64>)
  %cast_73 = memref.cast %alloc_71 : memref<?xi64> to memref<*xi64>
  %alloc_74 = memref.alloc(%32) : memref<?xi64>
  %c0_i64_75 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_75 : i64) outs(%alloc_74 : memref<?xi64>)
  %cast_76 = memref.cast %alloc_74 : memref<?xi64> to memref<*xi64>
  %alloc_77 = memref.alloc(%33) : memref<?xf64>
  %cst_78 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_78 : f64) outs(%alloc_77 : memref<?xf64>)
  %cast_79 = memref.cast %alloc_77 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32_38, %c0_34, %c-1_33, %c1_35, %c-1_33, %cast_55, %cast_58, %cast_61, %cast_64, %cast_67, %cast_70, %cast_73, %cast_76, %cast_79, %c1_i32_39) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %38 = bufferization.to_tensor %alloc_53 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_56 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_59 restrict writable : memref<?xi64>
  %41 = bufferization.to_tensor %alloc_62 restrict writable : memref<?xi64>
  %42 = bufferization.to_tensor %alloc_65 restrict writable : memref<?xi64>
  %43 = bufferization.to_tensor %alloc_68 restrict writable : memref<?xi64>
  %44 = bufferization.to_tensor %alloc_71 restrict writable : memref<?xi64>
  %45 = bufferization.to_tensor %alloc_74 restrict writable : memref<?xi64>
  %46 = bufferization.to_tensor %alloc_77 restrict writable : memref<?xf64>
  %from_elements_80 = tensor.from_elements %34, %35 : tensor<2xindex>
  %47 = "ta.spTensor_construct"(%from_elements_80, %38, %42, %39, %43, %40, %44, %41, %45, %46) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %48 = "ta.dim"(%47, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %49 = "ta.sparse_output_tensor_decl"(%23, %48) <{format = "CSR"}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %50 = "it.itree"(%49) ({
    %51 = "it.RootOp"() : () -> !it.index_tree
    %52 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %53 = "it.IndexOp"(%51, %52) : (!it.index_tree, !it.domain) -> !it.index
    %54 = "it.DomainOp"(%47) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %55 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %56 = "it.DomainIntersectionOp"(%55, %54) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %57 = "it.IndexOp"(%53, %56) : (!it.index, !it.domain) -> !it.index
    %58 = "it.DomainOp"(%47) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %59 = "it.IndexOp"(%57, %58) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%49, %53) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_81, %pos_82 = "it.IndexToTensorDim"(%49, %59, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %60 = "it.LHSOperandOp"(%49, %pos, %pos_82, %crd, %crd_81) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_83, %pos_84 = "it.IndexToTensorDim"(%22, %53) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_85, %pos_86 = "it.IndexToTensorDim"(%22, %57, %pos_84) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %61 = "it.OperandOp"(%22, %pos_84, %pos_86, %crd_83, %crd_85) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_87, %pos_88 = "it.IndexToTensorDim"(%47, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_89, %pos_90 = "it.IndexToTensorDim"(%47, %59, %pos_88) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %62 = "it.OperandOp"(%47, %pos_88, %pos_90, %crd_87, %crd_89) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %63 = "it.ComputeOp"(%59, %60, %61, %62) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %63 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%50, %49) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%49) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %alloc_31 = memref.alloc() : memref<13xindex>
  %cast_32 = memref.cast %alloc_31 : memref<13xindex> to memref<*xindex>
  %c-1_33 = arith.constant -1 : index
  %c0_34 = arith.constant 0 : index
  %c1_35 = arith.constant 1 : index
  %c2_36 = arith.constant 2 : index
  %c3_37 = arith.constant 3 : index
  %c1_i32_38 = arith.constant 1 : i32
  %c1_i32_39 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c1_i32_38, %c0_34, %c-1_33, %c1_35, %c-1_33, %cast_32, %c1_i32_39) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_40 = arith.constant 0 : index
  %25 = memref.load %alloc_31[%c0_40] : memref<13xindex>
  %c1_41 = arith.constant 1 : index
  %26 = memref.load %alloc_31[%c1_41] : memref<13xindex>
  %c2_42 = arith.constant 2 : index
  %27 = memref.load %alloc_31[%c2_42] : memref<13xindex>
  %c3_43 = arith.constant 3 : index
  %28 = memref.load %alloc_31[%c3_43] : memref<13xindex>
  %c4_44 = arith.constant 4 : index
  %29 = memref.load %alloc_31[%c4_44] : memref<13xindex>
  %c5_45 = arith.constant 5 : index
  %30 = memref.load %alloc_31[%c5_45] : memref<13xindex>
  %c6_46 = arith.constant 6 : index
  %31 = memref.load %alloc_31[%c6_46] : memref<13xindex>
  %c7_47 = arith.constant 7 : index
  %32 = memref.load %alloc_31[%c7_47] : memref<13xindex>
  %c8_48 = arith.constant 8 : index
  %33 = memref.load %alloc_31[%c8_48] : memref<13xindex>
  %c9_49 = arith.constant 9 : index
  %34 = memref.load %alloc_31[%c9_49] : memref<13xindex>
  %c10_50 = arith.constant 10 : index
  %35 = memref.load %alloc_31[%c10_50] : memref<13xindex>
  %c11_51 = arith.constant 11 : index
  %36 = memref.load %alloc_31[%c11_51] : memref<13xindex>
  %c12_52 = arith.constant 12 : index
  %37 = memref.load %alloc_31[%c12_52] : memref<13xindex>
  %alloc_53 = memref.alloc(%25) : memref<?xi64>
  %c0_i64_54 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_54 : i64) outs(%alloc_53 : memref<?xi64>)
  %cast_55 = memref.cast %alloc_53 : memref<?xi64> to memref<*xi64>
  %alloc_56 = memref.alloc(%26) : memref<?xi64>
  %c0_i64_57 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_57 : i64) outs(%alloc_56 : memref<?xi64>)
  %cast_58 = memref.cast %alloc_56 : memref<?xi64> to memref<*xi64>
  %alloc_59 = memref.alloc(%27) : memref<?xi64>
  %c0_i64_60 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_60 : i64) outs(%alloc_59 : memref<?xi64>)
  %cast_61 = memref.cast %alloc_59 : memref<?xi64> to memref<*xi64>
  %alloc_62 = memref.alloc(%28) : memref<?xi64>
  %c0_i64_63 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_63 : i64) outs(%alloc_62 : memref<?xi64>)
  %cast_64 = memref.cast %alloc_62 : memref<?xi64> to memref<*xi64>
  %alloc_65 = memref.alloc(%29) : memref<?xi64>
  %c0_i64_66 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_66 : i64) outs(%alloc_65 : memref<?xi64>)
  %cast_67 = memref.cast %alloc_65 : memref<?xi64> to memref<*xi64>
  %alloc_68 = memref.alloc(%30) : memref<?xi64>
  %c0_i64_69 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_69 : i64) outs(%alloc_68 : memref<?xi64>)
  %cast_70 = memref.cast %alloc_68 : memref<?xi64> to memref<*xi64>
  %alloc_71 = memref.alloc(%31) : memref<?xi64>
  %c0_i64_72 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_72 : i64) outs(%alloc_71 : memref<?xi64>)
  %cast_73 = memref.cast %alloc_71 : memref<?xi64> to memref<*xi64>
  %alloc_74 = memref.alloc(%32) : memref<?xi64>
  %c0_i64_75 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_75 : i64) outs(%alloc_74 : memref<?xi64>)
  %cast_76 = memref.cast %alloc_74 : memref<?xi64> to memref<*xi64>
  %alloc_77 = memref.alloc(%33) : memref<?xf64>
  %cst_78 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_78 : f64) outs(%alloc_77 : memref<?xf64>)
  %cast_79 = memref.cast %alloc_77 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32_38, %c0_34, %c-1_33, %c1_35, %c-1_33, %cast_55, %cast_58, %cast_61, %cast_64, %cast_67, %cast_70, %cast_73, %cast_76, %cast_79, %c1_i32_39) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %38 = bufferization.to_tensor %alloc_53 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_56 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_59 restrict writable : memref<?xi64>
  %41 = bufferization.to_tensor %alloc_62 restrict writable : memref<?xi64>
  %42 = bufferization.to_tensor %alloc_65 restrict writable : memref<?xi64>
  %43 = bufferization.to_tensor %alloc_68 restrict writable : memref<?xi64>
  %44 = bufferization.to_tensor %alloc_71 restrict writable : memref<?xi64>
  %45 = bufferization.to_tensor %alloc_74 restrict writable : memref<?xi64>
  %46 = bufferization.to_tensor %alloc_77 restrict writable : memref<?xf64>
  %from_elements_80 = tensor.from_elements %34, %35 : tensor<2xindex>
  %47 = "ta.spTensor_construct"(%from_elements_80, %38, %42, %39, %43, %40, %44, %41, %45, %46) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %48 = "ta.dim"(%47, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %49 = "ta.sparse_output_tensor_decl"(%23, %48) <{format = "CSR"}> : (index, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %50 = "it.itree"(%49) ({
    %51 = "it.RootOp"() : () -> !it.index_tree
    %52 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %53 = "it.IndexOp"(%51, %52) : (!it.index_tree, !it.domain) -> !it.index
    %54 = "it.DomainOp"(%47) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %55 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %56 = "it.DomainIntersectionOp"(%55, %54) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %57 = "it.IndexOp"(%53, %56) : (!it.index, !it.domain) -> !it.index
    %58 = "it.DomainOp"(%47) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %59 = "it.IndexOp"(%57, %58) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%49, %53) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_81, %pos_82 = "it.IndexToTensorDim"(%49, %59, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %60 = "it.LHSOperandOp"(%49, %pos, %pos_82, %crd, %crd_81) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_83, %pos_84 = "it.IndexToTensorDim"(%22, %53) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_85, %pos_86 = "it.IndexToTensorDim"(%22, %57, %pos_84) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %61 = "it.OperandOp"(%22, %pos_84, %pos_86, %crd_83, %crd_85) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_87, %pos_88 = "it.IndexToTensorDim"(%47, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_89, %pos_90 = "it.IndexToTensorDim"(%47, %59, %pos_88) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %62 = "it.OperandOp"(%47, %pos_88, %pos_90, %crd_87, %crd_89) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %63 = "it.ComputeOp"(%59, %60, %61, %62) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %63 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%50, %49) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%49) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %alloc_31 = memref.alloc() : memref<13xindex>
  %cast_32 = memref.cast %alloc_31 : memref<13xindex> to memref<*xindex>
  %c-1_33 = arith.constant -1 : index
  %c0_34 = arith.constant 0 : index
  %c1_35 = arith.constant 1 : index
  %c2_36 = arith.constant 2 : index
  %c3_37 = arith.constant 3 : index
  %c1_i32_38 = arith.constant 1 : i32
  %c1_i32_39 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c1_i32_38, %c0_34, %c-1_33, %c1_35, %c-1_33, %cast_32, %c1_i32_39) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_40 = arith.constant 0 : index
  %25 = memref.load %alloc_31[%c0_40] : memref<13xindex>
  %c1_41 = arith.constant 1 : index
  %26 = memref.load %alloc_31[%c1_41] : memref<13xindex>
  %c2_42 = arith.constant 2 : index
  %27 = memref.load %alloc_31[%c2_42] : memref<13xindex>
  %c3_43 = arith.constant 3 : index
  %28 = memref.load %alloc_31[%c3_43] : memref<13xindex>
  %c4_44 = arith.constant 4 : index
  %29 = memref.load %alloc_31[%c4_44] : memref<13xindex>
  %c5_45 = arith.constant 5 : index
  %30 = memref.load %alloc_31[%c5_45] : memref<13xindex>
  %c6_46 = arith.constant 6 : index
  %31 = memref.load %alloc_31[%c6_46] : memref<13xindex>
  %c7_47 = arith.constant 7 : index
  %32 = memref.load %alloc_31[%c7_47] : memref<13xindex>
  %c8_48 = arith.constant 8 : index
  %33 = memref.load %alloc_31[%c8_48] : memref<13xindex>
  %c9_49 = arith.constant 9 : index
  %34 = memref.load %alloc_31[%c9_49] : memref<13xindex>
  %c10_50 = arith.constant 10 : index
  %35 = memref.load %alloc_31[%c10_50] : memref<13xindex>
  %c11_51 = arith.constant 11 : index
  %36 = memref.load %alloc_31[%c11_51] : memref<13xindex>
  %c12_52 = arith.constant 12 : index
  %37 = memref.load %alloc_31[%c12_52] : memref<13xindex>
  %alloc_53 = memref.alloc(%25) : memref<?xi64>
  %c0_i64_54 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_54 : i64) outs(%alloc_53 : memref<?xi64>)
  %cast_55 = memref.cast %alloc_53 : memref<?xi64> to memref<*xi64>
  %alloc_56 = memref.alloc(%26) : memref<?xi64>
  %c0_i64_57 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_57 : i64) outs(%alloc_56 : memref<?xi64>)
  %cast_58 = memref.cast %alloc_56 : memref<?xi64> to memref<*xi64>
  %alloc_59 = memref.alloc(%27) : memref<?xi64>
  %c0_i64_60 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_60 : i64) outs(%alloc_59 : memref<?xi64>)
  %cast_61 = memref.cast %alloc_59 : memref<?xi64> to memref<*xi64>
  %alloc_62 = memref.alloc(%28) : memref<?xi64>
  %c0_i64_63 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_63 : i64) outs(%alloc_62 : memref<?xi64>)
  %cast_64 = memref.cast %alloc_62 : memref<?xi64> to memref<*xi64>
  %alloc_65 = memref.alloc(%29) : memref<?xi64>
  %c0_i64_66 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_66 : i64) outs(%alloc_65 : memref<?xi64>)
  %cast_67 = memref.cast %alloc_65 : memref<?xi64> to memref<*xi64>
  %alloc_68 = memref.alloc(%30) : memref<?xi64>
  %c0_i64_69 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_69 : i64) outs(%alloc_68 : memref<?xi64>)
  %cast_70 = memref.cast %alloc_68 : memref<?xi64> to memref<*xi64>
  %alloc_71 = memref.alloc(%31) : memref<?xi64>
  %c0_i64_72 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_72 : i64) outs(%alloc_71 : memref<?xi64>)
  %cast_73 = memref.cast %alloc_71 : memref<?xi64> to memref<*xi64>
  %alloc_74 = memref.alloc(%32) : memref<?xi64>
  %c0_i64_75 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_75 : i64) outs(%alloc_74 : memref<?xi64>)
  %cast_76 = memref.cast %alloc_74 : memref<?xi64> to memref<*xi64>
  %alloc_77 = memref.alloc(%33) : memref<?xf64>
  %cst_78 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_78 : f64) outs(%alloc_77 : memref<?xf64>)
  %cast_79 = memref.cast %alloc_77 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32_38, %c0_34, %c-1_33, %c1_35, %c-1_33, %cast_55, %cast_58, %cast_61, %cast_64, %cast_67, %cast_70, %cast_73, %cast_76, %cast_79, %c1_i32_39) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %38 = bufferization.to_tensor %alloc_53 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_56 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_59 restrict writable : memref<?xi64>
  %41 = bufferization.to_tensor %alloc_62 restrict writable : memref<?xi64>
  %42 = bufferization.to_tensor %alloc_65 restrict writable : memref<?xi64>
  %43 = bufferization.to_tensor %alloc_68 restrict writable : memref<?xi64>
  %44 = bufferization.to_tensor %alloc_71 restrict writable : memref<?xi64>
  %45 = bufferization.to_tensor %alloc_74 restrict writable : memref<?xi64>
  %46 = bufferization.to_tensor %alloc_77 restrict writable : memref<?xf64>
  %from_elements_80 = tensor.from_elements %34, %35 : tensor<2xindex>
  %47 = "ta.spTensor_construct"(%from_elements_80, %38, %42, %39, %43, %40, %44, %41, %45, %46) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %48 = "ta.dim"(%47, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %49 = "it.EmptyDomain"() : () -> !it.domain
  %50 = "it.IndexTreeSparseTensorOp"(%49, %49) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %51 = "it.itree"(%50) ({
    %52 = "it.RootOp"() : () -> !it.index_tree
    %53 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %54 = "it.IndexOp"(%52, %53) : (!it.index_tree, !it.domain) -> !it.index
    %55 = "it.DomainOp"(%47) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %56 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %57 = "it.DomainIntersectionOp"(%56, %55) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %58 = "it.IndexOp"(%54, %57) : (!it.index, !it.domain) -> !it.index
    %59 = "it.DomainOp"(%47) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %60 = "it.IndexOp"(%58, %59) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%50, %54) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_81, %pos_82 = "it.IndexToTensorDim"(%50, %60, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %61 = "it.LHSOperandOp"(%50, %pos, %pos_82, %crd, %crd_81) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_83, %pos_84 = "it.IndexToTensorDim"(%22, %54) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_85, %pos_86 = "it.IndexToTensorDim"(%22, %58, %pos_84) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %62 = "it.OperandOp"(%22, %pos_84, %pos_86, %crd_83, %crd_85) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_87, %pos_88 = "it.IndexToTensorDim"(%47, %58) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_89, %pos_90 = "it.IndexToTensorDim"(%47, %60, %pos_88) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %63 = "it.OperandOp"(%47, %pos_88, %pos_90, %crd_87, %crd_89) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %64 = "it.ComputeOp"(%60, %61, %62, %63) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %64 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%51, %50) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%50) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %alloc_31 = memref.alloc() : memref<13xindex>
  %cast_32 = memref.cast %alloc_31 : memref<13xindex> to memref<*xindex>
  %c-1_33 = arith.constant -1 : index
  %c0_34 = arith.constant 0 : index
  %c1_35 = arith.constant 1 : index
  %c2_36 = arith.constant 2 : index
  %c3_37 = arith.constant 3 : index
  %c1_i32_38 = arith.constant 1 : i32
  %c1_i32_39 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c1_i32_38, %c0_34, %c-1_33, %c1_35, %c-1_33, %cast_32, %c1_i32_39) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_40 = arith.constant 0 : index
  %25 = memref.load %alloc_31[%c0_40] : memref<13xindex>
  %c1_41 = arith.constant 1 : index
  %26 = memref.load %alloc_31[%c1_41] : memref<13xindex>
  %c2_42 = arith.constant 2 : index
  %27 = memref.load %alloc_31[%c2_42] : memref<13xindex>
  %c3_43 = arith.constant 3 : index
  %28 = memref.load %alloc_31[%c3_43] : memref<13xindex>
  %c4_44 = arith.constant 4 : index
  %29 = memref.load %alloc_31[%c4_44] : memref<13xindex>
  %c5_45 = arith.constant 5 : index
  %30 = memref.load %alloc_31[%c5_45] : memref<13xindex>
  %c6_46 = arith.constant 6 : index
  %31 = memref.load %alloc_31[%c6_46] : memref<13xindex>
  %c7_47 = arith.constant 7 : index
  %32 = memref.load %alloc_31[%c7_47] : memref<13xindex>
  %c8_48 = arith.constant 8 : index
  %33 = memref.load %alloc_31[%c8_48] : memref<13xindex>
  %c9_49 = arith.constant 9 : index
  %34 = memref.load %alloc_31[%c9_49] : memref<13xindex>
  %c10_50 = arith.constant 10 : index
  %35 = memref.load %alloc_31[%c10_50] : memref<13xindex>
  %c11_51 = arith.constant 11 : index
  %36 = memref.load %alloc_31[%c11_51] : memref<13xindex>
  %c12_52 = arith.constant 12 : index
  %37 = memref.load %alloc_31[%c12_52] : memref<13xindex>
  %alloc_53 = memref.alloc(%25) : memref<?xi64>
  %c0_i64_54 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_54 : i64) outs(%alloc_53 : memref<?xi64>)
  %cast_55 = memref.cast %alloc_53 : memref<?xi64> to memref<*xi64>
  %alloc_56 = memref.alloc(%26) : memref<?xi64>
  %c0_i64_57 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_57 : i64) outs(%alloc_56 : memref<?xi64>)
  %cast_58 = memref.cast %alloc_56 : memref<?xi64> to memref<*xi64>
  %alloc_59 = memref.alloc(%27) : memref<?xi64>
  %c0_i64_60 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_60 : i64) outs(%alloc_59 : memref<?xi64>)
  %cast_61 = memref.cast %alloc_59 : memref<?xi64> to memref<*xi64>
  %alloc_62 = memref.alloc(%28) : memref<?xi64>
  %c0_i64_63 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_63 : i64) outs(%alloc_62 : memref<?xi64>)
  %cast_64 = memref.cast %alloc_62 : memref<?xi64> to memref<*xi64>
  %alloc_65 = memref.alloc(%29) : memref<?xi64>
  %c0_i64_66 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_66 : i64) outs(%alloc_65 : memref<?xi64>)
  %cast_67 = memref.cast %alloc_65 : memref<?xi64> to memref<*xi64>
  %alloc_68 = memref.alloc(%30) : memref<?xi64>
  %c0_i64_69 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_69 : i64) outs(%alloc_68 : memref<?xi64>)
  %cast_70 = memref.cast %alloc_68 : memref<?xi64> to memref<*xi64>
  %alloc_71 = memref.alloc(%31) : memref<?xi64>
  %c0_i64_72 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_72 : i64) outs(%alloc_71 : memref<?xi64>)
  %cast_73 = memref.cast %alloc_71 : memref<?xi64> to memref<*xi64>
  %alloc_74 = memref.alloc(%32) : memref<?xi64>
  %c0_i64_75 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_75 : i64) outs(%alloc_74 : memref<?xi64>)
  %cast_76 = memref.cast %alloc_74 : memref<?xi64> to memref<*xi64>
  %alloc_77 = memref.alloc(%33) : memref<?xf64>
  %cst_78 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_78 : f64) outs(%alloc_77 : memref<?xf64>)
  %cast_79 = memref.cast %alloc_77 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32_38, %c0_34, %c-1_33, %c1_35, %c-1_33, %cast_55, %cast_58, %cast_61, %cast_64, %cast_67, %cast_70, %cast_73, %cast_76, %cast_79, %c1_i32_39) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %38 = bufferization.to_tensor %alloc_53 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_56 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_59 restrict writable : memref<?xi64>
  %41 = bufferization.to_tensor %alloc_62 restrict writable : memref<?xi64>
  %42 = bufferization.to_tensor %alloc_65 restrict writable : memref<?xi64>
  %43 = bufferization.to_tensor %alloc_68 restrict writable : memref<?xi64>
  %44 = bufferization.to_tensor %alloc_71 restrict writable : memref<?xi64>
  %45 = bufferization.to_tensor %alloc_74 restrict writable : memref<?xi64>
  %46 = bufferization.to_tensor %alloc_77 restrict writable : memref<?xf64>
  %from_elements_80 = tensor.from_elements %34, %35 : tensor<2xindex>
  %47 = "ta.spTensor_construct"(%from_elements_80, %38, %42, %39, %43, %40, %44, %41, %45, %46) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %48 = "ta.dim"(%47, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %49 = "it.EmptyDomain"() : () -> !it.domain
  %50 = "it.IndexTreeSparseTensorOp"(%49, %49) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %51 = "it.itree"(%50) ({
    %52 = "it.RootOp"() : () -> !it.index_tree
    %53 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %54 = "it.IndexOp"(%52, %53) : (!it.index_tree, !it.domain) -> !it.index
    %55 = "it.DomainOp"(%47) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %56 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %57 = "it.DomainIntersectionOp"(%56, %55) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %58 = "it.IndexOp"(%54, %57) : (!it.index, !it.domain) -> !it.index
    %59 = "it.DomainOp"(%47) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %60 = "it.IndexOp"(%58, %59) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%50, %54) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_81, %pos_82 = "it.IndexToTensorDim"(%50, %60, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %61 = "it.LHSOperandOp"(%50, %pos, %pos_82, %crd, %crd_81) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_83, %pos_84 = "it.IndexToTensorDim"(%22, %54) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_85, %pos_86 = "it.IndexToTensorDim"(%22, %58, %pos_84) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %62 = "it.OperandOp"(%22, %pos_84, %pos_86, %crd_83, %crd_85) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_87, %pos_88 = "it.IndexToTensorDim"(%47, %58) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_89, %pos_90 = "it.IndexToTensorDim"(%47, %60, %pos_88) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %63 = "it.OperandOp"(%47, %pos_88, %pos_90, %crd_87, %crd_89) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %64 = "it.ComputeOp"(%60, %61, %62, %63) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %64 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%51, %50) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%50) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %alloc_31 = memref.alloc() : memref<13xindex>
  %cast_32 = memref.cast %alloc_31 : memref<13xindex> to memref<*xindex>
  %c-1_33 = arith.constant -1 : index
  %c0_34 = arith.constant 0 : index
  %c1_35 = arith.constant 1 : index
  %c2_36 = arith.constant 2 : index
  %c3_37 = arith.constant 3 : index
  %c1_i32_38 = arith.constant 1 : i32
  %c1_i32_39 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c1_i32_38, %c0_34, %c-1_33, %c1_35, %c-1_33, %cast_32, %c1_i32_39) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_40 = arith.constant 0 : index
  %25 = memref.load %alloc_31[%c0_40] : memref<13xindex>
  %c1_41 = arith.constant 1 : index
  %26 = memref.load %alloc_31[%c1_41] : memref<13xindex>
  %c2_42 = arith.constant 2 : index
  %27 = memref.load %alloc_31[%c2_42] : memref<13xindex>
  %c3_43 = arith.constant 3 : index
  %28 = memref.load %alloc_31[%c3_43] : memref<13xindex>
  %c4_44 = arith.constant 4 : index
  %29 = memref.load %alloc_31[%c4_44] : memref<13xindex>
  %c5_45 = arith.constant 5 : index
  %30 = memref.load %alloc_31[%c5_45] : memref<13xindex>
  %c6_46 = arith.constant 6 : index
  %31 = memref.load %alloc_31[%c6_46] : memref<13xindex>
  %c7_47 = arith.constant 7 : index
  %32 = memref.load %alloc_31[%c7_47] : memref<13xindex>
  %c8_48 = arith.constant 8 : index
  %33 = memref.load %alloc_31[%c8_48] : memref<13xindex>
  %c9_49 = arith.constant 9 : index
  %34 = memref.load %alloc_31[%c9_49] : memref<13xindex>
  %c10_50 = arith.constant 10 : index
  %35 = memref.load %alloc_31[%c10_50] : memref<13xindex>
  %c11_51 = arith.constant 11 : index
  %36 = memref.load %alloc_31[%c11_51] : memref<13xindex>
  %c12_52 = arith.constant 12 : index
  %37 = memref.load %alloc_31[%c12_52] : memref<13xindex>
  %alloc_53 = memref.alloc(%25) : memref<?xi64>
  %c0_i64_54 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_54 : i64) outs(%alloc_53 : memref<?xi64>)
  %cast_55 = memref.cast %alloc_53 : memref<?xi64> to memref<*xi64>
  %alloc_56 = memref.alloc(%26) : memref<?xi64>
  %c0_i64_57 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_57 : i64) outs(%alloc_56 : memref<?xi64>)
  %cast_58 = memref.cast %alloc_56 : memref<?xi64> to memref<*xi64>
  %alloc_59 = memref.alloc(%27) : memref<?xi64>
  %c0_i64_60 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_60 : i64) outs(%alloc_59 : memref<?xi64>)
  %cast_61 = memref.cast %alloc_59 : memref<?xi64> to memref<*xi64>
  %alloc_62 = memref.alloc(%28) : memref<?xi64>
  %c0_i64_63 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_63 : i64) outs(%alloc_62 : memref<?xi64>)
  %cast_64 = memref.cast %alloc_62 : memref<?xi64> to memref<*xi64>
  %alloc_65 = memref.alloc(%29) : memref<?xi64>
  %c0_i64_66 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_66 : i64) outs(%alloc_65 : memref<?xi64>)
  %cast_67 = memref.cast %alloc_65 : memref<?xi64> to memref<*xi64>
  %alloc_68 = memref.alloc(%30) : memref<?xi64>
  %c0_i64_69 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_69 : i64) outs(%alloc_68 : memref<?xi64>)
  %cast_70 = memref.cast %alloc_68 : memref<?xi64> to memref<*xi64>
  %alloc_71 = memref.alloc(%31) : memref<?xi64>
  %c0_i64_72 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_72 : i64) outs(%alloc_71 : memref<?xi64>)
  %cast_73 = memref.cast %alloc_71 : memref<?xi64> to memref<*xi64>
  %alloc_74 = memref.alloc(%32) : memref<?xi64>
  %c0_i64_75 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_75 : i64) outs(%alloc_74 : memref<?xi64>)
  %cast_76 = memref.cast %alloc_74 : memref<?xi64> to memref<*xi64>
  %alloc_77 = memref.alloc(%33) : memref<?xf64>
  %cst_78 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_78 : f64) outs(%alloc_77 : memref<?xf64>)
  %cast_79 = memref.cast %alloc_77 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32_38, %c0_34, %c-1_33, %c1_35, %c-1_33, %cast_55, %cast_58, %cast_61, %cast_64, %cast_67, %cast_70, %cast_73, %cast_76, %cast_79, %c1_i32_39) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %38 = bufferization.to_tensor %alloc_53 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_56 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_59 restrict writable : memref<?xi64>
  %41 = bufferization.to_tensor %alloc_62 restrict writable : memref<?xi64>
  %42 = bufferization.to_tensor %alloc_65 restrict writable : memref<?xi64>
  %43 = bufferization.to_tensor %alloc_68 restrict writable : memref<?xi64>
  %44 = bufferization.to_tensor %alloc_71 restrict writable : memref<?xi64>
  %45 = bufferization.to_tensor %alloc_74 restrict writable : memref<?xi64>
  %46 = bufferization.to_tensor %alloc_77 restrict writable : memref<?xf64>
  %from_elements_80 = tensor.from_elements %34, %35 : tensor<2xindex>
  %47 = "ta.spTensor_construct"(%from_elements_80, %38, %42, %39, %43, %40, %44, %41, %45, %46) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %48 = "ta.SpTensorGetDimSize"(%47) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %49 = "it.EmptyDomain"() : () -> !it.domain
  %50 = "it.IndexTreeSparseTensorOp"(%49, %49) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %51 = "it.itree"(%50) ({
    %52 = "it.RootOp"() : () -> !it.index_tree
    %53 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %54 = "it.IndexOp"(%52, %53) : (!it.index_tree, !it.domain) -> !it.index
    %55 = "it.DomainOp"(%47) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %56 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %57 = "it.DomainIntersectionOp"(%56, %55) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %58 = "it.IndexOp"(%54, %57) : (!it.index, !it.domain) -> !it.index
    %59 = "it.DomainOp"(%47) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %60 = "it.IndexOp"(%58, %59) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%50, %54) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_81, %pos_82 = "it.IndexToTensorDim"(%50, %60, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %61 = "it.LHSOperandOp"(%50, %pos, %pos_82, %crd, %crd_81) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_83, %pos_84 = "it.IndexToTensorDim"(%22, %54) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_85, %pos_86 = "it.IndexToTensorDim"(%22, %58, %pos_84) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %62 = "it.OperandOp"(%22, %pos_84, %pos_86, %crd_83, %crd_85) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_87, %pos_88 = "it.IndexToTensorDim"(%47, %58) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_89, %pos_90 = "it.IndexToTensorDim"(%47, %60, %pos_88) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %63 = "it.OperandOp"(%47, %pos_88, %pos_90, %crd_87, %crd_89) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %64 = "it.ComputeOp"(%60, %61, %62, %63) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %64 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%51, %50) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.print"(%50) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %alloc_31 = memref.alloc() : memref<13xindex>
  %cast_32 = memref.cast %alloc_31 : memref<13xindex> to memref<*xindex>
  %c-1_33 = arith.constant -1 : index
  %c0_34 = arith.constant 0 : index
  %c1_35 = arith.constant 1 : index
  %c2_36 = arith.constant 2 : index
  %c3_37 = arith.constant 3 : index
  %c1_i32_38 = arith.constant 1 : i32
  %c1_i32_39 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c1_i32_38, %c0_34, %c-1_33, %c1_35, %c-1_33, %cast_32, %c1_i32_39) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_40 = arith.constant 0 : index
  %25 = memref.load %alloc_31[%c0_40] : memref<13xindex>
  %c1_41 = arith.constant 1 : index
  %26 = memref.load %alloc_31[%c1_41] : memref<13xindex>
  %c2_42 = arith.constant 2 : index
  %27 = memref.load %alloc_31[%c2_42] : memref<13xindex>
  %c3_43 = arith.constant 3 : index
  %28 = memref.load %alloc_31[%c3_43] : memref<13xindex>
  %c4_44 = arith.constant 4 : index
  %29 = memref.load %alloc_31[%c4_44] : memref<13xindex>
  %c5_45 = arith.constant 5 : index
  %30 = memref.load %alloc_31[%c5_45] : memref<13xindex>
  %c6_46 = arith.constant 6 : index
  %31 = memref.load %alloc_31[%c6_46] : memref<13xindex>
  %c7_47 = arith.constant 7 : index
  %32 = memref.load %alloc_31[%c7_47] : memref<13xindex>
  %c8_48 = arith.constant 8 : index
  %33 = memref.load %alloc_31[%c8_48] : memref<13xindex>
  %c9_49 = arith.constant 9 : index
  %34 = memref.load %alloc_31[%c9_49] : memref<13xindex>
  %c10_50 = arith.constant 10 : index
  %35 = memref.load %alloc_31[%c10_50] : memref<13xindex>
  %c11_51 = arith.constant 11 : index
  %36 = memref.load %alloc_31[%c11_51] : memref<13xindex>
  %c12_52 = arith.constant 12 : index
  %37 = memref.load %alloc_31[%c12_52] : memref<13xindex>
  %alloc_53 = memref.alloc(%25) : memref<?xi64>
  %c0_i64_54 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_54 : i64) outs(%alloc_53 : memref<?xi64>)
  %cast_55 = memref.cast %alloc_53 : memref<?xi64> to memref<*xi64>
  %alloc_56 = memref.alloc(%26) : memref<?xi64>
  %c0_i64_57 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_57 : i64) outs(%alloc_56 : memref<?xi64>)
  %cast_58 = memref.cast %alloc_56 : memref<?xi64> to memref<*xi64>
  %alloc_59 = memref.alloc(%27) : memref<?xi64>
  %c0_i64_60 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_60 : i64) outs(%alloc_59 : memref<?xi64>)
  %cast_61 = memref.cast %alloc_59 : memref<?xi64> to memref<*xi64>
  %alloc_62 = memref.alloc(%28) : memref<?xi64>
  %c0_i64_63 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_63 : i64) outs(%alloc_62 : memref<?xi64>)
  %cast_64 = memref.cast %alloc_62 : memref<?xi64> to memref<*xi64>
  %alloc_65 = memref.alloc(%29) : memref<?xi64>
  %c0_i64_66 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_66 : i64) outs(%alloc_65 : memref<?xi64>)
  %cast_67 = memref.cast %alloc_65 : memref<?xi64> to memref<*xi64>
  %alloc_68 = memref.alloc(%30) : memref<?xi64>
  %c0_i64_69 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_69 : i64) outs(%alloc_68 : memref<?xi64>)
  %cast_70 = memref.cast %alloc_68 : memref<?xi64> to memref<*xi64>
  %alloc_71 = memref.alloc(%31) : memref<?xi64>
  %c0_i64_72 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_72 : i64) outs(%alloc_71 : memref<?xi64>)
  %cast_73 = memref.cast %alloc_71 : memref<?xi64> to memref<*xi64>
  %alloc_74 = memref.alloc(%32) : memref<?xi64>
  %c0_i64_75 = arith.constant 0 : i64
  linalg.fill ins(%c0_i64_75 : i64) outs(%alloc_74 : memref<?xi64>)
  %cast_76 = memref.cast %alloc_74 : memref<?xi64> to memref<*xi64>
  %alloc_77 = memref.alloc(%33) : memref<?xf64>
  %cst_78 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_78 : f64) outs(%alloc_77 : memref<?xf64>)
  %cast_79 = memref.cast %alloc_77 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32_38, %c0_34, %c-1_33, %c1_35, %c-1_33, %cast_55, %cast_58, %cast_61, %cast_64, %cast_67, %cast_70, %cast_73, %cast_76, %cast_79, %c1_i32_39) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %38 = bufferization.to_tensor %alloc_53 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_56 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_59 restrict writable : memref<?xi64>
  %41 = bufferization.to_tensor %alloc_62 restrict writable : memref<?xi64>
  %42 = bufferization.to_tensor %alloc_65 restrict writable : memref<?xi64>
  %43 = bufferization.to_tensor %alloc_68 restrict writable : memref<?xi64>
  %44 = bufferization.to_tensor %alloc_71 restrict writable : memref<?xi64>
  %45 = bufferization.to_tensor %alloc_74 restrict writable : memref<?xi64>
  %46 = bufferization.to_tensor %alloc_77 restrict writable : memref<?xf64>
  %from_elements_80 = tensor.from_elements %34, %35 : tensor<2xindex>
  %47 = "ta.spTensor_construct"(%from_elements_80, %38, %42, %39, %43, %40, %44, %41, %45, %46) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %48 = "ta.SpTensorGetDimSize"(%47) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %49 = "it.EmptyDomain"() : () -> !it.domain
  %50 = "it.IndexTreeSparseTensorOp"(%49, %49) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %51 = "it.itree"(%50) ({
    %52 = "it.RootOp"() : () -> !it.index_tree
    %53 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %54 = "it.IndexOp"(%52, %53) : (!it.index_tree, !it.domain) -> !it.index
    %55 = "it.DomainOp"(%47) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %56 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %57 = "it.DomainIntersectionOp"(%56, %55) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %58 = "it.IndexOp"(%54, %57) : (!it.index, !it.domain) -> !it.index
    %59 = "it.DomainOp"(%47) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %60 = "it.IndexOp"(%58, %59) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%50, %54) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_81, %pos_82 = "it.IndexToTensorDim"(%50, %60, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %61 = "it.LHSOperandOp"(%50, %pos, %pos_82, %crd, %crd_81) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_83, %pos_84 = "it.IndexToTensorDim"(%22, %54) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_85, %pos_86 = "it.IndexToTensorDim"(%22, %58, %pos_84) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %62 = "it.OperandOp"(%22, %pos_84, %pos_86, %crd_83, %crd_85) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_87, %pos_88 = "it.IndexToTensorDim"(%47, %58) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_89, %pos_90 = "it.IndexToTensorDim"(%47, %60, %pos_88) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %63 = "it.OperandOp"(%47, %pos_88, %pos_90, %crd_87, %crd_89) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %64 = "it.ComputeOp"(%60, %61, %62, %63) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %64 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.print"(%51) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_0 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_18 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_19 = memref.alloc() : memref<13xindex>
  %cast_20 = memref.cast %alloc_19 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_20, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %25 = memref.load %alloc_19[%c0] : memref<13xindex>
  %26 = memref.load %alloc_19[%c1] : memref<13xindex>
  %27 = memref.load %alloc_19[%c2] : memref<13xindex>
  %28 = memref.load %alloc_19[%c3] : memref<13xindex>
  %29 = memref.load %alloc_19[%c4] : memref<13xindex>
  %30 = memref.load %alloc_19[%c5] : memref<13xindex>
  %31 = memref.load %alloc_19[%c6] : memref<13xindex>
  %32 = memref.load %alloc_19[%c7] : memref<13xindex>
  %33 = memref.load %alloc_19[%c8] : memref<13xindex>
  %34 = memref.load %alloc_19[%c9] : memref<13xindex>
  %35 = memref.load %alloc_19[%c10] : memref<13xindex>
  %alloc_21 = memref.alloc(%25) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_21 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%26) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_24 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_25 = memref.alloc(%27) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_25 : memref<?xi64>)
  %cast_26 = memref.cast %alloc_25 : memref<?xi64> to memref<*xi64>
  %alloc_27 = memref.alloc(%28) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_27 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_27 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%29) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_29 : memref<?xi64>)
  %cast_30 = memref.cast %alloc_29 : memref<?xi64> to memref<*xi64>
  %alloc_31 = memref.alloc(%30) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_31 : memref<?xi64>)
  %cast_32 = memref.cast %alloc_31 : memref<?xi64> to memref<*xi64>
  %alloc_33 = memref.alloc(%31) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_33 : memref<?xi64>)
  %cast_34 = memref.cast %alloc_33 : memref<?xi64> to memref<*xi64>
  %alloc_35 = memref.alloc(%32) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_35 : memref<?xi64>)
  %cast_36 = memref.cast %alloc_35 : memref<?xi64> to memref<*xi64>
  %alloc_37 = memref.alloc(%33) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_37 : memref<?xf64>)
  %cast_38 = memref.cast %alloc_37 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_22, %cast_24, %cast_26, %cast_28, %cast_30, %cast_32, %cast_34, %cast_36, %cast_38, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %36 = bufferization.to_tensor %alloc_21 restrict writable : memref<?xi64>
  %37 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %38 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_27 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xi64>
  %41 = bufferization.to_tensor %alloc_31 restrict writable : memref<?xi64>
  %42 = bufferization.to_tensor %alloc_33 restrict writable : memref<?xi64>
  %43 = bufferization.to_tensor %alloc_35 restrict writable : memref<?xi64>
  %44 = bufferization.to_tensor %alloc_37 restrict writable : memref<?xf64>
  %from_elements_39 = tensor.from_elements %34, %35 : tensor<2xindex>
  %45 = "ta.spTensor_construct"(%from_elements_39, %36, %40, %37, %41, %38, %42, %39, %43, %44) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %46 = "ta.SpTensorGetDimPos"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %47 = "ta.SpTensorGetDimCrd"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_40 = tensor.dim %46, %c0 : tensor<?xi64>
  %dim_41 = tensor.dim %47, %c0 : tensor<?xi64>
  %48 = "ta.SpTensorGetDimSize"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %49 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %50 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %51 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %52 = "it.NestedDomainOp"(%50, %51, %48) : (!it.domain, !it.domain, index) -> !it.domain
  %53 = "it.IndexTreeSparseTensorOp"(%49, %52) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %54 = "it.itree"(%53) ({
    %55 = "it.RootOp"() : () -> !it.index_tree
    %56 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %57 = "it.IndexOp"(%55, %56) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %58 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %59 = "it.IndexOp"(%57, %58) : (!it.index, !it.domain) -> !it.index
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%45, %59) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %60 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos_43) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %61 = "it.IndexOp"(%59, %60) : (!it.index, !it.domain) -> !it.index
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%53, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%53, %61, %pos_45) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %62 = "it.LHSOperandOp"(%53, %pos_45, %pos_47, %crd_44, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%20, %59, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %63 = "it.OperandOp"(%20, %pos, %pos_49, %crd, %crd_48) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%45, %61, %pos_43) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %64 = "it.OperandOp"(%45, %pos_43, %pos_51, %crd_42, %crd_50) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %65 = "it.ComputeOp"(%61, %62, %63, %64) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %65 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.print"(%54) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::IndexTreeWorkspaceTransformationsPass () //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_0 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_18 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_19 = memref.alloc() : memref<13xindex>
  %cast_20 = memref.cast %alloc_19 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_20, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %25 = memref.load %alloc_19[%c0] : memref<13xindex>
  %26 = memref.load %alloc_19[%c1] : memref<13xindex>
  %27 = memref.load %alloc_19[%c2] : memref<13xindex>
  %28 = memref.load %alloc_19[%c3] : memref<13xindex>
  %29 = memref.load %alloc_19[%c4] : memref<13xindex>
  %30 = memref.load %alloc_19[%c5] : memref<13xindex>
  %31 = memref.load %alloc_19[%c6] : memref<13xindex>
  %32 = memref.load %alloc_19[%c7] : memref<13xindex>
  %33 = memref.load %alloc_19[%c8] : memref<13xindex>
  %34 = memref.load %alloc_19[%c9] : memref<13xindex>
  %35 = memref.load %alloc_19[%c10] : memref<13xindex>
  %alloc_21 = memref.alloc(%25) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_21 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%26) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_24 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_25 = memref.alloc(%27) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_25 : memref<?xi64>)
  %cast_26 = memref.cast %alloc_25 : memref<?xi64> to memref<*xi64>
  %alloc_27 = memref.alloc(%28) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_27 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_27 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%29) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_29 : memref<?xi64>)
  %cast_30 = memref.cast %alloc_29 : memref<?xi64> to memref<*xi64>
  %alloc_31 = memref.alloc(%30) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_31 : memref<?xi64>)
  %cast_32 = memref.cast %alloc_31 : memref<?xi64> to memref<*xi64>
  %alloc_33 = memref.alloc(%31) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_33 : memref<?xi64>)
  %cast_34 = memref.cast %alloc_33 : memref<?xi64> to memref<*xi64>
  %alloc_35 = memref.alloc(%32) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_35 : memref<?xi64>)
  %cast_36 = memref.cast %alloc_35 : memref<?xi64> to memref<*xi64>
  %alloc_37 = memref.alloc(%33) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_37 : memref<?xf64>)
  %cast_38 = memref.cast %alloc_37 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_22, %cast_24, %cast_26, %cast_28, %cast_30, %cast_32, %cast_34, %cast_36, %cast_38, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %36 = bufferization.to_tensor %alloc_21 restrict writable : memref<?xi64>
  %37 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %38 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_27 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xi64>
  %41 = bufferization.to_tensor %alloc_31 restrict writable : memref<?xi64>
  %42 = bufferization.to_tensor %alloc_33 restrict writable : memref<?xi64>
  %43 = bufferization.to_tensor %alloc_35 restrict writable : memref<?xi64>
  %44 = bufferization.to_tensor %alloc_37 restrict writable : memref<?xf64>
  %from_elements_39 = tensor.from_elements %34, %35 : tensor<2xindex>
  %45 = "ta.spTensor_construct"(%from_elements_39, %36, %40, %37, %41, %38, %42, %39, %43, %44) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %46 = "ta.SpTensorGetDimPos"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %47 = "ta.SpTensorGetDimCrd"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_40 = tensor.dim %46, %c0 : tensor<?xi64>
  %dim_41 = tensor.dim %47, %c0 : tensor<?xi64>
  %48 = "ta.SpTensorGetDimSize"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %49 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %50 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %51 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %52 = "it.NestedDomainOp"(%50, %51, %48) : (!it.domain, !it.domain, index) -> !it.domain
  %53 = "it.IndexTreeSparseTensorOp"(%49, %52) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %54 = "ta.AllocWorkspace"(%53) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, -9223372036854775808>
  %55:2 = "it.itree"(%53, %54) ({
    %56 = "it.RootOp"() : () -> !it.index_tree
    %57 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %58 = "it.IndexOp"(%56, %57) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %58) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %59 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %60 = "it.WorkspaceStartRowOp"(%58, %54) : (!it.index, !ta.workspace<f64, i64, -9223372036854775808>) -> !ta.workspace<f64, i64, -9223372036854775808>
    %61 = "it.IndexOp"(%58, %59) : (!it.index, !it.domain) -> !it.index
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%45, %61) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %62 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos_43) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %63 = "it.IndexOp"(%61, %62) : (!it.index, !it.domain) -> !it.index
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%20, %61, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %64 = "it.OperandOp"(%20, %pos, %pos_45, %crd, %crd_44) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%45, %63, %pos_43) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %65 = "it.OperandOp"(%45, %pos_43, %pos_47, %crd_42, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%60, %63) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, -9223372036854775808>, !it.index) -> (index, index)
    %66 = "it.LHSOperandOp"(%60, %pos_49, %crd_48) : (!ta.workspace<f64, i64, -9223372036854775808>, index, index) -> !it.operand
    %67 = "it.ComputeOp"(%63, %66, %64, %65) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.workspace<f64, i64, -9223372036854775808>
    %68 = "ta.SpTensorGetDimSize"(%67) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, -9223372036854775808>) -> index
    %69 = "it.WorkspaceDomainOp"(%67, %68) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, -9223372036854775808>, index) -> !it.domain
    %70 = "it.IndexOp"(%58, %69) : (!it.index, !it.domain) -> !it.index
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%53, %58) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%53, %70, %pos_51) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %71 = "it.LHSOperandOp"(%53, %pos_51, %pos_53, %crd_50, %crd_52) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_54, %pos_55 = "it.IndexToTensorDim"(%67, %70) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, -9223372036854775808>, !it.index) -> (index, index)
    %72 = "it.OperandOp"(%67, %pos_55, %crd_54) : (!ta.workspace<f64, i64, -9223372036854775808>, index, index) -> !it.operand
    %73 = "it.ComputeOp"(%70, %71, %72) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_noop"}> : (!it.index, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %73, %54 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>)
  "ta.print"(%55#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_0 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_18 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_19 = memref.alloc() : memref<13xindex>
  %cast_20 = memref.cast %alloc_19 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_20, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %25 = memref.load %alloc_19[%c0] : memref<13xindex>
  %26 = memref.load %alloc_19[%c1] : memref<13xindex>
  %27 = memref.load %alloc_19[%c2] : memref<13xindex>
  %28 = memref.load %alloc_19[%c3] : memref<13xindex>
  %29 = memref.load %alloc_19[%c4] : memref<13xindex>
  %30 = memref.load %alloc_19[%c5] : memref<13xindex>
  %31 = memref.load %alloc_19[%c6] : memref<13xindex>
  %32 = memref.load %alloc_19[%c7] : memref<13xindex>
  %33 = memref.load %alloc_19[%c8] : memref<13xindex>
  %34 = memref.load %alloc_19[%c9] : memref<13xindex>
  %35 = memref.load %alloc_19[%c10] : memref<13xindex>
  %alloc_21 = memref.alloc(%25) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_21 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%26) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_24 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_25 = memref.alloc(%27) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_25 : memref<?xi64>)
  %cast_26 = memref.cast %alloc_25 : memref<?xi64> to memref<*xi64>
  %alloc_27 = memref.alloc(%28) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_27 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_27 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%29) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_29 : memref<?xi64>)
  %cast_30 = memref.cast %alloc_29 : memref<?xi64> to memref<*xi64>
  %alloc_31 = memref.alloc(%30) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_31 : memref<?xi64>)
  %cast_32 = memref.cast %alloc_31 : memref<?xi64> to memref<*xi64>
  %alloc_33 = memref.alloc(%31) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_33 : memref<?xi64>)
  %cast_34 = memref.cast %alloc_33 : memref<?xi64> to memref<*xi64>
  %alloc_35 = memref.alloc(%32) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_35 : memref<?xi64>)
  %cast_36 = memref.cast %alloc_35 : memref<?xi64> to memref<*xi64>
  %alloc_37 = memref.alloc(%33) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_37 : memref<?xf64>)
  %cast_38 = memref.cast %alloc_37 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_22, %cast_24, %cast_26, %cast_28, %cast_30, %cast_32, %cast_34, %cast_36, %cast_38, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %36 = bufferization.to_tensor %alloc_21 restrict writable : memref<?xi64>
  %37 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %38 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_27 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xi64>
  %41 = bufferization.to_tensor %alloc_31 restrict writable : memref<?xi64>
  %42 = bufferization.to_tensor %alloc_33 restrict writable : memref<?xi64>
  %43 = bufferization.to_tensor %alloc_35 restrict writable : memref<?xi64>
  %44 = bufferization.to_tensor %alloc_37 restrict writable : memref<?xf64>
  %from_elements_39 = tensor.from_elements %34, %35 : tensor<2xindex>
  %45 = "ta.spTensor_construct"(%from_elements_39, %36, %40, %37, %41, %38, %42, %39, %43, %44) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %46 = "ta.SpTensorGetDimPos"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %47 = "ta.SpTensorGetDimCrd"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_40 = tensor.dim %46, %c0 : tensor<?xi64>
  %dim_41 = tensor.dim %47, %c0 : tensor<?xi64>
  %48 = "ta.SpTensorGetDimSize"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %49 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %50 = "it.DeclDomainOp"(%48, %21) <{indices_bitwidth = 64 : i32, is_dynamic = false}> : (index, index) -> !it.symbolic_domain<64>
  %51 = "it.itree"(%50) ({
    %55 = "it.RootOp"() : () -> !it.index_tree
    %56 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %57 = "it.IndexOp"(%55, %56) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %58 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %59 = "it.IndexOp"(%57, %58) : (!it.index, !it.domain) -> !it.index
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%45, %59) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %60 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos_43) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %61 = "it.IndexOp"(%59, %60) : (!it.index, !it.domain) -> !it.index
    %62 = "it.ComputeSymbolicDomainOp"(%61, %50) <{is_unique = false}> : (!it.index, !it.symbolic_domain<64>) -> !it.symbolic_domain<64>
    %63 = "it.ComputeSymbolicDomainRowOp"(%57, %62) <{needs_mark = true}> : (!it.index, !it.symbolic_domain<64>) -> !it.symbolic_domain<64>
    it.yield %63 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %52 = "it.IndexTreeSparseTensorOp"(%49, %51) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %53 = "ta.AllocWorkspace"(%52) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, -9223372036854775808>
  %54:2 = "it.itree"(%52, %53) ({
    %55 = "it.RootOp"() : () -> !it.index_tree
    %56 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %57 = "it.IndexOp"(%55, %56) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %58 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %59 = "it.WorkspaceStartRowOp"(%57, %53) : (!it.index, !ta.workspace<f64, i64, -9223372036854775808>) -> !ta.workspace<f64, i64, -9223372036854775808>
    %60 = "it.IndexOp"(%57, %58) : (!it.index, !it.domain) -> !it.index
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%45, %60) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %61 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos_43) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %62 = "it.IndexOp"(%60, %61) : (!it.index, !it.domain) -> !it.index
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%20, %60, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %63 = "it.OperandOp"(%20, %pos, %pos_45, %crd, %crd_44) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%45, %62, %pos_43) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %64 = "it.OperandOp"(%45, %pos_43, %pos_47, %crd_42, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%59, %62) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, -9223372036854775808>, !it.index) -> (index, index)
    %65 = "it.LHSOperandOp"(%59, %pos_49, %crd_48) : (!ta.workspace<f64, i64, -9223372036854775808>, index, index) -> !it.operand
    %66 = "it.ComputeOp"(%62, %65, %63, %64) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.workspace<f64, i64, -9223372036854775808>
    %67 = "ta.SpTensorGetDimSize"(%66) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, -9223372036854775808>) -> index
    %68 = "it.WorkspaceDomainOp"(%66, %67) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, -9223372036854775808>, index) -> !it.domain
    %69 = "it.IndexOp"(%57, %68) : (!it.index, !it.domain) -> !it.index
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%52, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%52, %69, %pos_51) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %70 = "it.LHSOperandOp"(%52, %pos_51, %pos_53, %crd_50, %crd_52) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_54, %pos_55 = "it.IndexToTensorDim"(%66, %69) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, -9223372036854775808>, !it.index) -> (index, index)
    %71 = "it.OperandOp"(%66, %pos_55, %crd_54) : (!ta.workspace<f64, i64, -9223372036854775808>, index, index) -> !it.operand
    %72 = "it.ComputeOp"(%69, %70, %71) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_noop"}> : (!it.index, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %72, %53 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>)
  "ta.print"(%54#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_0 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_18 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_19 = memref.alloc() : memref<13xindex>
  %cast_20 = memref.cast %alloc_19 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_20, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %25 = memref.load %alloc_19[%c0] : memref<13xindex>
  %26 = memref.load %alloc_19[%c1] : memref<13xindex>
  %27 = memref.load %alloc_19[%c2] : memref<13xindex>
  %28 = memref.load %alloc_19[%c3] : memref<13xindex>
  %29 = memref.load %alloc_19[%c4] : memref<13xindex>
  %30 = memref.load %alloc_19[%c5] : memref<13xindex>
  %31 = memref.load %alloc_19[%c6] : memref<13xindex>
  %32 = memref.load %alloc_19[%c7] : memref<13xindex>
  %33 = memref.load %alloc_19[%c8] : memref<13xindex>
  %34 = memref.load %alloc_19[%c9] : memref<13xindex>
  %35 = memref.load %alloc_19[%c10] : memref<13xindex>
  %alloc_21 = memref.alloc(%25) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_21 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%26) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_24 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_25 = memref.alloc(%27) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_25 : memref<?xi64>)
  %cast_26 = memref.cast %alloc_25 : memref<?xi64> to memref<*xi64>
  %alloc_27 = memref.alloc(%28) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_27 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_27 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%29) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_29 : memref<?xi64>)
  %cast_30 = memref.cast %alloc_29 : memref<?xi64> to memref<*xi64>
  %alloc_31 = memref.alloc(%30) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_31 : memref<?xi64>)
  %cast_32 = memref.cast %alloc_31 : memref<?xi64> to memref<*xi64>
  %alloc_33 = memref.alloc(%31) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_33 : memref<?xi64>)
  %cast_34 = memref.cast %alloc_33 : memref<?xi64> to memref<*xi64>
  %alloc_35 = memref.alloc(%32) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_35 : memref<?xi64>)
  %cast_36 = memref.cast %alloc_35 : memref<?xi64> to memref<*xi64>
  %alloc_37 = memref.alloc(%33) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_37 : memref<?xf64>)
  %cast_38 = memref.cast %alloc_37 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_22, %cast_24, %cast_26, %cast_28, %cast_30, %cast_32, %cast_34, %cast_36, %cast_38, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %36 = bufferization.to_tensor %alloc_21 restrict writable : memref<?xi64>
  %37 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %38 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_27 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xi64>
  %41 = bufferization.to_tensor %alloc_31 restrict writable : memref<?xi64>
  %42 = bufferization.to_tensor %alloc_33 restrict writable : memref<?xi64>
  %43 = bufferization.to_tensor %alloc_35 restrict writable : memref<?xi64>
  %44 = bufferization.to_tensor %alloc_37 restrict writable : memref<?xf64>
  %from_elements_39 = tensor.from_elements %34, %35 : tensor<2xindex>
  %45 = "ta.spTensor_construct"(%from_elements_39, %36, %40, %37, %41, %38, %42, %39, %43, %44) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %46 = "ta.SpTensorGetDimPos"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %47 = "ta.SpTensorGetDimCrd"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_40 = tensor.dim %46, %c0 : tensor<?xi64>
  %dim_41 = tensor.dim %47, %c0 : tensor<?xi64>
  %48 = "ta.SpTensorGetDimSize"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %49 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %50 = "it.DeclDomainOp"(%48, %21) <{indices_bitwidth = 64 : i32, is_dynamic = false}> : (index, index) -> !it.symbolic_domain<64>
  %51 = "it.itree"(%50) ({
    %c0_42 = arith.constant 0 : index
    %c1_43 = arith.constant 1 : index
    %55 = scf.for %arg0 = %c0_42 to %21 step %c1_43 iter_args(%arg1 = %50) -> (!it.symbolic_domain<64>) {
      %c1_44 = arith.constant 1 : index
      %56 = arith.addi %arg0, %c1_44 : index
      %extracted = tensor.extract %22[%arg0] : tensor<?xi64>
      %57 = arith.index_cast %extracted : i64 to index
      %extracted_45 = tensor.extract %22[%56] : tensor<?xi64>
      %58 = arith.index_cast %extracted_45 : i64 to index
      %c1_46 = arith.constant 1 : index
      %59 = scf.for %arg2 = %57 to %58 step %c1_46 iter_args(%arg3 = %arg1) -> (!it.symbolic_domain<64>) {
        %61 = "ta.SpTensorGetCrd"(%20, %arg2) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %62 = arith.index_cast %61 : i64 to index
        %c1_47 = arith.constant 1 : index
        %63 = arith.addi %62, %c1_47 : index
        %extracted_48 = tensor.extract %46[%62] : tensor<?xi64>
        %64 = arith.index_cast %extracted_48 : i64 to index
        %extracted_49 = tensor.extract %46[%63] : tensor<?xi64>
        %65 = arith.index_cast %extracted_49 : i64 to index
        %c1_50 = arith.constant 1 : index
        %66 = scf.for %arg4 = %64 to %65 step %c1_50 iter_args(%arg5 = %arg3) -> (!it.symbolic_domain<64>) {
          %67 = "ta.SpTensorGetCrd"(%45, %arg4) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %68 = arith.index_cast %67 : i64 to index
          %69 = "it.SymbolicDomainInsertOp"(%arg5, %68) <{is_unique = false}> : (!it.symbolic_domain<64>, index) -> !it.symbolic_domain<64>
          scf.yield %69 : !it.symbolic_domain<64>
        }
        scf.yield %66 : !it.symbolic_domain<64>
      }
      %60 = "it.SymbolicDomainEndRowOp"(%59) <{needs_mark = true}> : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
      scf.yield %60 : !it.symbolic_domain<64>
    }
    it.yield %55 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %52 = "it.IndexTreeSparseTensorOp"(%49, %51) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %53 = "ta.AllocWorkspace"(%52) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, -9223372036854775808>
  %54:2 = "it.itree"(%52, %53) ({
    %c0_42 = arith.constant 0 : index
    %c1_43 = arith.constant 1 : index
    %55:2 = scf.for %arg0 = %c0_42 to %21 step %c1_43 iter_args(%arg1 = %52, %arg2 = %53) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) {
      %56 = "ta.WorkspaceClear"(%arg2) : (!ta.workspace<f64, i64, -9223372036854775808>) -> !ta.workspace<f64, i64, -9223372036854775808>
      %c1_44 = arith.constant 1 : index
      %57 = arith.addi %arg0, %c1_44 : index
      %extracted = tensor.extract %22[%arg0] : tensor<?xi64>
      %58 = arith.index_cast %extracted : i64 to index
      %extracted_45 = tensor.extract %22[%57] : tensor<?xi64>
      %59 = arith.index_cast %extracted_45 : i64 to index
      %c1_46 = arith.constant 1 : index
      %60:2 = scf.for %arg3 = %58 to %59 step %c1_46 iter_args(%arg4 = %arg1, %arg5 = %56) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) {
        %63 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %64 = arith.index_cast %63 : i64 to index
        %c1_49 = arith.constant 1 : index
        %65 = arith.addi %64, %c1_49 : index
        %extracted_50 = tensor.extract %46[%64] : tensor<?xi64>
        %66 = arith.index_cast %extracted_50 : i64 to index
        %extracted_51 = tensor.extract %46[%65] : tensor<?xi64>
        %67 = arith.index_cast %extracted_51 : i64 to index
        %c1_52 = arith.constant 1 : index
        %68:2 = scf.for %arg6 = %66 to %67 step %c1_52 iter_args(%arg7 = %arg4, %arg8 = %arg5) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) {
          %69 = "ta.SpTensorGetCrd"(%45, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %70 = arith.index_cast %69 : i64 to index
          %71 = "ta.TAExtractOp"(%20, %arg3, %arg0, %64) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %72 = "ta.TAExtractOp"(%45, %arg6, %64, %70) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %73 = arith.mulf %71, %72 : f64
          %74 = "ta.TAExtractOp"(%arg8, %70, %70) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, -9223372036854775808>, index, index) -> f64
          %75 = arith.addf %74, %73 : f64
          %76 = "ta.TAInsertOp"(%arg8, %70, %70, %75) : (!ta.workspace<f64, i64, -9223372036854775808>, index, index, f64) -> !ta.workspace<f64, i64, -9223372036854775808>
          scf.yield %arg7, %76 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
        }
        scf.yield %68#0, %68#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
      }
      %c0_47 = arith.constant 0 : index
      %61 = "ta.SpTensorGetNNZ"(%60#1) : (!ta.workspace<f64, i64, -9223372036854775808>) -> index
      %c1_48 = arith.constant 1 : index
      %62:2 = scf.for %arg3 = %c0_47 to %61 step %c1_48 iter_args(%arg4 = %60#0, %arg5 = %60#1) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) {
        %63 = "ta.SpTensorGetCrd"(%60#1, %arg3) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, -9223372036854775808>, index) -> i64
        %64 = arith.index_cast %63 : i64 to index
        %65 = "ta.TensorFindPos"(%arg4) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
        %66 = "ta.TAExtractOp"(%arg5, %arg3, %64) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, -9223372036854775808>, index, index) -> f64
        %67 = "ta.TAExtractOp"(%arg4, %65, %arg0, %64) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
        %68 = "ta.TAInsertOp"(%arg4, %arg0, %65, %arg0, %64, %66) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %68, %arg5 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
      }
      scf.yield %62#0, %62#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
    }
    it.yield %55#0, %55#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>)
  "ta.print"(%54#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_0 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %20 = "ta.spTensor_construct"(%from_elements, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %21 = "ta.SpTensorGetDimSize"(%20) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %22 = "ta.SpTensorGetDimPos"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %23 = "ta.SpTensorGetDimCrd"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim = tensor.dim %22, %c0 : tensor<?xi64>
  %dim_18 = tensor.dim %23, %c0 : tensor<?xi64>
  %24 = "ta.SpTensorGetDimSize"(%20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %alloc_19 = memref.alloc() : memref<13xindex>
  %cast_20 = memref.cast %alloc_19 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_20, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %25 = memref.load %alloc_19[%c0] : memref<13xindex>
  %26 = memref.load %alloc_19[%c1] : memref<13xindex>
  %27 = memref.load %alloc_19[%c2] : memref<13xindex>
  %28 = memref.load %alloc_19[%c3] : memref<13xindex>
  %29 = memref.load %alloc_19[%c4] : memref<13xindex>
  %30 = memref.load %alloc_19[%c5] : memref<13xindex>
  %31 = memref.load %alloc_19[%c6] : memref<13xindex>
  %32 = memref.load %alloc_19[%c7] : memref<13xindex>
  %33 = memref.load %alloc_19[%c8] : memref<13xindex>
  %34 = memref.load %alloc_19[%c9] : memref<13xindex>
  %35 = memref.load %alloc_19[%c10] : memref<13xindex>
  %alloc_21 = memref.alloc(%25) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_21 : memref<?xi64>)
  %cast_22 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
  %alloc_23 = memref.alloc(%26) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_24 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_25 = memref.alloc(%27) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_25 : memref<?xi64>)
  %cast_26 = memref.cast %alloc_25 : memref<?xi64> to memref<*xi64>
  %alloc_27 = memref.alloc(%28) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_27 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_27 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%29) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_29 : memref<?xi64>)
  %cast_30 = memref.cast %alloc_29 : memref<?xi64> to memref<*xi64>
  %alloc_31 = memref.alloc(%30) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_31 : memref<?xi64>)
  %cast_32 = memref.cast %alloc_31 : memref<?xi64> to memref<*xi64>
  %alloc_33 = memref.alloc(%31) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_33 : memref<?xi64>)
  %cast_34 = memref.cast %alloc_33 : memref<?xi64> to memref<*xi64>
  %alloc_35 = memref.alloc(%32) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_35 : memref<?xi64>)
  %cast_36 = memref.cast %alloc_35 : memref<?xi64> to memref<*xi64>
  %alloc_37 = memref.alloc(%33) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_37 : memref<?xf64>)
  %cast_38 = memref.cast %alloc_37 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_22, %cast_24, %cast_26, %cast_28, %cast_30, %cast_32, %cast_34, %cast_36, %cast_38, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %36 = bufferization.to_tensor %alloc_21 restrict writable : memref<?xi64>
  %37 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %38 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_27 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xi64>
  %41 = bufferization.to_tensor %alloc_31 restrict writable : memref<?xi64>
  %42 = bufferization.to_tensor %alloc_33 restrict writable : memref<?xi64>
  %43 = bufferization.to_tensor %alloc_35 restrict writable : memref<?xi64>
  %44 = bufferization.to_tensor %alloc_37 restrict writable : memref<?xf64>
  %from_elements_39 = tensor.from_elements %34, %35 : tensor<2xindex>
  %45 = "ta.spTensor_construct"(%from_elements_39, %36, %40, %37, %41, %38, %42, %39, %43, %44) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %46 = "ta.SpTensorGetDimPos"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %47 = "ta.SpTensorGetDimCrd"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_40 = tensor.dim %46, %c0 : tensor<?xi64>
  %dim_41 = tensor.dim %47, %c0 : tensor<?xi64>
  %48 = "ta.SpTensorGetDimSize"(%45) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %idx0 = index.constant 0
  %idx1 = index.constant 1
  %49 = index.add %21, %idx1
  %alloc_42 = memref.alloc(%49) : memref<?xi64>
  %c0_i64_43 = arith.constant 0 : i64
  memref.store %c0_i64_43, %alloc_42[%idx0] : memref<?xi64>
  %alloc_44 = memref.alloc(%48) : memref<?xi64>
  %50 = builtin.unrealized_conversion_cast %idx0, %49, %idx0, %48, %alloc_42, %alloc_44 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
  %51:6 = "it.itree"(%idx0, %49, %idx0, %48, %alloc_42, %alloc_44) ({
    %c0_58 = arith.constant 0 : index
    %c1_59 = arith.constant 1 : index
    %67:6 = scf.for %arg0 = %c0_58 to %21 step %c1_59 iter_args(%arg1 = %idx0, %arg2 = %49, %arg3 = %idx0, %arg4 = %48, %arg5 = %alloc_42, %arg6 = %alloc_44) -> (index, index, index, index, memref<?xi64>, memref<?xi64>) {
      %c1_60 = arith.constant 1 : index
      %69 = arith.addi %arg0, %c1_60 : index
      %extracted = tensor.extract %22[%arg0] : tensor<?xi64>
      %70 = arith.index_cast %extracted : i64 to index
      %extracted_61 = tensor.extract %22[%69] : tensor<?xi64>
      %71 = arith.index_cast %extracted_61 : i64 to index
      %c1_62 = arith.constant 1 : index
      %72:6 = scf.for %arg7 = %70 to %71 step %c1_62 iter_args(%arg8 = %arg1, %arg9 = %arg2, %arg10 = %arg3, %arg11 = %arg4, %arg12 = %arg5, %arg13 = %arg6) -> (index, index, index, index, memref<?xi64>, memref<?xi64>) {
        %77 = "ta.SpTensorGetCrd"(%20, %arg7) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %78 = arith.index_cast %77 : i64 to index
        %c1_64 = arith.constant 1 : index
        %79 = arith.addi %78, %c1_64 : index
        %extracted_65 = tensor.extract %46[%78] : tensor<?xi64>
        %80 = arith.index_cast %extracted_65 : i64 to index
        %extracted_66 = tensor.extract %46[%79] : tensor<?xi64>
        %81 = arith.index_cast %extracted_66 : i64 to index
        %c1_67 = arith.constant 1 : index
        %82:6 = scf.for %arg14 = %80 to %81 step %c1_67 iter_args(%arg15 = %arg8, %arg16 = %arg9, %arg17 = %arg10, %arg18 = %arg11, %arg19 = %arg12, %arg20 = %arg13) -> (index, index, index, index, memref<?xi64>, memref<?xi64>) {
          %84 = "ta.SpTensorGetCrd"(%45, %arg14) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %85 = arith.index_cast %84 : i64 to index
          %idx1_68 = index.constant 1
          %86 = index.add %arg15, %idx1_68
          %87 = arith.index_cast %86 : index to i64
          %88 = memref.load %arg20[%85] : memref<?xi64>
          %89 = arith.cmpi eq, %87, %88 : i64
          %90 = scf.if %89 -> (index) {
            scf.yield %arg17 : index
          } else {
            memref.store %87, %arg20[%85] : memref<?xi64>
            %92 = index.add %arg17, %idx1_68
            scf.yield %92 : index
          }
          %91 = builtin.unrealized_conversion_cast %arg15, %arg16, %90, %arg18, %arg19, %arg20 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
          scf.yield %arg15, %arg16, %90, %arg18, %arg19, %arg20 : index, index, index, index, memref<?xi64>, memref<?xi64>
        }
        %83 = builtin.unrealized_conversion_cast %82#0, %82#1, %82#2, %82#3, %82#4, %82#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
        scf.yield %82#0, %82#1, %82#2, %82#3, %82#4, %82#5 : index, index, index, index, memref<?xi64>, memref<?xi64>
      }
      %73 = builtin.unrealized_conversion_cast %72#0, %72#1, %72#2, %72#3, %72#4, %72#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
      %idx1_63 = index.constant 1
      %74 = index.add %72#0, %idx1_63
      %75 = arith.index_cast %72#2 : index to i64
      memref.store %75, %72#4[%74] : memref<?xi64>
      %76 = builtin.unrealized_conversion_cast %74, %72#1, %72#2, %72#3, %72#4, %72#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
      scf.yield %74, %72#1, %72#2, %72#3, %72#4, %72#5 : index, index, index, index, memref<?xi64>, memref<?xi64>
    }
    %68 = builtin.unrealized_conversion_cast %67#0, %67#1, %67#2, %67#3, %67#4, %67#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
    it.yield %67#0, %67#1, %67#2, %67#3, %67#4, %67#5 : index, index, index, index, memref<?xi64>, memref<?xi64>
  }) : (index, index, index, index, memref<?xi64>, memref<?xi64>) -> (index, index, index, index, memref<?xi64>, memref<?xi64>)
  %52 = builtin.unrealized_conversion_cast %51#0, %51#1, %51#2, %51#3, %51#4, %51#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
  %idx0_45 = index.constant 0
  %idx1_46 = index.constant 1
  %53 = arith.index_cast %21 : index to i64
  %idx1_47 = index.constant 1
  %alloc_48 = memref.alloc(%idx1_47) : memref<?xi64>
  memref.store %53, %alloc_48[%idx0_45] : memref<?xi64>
  %alloc_49 = memref.alloc() : memref<0xi64>
  %alloc_50 = memref.alloc() : memref<0xi64>
  %alloc_51 = memref.alloc() : memref<0xi64>
  %54 = bufferization.to_tensor %alloc_48 restrict writable : memref<?xi64>
  %55 = bufferization.to_tensor %alloc_49 restrict writable : memref<0xi64>
  %56 = bufferization.to_tensor %alloc_50 restrict writable : memref<0xi64>
  %57 = bufferization.to_tensor %alloc_51 restrict writable : memref<0xi64>
  %58 = index.mul %idx1_46, %21
  %alloc_52 = memref.alloc(%51#2) : memref<?xi64>
  %alloc_53 = memref.alloc() : memref<0xi64>
  %alloc_54 = memref.alloc() : memref<0xi64>
  %59 = bufferization.to_tensor %51#4 restrict writable : memref<?xi64>
  %60 = bufferization.to_tensor %alloc_52 restrict writable : memref<?xi64>
  %61 = bufferization.to_tensor %alloc_53 restrict writable : memref<0xi64>
  %62 = bufferization.to_tensor %alloc_54 restrict writable : memref<0xi64>
  %alloc_55 = memref.alloc(%51#2) : memref<?xf64>
  %cst_56 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_45 to %51#2 step %idx1_46 {
    memref.store %cst_56, %alloc_55[%arg0] : memref<?xf64>
  }
  %63 = bufferization.to_tensor %alloc_55 restrict writable : memref<?xf64>
  %from_elements_57 = tensor.from_elements %21, %51#3 : tensor<2xindex>
  %64 = "ta.spTensor_construct"(%from_elements_57, %54, %59, %55, %60, %56, %61, %57, %62, %63) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<0xi64>, tensor<?xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %65 = "ta.AllocWorkspace"(%64) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, -9223372036854775808>
  %66:2 = "it.itree"(%64, %65) ({
    %c0_58 = arith.constant 0 : index
    %c1_59 = arith.constant 1 : index
    %67:2 = scf.for %arg0 = %c0_58 to %21 step %c1_59 iter_args(%arg1 = %64, %arg2 = %65) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) {
      %68 = "ta.WorkspaceClear"(%arg2) : (!ta.workspace<f64, i64, -9223372036854775808>) -> !ta.workspace<f64, i64, -9223372036854775808>
      %c1_60 = arith.constant 1 : index
      %69 = arith.addi %arg0, %c1_60 : index
      %extracted = tensor.extract %22[%arg0] : tensor<?xi64>
      %70 = arith.index_cast %extracted : i64 to index
      %extracted_61 = tensor.extract %22[%69] : tensor<?xi64>
      %71 = arith.index_cast %extracted_61 : i64 to index
      %c1_62 = arith.constant 1 : index
      %72:2 = scf.for %arg3 = %70 to %71 step %c1_62 iter_args(%arg4 = %arg1, %arg5 = %68) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) {
        %75 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %76 = arith.index_cast %75 : i64 to index
        %c1_65 = arith.constant 1 : index
        %77 = arith.addi %76, %c1_65 : index
        %extracted_66 = tensor.extract %46[%76] : tensor<?xi64>
        %78 = arith.index_cast %extracted_66 : i64 to index
        %extracted_67 = tensor.extract %46[%77] : tensor<?xi64>
        %79 = arith.index_cast %extracted_67 : i64 to index
        %c1_68 = arith.constant 1 : index
        %80:2 = scf.for %arg6 = %78 to %79 step %c1_68 iter_args(%arg7 = %arg4, %arg8 = %arg5) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) {
          %81 = "ta.SpTensorGetCrd"(%45, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %82 = arith.index_cast %81 : i64 to index
          %83 = "ta.TAExtractOp"(%20, %arg3, %arg0, %76) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %84 = "ta.TAExtractOp"(%45, %arg6, %76, %82) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %85 = arith.mulf %83, %84 : f64
          %86 = "ta.TAExtractOp"(%arg8, %82, %82) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, -9223372036854775808>, index, index) -> f64
          %87 = arith.addf %86, %85 : f64
          %88 = "ta.TAInsertOp"(%arg8, %82, %82, %87) : (!ta.workspace<f64, i64, -9223372036854775808>, index, index, f64) -> !ta.workspace<f64, i64, -9223372036854775808>
          scf.yield %arg7, %88 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
        }
        scf.yield %80#0, %80#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
      }
      %c0_63 = arith.constant 0 : index
      %73 = "ta.SpTensorGetNNZ"(%72#1) : (!ta.workspace<f64, i64, -9223372036854775808>) -> index
      %c1_64 = arith.constant 1 : index
      %74:2 = scf.for %arg3 = %c0_63 to %73 step %c1_64 iter_args(%arg4 = %72#0, %arg5 = %72#1) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) {
        %75 = "ta.SpTensorGetCrd"(%72#1, %arg3) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, -9223372036854775808>, index) -> i64
        %76 = arith.index_cast %75 : i64 to index
        %77 = "ta.TensorFindPos"(%arg4) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
        %78 = "ta.TAExtractOp"(%arg5, %arg3, %76) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, -9223372036854775808>, index, index) -> f64
        %79 = "ta.TAExtractOp"(%arg4, %77, %arg0, %76) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
        %80 = "ta.TAInsertOp"(%arg4, %arg0, %77, %arg0, %76, %78) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %80, %arg5 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
      }
      scf.yield %74#0, %74#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
    }
    it.yield %67#0, %67#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>)
  "ta.print"(%66#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  return
}

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_0 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %idx0 = index.constant 0
  %idx0_18 = index.constant 0
  %20 = builtin.unrealized_conversion_cast %from_elements, %idx0, %11, %idx0_18, %15, %16, %19 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_19 = index.constant 0
  %extracted = tensor.extract %from_elements[%idx0_19] : tensor<2xindex>
  %dim = tensor.dim %15, %c0 : tensor<?xi64>
  %dim_20 = tensor.dim %16, %c0 : tensor<?xi64>
  %idx1 = index.constant 1
  %extracted_21 = tensor.extract %from_elements[%idx1] : tensor<2xindex>
  %alloc_22 = memref.alloc() : memref<13xindex>
  %cast_23 = memref.cast %alloc_22 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_23, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %21 = memref.load %alloc_22[%c0] : memref<13xindex>
  %22 = memref.load %alloc_22[%c1] : memref<13xindex>
  %23 = memref.load %alloc_22[%c2] : memref<13xindex>
  %24 = memref.load %alloc_22[%c3] : memref<13xindex>
  %25 = memref.load %alloc_22[%c4] : memref<13xindex>
  %26 = memref.load %alloc_22[%c5] : memref<13xindex>
  %27 = memref.load %alloc_22[%c6] : memref<13xindex>
  %28 = memref.load %alloc_22[%c7] : memref<13xindex>
  %29 = memref.load %alloc_22[%c8] : memref<13xindex>
  %30 = memref.load %alloc_22[%c9] : memref<13xindex>
  %31 = memref.load %alloc_22[%c10] : memref<13xindex>
  %alloc_24 = memref.alloc(%21) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%22) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%23) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%24) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%25) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%26) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%27) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_36 : memref<?xi64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xi64> to memref<*xi64>
  %alloc_38 = memref.alloc(%28) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_38 : memref<?xi64>)
  %cast_39 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
  %alloc_40 = memref.alloc(%29) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_40 : memref<?xf64>)
  %cast_41 = memref.cast %alloc_40 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %cast_39, %cast_41, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %32 = bufferization.to_tensor %alloc_24 restrict writable : memref<?xi64>
  %33 = bufferization.to_tensor %alloc_26 restrict writable : memref<?xi64>
  %34 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
  %35 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %36 = bufferization.to_tensor %alloc_32 restrict writable : memref<?xi64>
  %37 = bufferization.to_tensor %alloc_34 restrict writable : memref<?xi64>
  %38 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_38 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_40 restrict writable : memref<?xf64>
  %from_elements_42 = tensor.from_elements %30, %31 : tensor<2xindex>
  %idx0_43 = index.constant 0
  %idx0_44 = index.constant 0
  %41 = builtin.unrealized_conversion_cast %from_elements_42, %idx0_43, %32, %idx0_44, %36, %37, %40 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %dim_45 = tensor.dim %36, %c0 : tensor<?xi64>
  %dim_46 = tensor.dim %37, %c0 : tensor<?xi64>
  %idx1_47 = index.constant 1
  %extracted_48 = tensor.extract %from_elements_42[%idx1_47] : tensor<2xindex>
  %idx0_49 = index.constant 0
  %idx1_50 = index.constant 1
  %42 = index.add %extracted, %idx1_50
  %alloc_51 = memref.alloc(%42) : memref<?xi64>
  %c0_i64_52 = arith.constant 0 : i64
  memref.store %c0_i64_52, %alloc_51[%idx0_49] : memref<?xi64>
  %alloc_53 = memref.alloc(%extracted_48) : memref<?xi64>
  %43 = builtin.unrealized_conversion_cast %idx0_49, %42, %idx0_49, %extracted_48, %alloc_51, %alloc_53 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
  %44:6 = "it.itree"(%idx0_49, %42, %idx0_49, %extracted_48, %alloc_51, %alloc_53) ({
    %c0_74 = arith.constant 0 : index
    %c1_75 = arith.constant 1 : index
    %66:6 = scf.for %arg0 = %c0_74 to %extracted step %c1_75 iter_args(%arg1 = %idx0_49, %arg2 = %42, %arg3 = %idx0_49, %arg4 = %extracted_48, %arg5 = %alloc_51, %arg6 = %alloc_53) -> (index, index, index, index, memref<?xi64>, memref<?xi64>) {
      %c1_76 = arith.constant 1 : index
      %68 = arith.addi %arg0, %c1_76 : index
      %extracted_77 = tensor.extract %15[%arg0] : tensor<?xi64>
      %69 = arith.index_cast %extracted_77 : i64 to index
      %extracted_78 = tensor.extract %15[%68] : tensor<?xi64>
      %70 = arith.index_cast %extracted_78 : i64 to index
      %c1_79 = arith.constant 1 : index
      %71:6 = scf.for %arg7 = %69 to %70 step %c1_79 iter_args(%arg8 = %arg1, %arg9 = %arg2, %arg10 = %arg3, %arg11 = %arg4, %arg12 = %arg5, %arg13 = %arg6) -> (index, index, index, index, memref<?xi64>, memref<?xi64>) {
        %extracted_81 = tensor.extract %16[%arg7] : tensor<?xi64>
        %76 = arith.index_cast %extracted_81 : i64 to index
        %c1_82 = arith.constant 1 : index
        %77 = arith.addi %76, %c1_82 : index
        %extracted_83 = tensor.extract %36[%76] : tensor<?xi64>
        %78 = arith.index_cast %extracted_83 : i64 to index
        %extracted_84 = tensor.extract %36[%77] : tensor<?xi64>
        %79 = arith.index_cast %extracted_84 : i64 to index
        %c1_85 = arith.constant 1 : index
        %80:6 = scf.for %arg14 = %78 to %79 step %c1_85 iter_args(%arg15 = %arg8, %arg16 = %arg9, %arg17 = %arg10, %arg18 = %arg11, %arg19 = %arg12, %arg20 = %arg13) -> (index, index, index, index, memref<?xi64>, memref<?xi64>) {
          %extracted_86 = tensor.extract %37[%arg14] : tensor<?xi64>
          %82 = arith.index_cast %extracted_86 : i64 to index
          %idx1_87 = index.constant 1
          %83 = index.add %arg15, %idx1_87
          %84 = arith.index_cast %83 : index to i64
          %85 = memref.load %arg20[%82] : memref<?xi64>
          %86 = arith.cmpi eq, %84, %85 : i64
          %87 = scf.if %86 -> (index) {
            scf.yield %arg17 : index
          } else {
            memref.store %84, %arg20[%82] : memref<?xi64>
            %89 = index.add %arg17, %idx1_87
            scf.yield %89 : index
          }
          %88 = builtin.unrealized_conversion_cast %arg15, %arg16, %87, %arg18, %arg19, %arg20 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
          scf.yield %arg15, %arg16, %87, %arg18, %arg19, %arg20 : index, index, index, index, memref<?xi64>, memref<?xi64>
        }
        %81 = builtin.unrealized_conversion_cast %80#0, %80#1, %80#2, %80#3, %80#4, %80#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
        scf.yield %80#0, %80#1, %80#2, %80#3, %80#4, %80#5 : index, index, index, index, memref<?xi64>, memref<?xi64>
      }
      %72 = builtin.unrealized_conversion_cast %71#0, %71#1, %71#2, %71#3, %71#4, %71#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
      %idx1_80 = index.constant 1
      %73 = index.add %71#0, %idx1_80
      %74 = arith.index_cast %71#2 : index to i64
      memref.store %74, %71#4[%73] : memref<?xi64>
      %75 = builtin.unrealized_conversion_cast %73, %71#1, %71#2, %71#3, %71#4, %71#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
      scf.yield %73, %71#1, %71#2, %71#3, %71#4, %71#5 : index, index, index, index, memref<?xi64>, memref<?xi64>
    }
    %67 = builtin.unrealized_conversion_cast %66#0, %66#1, %66#2, %66#3, %66#4, %66#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
    it.yield %66#0, %66#1, %66#2, %66#3, %66#4, %66#5 : index, index, index, index, memref<?xi64>, memref<?xi64>
  }) : (index, index, index, index, memref<?xi64>, memref<?xi64>) -> (index, index, index, index, memref<?xi64>, memref<?xi64>)
  %45 = builtin.unrealized_conversion_cast %44#0, %44#1, %44#2, %44#3, %44#4, %44#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
  %idx0_54 = index.constant 0
  %idx1_55 = index.constant 1
  %46 = arith.index_cast %extracted : index to i64
  %idx1_56 = index.constant 1
  %alloc_57 = memref.alloc(%idx1_56) : memref<?xi64>
  memref.store %46, %alloc_57[%idx0_54] : memref<?xi64>
  %alloc_58 = memref.alloc() : memref<0xi64>
  %alloc_59 = memref.alloc() : memref<0xi64>
  %alloc_60 = memref.alloc() : memref<0xi64>
  %47 = bufferization.to_tensor %alloc_57 restrict writable : memref<?xi64>
  %48 = bufferization.to_tensor %alloc_58 restrict writable : memref<0xi64>
  %49 = bufferization.to_tensor %alloc_59 restrict writable : memref<0xi64>
  %50 = bufferization.to_tensor %alloc_60 restrict writable : memref<0xi64>
  %51 = index.mul %idx1_55, %extracted
  %alloc_61 = memref.alloc(%44#2) : memref<?xi64>
  %alloc_62 = memref.alloc() : memref<0xi64>
  %alloc_63 = memref.alloc() : memref<0xi64>
  %52 = bufferization.to_tensor %44#4 restrict writable : memref<?xi64>
  %53 = bufferization.to_tensor %alloc_61 restrict writable : memref<?xi64>
  %54 = bufferization.to_tensor %alloc_62 restrict writable : memref<0xi64>
  %55 = bufferization.to_tensor %alloc_63 restrict writable : memref<0xi64>
  %alloc_64 = memref.alloc(%44#2) : memref<?xf64>
  %cst_65 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_54 to %44#2 step %idx1_55 {
    memref.store %cst_65, %alloc_64[%arg0] : memref<?xf64>
  }
  %56 = bufferization.to_tensor %alloc_64 restrict writable : memref<?xf64>
  %from_elements_66 = tensor.from_elements %extracted, %44#3 : tensor<2xindex>
  %idx0_67 = index.constant 0
  %idx0_68 = index.constant 0
  %57 = builtin.unrealized_conversion_cast %from_elements_66, %idx0_67, %47, %idx0_68, %52, %53, %56 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx1_69 = index.constant 1
  %extracted_70 = tensor.extract %from_elements_66[%idx1_69] : tensor<2xindex>
  %58 = bufferization.alloc_tensor(%extracted_70) : tensor<?xf64>
  %c1_i32_71 = arith.constant 1 : i32
  %59 = bufferization.alloc_tensor(%extracted_70) : tensor<?xi32>
  %idx0_72 = index.constant 0
  %60 = bufferization.alloc_tensor(%extracted_70) : tensor<?xi64>
  %61 = builtin.unrealized_conversion_cast %58, %c1_i32_71, %59, %idx0_72, %60 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
  %62:12 = "it.itree"(%from_elements_66, %idx0_67, %47, %idx0_68, %52, %53, %56, %58, %c1_i32_71, %59, %idx0_72, %60) ({
    %c0_74 = arith.constant 0 : index
    %c1_75 = arith.constant 1 : index
    %66:12 = scf.for %arg0 = %c0_74 to %extracted step %c1_75 iter_args(%arg1 = %from_elements_66, %arg2 = %idx0_67, %arg3 = %47, %arg4 = %idx0_68, %arg5 = %52, %arg6 = %53, %arg7 = %56, %arg8 = %58, %arg9 = %c1_i32_71, %arg10 = %59, %arg11 = %idx0_72, %arg12 = %60) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
      %c1_i32_76 = arith.constant 1 : i32
      %69 = arith.addi %arg9, %c1_i32_76 : i32
      %idx0_77 = index.constant 0
      %70 = builtin.unrealized_conversion_cast %arg8, %69, %arg10, %idx0_77, %arg12 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
      %c1_78 = arith.constant 1 : index
      %71 = arith.addi %arg0, %c1_78 : index
      %extracted_79 = tensor.extract %15[%arg0] : tensor<?xi64>
      %72 = arith.index_cast %extracted_79 : i64 to index
      %extracted_80 = tensor.extract %15[%71] : tensor<?xi64>
      %73 = arith.index_cast %extracted_80 : i64 to index
      %c1_81 = arith.constant 1 : index
      %74:12 = scf.for %arg13 = %72 to %73 step %c1_81 iter_args(%arg14 = %arg1, %arg15 = %arg2, %arg16 = %arg3, %arg17 = %arg4, %arg18 = %arg5, %arg19 = %arg6, %arg20 = %arg7, %arg21 = %arg8, %arg22 = %69, %arg23 = %arg10, %arg24 = %idx0_77, %arg25 = %arg12) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_84 = tensor.extract %16[%arg13] : tensor<?xi64>
        %80 = arith.index_cast %extracted_84 : i64 to index
        %c1_85 = arith.constant 1 : index
        %81 = arith.addi %80, %c1_85 : index
        %extracted_86 = tensor.extract %36[%80] : tensor<?xi64>
        %82 = arith.index_cast %extracted_86 : i64 to index
        %extracted_87 = tensor.extract %36[%81] : tensor<?xi64>
        %83 = arith.index_cast %extracted_87 : i64 to index
        %c1_88 = arith.constant 1 : index
        %84:12 = scf.for %arg26 = %82 to %83 step %c1_88 iter_args(%arg27 = %arg14, %arg28 = %arg15, %arg29 = %arg16, %arg30 = %arg17, %arg31 = %arg18, %arg32 = %arg19, %arg33 = %arg20, %arg34 = %arg21, %arg35 = %arg22, %arg36 = %arg23, %arg37 = %arg24, %arg38 = %arg25) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_89 = tensor.extract %37[%arg26] : tensor<?xi64>
          %87 = arith.index_cast %extracted_89 : i64 to index
          %extracted_90 = tensor.extract %19[%arg13] : tensor<?xf64>
          %extracted_91 = tensor.extract %40[%arg26] : tensor<?xf64>
          %88 = arith.mulf %extracted_90, %extracted_91 : f64
          %extracted_92 = tensor.extract %arg36[%87] : tensor<?xi32>
          %89 = arith.cmpi eq, %extracted_92, %arg35 : i32
          %90 = scf.if %89 -> (f64) {
            %extracted_95 = tensor.extract %arg34[%87] : tensor<?xf64>
            scf.yield %extracted_95 : f64
          } else {
            %cst_95 = arith.constant 0.000000e+00 : f64
            scf.yield %cst_95 : f64
          }
          %91 = arith.addf %90, %88 : f64
          %extracted_93 = tensor.extract %arg36[%87] : tensor<?xi32>
          %92 = arith.cmpi ne, %extracted_93, %arg35 : i32
          %93:3 = scf.if %92 -> (tensor<?xi32>, index, tensor<?xi64>) {
            %inserted_95 = tensor.insert %arg35 into %arg36[%87] : tensor<?xi32>
            %95 = arith.index_cast %87 : index to i64
            %inserted_96 = tensor.insert %95 into %arg38[%arg37] : tensor<?xi64>
            %idx1_97 = index.constant 1
            %96 = index.add %arg37, %idx1_97
            scf.yield %inserted_95, %96, %inserted_96 : tensor<?xi32>, index, tensor<?xi64>
          } else {
            scf.yield %arg36, %arg37, %arg38 : tensor<?xi32>, index, tensor<?xi64>
          }
          %inserted_94 = tensor.insert %91 into %arg34[%87] : tensor<?xf64>
          %94 = builtin.unrealized_conversion_cast %inserted_94, %arg35, %93#0, %93#1, %93#2 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
          scf.yield %arg27, %arg28, %arg29, %arg30, %arg31, %arg32, %arg33, %inserted_94, %arg35, %93#0, %93#1, %93#2 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
        }
        %85 = builtin.unrealized_conversion_cast %84#0, %84#1, %84#2, %84#3, %84#4, %84#5, %84#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %86 = builtin.unrealized_conversion_cast %84#7, %84#8, %84#9, %84#10, %84#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
        scf.yield %84#0, %84#1, %84#2, %84#3, %84#4, %84#5, %84#6, %84#7, %84#8, %84#9, %84#10, %84#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
      }
      %75 = builtin.unrealized_conversion_cast %74#0, %74#1, %74#2, %74#3, %74#4, %74#5, %74#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %76 = builtin.unrealized_conversion_cast %74#7, %74#8, %74#9, %74#10, %74#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
      %c0_82 = arith.constant 0 : index
      %c1_83 = arith.constant 1 : index
      %77:12 = scf.for %arg13 = %c0_82 to %74#10 step %c1_83 iter_args(%arg14 = %74#0, %arg15 = %74#1, %arg16 = %74#2, %arg17 = %74#3, %arg18 = %74#4, %arg19 = %74#5, %arg20 = %74#6, %arg21 = %74#7, %arg22 = %74#8, %arg23 = %74#9, %arg24 = %74#10, %arg25 = %74#11) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_84 = tensor.extract %74#11[%arg13] : tensor<?xi64>
        %80 = arith.index_cast %extracted_84 : i64 to index
        %extracted_85 = tensor.extract %arg23[%80] : tensor<?xi32>
        %81 = arith.cmpi eq, %extracted_85, %arg22 : i32
        %82 = scf.if %81 -> (f64) {
          %extracted_90 = tensor.extract %arg21[%80] : tensor<?xf64>
          scf.yield %extracted_90 : f64
        } else {
          %cst_90 = arith.constant 0.000000e+00 : f64
          scf.yield %cst_90 : f64
        }
        %extracted_86 = tensor.extract %arg20[%arg17] : tensor<?xf64>
        %83 = arith.index_cast %80 : index to i64
        %inserted_87 = tensor.insert %83 into %arg19[%arg17] : tensor<?xi64>
        %idx1_88 = index.constant 1
        %84 = index.add %arg17, %idx1_88
        %inserted_89 = tensor.insert %82 into %arg20[%arg17] : tensor<?xf64>
        %85 = builtin.unrealized_conversion_cast %arg14, %arg15, %arg16, %84, %arg18, %inserted_87, %inserted_89 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %arg14, %arg15, %arg16, %84, %arg18, %inserted_87, %inserted_89, %arg21, %arg22, %arg23, %arg24, %arg25 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
      }
      %78 = builtin.unrealized_conversion_cast %77#0, %77#1, %77#2, %77#3, %77#4, %77#5, %77#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %79 = builtin.unrealized_conversion_cast %77#7, %77#8, %77#9, %77#10, %77#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
      scf.yield %77#0, %77#1, %77#2, %77#3, %77#4, %77#5, %77#6, %77#7, %77#8, %77#9, %77#10, %77#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
    }
    %67 = builtin.unrealized_conversion_cast %66#0, %66#1, %66#2, %66#3, %66#4, %66#5, %66#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %68 = builtin.unrealized_conversion_cast %66#7, %66#8, %66#9, %66#10, %66#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
    it.yield %66#0, %66#1, %66#2, %66#3, %66#4, %66#5, %66#6, %66#7, %66#8, %66#9, %66#10, %66#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
  }) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>)
  %63 = builtin.unrealized_conversion_cast %62#0, %62#1, %62#2, %62#3, %62#4, %62#5, %62#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %64 = builtin.unrealized_conversion_cast %62#7, %62#8, %62#9, %62#10, %62#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
  %65 = bufferization.alloc_tensor() : tensor<1xindex>
  %idx-1 = index.constant -1
  %idx0_73 = index.constant 0
  %inserted = tensor.insert %idx-1 into %65[%idx0_73] : tensor<1xindex>
  "ta.print"(%62#2) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted) : (tensor<1xindex>) -> ()
  "ta.print"(%62#4) : (tensor<?xi64>) -> ()
  "ta.print"(%62#5) : (tensor<?xi64>) -> ()
  "ta.print"(%62#6) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func @main() {
  %cst = arith.constant 0.000000e+00 : f64
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_0 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
  %13 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
  %14 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
  %15 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %16 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %17 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
  %18 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
  %19 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %from_elements = tensor.from_elements %9, %10 : tensor<2xindex>
  %idx0 = index.constant 0
  %idx0_18 = index.constant 0
  %20 = builtin.unrealized_conversion_cast %from_elements, %idx0, %11, %idx0_18, %15, %16, %19 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_19 = index.constant 0
  %dim = tensor.dim %15, %c0 : tensor<?xi64>
  %dim_20 = tensor.dim %16, %c0 : tensor<?xi64>
  %idx1 = index.constant 1
  %alloc_21 = memref.alloc() : memref<13xindex>
  %cast_22 = memref.cast %alloc_21 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_22, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %21 = memref.load %alloc_21[%c0] : memref<13xindex>
  %22 = memref.load %alloc_21[%c1] : memref<13xindex>
  %23 = memref.load %alloc_21[%c2] : memref<13xindex>
  %24 = memref.load %alloc_21[%c3] : memref<13xindex>
  %25 = memref.load %alloc_21[%c4] : memref<13xindex>
  %26 = memref.load %alloc_21[%c5] : memref<13xindex>
  %27 = memref.load %alloc_21[%c6] : memref<13xindex>
  %28 = memref.load %alloc_21[%c7] : memref<13xindex>
  %29 = memref.load %alloc_21[%c8] : memref<13xindex>
  %30 = memref.load %alloc_21[%c9] : memref<13xindex>
  %31 = memref.load %alloc_21[%c10] : memref<13xindex>
  %alloc_23 = memref.alloc(%21) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_23 : memref<?xi64>)
  %cast_24 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
  %alloc_25 = memref.alloc(%22) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_25 : memref<?xi64>)
  %cast_26 = memref.cast %alloc_25 : memref<?xi64> to memref<*xi64>
  %alloc_27 = memref.alloc(%23) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_27 : memref<?xi64>)
  %cast_28 = memref.cast %alloc_27 : memref<?xi64> to memref<*xi64>
  %alloc_29 = memref.alloc(%24) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_29 : memref<?xi64>)
  %cast_30 = memref.cast %alloc_29 : memref<?xi64> to memref<*xi64>
  %alloc_31 = memref.alloc(%25) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_31 : memref<?xi64>)
  %cast_32 = memref.cast %alloc_31 : memref<?xi64> to memref<*xi64>
  %alloc_33 = memref.alloc(%26) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_33 : memref<?xi64>)
  %cast_34 = memref.cast %alloc_33 : memref<?xi64> to memref<*xi64>
  %alloc_35 = memref.alloc(%27) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_35 : memref<?xi64>)
  %cast_36 = memref.cast %alloc_35 : memref<?xi64> to memref<*xi64>
  %alloc_37 = memref.alloc(%28) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_37 : memref<?xi64>)
  %cast_38 = memref.cast %alloc_37 : memref<?xi64> to memref<*xi64>
  %alloc_39 = memref.alloc(%29) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_39 : memref<?xf64>)
  %cast_40 = memref.cast %alloc_39 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_24, %cast_26, %cast_28, %cast_30, %cast_32, %cast_34, %cast_36, %cast_38, %cast_40, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %32 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
  %33 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xi64>
  %34 = bufferization.to_tensor %alloc_27 restrict writable : memref<?xi64>
  %35 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xi64>
  %36 = bufferization.to_tensor %alloc_31 restrict writable : memref<?xi64>
  %37 = bufferization.to_tensor %alloc_33 restrict writable : memref<?xi64>
  %38 = bufferization.to_tensor %alloc_35 restrict writable : memref<?xi64>
  %39 = bufferization.to_tensor %alloc_37 restrict writable : memref<?xi64>
  %40 = bufferization.to_tensor %alloc_39 restrict writable : memref<?xf64>
  %from_elements_41 = tensor.from_elements %30, %31 : tensor<2xindex>
  %idx0_42 = index.constant 0
  %idx0_43 = index.constant 0
  %41 = builtin.unrealized_conversion_cast %from_elements_41, %idx0_42, %32, %idx0_43, %36, %37, %40 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %dim_44 = tensor.dim %36, %c0 : tensor<?xi64>
  %dim_45 = tensor.dim %37, %c0 : tensor<?xi64>
  %idx1_46 = index.constant 1
  %idx0_47 = index.constant 0
  %idx1_48 = index.constant 1
  %42 = index.add %9, %idx1_48
  %alloc_49 = memref.alloc(%42) : memref<?xi64>
  %c0_i64_50 = arith.constant 0 : i64
  memref.store %c0_i64_50, %alloc_49[%idx0_47] : memref<?xi64>
  %alloc_51 = memref.alloc(%31) : memref<?xi64>
  %43 = builtin.unrealized_conversion_cast %idx0_47, %42, %idx0_47, %31, %alloc_49, %alloc_51 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
  %c0_52 = arith.constant 0 : index
  %c1_53 = arith.constant 1 : index
  %44:6 = scf.for %arg0 = %c0_52 to %9 step %c1_53 iter_args(%arg1 = %idx0_47, %arg2 = %42, %arg3 = %idx0_47, %arg4 = %31, %arg5 = %alloc_49, %arg6 = %alloc_51) -> (index, index, index, index, memref<?xi64>, memref<?xi64>) {
    %c1_75 = arith.constant 1 : index
    %69 = arith.addi %arg0, %c1_75 : index
    %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
    %70 = arith.index_cast %extracted : i64 to index
    %extracted_76 = tensor.extract %15[%69] : tensor<?xi64>
    %71 = arith.index_cast %extracted_76 : i64 to index
    %c1_77 = arith.constant 1 : index
    %72:6 = scf.for %arg7 = %70 to %71 step %c1_77 iter_args(%arg8 = %arg1, %arg9 = %arg2, %arg10 = %arg3, %arg11 = %arg4, %arg12 = %arg5, %arg13 = %arg6) -> (index, index, index, index, memref<?xi64>, memref<?xi64>) {
      %extracted_79 = tensor.extract %16[%arg7] : tensor<?xi64>
      %77 = arith.index_cast %extracted_79 : i64 to index
      %c1_80 = arith.constant 1 : index
      %78 = arith.addi %77, %c1_80 : index
      %extracted_81 = tensor.extract %36[%77] : tensor<?xi64>
      %79 = arith.index_cast %extracted_81 : i64 to index
      %extracted_82 = tensor.extract %36[%78] : tensor<?xi64>
      %80 = arith.index_cast %extracted_82 : i64 to index
      %c1_83 = arith.constant 1 : index
      %81:6 = scf.for %arg14 = %79 to %80 step %c1_83 iter_args(%arg15 = %arg8, %arg16 = %arg9, %arg17 = %arg10, %arg18 = %arg11, %arg19 = %arg12, %arg20 = %arg13) -> (index, index, index, index, memref<?xi64>, memref<?xi64>) {
        %extracted_84 = tensor.extract %37[%arg14] : tensor<?xi64>
        %83 = arith.index_cast %extracted_84 : i64 to index
        %idx1_85 = index.constant 1
        %84 = index.add %arg15, %idx1_85
        %85 = arith.index_cast %84 : index to i64
        %86 = memref.load %arg20[%83] : memref<?xi64>
        %87 = arith.cmpi eq, %85, %86 : i64
        %88 = scf.if %87 -> (index) {
          scf.yield %arg17 : index
        } else {
          memref.store %85, %arg20[%83] : memref<?xi64>
          %90 = index.add %arg17, %idx1_85
          scf.yield %90 : index
        }
        %89 = builtin.unrealized_conversion_cast %arg15, %arg16, %88, %arg18, %arg19, %arg20 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
        scf.yield %arg15, %arg16, %88, %arg18, %arg19, %arg20 : index, index, index, index, memref<?xi64>, memref<?xi64>
      }
      %82 = builtin.unrealized_conversion_cast %81#0, %81#1, %81#2, %81#3, %81#4, %81#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
      scf.yield %81#0, %81#1, %81#2, %81#3, %81#4, %81#5 : index, index, index, index, memref<?xi64>, memref<?xi64>
    }
    %73 = builtin.unrealized_conversion_cast %72#0, %72#1, %72#2, %72#3, %72#4, %72#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
    %idx1_78 = index.constant 1
    %74 = index.add %72#0, %idx1_78
    %75 = arith.index_cast %72#2 : index to i64
    memref.store %75, %72#4[%74] : memref<?xi64>
    %76 = builtin.unrealized_conversion_cast %74, %72#1, %72#2, %72#3, %72#4, %72#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
    scf.yield %74, %72#1, %72#2, %72#3, %72#4, %72#5 : index, index, index, index, memref<?xi64>, memref<?xi64>
  }
  %45 = builtin.unrealized_conversion_cast %44#0, %44#1, %44#2, %44#3, %44#4, %44#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
  %46 = builtin.unrealized_conversion_cast %44#0, %44#1, %44#2, %44#3, %44#4, %44#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
  %idx0_54 = index.constant 0
  %idx1_55 = index.constant 1
  %47 = arith.index_cast %9 : index to i64
  %idx1_56 = index.constant 1
  %alloc_57 = memref.alloc(%idx1_56) : memref<?xi64>
  memref.store %47, %alloc_57[%idx0_54] : memref<?xi64>
  %alloc_58 = memref.alloc() : memref<0xi64>
  %alloc_59 = memref.alloc() : memref<0xi64>
  %alloc_60 = memref.alloc() : memref<0xi64>
  %48 = bufferization.to_tensor %alloc_57 restrict writable : memref<?xi64>
  %49 = bufferization.to_tensor %alloc_58 restrict writable : memref<0xi64>
  %50 = bufferization.to_tensor %alloc_59 restrict writable : memref<0xi64>
  %51 = bufferization.to_tensor %alloc_60 restrict writable : memref<0xi64>
  %52 = index.mul %idx1_55, %9
  %alloc_61 = memref.alloc(%44#2) : memref<?xi64>
  %alloc_62 = memref.alloc() : memref<0xi64>
  %alloc_63 = memref.alloc() : memref<0xi64>
  %53 = bufferization.to_tensor %44#4 restrict writable : memref<?xi64>
  %54 = bufferization.to_tensor %alloc_61 restrict writable : memref<?xi64>
  %55 = bufferization.to_tensor %alloc_62 restrict writable : memref<0xi64>
  %56 = bufferization.to_tensor %alloc_63 restrict writable : memref<0xi64>
  %alloc_64 = memref.alloc(%44#2) : memref<?xf64>
  %cst_65 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_54 to %44#2 step %idx1_55 {
    memref.store %cst_65, %alloc_64[%arg0] : memref<?xf64>
  }
  %57 = bufferization.to_tensor %alloc_64 restrict writable : memref<?xf64>
  %from_elements_66 = tensor.from_elements %9, %44#3 : tensor<2xindex>
  %idx0_67 = index.constant 0
  %idx0_68 = index.constant 0
  %58 = builtin.unrealized_conversion_cast %from_elements_66, %idx0_67, %48, %idx0_68, %53, %54, %57 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx1_69 = index.constant 1
  %59 = bufferization.alloc_tensor(%44#3) : tensor<?xf64>
  %c1_i32_70 = arith.constant 1 : i32
  %60 = bufferization.alloc_tensor(%44#3) : tensor<?xi32>
  %idx0_71 = index.constant 0
  %61 = bufferization.alloc_tensor(%44#3) : tensor<?xi64>
  %62 = builtin.unrealized_conversion_cast %59, %c1_i32_70, %60, %idx0_71, %61 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
  %c0_72 = arith.constant 0 : index
  %c1_73 = arith.constant 1 : index
  %63:12 = scf.for %arg0 = %c0_72 to %9 step %c1_73 iter_args(%arg1 = %from_elements_66, %arg2 = %idx0_67, %arg3 = %48, %arg4 = %idx0_68, %arg5 = %53, %arg6 = %54, %arg7 = %57, %arg8 = %59, %arg9 = %c1_i32_70, %arg10 = %60, %arg11 = %idx0_71, %arg12 = %61) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
    %c1_i32_75 = arith.constant 1 : i32
    %69 = arith.addi %arg9, %c1_i32_75 : i32
    %idx0_76 = index.constant 0
    %70 = builtin.unrealized_conversion_cast %arg8, %69, %arg10, %idx0_76, %arg12 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
    %c1_77 = arith.constant 1 : index
    %71 = arith.addi %arg0, %c1_77 : index
    %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
    %72 = arith.index_cast %extracted : i64 to index
    %extracted_78 = tensor.extract %15[%71] : tensor<?xi64>
    %73 = arith.index_cast %extracted_78 : i64 to index
    %c1_79 = arith.constant 1 : index
    %74:12 = scf.for %arg13 = %72 to %73 step %c1_79 iter_args(%arg14 = %arg1, %arg15 = %arg2, %arg16 = %arg3, %arg17 = %arg4, %arg18 = %arg5, %arg19 = %arg6, %arg20 = %arg7, %arg21 = %arg8, %arg22 = %69, %arg23 = %arg10, %arg24 = %idx0_76, %arg25 = %arg12) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_82 = tensor.extract %16[%arg13] : tensor<?xi64>
      %80 = arith.index_cast %extracted_82 : i64 to index
      %c1_83 = arith.constant 1 : index
      %81 = arith.addi %80, %c1_83 : index
      %extracted_84 = tensor.extract %36[%80] : tensor<?xi64>
      %82 = arith.index_cast %extracted_84 : i64 to index
      %extracted_85 = tensor.extract %36[%81] : tensor<?xi64>
      %83 = arith.index_cast %extracted_85 : i64 to index
      %c1_86 = arith.constant 1 : index
      %84:12 = scf.for %arg26 = %82 to %83 step %c1_86 iter_args(%arg27 = %arg14, %arg28 = %arg15, %arg29 = %arg16, %arg30 = %arg17, %arg31 = %arg18, %arg32 = %arg19, %arg33 = %arg20, %arg34 = %arg21, %arg35 = %arg22, %arg36 = %arg23, %arg37 = %arg24, %arg38 = %arg25) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_87 = tensor.extract %37[%arg26] : tensor<?xi64>
        %87 = arith.index_cast %extracted_87 : i64 to index
        %extracted_88 = tensor.extract %19[%arg13] : tensor<?xf64>
        %extracted_89 = tensor.extract %40[%arg26] : tensor<?xf64>
        %88 = arith.mulf %extracted_88, %extracted_89 : f64
        %extracted_90 = tensor.extract %arg36[%87] : tensor<?xi32>
        %89 = arith.cmpi eq, %extracted_90, %arg35 : i32
        %90 = scf.if %89 -> (f64) {
          %extracted_93 = tensor.extract %arg34[%87] : tensor<?xf64>
          scf.yield %extracted_93 : f64
        } else {
          %cst_93 = arith.constant 0.000000e+00 : f64
          scf.yield %cst_93 : f64
        }
        %91 = arith.addf %90, %88 : f64
        %extracted_91 = tensor.extract %arg36[%87] : tensor<?xi32>
        %92 = arith.cmpi ne, %extracted_91, %arg35 : i32
        %93:3 = scf.if %92 -> (tensor<?xi32>, index, tensor<?xi64>) {
          %inserted_93 = tensor.insert %arg35 into %arg36[%87] : tensor<?xi32>
          %95 = arith.index_cast %87 : index to i64
          %inserted_94 = tensor.insert %95 into %arg38[%arg37] : tensor<?xi64>
          %idx1_95 = index.constant 1
          %96 = index.add %arg37, %idx1_95
          scf.yield %inserted_93, %96, %inserted_94 : tensor<?xi32>, index, tensor<?xi64>
        } else {
          scf.yield %arg36, %arg37, %arg38 : tensor<?xi32>, index, tensor<?xi64>
        }
        %inserted_92 = tensor.insert %91 into %arg34[%87] : tensor<?xf64>
        %94 = builtin.unrealized_conversion_cast %inserted_92, %arg35, %93#0, %93#1, %93#2 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
        scf.yield %arg27, %arg28, %arg29, %arg30, %arg31, %arg32, %arg33, %inserted_92, %arg35, %93#0, %93#1, %93#2 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
      }
      %85 = builtin.unrealized_conversion_cast %84#0, %84#1, %84#2, %84#3, %84#4, %84#5, %84#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %86 = builtin.unrealized_conversion_cast %84#7, %84#8, %84#9, %84#10, %84#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
      scf.yield %84#0, %84#1, %84#2, %84#3, %84#4, %84#5, %84#6, %84#7, %84#8, %84#9, %84#10, %84#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
    }
    %75 = builtin.unrealized_conversion_cast %74#0, %74#1, %74#2, %74#3, %74#4, %74#5, %74#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %76 = builtin.unrealized_conversion_cast %74#7, %74#8, %74#9, %74#10, %74#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
    %c0_80 = arith.constant 0 : index
    %c1_81 = arith.constant 1 : index
    %77:12 = scf.for %arg13 = %c0_80 to %74#10 step %c1_81 iter_args(%arg14 = %74#0, %arg15 = %74#1, %arg16 = %74#2, %arg17 = %74#3, %arg18 = %74#4, %arg19 = %74#5, %arg20 = %74#6, %arg21 = %74#7, %arg22 = %74#8, %arg23 = %74#9, %arg24 = %74#10, %arg25 = %74#11) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_82 = tensor.extract %74#11[%arg13] : tensor<?xi64>
      %80 = arith.index_cast %extracted_82 : i64 to index
      %extracted_83 = tensor.extract %arg23[%80] : tensor<?xi32>
      %81 = arith.cmpi eq, %extracted_83, %arg22 : i32
      %82 = scf.if %81 -> (f64) {
        %extracted_88 = tensor.extract %arg21[%80] : tensor<?xf64>
        scf.yield %extracted_88 : f64
      } else {
        %cst_88 = arith.constant 0.000000e+00 : f64
        scf.yield %cst_88 : f64
      }
      %extracted_84 = tensor.extract %arg20[%arg17] : tensor<?xf64>
      %83 = arith.index_cast %80 : index to i64
      %inserted_85 = tensor.insert %83 into %arg19[%arg17] : tensor<?xi64>
      %idx1_86 = index.constant 1
      %84 = index.add %arg17, %idx1_86
      %inserted_87 = tensor.insert %82 into %arg20[%arg17] : tensor<?xf64>
      %85 = builtin.unrealized_conversion_cast %arg14, %arg15, %arg16, %84, %arg18, %inserted_85, %inserted_87 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      scf.yield %arg14, %arg15, %arg16, %84, %arg18, %inserted_85, %inserted_87, %arg21, %arg22, %arg23, %arg24, %arg25 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
    }
    %78 = builtin.unrealized_conversion_cast %77#0, %77#1, %77#2, %77#3, %77#4, %77#5, %77#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %79 = builtin.unrealized_conversion_cast %77#7, %77#8, %77#9, %77#10, %77#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
    scf.yield %77#0, %77#1, %77#2, %77#3, %77#4, %77#5, %77#6, %77#7, %77#8, %77#9, %77#10, %77#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
  }
  %64 = builtin.unrealized_conversion_cast %63#0, %63#1, %63#2, %63#3, %63#4, %63#5, %63#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %65 = builtin.unrealized_conversion_cast %63#7, %63#8, %63#9, %63#10, %63#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
  %66 = builtin.unrealized_conversion_cast %63#0, %63#1, %63#2, %63#3, %63#4, %63#5, %63#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %67 = builtin.unrealized_conversion_cast %63#7, %63#8, %63#9, %63#10, %63#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
  %68 = bufferization.alloc_tensor() : tensor<1xindex>
  %idx-1 = index.constant -1
  %idx0_74 = index.constant 0
  %inserted = tensor.insert %idx-1 into %68[%idx0_74] : tensor<1xindex>
  "ta.print"(%63#2) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted) : (tensor<1xindex>) -> ()
  "ta.print"(%63#4) : (tensor<?xi64>) -> ()
  "ta.print"(%63#5) : (tensor<?xi64>) -> ()
  "ta.print"(%63#6) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
  %cst = arith.constant 0.000000e+00 : f64
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %10 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
  %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
  %12 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
  %alloc_18 = memref.alloc() : memref<13xindex>
  %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %13 = memref.load %alloc_18[%c0] : memref<13xindex>
  %14 = memref.load %alloc_18[%c1] : memref<13xindex>
  %15 = memref.load %alloc_18[%c2] : memref<13xindex>
  %16 = memref.load %alloc_18[%c3] : memref<13xindex>
  %17 = memref.load %alloc_18[%c4] : memref<13xindex>
  %18 = memref.load %alloc_18[%c5] : memref<13xindex>
  %19 = memref.load %alloc_18[%c6] : memref<13xindex>
  %20 = memref.load %alloc_18[%c7] : memref<13xindex>
  %21 = memref.load %alloc_18[%c8] : memref<13xindex>
  %22 = memref.load %alloc_18[%c10] : memref<13xindex>
  %alloc_20 = memref.alloc(%13) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%14) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%15) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%16) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%17) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%18) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%19) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%20) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%21) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
  %25 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
  %26 = index.add %9, %idx1
  %alloc_38 = memref.alloc(%26) : memref<?xi64>
  memref.store %c0_i64, %alloc_38[%idx0] : memref<?xi64>
  %alloc_39 = memref.alloc(%22) : memref<?xi64>
  %27:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
    %38 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
    %39 = arith.index_cast %extracted : i64 to index
    %extracted_44 = tensor.extract %10[%38] : tensor<?xi64>
    %40 = arith.index_cast %extracted_44 : i64 to index
    %41 = scf.for %arg3 = %39 to %40 step %c1 iter_args(%arg4 = %arg2) -> (index) {
      %extracted_45 = tensor.extract %11[%arg3] : tensor<?xi64>
      %44 = arith.index_cast %extracted_45 : i64 to index
      %45 = arith.addi %44, %c1 : index
      %extracted_46 = tensor.extract %23[%44] : tensor<?xi64>
      %46 = arith.index_cast %extracted_46 : i64 to index
      %extracted_47 = tensor.extract %23[%45] : tensor<?xi64>
      %47 = arith.index_cast %extracted_47 : i64 to index
      %48 = scf.for %arg5 = %46 to %47 step %c1 iter_args(%arg6 = %arg4) -> (index) {
        %extracted_48 = tensor.extract %24[%arg5] : tensor<?xi64>
        %49 = arith.index_cast %extracted_48 : i64 to index
        %50 = index.add %arg1, %idx1
        %51 = arith.index_cast %50 : index to i64
        %52 = memref.load %alloc_39[%49] : memref<?xi64>
        %53 = arith.cmpi eq, %51, %52 : i64
        %54 = scf.if %53 -> (index) {
          scf.yield %arg6 : index
        } else {
          memref.store %51, %alloc_39[%49] : memref<?xi64>
          %55 = index.add %arg6, %idx1
          scf.yield %55 : index
        }
        scf.yield %54 : index
      }
      scf.yield %48 : index
    }
    %42 = index.add %arg1, %idx1
    %43 = arith.index_cast %41 : index to i64
    memref.store %43, %alloc_38[%42] : memref<?xi64>
    scf.yield %42, %41 : index, index
  }
  %28 = arith.index_cast %9 : index to i64
  %alloc_40 = memref.alloc() : memref<1xi64>
  %cast_41 = memref.cast %alloc_40 : memref<1xi64> to memref<?xi64>
  memref.store %28, %alloc_40[%idx0] : memref<1xi64>
  %29 = bufferization.to_tensor %cast_41 restrict writable : memref<?xi64>
  %alloc_42 = memref.alloc(%27#1) : memref<?xi64>
  %30 = bufferization.to_tensor %alloc_38 restrict writable : memref<?xi64>
  %31 = bufferization.to_tensor %alloc_42 restrict writable : memref<?xi64>
  %alloc_43 = memref.alloc(%27#1) : memref<?xf64>
  scf.for %arg0 = %idx0 to %27#1 step %idx1 {
    memref.store %cst, %alloc_43[%arg0] : memref<?xf64>
  }
  %32 = bufferization.to_tensor %alloc_43 restrict writable : memref<?xf64>
  %33 = bufferization.alloc_tensor(%22) : tensor<?xf64>
  %34 = bufferization.alloc_tensor(%22) : tensor<?xi32>
  %35 = bufferization.alloc_tensor(%22) : tensor<?xi64>
  %36:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %31, %arg3 = %32, %arg4 = %33, %arg5 = %c1_i32, %arg6 = %34, %arg7 = %35) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>) {
    %38 = arith.addi %arg5, %c1_i32 : i32
    %39 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
    %40 = arith.index_cast %extracted : i64 to index
    %extracted_44 = tensor.extract %10[%39] : tensor<?xi64>
    %41 = arith.index_cast %extracted_44 : i64 to index
    %42:4 = scf.for %arg8 = %40 to %41 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_45 = tensor.extract %11[%arg8] : tensor<?xi64>
      %44 = arith.index_cast %extracted_45 : i64 to index
      %45 = arith.addi %44, %c1 : index
      %extracted_46 = tensor.extract %23[%44] : tensor<?xi64>
      %46 = arith.index_cast %extracted_46 : i64 to index
      %extracted_47 = tensor.extract %23[%45] : tensor<?xi64>
      %47 = arith.index_cast %extracted_47 : i64 to index
      %48:4 = scf.for %arg13 = %46 to %47 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_48 = tensor.extract %24[%arg13] : tensor<?xi64>
        %49 = arith.index_cast %extracted_48 : i64 to index
        %extracted_49 = tensor.extract %12[%arg8] : tensor<?xf64>
        %extracted_50 = tensor.extract %25[%arg13] : tensor<?xf64>
        %50 = arith.mulf %extracted_49, %extracted_50 : f64
        %extracted_51 = tensor.extract %arg15[%49] : tensor<?xi32>
        %51 = arith.cmpi eq, %extracted_51, %38 : i32
        %52 = scf.if %51 -> (f64) {
          %extracted_54 = tensor.extract %arg14[%49] : tensor<?xf64>
          scf.yield %extracted_54 : f64
        } else {
          scf.yield %cst : f64
        }
        %53 = arith.addf %52, %50 : f64
        %extracted_52 = tensor.extract %arg15[%49] : tensor<?xi32>
        %54 = arith.cmpi ne, %extracted_52, %38 : i32
        %55:3 = scf.if %54 -> (tensor<?xi32>, index, tensor<?xi64>) {
          %inserted_54 = tensor.insert %38 into %arg15[%49] : tensor<?xi32>
          %inserted_55 = tensor.insert %extracted_48 into %arg17[%arg16] : tensor<?xi64>
          %56 = index.add %arg16, %idx1
          scf.yield %inserted_54, %56, %inserted_55 : tensor<?xi32>, index, tensor<?xi64>
        } else {
          scf.yield %arg15, %arg16, %arg17 : tensor<?xi32>, index, tensor<?xi64>
        }
        %inserted_53 = tensor.insert %53 into %arg14[%49] : tensor<?xf64>
        scf.yield %inserted_53, %55#0, %55#1, %55#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      scf.yield %48#0, %48#1, %48#2, %48#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
    }
    %43:3 = scf.for %arg8 = %c0 to %42#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
      %extracted_45 = tensor.extract %42#3[%arg8] : tensor<?xi64>
      %44 = arith.index_cast %extracted_45 : i64 to index
      %extracted_46 = tensor.extract %42#1[%44] : tensor<?xi32>
      %45 = arith.cmpi eq, %extracted_46, %38 : i32
      %46 = scf.if %45 -> (f64) {
        %extracted_49 = tensor.extract %42#0[%44] : tensor<?xf64>
        scf.yield %extracted_49 : f64
      } else {
        scf.yield %cst : f64
      }
      %inserted_47 = tensor.insert %extracted_45 into %arg10[%arg9] : tensor<?xi64>
      %47 = index.add %arg9, %idx1
      %inserted_48 = tensor.insert %46 into %arg11[%arg9] : tensor<?xf64>
      scf.yield %47, %inserted_47, %inserted_48 : index, tensor<?xi64>, tensor<?xf64>
    }
    scf.yield %43#0, %43#1, %43#2, %42#0, %38, %42#1, %42#3 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>
  }
  %37 = bufferization.alloc_tensor() : tensor<1xindex>
  %inserted = tensor.insert %idx-1 into %37[%idx0] : tensor<1xindex>
  "ta.print"(%29) : (tensor<?xi64>) -> ()
  "ta.print"(%inserted) : (tensor<1xindex>) -> ()
  "ta.print"(%30) : (tensor<?xi64>) -> ()
  "ta.print"(%36#1) : (tensor<?xi64>) -> ()
  "ta.print"(%36#2) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %cst = arith.constant 0.000000e+00 : f64
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %10 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
    %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %13 = memref.load %alloc_18[%c0] : memref<13xindex>
    %14 = memref.load %alloc_18[%c1] : memref<13xindex>
    %15 = memref.load %alloc_18[%c2] : memref<13xindex>
    %16 = memref.load %alloc_18[%c3] : memref<13xindex>
    %17 = memref.load %alloc_18[%c4] : memref<13xindex>
    %18 = memref.load %alloc_18[%c5] : memref<13xindex>
    %19 = memref.load %alloc_18[%c6] : memref<13xindex>
    %20 = memref.load %alloc_18[%c7] : memref<13xindex>
    %21 = memref.load %alloc_18[%c8] : memref<13xindex>
    %22 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%18) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%19) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%20) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%21) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
    %24 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
    %25 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
    %26 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%26) : memref<?xi64>
    memref.store %c0_i64, %alloc_38[%idx0] : memref<?xi64>
    %alloc_39 = memref.alloc(%22) : memref<?xi64>
    %27:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %38 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %39 = arith.index_cast %extracted : i64 to index
      %extracted_44 = tensor.extract %10[%38] : tensor<?xi64>
      %40 = arith.index_cast %extracted_44 : i64 to index
      %41 = scf.for %arg3 = %39 to %40 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %extracted_45 = tensor.extract %11[%arg3] : tensor<?xi64>
        %44 = arith.index_cast %extracted_45 : i64 to index
        %45 = arith.addi %44, %c1 : index
        %extracted_46 = tensor.extract %23[%44] : tensor<?xi64>
        %46 = arith.index_cast %extracted_46 : i64 to index
        %extracted_47 = tensor.extract %23[%45] : tensor<?xi64>
        %47 = arith.index_cast %extracted_47 : i64 to index
        %48 = scf.for %arg5 = %46 to %47 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %extracted_48 = tensor.extract %24[%arg5] : tensor<?xi64>
          %49 = arith.index_cast %extracted_48 : i64 to index
          %50 = index.add %arg1, %idx1
          %51 = arith.index_cast %50 : index to i64
          %52 = memref.load %alloc_39[%49] : memref<?xi64>
          %53 = arith.cmpi eq, %51, %52 : i64
          %54 = scf.if %53 -> (index) {
            scf.yield %arg6 : index
          } else {
            memref.store %51, %alloc_39[%49] : memref<?xi64>
            %55 = index.add %arg6, %idx1
            scf.yield %55 : index
          }
          scf.yield %54 : index
        }
        scf.yield %48 : index
      }
      %42 = index.add %arg1, %idx1
      %43 = arith.index_cast %41 : index to i64
      memref.store %43, %alloc_38[%42] : memref<?xi64>
      scf.yield %42, %41 : index, index
    }
    %28 = arith.index_cast %9 : index to i64
    %alloc_40 = memref.alloc() : memref<1xi64>
    %cast_41 = memref.cast %alloc_40 : memref<1xi64> to memref<?xi64>
    memref.store %28, %alloc_40[%idx0] : memref<1xi64>
    %29 = bufferization.to_tensor %cast_41 restrict writable : memref<?xi64>
    %alloc_42 = memref.alloc(%27#1) : memref<?xi64>
    %30 = bufferization.to_tensor %alloc_38 restrict writable : memref<?xi64>
    %31 = bufferization.to_tensor %alloc_42 restrict writable : memref<?xi64>
    %alloc_43 = memref.alloc(%27#1) : memref<?xf64>
    scf.for %arg0 = %idx0 to %27#1 step %idx1 {
      memref.store %cst, %alloc_43[%arg0] : memref<?xf64>
    }
    %32 = bufferization.to_tensor %alloc_43 restrict writable : memref<?xf64>
    %33 = bufferization.alloc_tensor(%22) : tensor<?xf64>
    %34 = bufferization.alloc_tensor(%22) : tensor<?xi32>
    %35 = bufferization.alloc_tensor(%22) : tensor<?xi64>
    %36:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %31, %arg3 = %32, %arg4 = %33, %arg5 = %c1_i32, %arg6 = %34, %arg7 = %35) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>) {
      %38 = arith.addi %arg5, %c1_i32 : i32
      %39 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %40 = arith.index_cast %extracted : i64 to index
      %extracted_44 = tensor.extract %10[%39] : tensor<?xi64>
      %41 = arith.index_cast %extracted_44 : i64 to index
      %42:4 = scf.for %arg8 = %40 to %41 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_45 = tensor.extract %11[%arg8] : tensor<?xi64>
        %44 = arith.index_cast %extracted_45 : i64 to index
        %45 = arith.addi %44, %c1 : index
        %extracted_46 = tensor.extract %23[%44] : tensor<?xi64>
        %46 = arith.index_cast %extracted_46 : i64 to index
        %extracted_47 = tensor.extract %23[%45] : tensor<?xi64>
        %47 = arith.index_cast %extracted_47 : i64 to index
        %48:4 = scf.for %arg13 = %46 to %47 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_48 = tensor.extract %24[%arg13] : tensor<?xi64>
          %49 = arith.index_cast %extracted_48 : i64 to index
          %extracted_49 = tensor.extract %12[%arg8] : tensor<?xf64>
          %extracted_50 = tensor.extract %25[%arg13] : tensor<?xf64>
          %50 = arith.mulf %extracted_49, %extracted_50 : f64
          %extracted_51 = tensor.extract %arg15[%49] : tensor<?xi32>
          %51 = arith.cmpi eq, %extracted_51, %38 : i32
          %52 = scf.if %51 -> (f64) {
            %extracted_54 = tensor.extract %arg14[%49] : tensor<?xf64>
            scf.yield %extracted_54 : f64
          } else {
            scf.yield %cst : f64
          }
          %53 = arith.addf %52, %50 : f64
          %extracted_52 = tensor.extract %arg15[%49] : tensor<?xi32>
          %54 = arith.cmpi ne, %extracted_52, %38 : i32
          %55:3 = scf.if %54 -> (tensor<?xi32>, index, tensor<?xi64>) {
            %inserted_54 = tensor.insert %38 into %arg15[%49] : tensor<?xi32>
            %inserted_55 = tensor.insert %extracted_48 into %arg17[%arg16] : tensor<?xi64>
            %56 = index.add %arg16, %idx1
            scf.yield %inserted_54, %56, %inserted_55 : tensor<?xi32>, index, tensor<?xi64>
          } else {
            scf.yield %arg15, %arg16, %arg17 : tensor<?xi32>, index, tensor<?xi64>
          }
          %inserted_53 = tensor.insert %53 into %arg14[%49] : tensor<?xf64>
          scf.yield %inserted_53, %55#0, %55#1, %55#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        }
        scf.yield %48#0, %48#1, %48#2, %48#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      %43:3 = scf.for %arg8 = %c0 to %42#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
        %extracted_45 = tensor.extract %42#3[%arg8] : tensor<?xi64>
        %44 = arith.index_cast %extracted_45 : i64 to index
        %extracted_46 = tensor.extract %42#1[%44] : tensor<?xi32>
        %45 = arith.cmpi eq, %extracted_46, %38 : i32
        %46 = scf.if %45 -> (f64) {
          %extracted_49 = tensor.extract %42#0[%44] : tensor<?xf64>
          scf.yield %extracted_49 : f64
        } else {
          scf.yield %cst : f64
        }
        %inserted_47 = tensor.insert %extracted_45 into %arg10[%arg9] : tensor<?xi64>
        %47 = index.add %arg9, %idx1
        %inserted_48 = tensor.insert %46 into %arg11[%arg9] : tensor<?xf64>
        scf.yield %47, %inserted_47, %inserted_48 : index, tensor<?xi64>, tensor<?xf64>
      }
      scf.yield %43#0, %43#1, %43#2, %42#0, %38, %42#1, %42#3 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>
    }
    %37 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted = tensor.insert %idx-1 into %37[%idx0] : tensor<1xindex>
    "ta.print"(%29) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted) : (tensor<1xindex>) -> ()
    "ta.print"(%30) : (tensor<?xi64>) -> ()
    "ta.print"(%36#1) : (tensor<?xi64>) -> ()
    "ta.print"(%36#2) : (tensor<?xf64>) -> ()
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
    %cst = arith.constant 0.000000e+00 : f64
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %10 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
    %11 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %13 = memref.load %alloc_18[%c0] : memref<13xindex>
    %14 = memref.load %alloc_18[%c1] : memref<13xindex>
    %15 = memref.load %alloc_18[%c2] : memref<13xindex>
    %16 = memref.load %alloc_18[%c3] : memref<13xindex>
    %17 = memref.load %alloc_18[%c4] : memref<13xindex>
    %18 = memref.load %alloc_18[%c5] : memref<13xindex>
    %19 = memref.load %alloc_18[%c6] : memref<13xindex>
    %20 = memref.load %alloc_18[%c7] : memref<13xindex>
    %21 = memref.load %alloc_18[%c8] : memref<13xindex>
    %22 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%18) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%19) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%20) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%21) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %23 = bufferization.to_tensor %alloc_28 restrict writable : memref<?xi64>
    %24 = bufferization.to_tensor %alloc_30 restrict writable : memref<?xi64>
    %25 = bufferization.to_tensor %alloc_36 restrict writable : memref<?xf64>
    %26 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%26) : memref<?xi64>
    memref.store %c0_i64, %alloc_38[%idx0] : memref<?xi64>
    %alloc_39 = memref.alloc(%22) : memref<?xi64>
    %27:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %38 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %39 = arith.index_cast %extracted : i64 to index
      %extracted_44 = tensor.extract %10[%38] : tensor<?xi64>
      %40 = arith.index_cast %extracted_44 : i64 to index
      %41 = scf.for %arg3 = %39 to %40 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %extracted_45 = tensor.extract %11[%arg3] : tensor<?xi64>
        %44 = arith.index_cast %extracted_45 : i64 to index
        %45 = arith.addi %44, %c1 : index
        %extracted_46 = tensor.extract %23[%44] : tensor<?xi64>
        %46 = arith.index_cast %extracted_46 : i64 to index
        %extracted_47 = tensor.extract %23[%45] : tensor<?xi64>
        %47 = arith.index_cast %extracted_47 : i64 to index
        %48 = scf.for %arg5 = %46 to %47 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %extracted_48 = tensor.extract %24[%arg5] : tensor<?xi64>
          %49 = arith.index_cast %extracted_48 : i64 to index
          %50 = index.add %arg1, %idx1
          %51 = arith.index_cast %50 : index to i64
          %52 = memref.load %alloc_39[%49] : memref<?xi64>
          %53 = arith.cmpi eq, %51, %52 : i64
          %54 = scf.if %53 -> (index) {
            scf.yield %arg6 : index
          } else {
            memref.store %51, %alloc_39[%49] : memref<?xi64>
            %55 = index.add %arg6, %idx1
            scf.yield %55 : index
          }
          scf.yield %54 : index
        }
        scf.yield %48 : index
      }
      %42 = index.add %arg1, %idx1
      %43 = arith.index_cast %41 : index to i64
      memref.store %43, %alloc_38[%42] : memref<?xi64>
      scf.yield %42, %41 : index, index
    }
    %28 = arith.index_cast %9 : index to i64
    %alloc_40 = memref.alloc() : memref<1xi64>
    %cast_41 = memref.cast %alloc_40 : memref<1xi64> to memref<?xi64>
    memref.store %28, %alloc_40[%idx0] : memref<1xi64>
    %29 = bufferization.to_tensor %cast_41 restrict writable : memref<?xi64>
    %alloc_42 = memref.alloc(%27#1) : memref<?xi64>
    %30 = bufferization.to_tensor %alloc_38 restrict writable : memref<?xi64>
    %31 = bufferization.to_tensor %alloc_42 restrict writable : memref<?xi64>
    %alloc_43 = memref.alloc(%27#1) : memref<?xf64>
    scf.for %arg0 = %idx0 to %27#1 step %idx1 {
      memref.store %cst, %alloc_43[%arg0] : memref<?xf64>
    }
    %32 = bufferization.to_tensor %alloc_43 restrict writable : memref<?xf64>
    %33 = bufferization.alloc_tensor(%22) : tensor<?xf64>
    %34 = bufferization.alloc_tensor(%22) : tensor<?xi32>
    %35 = bufferization.alloc_tensor(%22) : tensor<?xi64>
    %36:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %31, %arg3 = %32, %arg4 = %33, %arg5 = %c1_i32, %arg6 = %34, %arg7 = %35) -> (index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>) {
      %38 = arith.addi %arg5, %c1_i32 : i32
      %39 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %10[%arg0] : tensor<?xi64>
      %40 = arith.index_cast %extracted : i64 to index
      %extracted_44 = tensor.extract %10[%39] : tensor<?xi64>
      %41 = arith.index_cast %extracted_44 : i64 to index
      %42:4 = scf.for %arg8 = %40 to %41 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_45 = tensor.extract %11[%arg8] : tensor<?xi64>
        %44 = arith.index_cast %extracted_45 : i64 to index
        %45 = arith.addi %44, %c1 : index
        %extracted_46 = tensor.extract %23[%44] : tensor<?xi64>
        %46 = arith.index_cast %extracted_46 : i64 to index
        %extracted_47 = tensor.extract %23[%45] : tensor<?xi64>
        %47 = arith.index_cast %extracted_47 : i64 to index
        %48:4 = scf.for %arg13 = %46 to %47 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_48 = tensor.extract %24[%arg13] : tensor<?xi64>
          %49 = arith.index_cast %extracted_48 : i64 to index
          %extracted_49 = tensor.extract %12[%arg8] : tensor<?xf64>
          %extracted_50 = tensor.extract %25[%arg13] : tensor<?xf64>
          %50 = arith.mulf %extracted_49, %extracted_50 : f64
          %extracted_51 = tensor.extract %arg15[%49] : tensor<?xi32>
          %51 = arith.cmpi eq, %extracted_51, %38 : i32
          %52 = scf.if %51 -> (f64) {
            %extracted_54 = tensor.extract %arg14[%49] : tensor<?xf64>
            scf.yield %extracted_54 : f64
          } else {
            scf.yield %cst : f64
          }
          %53 = arith.addf %52, %50 : f64
          %extracted_52 = tensor.extract %arg15[%49] : tensor<?xi32>
          %54 = arith.cmpi ne, %extracted_52, %38 : i32
          %55:3 = scf.if %54 -> (tensor<?xi32>, index, tensor<?xi64>) {
            %inserted_54 = tensor.insert %38 into %arg15[%49] : tensor<?xi32>
            %inserted_55 = tensor.insert %extracted_48 into %arg17[%arg16] : tensor<?xi64>
            %56 = index.add %arg16, %idx1
            scf.yield %inserted_54, %56, %inserted_55 : tensor<?xi32>, index, tensor<?xi64>
          } else {
            scf.yield %arg15, %arg16, %arg17 : tensor<?xi32>, index, tensor<?xi64>
          }
          %inserted_53 = tensor.insert %53 into %arg14[%49] : tensor<?xf64>
          scf.yield %inserted_53, %55#0, %55#1, %55#2 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
        }
        scf.yield %48#0, %48#1, %48#2, %48#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
      }
      %43:3 = scf.for %arg8 = %c0 to %42#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, tensor<?xi64>, tensor<?xf64>) {
        %extracted_45 = tensor.extract %42#3[%arg8] : tensor<?xi64>
        %44 = arith.index_cast %extracted_45 : i64 to index
        %extracted_46 = tensor.extract %42#1[%44] : tensor<?xi32>
        %45 = arith.cmpi eq, %extracted_46, %38 : i32
        %46 = scf.if %45 -> (f64) {
          %extracted_49 = tensor.extract %42#0[%44] : tensor<?xf64>
          scf.yield %extracted_49 : f64
        } else {
          scf.yield %cst : f64
        }
        %inserted_47 = tensor.insert %extracted_45 into %arg10[%arg9] : tensor<?xi64>
        %47 = index.add %arg9, %idx1
        %inserted_48 = tensor.insert %46 into %arg11[%arg9] : tensor<?xf64>
        scf.yield %47, %inserted_47, %inserted_48 : index, tensor<?xi64>, tensor<?xf64>
      }
      scf.yield %43#0, %43#1, %43#2, %42#0, %38, %42#1, %42#3 : index, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, tensor<?xi64>
    }
    %37 = bufferization.alloc_tensor() : tensor<1xindex>
    %inserted = tensor.insert %idx-1 into %37[%idx0] : tensor<1xindex>
    "ta.print"(%29) : (tensor<?xi64>) -> ()
    "ta.print"(%inserted) : (tensor<1xindex>) -> ()
    "ta.print"(%30) : (tensor<?xi64>) -> ()
    "ta.print"(%36#1) : (tensor<?xi64>) -> ()
    "ta.print"(%36#2) : (tensor<?xf64>) -> ()
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
    %cst = arith.constant 0.000000e+00 : f64
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) : memref<?xi64>
    memref.store %c0_i64, %alloc_38[%idx0] : memref<?xi64>
    %alloc_39 = memref.alloc(%19) : memref<?xi64>
    %21:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %29 = arith.addi %arg0, %c1 : index
      %30 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %31 = arith.index_cast %30 : i64 to index
      %32 = memref.load %alloc_8[%29] : memref<?xi64>
      %33 = arith.index_cast %32 : i64 to index
      %34 = scf.for %arg3 = %31 to %33 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %37 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = arith.addi %38, %c1 : index
        %40 = memref.load %alloc_28[%38] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = memref.load %alloc_28[%39] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44 = scf.for %arg5 = %41 to %43 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %45 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %46 = arith.index_cast %45 : i64 to index
          %47 = index.add %arg1, %idx1
          %48 = arith.index_cast %47 : index to i64
          %49 = memref.load %alloc_39[%46] : memref<?xi64>
          %50 = arith.cmpi eq, %48, %49 : i64
          %51 = scf.if %50 -> (index) {
            scf.yield %arg6 : index
          } else {
            memref.store %48, %alloc_39[%46] : memref<?xi64>
            %52 = index.add %arg6, %idx1
            scf.yield %52 : index
          }
          scf.yield %51 : index
        }
        scf.yield %44 : index
      }
      %35 = index.add %arg1, %idx1
      %36 = arith.index_cast %34 : index to i64
      memref.store %36, %alloc_38[%35] : memref<?xi64>
      scf.yield %35, %34 : index, index
    }
    %22 = arith.index_cast %9 : index to i64
    %alloc_40 = memref.alloc() : memref<1xi64>
    %cast_41 = memref.cast %alloc_40 : memref<1xi64> to memref<?xi64>
    memref.store %22, %alloc_40[%idx0] : memref<1xi64>
    %23 = bufferization.to_tensor %cast_41 restrict writable : memref<?xi64>
    %alloc_42 = memref.alloc(%21#1) : memref<?xi64>
    %24 = bufferization.to_tensor %alloc_38 restrict writable : memref<?xi64>
    %alloc_43 = memref.alloc(%21#1) : memref<?xf64>
    scf.for %arg0 = %idx0 to %21#1 step %idx1 {
      memref.store %cst, %alloc_43[%arg0] : memref<?xf64>
    }
    %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_46 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %25:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_42, %arg3 = %alloc_43, %arg4 = %alloc_44, %arg5 = %c1_i32, %arg6 = %alloc_45, %arg7 = %alloc_46) -> (index, memref<?xi64>, memref<?xf64>, memref<?xf64>, i32, memref<?xi32>, memref<?xi64>) {
      %29 = arith.addi %arg5, %c1_i32 : i32
      %30 = arith.addi %arg0, %c1 : index
      %31 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %32 = arith.index_cast %31 : i64 to index
      %33 = memref.load %alloc_8[%30] : memref<?xi64>
      %34 = arith.index_cast %33 : i64 to index
      %35:4 = scf.for %arg8 = %32 to %34 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
        %37 = memref.load %alloc_10[%arg8] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = arith.addi %38, %c1 : index
        %40 = memref.load %alloc_28[%38] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = memref.load %alloc_28[%39] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44:4 = scf.for %arg13 = %41 to %43 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
          %45 = memref.load %alloc_30[%arg13] : memref<?xi64>
          %46 = arith.index_cast %45 : i64 to index
          %47 = memref.load %alloc_16[%arg8] : memref<?xf64>
          %48 = memref.load %alloc_36[%arg13] : memref<?xf64>
          %49 = arith.mulf %47, %48 : f64
          %50 = memref.load %arg15[%46] : memref<?xi32>
          %51 = arith.cmpi eq, %50, %29 : i32
          %52 = scf.if %51 -> (f64) {
            %57 = memref.load %arg14[%46] : memref<?xf64>
            scf.yield %57 : f64
          } else {
            scf.yield %cst : f64
          }
          %53 = arith.addf %52, %49 : f64
          %54 = memref.load %arg15[%46] : memref<?xi32>
          %55 = arith.cmpi ne, %54, %29 : i32
          %56:3 = scf.if %55 -> (memref<?xi32>, index, memref<?xi64>) {
            memref.store %29, %arg15[%46] : memref<?xi32>
            memref.store %45, %arg17[%arg16] : memref<?xi64>
            %57 = index.add %arg16, %idx1
            scf.yield %arg15, %57, %arg17 : memref<?xi32>, index, memref<?xi64>
          } else {
            scf.yield %arg15, %arg16, %arg17 : memref<?xi32>, index, memref<?xi64>
          }
          memref.store %53, %arg14[%46] : memref<?xf64>
          scf.yield %arg14, %56#0, %56#1, %56#2 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
        }
        scf.yield %44#0, %44#1, %44#2, %44#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
      }
      %36:3 = scf.for %arg8 = %c0 to %35#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, memref<?xi64>, memref<?xf64>) {
        %37 = memref.load %35#3[%arg8] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = memref.load %35#1[%38] : memref<?xi32>
        %40 = arith.cmpi eq, %39, %29 : i32
        %41 = scf.if %40 -> (f64) {
          %43 = memref.load %35#0[%38] : memref<?xf64>
          scf.yield %43 : f64
        } else {
          scf.yield %cst : f64
        }
        memref.store %37, %arg10[%arg9] : memref<?xi64>
        %42 = index.add %arg9, %idx1
        memref.store %41, %arg11[%arg9] : memref<?xf64>
        scf.yield %42, %arg10, %arg11 : index, memref<?xi64>, memref<?xf64>
      }
      scf.yield %36#0, %36#1, %36#2, %35#0, %29, %35#1, %35#3 : index, memref<?xi64>, memref<?xf64>, memref<?xf64>, i32, memref<?xi32>, memref<?xi64>
    }
    %26 = bufferization.to_tensor %25#2 : memref<?xf64>
    %27 = bufferization.to_tensor %25#1 : memref<?xi64>
    %alloc_47 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_47[%idx0] : memref<1xindex>
    %28 = bufferization.to_tensor %alloc_47 : memref<1xindex>
    "ta.print"(%23) : (tensor<?xi64>) -> ()
    "ta.print"(%28) : (tensor<1xindex>) -> ()
    "ta.print"(%24) : (tensor<?xi64>) -> ()
    "ta.print"(%27) : (tensor<?xi64>) -> ()
    "ta.print"(%26) : (tensor<?xf64>) -> ()
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
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
  %cst = arith.constant 0.000000e+00 : f64
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_18 = memref.alloc() : memref<13xindex>
  %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %10 = memref.load %alloc_18[%c0] : memref<13xindex>
  %11 = memref.load %alloc_18[%c1] : memref<13xindex>
  %12 = memref.load %alloc_18[%c2] : memref<13xindex>
  %13 = memref.load %alloc_18[%c3] : memref<13xindex>
  %14 = memref.load %alloc_18[%c4] : memref<13xindex>
  %15 = memref.load %alloc_18[%c5] : memref<13xindex>
  %16 = memref.load %alloc_18[%c6] : memref<13xindex>
  %17 = memref.load %alloc_18[%c7] : memref<13xindex>
  %18 = memref.load %alloc_18[%c8] : memref<13xindex>
  %19 = memref.load %alloc_18[%c10] : memref<13xindex>
  %alloc_20 = memref.alloc(%10) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%11) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%12) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%13) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%14) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%15) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%16) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%17) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%18) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %20 = index.add %9, %idx1
  %alloc_38 = memref.alloc(%20) : memref<?xi64>
  memref.store %c0_i64, %alloc_38[%idx0] : memref<?xi64>
  %alloc_39 = memref.alloc(%19) : memref<?xi64>
  %21:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
    %29 = arith.addi %arg0, %c1 : index
    %30 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %31 = arith.index_cast %30 : i64 to index
    %32 = memref.load %alloc_8[%29] : memref<?xi64>
    %33 = arith.index_cast %32 : i64 to index
    %34 = scf.for %arg3 = %31 to %33 step %c1 iter_args(%arg4 = %arg2) -> (index) {
      %37 = memref.load %alloc_10[%arg3] : memref<?xi64>
      %38 = arith.index_cast %37 : i64 to index
      %39 = arith.addi %38, %c1 : index
      %40 = memref.load %alloc_28[%38] : memref<?xi64>
      %41 = arith.index_cast %40 : i64 to index
      %42 = memref.load %alloc_28[%39] : memref<?xi64>
      %43 = arith.index_cast %42 : i64 to index
      %44 = scf.for %arg5 = %41 to %43 step %c1 iter_args(%arg6 = %arg4) -> (index) {
        %45 = memref.load %alloc_30[%arg5] : memref<?xi64>
        %46 = arith.index_cast %45 : i64 to index
        %47 = index.add %arg1, %idx1
        %48 = arith.index_cast %47 : index to i64
        %49 = memref.load %alloc_39[%46] : memref<?xi64>
        %50 = arith.cmpi eq, %48, %49 : i64
        %51 = scf.if %50 -> (index) {
          scf.yield %arg6 : index
        } else {
          memref.store %48, %alloc_39[%46] : memref<?xi64>
          %52 = index.add %arg6, %idx1
          scf.yield %52 : index
        }
        scf.yield %51 : index
      }
      scf.yield %44 : index
    }
    %35 = index.add %arg1, %idx1
    %36 = arith.index_cast %34 : index to i64
    memref.store %36, %alloc_38[%35] : memref<?xi64>
    scf.yield %35, %34 : index, index
  }
  %22 = arith.index_cast %9 : index to i64
  %alloc_40 = memref.alloc() : memref<1xi64>
  %cast_41 = memref.cast %alloc_40 : memref<1xi64> to memref<?xi64>
  memref.store %22, %alloc_40[%idx0] : memref<1xi64>
  %23 = bufferization.to_tensor %cast_41 restrict writable : memref<?xi64>
  %alloc_42 = memref.alloc(%21#1) : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_38 restrict writable : memref<?xi64>
  %alloc_43 = memref.alloc(%21#1) : memref<?xf64>
  scf.for %arg0 = %idx0 to %21#1 step %idx1 {
    memref.store %cst, %alloc_43[%arg0] : memref<?xf64>
  }
  %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
  %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
  %alloc_46 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
  %25:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_42, %arg3 = %alloc_43, %arg4 = %alloc_44, %arg5 = %c1_i32, %arg6 = %alloc_45, %arg7 = %alloc_46) -> (index, memref<?xi64>, memref<?xf64>, memref<?xf64>, i32, memref<?xi32>, memref<?xi64>) {
    %29 = arith.addi %arg5, %c1_i32 : i32
    %30 = arith.addi %arg0, %c1 : index
    %31 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %32 = arith.index_cast %31 : i64 to index
    %33 = memref.load %alloc_8[%30] : memref<?xi64>
    %34 = arith.index_cast %33 : i64 to index
    %35:4 = scf.for %arg8 = %32 to %34 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
      %37 = memref.load %alloc_10[%arg8] : memref<?xi64>
      %38 = arith.index_cast %37 : i64 to index
      %39 = arith.addi %38, %c1 : index
      %40 = memref.load %alloc_28[%38] : memref<?xi64>
      %41 = arith.index_cast %40 : i64 to index
      %42 = memref.load %alloc_28[%39] : memref<?xi64>
      %43 = arith.index_cast %42 : i64 to index
      %44:4 = scf.for %arg13 = %41 to %43 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
        %45 = memref.load %alloc_30[%arg13] : memref<?xi64>
        %46 = arith.index_cast %45 : i64 to index
        %47 = memref.load %alloc_16[%arg8] : memref<?xf64>
        %48 = memref.load %alloc_36[%arg13] : memref<?xf64>
        %49 = arith.mulf %47, %48 : f64
        %50 = memref.load %arg15[%46] : memref<?xi32>
        %51 = arith.cmpi eq, %50, %29 : i32
        %52 = scf.if %51 -> (f64) {
          %57 = memref.load %arg14[%46] : memref<?xf64>
          scf.yield %57 : f64
        } else {
          scf.yield %cst : f64
        }
        %53 = arith.addf %52, %49 : f64
        %54 = memref.load %arg15[%46] : memref<?xi32>
        %55 = arith.cmpi ne, %54, %29 : i32
        %56:3 = scf.if %55 -> (memref<?xi32>, index, memref<?xi64>) {
          memref.store %29, %arg15[%46] : memref<?xi32>
          memref.store %45, %arg17[%arg16] : memref<?xi64>
          %57 = index.add %arg16, %idx1
          scf.yield %arg15, %57, %arg17 : memref<?xi32>, index, memref<?xi64>
        } else {
          scf.yield %arg15, %arg16, %arg17 : memref<?xi32>, index, memref<?xi64>
        }
        memref.store %53, %arg14[%46] : memref<?xf64>
        scf.yield %arg14, %56#0, %56#1, %56#2 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
      }
      scf.yield %44#0, %44#1, %44#2, %44#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
    }
    %36:3 = scf.for %arg8 = %c0 to %35#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, memref<?xi64>, memref<?xf64>) {
      %37 = memref.load %35#3[%arg8] : memref<?xi64>
      %38 = arith.index_cast %37 : i64 to index
      %39 = memref.load %35#1[%38] : memref<?xi32>
      %40 = arith.cmpi eq, %39, %29 : i32
      %41 = scf.if %40 -> (f64) {
        %43 = memref.load %35#0[%38] : memref<?xf64>
        scf.yield %43 : f64
      } else {
        scf.yield %cst : f64
      }
      memref.store %37, %arg10[%arg9] : memref<?xi64>
      %42 = index.add %arg9, %idx1
      memref.store %41, %arg11[%arg9] : memref<?xf64>
      scf.yield %42, %arg10, %arg11 : index, memref<?xi64>, memref<?xf64>
    }
    scf.yield %36#0, %36#1, %36#2, %35#0, %29, %35#1, %35#3 : index, memref<?xi64>, memref<?xf64>, memref<?xf64>, i32, memref<?xi32>, memref<?xi64>
  }
  %26 = bufferization.to_tensor %25#2 : memref<?xf64>
  %27 = bufferization.to_tensor %25#1 : memref<?xi64>
  %alloc_47 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_47[%idx0] : memref<1xindex>
  %28 = bufferization.to_tensor %alloc_47 : memref<1xindex>
  "ta.print"(%23) : (tensor<?xi64>) -> ()
  "ta.print"(%28) : (tensor<1xindex>) -> ()
  "ta.print"(%24) : (tensor<?xi64>) -> ()
  "ta.print"(%27) : (tensor<?xi64>) -> ()
  "ta.print"(%26) : (tensor<?xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %idx-1 = index.constant -1
  %idx1 = index.constant 1
  %idx0 = index.constant 0
  %cst = arith.constant 0.000000e+00 : f64
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
  %alloc_0 = memref.alloc(%0) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_18 = memref.alloc() : memref<13xindex>
  %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %10 = memref.load %alloc_18[%c0] : memref<13xindex>
  %11 = memref.load %alloc_18[%c1] : memref<13xindex>
  %12 = memref.load %alloc_18[%c2] : memref<13xindex>
  %13 = memref.load %alloc_18[%c3] : memref<13xindex>
  %14 = memref.load %alloc_18[%c4] : memref<13xindex>
  %15 = memref.load %alloc_18[%c5] : memref<13xindex>
  %16 = memref.load %alloc_18[%c6] : memref<13xindex>
  %17 = memref.load %alloc_18[%c7] : memref<13xindex>
  %18 = memref.load %alloc_18[%c8] : memref<13xindex>
  %19 = memref.load %alloc_18[%c10] : memref<13xindex>
  %alloc_20 = memref.alloc(%10) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%11) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%12) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%13) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%14) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%15) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%16) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%17) : memref<?xi64>
  linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%18) : memref<?xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %20 = index.add %9, %idx1
  %alloc_38 = memref.alloc(%20) : memref<?xi64>
  memref.store %c0_i64, %alloc_38[%idx0] : memref<?xi64>
  %alloc_39 = memref.alloc(%19) : memref<?xi64>
  %21:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
    %34 = arith.addi %arg0, %c1 : index
    %35 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %36 = arith.index_cast %35 : i64 to index
    %37 = memref.load %alloc_8[%34] : memref<?xi64>
    %38 = arith.index_cast %37 : i64 to index
    %39 = scf.for %arg3 = %36 to %38 step %c1 iter_args(%arg4 = %arg2) -> (index) {
      %42 = memref.load %alloc_10[%arg3] : memref<?xi64>
      %43 = arith.index_cast %42 : i64 to index
      %44 = arith.addi %43, %c1 : index
      %45 = memref.load %alloc_28[%43] : memref<?xi64>
      %46 = arith.index_cast %45 : i64 to index
      %47 = memref.load %alloc_28[%44] : memref<?xi64>
      %48 = arith.index_cast %47 : i64 to index
      %49 = scf.for %arg5 = %46 to %48 step %c1 iter_args(%arg6 = %arg4) -> (index) {
        %50 = memref.load %alloc_30[%arg5] : memref<?xi64>
        %51 = arith.index_cast %50 : i64 to index
        %52 = index.add %arg1, %idx1
        %53 = arith.index_cast %52 : index to i64
        %54 = memref.load %alloc_39[%51] : memref<?xi64>
        %55 = arith.cmpi eq, %53, %54 : i64
        %56 = scf.if %55 -> (index) {
          scf.yield %arg6 : index
        } else {
          memref.store %53, %alloc_39[%51] : memref<?xi64>
          %57 = index.add %arg6, %idx1
          scf.yield %57 : index
        }
        scf.yield %56 : index
      }
      scf.yield %49 : index
    }
    %40 = index.add %arg1, %idx1
    %41 = arith.index_cast %39 : index to i64
    memref.store %41, %alloc_38[%40] : memref<?xi64>
    scf.yield %40, %39 : index, index
  }
  %22 = arith.index_cast %9 : index to i64
  %alloc_40 = memref.alloc() : memref<1xi64>
  %cast_41 = memref.cast %alloc_40 : memref<1xi64> to memref<?xi64>
  memref.store %22, %alloc_40[%idx0] : memref<1xi64>
  %23 = bufferization.to_tensor %cast_41 restrict writable : memref<?xi64>
  %alloc_42 = memref.alloc(%21#1) : memref<?xi64>
  %24 = bufferization.to_tensor %alloc_38 restrict writable : memref<?xi64>
  %alloc_43 = memref.alloc(%21#1) : memref<?xf64>
  scf.for %arg0 = %idx0 to %21#1 step %idx1 {
    memref.store %cst, %alloc_43[%arg0] : memref<?xf64>
  }
  %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
  %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
  %alloc_46 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
  %25:7 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %alloc_42, %arg3 = %alloc_43, %arg4 = %alloc_44, %arg5 = %c1_i32, %arg6 = %alloc_45, %arg7 = %alloc_46) -> (index, memref<?xi64>, memref<?xf64>, memref<?xf64>, i32, memref<?xi32>, memref<?xi64>) {
    %34 = arith.addi %arg5, %c1_i32 : i32
    %35 = arith.addi %arg0, %c1 : index
    %36 = memref.load %alloc_8[%arg0] : memref<?xi64>
    %37 = arith.index_cast %36 : i64 to index
    %38 = memref.load %alloc_8[%35] : memref<?xi64>
    %39 = arith.index_cast %38 : i64 to index
    %40:4 = scf.for %arg8 = %37 to %39 step %c1 iter_args(%arg9 = %arg4, %arg10 = %arg6, %arg11 = %idx0, %arg12 = %arg7) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
      %42 = memref.load %alloc_10[%arg8] : memref<?xi64>
      %43 = arith.index_cast %42 : i64 to index
      %44 = arith.addi %43, %c1 : index
      %45 = memref.load %alloc_28[%43] : memref<?xi64>
      %46 = arith.index_cast %45 : i64 to index
      %47 = memref.load %alloc_28[%44] : memref<?xi64>
      %48 = arith.index_cast %47 : i64 to index
      %49:4 = scf.for %arg13 = %46 to %48 step %c1 iter_args(%arg14 = %arg9, %arg15 = %arg10, %arg16 = %arg11, %arg17 = %arg12) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>) {
        %50 = memref.load %alloc_30[%arg13] : memref<?xi64>
        %51 = arith.index_cast %50 : i64 to index
        %52 = memref.load %alloc_16[%arg8] : memref<?xf64>
        %53 = memref.load %alloc_36[%arg13] : memref<?xf64>
        %54 = arith.mulf %52, %53 : f64
        %55 = memref.load %arg15[%51] : memref<?xi32>
        %56 = arith.cmpi eq, %55, %34 : i32
        %57 = scf.if %56 -> (f64) {
          %62 = memref.load %arg14[%51] : memref<?xf64>
          scf.yield %62 : f64
        } else {
          scf.yield %cst : f64
        }
        %58 = arith.addf %57, %54 : f64
        %59 = memref.load %arg15[%51] : memref<?xi32>
        %60 = arith.cmpi ne, %59, %34 : i32
        %61:3 = scf.if %60 -> (memref<?xi32>, index, memref<?xi64>) {
          memref.store %34, %arg15[%51] : memref<?xi32>
          memref.store %50, %arg17[%arg16] : memref<?xi64>
          %62 = index.add %arg16, %idx1
          scf.yield %arg15, %62, %arg17 : memref<?xi32>, index, memref<?xi64>
        } else {
          scf.yield %arg15, %arg16, %arg17 : memref<?xi32>, index, memref<?xi64>
        }
        memref.store %58, %arg14[%51] : memref<?xf64>
        scf.yield %arg14, %61#0, %61#1, %61#2 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
      }
      scf.yield %49#0, %49#1, %49#2, %49#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
    }
    %41:3 = scf.for %arg8 = %c0 to %40#2 step %c1 iter_args(%arg9 = %arg1, %arg10 = %arg2, %arg11 = %arg3) -> (index, memref<?xi64>, memref<?xf64>) {
      %42 = memref.load %40#3[%arg8] : memref<?xi64>
      %43 = arith.index_cast %42 : i64 to index
      %44 = memref.load %40#1[%43] : memref<?xi32>
      %45 = arith.cmpi eq, %44, %34 : i32
      %46 = scf.if %45 -> (f64) {
        %48 = memref.load %40#0[%43] : memref<?xf64>
        scf.yield %48 : f64
      } else {
        scf.yield %cst : f64
      }
      memref.store %42, %arg10[%arg9] : memref<?xi64>
      %47 = index.add %arg9, %idx1
      memref.store %46, %arg11[%arg9] : memref<?xf64>
      scf.yield %47, %arg10, %arg11 : index, memref<?xi64>, memref<?xf64>
    }
    scf.yield %41#0, %41#1, %41#2, %40#0, %34, %40#1, %40#3 : index, memref<?xi64>, memref<?xf64>, memref<?xf64>, i32, memref<?xi32>, memref<?xi64>
  }
  %26 = bufferization.to_tensor %25#2 : memref<?xf64>
  %27 = bufferization.to_tensor %25#1 : memref<?xi64>
  %alloc_47 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
  memref.store %idx-1, %alloc_47[%idx0] : memref<1xindex>
  %28 = bufferization.to_tensor %alloc_47 : memref<1xindex>
  %29 = bufferization.to_memref %23 : memref<?xi64>
  %cast_48 = memref.cast %29 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_48) : (memref<*xi64>) -> ()
  %30 = bufferization.to_memref %28 : memref<1xindex>
  %cast_49 = memref.cast %30 : memref<1xindex> to memref<*xindex>
  call @comet_print_memref_index(%cast_49) : (memref<*xindex>) -> ()
  %31 = bufferization.to_memref %24 : memref<?xi64>
  %cast_50 = memref.cast %31 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_50) : (memref<*xi64>) -> ()
  %32 = bufferization.to_memref %27 : memref<?xi64>
  %cast_51 = memref.cast %32 : memref<?xi64> to memref<*xi64>
  call @comet_print_memref_i64(%cast_51) : (memref<*xi64>) -> ()
  %33 = bufferization.to_memref %26 : memref<?xf64>
  %cast_52 = memref.cast %33 : memref<?xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_52) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx-1 = index.constant -1
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %cst = arith.constant 0.000000e+00 : f64
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) : memref<?xi64>
    memref.store %c0_i64, %alloc_38[%idx0] : memref<?xi64>
    %alloc_39 = memref.alloc(%19) : memref<?xi64>
    %21:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %24 = arith.addi %arg0, %c1 : index
      %25 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = memref.load %alloc_8[%24] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = scf.for %arg3 = %26 to %28 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %32 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = arith.addi %33, %c1 : index
        %35 = memref.load %alloc_28[%33] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = memref.load %alloc_28[%34] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = scf.for %arg5 = %36 to %38 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %40 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %41 = arith.index_cast %40 : i64 to index
          %42 = index.add %arg1, %idx1
          %43 = arith.index_cast %42 : index to i64
          %44 = memref.load %alloc_39[%41] : memref<?xi64>
          %45 = arith.cmpi eq, %43, %44 : i64
          %46 = scf.if %45 -> (index) {
            scf.yield %arg6 : index
          } else {
            memref.store %43, %alloc_39[%41] : memref<?xi64>
            %47 = index.add %arg6, %idx1
            scf.yield %47 : index
          }
          scf.yield %46 : index
        }
        scf.yield %39 : index
      }
      %30 = index.add %arg1, %idx1
      %31 = arith.index_cast %29 : index to i64
      memref.store %31, %alloc_38[%30] : memref<?xi64>
      scf.yield %30, %29 : index, index
    }
    %22 = arith.index_cast %9 : index to i64
    %alloc_40 = memref.alloc() : memref<1xi64>
    memref.store %22, %alloc_40[%idx0] : memref<1xi64>
    %alloc_41 = memref.alloc(%21#1) : memref<?xi64>
    %alloc_42 = memref.alloc(%21#1) : memref<?xf64>
    scf.for %arg0 = %idx0 to %21#1 step %idx1 {
      memref.store %cst, %alloc_42[%arg0] : memref<?xf64>
    }
    %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %23:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %24 = arith.addi %arg2, %c1_i32 : i32
      %25 = arith.addi %arg0, %c1 : index
      %26 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_8[%25] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = scf.for %arg3 = %27 to %29 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %32 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = arith.addi %33, %c1 : index
        %35 = memref.load %alloc_28[%33] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = memref.load %alloc_28[%34] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = scf.for %arg5 = %36 to %38 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %40 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %41 = arith.index_cast %40 : i64 to index
          %42 = memref.load %alloc_16[%arg3] : memref<?xf64>
          %43 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %44 = arith.mulf %42, %43 : f64
          %45 = memref.load %alloc_44[%41] : memref<?xi32>
          %46 = arith.cmpi eq, %45, %24 : i32
          %47 = scf.if %46 -> (f64) {
            %52 = memref.load %alloc_43[%41] : memref<?xf64>
            scf.yield %52 : f64
          } else {
            scf.yield %cst : f64
          }
          %48 = arith.addf %47, %44 : f64
          %49 = memref.load %alloc_44[%41] : memref<?xi32>
          %50 = arith.cmpi ne, %49, %24 : i32
          %51 = scf.if %50 -> (index) {
            memref.store %24, %alloc_44[%41] : memref<?xi32>
            memref.store %40, %alloc_45[%arg6] : memref<?xi64>
            %52 = index.add %arg6, %idx1
            scf.yield %52 : index
          } else {
            scf.yield %arg6 : index
          }
          memref.store %48, %alloc_43[%41] : memref<?xf64>
          scf.yield %51 : index
        }
        scf.yield %39 : index
      }
      %31 = scf.for %arg3 = %c0 to %30 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %32 = memref.load %alloc_45[%arg3] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = memref.load %alloc_44[%33] : memref<?xi32>
        %35 = arith.cmpi eq, %34, %24 : i32
        %36 = scf.if %35 -> (f64) {
          %38 = memref.load %alloc_43[%33] : memref<?xf64>
          scf.yield %38 : f64
        } else {
          scf.yield %cst : f64
        }
        memref.store %32, %alloc_41[%arg4] : memref<?xi64>
        %37 = index.add %arg4, %idx1
        memref.store %36, %alloc_42[%arg4] : memref<?xf64>
        scf.yield %37 : index
      }
      scf.yield %31, %24 : index, i32
    }
    %alloc_46 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_46[%idx0] : memref<1xindex>
    %cast_47 = memref.cast %alloc_40 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_47) : (memref<*xi64>) -> ()
    %cast_48 = memref.cast %alloc_46 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_48) : (memref<*xindex>) -> ()
    %cast_49 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_41 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_50) : (memref<*xi64>) -> ()
    %cast_51 = memref.cast %alloc_42 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_51) : (memref<*xf64>) -> ()
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
    %cst = arith.constant 0.000000e+00 : f64
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) : memref<?xi64>
    memref.store %c0_i64, %alloc_38[%idx0] : memref<?xi64>
    %alloc_39 = memref.alloc(%19) : memref<?xi64>
    %21:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %24 = arith.addi %arg0, %c1 : index
      %25 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = memref.load %alloc_8[%24] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = scf.for %arg3 = %26 to %28 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %32 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = arith.addi %33, %c1 : index
        %35 = memref.load %alloc_28[%33] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = memref.load %alloc_28[%34] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = scf.for %arg5 = %36 to %38 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %40 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %41 = arith.index_cast %40 : i64 to index
          %42 = index.add %arg1, %idx1
          %43 = arith.index_cast %42 : index to i64
          %44 = memref.load %alloc_39[%41] : memref<?xi64>
          %45 = arith.cmpi eq, %43, %44 : i64
          %46 = scf.if %45 -> (index) {
            scf.yield %arg6 : index
          } else {
            memref.store %43, %alloc_39[%41] : memref<?xi64>
            %47 = index.add %arg6, %idx1
            scf.yield %47 : index
          }
          scf.yield %46 : index
        }
        scf.yield %39 : index
      }
      %30 = index.add %arg1, %idx1
      %31 = arith.index_cast %29 : index to i64
      memref.store %31, %alloc_38[%30] : memref<?xi64>
      scf.yield %30, %29 : index, index
    }
    %22 = arith.index_cast %9 : index to i64
    %alloc_40 = memref.alloc() : memref<1xi64>
    memref.store %22, %alloc_40[%idx0] : memref<1xi64>
    %alloc_41 = memref.alloc(%21#1) : memref<?xi64>
    %alloc_42 = memref.alloc(%21#1) : memref<?xf64>
    scf.for %arg0 = %idx0 to %21#1 step %idx1 {
      memref.store %cst, %alloc_42[%arg0] : memref<?xf64>
    }
    %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %23:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %24 = arith.addi %arg2, %c1_i32 : i32
      %25 = arith.addi %arg0, %c1 : index
      %26 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_8[%25] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = scf.for %arg3 = %27 to %29 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %32 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = arith.addi %33, %c1 : index
        %35 = memref.load %alloc_28[%33] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = memref.load %alloc_28[%34] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = scf.for %arg5 = %36 to %38 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %40 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %41 = arith.index_cast %40 : i64 to index
          %42 = memref.load %alloc_16[%arg3] : memref<?xf64>
          %43 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %44 = arith.mulf %42, %43 : f64
          %45 = memref.load %alloc_44[%41] : memref<?xi32>
          %46 = arith.cmpi eq, %45, %24 : i32
          %47 = scf.if %46 -> (f64) {
            %51 = memref.load %alloc_43[%41] : memref<?xf64>
            scf.yield %51 : f64
          } else {
            scf.yield %cst : f64
          }
          %48 = arith.addf %47, %44 : f64
          %49 = arith.cmpi ne, %45, %24 : i32
          %50 = scf.if %49 -> (index) {
            memref.store %24, %alloc_44[%41] : memref<?xi32>
            memref.store %40, %alloc_45[%arg6] : memref<?xi64>
            %51 = index.add %arg6, %idx1
            scf.yield %51 : index
          } else {
            scf.yield %arg6 : index
          }
          memref.store %48, %alloc_43[%41] : memref<?xf64>
          scf.yield %50 : index
        }
        scf.yield %39 : index
      }
      %31 = scf.for %arg3 = %c0 to %30 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %32 = memref.load %alloc_45[%arg3] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = memref.load %alloc_44[%33] : memref<?xi32>
        %35 = arith.cmpi eq, %34, %24 : i32
        %36 = scf.if %35 -> (f64) {
          %38 = memref.load %alloc_43[%33] : memref<?xf64>
          scf.yield %38 : f64
        } else {
          scf.yield %cst : f64
        }
        memref.store %32, %alloc_41[%arg4] : memref<?xi64>
        %37 = index.add %arg4, %idx1
        memref.store %36, %alloc_42[%arg4] : memref<?xf64>
        scf.yield %37 : index
      }
      scf.yield %31, %24 : index, i32
    }
    %alloc_46 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_46[%idx0] : memref<1xindex>
    %cast_47 = memref.cast %alloc_40 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_47) : (memref<*xi64>) -> ()
    %cast_48 = memref.cast %alloc_46 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_48) : (memref<*xindex>) -> ()
    %cast_49 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_41 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_50) : (memref<*xi64>) -> ()
    %cast_51 = memref.cast %alloc_42 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_51) : (memref<*xf64>) -> ()
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
    %cst = arith.constant 0.000000e+00 : f64
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) : memref<?xi64>
    memref.store %c0_i64, %alloc_38[%idx0] : memref<?xi64>
    %alloc_39 = memref.alloc(%19) : memref<?xi64>
    %21:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %24 = arith.addi %arg0, %c1 : index
      %25 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = memref.load %alloc_8[%24] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = scf.for %arg3 = %26 to %28 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %32 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = arith.addi %33, %c1 : index
        %35 = memref.load %alloc_28[%33] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = memref.load %alloc_28[%34] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = scf.for %arg5 = %36 to %38 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %40 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %41 = arith.index_cast %40 : i64 to index
          %42 = index.add %arg1, %idx1
          %43 = arith.index_cast %42 : index to i64
          %44 = memref.load %alloc_39[%41] : memref<?xi64>
          %45 = arith.cmpi eq, %43, %44 : i64
          %46 = scf.if %45 -> (index) {
            scf.yield %arg6 : index
          } else {
            memref.store %43, %alloc_39[%41] : memref<?xi64>
            %47 = index.add %arg6, %idx1
            scf.yield %47 : index
          }
          scf.yield %46 : index
        }
        scf.yield %39 : index
      }
      %30 = index.add %arg1, %idx1
      %31 = arith.index_cast %29 : index to i64
      memref.store %31, %alloc_38[%30] : memref<?xi64>
      scf.yield %30, %29 : index, index
    }
    %22 = arith.index_cast %9 : index to i64
    %alloc_40 = memref.alloc() : memref<1xi64>
    memref.store %22, %alloc_40[%idx0] : memref<1xi64>
    %alloc_41 = memref.alloc(%21#1) : memref<?xi64>
    %alloc_42 = memref.alloc(%21#1) : memref<?xf64>
    scf.for %arg0 = %idx0 to %21#1 step %idx1 {
      memref.store %cst, %alloc_42[%arg0] : memref<?xf64>
    }
    %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %23:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %24 = arith.addi %arg2, %c1_i32 : i32
      %25 = arith.addi %arg0, %c1 : index
      %26 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_8[%25] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = scf.for %arg3 = %27 to %29 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %32 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = arith.addi %33, %c1 : index
        %35 = memref.load %alloc_28[%33] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = memref.load %alloc_28[%34] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = scf.for %arg5 = %36 to %38 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %40 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %41 = arith.index_cast %40 : i64 to index
          %42 = memref.load %alloc_16[%arg3] : memref<?xf64>
          %43 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %44 = arith.mulf %42, %43 : f64
          %45 = memref.load %alloc_44[%41] : memref<?xi32>
          %46 = arith.cmpi eq, %45, %24 : i32
          %47 = scf.if %46 -> (f64) {
            %51 = memref.load %alloc_43[%41] : memref<?xf64>
            scf.yield %51 : f64
          } else {
            scf.yield %cst : f64
          }
          %48 = arith.addf %47, %44 : f64
          %49 = arith.cmpi ne, %45, %24 : i32
          %50 = scf.if %49 -> (index) {
            memref.store %24, %alloc_44[%41] : memref<?xi32>
            memref.store %40, %alloc_45[%arg6] : memref<?xi64>
            %51 = index.add %arg6, %idx1
            scf.yield %51 : index
          } else {
            scf.yield %arg6 : index
          }
          memref.store %48, %alloc_43[%41] : memref<?xf64>
          scf.yield %50 : index
        }
        scf.yield %39 : index
      }
      %31 = scf.for %arg3 = %c0 to %30 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %32 = memref.load %alloc_45[%arg3] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = memref.load %alloc_44[%33] : memref<?xi32>
        %35 = arith.cmpi eq, %34, %24 : i32
        %36 = scf.if %35 -> (f64) {
          %38 = memref.load %alloc_43[%33] : memref<?xf64>
          scf.yield %38 : f64
        } else {
          scf.yield %cst : f64
        }
        memref.store %32, %alloc_41[%arg4] : memref<?xi64>
        %37 = index.add %arg4, %idx1
        memref.store %36, %alloc_42[%arg4] : memref<?xf64>
        scf.yield %37 : index
      }
      scf.yield %31, %24 : index, i32
    }
    %alloc_46 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_46[%idx0] : memref<1xindex>
    %cast_47 = memref.cast %alloc_40 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_47) : (memref<*xi64>) -> ()
    %cast_48 = memref.cast %alloc_46 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_48) : (memref<*xindex>) -> ()
    %cast_49 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_41 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_50) : (memref<*xi64>) -> ()
    %cast_51 = memref.cast %alloc_42 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_51) : (memref<*xf64>) -> ()
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
    %cst = arith.constant 0.000000e+00 : f64
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %10 = memref.load %alloc_18[%c0] : memref<13xindex>
    %11 = memref.load %alloc_18[%c1] : memref<13xindex>
    %12 = memref.load %alloc_18[%c2] : memref<13xindex>
    %13 = memref.load %alloc_18[%c3] : memref<13xindex>
    %14 = memref.load %alloc_18[%c4] : memref<13xindex>
    %15 = memref.load %alloc_18[%c5] : memref<13xindex>
    %16 = memref.load %alloc_18[%c6] : memref<13xindex>
    %17 = memref.load %alloc_18[%c7] : memref<13xindex>
    %18 = memref.load %alloc_18[%c8] : memref<13xindex>
    %19 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%10) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_20 : memref<?xi64>)
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_22 : memref<?xi64>)
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_24 : memref<?xi64>)
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_26 : memref<?xi64>)
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_28 : memref<?xi64>)
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_30 : memref<?xi64>)
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_32 : memref<?xi64>)
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_34 : memref<?xi64>)
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_36 : memref<?xf64>)
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %20 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%20) : memref<?xi64>
    memref.store %c0_i64, %alloc_38[%idx0] : memref<?xi64>
    %alloc_39 = memref.alloc(%19) : memref<?xi64>
    %21:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %idx0) -> (index, index) {
      %24 = arith.addi %arg0, %c1 : index
      %25 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %26 = arith.index_cast %25 : i64 to index
      %27 = memref.load %alloc_8[%24] : memref<?xi64>
      %28 = arith.index_cast %27 : i64 to index
      %29 = scf.for %arg3 = %26 to %28 step %c1 iter_args(%arg4 = %arg2) -> (index) {
        %32 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = arith.addi %33, %c1 : index
        %35 = memref.load %alloc_28[%33] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = memref.load %alloc_28[%34] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = scf.for %arg5 = %36 to %38 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %40 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %41 = arith.index_cast %40 : i64 to index
          %42 = index.add %arg1, %idx1
          %43 = arith.index_cast %42 : index to i64
          %44 = memref.load %alloc_39[%41] : memref<?xi64>
          %45 = arith.cmpi eq, %43, %44 : i64
          %46 = scf.if %45 -> (index) {
            scf.yield %arg6 : index
          } else {
            memref.store %43, %alloc_39[%41] : memref<?xi64>
            %47 = index.add %arg6, %idx1
            scf.yield %47 : index
          }
          scf.yield %46 : index
        }
        scf.yield %39 : index
      }
      %30 = index.add %arg1, %idx1
      %31 = arith.index_cast %29 : index to i64
      memref.store %31, %alloc_38[%30] : memref<?xi64>
      scf.yield %30, %29 : index, index
    }
    %22 = arith.index_cast %9 : index to i64
    %alloc_40 = memref.alloc() : memref<1xi64>
    memref.store %22, %alloc_40[%idx0] : memref<1xi64>
    %alloc_41 = memref.alloc(%21#1) : memref<?xi64>
    %alloc_42 = memref.alloc(%21#1) : memref<?xf64>
    scf.for %arg0 = %idx0 to %21#1 step %idx1 {
      memref.store %cst, %alloc_42[%arg0] : memref<?xf64>
    }
    %alloc_43 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xf64>
    %alloc_44 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi32>
    %alloc_45 = memref.alloc(%19) {alignment = 64 : i64} : memref<?xi64>
    %23:2 = scf.for %arg0 = %c0 to %9 step %c1 iter_args(%arg1 = %idx0, %arg2 = %c1_i32) -> (index, i32) {
      %24 = arith.addi %arg2, %c1_i32 : i32
      %25 = arith.addi %arg0, %c1 : index
      %26 = memref.load %alloc_8[%arg0] : memref<?xi64>
      %27 = arith.index_cast %26 : i64 to index
      %28 = memref.load %alloc_8[%25] : memref<?xi64>
      %29 = arith.index_cast %28 : i64 to index
      %30 = scf.for %arg3 = %27 to %29 step %c1 iter_args(%arg4 = %idx0) -> (index) {
        %32 = memref.load %alloc_10[%arg3] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = arith.addi %33, %c1 : index
        %35 = memref.load %alloc_28[%33] : memref<?xi64>
        %36 = arith.index_cast %35 : i64 to index
        %37 = memref.load %alloc_28[%34] : memref<?xi64>
        %38 = arith.index_cast %37 : i64 to index
        %39 = scf.for %arg5 = %36 to %38 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %40 = memref.load %alloc_30[%arg5] : memref<?xi64>
          %41 = arith.index_cast %40 : i64 to index
          %42 = memref.load %alloc_16[%arg3] : memref<?xf64>
          %43 = memref.load %alloc_36[%arg5] : memref<?xf64>
          %44 = arith.mulf %42, %43 : f64
          %45 = memref.load %alloc_44[%41] : memref<?xi32>
          %46 = arith.cmpi eq, %45, %24 : i32
          %47 = scf.if %46 -> (f64) {
            %51 = memref.load %alloc_43[%41] : memref<?xf64>
            scf.yield %51 : f64
          } else {
            scf.yield %cst : f64
          }
          %48 = arith.addf %47, %44 : f64
          %49 = arith.cmpi ne, %45, %24 : i32
          %50 = scf.if %49 -> (index) {
            memref.store %24, %alloc_44[%41] : memref<?xi32>
            memref.store %40, %alloc_45[%arg6] : memref<?xi64>
            %51 = index.add %arg6, %idx1
            scf.yield %51 : index
          } else {
            scf.yield %arg6 : index
          }
          memref.store %48, %alloc_43[%41] : memref<?xf64>
          scf.yield %50 : index
        }
        scf.yield %39 : index
      }
      %31 = scf.for %arg3 = %c0 to %30 step %c1 iter_args(%arg4 = %arg1) -> (index) {
        %32 = memref.load %alloc_45[%arg3] : memref<?xi64>
        %33 = arith.index_cast %32 : i64 to index
        %34 = memref.load %alloc_44[%33] : memref<?xi32>
        %35 = arith.cmpi eq, %34, %24 : i32
        %36 = scf.if %35 -> (f64) {
          %38 = memref.load %alloc_43[%33] : memref<?xf64>
          scf.yield %38 : f64
        } else {
          scf.yield %cst : f64
        }
        memref.store %32, %alloc_41[%arg4] : memref<?xi64>
        %37 = index.add %arg4, %idx1
        memref.store %36, %alloc_42[%arg4] : memref<?xf64>
        scf.yield %37 : index
      }
      scf.yield %31, %24 : index, i32
    }
    %alloc_46 = memref.alloc() {alignment = 64 : i64} : memref<1xindex>
    memref.store %idx-1, %alloc_46[%idx0] : memref<1xindex>
    %cast_47 = memref.cast %alloc_40 : memref<1xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_47) : (memref<*xi64>) -> ()
    %cast_48 = memref.cast %alloc_46 : memref<1xindex> to memref<*xindex>
    call @comet_print_memref_index(%cast_48) : (memref<*xindex>) -> ()
    %cast_49 = memref.cast %alloc_38 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_49) : (memref<*xi64>) -> ()
    %cast_50 = memref.cast %alloc_41 : memref<?xi64> to memref<*xi64>
    call @comet_print_memref_i64(%cast_50) : (memref<*xi64>) -> ()
    %cast_51 = memref.cast %alloc_42 : memref<?xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_51) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}
