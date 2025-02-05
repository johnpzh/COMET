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
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %10 = "it.RootOp"() : () -> !it.index_tree
    %11 = "it.IndexOp"(%10) : (!it.index_tree) -> !it.index
    %12 = "it.IndexOp"(%11) : (!it.index) -> !it.index
    %13 = "it.IndexOp"(%12) : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %11) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_1, %pos_2 = "it.IndexToTensorDim"(%arg0, %13, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %14 = "it.LHSOperandOp"(%arg0, %pos, %pos_2, %crd, %crd_1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
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
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %9 = "it.IndexOp"(%7, %8) : (!it.index_tree, !it.domain) -> !it.index
    %10 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %11 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %12 = "it.DomainIntersectionOp"(%11, %10) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %13 = "it.IndexOp"(%9, %12) : (!it.index, !it.domain) -> !it.index
    %14 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %15 = "it.IndexOp"(%13, %14) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %9) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %15, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %16 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
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
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %51 = "it.RootOp"() : () -> !it.index_tree
    %52 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %53 = "it.IndexOp"(%51, %52) : (!it.index_tree, !it.domain) -> !it.index
    %54 = "it.DomainOp"(%47) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %55 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %56 = "it.DomainIntersectionOp"(%55, %54) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %57 = "it.IndexOp"(%53, %56) : (!it.index, !it.domain) -> !it.index
    %58 = "it.DomainOp"(%47) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %59 = "it.IndexOp"(%57, %58) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %53) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_81, %pos_82 = "it.IndexToTensorDim"(%arg0, %59, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %60 = "it.LHSOperandOp"(%arg0, %pos, %pos_82, %crd, %crd_81) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
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
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %51 = "it.RootOp"() : () -> !it.index_tree
    %52 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %53 = "it.IndexOp"(%51, %52) : (!it.index_tree, !it.domain) -> !it.index
    %54 = "it.DomainOp"(%47) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %55 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %56 = "it.DomainIntersectionOp"(%55, %54) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %57 = "it.IndexOp"(%53, %56) : (!it.index, !it.domain) -> !it.index
    %58 = "it.DomainOp"(%47) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %59 = "it.IndexOp"(%57, %58) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %53) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_81, %pos_82 = "it.IndexToTensorDim"(%arg0, %59, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %60 = "it.LHSOperandOp"(%arg0, %pos, %pos_82, %crd, %crd_81) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
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
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %51 = "it.RootOp"() : () -> !it.index_tree
    %52 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %53 = "it.IndexOp"(%51, %52) : (!it.index_tree, !it.domain) -> !it.index
    %54 = "it.DomainOp"(%47) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %55 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %56 = "it.DomainIntersectionOp"(%55, %54) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %57 = "it.IndexOp"(%53, %56) : (!it.index, !it.domain) -> !it.index
    %58 = "it.DomainOp"(%47) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %59 = "it.IndexOp"(%57, %58) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %53) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_81, %pos_82 = "it.IndexToTensorDim"(%arg0, %59, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %60 = "it.LHSOperandOp"(%arg0, %pos, %pos_82, %crd, %crd_81) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
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
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %52 = "it.RootOp"() : () -> !it.index_tree
    %53 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %54 = "it.IndexOp"(%52, %53) : (!it.index_tree, !it.domain) -> !it.index
    %55 = "it.DomainOp"(%47) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %56 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %57 = "it.DomainIntersectionOp"(%56, %55) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %58 = "it.IndexOp"(%54, %57) : (!it.index, !it.domain) -> !it.index
    %59 = "it.DomainOp"(%47) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %60 = "it.IndexOp"(%58, %59) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %54) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_81, %pos_82 = "it.IndexToTensorDim"(%arg0, %60, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %61 = "it.LHSOperandOp"(%arg0, %pos, %pos_82, %crd, %crd_81) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
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
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %52 = "it.RootOp"() : () -> !it.index_tree
    %53 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %54 = "it.IndexOp"(%52, %53) : (!it.index_tree, !it.domain) -> !it.index
    %55 = "it.DomainOp"(%47) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %56 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %57 = "it.DomainIntersectionOp"(%56, %55) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %58 = "it.IndexOp"(%54, %57) : (!it.index, !it.domain) -> !it.index
    %59 = "it.DomainOp"(%47) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %60 = "it.IndexOp"(%58, %59) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %54) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_81, %pos_82 = "it.IndexToTensorDim"(%arg0, %60, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %61 = "it.LHSOperandOp"(%arg0, %pos, %pos_82, %crd, %crd_81) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
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
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %52 = "it.RootOp"() : () -> !it.index_tree
    %53 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %54 = "it.IndexOp"(%52, %53) : (!it.index_tree, !it.domain) -> !it.index
    %55 = "it.DomainOp"(%47) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %56 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %57 = "it.DomainIntersectionOp"(%56, %55) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %58 = "it.IndexOp"(%54, %57) : (!it.index, !it.domain) -> !it.index
    %59 = "it.DomainOp"(%47) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %60 = "it.IndexOp"(%58, %59) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %54) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_81, %pos_82 = "it.IndexToTensorDim"(%arg0, %60, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %61 = "it.LHSOperandOp"(%arg0, %pos, %pos_82, %crd, %crd_81) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
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
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %52 = "it.RootOp"() : () -> !it.index_tree
    %53 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %54 = "it.IndexOp"(%52, %53) : (!it.index_tree, !it.domain) -> !it.index
    %55 = "it.DomainOp"(%47) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %56 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %57 = "it.DomainIntersectionOp"(%56, %55) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %58 = "it.IndexOp"(%54, %57) : (!it.index, !it.domain) -> !it.index
    %59 = "it.DomainOp"(%47) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %60 = "it.IndexOp"(%58, %59) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %54) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_81, %pos_82 = "it.IndexToTensorDim"(%arg0, %60, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %61 = "it.LHSOperandOp"(%arg0, %pos, %pos_82, %crd, %crd_81) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
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
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
    %55 = "it.RootOp"() : () -> !it.index_tree
    %56 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %57 = "it.IndexOp"(%55, %56) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %58 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %59 = "it.IndexOp"(%57, %58) : (!it.index, !it.domain) -> !it.index
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%45, %59) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %60 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos_43) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %61 = "it.IndexOp"(%59, %60) : (!it.index, !it.domain) -> !it.index
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%arg0, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%arg0, %61, %pos_45) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %62 = "it.LHSOperandOp"(%arg0, %pos_45, %pos_47, %crd_44, %crd_46) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
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
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, -9223372036854775808>):
    %56 = "it.RootOp"() : () -> !it.index_tree
    %57 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %58 = "it.IndexOp"(%56, %57) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %58) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %59 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %60 = "it.WorkspaceStartRowOp"(%58, %arg1) : (!it.index, !ta.workspace<f64, i64, -9223372036854775808>) -> !ta.workspace<f64, i64, -9223372036854775808>
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
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%arg0, %58) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%arg0, %70, %pos_51) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %71 = "it.LHSOperandOp"(%arg0, %pos_51, %pos_53, %crd_50, %crd_52) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
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
  ^bb0(%arg0: !it.symbolic_domain<64>):
    %55 = "it.RootOp"() : () -> !it.index_tree
    %56 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %57 = "it.IndexOp"(%55, %56) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %58 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %59 = "it.IndexOp"(%57, %58) : (!it.index, !it.domain) -> !it.index
    %crd_42, %pos_43 = "it.IndexToTensorDim"(%45, %59) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %60 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos_43) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %61 = "it.IndexOp"(%59, %60) : (!it.index, !it.domain) -> !it.index
    %62 = "it.ComputeSymbolicDomainOp"(%61, %arg0) <{is_unique = false}> : (!it.index, !it.symbolic_domain<64>) -> !it.symbolic_domain<64>
    %63 = "it.ComputeSymbolicDomainRowOp"(%57, %62) <{needs_mark = true}> : (!it.index, !it.symbolic_domain<64>) -> !it.symbolic_domain<64>
    it.yield %63 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %52 = "it.IndexTreeSparseTensorOp"(%49, %51) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %53 = "ta.AllocWorkspace"(%52) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, -9223372036854775808>
  %54:2 = "it.itree"(%52, %53) ({
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, -9223372036854775808>):
    %55 = "it.RootOp"() : () -> !it.index_tree
    %56 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %57 = "it.IndexOp"(%55, %56) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %58 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %59 = "it.WorkspaceStartRowOp"(%57, %arg1) : (!it.index, !ta.workspace<f64, i64, -9223372036854775808>) -> !ta.workspace<f64, i64, -9223372036854775808>
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
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%arg0, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%arg0, %69, %pos_51) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %70 = "it.LHSOperandOp"(%arg0, %pos_51, %pos_53, %crd_50, %crd_52) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
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
  ^bb0(%arg0: !it.symbolic_domain<64>):
    %c0_42 = arith.constant 0 : index
    %c1_43 = arith.constant 1 : index
    %55 = scf.for %arg1 = %c0_42 to %21 step %c1_43 iter_args(%arg2 = %arg0) -> (!it.symbolic_domain<64>) {
      %c1_44 = arith.constant 1 : index
      %56 = arith.addi %arg1, %c1_44 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %57 = arith.index_cast %extracted : i64 to index
      %extracted_45 = tensor.extract %22[%56] : tensor<?xi64>
      %58 = arith.index_cast %extracted_45 : i64 to index
      %c1_46 = arith.constant 1 : index
      %59 = scf.for %arg3 = %57 to %58 step %c1_46 iter_args(%arg4 = %arg2) -> (!it.symbolic_domain<64>) {
        %61 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %62 = arith.index_cast %61 : i64 to index
        %c1_47 = arith.constant 1 : index
        %63 = arith.addi %62, %c1_47 : index
        %extracted_48 = tensor.extract %46[%62] : tensor<?xi64>
        %64 = arith.index_cast %extracted_48 : i64 to index
        %extracted_49 = tensor.extract %46[%63] : tensor<?xi64>
        %65 = arith.index_cast %extracted_49 : i64 to index
        %c1_50 = arith.constant 1 : index
        %66 = scf.for %arg5 = %64 to %65 step %c1_50 iter_args(%arg6 = %arg4) -> (!it.symbolic_domain<64>) {
          %67 = "ta.SpTensorGetCrd"(%45, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %68 = arith.index_cast %67 : i64 to index
          %69 = "it.SymbolicDomainInsertOp"(%arg6, %68) <{is_unique = false}> : (!it.symbolic_domain<64>, index) -> !it.symbolic_domain<64>
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
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, -9223372036854775808>):
    %c0_42 = arith.constant 0 : index
    %c1_43 = arith.constant 1 : index
    %55:2 = scf.for %arg2 = %c0_42 to %21 step %c1_43 iter_args(%arg3 = %arg0, %arg4 = %arg1) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) {
      %56 = "ta.WorkspaceClear"(%arg4) : (!ta.workspace<f64, i64, -9223372036854775808>) -> !ta.workspace<f64, i64, -9223372036854775808>
      %c1_44 = arith.constant 1 : index
      %57 = arith.addi %arg2, %c1_44 : index
      %extracted = tensor.extract %22[%arg2] : tensor<?xi64>
      %58 = arith.index_cast %extracted : i64 to index
      %extracted_45 = tensor.extract %22[%57] : tensor<?xi64>
      %59 = arith.index_cast %extracted_45 : i64 to index
      %c1_46 = arith.constant 1 : index
      %60:2 = scf.for %arg5 = %58 to %59 step %c1_46 iter_args(%arg6 = %arg3, %arg7 = %56) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) {
        %63 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %64 = arith.index_cast %63 : i64 to index
        %c1_49 = arith.constant 1 : index
        %65 = arith.addi %64, %c1_49 : index
        %extracted_50 = tensor.extract %46[%64] : tensor<?xi64>
        %66 = arith.index_cast %extracted_50 : i64 to index
        %extracted_51 = tensor.extract %46[%65] : tensor<?xi64>
        %67 = arith.index_cast %extracted_51 : i64 to index
        %c1_52 = arith.constant 1 : index
        %68:2 = scf.for %arg8 = %66 to %67 step %c1_52 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) {
          %69 = "ta.SpTensorGetCrd"(%45, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %70 = arith.index_cast %69 : i64 to index
          %71 = "ta.TAExtractOp"(%20, %arg5, %arg2, %64) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %72 = "ta.TAExtractOp"(%45, %arg8, %64, %70) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %73 = arith.mulf %71, %72 : f64
          %74 = "ta.TAExtractOp"(%arg10, %70, %70) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, -9223372036854775808>, index, index) -> f64
          %75 = arith.addf %74, %73 : f64
          %76 = "ta.TAInsertOp"(%arg10, %70, %70, %75) : (!ta.workspace<f64, i64, -9223372036854775808>, index, index, f64) -> !ta.workspace<f64, i64, -9223372036854775808>
          scf.yield %arg9, %76 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
        }
        scf.yield %68#0, %68#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
      }
      %c0_47 = arith.constant 0 : index
      %61 = "ta.SpTensorGetNNZ"(%60#1) : (!ta.workspace<f64, i64, -9223372036854775808>) -> index
      %c1_48 = arith.constant 1 : index
      %62:2 = scf.for %arg5 = %c0_47 to %61 step %c1_48 iter_args(%arg6 = %60#0, %arg7 = %60#1) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) {
        %63 = "ta.SpTensorGetCrd"(%60#1, %arg5) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, -9223372036854775808>, index) -> i64
        %64 = arith.index_cast %63 : i64 to index
        %65 = "ta.TensorFindPos"(%arg6) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
        %66 = "ta.TAExtractOp"(%arg7, %arg5, %64) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, -9223372036854775808>, index, index) -> f64
        %67 = "ta.TAExtractOp"(%arg6, %65, %arg2, %64) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
        %68 = "ta.TAInsertOp"(%arg6, %arg2, %65, %arg2, %64, %66) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %68, %arg7 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
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
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: memref<?xi64>, %arg5: memref<?xi64>):
    %c0_58 = arith.constant 0 : index
    %c1_59 = arith.constant 1 : index
    %67:6 = scf.for %arg6 = %c0_58 to %21 step %c1_59 iter_args(%arg7 = %arg0, %arg8 = %arg1, %arg9 = %arg2, %arg10 = %arg3, %arg11 = %arg4, %arg12 = %arg5) -> (index, index, index, index, memref<?xi64>, memref<?xi64>) {
      %c1_60 = arith.constant 1 : index
      %69 = arith.addi %arg6, %c1_60 : index
      %extracted = tensor.extract %22[%arg6] : tensor<?xi64>
      %70 = arith.index_cast %extracted : i64 to index
      %extracted_61 = tensor.extract %22[%69] : tensor<?xi64>
      %71 = arith.index_cast %extracted_61 : i64 to index
      %c1_62 = arith.constant 1 : index
      %72:6 = scf.for %arg13 = %70 to %71 step %c1_62 iter_args(%arg14 = %arg7, %arg15 = %arg8, %arg16 = %arg9, %arg17 = %arg10, %arg18 = %arg11, %arg19 = %arg12) -> (index, index, index, index, memref<?xi64>, memref<?xi64>) {
        %77 = "ta.SpTensorGetCrd"(%20, %arg13) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %78 = arith.index_cast %77 : i64 to index
        %c1_64 = arith.constant 1 : index
        %79 = arith.addi %78, %c1_64 : index
        %extracted_65 = tensor.extract %46[%78] : tensor<?xi64>
        %80 = arith.index_cast %extracted_65 : i64 to index
        %extracted_66 = tensor.extract %46[%79] : tensor<?xi64>
        %81 = arith.index_cast %extracted_66 : i64 to index
        %c1_67 = arith.constant 1 : index
        %82:6 = scf.for %arg20 = %80 to %81 step %c1_67 iter_args(%arg21 = %arg14, %arg22 = %arg15, %arg23 = %arg16, %arg24 = %arg17, %arg25 = %arg18, %arg26 = %arg19) -> (index, index, index, index, memref<?xi64>, memref<?xi64>) {
          %84 = "ta.SpTensorGetCrd"(%45, %arg20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %85 = arith.index_cast %84 : i64 to index
          %idx1_68 = index.constant 1
          %86 = index.add %arg21, %idx1_68
          %87 = arith.index_cast %86 : index to i64
          %88 = memref.load %arg26[%85] : memref<?xi64>
          %89 = arith.cmpi eq, %87, %88 : i64
          %90 = scf.if %89 -> (index) {
            scf.yield %arg23 : index
          } else {
            memref.store %87, %arg26[%85] : memref<?xi64>
            %92 = index.add %arg23, %idx1_68
            scf.yield %92 : index
          }
          %91 = builtin.unrealized_conversion_cast %arg21, %arg22, %90, %arg24, %arg25, %arg26 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
          scf.yield %arg21, %arg22, %90, %arg24, %arg25, %arg26 : index, index, index, index, memref<?xi64>, memref<?xi64>
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
  ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg1: !ta.workspace<f64, i64, -9223372036854775808>):
    %c0_58 = arith.constant 0 : index
    %c1_59 = arith.constant 1 : index
    %67:2 = scf.for %arg2 = %c0_58 to %21 step %c1_59 iter_args(%arg3 = %arg0, %arg4 = %arg1) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) {
      %68 = "ta.WorkspaceClear"(%arg4) : (!ta.workspace<f64, i64, -9223372036854775808>) -> !ta.workspace<f64, i64, -9223372036854775808>
      %c1_60 = arith.constant 1 : index
      %69 = arith.addi %arg2, %c1_60 : index
      %extracted = tensor.extract %22[%arg2] : tensor<?xi64>
      %70 = arith.index_cast %extracted : i64 to index
      %extracted_61 = tensor.extract %22[%69] : tensor<?xi64>
      %71 = arith.index_cast %extracted_61 : i64 to index
      %c1_62 = arith.constant 1 : index
      %72:2 = scf.for %arg5 = %70 to %71 step %c1_62 iter_args(%arg6 = %arg3, %arg7 = %68) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) {
        %75 = "ta.SpTensorGetCrd"(%20, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %76 = arith.index_cast %75 : i64 to index
        %c1_65 = arith.constant 1 : index
        %77 = arith.addi %76, %c1_65 : index
        %extracted_66 = tensor.extract %46[%76] : tensor<?xi64>
        %78 = arith.index_cast %extracted_66 : i64 to index
        %extracted_67 = tensor.extract %46[%77] : tensor<?xi64>
        %79 = arith.index_cast %extracted_67 : i64 to index
        %c1_68 = arith.constant 1 : index
        %80:2 = scf.for %arg8 = %78 to %79 step %c1_68 iter_args(%arg9 = %arg6, %arg10 = %arg7) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) {
          %81 = "ta.SpTensorGetCrd"(%45, %arg8) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %82 = arith.index_cast %81 : i64 to index
          %83 = "ta.TAExtractOp"(%20, %arg5, %arg2, %76) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %84 = "ta.TAExtractOp"(%45, %arg8, %76, %82) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %85 = arith.mulf %83, %84 : f64
          %86 = "ta.TAExtractOp"(%arg10, %82, %82) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, -9223372036854775808>, index, index) -> f64
          %87 = arith.addf %86, %85 : f64
          %88 = "ta.TAInsertOp"(%arg10, %82, %82, %87) : (!ta.workspace<f64, i64, -9223372036854775808>, index, index, f64) -> !ta.workspace<f64, i64, -9223372036854775808>
          scf.yield %arg9, %88 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
        }
        scf.yield %80#0, %80#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
      }
      %c0_63 = arith.constant 0 : index
      %73 = "ta.SpTensorGetNNZ"(%72#1) : (!ta.workspace<f64, i64, -9223372036854775808>) -> index
      %c1_64 = arith.constant 1 : index
      %74:2 = scf.for %arg5 = %c0_63 to %73 step %c1_64 iter_args(%arg6 = %72#0, %arg7 = %72#1) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) {
        %75 = "ta.SpTensorGetCrd"(%72#1, %arg5) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, -9223372036854775808>, index) -> i64
        %76 = arith.index_cast %75 : i64 to index
        %77 = "ta.TensorFindPos"(%arg6) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
        %78 = "ta.TAExtractOp"(%arg7, %arg5, %76) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, -9223372036854775808>, index, index) -> f64
        %79 = "ta.TAExtractOp"(%arg6, %77, %arg2, %76) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
        %80 = "ta.TAInsertOp"(%arg6, %arg2, %77, %arg2, %76, %78) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %80, %arg7 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
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
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: memref<?xi64>, %arg5: memref<?xi64>):
    %c0_74 = arith.constant 0 : index
    %c1_75 = arith.constant 1 : index
    %66:6 = scf.for %arg6 = %c0_74 to %extracted step %c1_75 iter_args(%arg7 = %arg0, %arg8 = %arg1, %arg9 = %arg2, %arg10 = %arg3, %arg11 = %arg4, %arg12 = %arg5) -> (index, index, index, index, memref<?xi64>, memref<?xi64>) {
      %c1_76 = arith.constant 1 : index
      %68 = arith.addi %arg6, %c1_76 : index
      %extracted_77 = tensor.extract %15[%arg6] : tensor<?xi64>
      %69 = arith.index_cast %extracted_77 : i64 to index
      %extracted_78 = tensor.extract %15[%68] : tensor<?xi64>
      %70 = arith.index_cast %extracted_78 : i64 to index
      %c1_79 = arith.constant 1 : index
      %71:6 = scf.for %arg13 = %69 to %70 step %c1_79 iter_args(%arg14 = %arg7, %arg15 = %arg8, %arg16 = %arg9, %arg17 = %arg10, %arg18 = %arg11, %arg19 = %arg12) -> (index, index, index, index, memref<?xi64>, memref<?xi64>) {
        %extracted_81 = tensor.extract %16[%arg13] : tensor<?xi64>
        %76 = arith.index_cast %extracted_81 : i64 to index
        %c1_82 = arith.constant 1 : index
        %77 = arith.addi %76, %c1_82 : index
        %extracted_83 = tensor.extract %36[%76] : tensor<?xi64>
        %78 = arith.index_cast %extracted_83 : i64 to index
        %extracted_84 = tensor.extract %36[%77] : tensor<?xi64>
        %79 = arith.index_cast %extracted_84 : i64 to index
        %c1_85 = arith.constant 1 : index
        %80:6 = scf.for %arg20 = %78 to %79 step %c1_85 iter_args(%arg21 = %arg14, %arg22 = %arg15, %arg23 = %arg16, %arg24 = %arg17, %arg25 = %arg18, %arg26 = %arg19) -> (index, index, index, index, memref<?xi64>, memref<?xi64>) {
          %extracted_86 = tensor.extract %37[%arg20] : tensor<?xi64>
          %82 = arith.index_cast %extracted_86 : i64 to index
          %idx1_87 = index.constant 1
          %83 = index.add %arg21, %idx1_87
          %84 = arith.index_cast %83 : index to i64
          %85 = memref.load %arg26[%82] : memref<?xi64>
          %86 = arith.cmpi eq, %84, %85 : i64
          %87 = scf.if %86 -> (index) {
            scf.yield %arg23 : index
          } else {
            memref.store %84, %arg26[%82] : memref<?xi64>
            %89 = index.add %arg23, %idx1_87
            scf.yield %89 : index
          }
          %88 = builtin.unrealized_conversion_cast %arg21, %arg22, %87, %arg24, %arg25, %arg26 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
          scf.yield %arg21, %arg22, %87, %arg24, %arg25, %arg26 : index, index, index, index, memref<?xi64>, memref<?xi64>
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
  ^bb0(%arg0: tensor<2xindex>, %arg1: index, %arg2: tensor<?xi64>, %arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xi64>, %arg6: tensor<?xf64>, %arg7: tensor<?xf64>, %arg8: i32, %arg9: tensor<?xi32>, %arg10: index, %arg11: tensor<?xi64>):
    %c0_74 = arith.constant 0 : index
    %c1_75 = arith.constant 1 : index
    %66:12 = scf.for %arg12 = %c0_74 to %extracted step %c1_75 iter_args(%arg13 = %arg0, %arg14 = %arg1, %arg15 = %arg2, %arg16 = %arg3, %arg17 = %arg4, %arg18 = %arg5, %arg19 = %arg6, %arg20 = %arg7, %arg21 = %arg8, %arg22 = %arg9, %arg23 = %arg10, %arg24 = %arg11) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
      %c1_i32_76 = arith.constant 1 : i32
      %69 = arith.addi %arg21, %c1_i32_76 : i32
      %idx0_77 = index.constant 0
      %70 = builtin.unrealized_conversion_cast %arg20, %69, %arg22, %idx0_77, %arg24 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
      %c1_78 = arith.constant 1 : index
      %71 = arith.addi %arg12, %c1_78 : index
      %extracted_79 = tensor.extract %15[%arg12] : tensor<?xi64>
      %72 = arith.index_cast %extracted_79 : i64 to index
      %extracted_80 = tensor.extract %15[%71] : tensor<?xi64>
      %73 = arith.index_cast %extracted_80 : i64 to index
      %c1_81 = arith.constant 1 : index
      %74:12 = scf.for %arg25 = %72 to %73 step %c1_81 iter_args(%arg26 = %arg13, %arg27 = %arg14, %arg28 = %arg15, %arg29 = %arg16, %arg30 = %arg17, %arg31 = %arg18, %arg32 = %arg19, %arg33 = %arg20, %arg34 = %69, %arg35 = %arg22, %arg36 = %idx0_77, %arg37 = %arg24) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_84 = tensor.extract %16[%arg25] : tensor<?xi64>
        %80 = arith.index_cast %extracted_84 : i64 to index
        %c1_85 = arith.constant 1 : index
        %81 = arith.addi %80, %c1_85 : index
        %extracted_86 = tensor.extract %36[%80] : tensor<?xi64>
        %82 = arith.index_cast %extracted_86 : i64 to index
        %extracted_87 = tensor.extract %36[%81] : tensor<?xi64>
        %83 = arith.index_cast %extracted_87 : i64 to index
        %c1_88 = arith.constant 1 : index
        %84:12 = scf.for %arg38 = %82 to %83 step %c1_88 iter_args(%arg39 = %arg26, %arg40 = %arg27, %arg41 = %arg28, %arg42 = %arg29, %arg43 = %arg30, %arg44 = %arg31, %arg45 = %arg32, %arg46 = %arg33, %arg47 = %arg34, %arg48 = %arg35, %arg49 = %arg36, %arg50 = %arg37) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
          %extracted_89 = tensor.extract %37[%arg38] : tensor<?xi64>
          %87 = arith.index_cast %extracted_89 : i64 to index
          %extracted_90 = tensor.extract %19[%arg25] : tensor<?xf64>
          %extracted_91 = tensor.extract %40[%arg38] : tensor<?xf64>
          %88 = arith.mulf %extracted_90, %extracted_91 : f64
          %extracted_92 = tensor.extract %arg48[%87] : tensor<?xi32>
          %89 = arith.cmpi eq, %extracted_92, %arg47 : i32
          %90 = scf.if %89 -> (f64) {
            %extracted_95 = tensor.extract %arg46[%87] : tensor<?xf64>
            scf.yield %extracted_95 : f64
          } else {
            %cst_95 = arith.constant 0.000000e+00 : f64
            scf.yield %cst_95 : f64
          }
          %91 = arith.addf %90, %88 : f64
          %extracted_93 = tensor.extract %arg48[%87] : tensor<?xi32>
          %92 = arith.cmpi ne, %extracted_93, %arg47 : i32
          %93:3 = scf.if %92 -> (tensor<?xi32>, index, tensor<?xi64>) {
            %inserted_95 = tensor.insert %arg47 into %arg48[%87] : tensor<?xi32>
            %95 = arith.index_cast %87 : index to i64
            %inserted_96 = tensor.insert %95 into %arg50[%arg49] : tensor<?xi64>
            %idx1_97 = index.constant 1
            %96 = index.add %arg49, %idx1_97
            scf.yield %inserted_95, %96, %inserted_96 : tensor<?xi32>, index, tensor<?xi64>
          } else {
            scf.yield %arg48, %arg49, %arg50 : tensor<?xi32>, index, tensor<?xi64>
          }
          %inserted_94 = tensor.insert %91 into %arg46[%87] : tensor<?xf64>
          %94 = builtin.unrealized_conversion_cast %inserted_94, %arg47, %93#0, %93#1, %93#2 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
          scf.yield %arg39, %arg40, %arg41, %arg42, %arg43, %arg44, %arg45, %inserted_94, %arg47, %93#0, %93#1, %93#2 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
        }
        %85 = builtin.unrealized_conversion_cast %84#0, %84#1, %84#2, %84#3, %84#4, %84#5, %84#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %86 = builtin.unrealized_conversion_cast %84#7, %84#8, %84#9, %84#10, %84#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
        scf.yield %84#0, %84#1, %84#2, %84#3, %84#4, %84#5, %84#6, %84#7, %84#8, %84#9, %84#10, %84#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
      }
      %75 = builtin.unrealized_conversion_cast %74#0, %74#1, %74#2, %74#3, %74#4, %74#5, %74#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %76 = builtin.unrealized_conversion_cast %74#7, %74#8, %74#9, %74#10, %74#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
      %c0_82 = arith.constant 0 : index
      %c1_83 = arith.constant 1 : index
      %77:12 = scf.for %arg25 = %c0_82 to %74#10 step %c1_83 iter_args(%arg26 = %74#0, %arg27 = %74#1, %arg28 = %74#2, %arg29 = %74#3, %arg30 = %74#4, %arg31 = %74#5, %arg32 = %74#6, %arg33 = %74#7, %arg34 = %74#8, %arg35 = %74#9, %arg36 = %74#10, %arg37 = %74#11) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_84 = tensor.extract %74#11[%arg25] : tensor<?xi64>
        %80 = arith.index_cast %extracted_84 : i64 to index
        %extracted_85 = tensor.extract %arg35[%80] : tensor<?xi32>
        %81 = arith.cmpi eq, %extracted_85, %arg34 : i32
        %82 = scf.if %81 -> (f64) {
          %extracted_90 = tensor.extract %arg33[%80] : tensor<?xf64>
          scf.yield %extracted_90 : f64
        } else {
          %cst_90 = arith.constant 0.000000e+00 : f64
          scf.yield %cst_90 : f64
        }
        %extracted_86 = tensor.extract %arg32[%arg29] : tensor<?xf64>
        %83 = arith.index_cast %80 : index to i64
        %inserted_87 = tensor.insert %83 into %arg31[%arg29] : tensor<?xi64>
        %idx1_88 = index.constant 1
        %84 = index.add %arg29, %idx1_88
        %inserted_89 = tensor.insert %82 into %arg32[%arg29] : tensor<?xf64>
        %85 = builtin.unrealized_conversion_cast %arg26, %arg27, %arg28, %84, %arg30, %inserted_87, %inserted_89 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %arg26, %arg27, %arg28, %84, %arg30, %inserted_87, %inserted_89, %arg33, %arg34, %arg35, %arg36, %arg37 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
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


// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
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

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
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
  scf.for %arg0 = %c0 to %0 step %c1 {
    memref.store %c0_i64, %alloc_0[%arg0] : memref<?xi64>
  }
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  scf.for %arg0 = %c0 to %1 step %c1 {
    memref.store %c0_i64, %alloc_2[%arg0] : memref<?xi64>
  }
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  scf.for %arg0 = %c0 to %2 step %c1 {
    memref.store %c0_i64, %alloc_4[%arg0] : memref<?xi64>
  }
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  scf.for %arg0 = %c0 to %3 step %c1 {
    memref.store %c0_i64, %alloc_6[%arg0] : memref<?xi64>
  }
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  scf.for %arg0 = %c0 to %4 step %c1 {
    memref.store %c0_i64, %alloc_8[%arg0] : memref<?xi64>
  }
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  scf.for %arg0 = %c0 to %5 step %c1 {
    memref.store %c0_i64, %alloc_10[%arg0] : memref<?xi64>
  }
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  scf.for %arg0 = %c0 to %6 step %c1 {
    memref.store %c0_i64, %alloc_12[%arg0] : memref<?xi64>
  }
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  scf.for %arg0 = %c0 to %7 step %c1 {
    memref.store %c0_i64, %alloc_14[%arg0] : memref<?xi64>
  }
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  scf.for %arg0 = %c0 to %8 step %c1 {
    memref.store %cst, %alloc_16[%arg0] : memref<?xf64>
  }
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
  scf.for %arg0 = %c0 to %10 step %c1 {
    memref.store %c0_i64, %alloc_20[%arg0] : memref<?xi64>
  }
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%11) : memref<?xi64>
  scf.for %arg0 = %c0 to %11 step %c1 {
    memref.store %c0_i64, %alloc_22[%arg0] : memref<?xi64>
  }
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%12) : memref<?xi64>
  scf.for %arg0 = %c0 to %12 step %c1 {
    memref.store %c0_i64, %alloc_24[%arg0] : memref<?xi64>
  }
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%13) : memref<?xi64>
  scf.for %arg0 = %c0 to %13 step %c1 {
    memref.store %c0_i64, %alloc_26[%arg0] : memref<?xi64>
  }
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%14) : memref<?xi64>
  scf.for %arg0 = %c0 to %14 step %c1 {
    memref.store %c0_i64, %alloc_28[%arg0] : memref<?xi64>
  }
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%15) : memref<?xi64>
  scf.for %arg0 = %c0 to %15 step %c1 {
    memref.store %c0_i64, %alloc_30[%arg0] : memref<?xi64>
  }
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%16) : memref<?xi64>
  scf.for %arg0 = %c0 to %16 step %c1 {
    memref.store %c0_i64, %alloc_32[%arg0] : memref<?xi64>
  }
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%17) : memref<?xi64>
  scf.for %arg0 = %c0 to %17 step %c1 {
    memref.store %c0_i64, %alloc_34[%arg0] : memref<?xi64>
  }
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%18) : memref<?xf64>
  scf.for %arg0 = %c0 to %18 step %c1 {
    memref.store %cst, %alloc_36[%arg0] : memref<?xf64>
  }
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

// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
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
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0_i64, %alloc_0[%arg0] : memref<?xi64>
    }
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0_i64, %alloc_2[%arg0] : memref<?xi64>
    }
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0_i64, %alloc_4[%arg0] : memref<?xi64>
    }
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0_i64, %alloc_6[%arg0] : memref<?xi64>
    }
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0_i64, %alloc_8[%arg0] : memref<?xi64>
    }
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0_i64, %alloc_10[%arg0] : memref<?xi64>
    }
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0_i64, %alloc_12[%arg0] : memref<?xi64>
    }
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0_i64, %alloc_14[%arg0] : memref<?xi64>
    }
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst, %alloc_16[%arg0] : memref<?xf64>
    }
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
    scf.for %arg0 = %c0 to %10 step %c1 {
      memref.store %c0_i64, %alloc_20[%arg0] : memref<?xi64>
    }
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%11) : memref<?xi64>
    scf.for %arg0 = %c0 to %11 step %c1 {
      memref.store %c0_i64, %alloc_22[%arg0] : memref<?xi64>
    }
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%12) : memref<?xi64>
    scf.for %arg0 = %c0 to %12 step %c1 {
      memref.store %c0_i64, %alloc_24[%arg0] : memref<?xi64>
    }
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%13) : memref<?xi64>
    scf.for %arg0 = %c0 to %13 step %c1 {
      memref.store %c0_i64, %alloc_26[%arg0] : memref<?xi64>
    }
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%14) : memref<?xi64>
    scf.for %arg0 = %c0 to %14 step %c1 {
      memref.store %c0_i64, %alloc_28[%arg0] : memref<?xi64>
    }
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%15) : memref<?xi64>
    scf.for %arg0 = %c0 to %15 step %c1 {
      memref.store %c0_i64, %alloc_30[%arg0] : memref<?xi64>
    }
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%16) : memref<?xi64>
    scf.for %arg0 = %c0 to %16 step %c1 {
      memref.store %c0_i64, %alloc_32[%arg0] : memref<?xi64>
    }
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%17) : memref<?xi64>
    scf.for %arg0 = %c0 to %17 step %c1 {
      memref.store %c0_i64, %alloc_34[%arg0] : memref<?xi64>
    }
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%18) : memref<?xf64>
    scf.for %arg0 = %c0 to %18 step %c1 {
      memref.store %cst, %alloc_36[%arg0] : memref<?xf64>
    }
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


// -----// IR Dump After SCFToControlFlow (convert-scf-to-cf) //----- //
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
    cf.br ^bb1(%c0 : index)
  ^bb1(%10: index):  // 2 preds: ^bb0, ^bb2
    %11 = arith.cmpi slt, %10, %0 : index
    cf.cond_br %11, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    memref.store %c0_i64, %alloc_0[%10] : memref<?xi64>
    %12 = arith.addi %10, %c1 : index
    cf.br ^bb1(%12 : index)
  ^bb3:  // pred: ^bb1
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    cf.br ^bb4(%c0 : index)
  ^bb4(%13: index):  // 2 preds: ^bb3, ^bb5
    %14 = arith.cmpi slt, %13, %1 : index
    cf.cond_br %14, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %c0_i64, %alloc_2[%13] : memref<?xi64>
    %15 = arith.addi %13, %c1 : index
    cf.br ^bb4(%15 : index)
  ^bb6:  // pred: ^bb4
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%16: index):  // 2 preds: ^bb6, ^bb8
    %17 = arith.cmpi slt, %16, %2 : index
    cf.cond_br %17, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %c0_i64, %alloc_4[%16] : memref<?xi64>
    %18 = arith.addi %16, %c1 : index
    cf.br ^bb7(%18 : index)
  ^bb9:  // pred: ^bb7
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    cf.br ^bb10(%c0 : index)
  ^bb10(%19: index):  // 2 preds: ^bb9, ^bb11
    %20 = arith.cmpi slt, %19, %3 : index
    cf.cond_br %20, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %c0_i64, %alloc_6[%19] : memref<?xi64>
    %21 = arith.addi %19, %c1 : index
    cf.br ^bb10(%21 : index)
  ^bb12:  // pred: ^bb10
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%22: index):  // 2 preds: ^bb12, ^bb14
    %23 = arith.cmpi slt, %22, %4 : index
    cf.cond_br %23, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %c0_i64, %alloc_8[%22] : memref<?xi64>
    %24 = arith.addi %22, %c1 : index
    cf.br ^bb13(%24 : index)
  ^bb15:  // pred: ^bb13
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    cf.br ^bb16(%c0 : index)
  ^bb16(%25: index):  // 2 preds: ^bb15, ^bb17
    %26 = arith.cmpi slt, %25, %5 : index
    cf.cond_br %26, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    memref.store %c0_i64, %alloc_10[%25] : memref<?xi64>
    %27 = arith.addi %25, %c1 : index
    cf.br ^bb16(%27 : index)
  ^bb18:  // pred: ^bb16
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%28: index):  // 2 preds: ^bb18, ^bb20
    %29 = arith.cmpi slt, %28, %6 : index
    cf.cond_br %29, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %c0_i64, %alloc_12[%28] : memref<?xi64>
    %30 = arith.addi %28, %c1 : index
    cf.br ^bb19(%30 : index)
  ^bb21:  // pred: ^bb19
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    cf.br ^bb22(%c0 : index)
  ^bb22(%31: index):  // 2 preds: ^bb21, ^bb23
    %32 = arith.cmpi slt, %31, %7 : index
    cf.cond_br %32, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    memref.store %c0_i64, %alloc_14[%31] : memref<?xi64>
    %33 = arith.addi %31, %c1 : index
    cf.br ^bb22(%33 : index)
  ^bb24:  // pred: ^bb22
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%34: index):  // 2 preds: ^bb24, ^bb26
    %35 = arith.cmpi slt, %34, %8 : index
    cf.cond_br %35, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    memref.store %cst, %alloc_16[%34] : memref<?xf64>
    %36 = arith.addi %34, %c1 : index
    cf.br ^bb25(%36 : index)
  ^bb27:  // pred: ^bb25
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %37 = memref.load %alloc_18[%c0] : memref<13xindex>
    %38 = memref.load %alloc_18[%c1] : memref<13xindex>
    %39 = memref.load %alloc_18[%c2] : memref<13xindex>
    %40 = memref.load %alloc_18[%c3] : memref<13xindex>
    %41 = memref.load %alloc_18[%c4] : memref<13xindex>
    %42 = memref.load %alloc_18[%c5] : memref<13xindex>
    %43 = memref.load %alloc_18[%c6] : memref<13xindex>
    %44 = memref.load %alloc_18[%c7] : memref<13xindex>
    %45 = memref.load %alloc_18[%c8] : memref<13xindex>
    %46 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%37) : memref<?xi64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%47: index):  // 2 preds: ^bb27, ^bb29
    %48 = arith.cmpi slt, %47, %37 : index
    cf.cond_br %48, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    memref.store %c0_i64, %alloc_20[%47] : memref<?xi64>
    %49 = arith.addi %47, %c1 : index
    cf.br ^bb28(%49 : index)
  ^bb30:  // pred: ^bb28
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%38) : memref<?xi64>
    cf.br ^bb31(%c0 : index)
  ^bb31(%50: index):  // 2 preds: ^bb30, ^bb32
    %51 = arith.cmpi slt, %50, %38 : index
    cf.cond_br %51, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    memref.store %c0_i64, %alloc_22[%50] : memref<?xi64>
    %52 = arith.addi %50, %c1 : index
    cf.br ^bb31(%52 : index)
  ^bb33:  // pred: ^bb31
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%39) : memref<?xi64>
    cf.br ^bb34(%c0 : index)
  ^bb34(%53: index):  // 2 preds: ^bb33, ^bb35
    %54 = arith.cmpi slt, %53, %39 : index
    cf.cond_br %54, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    memref.store %c0_i64, %alloc_24[%53] : memref<?xi64>
    %55 = arith.addi %53, %c1 : index
    cf.br ^bb34(%55 : index)
  ^bb36:  // pred: ^bb34
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%40) : memref<?xi64>
    cf.br ^bb37(%c0 : index)
  ^bb37(%56: index):  // 2 preds: ^bb36, ^bb38
    %57 = arith.cmpi slt, %56, %40 : index
    cf.cond_br %57, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    memref.store %c0_i64, %alloc_26[%56] : memref<?xi64>
    %58 = arith.addi %56, %c1 : index
    cf.br ^bb37(%58 : index)
  ^bb39:  // pred: ^bb37
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%41) : memref<?xi64>
    cf.br ^bb40(%c0 : index)
  ^bb40(%59: index):  // 2 preds: ^bb39, ^bb41
    %60 = arith.cmpi slt, %59, %41 : index
    cf.cond_br %60, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    memref.store %c0_i64, %alloc_28[%59] : memref<?xi64>
    %61 = arith.addi %59, %c1 : index
    cf.br ^bb40(%61 : index)
  ^bb42:  // pred: ^bb40
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%42) : memref<?xi64>
    cf.br ^bb43(%c0 : index)
  ^bb43(%62: index):  // 2 preds: ^bb42, ^bb44
    %63 = arith.cmpi slt, %62, %42 : index
    cf.cond_br %63, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    memref.store %c0_i64, %alloc_30[%62] : memref<?xi64>
    %64 = arith.addi %62, %c1 : index
    cf.br ^bb43(%64 : index)
  ^bb45:  // pred: ^bb43
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%43) : memref<?xi64>
    cf.br ^bb46(%c0 : index)
  ^bb46(%65: index):  // 2 preds: ^bb45, ^bb47
    %66 = arith.cmpi slt, %65, %43 : index
    cf.cond_br %66, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    memref.store %c0_i64, %alloc_32[%65] : memref<?xi64>
    %67 = arith.addi %65, %c1 : index
    cf.br ^bb46(%67 : index)
  ^bb48:  // pred: ^bb46
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%44) : memref<?xi64>
    cf.br ^bb49(%c0 : index)
  ^bb49(%68: index):  // 2 preds: ^bb48, ^bb50
    %69 = arith.cmpi slt, %68, %44 : index
    cf.cond_br %69, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    memref.store %c0_i64, %alloc_34[%68] : memref<?xi64>
    %70 = arith.addi %68, %c1 : index
    cf.br ^bb49(%70 : index)
  ^bb51:  // pred: ^bb49
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%45) : memref<?xf64>
    cf.br ^bb52(%c0 : index)
  ^bb52(%71: index):  // 2 preds: ^bb51, ^bb53
    %72 = arith.cmpi slt, %71, %45 : index
    cf.cond_br %72, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    memref.store %cst, %alloc_36[%71] : memref<?xf64>
    %73 = arith.addi %71, %c1 : index
    cf.br ^bb52(%73 : index)
  ^bb54:  // pred: ^bb52
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %74 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%74) : memref<?xi64>
    memref.store %c0_i64, %alloc_38[%idx0] : memref<?xi64>
    %alloc_39 = memref.alloc(%46) : memref<?xi64>
    cf.br ^bb55(%c0, %idx0, %idx0 : index, index, index)
  ^bb55(%75: index, %76: index, %77: index):  // 2 preds: ^bb54, ^bb66
    %78 = arith.cmpi slt, %75, %9 : index
    cf.cond_br %78, ^bb56, ^bb67
  ^bb56:  // pred: ^bb55
    %79 = arith.addi %75, %c1 : index
    %80 = memref.load %alloc_8[%75] : memref<?xi64>
    %81 = arith.index_cast %80 : i64 to index
    %82 = memref.load %alloc_8[%79] : memref<?xi64>
    %83 = arith.index_cast %82 : i64 to index
    cf.br ^bb57(%81, %77 : index, index)
  ^bb57(%84: index, %85: index):  // 2 preds: ^bb56, ^bb65
    %86 = arith.cmpi slt, %84, %83 : index
    cf.cond_br %86, ^bb58, ^bb66
  ^bb58:  // pred: ^bb57
    %87 = memref.load %alloc_10[%84] : memref<?xi64>
    %88 = arith.index_cast %87 : i64 to index
    %89 = arith.addi %88, %c1 : index
    %90 = memref.load %alloc_28[%88] : memref<?xi64>
    %91 = arith.index_cast %90 : i64 to index
    %92 = memref.load %alloc_28[%89] : memref<?xi64>
    %93 = arith.index_cast %92 : i64 to index
    cf.br ^bb59(%91, %85 : index, index)
  ^bb59(%94: index, %95: index):  // 2 preds: ^bb58, ^bb64
    %96 = arith.cmpi slt, %94, %93 : index
    cf.cond_br %96, ^bb60, ^bb65
  ^bb60:  // pred: ^bb59
    %97 = memref.load %alloc_30[%94] : memref<?xi64>
    %98 = arith.index_cast %97 : i64 to index
    %99 = index.add %76, %idx1
    %100 = arith.index_cast %99 : index to i64
    %101 = memref.load %alloc_39[%98] : memref<?xi64>
    %102 = arith.cmpi eq, %100, %101 : i64
    cf.cond_br %102, ^bb61, ^bb62
  ^bb61:  // pred: ^bb60
    cf.br ^bb63(%95 : index)
  ^bb62:  // pred: ^bb60
    memref.store %100, %alloc_39[%98] : memref<?xi64>
    %103 = index.add %95, %idx1
    cf.br ^bb63(%103 : index)
  ^bb63(%104: index):  // 2 preds: ^bb61, ^bb62
    cf.br ^bb64
  ^bb64:  // pred: ^bb63
    %105 = arith.addi %94, %c1 : index
    cf.br ^bb59(%105, %104 : index, index)
  ^bb65:  // pred: ^bb59
    %106 = arith.addi %84, %c1 : index
    cf.br ^bb57(%106, %95 : index, index)
  ^bb66:  // pred: ^bb57
    %107 = index.add %76, %idx1
    %108 = arith.index_cast %85 : index to i64
    memref.store %108, %alloc_38[%107] : memref<?xi64>
    %109 = arith.addi %75, %c1 : index
    cf.br ^bb55(%109, %107, %85 : index, index, index)
  ^bb67:  // pred: ^bb55
    %110 = arith.index_cast %9 : index to i64
    %alloc_40 = memref.alloc() : memref<1xi64>
    memref.store %110, %alloc_40[%idx0] : memref<1xi64>
    %alloc_41 = memref.alloc(%77) : memref<?xi64>
    %alloc_42 = memref.alloc(%77) : memref<?xf64>
    cf.br ^bb68(%idx0 : index)
  ^bb68(%111: index):  // 2 preds: ^bb67, ^bb69
    %112 = arith.cmpi slt, %111, %77 : index
    cf.cond_br %112, ^bb69, ^bb70
  ^bb69:  // pred: ^bb68
    memref.store %cst, %alloc_42[%111] : memref<?xf64>
    %113 = arith.addi %111, %idx1 : index
    cf.br ^bb68(%113 : index)
  ^bb70:  // pred: ^bb68
    %alloc_43 = memref.alloc(%46) {alignment = 64 : i64} : memref<?xf64>
    %alloc_44 = memref.alloc(%46) {alignment = 64 : i64} : memref<?xi32>
    %alloc_45 = memref.alloc(%46) {alignment = 64 : i64} : memref<?xi64>
    cf.br ^bb71(%c0, %idx0, %c1_i32 : index, index, i32)
  ^bb71(%114: index, %115: index, %116: i32):  // 2 preds: ^bb70, ^bb93
    %117 = arith.cmpi slt, %114, %9 : index
    cf.cond_br %117, ^bb72, ^bb94
  ^bb72:  // pred: ^bb71
    %118 = arith.addi %116, %c1_i32 : i32
    %119 = arith.addi %114, %c1 : index
    %120 = memref.load %alloc_8[%114] : memref<?xi64>
    %121 = arith.index_cast %120 : i64 to index
    %122 = memref.load %alloc_8[%119] : memref<?xi64>
    %123 = arith.index_cast %122 : i64 to index
    cf.br ^bb73(%121, %idx0 : index, index)
  ^bb73(%124: index, %125: index):  // 2 preds: ^bb72, ^bb85
    %126 = arith.cmpi slt, %124, %123 : index
    cf.cond_br %126, ^bb74, ^bb86
  ^bb74:  // pred: ^bb73
    %127 = memref.load %alloc_10[%124] : memref<?xi64>
    %128 = arith.index_cast %127 : i64 to index
    %129 = arith.addi %128, %c1 : index
    %130 = memref.load %alloc_28[%128] : memref<?xi64>
    %131 = arith.index_cast %130 : i64 to index
    %132 = memref.load %alloc_28[%129] : memref<?xi64>
    %133 = arith.index_cast %132 : i64 to index
    cf.br ^bb75(%131, %125 : index, index)
  ^bb75(%134: index, %135: index):  // 2 preds: ^bb74, ^bb84
    %136 = arith.cmpi slt, %134, %133 : index
    cf.cond_br %136, ^bb76, ^bb85
  ^bb76:  // pred: ^bb75
    %137 = memref.load %alloc_30[%134] : memref<?xi64>
    %138 = arith.index_cast %137 : i64 to index
    %139 = memref.load %alloc_16[%124] : memref<?xf64>
    %140 = memref.load %alloc_36[%134] : memref<?xf64>
    %141 = arith.mulf %139, %140 : f64
    %142 = memref.load %alloc_44[%138] : memref<?xi32>
    %143 = arith.cmpi eq, %142, %118 : i32
    cf.cond_br %143, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %144 = memref.load %alloc_43[%138] : memref<?xf64>
    cf.br ^bb79(%144 : f64)
  ^bb78:  // pred: ^bb76
    cf.br ^bb79(%cst : f64)
  ^bb79(%145: f64):  // 2 preds: ^bb77, ^bb78
    cf.br ^bb80
  ^bb80:  // pred: ^bb79
    %146 = arith.addf %145, %141 : f64
    %147 = arith.cmpi ne, %142, %118 : i32
    cf.cond_br %147, ^bb81, ^bb82
  ^bb81:  // pred: ^bb80
    memref.store %118, %alloc_44[%138] : memref<?xi32>
    memref.store %137, %alloc_45[%135] : memref<?xi64>
    %148 = index.add %135, %idx1
    cf.br ^bb83(%148 : index)
  ^bb82:  // pred: ^bb80
    cf.br ^bb83(%135 : index)
  ^bb83(%149: index):  // 2 preds: ^bb81, ^bb82
    cf.br ^bb84
  ^bb84:  // pred: ^bb83
    memref.store %146, %alloc_43[%138] : memref<?xf64>
    %150 = arith.addi %134, %c1 : index
    cf.br ^bb75(%150, %149 : index, index)
  ^bb85:  // pred: ^bb75
    %151 = arith.addi %124, %c1 : index
    cf.br ^bb73(%151, %135 : index, index)
  ^bb86:  // pred: ^bb73
    cf.br ^bb87(%c0, %115 : index, index)
  ^bb87(%152: index, %153: index):  // 2 preds: ^bb86, ^bb92
    %154 = arith.cmpi slt, %152, %125 : index
    cf.cond_br %154, ^bb88, ^bb93
  ^bb88:  // pred: ^bb87
    %155 = memref.load %alloc_45[%152] : memref<?xi64>
    %156 = arith.index_cast %155 : i64 to index
    %157 = memref.load %alloc_44[%156] : memref<?xi32>
    %158 = arith.cmpi eq, %157, %118 : i32
    cf.cond_br %158, ^bb89, ^bb90
  ^bb89:  // pred: ^bb88
    %159 = memref.load %alloc_43[%156] : memref<?xf64>
    cf.br ^bb91(%159 : f64)
  ^bb90:  // pred: ^bb88
    cf.br ^bb91(%cst : f64)
  ^bb91(%160: f64):  // 2 preds: ^bb89, ^bb90
    cf.br ^bb92
  ^bb92:  // pred: ^bb91
    memref.store %155, %alloc_41[%153] : memref<?xi64>
    %161 = index.add %153, %idx1
    memref.store %160, %alloc_42[%153] : memref<?xf64>
    %162 = arith.addi %152, %c1 : index
    cf.br ^bb87(%162, %161 : index, index)
  ^bb93:  // pred: ^bb87
    %163 = arith.addi %114, %c1 : index
    cf.br ^bb71(%163, %153, %118 : index, index, i32)
  ^bb94:  // pred: ^bb71
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
    cf.br ^bb1(%c0 : index)
  ^bb1(%10: index):  // 2 preds: ^bb0, ^bb2
    %11 = arith.cmpi slt, %10, %0 : index
    cf.cond_br %11, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    memref.store %c0_i64, %alloc_0[%10] : memref<?xi64>
    %12 = arith.addi %10, %c1 : index
    cf.br ^bb1(%12 : index)
  ^bb3:  // pred: ^bb1
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    cf.br ^bb4(%c0 : index)
  ^bb4(%13: index):  // 2 preds: ^bb3, ^bb5
    %14 = arith.cmpi slt, %13, %1 : index
    cf.cond_br %14, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %c0_i64, %alloc_2[%13] : memref<?xi64>
    %15 = arith.addi %13, %c1 : index
    cf.br ^bb4(%15 : index)
  ^bb6:  // pred: ^bb4
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%16: index):  // 2 preds: ^bb6, ^bb8
    %17 = arith.cmpi slt, %16, %2 : index
    cf.cond_br %17, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %c0_i64, %alloc_4[%16] : memref<?xi64>
    %18 = arith.addi %16, %c1 : index
    cf.br ^bb7(%18 : index)
  ^bb9:  // pred: ^bb7
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    cf.br ^bb10(%c0 : index)
  ^bb10(%19: index):  // 2 preds: ^bb9, ^bb11
    %20 = arith.cmpi slt, %19, %3 : index
    cf.cond_br %20, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %c0_i64, %alloc_6[%19] : memref<?xi64>
    %21 = arith.addi %19, %c1 : index
    cf.br ^bb10(%21 : index)
  ^bb12:  // pred: ^bb10
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%22: index):  // 2 preds: ^bb12, ^bb14
    %23 = arith.cmpi slt, %22, %4 : index
    cf.cond_br %23, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %c0_i64, %alloc_8[%22] : memref<?xi64>
    %24 = arith.addi %22, %c1 : index
    cf.br ^bb13(%24 : index)
  ^bb15:  // pred: ^bb13
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    cf.br ^bb16(%c0 : index)
  ^bb16(%25: index):  // 2 preds: ^bb15, ^bb17
    %26 = arith.cmpi slt, %25, %5 : index
    cf.cond_br %26, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    memref.store %c0_i64, %alloc_10[%25] : memref<?xi64>
    %27 = arith.addi %25, %c1 : index
    cf.br ^bb16(%27 : index)
  ^bb18:  // pred: ^bb16
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%28: index):  // 2 preds: ^bb18, ^bb20
    %29 = arith.cmpi slt, %28, %6 : index
    cf.cond_br %29, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %c0_i64, %alloc_12[%28] : memref<?xi64>
    %30 = arith.addi %28, %c1 : index
    cf.br ^bb19(%30 : index)
  ^bb21:  // pred: ^bb19
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    cf.br ^bb22(%c0 : index)
  ^bb22(%31: index):  // 2 preds: ^bb21, ^bb23
    %32 = arith.cmpi slt, %31, %7 : index
    cf.cond_br %32, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    memref.store %c0_i64, %alloc_14[%31] : memref<?xi64>
    %33 = arith.addi %31, %c1 : index
    cf.br ^bb22(%33 : index)
  ^bb24:  // pred: ^bb22
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%34: index):  // 2 preds: ^bb24, ^bb26
    %35 = arith.cmpi slt, %34, %8 : index
    cf.cond_br %35, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    memref.store %cst, %alloc_16[%34] : memref<?xf64>
    %36 = arith.addi %34, %c1 : index
    cf.br ^bb25(%36 : index)
  ^bb27:  // pred: ^bb25
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %37 = memref.load %alloc_18[%c0] : memref<13xindex>
    %38 = memref.load %alloc_18[%c1] : memref<13xindex>
    %39 = memref.load %alloc_18[%c2] : memref<13xindex>
    %40 = memref.load %alloc_18[%c3] : memref<13xindex>
    %41 = memref.load %alloc_18[%c4] : memref<13xindex>
    %42 = memref.load %alloc_18[%c5] : memref<13xindex>
    %43 = memref.load %alloc_18[%c6] : memref<13xindex>
    %44 = memref.load %alloc_18[%c7] : memref<13xindex>
    %45 = memref.load %alloc_18[%c8] : memref<13xindex>
    %46 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%37) : memref<?xi64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%47: index):  // 2 preds: ^bb27, ^bb29
    %48 = arith.cmpi slt, %47, %37 : index
    cf.cond_br %48, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    memref.store %c0_i64, %alloc_20[%47] : memref<?xi64>
    %49 = arith.addi %47, %c1 : index
    cf.br ^bb28(%49 : index)
  ^bb30:  // pred: ^bb28
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%38) : memref<?xi64>
    cf.br ^bb31(%c0 : index)
  ^bb31(%50: index):  // 2 preds: ^bb30, ^bb32
    %51 = arith.cmpi slt, %50, %38 : index
    cf.cond_br %51, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    memref.store %c0_i64, %alloc_22[%50] : memref<?xi64>
    %52 = arith.addi %50, %c1 : index
    cf.br ^bb31(%52 : index)
  ^bb33:  // pred: ^bb31
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%39) : memref<?xi64>
    cf.br ^bb34(%c0 : index)
  ^bb34(%53: index):  // 2 preds: ^bb33, ^bb35
    %54 = arith.cmpi slt, %53, %39 : index
    cf.cond_br %54, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    memref.store %c0_i64, %alloc_24[%53] : memref<?xi64>
    %55 = arith.addi %53, %c1 : index
    cf.br ^bb34(%55 : index)
  ^bb36:  // pred: ^bb34
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%40) : memref<?xi64>
    cf.br ^bb37(%c0 : index)
  ^bb37(%56: index):  // 2 preds: ^bb36, ^bb38
    %57 = arith.cmpi slt, %56, %40 : index
    cf.cond_br %57, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    memref.store %c0_i64, %alloc_26[%56] : memref<?xi64>
    %58 = arith.addi %56, %c1 : index
    cf.br ^bb37(%58 : index)
  ^bb39:  // pred: ^bb37
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%41) : memref<?xi64>
    cf.br ^bb40(%c0 : index)
  ^bb40(%59: index):  // 2 preds: ^bb39, ^bb41
    %60 = arith.cmpi slt, %59, %41 : index
    cf.cond_br %60, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    memref.store %c0_i64, %alloc_28[%59] : memref<?xi64>
    %61 = arith.addi %59, %c1 : index
    cf.br ^bb40(%61 : index)
  ^bb42:  // pred: ^bb40
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%42) : memref<?xi64>
    cf.br ^bb43(%c0 : index)
  ^bb43(%62: index):  // 2 preds: ^bb42, ^bb44
    %63 = arith.cmpi slt, %62, %42 : index
    cf.cond_br %63, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    memref.store %c0_i64, %alloc_30[%62] : memref<?xi64>
    %64 = arith.addi %62, %c1 : index
    cf.br ^bb43(%64 : index)
  ^bb45:  // pred: ^bb43
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%43) : memref<?xi64>
    cf.br ^bb46(%c0 : index)
  ^bb46(%65: index):  // 2 preds: ^bb45, ^bb47
    %66 = arith.cmpi slt, %65, %43 : index
    cf.cond_br %66, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    memref.store %c0_i64, %alloc_32[%65] : memref<?xi64>
    %67 = arith.addi %65, %c1 : index
    cf.br ^bb46(%67 : index)
  ^bb48:  // pred: ^bb46
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%44) : memref<?xi64>
    cf.br ^bb49(%c0 : index)
  ^bb49(%68: index):  // 2 preds: ^bb48, ^bb50
    %69 = arith.cmpi slt, %68, %44 : index
    cf.cond_br %69, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    memref.store %c0_i64, %alloc_34[%68] : memref<?xi64>
    %70 = arith.addi %68, %c1 : index
    cf.br ^bb49(%70 : index)
  ^bb51:  // pred: ^bb49
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%45) : memref<?xf64>
    cf.br ^bb52(%c0 : index)
  ^bb52(%71: index):  // 2 preds: ^bb51, ^bb53
    %72 = arith.cmpi slt, %71, %45 : index
    cf.cond_br %72, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    memref.store %cst, %alloc_36[%71] : memref<?xf64>
    %73 = arith.addi %71, %c1 : index
    cf.br ^bb52(%73 : index)
  ^bb54:  // pred: ^bb52
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %74 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%74) : memref<?xi64>
    memref.store %c0_i64, %alloc_38[%idx0] : memref<?xi64>
    %alloc_39 = memref.alloc(%46) : memref<?xi64>
    cf.br ^bb55(%c0, %idx0, %idx0 : index, index, index)
  ^bb55(%75: index, %76: index, %77: index):  // 2 preds: ^bb54, ^bb64
    %78 = arith.cmpi slt, %75, %9 : index
    cf.cond_br %78, ^bb56, ^bb65
  ^bb56:  // pred: ^bb55
    %79 = arith.addi %75, %c1 : index
    %80 = memref.load %alloc_8[%75] : memref<?xi64>
    %81 = arith.index_cast %80 : i64 to index
    %82 = memref.load %alloc_8[%79] : memref<?xi64>
    %83 = arith.index_cast %82 : i64 to index
    cf.br ^bb57(%81, %77 : index, index)
  ^bb57(%84: index, %85: index):  // 2 preds: ^bb56, ^bb63
    %86 = arith.cmpi slt, %84, %83 : index
    cf.cond_br %86, ^bb58, ^bb64
  ^bb58:  // pred: ^bb57
    %87 = memref.load %alloc_10[%84] : memref<?xi64>
    %88 = arith.index_cast %87 : i64 to index
    %89 = arith.addi %88, %c1 : index
    %90 = memref.load %alloc_28[%88] : memref<?xi64>
    %91 = arith.index_cast %90 : i64 to index
    %92 = memref.load %alloc_28[%89] : memref<?xi64>
    %93 = arith.index_cast %92 : i64 to index
    cf.br ^bb59(%91, %85 : index, index)
  ^bb59(%94: index, %95: index):  // 2 preds: ^bb58, ^bb62
    %96 = arith.cmpi slt, %94, %93 : index
    cf.cond_br %96, ^bb60, ^bb63
  ^bb60:  // pred: ^bb59
    %97 = memref.load %alloc_30[%94] : memref<?xi64>
    %98 = arith.index_cast %97 : i64 to index
    %99 = index.add %76, %idx1
    %100 = arith.index_cast %99 : index to i64
    %101 = memref.load %alloc_39[%98] : memref<?xi64>
    %102 = arith.cmpi eq, %100, %101 : i64
    cf.cond_br %102, ^bb62(%95 : index), ^bb61
  ^bb61:  // pred: ^bb60
    memref.store %100, %alloc_39[%98] : memref<?xi64>
    %103 = index.add %95, %idx1
    cf.br ^bb62(%103 : index)
  ^bb62(%104: index):  // 2 preds: ^bb60, ^bb61
    %105 = arith.addi %94, %c1 : index
    cf.br ^bb59(%105, %104 : index, index)
  ^bb63:  // pred: ^bb59
    %106 = arith.addi %84, %c1 : index
    cf.br ^bb57(%106, %95 : index, index)
  ^bb64:  // pred: ^bb57
    %107 = index.add %76, %idx1
    %108 = arith.index_cast %85 : index to i64
    memref.store %108, %alloc_38[%107] : memref<?xi64>
    %109 = arith.addi %75, %c1 : index
    cf.br ^bb55(%109, %107, %85 : index, index, index)
  ^bb65:  // pred: ^bb55
    %110 = arith.index_cast %9 : index to i64
    %alloc_40 = memref.alloc() : memref<1xi64>
    memref.store %110, %alloc_40[%idx0] : memref<1xi64>
    %alloc_41 = memref.alloc(%77) : memref<?xi64>
    %alloc_42 = memref.alloc(%77) : memref<?xf64>
    cf.br ^bb66(%idx0 : index)
  ^bb66(%111: index):  // 2 preds: ^bb65, ^bb67
    %112 = arith.cmpi slt, %111, %77 : index
    cf.cond_br %112, ^bb67, ^bb68
  ^bb67:  // pred: ^bb66
    memref.store %cst, %alloc_42[%111] : memref<?xf64>
    %113 = arith.addi %111, %idx1 : index
    cf.br ^bb66(%113 : index)
  ^bb68:  // pred: ^bb66
    %alloc_43 = memref.alloc(%46) {alignment = 64 : i64} : memref<?xf64>
    %alloc_44 = memref.alloc(%46) {alignment = 64 : i64} : memref<?xi32>
    %alloc_45 = memref.alloc(%46) {alignment = 64 : i64} : memref<?xi64>
    cf.br ^bb69(%c0, %idx0, %c1_i32 : index, index, i32)
  ^bb69(%114: index, %115: index, %116: i32):  // 2 preds: ^bb68, ^bb84
    %117 = arith.cmpi slt, %114, %9 : index
    cf.cond_br %117, ^bb70, ^bb85
  ^bb70:  // pred: ^bb69
    %118 = arith.addi %116, %c1_i32 : i32
    %119 = arith.addi %114, %c1 : index
    %120 = memref.load %alloc_8[%114] : memref<?xi64>
    %121 = arith.index_cast %120 : i64 to index
    %122 = memref.load %alloc_8[%119] : memref<?xi64>
    %123 = arith.index_cast %122 : i64 to index
    cf.br ^bb71(%121, %idx0 : index, index)
  ^bb71(%124: index, %125: index):  // 2 preds: ^bb70, ^bb79
    %126 = arith.cmpi slt, %124, %123 : index
    cf.cond_br %126, ^bb72, ^bb80(%c0, %115 : index, index)
  ^bb72:  // pred: ^bb71
    %127 = memref.load %alloc_10[%124] : memref<?xi64>
    %128 = arith.index_cast %127 : i64 to index
    %129 = arith.addi %128, %c1 : index
    %130 = memref.load %alloc_28[%128] : memref<?xi64>
    %131 = arith.index_cast %130 : i64 to index
    %132 = memref.load %alloc_28[%129] : memref<?xi64>
    %133 = arith.index_cast %132 : i64 to index
    cf.br ^bb73(%131, %125 : index, index)
  ^bb73(%134: index, %135: index):  // 2 preds: ^bb72, ^bb78
    %136 = arith.cmpi slt, %134, %133 : index
    cf.cond_br %136, ^bb74, ^bb79
  ^bb74:  // pred: ^bb73
    %137 = memref.load %alloc_30[%134] : memref<?xi64>
    %138 = arith.index_cast %137 : i64 to index
    %139 = memref.load %alloc_16[%124] : memref<?xf64>
    %140 = memref.load %alloc_36[%134] : memref<?xf64>
    %141 = arith.mulf %139, %140 : f64
    %142 = memref.load %alloc_44[%138] : memref<?xi32>
    %143 = arith.cmpi eq, %142, %118 : i32
    cf.cond_br %143, ^bb75, ^bb76(%cst : f64)
  ^bb75:  // pred: ^bb74
    %144 = memref.load %alloc_43[%138] : memref<?xf64>
    cf.br ^bb76(%144 : f64)
  ^bb76(%145: f64):  // 2 preds: ^bb74, ^bb75
    %146 = arith.addf %145, %141 : f64
    %147 = arith.cmpi ne, %142, %118 : i32
    cf.cond_br %147, ^bb77, ^bb78(%135 : index)
  ^bb77:  // pred: ^bb76
    memref.store %118, %alloc_44[%138] : memref<?xi32>
    memref.store %137, %alloc_45[%135] : memref<?xi64>
    %148 = index.add %135, %idx1
    cf.br ^bb78(%148 : index)
  ^bb78(%149: index):  // 2 preds: ^bb76, ^bb77
    memref.store %146, %alloc_43[%138] : memref<?xf64>
    %150 = arith.addi %134, %c1 : index
    cf.br ^bb73(%150, %149 : index, index)
  ^bb79:  // pred: ^bb73
    %151 = arith.addi %124, %c1 : index
    cf.br ^bb71(%151, %135 : index, index)
  ^bb80(%152: index, %153: index):  // 2 preds: ^bb71, ^bb83
    %154 = arith.cmpi slt, %152, %125 : index
    cf.cond_br %154, ^bb81, ^bb84
  ^bb81:  // pred: ^bb80
    %155 = memref.load %alloc_45[%152] : memref<?xi64>
    %156 = arith.index_cast %155 : i64 to index
    %157 = memref.load %alloc_44[%156] : memref<?xi32>
    %158 = arith.cmpi eq, %157, %118 : i32
    cf.cond_br %158, ^bb82, ^bb83(%cst : f64)
  ^bb82:  // pred: ^bb81
    %159 = memref.load %alloc_43[%156] : memref<?xf64>
    cf.br ^bb83(%159 : f64)
  ^bb83(%160: f64):  // 2 preds: ^bb81, ^bb82
    memref.store %155, %alloc_41[%153] : memref<?xi64>
    %161 = index.add %153, %idx1
    memref.store %160, %alloc_42[%153] : memref<?xf64>
    %162 = arith.addi %152, %c1 : index
    cf.br ^bb80(%162, %161 : index, index)
  ^bb84:  // pred: ^bb80
    %163 = arith.addi %114, %c1 : index
    cf.br ^bb69(%163, %153, %118 : index, index, i32)
  ^bb85:  // pred: ^bb69
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
    cf.br ^bb1(%c0 : index)
  ^bb1(%10: index):  // 2 preds: ^bb0, ^bb2
    %11 = arith.cmpi slt, %10, %0 : index
    cf.cond_br %11, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    memref.store %c0_i64, %alloc_0[%10] : memref<?xi64>
    %12 = arith.addi %10, %c1 : index
    cf.br ^bb1(%12 : index)
  ^bb3:  // pred: ^bb1
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    cf.br ^bb4(%c0 : index)
  ^bb4(%13: index):  // 2 preds: ^bb3, ^bb5
    %14 = arith.cmpi slt, %13, %1 : index
    cf.cond_br %14, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %c0_i64, %alloc_2[%13] : memref<?xi64>
    %15 = arith.addi %13, %c1 : index
    cf.br ^bb4(%15 : index)
  ^bb6:  // pred: ^bb4
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%16: index):  // 2 preds: ^bb6, ^bb8
    %17 = arith.cmpi slt, %16, %2 : index
    cf.cond_br %17, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %c0_i64, %alloc_4[%16] : memref<?xi64>
    %18 = arith.addi %16, %c1 : index
    cf.br ^bb7(%18 : index)
  ^bb9:  // pred: ^bb7
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    cf.br ^bb10(%c0 : index)
  ^bb10(%19: index):  // 2 preds: ^bb9, ^bb11
    %20 = arith.cmpi slt, %19, %3 : index
    cf.cond_br %20, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %c0_i64, %alloc_6[%19] : memref<?xi64>
    %21 = arith.addi %19, %c1 : index
    cf.br ^bb10(%21 : index)
  ^bb12:  // pred: ^bb10
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%22: index):  // 2 preds: ^bb12, ^bb14
    %23 = arith.cmpi slt, %22, %4 : index
    cf.cond_br %23, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %c0_i64, %alloc_8[%22] : memref<?xi64>
    %24 = arith.addi %22, %c1 : index
    cf.br ^bb13(%24 : index)
  ^bb15:  // pred: ^bb13
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    cf.br ^bb16(%c0 : index)
  ^bb16(%25: index):  // 2 preds: ^bb15, ^bb17
    %26 = arith.cmpi slt, %25, %5 : index
    cf.cond_br %26, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    memref.store %c0_i64, %alloc_10[%25] : memref<?xi64>
    %27 = arith.addi %25, %c1 : index
    cf.br ^bb16(%27 : index)
  ^bb18:  // pred: ^bb16
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%28: index):  // 2 preds: ^bb18, ^bb20
    %29 = arith.cmpi slt, %28, %6 : index
    cf.cond_br %29, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %c0_i64, %alloc_12[%28] : memref<?xi64>
    %30 = arith.addi %28, %c1 : index
    cf.br ^bb19(%30 : index)
  ^bb21:  // pred: ^bb19
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    cf.br ^bb22(%c0 : index)
  ^bb22(%31: index):  // 2 preds: ^bb21, ^bb23
    %32 = arith.cmpi slt, %31, %7 : index
    cf.cond_br %32, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    memref.store %c0_i64, %alloc_14[%31] : memref<?xi64>
    %33 = arith.addi %31, %c1 : index
    cf.br ^bb22(%33 : index)
  ^bb24:  // pred: ^bb22
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%34: index):  // 2 preds: ^bb24, ^bb26
    %35 = arith.cmpi slt, %34, %8 : index
    cf.cond_br %35, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    memref.store %cst, %alloc_16[%34] : memref<?xf64>
    %36 = arith.addi %34, %c1 : index
    cf.br ^bb25(%36 : index)
  ^bb27:  // pred: ^bb25
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %37 = memref.load %alloc_18[%c0] : memref<13xindex>
    %38 = memref.load %alloc_18[%c1] : memref<13xindex>
    %39 = memref.load %alloc_18[%c2] : memref<13xindex>
    %40 = memref.load %alloc_18[%c3] : memref<13xindex>
    %41 = memref.load %alloc_18[%c4] : memref<13xindex>
    %42 = memref.load %alloc_18[%c5] : memref<13xindex>
    %43 = memref.load %alloc_18[%c6] : memref<13xindex>
    %44 = memref.load %alloc_18[%c7] : memref<13xindex>
    %45 = memref.load %alloc_18[%c8] : memref<13xindex>
    %46 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%37) : memref<?xi64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%47: index):  // 2 preds: ^bb27, ^bb29
    %48 = arith.cmpi slt, %47, %37 : index
    cf.cond_br %48, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    memref.store %c0_i64, %alloc_20[%47] : memref<?xi64>
    %49 = arith.addi %47, %c1 : index
    cf.br ^bb28(%49 : index)
  ^bb30:  // pred: ^bb28
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%38) : memref<?xi64>
    cf.br ^bb31(%c0 : index)
  ^bb31(%50: index):  // 2 preds: ^bb30, ^bb32
    %51 = arith.cmpi slt, %50, %38 : index
    cf.cond_br %51, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    memref.store %c0_i64, %alloc_22[%50] : memref<?xi64>
    %52 = arith.addi %50, %c1 : index
    cf.br ^bb31(%52 : index)
  ^bb33:  // pred: ^bb31
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%39) : memref<?xi64>
    cf.br ^bb34(%c0 : index)
  ^bb34(%53: index):  // 2 preds: ^bb33, ^bb35
    %54 = arith.cmpi slt, %53, %39 : index
    cf.cond_br %54, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    memref.store %c0_i64, %alloc_24[%53] : memref<?xi64>
    %55 = arith.addi %53, %c1 : index
    cf.br ^bb34(%55 : index)
  ^bb36:  // pred: ^bb34
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%40) : memref<?xi64>
    cf.br ^bb37(%c0 : index)
  ^bb37(%56: index):  // 2 preds: ^bb36, ^bb38
    %57 = arith.cmpi slt, %56, %40 : index
    cf.cond_br %57, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    memref.store %c0_i64, %alloc_26[%56] : memref<?xi64>
    %58 = arith.addi %56, %c1 : index
    cf.br ^bb37(%58 : index)
  ^bb39:  // pred: ^bb37
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%41) : memref<?xi64>
    cf.br ^bb40(%c0 : index)
  ^bb40(%59: index):  // 2 preds: ^bb39, ^bb41
    %60 = arith.cmpi slt, %59, %41 : index
    cf.cond_br %60, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    memref.store %c0_i64, %alloc_28[%59] : memref<?xi64>
    %61 = arith.addi %59, %c1 : index
    cf.br ^bb40(%61 : index)
  ^bb42:  // pred: ^bb40
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%42) : memref<?xi64>
    cf.br ^bb43(%c0 : index)
  ^bb43(%62: index):  // 2 preds: ^bb42, ^bb44
    %63 = arith.cmpi slt, %62, %42 : index
    cf.cond_br %63, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    memref.store %c0_i64, %alloc_30[%62] : memref<?xi64>
    %64 = arith.addi %62, %c1 : index
    cf.br ^bb43(%64 : index)
  ^bb45:  // pred: ^bb43
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%43) : memref<?xi64>
    cf.br ^bb46(%c0 : index)
  ^bb46(%65: index):  // 2 preds: ^bb45, ^bb47
    %66 = arith.cmpi slt, %65, %43 : index
    cf.cond_br %66, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    memref.store %c0_i64, %alloc_32[%65] : memref<?xi64>
    %67 = arith.addi %65, %c1 : index
    cf.br ^bb46(%67 : index)
  ^bb48:  // pred: ^bb46
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%44) : memref<?xi64>
    cf.br ^bb49(%c0 : index)
  ^bb49(%68: index):  // 2 preds: ^bb48, ^bb50
    %69 = arith.cmpi slt, %68, %44 : index
    cf.cond_br %69, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    memref.store %c0_i64, %alloc_34[%68] : memref<?xi64>
    %70 = arith.addi %68, %c1 : index
    cf.br ^bb49(%70 : index)
  ^bb51:  // pred: ^bb49
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%45) : memref<?xf64>
    cf.br ^bb52(%c0 : index)
  ^bb52(%71: index):  // 2 preds: ^bb51, ^bb53
    %72 = arith.cmpi slt, %71, %45 : index
    cf.cond_br %72, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    memref.store %cst, %alloc_36[%71] : memref<?xf64>
    %73 = arith.addi %71, %c1 : index
    cf.br ^bb52(%73 : index)
  ^bb54:  // pred: ^bb52
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %74 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%74) : memref<?xi64>
    memref.store %c0_i64, %alloc_38[%idx0] : memref<?xi64>
    %alloc_39 = memref.alloc(%46) : memref<?xi64>
    cf.br ^bb55(%c0, %idx0, %idx0 : index, index, index)
  ^bb55(%75: index, %76: index, %77: index):  // 2 preds: ^bb54, ^bb64
    %78 = arith.cmpi slt, %75, %9 : index
    cf.cond_br %78, ^bb56, ^bb65
  ^bb56:  // pred: ^bb55
    %79 = arith.addi %75, %c1 : index
    %80 = memref.load %alloc_8[%75] : memref<?xi64>
    %81 = arith.index_cast %80 : i64 to index
    %82 = memref.load %alloc_8[%79] : memref<?xi64>
    %83 = arith.index_cast %82 : i64 to index
    cf.br ^bb57(%81, %77 : index, index)
  ^bb57(%84: index, %85: index):  // 2 preds: ^bb56, ^bb63
    %86 = arith.cmpi slt, %84, %83 : index
    cf.cond_br %86, ^bb58, ^bb64
  ^bb58:  // pred: ^bb57
    %87 = memref.load %alloc_10[%84] : memref<?xi64>
    %88 = arith.index_cast %87 : i64 to index
    %89 = arith.addi %88, %c1 : index
    %90 = memref.load %alloc_28[%88] : memref<?xi64>
    %91 = arith.index_cast %90 : i64 to index
    %92 = memref.load %alloc_28[%89] : memref<?xi64>
    %93 = arith.index_cast %92 : i64 to index
    cf.br ^bb59(%91, %85 : index, index)
  ^bb59(%94: index, %95: index):  // 2 preds: ^bb58, ^bb62
    %96 = arith.cmpi slt, %94, %93 : index
    cf.cond_br %96, ^bb60, ^bb63
  ^bb60:  // pred: ^bb59
    %97 = memref.load %alloc_30[%94] : memref<?xi64>
    %98 = arith.index_cast %97 : i64 to index
    %99 = index.add %76, %idx1
    %100 = arith.index_cast %99 : index to i64
    %101 = memref.load %alloc_39[%98] : memref<?xi64>
    %102 = arith.cmpi eq, %100, %101 : i64
    cf.cond_br %102, ^bb62(%95 : index), ^bb61
  ^bb61:  // pred: ^bb60
    memref.store %100, %alloc_39[%98] : memref<?xi64>
    %103 = index.add %95, %idx1
    cf.br ^bb62(%103 : index)
  ^bb62(%104: index):  // 2 preds: ^bb60, ^bb61
    %105 = arith.addi %94, %c1 : index
    cf.br ^bb59(%105, %104 : index, index)
  ^bb63:  // pred: ^bb59
    %106 = arith.addi %84, %c1 : index
    cf.br ^bb57(%106, %95 : index, index)
  ^bb64:  // pred: ^bb57
    %107 = index.add %76, %idx1
    %108 = arith.index_cast %85 : index to i64
    memref.store %108, %alloc_38[%107] : memref<?xi64>
    cf.br ^bb55(%79, %107, %85 : index, index, index)
  ^bb65:  // pred: ^bb55
    %109 = arith.index_cast %9 : index to i64
    %alloc_40 = memref.alloc() : memref<1xi64>
    memref.store %109, %alloc_40[%idx0] : memref<1xi64>
    %alloc_41 = memref.alloc(%77) : memref<?xi64>
    %alloc_42 = memref.alloc(%77) : memref<?xf64>
    cf.br ^bb66(%idx0 : index)
  ^bb66(%110: index):  // 2 preds: ^bb65, ^bb67
    %111 = arith.cmpi slt, %110, %77 : index
    cf.cond_br %111, ^bb67, ^bb68
  ^bb67:  // pred: ^bb66
    memref.store %cst, %alloc_42[%110] : memref<?xf64>
    %112 = arith.addi %110, %idx1 : index
    cf.br ^bb66(%112 : index)
  ^bb68:  // pred: ^bb66
    %alloc_43 = memref.alloc(%46) {alignment = 64 : i64} : memref<?xf64>
    %alloc_44 = memref.alloc(%46) {alignment = 64 : i64} : memref<?xi32>
    %alloc_45 = memref.alloc(%46) {alignment = 64 : i64} : memref<?xi64>
    cf.br ^bb69(%c0, %idx0, %c1_i32 : index, index, i32)
  ^bb69(%113: index, %114: index, %115: i32):  // 2 preds: ^bb68, ^bb84
    %116 = arith.cmpi slt, %113, %9 : index
    cf.cond_br %116, ^bb70, ^bb85
  ^bb70:  // pred: ^bb69
    %117 = arith.addi %115, %c1_i32 : i32
    %118 = arith.addi %113, %c1 : index
    %119 = memref.load %alloc_8[%113] : memref<?xi64>
    %120 = arith.index_cast %119 : i64 to index
    %121 = memref.load %alloc_8[%118] : memref<?xi64>
    %122 = arith.index_cast %121 : i64 to index
    cf.br ^bb71(%120, %idx0 : index, index)
  ^bb71(%123: index, %124: index):  // 2 preds: ^bb70, ^bb79
    %125 = arith.cmpi slt, %123, %122 : index
    cf.cond_br %125, ^bb72, ^bb80(%c0, %114 : index, index)
  ^bb72:  // pred: ^bb71
    %126 = memref.load %alloc_10[%123] : memref<?xi64>
    %127 = arith.index_cast %126 : i64 to index
    %128 = arith.addi %127, %c1 : index
    %129 = memref.load %alloc_28[%127] : memref<?xi64>
    %130 = arith.index_cast %129 : i64 to index
    %131 = memref.load %alloc_28[%128] : memref<?xi64>
    %132 = arith.index_cast %131 : i64 to index
    cf.br ^bb73(%130, %124 : index, index)
  ^bb73(%133: index, %134: index):  // 2 preds: ^bb72, ^bb78
    %135 = arith.cmpi slt, %133, %132 : index
    cf.cond_br %135, ^bb74, ^bb79
  ^bb74:  // pred: ^bb73
    %136 = memref.load %alloc_30[%133] : memref<?xi64>
    %137 = arith.index_cast %136 : i64 to index
    %138 = memref.load %alloc_16[%123] : memref<?xf64>
    %139 = memref.load %alloc_36[%133] : memref<?xf64>
    %140 = arith.mulf %138, %139 : f64
    %141 = memref.load %alloc_44[%137] : memref<?xi32>
    %142 = arith.cmpi eq, %141, %117 : i32
    cf.cond_br %142, ^bb75, ^bb76(%cst : f64)
  ^bb75:  // pred: ^bb74
    %143 = memref.load %alloc_43[%137] : memref<?xf64>
    cf.br ^bb76(%143 : f64)
  ^bb76(%144: f64):  // 2 preds: ^bb74, ^bb75
    %145 = arith.addf %144, %140 : f64
    %146 = arith.cmpi ne, %141, %117 : i32
    cf.cond_br %146, ^bb77, ^bb78(%134 : index)
  ^bb77:  // pred: ^bb76
    memref.store %117, %alloc_44[%137] : memref<?xi32>
    memref.store %136, %alloc_45[%134] : memref<?xi64>
    %147 = index.add %134, %idx1
    cf.br ^bb78(%147 : index)
  ^bb78(%148: index):  // 2 preds: ^bb76, ^bb77
    memref.store %145, %alloc_43[%137] : memref<?xf64>
    %149 = arith.addi %133, %c1 : index
    cf.br ^bb73(%149, %148 : index, index)
  ^bb79:  // pred: ^bb73
    %150 = arith.addi %123, %c1 : index
    cf.br ^bb71(%150, %134 : index, index)
  ^bb80(%151: index, %152: index):  // 2 preds: ^bb71, ^bb83
    %153 = arith.cmpi slt, %151, %124 : index
    cf.cond_br %153, ^bb81, ^bb84
  ^bb81:  // pred: ^bb80
    %154 = memref.load %alloc_45[%151] : memref<?xi64>
    %155 = arith.index_cast %154 : i64 to index
    %156 = memref.load %alloc_44[%155] : memref<?xi32>
    %157 = arith.cmpi eq, %156, %117 : i32
    cf.cond_br %157, ^bb82, ^bb83(%cst : f64)
  ^bb82:  // pred: ^bb81
    %158 = memref.load %alloc_43[%155] : memref<?xf64>
    cf.br ^bb83(%158 : f64)
  ^bb83(%159: f64):  // 2 preds: ^bb81, ^bb82
    memref.store %154, %alloc_41[%152] : memref<?xi64>
    %160 = index.add %152, %idx1
    memref.store %159, %alloc_42[%152] : memref<?xf64>
    %161 = arith.addi %151, %c1 : index
    cf.br ^bb80(%161, %160 : index, index)
  ^bb84:  // pred: ^bb80
    cf.br ^bb69(%118, %152, %117 : index, index, i32)
  ^bb85:  // pred: ^bb69
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


// -----// IR Dump After ConvertVectorToLLVMPass (convert-vector-to-llvm) //----- //
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
    cf.br ^bb1(%c0 : index)
  ^bb1(%10: index):  // 2 preds: ^bb0, ^bb2
    %11 = arith.cmpi slt, %10, %0 : index
    cf.cond_br %11, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    memref.store %c0_i64, %alloc_0[%10] : memref<?xi64>
    %12 = arith.addi %10, %c1 : index
    cf.br ^bb1(%12 : index)
  ^bb3:  // pred: ^bb1
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    cf.br ^bb4(%c0 : index)
  ^bb4(%13: index):  // 2 preds: ^bb3, ^bb5
    %14 = arith.cmpi slt, %13, %1 : index
    cf.cond_br %14, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %c0_i64, %alloc_2[%13] : memref<?xi64>
    %15 = arith.addi %13, %c1 : index
    cf.br ^bb4(%15 : index)
  ^bb6:  // pred: ^bb4
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%16: index):  // 2 preds: ^bb6, ^bb8
    %17 = arith.cmpi slt, %16, %2 : index
    cf.cond_br %17, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %c0_i64, %alloc_4[%16] : memref<?xi64>
    %18 = arith.addi %16, %c1 : index
    cf.br ^bb7(%18 : index)
  ^bb9:  // pred: ^bb7
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    cf.br ^bb10(%c0 : index)
  ^bb10(%19: index):  // 2 preds: ^bb9, ^bb11
    %20 = arith.cmpi slt, %19, %3 : index
    cf.cond_br %20, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %c0_i64, %alloc_6[%19] : memref<?xi64>
    %21 = arith.addi %19, %c1 : index
    cf.br ^bb10(%21 : index)
  ^bb12:  // pred: ^bb10
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%22: index):  // 2 preds: ^bb12, ^bb14
    %23 = arith.cmpi slt, %22, %4 : index
    cf.cond_br %23, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %c0_i64, %alloc_8[%22] : memref<?xi64>
    %24 = arith.addi %22, %c1 : index
    cf.br ^bb13(%24 : index)
  ^bb15:  // pred: ^bb13
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    cf.br ^bb16(%c0 : index)
  ^bb16(%25: index):  // 2 preds: ^bb15, ^bb17
    %26 = arith.cmpi slt, %25, %5 : index
    cf.cond_br %26, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    memref.store %c0_i64, %alloc_10[%25] : memref<?xi64>
    %27 = arith.addi %25, %c1 : index
    cf.br ^bb16(%27 : index)
  ^bb18:  // pred: ^bb16
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%28: index):  // 2 preds: ^bb18, ^bb20
    %29 = arith.cmpi slt, %28, %6 : index
    cf.cond_br %29, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %c0_i64, %alloc_12[%28] : memref<?xi64>
    %30 = arith.addi %28, %c1 : index
    cf.br ^bb19(%30 : index)
  ^bb21:  // pred: ^bb19
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    cf.br ^bb22(%c0 : index)
  ^bb22(%31: index):  // 2 preds: ^bb21, ^bb23
    %32 = arith.cmpi slt, %31, %7 : index
    cf.cond_br %32, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    memref.store %c0_i64, %alloc_14[%31] : memref<?xi64>
    %33 = arith.addi %31, %c1 : index
    cf.br ^bb22(%33 : index)
  ^bb24:  // pred: ^bb22
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%34: index):  // 2 preds: ^bb24, ^bb26
    %35 = arith.cmpi slt, %34, %8 : index
    cf.cond_br %35, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    memref.store %cst, %alloc_16[%34] : memref<?xf64>
    %36 = arith.addi %34, %c1 : index
    cf.br ^bb25(%36 : index)
  ^bb27:  // pred: ^bb25
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %37 = memref.load %alloc_18[%c0] : memref<13xindex>
    %38 = memref.load %alloc_18[%c1] : memref<13xindex>
    %39 = memref.load %alloc_18[%c2] : memref<13xindex>
    %40 = memref.load %alloc_18[%c3] : memref<13xindex>
    %41 = memref.load %alloc_18[%c4] : memref<13xindex>
    %42 = memref.load %alloc_18[%c5] : memref<13xindex>
    %43 = memref.load %alloc_18[%c6] : memref<13xindex>
    %44 = memref.load %alloc_18[%c7] : memref<13xindex>
    %45 = memref.load %alloc_18[%c8] : memref<13xindex>
    %46 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%37) : memref<?xi64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%47: index):  // 2 preds: ^bb27, ^bb29
    %48 = arith.cmpi slt, %47, %37 : index
    cf.cond_br %48, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    memref.store %c0_i64, %alloc_20[%47] : memref<?xi64>
    %49 = arith.addi %47, %c1 : index
    cf.br ^bb28(%49 : index)
  ^bb30:  // pred: ^bb28
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%38) : memref<?xi64>
    cf.br ^bb31(%c0 : index)
  ^bb31(%50: index):  // 2 preds: ^bb30, ^bb32
    %51 = arith.cmpi slt, %50, %38 : index
    cf.cond_br %51, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    memref.store %c0_i64, %alloc_22[%50] : memref<?xi64>
    %52 = arith.addi %50, %c1 : index
    cf.br ^bb31(%52 : index)
  ^bb33:  // pred: ^bb31
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%39) : memref<?xi64>
    cf.br ^bb34(%c0 : index)
  ^bb34(%53: index):  // 2 preds: ^bb33, ^bb35
    %54 = arith.cmpi slt, %53, %39 : index
    cf.cond_br %54, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    memref.store %c0_i64, %alloc_24[%53] : memref<?xi64>
    %55 = arith.addi %53, %c1 : index
    cf.br ^bb34(%55 : index)
  ^bb36:  // pred: ^bb34
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%40) : memref<?xi64>
    cf.br ^bb37(%c0 : index)
  ^bb37(%56: index):  // 2 preds: ^bb36, ^bb38
    %57 = arith.cmpi slt, %56, %40 : index
    cf.cond_br %57, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    memref.store %c0_i64, %alloc_26[%56] : memref<?xi64>
    %58 = arith.addi %56, %c1 : index
    cf.br ^bb37(%58 : index)
  ^bb39:  // pred: ^bb37
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%41) : memref<?xi64>
    cf.br ^bb40(%c0 : index)
  ^bb40(%59: index):  // 2 preds: ^bb39, ^bb41
    %60 = arith.cmpi slt, %59, %41 : index
    cf.cond_br %60, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    memref.store %c0_i64, %alloc_28[%59] : memref<?xi64>
    %61 = arith.addi %59, %c1 : index
    cf.br ^bb40(%61 : index)
  ^bb42:  // pred: ^bb40
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%42) : memref<?xi64>
    cf.br ^bb43(%c0 : index)
  ^bb43(%62: index):  // 2 preds: ^bb42, ^bb44
    %63 = arith.cmpi slt, %62, %42 : index
    cf.cond_br %63, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    memref.store %c0_i64, %alloc_30[%62] : memref<?xi64>
    %64 = arith.addi %62, %c1 : index
    cf.br ^bb43(%64 : index)
  ^bb45:  // pred: ^bb43
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%43) : memref<?xi64>
    cf.br ^bb46(%c0 : index)
  ^bb46(%65: index):  // 2 preds: ^bb45, ^bb47
    %66 = arith.cmpi slt, %65, %43 : index
    cf.cond_br %66, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    memref.store %c0_i64, %alloc_32[%65] : memref<?xi64>
    %67 = arith.addi %65, %c1 : index
    cf.br ^bb46(%67 : index)
  ^bb48:  // pred: ^bb46
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%44) : memref<?xi64>
    cf.br ^bb49(%c0 : index)
  ^bb49(%68: index):  // 2 preds: ^bb48, ^bb50
    %69 = arith.cmpi slt, %68, %44 : index
    cf.cond_br %69, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    memref.store %c0_i64, %alloc_34[%68] : memref<?xi64>
    %70 = arith.addi %68, %c1 : index
    cf.br ^bb49(%70 : index)
  ^bb51:  // pred: ^bb49
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%45) : memref<?xf64>
    cf.br ^bb52(%c0 : index)
  ^bb52(%71: index):  // 2 preds: ^bb51, ^bb53
    %72 = arith.cmpi slt, %71, %45 : index
    cf.cond_br %72, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    memref.store %cst, %alloc_36[%71] : memref<?xf64>
    %73 = arith.addi %71, %c1 : index
    cf.br ^bb52(%73 : index)
  ^bb54:  // pred: ^bb52
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %74 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%74) : memref<?xi64>
    memref.store %c0_i64, %alloc_38[%idx0] : memref<?xi64>
    %alloc_39 = memref.alloc(%46) : memref<?xi64>
    cf.br ^bb55(%c0, %idx0, %idx0 : index, index, index)
  ^bb55(%75: index, %76: index, %77: index):  // 2 preds: ^bb54, ^bb64
    %78 = arith.cmpi slt, %75, %9 : index
    cf.cond_br %78, ^bb56, ^bb65
  ^bb56:  // pred: ^bb55
    %79 = arith.addi %75, %c1 : index
    %80 = memref.load %alloc_8[%75] : memref<?xi64>
    %81 = arith.index_cast %80 : i64 to index
    %82 = memref.load %alloc_8[%79] : memref<?xi64>
    %83 = arith.index_cast %82 : i64 to index
    cf.br ^bb57(%81, %77 : index, index)
  ^bb57(%84: index, %85: index):  // 2 preds: ^bb56, ^bb63
    %86 = arith.cmpi slt, %84, %83 : index
    cf.cond_br %86, ^bb58, ^bb64
  ^bb58:  // pred: ^bb57
    %87 = memref.load %alloc_10[%84] : memref<?xi64>
    %88 = arith.index_cast %87 : i64 to index
    %89 = arith.addi %88, %c1 : index
    %90 = memref.load %alloc_28[%88] : memref<?xi64>
    %91 = arith.index_cast %90 : i64 to index
    %92 = memref.load %alloc_28[%89] : memref<?xi64>
    %93 = arith.index_cast %92 : i64 to index
    cf.br ^bb59(%91, %85 : index, index)
  ^bb59(%94: index, %95: index):  // 2 preds: ^bb58, ^bb62
    %96 = arith.cmpi slt, %94, %93 : index
    cf.cond_br %96, ^bb60, ^bb63
  ^bb60:  // pred: ^bb59
    %97 = memref.load %alloc_30[%94] : memref<?xi64>
    %98 = arith.index_cast %97 : i64 to index
    %99 = index.add %76, %idx1
    %100 = arith.index_cast %99 : index to i64
    %101 = memref.load %alloc_39[%98] : memref<?xi64>
    %102 = arith.cmpi eq, %100, %101 : i64
    cf.cond_br %102, ^bb62(%95 : index), ^bb61
  ^bb61:  // pred: ^bb60
    memref.store %100, %alloc_39[%98] : memref<?xi64>
    %103 = index.add %95, %idx1
    cf.br ^bb62(%103 : index)
  ^bb62(%104: index):  // 2 preds: ^bb60, ^bb61
    %105 = arith.addi %94, %c1 : index
    cf.br ^bb59(%105, %104 : index, index)
  ^bb63:  // pred: ^bb59
    %106 = arith.addi %84, %c1 : index
    cf.br ^bb57(%106, %95 : index, index)
  ^bb64:  // pred: ^bb57
    %107 = index.add %76, %idx1
    %108 = arith.index_cast %85 : index to i64
    memref.store %108, %alloc_38[%107] : memref<?xi64>
    cf.br ^bb55(%79, %107, %85 : index, index, index)
  ^bb65:  // pred: ^bb55
    %109 = arith.index_cast %9 : index to i64
    %alloc_40 = memref.alloc() : memref<1xi64>
    memref.store %109, %alloc_40[%idx0] : memref<1xi64>
    %alloc_41 = memref.alloc(%77) : memref<?xi64>
    %alloc_42 = memref.alloc(%77) : memref<?xf64>
    cf.br ^bb66(%idx0 : index)
  ^bb66(%110: index):  // 2 preds: ^bb65, ^bb67
    %111 = arith.cmpi slt, %110, %77 : index
    cf.cond_br %111, ^bb67, ^bb68
  ^bb67:  // pred: ^bb66
    memref.store %cst, %alloc_42[%110] : memref<?xf64>
    %112 = arith.addi %110, %idx1 : index
    cf.br ^bb66(%112 : index)
  ^bb68:  // pred: ^bb66
    %alloc_43 = memref.alloc(%46) {alignment = 64 : i64} : memref<?xf64>
    %alloc_44 = memref.alloc(%46) {alignment = 64 : i64} : memref<?xi32>
    %alloc_45 = memref.alloc(%46) {alignment = 64 : i64} : memref<?xi64>
    cf.br ^bb69(%c0, %idx0, %c1_i32 : index, index, i32)
  ^bb69(%113: index, %114: index, %115: i32):  // 2 preds: ^bb68, ^bb84
    %116 = arith.cmpi slt, %113, %9 : index
    cf.cond_br %116, ^bb70, ^bb85
  ^bb70:  // pred: ^bb69
    %117 = arith.addi %115, %c1_i32 : i32
    %118 = arith.addi %113, %c1 : index
    %119 = memref.load %alloc_8[%113] : memref<?xi64>
    %120 = arith.index_cast %119 : i64 to index
    %121 = memref.load %alloc_8[%118] : memref<?xi64>
    %122 = arith.index_cast %121 : i64 to index
    cf.br ^bb71(%120, %idx0 : index, index)
  ^bb71(%123: index, %124: index):  // 2 preds: ^bb70, ^bb79
    %125 = arith.cmpi slt, %123, %122 : index
    cf.cond_br %125, ^bb72, ^bb80(%c0, %114 : index, index)
  ^bb72:  // pred: ^bb71
    %126 = memref.load %alloc_10[%123] : memref<?xi64>
    %127 = arith.index_cast %126 : i64 to index
    %128 = arith.addi %127, %c1 : index
    %129 = memref.load %alloc_28[%127] : memref<?xi64>
    %130 = arith.index_cast %129 : i64 to index
    %131 = memref.load %alloc_28[%128] : memref<?xi64>
    %132 = arith.index_cast %131 : i64 to index
    cf.br ^bb73(%130, %124 : index, index)
  ^bb73(%133: index, %134: index):  // 2 preds: ^bb72, ^bb78
    %135 = arith.cmpi slt, %133, %132 : index
    cf.cond_br %135, ^bb74, ^bb79
  ^bb74:  // pred: ^bb73
    %136 = memref.load %alloc_30[%133] : memref<?xi64>
    %137 = arith.index_cast %136 : i64 to index
    %138 = memref.load %alloc_16[%123] : memref<?xf64>
    %139 = memref.load %alloc_36[%133] : memref<?xf64>
    %140 = arith.mulf %138, %139 : f64
    %141 = memref.load %alloc_44[%137] : memref<?xi32>
    %142 = arith.cmpi eq, %141, %117 : i32
    cf.cond_br %142, ^bb75, ^bb76(%cst : f64)
  ^bb75:  // pred: ^bb74
    %143 = memref.load %alloc_43[%137] : memref<?xf64>
    cf.br ^bb76(%143 : f64)
  ^bb76(%144: f64):  // 2 preds: ^bb74, ^bb75
    %145 = arith.addf %144, %140 : f64
    %146 = arith.cmpi ne, %141, %117 : i32
    cf.cond_br %146, ^bb77, ^bb78(%134 : index)
  ^bb77:  // pred: ^bb76
    memref.store %117, %alloc_44[%137] : memref<?xi32>
    memref.store %136, %alloc_45[%134] : memref<?xi64>
    %147 = index.add %134, %idx1
    cf.br ^bb78(%147 : index)
  ^bb78(%148: index):  // 2 preds: ^bb76, ^bb77
    memref.store %145, %alloc_43[%137] : memref<?xf64>
    %149 = arith.addi %133, %c1 : index
    cf.br ^bb73(%149, %148 : index, index)
  ^bb79:  // pred: ^bb73
    %150 = arith.addi %123, %c1 : index
    cf.br ^bb71(%150, %134 : index, index)
  ^bb80(%151: index, %152: index):  // 2 preds: ^bb71, ^bb83
    %153 = arith.cmpi slt, %151, %124 : index
    cf.cond_br %153, ^bb81, ^bb84
  ^bb81:  // pred: ^bb80
    %154 = memref.load %alloc_45[%151] : memref<?xi64>
    %155 = arith.index_cast %154 : i64 to index
    %156 = memref.load %alloc_44[%155] : memref<?xi32>
    %157 = arith.cmpi eq, %156, %117 : i32
    cf.cond_br %157, ^bb82, ^bb83(%cst : f64)
  ^bb82:  // pred: ^bb81
    %158 = memref.load %alloc_43[%155] : memref<?xf64>
    cf.br ^bb83(%158 : f64)
  ^bb83(%159: f64):  // 2 preds: ^bb81, ^bb82
    memref.store %154, %alloc_41[%152] : memref<?xi64>
    %160 = index.add %152, %idx1
    memref.store %159, %alloc_42[%152] : memref<?xf64>
    %161 = arith.addi %151, %c1 : index
    cf.br ^bb80(%161, %160 : index, index)
  ^bb84:  // pred: ^bb80
    cf.br ^bb69(%118, %152, %117 : index, index, i32)
  ^bb85:  // pred: ^bb69
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


// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @comet_print_memref_i64(memref<*xi64>)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @comet_print_memref_index(memref<*xindex>)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
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
  cf.br ^bb1(%c0 : index)
^bb1(%10: index):  // 2 preds: ^bb0, ^bb2
  %11 = arith.cmpi slt, %10, %0 : index
  cf.cond_br %11, ^bb2, ^bb3
^bb2:  // pred: ^bb1
  memref.store %c0_i64, %alloc_0[%10] : memref<?xi64>
  %12 = arith.addi %10, %c1 : index
  cf.br ^bb1(%12 : index)
^bb3:  // pred: ^bb1
  %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
  %alloc_2 = memref.alloc(%1) : memref<?xi64>
  cf.br ^bb4(%c0 : index)
^bb4(%13: index):  // 2 preds: ^bb3, ^bb5
  %14 = arith.cmpi slt, %13, %1 : index
  cf.cond_br %14, ^bb5, ^bb6
^bb5:  // pred: ^bb4
  memref.store %c0_i64, %alloc_2[%13] : memref<?xi64>
  %15 = arith.addi %13, %c1 : index
  cf.br ^bb4(%15 : index)
^bb6:  // pred: ^bb4
  %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
  %alloc_4 = memref.alloc(%2) : memref<?xi64>
  cf.br ^bb7(%c0 : index)
^bb7(%16: index):  // 2 preds: ^bb6, ^bb8
  %17 = arith.cmpi slt, %16, %2 : index
  cf.cond_br %17, ^bb8, ^bb9
^bb8:  // pred: ^bb7
  memref.store %c0_i64, %alloc_4[%16] : memref<?xi64>
  %18 = arith.addi %16, %c1 : index
  cf.br ^bb7(%18 : index)
^bb9:  // pred: ^bb7
  %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
  %alloc_6 = memref.alloc(%3) : memref<?xi64>
  cf.br ^bb10(%c0 : index)
^bb10(%19: index):  // 2 preds: ^bb9, ^bb11
  %20 = arith.cmpi slt, %19, %3 : index
  cf.cond_br %20, ^bb11, ^bb12
^bb11:  // pred: ^bb10
  memref.store %c0_i64, %alloc_6[%19] : memref<?xi64>
  %21 = arith.addi %19, %c1 : index
  cf.br ^bb10(%21 : index)
^bb12:  // pred: ^bb10
  %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
  %alloc_8 = memref.alloc(%4) : memref<?xi64>
  cf.br ^bb13(%c0 : index)
^bb13(%22: index):  // 2 preds: ^bb12, ^bb14
  %23 = arith.cmpi slt, %22, %4 : index
  cf.cond_br %23, ^bb14, ^bb15
^bb14:  // pred: ^bb13
  memref.store %c0_i64, %alloc_8[%22] : memref<?xi64>
  %24 = arith.addi %22, %c1 : index
  cf.br ^bb13(%24 : index)
^bb15:  // pred: ^bb13
  %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
  %alloc_10 = memref.alloc(%5) : memref<?xi64>
  cf.br ^bb16(%c0 : index)
^bb16(%25: index):  // 2 preds: ^bb15, ^bb17
  %26 = arith.cmpi slt, %25, %5 : index
  cf.cond_br %26, ^bb17, ^bb18
^bb17:  // pred: ^bb16
  memref.store %c0_i64, %alloc_10[%25] : memref<?xi64>
  %27 = arith.addi %25, %c1 : index
  cf.br ^bb16(%27 : index)
^bb18:  // pred: ^bb16
  %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
  %alloc_12 = memref.alloc(%6) : memref<?xi64>
  cf.br ^bb19(%c0 : index)
^bb19(%28: index):  // 2 preds: ^bb18, ^bb20
  %29 = arith.cmpi slt, %28, %6 : index
  cf.cond_br %29, ^bb20, ^bb21
^bb20:  // pred: ^bb19
  memref.store %c0_i64, %alloc_12[%28] : memref<?xi64>
  %30 = arith.addi %28, %c1 : index
  cf.br ^bb19(%30 : index)
^bb21:  // pred: ^bb19
  %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
  %alloc_14 = memref.alloc(%7) : memref<?xi64>
  cf.br ^bb22(%c0 : index)
^bb22(%31: index):  // 2 preds: ^bb21, ^bb23
  %32 = arith.cmpi slt, %31, %7 : index
  cf.cond_br %32, ^bb23, ^bb24
^bb23:  // pred: ^bb22
  memref.store %c0_i64, %alloc_14[%31] : memref<?xi64>
  %33 = arith.addi %31, %c1 : index
  cf.br ^bb22(%33 : index)
^bb24:  // pred: ^bb22
  %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  cf.br ^bb25(%c0 : index)
^bb25(%34: index):  // 2 preds: ^bb24, ^bb26
  %35 = arith.cmpi slt, %34, %8 : index
  cf.cond_br %35, ^bb26, ^bb27
^bb26:  // pred: ^bb25
  memref.store %cst, %alloc_16[%34] : memref<?xf64>
  %36 = arith.addi %34, %c1 : index
  cf.br ^bb25(%36 : index)
^bb27:  // pred: ^bb25
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %alloc_18 = memref.alloc() : memref<13xindex>
  %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
  call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %37 = memref.load %alloc_18[%c0] : memref<13xindex>
  %38 = memref.load %alloc_18[%c1] : memref<13xindex>
  %39 = memref.load %alloc_18[%c2] : memref<13xindex>
  %40 = memref.load %alloc_18[%c3] : memref<13xindex>
  %41 = memref.load %alloc_18[%c4] : memref<13xindex>
  %42 = memref.load %alloc_18[%c5] : memref<13xindex>
  %43 = memref.load %alloc_18[%c6] : memref<13xindex>
  %44 = memref.load %alloc_18[%c7] : memref<13xindex>
  %45 = memref.load %alloc_18[%c8] : memref<13xindex>
  %46 = memref.load %alloc_18[%c10] : memref<13xindex>
  %alloc_20 = memref.alloc(%37) : memref<?xi64>
  cf.br ^bb28(%c0 : index)
^bb28(%47: index):  // 2 preds: ^bb27, ^bb29
  %48 = arith.cmpi slt, %47, %37 : index
  cf.cond_br %48, ^bb29, ^bb30
^bb29:  // pred: ^bb28
  memref.store %c0_i64, %alloc_20[%47] : memref<?xi64>
  %49 = arith.addi %47, %c1 : index
  cf.br ^bb28(%49 : index)
^bb30:  // pred: ^bb28
  %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
  %alloc_22 = memref.alloc(%38) : memref<?xi64>
  cf.br ^bb31(%c0 : index)
^bb31(%50: index):  // 2 preds: ^bb30, ^bb32
  %51 = arith.cmpi slt, %50, %38 : index
  cf.cond_br %51, ^bb32, ^bb33
^bb32:  // pred: ^bb31
  memref.store %c0_i64, %alloc_22[%50] : memref<?xi64>
  %52 = arith.addi %50, %c1 : index
  cf.br ^bb31(%52 : index)
^bb33:  // pred: ^bb31
  %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
  %alloc_24 = memref.alloc(%39) : memref<?xi64>
  cf.br ^bb34(%c0 : index)
^bb34(%53: index):  // 2 preds: ^bb33, ^bb35
  %54 = arith.cmpi slt, %53, %39 : index
  cf.cond_br %54, ^bb35, ^bb36
^bb35:  // pred: ^bb34
  memref.store %c0_i64, %alloc_24[%53] : memref<?xi64>
  %55 = arith.addi %53, %c1 : index
  cf.br ^bb34(%55 : index)
^bb36:  // pred: ^bb34
  %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
  %alloc_26 = memref.alloc(%40) : memref<?xi64>
  cf.br ^bb37(%c0 : index)
^bb37(%56: index):  // 2 preds: ^bb36, ^bb38
  %57 = arith.cmpi slt, %56, %40 : index
  cf.cond_br %57, ^bb38, ^bb39
^bb38:  // pred: ^bb37
  memref.store %c0_i64, %alloc_26[%56] : memref<?xi64>
  %58 = arith.addi %56, %c1 : index
  cf.br ^bb37(%58 : index)
^bb39:  // pred: ^bb37
  %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
  %alloc_28 = memref.alloc(%41) : memref<?xi64>
  cf.br ^bb40(%c0 : index)
^bb40(%59: index):  // 2 preds: ^bb39, ^bb41
  %60 = arith.cmpi slt, %59, %41 : index
  cf.cond_br %60, ^bb41, ^bb42
^bb41:  // pred: ^bb40
  memref.store %c0_i64, %alloc_28[%59] : memref<?xi64>
  %61 = arith.addi %59, %c1 : index
  cf.br ^bb40(%61 : index)
^bb42:  // pred: ^bb40
  %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
  %alloc_30 = memref.alloc(%42) : memref<?xi64>
  cf.br ^bb43(%c0 : index)
^bb43(%62: index):  // 2 preds: ^bb42, ^bb44
  %63 = arith.cmpi slt, %62, %42 : index
  cf.cond_br %63, ^bb44, ^bb45
^bb44:  // pred: ^bb43
  memref.store %c0_i64, %alloc_30[%62] : memref<?xi64>
  %64 = arith.addi %62, %c1 : index
  cf.br ^bb43(%64 : index)
^bb45:  // pred: ^bb43
  %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
  %alloc_32 = memref.alloc(%43) : memref<?xi64>
  cf.br ^bb46(%c0 : index)
^bb46(%65: index):  // 2 preds: ^bb45, ^bb47
  %66 = arith.cmpi slt, %65, %43 : index
  cf.cond_br %66, ^bb47, ^bb48
^bb47:  // pred: ^bb46
  memref.store %c0_i64, %alloc_32[%65] : memref<?xi64>
  %67 = arith.addi %65, %c1 : index
  cf.br ^bb46(%67 : index)
^bb48:  // pred: ^bb46
  %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
  %alloc_34 = memref.alloc(%44) : memref<?xi64>
  cf.br ^bb49(%c0 : index)
^bb49(%68: index):  // 2 preds: ^bb48, ^bb50
  %69 = arith.cmpi slt, %68, %44 : index
  cf.cond_br %69, ^bb50, ^bb51
^bb50:  // pred: ^bb49
  memref.store %c0_i64, %alloc_34[%68] : memref<?xi64>
  %70 = arith.addi %68, %c1 : index
  cf.br ^bb49(%70 : index)
^bb51:  // pred: ^bb49
  %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
  %alloc_36 = memref.alloc(%45) : memref<?xf64>
  cf.br ^bb52(%c0 : index)
^bb52(%71: index):  // 2 preds: ^bb51, ^bb53
  %72 = arith.cmpi slt, %71, %45 : index
  cf.cond_br %72, ^bb53, ^bb54
^bb53:  // pred: ^bb52
  memref.store %cst, %alloc_36[%71] : memref<?xf64>
  %73 = arith.addi %71, %c1 : index
  cf.br ^bb52(%73 : index)
^bb54:  // pred: ^bb52
  %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
  %74 = index.add %9, %idx1
  %alloc_38 = memref.alloc(%74) : memref<?xi64>
  memref.store %c0_i64, %alloc_38[%idx0] : memref<?xi64>
  %alloc_39 = memref.alloc(%46) : memref<?xi64>
  cf.br ^bb55(%c0, %idx0, %idx0 : index, index, index)
^bb55(%75: index, %76: index, %77: index):  // 2 preds: ^bb54, ^bb64
  %78 = arith.cmpi slt, %75, %9 : index
  cf.cond_br %78, ^bb56, ^bb65
^bb56:  // pred: ^bb55
  %79 = arith.addi %75, %c1 : index
  %80 = memref.load %alloc_8[%75] : memref<?xi64>
  %81 = arith.index_cast %80 : i64 to index
  %82 = memref.load %alloc_8[%79] : memref<?xi64>
  %83 = arith.index_cast %82 : i64 to index
  cf.br ^bb57(%81, %77 : index, index)
^bb57(%84: index, %85: index):  // 2 preds: ^bb56, ^bb63
  %86 = arith.cmpi slt, %84, %83 : index
  cf.cond_br %86, ^bb58, ^bb64
^bb58:  // pred: ^bb57
  %87 = memref.load %alloc_10[%84] : memref<?xi64>
  %88 = arith.index_cast %87 : i64 to index
  %89 = arith.addi %88, %c1 : index
  %90 = memref.load %alloc_28[%88] : memref<?xi64>
  %91 = arith.index_cast %90 : i64 to index
  %92 = memref.load %alloc_28[%89] : memref<?xi64>
  %93 = arith.index_cast %92 : i64 to index
  cf.br ^bb59(%91, %85 : index, index)
^bb59(%94: index, %95: index):  // 2 preds: ^bb58, ^bb62
  %96 = arith.cmpi slt, %94, %93 : index
  cf.cond_br %96, ^bb60, ^bb63
^bb60:  // pred: ^bb59
  %97 = memref.load %alloc_30[%94] : memref<?xi64>
  %98 = arith.index_cast %97 : i64 to index
  %99 = index.add %76, %idx1
  %100 = arith.index_cast %99 : index to i64
  %101 = memref.load %alloc_39[%98] : memref<?xi64>
  %102 = arith.cmpi eq, %100, %101 : i64
  cf.cond_br %102, ^bb62(%95 : index), ^bb61
^bb61:  // pred: ^bb60
  memref.store %100, %alloc_39[%98] : memref<?xi64>
  %103 = index.add %95, %idx1
  cf.br ^bb62(%103 : index)
^bb62(%104: index):  // 2 preds: ^bb60, ^bb61
  %105 = arith.addi %94, %c1 : index
  cf.br ^bb59(%105, %104 : index, index)
^bb63:  // pred: ^bb59
  %106 = arith.addi %84, %c1 : index
  cf.br ^bb57(%106, %95 : index, index)
^bb64:  // pred: ^bb57
  %107 = index.add %76, %idx1
  %108 = arith.index_cast %85 : index to i64
  memref.store %108, %alloc_38[%107] : memref<?xi64>
  cf.br ^bb55(%79, %107, %85 : index, index, index)
^bb65:  // pred: ^bb55
  %109 = arith.index_cast %9 : index to i64
  %alloc_40 = memref.alloc() : memref<1xi64>
  memref.store %109, %alloc_40[%idx0] : memref<1xi64>
  %alloc_41 = memref.alloc(%77) : memref<?xi64>
  %alloc_42 = memref.alloc(%77) : memref<?xf64>
  cf.br ^bb66(%idx0 : index)
^bb66(%110: index):  // 2 preds: ^bb65, ^bb67
  %111 = arith.cmpi slt, %110, %77 : index
  cf.cond_br %111, ^bb67, ^bb68
^bb67:  // pred: ^bb66
  memref.store %cst, %alloc_42[%110] : memref<?xf64>
  %112 = arith.addi %110, %idx1 : index
  cf.br ^bb66(%112 : index)
^bb68:  // pred: ^bb66
  %alloc_43 = memref.alloc(%46) {alignment = 64 : i64} : memref<?xf64>
  %alloc_44 = memref.alloc(%46) {alignment = 64 : i64} : memref<?xi32>
  %alloc_45 = memref.alloc(%46) {alignment = 64 : i64} : memref<?xi64>
  cf.br ^bb69(%c0, %idx0, %c1_i32 : index, index, i32)
^bb69(%113: index, %114: index, %115: i32):  // 2 preds: ^bb68, ^bb84
  %116 = arith.cmpi slt, %113, %9 : index
  cf.cond_br %116, ^bb70, ^bb85
^bb70:  // pred: ^bb69
  %117 = arith.addi %115, %c1_i32 : i32
  %118 = arith.addi %113, %c1 : index
  %119 = memref.load %alloc_8[%113] : memref<?xi64>
  %120 = arith.index_cast %119 : i64 to index
  %121 = memref.load %alloc_8[%118] : memref<?xi64>
  %122 = arith.index_cast %121 : i64 to index
  cf.br ^bb71(%120, %idx0 : index, index)
^bb71(%123: index, %124: index):  // 2 preds: ^bb70, ^bb79
  %125 = arith.cmpi slt, %123, %122 : index
  cf.cond_br %125, ^bb72, ^bb80(%c0, %114 : index, index)
^bb72:  // pred: ^bb71
  %126 = memref.load %alloc_10[%123] : memref<?xi64>
  %127 = arith.index_cast %126 : i64 to index
  %128 = arith.addi %127, %c1 : index
  %129 = memref.load %alloc_28[%127] : memref<?xi64>
  %130 = arith.index_cast %129 : i64 to index
  %131 = memref.load %alloc_28[%128] : memref<?xi64>
  %132 = arith.index_cast %131 : i64 to index
  cf.br ^bb73(%130, %124 : index, index)
^bb73(%133: index, %134: index):  // 2 preds: ^bb72, ^bb78
  %135 = arith.cmpi slt, %133, %132 : index
  cf.cond_br %135, ^bb74, ^bb79
^bb74:  // pred: ^bb73
  %136 = memref.load %alloc_30[%133] : memref<?xi64>
  %137 = arith.index_cast %136 : i64 to index
  %138 = memref.load %alloc_16[%123] : memref<?xf64>
  %139 = memref.load %alloc_36[%133] : memref<?xf64>
  %140 = arith.mulf %138, %139 : f64
  %141 = memref.load %alloc_44[%137] : memref<?xi32>
  %142 = arith.cmpi eq, %141, %117 : i32
  cf.cond_br %142, ^bb75, ^bb76(%cst : f64)
^bb75:  // pred: ^bb74
  %143 = memref.load %alloc_43[%137] : memref<?xf64>
  cf.br ^bb76(%143 : f64)
^bb76(%144: f64):  // 2 preds: ^bb74, ^bb75
  %145 = arith.addf %144, %140 : f64
  %146 = arith.cmpi ne, %141, %117 : i32
  cf.cond_br %146, ^bb77, ^bb78(%134 : index)
^bb77:  // pred: ^bb76
  memref.store %117, %alloc_44[%137] : memref<?xi32>
  memref.store %136, %alloc_45[%134] : memref<?xi64>
  %147 = index.add %134, %idx1
  cf.br ^bb78(%147 : index)
^bb78(%148: index):  // 2 preds: ^bb76, ^bb77
  memref.store %145, %alloc_43[%137] : memref<?xf64>
  %149 = arith.addi %133, %c1 : index
  cf.br ^bb73(%149, %148 : index, index)
^bb79:  // pred: ^bb73
  %150 = arith.addi %123, %c1 : index
  cf.br ^bb71(%150, %134 : index, index)
^bb80(%151: index, %152: index):  // 2 preds: ^bb71, ^bb83
  %153 = arith.cmpi slt, %151, %124 : index
  cf.cond_br %153, ^bb81, ^bb84
^bb81:  // pred: ^bb80
  %154 = memref.load %alloc_45[%151] : memref<?xi64>
  %155 = arith.index_cast %154 : i64 to index
  %156 = memref.load %alloc_44[%155] : memref<?xi32>
  %157 = arith.cmpi eq, %156, %117 : i32
  cf.cond_br %157, ^bb82, ^bb83(%cst : f64)
^bb82:  // pred: ^bb81
  %158 = memref.load %alloc_43[%155] : memref<?xf64>
  cf.br ^bb83(%158 : f64)
^bb83(%159: f64):  // 2 preds: ^bb81, ^bb82
  memref.store %154, %alloc_41[%152] : memref<?xi64>
  %160 = index.add %152, %idx1
  memref.store %159, %alloc_42[%152] : memref<?xf64>
  %161 = arith.addi %151, %c1 : index
  cf.br ^bb80(%161, %160 : index, index)
^bb84:  // pred: ^bb80
  cf.br ^bb69(%118, %152, %117 : index, index, i32)
^bb85:  // pred: ^bb69
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

// -----// IR Dump After ExpandStridedMetadata (expand-strided-metadata) //----- //
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
    cf.br ^bb1(%c0 : index)
  ^bb1(%10: index):  // 2 preds: ^bb0, ^bb2
    %11 = arith.cmpi slt, %10, %0 : index
    cf.cond_br %11, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    memref.store %c0_i64, %alloc_0[%10] : memref<?xi64>
    %12 = arith.addi %10, %c1 : index
    cf.br ^bb1(%12 : index)
  ^bb3:  // pred: ^bb1
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    cf.br ^bb4(%c0 : index)
  ^bb4(%13: index):  // 2 preds: ^bb3, ^bb5
    %14 = arith.cmpi slt, %13, %1 : index
    cf.cond_br %14, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %c0_i64, %alloc_2[%13] : memref<?xi64>
    %15 = arith.addi %13, %c1 : index
    cf.br ^bb4(%15 : index)
  ^bb6:  // pred: ^bb4
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%16: index):  // 2 preds: ^bb6, ^bb8
    %17 = arith.cmpi slt, %16, %2 : index
    cf.cond_br %17, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %c0_i64, %alloc_4[%16] : memref<?xi64>
    %18 = arith.addi %16, %c1 : index
    cf.br ^bb7(%18 : index)
  ^bb9:  // pred: ^bb7
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    cf.br ^bb10(%c0 : index)
  ^bb10(%19: index):  // 2 preds: ^bb9, ^bb11
    %20 = arith.cmpi slt, %19, %3 : index
    cf.cond_br %20, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %c0_i64, %alloc_6[%19] : memref<?xi64>
    %21 = arith.addi %19, %c1 : index
    cf.br ^bb10(%21 : index)
  ^bb12:  // pred: ^bb10
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%22: index):  // 2 preds: ^bb12, ^bb14
    %23 = arith.cmpi slt, %22, %4 : index
    cf.cond_br %23, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %c0_i64, %alloc_8[%22] : memref<?xi64>
    %24 = arith.addi %22, %c1 : index
    cf.br ^bb13(%24 : index)
  ^bb15:  // pred: ^bb13
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    cf.br ^bb16(%c0 : index)
  ^bb16(%25: index):  // 2 preds: ^bb15, ^bb17
    %26 = arith.cmpi slt, %25, %5 : index
    cf.cond_br %26, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    memref.store %c0_i64, %alloc_10[%25] : memref<?xi64>
    %27 = arith.addi %25, %c1 : index
    cf.br ^bb16(%27 : index)
  ^bb18:  // pred: ^bb16
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%28: index):  // 2 preds: ^bb18, ^bb20
    %29 = arith.cmpi slt, %28, %6 : index
    cf.cond_br %29, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %c0_i64, %alloc_12[%28] : memref<?xi64>
    %30 = arith.addi %28, %c1 : index
    cf.br ^bb19(%30 : index)
  ^bb21:  // pred: ^bb19
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    cf.br ^bb22(%c0 : index)
  ^bb22(%31: index):  // 2 preds: ^bb21, ^bb23
    %32 = arith.cmpi slt, %31, %7 : index
    cf.cond_br %32, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    memref.store %c0_i64, %alloc_14[%31] : memref<?xi64>
    %33 = arith.addi %31, %c1 : index
    cf.br ^bb22(%33 : index)
  ^bb24:  // pred: ^bb22
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%34: index):  // 2 preds: ^bb24, ^bb26
    %35 = arith.cmpi slt, %34, %8 : index
    cf.cond_br %35, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    memref.store %cst, %alloc_16[%34] : memref<?xf64>
    %36 = arith.addi %34, %c1 : index
    cf.br ^bb25(%36 : index)
  ^bb27:  // pred: ^bb25
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %37 = memref.load %alloc_18[%c0] : memref<13xindex>
    %38 = memref.load %alloc_18[%c1] : memref<13xindex>
    %39 = memref.load %alloc_18[%c2] : memref<13xindex>
    %40 = memref.load %alloc_18[%c3] : memref<13xindex>
    %41 = memref.load %alloc_18[%c4] : memref<13xindex>
    %42 = memref.load %alloc_18[%c5] : memref<13xindex>
    %43 = memref.load %alloc_18[%c6] : memref<13xindex>
    %44 = memref.load %alloc_18[%c7] : memref<13xindex>
    %45 = memref.load %alloc_18[%c8] : memref<13xindex>
    %46 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%37) : memref<?xi64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%47: index):  // 2 preds: ^bb27, ^bb29
    %48 = arith.cmpi slt, %47, %37 : index
    cf.cond_br %48, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    memref.store %c0_i64, %alloc_20[%47] : memref<?xi64>
    %49 = arith.addi %47, %c1 : index
    cf.br ^bb28(%49 : index)
  ^bb30:  // pred: ^bb28
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%38) : memref<?xi64>
    cf.br ^bb31(%c0 : index)
  ^bb31(%50: index):  // 2 preds: ^bb30, ^bb32
    %51 = arith.cmpi slt, %50, %38 : index
    cf.cond_br %51, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    memref.store %c0_i64, %alloc_22[%50] : memref<?xi64>
    %52 = arith.addi %50, %c1 : index
    cf.br ^bb31(%52 : index)
  ^bb33:  // pred: ^bb31
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%39) : memref<?xi64>
    cf.br ^bb34(%c0 : index)
  ^bb34(%53: index):  // 2 preds: ^bb33, ^bb35
    %54 = arith.cmpi slt, %53, %39 : index
    cf.cond_br %54, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    memref.store %c0_i64, %alloc_24[%53] : memref<?xi64>
    %55 = arith.addi %53, %c1 : index
    cf.br ^bb34(%55 : index)
  ^bb36:  // pred: ^bb34
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%40) : memref<?xi64>
    cf.br ^bb37(%c0 : index)
  ^bb37(%56: index):  // 2 preds: ^bb36, ^bb38
    %57 = arith.cmpi slt, %56, %40 : index
    cf.cond_br %57, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    memref.store %c0_i64, %alloc_26[%56] : memref<?xi64>
    %58 = arith.addi %56, %c1 : index
    cf.br ^bb37(%58 : index)
  ^bb39:  // pred: ^bb37
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%41) : memref<?xi64>
    cf.br ^bb40(%c0 : index)
  ^bb40(%59: index):  // 2 preds: ^bb39, ^bb41
    %60 = arith.cmpi slt, %59, %41 : index
    cf.cond_br %60, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    memref.store %c0_i64, %alloc_28[%59] : memref<?xi64>
    %61 = arith.addi %59, %c1 : index
    cf.br ^bb40(%61 : index)
  ^bb42:  // pred: ^bb40
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%42) : memref<?xi64>
    cf.br ^bb43(%c0 : index)
  ^bb43(%62: index):  // 2 preds: ^bb42, ^bb44
    %63 = arith.cmpi slt, %62, %42 : index
    cf.cond_br %63, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    memref.store %c0_i64, %alloc_30[%62] : memref<?xi64>
    %64 = arith.addi %62, %c1 : index
    cf.br ^bb43(%64 : index)
  ^bb45:  // pred: ^bb43
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%43) : memref<?xi64>
    cf.br ^bb46(%c0 : index)
  ^bb46(%65: index):  // 2 preds: ^bb45, ^bb47
    %66 = arith.cmpi slt, %65, %43 : index
    cf.cond_br %66, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    memref.store %c0_i64, %alloc_32[%65] : memref<?xi64>
    %67 = arith.addi %65, %c1 : index
    cf.br ^bb46(%67 : index)
  ^bb48:  // pred: ^bb46
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%44) : memref<?xi64>
    cf.br ^bb49(%c0 : index)
  ^bb49(%68: index):  // 2 preds: ^bb48, ^bb50
    %69 = arith.cmpi slt, %68, %44 : index
    cf.cond_br %69, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    memref.store %c0_i64, %alloc_34[%68] : memref<?xi64>
    %70 = arith.addi %68, %c1 : index
    cf.br ^bb49(%70 : index)
  ^bb51:  // pred: ^bb49
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%45) : memref<?xf64>
    cf.br ^bb52(%c0 : index)
  ^bb52(%71: index):  // 2 preds: ^bb51, ^bb53
    %72 = arith.cmpi slt, %71, %45 : index
    cf.cond_br %72, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    memref.store %cst, %alloc_36[%71] : memref<?xf64>
    %73 = arith.addi %71, %c1 : index
    cf.br ^bb52(%73 : index)
  ^bb54:  // pred: ^bb52
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %74 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%74) : memref<?xi64>
    memref.store %c0_i64, %alloc_38[%idx0] : memref<?xi64>
    %alloc_39 = memref.alloc(%46) : memref<?xi64>
    cf.br ^bb55(%c0, %idx0, %idx0 : index, index, index)
  ^bb55(%75: index, %76: index, %77: index):  // 2 preds: ^bb54, ^bb64
    %78 = arith.cmpi slt, %75, %9 : index
    cf.cond_br %78, ^bb56, ^bb65
  ^bb56:  // pred: ^bb55
    %79 = arith.addi %75, %c1 : index
    %80 = memref.load %alloc_8[%75] : memref<?xi64>
    %81 = arith.index_cast %80 : i64 to index
    %82 = memref.load %alloc_8[%79] : memref<?xi64>
    %83 = arith.index_cast %82 : i64 to index
    cf.br ^bb57(%81, %77 : index, index)
  ^bb57(%84: index, %85: index):  // 2 preds: ^bb56, ^bb63
    %86 = arith.cmpi slt, %84, %83 : index
    cf.cond_br %86, ^bb58, ^bb64
  ^bb58:  // pred: ^bb57
    %87 = memref.load %alloc_10[%84] : memref<?xi64>
    %88 = arith.index_cast %87 : i64 to index
    %89 = arith.addi %88, %c1 : index
    %90 = memref.load %alloc_28[%88] : memref<?xi64>
    %91 = arith.index_cast %90 : i64 to index
    %92 = memref.load %alloc_28[%89] : memref<?xi64>
    %93 = arith.index_cast %92 : i64 to index
    cf.br ^bb59(%91, %85 : index, index)
  ^bb59(%94: index, %95: index):  // 2 preds: ^bb58, ^bb62
    %96 = arith.cmpi slt, %94, %93 : index
    cf.cond_br %96, ^bb60, ^bb63
  ^bb60:  // pred: ^bb59
    %97 = memref.load %alloc_30[%94] : memref<?xi64>
    %98 = arith.index_cast %97 : i64 to index
    %99 = index.add %76, %idx1
    %100 = arith.index_cast %99 : index to i64
    %101 = memref.load %alloc_39[%98] : memref<?xi64>
    %102 = arith.cmpi eq, %100, %101 : i64
    cf.cond_br %102, ^bb62(%95 : index), ^bb61
  ^bb61:  // pred: ^bb60
    memref.store %100, %alloc_39[%98] : memref<?xi64>
    %103 = index.add %95, %idx1
    cf.br ^bb62(%103 : index)
  ^bb62(%104: index):  // 2 preds: ^bb60, ^bb61
    %105 = arith.addi %94, %c1 : index
    cf.br ^bb59(%105, %104 : index, index)
  ^bb63:  // pred: ^bb59
    %106 = arith.addi %84, %c1 : index
    cf.br ^bb57(%106, %95 : index, index)
  ^bb64:  // pred: ^bb57
    %107 = index.add %76, %idx1
    %108 = arith.index_cast %85 : index to i64
    memref.store %108, %alloc_38[%107] : memref<?xi64>
    cf.br ^bb55(%79, %107, %85 : index, index, index)
  ^bb65:  // pred: ^bb55
    %109 = arith.index_cast %9 : index to i64
    %alloc_40 = memref.alloc() : memref<1xi64>
    memref.store %109, %alloc_40[%idx0] : memref<1xi64>
    %alloc_41 = memref.alloc(%77) : memref<?xi64>
    %alloc_42 = memref.alloc(%77) : memref<?xf64>
    cf.br ^bb66(%idx0 : index)
  ^bb66(%110: index):  // 2 preds: ^bb65, ^bb67
    %111 = arith.cmpi slt, %110, %77 : index
    cf.cond_br %111, ^bb67, ^bb68
  ^bb67:  // pred: ^bb66
    memref.store %cst, %alloc_42[%110] : memref<?xf64>
    %112 = arith.addi %110, %idx1 : index
    cf.br ^bb66(%112 : index)
  ^bb68:  // pred: ^bb66
    %alloc_43 = memref.alloc(%46) {alignment = 64 : i64} : memref<?xf64>
    %alloc_44 = memref.alloc(%46) {alignment = 64 : i64} : memref<?xi32>
    %alloc_45 = memref.alloc(%46) {alignment = 64 : i64} : memref<?xi64>
    cf.br ^bb69(%c0, %idx0, %c1_i32 : index, index, i32)
  ^bb69(%113: index, %114: index, %115: i32):  // 2 preds: ^bb68, ^bb84
    %116 = arith.cmpi slt, %113, %9 : index
    cf.cond_br %116, ^bb70, ^bb85
  ^bb70:  // pred: ^bb69
    %117 = arith.addi %115, %c1_i32 : i32
    %118 = arith.addi %113, %c1 : index
    %119 = memref.load %alloc_8[%113] : memref<?xi64>
    %120 = arith.index_cast %119 : i64 to index
    %121 = memref.load %alloc_8[%118] : memref<?xi64>
    %122 = arith.index_cast %121 : i64 to index
    cf.br ^bb71(%120, %idx0 : index, index)
  ^bb71(%123: index, %124: index):  // 2 preds: ^bb70, ^bb79
    %125 = arith.cmpi slt, %123, %122 : index
    cf.cond_br %125, ^bb72, ^bb80(%c0, %114 : index, index)
  ^bb72:  // pred: ^bb71
    %126 = memref.load %alloc_10[%123] : memref<?xi64>
    %127 = arith.index_cast %126 : i64 to index
    %128 = arith.addi %127, %c1 : index
    %129 = memref.load %alloc_28[%127] : memref<?xi64>
    %130 = arith.index_cast %129 : i64 to index
    %131 = memref.load %alloc_28[%128] : memref<?xi64>
    %132 = arith.index_cast %131 : i64 to index
    cf.br ^bb73(%130, %124 : index, index)
  ^bb73(%133: index, %134: index):  // 2 preds: ^bb72, ^bb78
    %135 = arith.cmpi slt, %133, %132 : index
    cf.cond_br %135, ^bb74, ^bb79
  ^bb74:  // pred: ^bb73
    %136 = memref.load %alloc_30[%133] : memref<?xi64>
    %137 = arith.index_cast %136 : i64 to index
    %138 = memref.load %alloc_16[%123] : memref<?xf64>
    %139 = memref.load %alloc_36[%133] : memref<?xf64>
    %140 = arith.mulf %138, %139 : f64
    %141 = memref.load %alloc_44[%137] : memref<?xi32>
    %142 = arith.cmpi eq, %141, %117 : i32
    cf.cond_br %142, ^bb75, ^bb76(%cst : f64)
  ^bb75:  // pred: ^bb74
    %143 = memref.load %alloc_43[%137] : memref<?xf64>
    cf.br ^bb76(%143 : f64)
  ^bb76(%144: f64):  // 2 preds: ^bb74, ^bb75
    %145 = arith.addf %144, %140 : f64
    %146 = arith.cmpi ne, %141, %117 : i32
    cf.cond_br %146, ^bb77, ^bb78(%134 : index)
  ^bb77:  // pred: ^bb76
    memref.store %117, %alloc_44[%137] : memref<?xi32>
    memref.store %136, %alloc_45[%134] : memref<?xi64>
    %147 = index.add %134, %idx1
    cf.br ^bb78(%147 : index)
  ^bb78(%148: index):  // 2 preds: ^bb76, ^bb77
    memref.store %145, %alloc_43[%137] : memref<?xf64>
    %149 = arith.addi %133, %c1 : index
    cf.br ^bb73(%149, %148 : index, index)
  ^bb79:  // pred: ^bb73
    %150 = arith.addi %123, %c1 : index
    cf.br ^bb71(%150, %134 : index, index)
  ^bb80(%151: index, %152: index):  // 2 preds: ^bb71, ^bb83
    %153 = arith.cmpi slt, %151, %124 : index
    cf.cond_br %153, ^bb81, ^bb84
  ^bb81:  // pred: ^bb80
    %154 = memref.load %alloc_45[%151] : memref<?xi64>
    %155 = arith.index_cast %154 : i64 to index
    %156 = memref.load %alloc_44[%155] : memref<?xi32>
    %157 = arith.cmpi eq, %156, %117 : i32
    cf.cond_br %157, ^bb82, ^bb83(%cst : f64)
  ^bb82:  // pred: ^bb81
    %158 = memref.load %alloc_43[%155] : memref<?xf64>
    cf.br ^bb83(%158 : f64)
  ^bb83(%159: f64):  // 2 preds: ^bb81, ^bb82
    memref.store %154, %alloc_41[%152] : memref<?xi64>
    %160 = index.add %152, %idx1
    memref.store %159, %alloc_42[%152] : memref<?xf64>
    %161 = arith.addi %151, %c1 : index
    cf.br ^bb80(%161, %160 : index, index)
  ^bb84:  // pred: ^bb80
    cf.br ^bb69(%118, %152, %117 : index, index, i32)
  ^bb85:  // pred: ^bb69
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


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
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
    cf.br ^bb1(%c0 : index)
  ^bb1(%10: index):  // 2 preds: ^bb0, ^bb2
    %11 = arith.cmpi slt, %10, %0 : index
    cf.cond_br %11, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    memref.store %c0_i64, %alloc_0[%10] : memref<?xi64>
    %12 = arith.addi %10, %c1 : index
    cf.br ^bb1(%12 : index)
  ^bb3:  // pred: ^bb1
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    cf.br ^bb4(%c0 : index)
  ^bb4(%13: index):  // 2 preds: ^bb3, ^bb5
    %14 = arith.cmpi slt, %13, %1 : index
    cf.cond_br %14, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %c0_i64, %alloc_2[%13] : memref<?xi64>
    %15 = arith.addi %13, %c1 : index
    cf.br ^bb4(%15 : index)
  ^bb6:  // pred: ^bb4
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    cf.br ^bb7(%c0 : index)
  ^bb7(%16: index):  // 2 preds: ^bb6, ^bb8
    %17 = arith.cmpi slt, %16, %2 : index
    cf.cond_br %17, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %c0_i64, %alloc_4[%16] : memref<?xi64>
    %18 = arith.addi %16, %c1 : index
    cf.br ^bb7(%18 : index)
  ^bb9:  // pred: ^bb7
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    cf.br ^bb10(%c0 : index)
  ^bb10(%19: index):  // 2 preds: ^bb9, ^bb11
    %20 = arith.cmpi slt, %19, %3 : index
    cf.cond_br %20, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %c0_i64, %alloc_6[%19] : memref<?xi64>
    %21 = arith.addi %19, %c1 : index
    cf.br ^bb10(%21 : index)
  ^bb12:  // pred: ^bb10
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    cf.br ^bb13(%c0 : index)
  ^bb13(%22: index):  // 2 preds: ^bb12, ^bb14
    %23 = arith.cmpi slt, %22, %4 : index
    cf.cond_br %23, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %c0_i64, %alloc_8[%22] : memref<?xi64>
    %24 = arith.addi %22, %c1 : index
    cf.br ^bb13(%24 : index)
  ^bb15:  // pred: ^bb13
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    cf.br ^bb16(%c0 : index)
  ^bb16(%25: index):  // 2 preds: ^bb15, ^bb17
    %26 = arith.cmpi slt, %25, %5 : index
    cf.cond_br %26, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    memref.store %c0_i64, %alloc_10[%25] : memref<?xi64>
    %27 = arith.addi %25, %c1 : index
    cf.br ^bb16(%27 : index)
  ^bb18:  // pred: ^bb16
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    cf.br ^bb19(%c0 : index)
  ^bb19(%28: index):  // 2 preds: ^bb18, ^bb20
    %29 = arith.cmpi slt, %28, %6 : index
    cf.cond_br %29, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %c0_i64, %alloc_12[%28] : memref<?xi64>
    %30 = arith.addi %28, %c1 : index
    cf.br ^bb19(%30 : index)
  ^bb21:  // pred: ^bb19
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    cf.br ^bb22(%c0 : index)
  ^bb22(%31: index):  // 2 preds: ^bb21, ^bb23
    %32 = arith.cmpi slt, %31, %7 : index
    cf.cond_br %32, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    memref.store %c0_i64, %alloc_14[%31] : memref<?xi64>
    %33 = arith.addi %31, %c1 : index
    cf.br ^bb22(%33 : index)
  ^bb24:  // pred: ^bb22
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%34: index):  // 2 preds: ^bb24, ^bb26
    %35 = arith.cmpi slt, %34, %8 : index
    cf.cond_br %35, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    memref.store %cst, %alloc_16[%34] : memref<?xf64>
    %36 = arith.addi %34, %c1 : index
    cf.br ^bb25(%36 : index)
  ^bb27:  // pred: ^bb25
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_18 = memref.alloc() : memref<13xindex>
    %cast_19 = memref.cast %alloc_18 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %37 = memref.load %alloc_18[%c0] : memref<13xindex>
    %38 = memref.load %alloc_18[%c1] : memref<13xindex>
    %39 = memref.load %alloc_18[%c2] : memref<13xindex>
    %40 = memref.load %alloc_18[%c3] : memref<13xindex>
    %41 = memref.load %alloc_18[%c4] : memref<13xindex>
    %42 = memref.load %alloc_18[%c5] : memref<13xindex>
    %43 = memref.load %alloc_18[%c6] : memref<13xindex>
    %44 = memref.load %alloc_18[%c7] : memref<13xindex>
    %45 = memref.load %alloc_18[%c8] : memref<13xindex>
    %46 = memref.load %alloc_18[%c10] : memref<13xindex>
    %alloc_20 = memref.alloc(%37) : memref<?xi64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%47: index):  // 2 preds: ^bb27, ^bb29
    %48 = arith.cmpi slt, %47, %37 : index
    cf.cond_br %48, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    memref.store %c0_i64, %alloc_20[%47] : memref<?xi64>
    %49 = arith.addi %47, %c1 : index
    cf.br ^bb28(%49 : index)
  ^bb30:  // pred: ^bb28
    %cast_21 = memref.cast %alloc_20 : memref<?xi64> to memref<*xi64>
    %alloc_22 = memref.alloc(%38) : memref<?xi64>
    cf.br ^bb31(%c0 : index)
  ^bb31(%50: index):  // 2 preds: ^bb30, ^bb32
    %51 = arith.cmpi slt, %50, %38 : index
    cf.cond_br %51, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    memref.store %c0_i64, %alloc_22[%50] : memref<?xi64>
    %52 = arith.addi %50, %c1 : index
    cf.br ^bb31(%52 : index)
  ^bb33:  // pred: ^bb31
    %cast_23 = memref.cast %alloc_22 : memref<?xi64> to memref<*xi64>
    %alloc_24 = memref.alloc(%39) : memref<?xi64>
    cf.br ^bb34(%c0 : index)
  ^bb34(%53: index):  // 2 preds: ^bb33, ^bb35
    %54 = arith.cmpi slt, %53, %39 : index
    cf.cond_br %54, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    memref.store %c0_i64, %alloc_24[%53] : memref<?xi64>
    %55 = arith.addi %53, %c1 : index
    cf.br ^bb34(%55 : index)
  ^bb36:  // pred: ^bb34
    %cast_25 = memref.cast %alloc_24 : memref<?xi64> to memref<*xi64>
    %alloc_26 = memref.alloc(%40) : memref<?xi64>
    cf.br ^bb37(%c0 : index)
  ^bb37(%56: index):  // 2 preds: ^bb36, ^bb38
    %57 = arith.cmpi slt, %56, %40 : index
    cf.cond_br %57, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    memref.store %c0_i64, %alloc_26[%56] : memref<?xi64>
    %58 = arith.addi %56, %c1 : index
    cf.br ^bb37(%58 : index)
  ^bb39:  // pred: ^bb37
    %cast_27 = memref.cast %alloc_26 : memref<?xi64> to memref<*xi64>
    %alloc_28 = memref.alloc(%41) : memref<?xi64>
    cf.br ^bb40(%c0 : index)
  ^bb40(%59: index):  // 2 preds: ^bb39, ^bb41
    %60 = arith.cmpi slt, %59, %41 : index
    cf.cond_br %60, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    memref.store %c0_i64, %alloc_28[%59] : memref<?xi64>
    %61 = arith.addi %59, %c1 : index
    cf.br ^bb40(%61 : index)
  ^bb42:  // pred: ^bb40
    %cast_29 = memref.cast %alloc_28 : memref<?xi64> to memref<*xi64>
    %alloc_30 = memref.alloc(%42) : memref<?xi64>
    cf.br ^bb43(%c0 : index)
  ^bb43(%62: index):  // 2 preds: ^bb42, ^bb44
    %63 = arith.cmpi slt, %62, %42 : index
    cf.cond_br %63, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    memref.store %c0_i64, %alloc_30[%62] : memref<?xi64>
    %64 = arith.addi %62, %c1 : index
    cf.br ^bb43(%64 : index)
  ^bb45:  // pred: ^bb43
    %cast_31 = memref.cast %alloc_30 : memref<?xi64> to memref<*xi64>
    %alloc_32 = memref.alloc(%43) : memref<?xi64>
    cf.br ^bb46(%c0 : index)
  ^bb46(%65: index):  // 2 preds: ^bb45, ^bb47
    %66 = arith.cmpi slt, %65, %43 : index
    cf.cond_br %66, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    memref.store %c0_i64, %alloc_32[%65] : memref<?xi64>
    %67 = arith.addi %65, %c1 : index
    cf.br ^bb46(%67 : index)
  ^bb48:  // pred: ^bb46
    %cast_33 = memref.cast %alloc_32 : memref<?xi64> to memref<*xi64>
    %alloc_34 = memref.alloc(%44) : memref<?xi64>
    cf.br ^bb49(%c0 : index)
  ^bb49(%68: index):  // 2 preds: ^bb48, ^bb50
    %69 = arith.cmpi slt, %68, %44 : index
    cf.cond_br %69, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    memref.store %c0_i64, %alloc_34[%68] : memref<?xi64>
    %70 = arith.addi %68, %c1 : index
    cf.br ^bb49(%70 : index)
  ^bb51:  // pred: ^bb49
    %cast_35 = memref.cast %alloc_34 : memref<?xi64> to memref<*xi64>
    %alloc_36 = memref.alloc(%45) : memref<?xf64>
    cf.br ^bb52(%c0 : index)
  ^bb52(%71: index):  // 2 preds: ^bb51, ^bb53
    %72 = arith.cmpi slt, %71, %45 : index
    cf.cond_br %72, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    memref.store %cst, %alloc_36[%71] : memref<?xf64>
    %73 = arith.addi %71, %c1 : index
    cf.br ^bb52(%73 : index)
  ^bb54:  // pred: ^bb52
    %cast_37 = memref.cast %alloc_36 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_21, %cast_23, %cast_25, %cast_27, %cast_29, %cast_31, %cast_33, %cast_35, %cast_37, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %74 = index.add %9, %idx1
    %alloc_38 = memref.alloc(%74) : memref<?xi64>
    memref.store %c0_i64, %alloc_38[%idx0] : memref<?xi64>
    %alloc_39 = memref.alloc(%46) : memref<?xi64>
    cf.br ^bb55(%c0, %idx0, %idx0 : index, index, index)
  ^bb55(%75: index, %76: index, %77: index):  // 2 preds: ^bb54, ^bb64
    %78 = arith.cmpi slt, %75, %9 : index
    cf.cond_br %78, ^bb56, ^bb65
  ^bb56:  // pred: ^bb55
    %79 = arith.addi %75, %c1 : index
    %80 = memref.load %alloc_8[%75] : memref<?xi64>
    %81 = arith.index_cast %80 : i64 to index
    %82 = memref.load %alloc_8[%79] : memref<?xi64>
    %83 = arith.index_cast %82 : i64 to index
    cf.br ^bb57(%81, %77 : index, index)
  ^bb57(%84: index, %85: index):  // 2 preds: ^bb56, ^bb63
    %86 = arith.cmpi slt, %84, %83 : index
    cf.cond_br %86, ^bb58, ^bb64
  ^bb58:  // pred: ^bb57
    %87 = memref.load %alloc_10[%84] : memref<?xi64>
    %88 = arith.index_cast %87 : i64 to index
    %89 = arith.addi %88, %c1 : index
    %90 = memref.load %alloc_28[%88] : memref<?xi64>
    %91 = arith.index_cast %90 : i64 to index
    %92 = memref.load %alloc_28[%89] : memref<?xi64>
    %93 = arith.index_cast %92 : i64 to index
    cf.br ^bb59(%91, %85 : index, index)
  ^bb59(%94: index, %95: index):  // 2 preds: ^bb58, ^bb62
    %96 = arith.cmpi slt, %94, %93 : index
    cf.cond_br %96, ^bb60, ^bb63
  ^bb60:  // pred: ^bb59
    %97 = memref.load %alloc_30[%94] : memref<?xi64>
    %98 = arith.index_cast %97 : i64 to index
    %99 = index.add %76, %idx1
    %100 = arith.index_cast %99 : index to i64
    %101 = memref.load %alloc_39[%98] : memref<?xi64>
    %102 = arith.cmpi eq, %100, %101 : i64
    cf.cond_br %102, ^bb62(%95 : index), ^bb61
  ^bb61:  // pred: ^bb60
    memref.store %100, %alloc_39[%98] : memref<?xi64>
    %103 = index.add %95, %idx1
    cf.br ^bb62(%103 : index)
  ^bb62(%104: index):  // 2 preds: ^bb60, ^bb61
    %105 = arith.addi %94, %c1 : index
    cf.br ^bb59(%105, %104 : index, index)
  ^bb63:  // pred: ^bb59
    %106 = arith.addi %84, %c1 : index
    cf.br ^bb57(%106, %95 : index, index)
  ^bb64:  // pred: ^bb57
    %107 = index.add %76, %idx1
    %108 = arith.index_cast %85 : index to i64
    memref.store %108, %alloc_38[%107] : memref<?xi64>
    cf.br ^bb55(%79, %107, %85 : index, index, index)
  ^bb65:  // pred: ^bb55
    %109 = arith.index_cast %9 : index to i64
    %alloc_40 = memref.alloc() : memref<1xi64>
    memref.store %109, %alloc_40[%idx0] : memref<1xi64>
    %alloc_41 = memref.alloc(%77) : memref<?xi64>
    %alloc_42 = memref.alloc(%77) : memref<?xf64>
    cf.br ^bb66(%idx0 : index)
  ^bb66(%110: index):  // 2 preds: ^bb65, ^bb67
    %111 = arith.cmpi slt, %110, %77 : index
    cf.cond_br %111, ^bb67, ^bb68
  ^bb67:  // pred: ^bb66
    memref.store %cst, %alloc_42[%110] : memref<?xf64>
    %112 = arith.addi %110, %idx1 : index
    cf.br ^bb66(%112 : index)
  ^bb68:  // pred: ^bb66
    %alloc_43 = memref.alloc(%46) {alignment = 64 : i64} : memref<?xf64>
    %alloc_44 = memref.alloc(%46) {alignment = 64 : i64} : memref<?xi32>
    %alloc_45 = memref.alloc(%46) {alignment = 64 : i64} : memref<?xi64>
    cf.br ^bb69(%c0, %idx0, %c1_i32 : index, index, i32)
  ^bb69(%113: index, %114: index, %115: i32):  // 2 preds: ^bb68, ^bb84
    %116 = arith.cmpi slt, %113, %9 : index
    cf.cond_br %116, ^bb70, ^bb85
  ^bb70:  // pred: ^bb69
    %117 = arith.addi %115, %c1_i32 : i32
    %118 = arith.addi %113, %c1 : index
    %119 = memref.load %alloc_8[%113] : memref<?xi64>
    %120 = arith.index_cast %119 : i64 to index
    %121 = memref.load %alloc_8[%118] : memref<?xi64>
    %122 = arith.index_cast %121 : i64 to index
    cf.br ^bb71(%120, %idx0 : index, index)
  ^bb71(%123: index, %124: index):  // 2 preds: ^bb70, ^bb79
    %125 = arith.cmpi slt, %123, %122 : index
    cf.cond_br %125, ^bb72, ^bb80(%c0, %114 : index, index)
  ^bb72:  // pred: ^bb71
    %126 = memref.load %alloc_10[%123] : memref<?xi64>
    %127 = arith.index_cast %126 : i64 to index
    %128 = arith.addi %127, %c1 : index
    %129 = memref.load %alloc_28[%127] : memref<?xi64>
    %130 = arith.index_cast %129 : i64 to index
    %131 = memref.load %alloc_28[%128] : memref<?xi64>
    %132 = arith.index_cast %131 : i64 to index
    cf.br ^bb73(%130, %124 : index, index)
  ^bb73(%133: index, %134: index):  // 2 preds: ^bb72, ^bb78
    %135 = arith.cmpi slt, %133, %132 : index
    cf.cond_br %135, ^bb74, ^bb79
  ^bb74:  // pred: ^bb73
    %136 = memref.load %alloc_30[%133] : memref<?xi64>
    %137 = arith.index_cast %136 : i64 to index
    %138 = memref.load %alloc_16[%123] : memref<?xf64>
    %139 = memref.load %alloc_36[%133] : memref<?xf64>
    %140 = arith.mulf %138, %139 : f64
    %141 = memref.load %alloc_44[%137] : memref<?xi32>
    %142 = arith.cmpi eq, %141, %117 : i32
    cf.cond_br %142, ^bb75, ^bb76(%cst : f64)
  ^bb75:  // pred: ^bb74
    %143 = memref.load %alloc_43[%137] : memref<?xf64>
    cf.br ^bb76(%143 : f64)
  ^bb76(%144: f64):  // 2 preds: ^bb74, ^bb75
    %145 = arith.addf %144, %140 : f64
    %146 = arith.cmpi ne, %141, %117 : i32
    cf.cond_br %146, ^bb77, ^bb78(%134 : index)
  ^bb77:  // pred: ^bb76
    memref.store %117, %alloc_44[%137] : memref<?xi32>
    memref.store %136, %alloc_45[%134] : memref<?xi64>
    %147 = index.add %134, %idx1
    cf.br ^bb78(%147 : index)
  ^bb78(%148: index):  // 2 preds: ^bb76, ^bb77
    memref.store %145, %alloc_43[%137] : memref<?xf64>
    %149 = arith.addi %133, %c1 : index
    cf.br ^bb73(%149, %148 : index, index)
  ^bb79:  // pred: ^bb73
    %150 = arith.addi %123, %c1 : index
    cf.br ^bb71(%150, %134 : index, index)
  ^bb80(%151: index, %152: index):  // 2 preds: ^bb71, ^bb83
    %153 = arith.cmpi slt, %151, %124 : index
    cf.cond_br %153, ^bb81, ^bb84
  ^bb81:  // pred: ^bb80
    %154 = memref.load %alloc_45[%151] : memref<?xi64>
    %155 = arith.index_cast %154 : i64 to index
    %156 = memref.load %alloc_44[%155] : memref<?xi32>
    %157 = arith.cmpi eq, %156, %117 : i32
    cf.cond_br %157, ^bb82, ^bb83(%cst : f64)
  ^bb82:  // pred: ^bb81
    %158 = memref.load %alloc_43[%155] : memref<?xf64>
    cf.br ^bb83(%158 : f64)
  ^bb83(%159: f64):  // 2 preds: ^bb81, ^bb82
    memref.store %154, %alloc_41[%152] : memref<?xi64>
    %160 = index.add %152, %idx1
    memref.store %159, %alloc_42[%152] : memref<?xf64>
    %161 = arith.addi %151, %c1 : index
    cf.br ^bb80(%161, %160 : index, index)
  ^bb84:  // pred: ^bb80
    cf.br ^bb69(%118, %152, %117 : index, index, i32)
  ^bb85:  // pred: ^bb69
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


// -----// IR Dump After FinalizeMemRefToLLVMConversionPass (finalize-memref-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  func.func @main() {
    %idx-1 = index.constant -1
    %0 = builtin.unrealized_conversion_cast %idx-1 : index to i64
    %idx1 = index.constant 1
    %idx0 = index.constant 0
    %1 = builtin.unrealized_conversion_cast %idx0 : index to i64
    %cst = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
    %c10 = arith.constant 10 : index
    %2 = builtin.unrealized_conversion_cast %c10 : index to i64
    %c9 = arith.constant 9 : index
    %3 = builtin.unrealized_conversion_cast %c9 : index to i64
    %c8 = arith.constant 8 : index
    %4 = builtin.unrealized_conversion_cast %c8 : index to i64
    %c7 = arith.constant 7 : index
    %5 = builtin.unrealized_conversion_cast %c7 : index to i64
    %c6 = arith.constant 6 : index
    %6 = builtin.unrealized_conversion_cast %c6 : index to i64
    %c5 = arith.constant 5 : index
    %7 = builtin.unrealized_conversion_cast %c5 : index to i64
    %c4 = arith.constant 4 : index
    %8 = builtin.unrealized_conversion_cast %c4 : index to i64
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %9 = builtin.unrealized_conversion_cast %c3 : index to i64
    %c2 = arith.constant 2 : index
    %10 = builtin.unrealized_conversion_cast %c2 : index to i64
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %11 = builtin.unrealized_conversion_cast %c1 : index to i64
    %c0 = arith.constant 0 : index
    %12 = builtin.unrealized_conversion_cast %c0 : index to i64
    %13 = llvm.mlir.constant(13 : index) : i64
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.mlir.zero : !llvm.ptr
    %16 = llvm.getelementptr %15[%13] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %17 = llvm.ptrtoint %16 : !llvm.ptr to i64
    %18 = llvm.call @malloc(%17) : (i64) -> !llvm.ptr
    %19 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %20 = llvm.insertvalue %18, %19[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.insertvalue %18, %20[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.insertvalue %22, %21[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.insertvalue %13, %23[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.insertvalue %14, %24[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.alloca %26 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %25, %27 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %30 = llvm.insertvalue %28, %29[0] : !llvm.struct<(i64, ptr)> 
    %31 = llvm.insertvalue %27, %30[1] : !llvm.struct<(i64, ptr)> 
    %32 = builtin.unrealized_conversion_cast %31 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %32, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %33 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.getelementptr %33[%12] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %35 = llvm.load %34 : !llvm.ptr -> i64
    %36 = builtin.unrealized_conversion_cast %35 : i64 to index
    %37 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.getelementptr %37[%11] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %39 = llvm.load %38 : !llvm.ptr -> i64
    %40 = builtin.unrealized_conversion_cast %39 : i64 to index
    %41 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.getelementptr %41[%10] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %43 = llvm.load %42 : !llvm.ptr -> i64
    %44 = builtin.unrealized_conversion_cast %43 : i64 to index
    %45 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.getelementptr %45[%9] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %47 = llvm.load %46 : !llvm.ptr -> i64
    %48 = builtin.unrealized_conversion_cast %47 : i64 to index
    %49 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.getelementptr %49[%8] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %51 = llvm.load %50 : !llvm.ptr -> i64
    %52 = builtin.unrealized_conversion_cast %51 : i64 to index
    %53 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.getelementptr %53[%7] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %55 = llvm.load %54 : !llvm.ptr -> i64
    %56 = builtin.unrealized_conversion_cast %55 : i64 to index
    %57 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.getelementptr %57[%6] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %59 = llvm.load %58 : !llvm.ptr -> i64
    %60 = builtin.unrealized_conversion_cast %59 : i64 to index
    %61 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.getelementptr %61[%5] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %63 = llvm.load %62 : !llvm.ptr -> i64
    %64 = builtin.unrealized_conversion_cast %63 : i64 to index
    %65 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.getelementptr %65[%4] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %67 = llvm.load %66 : !llvm.ptr -> i64
    %68 = builtin.unrealized_conversion_cast %67 : i64 to index
    %69 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.getelementptr %69[%3] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %71 = llvm.load %70 : !llvm.ptr -> i64
    %72 = builtin.unrealized_conversion_cast %71 : i64 to index
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.mlir.zero : !llvm.ptr
    %75 = llvm.getelementptr %74[%35] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %76 = llvm.ptrtoint %75 : !llvm.ptr to i64
    %77 = llvm.call @malloc(%76) : (i64) -> !llvm.ptr
    %78 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %79 = llvm.insertvalue %77, %78[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %80 = llvm.insertvalue %77, %79[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %81 = llvm.mlir.constant(0 : index) : i64
    %82 = llvm.insertvalue %81, %80[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %83 = llvm.insertvalue %35, %82[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %84 = llvm.insertvalue %73, %83[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb1(%c0 : index)
  ^bb1(%85: index):  // 2 preds: ^bb0, ^bb2
    %86 = builtin.unrealized_conversion_cast %85 : index to i64
    %87 = arith.cmpi slt, %85, %36 : index
    cf.cond_br %87, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %88 = llvm.extractvalue %84[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.getelementptr %88[%86] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %89 : i64, !llvm.ptr
    %90 = arith.addi %85, %c1 : index
    cf.br ^bb1(%90 : index)
  ^bb3:  // pred: ^bb1
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.alloca %91 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %84, %92 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %95 = llvm.insertvalue %93, %94[0] : !llvm.struct<(i64, ptr)> 
    %96 = llvm.insertvalue %92, %95[1] : !llvm.struct<(i64, ptr)> 
    %97 = builtin.unrealized_conversion_cast %96 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.mlir.zero : !llvm.ptr
    %100 = llvm.getelementptr %99[%39] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %101 = llvm.ptrtoint %100 : !llvm.ptr to i64
    %102 = llvm.call @malloc(%101) : (i64) -> !llvm.ptr
    %103 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %104 = llvm.insertvalue %102, %103[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %105 = llvm.insertvalue %102, %104[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %106 = llvm.mlir.constant(0 : index) : i64
    %107 = llvm.insertvalue %106, %105[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %108 = llvm.insertvalue %39, %107[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %109 = llvm.insertvalue %98, %108[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb4(%c0 : index)
  ^bb4(%110: index):  // 2 preds: ^bb3, ^bb5
    %111 = builtin.unrealized_conversion_cast %110 : index to i64
    %112 = arith.cmpi slt, %110, %40 : index
    cf.cond_br %112, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %113 = llvm.extractvalue %109[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %114 = llvm.getelementptr %113[%111] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %114 : i64, !llvm.ptr
    %115 = arith.addi %110, %c1 : index
    cf.br ^bb4(%115 : index)
  ^bb6:  // pred: ^bb4
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
    %125 = llvm.getelementptr %124[%43] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %126 = llvm.ptrtoint %125 : !llvm.ptr to i64
    %127 = llvm.call @malloc(%126) : (i64) -> !llvm.ptr
    %128 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %129 = llvm.insertvalue %127, %128[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %130 = llvm.insertvalue %127, %129[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.mlir.constant(0 : index) : i64
    %132 = llvm.insertvalue %131, %130[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.insertvalue %43, %132[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %134 = llvm.insertvalue %123, %133[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb7(%c0 : index)
  ^bb7(%135: index):  // 2 preds: ^bb6, ^bb8
    %136 = builtin.unrealized_conversion_cast %135 : index to i64
    %137 = arith.cmpi slt, %135, %44 : index
    cf.cond_br %137, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %138 = llvm.extractvalue %134[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %139 = llvm.getelementptr %138[%136] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %139 : i64, !llvm.ptr
    %140 = arith.addi %135, %c1 : index
    cf.br ^bb7(%140 : index)
  ^bb9:  // pred: ^bb7
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
    %150 = llvm.getelementptr %149[%47] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %151 = llvm.ptrtoint %150 : !llvm.ptr to i64
    %152 = llvm.call @malloc(%151) : (i64) -> !llvm.ptr
    %153 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %154 = llvm.insertvalue %152, %153[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %155 = llvm.insertvalue %152, %154[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.insertvalue %156, %155[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %158 = llvm.insertvalue %47, %157[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %159 = llvm.insertvalue %148, %158[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb10(%c0 : index)
  ^bb10(%160: index):  // 2 preds: ^bb9, ^bb11
    %161 = builtin.unrealized_conversion_cast %160 : index to i64
    %162 = arith.cmpi slt, %160, %48 : index
    cf.cond_br %162, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %163 = llvm.extractvalue %159[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %164 = llvm.getelementptr %163[%161] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %164 : i64, !llvm.ptr
    %165 = arith.addi %160, %c1 : index
    cf.br ^bb10(%165 : index)
  ^bb12:  // pred: ^bb10
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
    %175 = llvm.getelementptr %174[%51] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %176 = llvm.ptrtoint %175 : !llvm.ptr to i64
    %177 = llvm.call @malloc(%176) : (i64) -> !llvm.ptr
    %178 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %179 = llvm.insertvalue %177, %178[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %180 = llvm.insertvalue %177, %179[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %181 = llvm.mlir.constant(0 : index) : i64
    %182 = llvm.insertvalue %181, %180[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %183 = llvm.insertvalue %51, %182[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %184 = llvm.insertvalue %173, %183[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb13(%c0 : index)
  ^bb13(%185: index):  // 2 preds: ^bb12, ^bb14
    %186 = builtin.unrealized_conversion_cast %185 : index to i64
    %187 = arith.cmpi slt, %185, %52 : index
    cf.cond_br %187, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %188 = llvm.extractvalue %184[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %189 = llvm.getelementptr %188[%186] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %189 : i64, !llvm.ptr
    %190 = arith.addi %185, %c1 : index
    cf.br ^bb13(%190 : index)
  ^bb15:  // pred: ^bb13
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
    %200 = llvm.getelementptr %199[%55] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %201 = llvm.ptrtoint %200 : !llvm.ptr to i64
    %202 = llvm.call @malloc(%201) : (i64) -> !llvm.ptr
    %203 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %204 = llvm.insertvalue %202, %203[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %205 = llvm.insertvalue %202, %204[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %206 = llvm.mlir.constant(0 : index) : i64
    %207 = llvm.insertvalue %206, %205[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %208 = llvm.insertvalue %55, %207[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %209 = llvm.insertvalue %198, %208[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb16(%c0 : index)
  ^bb16(%210: index):  // 2 preds: ^bb15, ^bb17
    %211 = builtin.unrealized_conversion_cast %210 : index to i64
    %212 = arith.cmpi slt, %210, %56 : index
    cf.cond_br %212, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %213 = llvm.extractvalue %209[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %214 = llvm.getelementptr %213[%211] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %214 : i64, !llvm.ptr
    %215 = arith.addi %210, %c1 : index
    cf.br ^bb16(%215 : index)
  ^bb18:  // pred: ^bb16
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
    %225 = llvm.getelementptr %224[%59] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %226 = llvm.ptrtoint %225 : !llvm.ptr to i64
    %227 = llvm.call @malloc(%226) : (i64) -> !llvm.ptr
    %228 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %229 = llvm.insertvalue %227, %228[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %230 = llvm.insertvalue %227, %229[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %231 = llvm.mlir.constant(0 : index) : i64
    %232 = llvm.insertvalue %231, %230[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.insertvalue %59, %232[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %234 = llvm.insertvalue %223, %233[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb19(%c0 : index)
  ^bb19(%235: index):  // 2 preds: ^bb18, ^bb20
    %236 = builtin.unrealized_conversion_cast %235 : index to i64
    %237 = arith.cmpi slt, %235, %60 : index
    cf.cond_br %237, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %238 = llvm.extractvalue %234[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %239 = llvm.getelementptr %238[%236] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %239 : i64, !llvm.ptr
    %240 = arith.addi %235, %c1 : index
    cf.br ^bb19(%240 : index)
  ^bb21:  // pred: ^bb19
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
    %250 = llvm.getelementptr %249[%63] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %251 = llvm.ptrtoint %250 : !llvm.ptr to i64
    %252 = llvm.call @malloc(%251) : (i64) -> !llvm.ptr
    %253 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %254 = llvm.insertvalue %252, %253[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %255 = llvm.insertvalue %252, %254[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %256 = llvm.mlir.constant(0 : index) : i64
    %257 = llvm.insertvalue %256, %255[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %258 = llvm.insertvalue %63, %257[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %259 = llvm.insertvalue %248, %258[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb22(%c0 : index)
  ^bb22(%260: index):  // 2 preds: ^bb21, ^bb23
    %261 = builtin.unrealized_conversion_cast %260 : index to i64
    %262 = arith.cmpi slt, %260, %64 : index
    cf.cond_br %262, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %263 = llvm.extractvalue %259[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %264 = llvm.getelementptr %263[%261] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %264 : i64, !llvm.ptr
    %265 = arith.addi %260, %c1 : index
    cf.br ^bb22(%265 : index)
  ^bb24:  // pred: ^bb22
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
    %275 = llvm.getelementptr %274[%67] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %276 = llvm.ptrtoint %275 : !llvm.ptr to i64
    %277 = llvm.call @malloc(%276) : (i64) -> !llvm.ptr
    %278 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %279 = llvm.insertvalue %277, %278[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %280 = llvm.insertvalue %277, %279[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %281 = llvm.mlir.constant(0 : index) : i64
    %282 = llvm.insertvalue %281, %280[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %283 = llvm.insertvalue %67, %282[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %284 = llvm.insertvalue %273, %283[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb25(%c0 : index)
  ^bb25(%285: index):  // 2 preds: ^bb24, ^bb26
    %286 = builtin.unrealized_conversion_cast %285 : index to i64
    %287 = arith.cmpi slt, %285, %68 : index
    cf.cond_br %287, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %288 = llvm.extractvalue %284[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %289 = llvm.getelementptr %288[%286] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst, %289 : f64, !llvm.ptr
    %290 = arith.addi %285, %c1 : index
    cf.br ^bb25(%290 : index)
  ^bb27:  // pred: ^bb25
    %291 = llvm.mlir.constant(1 : index) : i64
    %292 = llvm.alloca %291 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %284, %292 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %295 = llvm.insertvalue %293, %294[0] : !llvm.struct<(i64, ptr)> 
    %296 = llvm.insertvalue %292, %295[1] : !llvm.struct<(i64, ptr)> 
    %297 = builtin.unrealized_conversion_cast %296 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %97, %122, %147, %172, %197, %222, %247, %272, %297, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %298 = llvm.mlir.constant(13 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    %300 = llvm.mlir.zero : !llvm.ptr
    %301 = llvm.getelementptr %300[%298] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %302 = llvm.ptrtoint %301 : !llvm.ptr to i64
    %303 = llvm.call @malloc(%302) : (i64) -> !llvm.ptr
    %304 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %305 = llvm.insertvalue %303, %304[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %306 = llvm.insertvalue %303, %305[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %307 = llvm.mlir.constant(0 : index) : i64
    %308 = llvm.insertvalue %307, %306[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %309 = llvm.insertvalue %298, %308[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %310 = llvm.insertvalue %299, %309[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %311 = llvm.mlir.constant(1 : index) : i64
    %312 = llvm.alloca %311 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %310, %312 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %313 = llvm.mlir.constant(1 : index) : i64
    %314 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %315 = llvm.insertvalue %313, %314[0] : !llvm.struct<(i64, ptr)> 
    %316 = llvm.insertvalue %312, %315[1] : !llvm.struct<(i64, ptr)> 
    %317 = builtin.unrealized_conversion_cast %316 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %317, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %318 = llvm.extractvalue %310[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %319 = llvm.getelementptr %318[%12] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %320 = llvm.load %319 : !llvm.ptr -> i64
    %321 = builtin.unrealized_conversion_cast %320 : i64 to index
    %322 = llvm.extractvalue %310[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %323 = llvm.getelementptr %322[%11] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %324 = llvm.load %323 : !llvm.ptr -> i64
    %325 = builtin.unrealized_conversion_cast %324 : i64 to index
    %326 = llvm.extractvalue %310[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %327 = llvm.getelementptr %326[%10] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %328 = llvm.load %327 : !llvm.ptr -> i64
    %329 = builtin.unrealized_conversion_cast %328 : i64 to index
    %330 = llvm.extractvalue %310[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %331 = llvm.getelementptr %330[%9] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %332 = llvm.load %331 : !llvm.ptr -> i64
    %333 = builtin.unrealized_conversion_cast %332 : i64 to index
    %334 = llvm.extractvalue %310[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %335 = llvm.getelementptr %334[%8] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %336 = llvm.load %335 : !llvm.ptr -> i64
    %337 = builtin.unrealized_conversion_cast %336 : i64 to index
    %338 = llvm.extractvalue %310[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %339 = llvm.getelementptr %338[%7] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %340 = llvm.load %339 : !llvm.ptr -> i64
    %341 = builtin.unrealized_conversion_cast %340 : i64 to index
    %342 = llvm.extractvalue %310[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %343 = llvm.getelementptr %342[%6] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %344 = llvm.load %343 : !llvm.ptr -> i64
    %345 = builtin.unrealized_conversion_cast %344 : i64 to index
    %346 = llvm.extractvalue %310[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %347 = llvm.getelementptr %346[%5] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %348 = llvm.load %347 : !llvm.ptr -> i64
    %349 = builtin.unrealized_conversion_cast %348 : i64 to index
    %350 = llvm.extractvalue %310[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %351 = llvm.getelementptr %350[%4] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %352 = llvm.load %351 : !llvm.ptr -> i64
    %353 = builtin.unrealized_conversion_cast %352 : i64 to index
    %354 = llvm.extractvalue %310[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %355 = llvm.getelementptr %354[%2] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %356 = llvm.load %355 : !llvm.ptr -> i64
    %357 = llvm.mlir.constant(1 : index) : i64
    %358 = llvm.mlir.zero : !llvm.ptr
    %359 = llvm.getelementptr %358[%320] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %360 = llvm.ptrtoint %359 : !llvm.ptr to i64
    %361 = llvm.call @malloc(%360) : (i64) -> !llvm.ptr
    %362 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %363 = llvm.insertvalue %361, %362[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %364 = llvm.insertvalue %361, %363[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %365 = llvm.mlir.constant(0 : index) : i64
    %366 = llvm.insertvalue %365, %364[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %367 = llvm.insertvalue %320, %366[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %368 = llvm.insertvalue %357, %367[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb28(%c0 : index)
  ^bb28(%369: index):  // 2 preds: ^bb27, ^bb29
    %370 = builtin.unrealized_conversion_cast %369 : index to i64
    %371 = arith.cmpi slt, %369, %321 : index
    cf.cond_br %371, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %372 = llvm.extractvalue %368[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %373 = llvm.getelementptr %372[%370] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %373 : i64, !llvm.ptr
    %374 = arith.addi %369, %c1 : index
    cf.br ^bb28(%374 : index)
  ^bb30:  // pred: ^bb28
    %375 = llvm.mlir.constant(1 : index) : i64
    %376 = llvm.alloca %375 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %368, %376 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %377 = llvm.mlir.constant(1 : index) : i64
    %378 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %379 = llvm.insertvalue %377, %378[0] : !llvm.struct<(i64, ptr)> 
    %380 = llvm.insertvalue %376, %379[1] : !llvm.struct<(i64, ptr)> 
    %381 = builtin.unrealized_conversion_cast %380 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %382 = llvm.mlir.constant(1 : index) : i64
    %383 = llvm.mlir.zero : !llvm.ptr
    %384 = llvm.getelementptr %383[%324] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %385 = llvm.ptrtoint %384 : !llvm.ptr to i64
    %386 = llvm.call @malloc(%385) : (i64) -> !llvm.ptr
    %387 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %388 = llvm.insertvalue %386, %387[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %389 = llvm.insertvalue %386, %388[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %390 = llvm.mlir.constant(0 : index) : i64
    %391 = llvm.insertvalue %390, %389[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %392 = llvm.insertvalue %324, %391[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %393 = llvm.insertvalue %382, %392[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb31(%c0 : index)
  ^bb31(%394: index):  // 2 preds: ^bb30, ^bb32
    %395 = builtin.unrealized_conversion_cast %394 : index to i64
    %396 = arith.cmpi slt, %394, %325 : index
    cf.cond_br %396, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %397 = llvm.extractvalue %393[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %398 = llvm.getelementptr %397[%395] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %398 : i64, !llvm.ptr
    %399 = arith.addi %394, %c1 : index
    cf.br ^bb31(%399 : index)
  ^bb33:  // pred: ^bb31
    %400 = llvm.mlir.constant(1 : index) : i64
    %401 = llvm.alloca %400 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %393, %401 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %402 = llvm.mlir.constant(1 : index) : i64
    %403 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %404 = llvm.insertvalue %402, %403[0] : !llvm.struct<(i64, ptr)> 
    %405 = llvm.insertvalue %401, %404[1] : !llvm.struct<(i64, ptr)> 
    %406 = builtin.unrealized_conversion_cast %405 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %407 = llvm.mlir.constant(1 : index) : i64
    %408 = llvm.mlir.zero : !llvm.ptr
    %409 = llvm.getelementptr %408[%328] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %410 = llvm.ptrtoint %409 : !llvm.ptr to i64
    %411 = llvm.call @malloc(%410) : (i64) -> !llvm.ptr
    %412 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %413 = llvm.insertvalue %411, %412[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %414 = llvm.insertvalue %411, %413[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %415 = llvm.mlir.constant(0 : index) : i64
    %416 = llvm.insertvalue %415, %414[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %417 = llvm.insertvalue %328, %416[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %418 = llvm.insertvalue %407, %417[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb34(%c0 : index)
  ^bb34(%419: index):  // 2 preds: ^bb33, ^bb35
    %420 = builtin.unrealized_conversion_cast %419 : index to i64
    %421 = arith.cmpi slt, %419, %329 : index
    cf.cond_br %421, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %422 = llvm.extractvalue %418[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %423 = llvm.getelementptr %422[%420] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %423 : i64, !llvm.ptr
    %424 = arith.addi %419, %c1 : index
    cf.br ^bb34(%424 : index)
  ^bb36:  // pred: ^bb34
    %425 = llvm.mlir.constant(1 : index) : i64
    %426 = llvm.alloca %425 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %418, %426 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %427 = llvm.mlir.constant(1 : index) : i64
    %428 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %429 = llvm.insertvalue %427, %428[0] : !llvm.struct<(i64, ptr)> 
    %430 = llvm.insertvalue %426, %429[1] : !llvm.struct<(i64, ptr)> 
    %431 = builtin.unrealized_conversion_cast %430 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %432 = llvm.mlir.constant(1 : index) : i64
    %433 = llvm.mlir.zero : !llvm.ptr
    %434 = llvm.getelementptr %433[%332] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %435 = llvm.ptrtoint %434 : !llvm.ptr to i64
    %436 = llvm.call @malloc(%435) : (i64) -> !llvm.ptr
    %437 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %438 = llvm.insertvalue %436, %437[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %439 = llvm.insertvalue %436, %438[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %440 = llvm.mlir.constant(0 : index) : i64
    %441 = llvm.insertvalue %440, %439[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %442 = llvm.insertvalue %332, %441[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %443 = llvm.insertvalue %432, %442[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb37(%c0 : index)
  ^bb37(%444: index):  // 2 preds: ^bb36, ^bb38
    %445 = builtin.unrealized_conversion_cast %444 : index to i64
    %446 = arith.cmpi slt, %444, %333 : index
    cf.cond_br %446, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %447 = llvm.extractvalue %443[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %448 = llvm.getelementptr %447[%445] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %448 : i64, !llvm.ptr
    %449 = arith.addi %444, %c1 : index
    cf.br ^bb37(%449 : index)
  ^bb39:  // pred: ^bb37
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.alloca %450 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %443, %451 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %452 = llvm.mlir.constant(1 : index) : i64
    %453 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %454 = llvm.insertvalue %452, %453[0] : !llvm.struct<(i64, ptr)> 
    %455 = llvm.insertvalue %451, %454[1] : !llvm.struct<(i64, ptr)> 
    %456 = builtin.unrealized_conversion_cast %455 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %457 = llvm.mlir.constant(1 : index) : i64
    %458 = llvm.mlir.zero : !llvm.ptr
    %459 = llvm.getelementptr %458[%336] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %460 = llvm.ptrtoint %459 : !llvm.ptr to i64
    %461 = llvm.call @malloc(%460) : (i64) -> !llvm.ptr
    %462 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %463 = llvm.insertvalue %461, %462[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %464 = llvm.insertvalue %461, %463[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %465 = llvm.mlir.constant(0 : index) : i64
    %466 = llvm.insertvalue %465, %464[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %467 = llvm.insertvalue %336, %466[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %468 = llvm.insertvalue %457, %467[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb40(%c0 : index)
  ^bb40(%469: index):  // 2 preds: ^bb39, ^bb41
    %470 = builtin.unrealized_conversion_cast %469 : index to i64
    %471 = arith.cmpi slt, %469, %337 : index
    cf.cond_br %471, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %472 = llvm.extractvalue %468[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %473 = llvm.getelementptr %472[%470] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %473 : i64, !llvm.ptr
    %474 = arith.addi %469, %c1 : index
    cf.br ^bb40(%474 : index)
  ^bb42:  // pred: ^bb40
    %475 = llvm.mlir.constant(1 : index) : i64
    %476 = llvm.alloca %475 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %468, %476 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %477 = llvm.mlir.constant(1 : index) : i64
    %478 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %479 = llvm.insertvalue %477, %478[0] : !llvm.struct<(i64, ptr)> 
    %480 = llvm.insertvalue %476, %479[1] : !llvm.struct<(i64, ptr)> 
    %481 = builtin.unrealized_conversion_cast %480 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %482 = llvm.mlir.constant(1 : index) : i64
    %483 = llvm.mlir.zero : !llvm.ptr
    %484 = llvm.getelementptr %483[%340] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %485 = llvm.ptrtoint %484 : !llvm.ptr to i64
    %486 = llvm.call @malloc(%485) : (i64) -> !llvm.ptr
    %487 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %488 = llvm.insertvalue %486, %487[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %489 = llvm.insertvalue %486, %488[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %490 = llvm.mlir.constant(0 : index) : i64
    %491 = llvm.insertvalue %490, %489[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %492 = llvm.insertvalue %340, %491[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %493 = llvm.insertvalue %482, %492[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb43(%c0 : index)
  ^bb43(%494: index):  // 2 preds: ^bb42, ^bb44
    %495 = builtin.unrealized_conversion_cast %494 : index to i64
    %496 = arith.cmpi slt, %494, %341 : index
    cf.cond_br %496, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %497 = llvm.extractvalue %493[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %498 = llvm.getelementptr %497[%495] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %498 : i64, !llvm.ptr
    %499 = arith.addi %494, %c1 : index
    cf.br ^bb43(%499 : index)
  ^bb45:  // pred: ^bb43
    %500 = llvm.mlir.constant(1 : index) : i64
    %501 = llvm.alloca %500 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %493, %501 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %502 = llvm.mlir.constant(1 : index) : i64
    %503 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %504 = llvm.insertvalue %502, %503[0] : !llvm.struct<(i64, ptr)> 
    %505 = llvm.insertvalue %501, %504[1] : !llvm.struct<(i64, ptr)> 
    %506 = builtin.unrealized_conversion_cast %505 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %507 = llvm.mlir.constant(1 : index) : i64
    %508 = llvm.mlir.zero : !llvm.ptr
    %509 = llvm.getelementptr %508[%344] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %510 = llvm.ptrtoint %509 : !llvm.ptr to i64
    %511 = llvm.call @malloc(%510) : (i64) -> !llvm.ptr
    %512 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %513 = llvm.insertvalue %511, %512[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %514 = llvm.insertvalue %511, %513[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %515 = llvm.mlir.constant(0 : index) : i64
    %516 = llvm.insertvalue %515, %514[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %517 = llvm.insertvalue %344, %516[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %518 = llvm.insertvalue %507, %517[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb46(%c0 : index)
  ^bb46(%519: index):  // 2 preds: ^bb45, ^bb47
    %520 = builtin.unrealized_conversion_cast %519 : index to i64
    %521 = arith.cmpi slt, %519, %345 : index
    cf.cond_br %521, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %522 = llvm.extractvalue %518[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %523 = llvm.getelementptr %522[%520] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %523 : i64, !llvm.ptr
    %524 = arith.addi %519, %c1 : index
    cf.br ^bb46(%524 : index)
  ^bb48:  // pred: ^bb46
    %525 = llvm.mlir.constant(1 : index) : i64
    %526 = llvm.alloca %525 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %518, %526 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %527 = llvm.mlir.constant(1 : index) : i64
    %528 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %529 = llvm.insertvalue %527, %528[0] : !llvm.struct<(i64, ptr)> 
    %530 = llvm.insertvalue %526, %529[1] : !llvm.struct<(i64, ptr)> 
    %531 = builtin.unrealized_conversion_cast %530 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %532 = llvm.mlir.constant(1 : index) : i64
    %533 = llvm.mlir.zero : !llvm.ptr
    %534 = llvm.getelementptr %533[%348] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %535 = llvm.ptrtoint %534 : !llvm.ptr to i64
    %536 = llvm.call @malloc(%535) : (i64) -> !llvm.ptr
    %537 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %538 = llvm.insertvalue %536, %537[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %539 = llvm.insertvalue %536, %538[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %540 = llvm.mlir.constant(0 : index) : i64
    %541 = llvm.insertvalue %540, %539[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %542 = llvm.insertvalue %348, %541[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %543 = llvm.insertvalue %532, %542[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb49(%c0 : index)
  ^bb49(%544: index):  // 2 preds: ^bb48, ^bb50
    %545 = builtin.unrealized_conversion_cast %544 : index to i64
    %546 = arith.cmpi slt, %544, %349 : index
    cf.cond_br %546, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %547 = llvm.extractvalue %543[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %548 = llvm.getelementptr %547[%545] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %548 : i64, !llvm.ptr
    %549 = arith.addi %544, %c1 : index
    cf.br ^bb49(%549 : index)
  ^bb51:  // pred: ^bb49
    %550 = llvm.mlir.constant(1 : index) : i64
    %551 = llvm.alloca %550 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %543, %551 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %552 = llvm.mlir.constant(1 : index) : i64
    %553 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %554 = llvm.insertvalue %552, %553[0] : !llvm.struct<(i64, ptr)> 
    %555 = llvm.insertvalue %551, %554[1] : !llvm.struct<(i64, ptr)> 
    %556 = builtin.unrealized_conversion_cast %555 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %557 = llvm.mlir.constant(1 : index) : i64
    %558 = llvm.mlir.zero : !llvm.ptr
    %559 = llvm.getelementptr %558[%352] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %560 = llvm.ptrtoint %559 : !llvm.ptr to i64
    %561 = llvm.call @malloc(%560) : (i64) -> !llvm.ptr
    %562 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %563 = llvm.insertvalue %561, %562[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %564 = llvm.insertvalue %561, %563[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %565 = llvm.mlir.constant(0 : index) : i64
    %566 = llvm.insertvalue %565, %564[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %567 = llvm.insertvalue %352, %566[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %568 = llvm.insertvalue %557, %567[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb52(%c0 : index)
  ^bb52(%569: index):  // 2 preds: ^bb51, ^bb53
    %570 = builtin.unrealized_conversion_cast %569 : index to i64
    %571 = arith.cmpi slt, %569, %353 : index
    cf.cond_br %571, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %572 = llvm.extractvalue %568[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %573 = llvm.getelementptr %572[%570] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst, %573 : f64, !llvm.ptr
    %574 = arith.addi %569, %c1 : index
    cf.br ^bb52(%574 : index)
  ^bb54:  // pred: ^bb52
    %575 = llvm.mlir.constant(1 : index) : i64
    %576 = llvm.alloca %575 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %568, %576 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %577 = llvm.mlir.constant(1 : index) : i64
    %578 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %579 = llvm.insertvalue %577, %578[0] : !llvm.struct<(i64, ptr)> 
    %580 = llvm.insertvalue %576, %579[1] : !llvm.struct<(i64, ptr)> 
    %581 = builtin.unrealized_conversion_cast %580 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %381, %406, %431, %456, %481, %506, %531, %556, %581, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %582 = index.add %72, %idx1
    %583 = builtin.unrealized_conversion_cast %582 : index to i64
    %584 = llvm.mlir.constant(1 : index) : i64
    %585 = llvm.mlir.zero : !llvm.ptr
    %586 = llvm.getelementptr %585[%583] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %587 = llvm.ptrtoint %586 : !llvm.ptr to i64
    %588 = llvm.call @malloc(%587) : (i64) -> !llvm.ptr
    %589 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %590 = llvm.insertvalue %588, %589[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %591 = llvm.insertvalue %588, %590[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %592 = llvm.mlir.constant(0 : index) : i64
    %593 = llvm.insertvalue %592, %591[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %594 = llvm.insertvalue %583, %593[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %595 = llvm.insertvalue %584, %594[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %596 = llvm.extractvalue %595[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %597 = llvm.getelementptr %596[%1] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %c0_i64, %597 : i64, !llvm.ptr
    %598 = llvm.mlir.constant(1 : index) : i64
    %599 = llvm.mlir.zero : !llvm.ptr
    %600 = llvm.getelementptr %599[%356] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %601 = llvm.ptrtoint %600 : !llvm.ptr to i64
    %602 = llvm.call @malloc(%601) : (i64) -> !llvm.ptr
    %603 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %604 = llvm.insertvalue %602, %603[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %605 = llvm.insertvalue %602, %604[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %606 = llvm.mlir.constant(0 : index) : i64
    %607 = llvm.insertvalue %606, %605[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %608 = llvm.insertvalue %356, %607[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %609 = llvm.insertvalue %598, %608[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb55(%c0, %idx0, %idx0 : index, index, index)
  ^bb55(%610: index, %611: index, %612: index):  // 2 preds: ^bb54, ^bb64
    %613 = builtin.unrealized_conversion_cast %610 : index to i64
    %614 = builtin.unrealized_conversion_cast %612 : index to i64
    %615 = arith.cmpi slt, %610, %72 : index
    cf.cond_br %615, ^bb56, ^bb65
  ^bb56:  // pred: ^bb55
    %616 = arith.addi %610, %c1 : index
    %617 = builtin.unrealized_conversion_cast %616 : index to i64
    %618 = llvm.extractvalue %184[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %619 = llvm.getelementptr %618[%613] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %620 = llvm.load %619 : !llvm.ptr -> i64
    %621 = arith.index_cast %620 : i64 to index
    %622 = llvm.extractvalue %184[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %623 = llvm.getelementptr %622[%617] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %624 = llvm.load %623 : !llvm.ptr -> i64
    %625 = arith.index_cast %624 : i64 to index
    cf.br ^bb57(%621, %612 : index, index)
  ^bb57(%626: index, %627: index):  // 2 preds: ^bb56, ^bb63
    %628 = builtin.unrealized_conversion_cast %626 : index to i64
    %629 = arith.cmpi slt, %626, %625 : index
    cf.cond_br %629, ^bb58, ^bb64
  ^bb58:  // pred: ^bb57
    %630 = llvm.extractvalue %209[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %631 = llvm.getelementptr %630[%628] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %632 = llvm.load %631 : !llvm.ptr -> i64
    %633 = arith.index_cast %632 : i64 to index
    %634 = builtin.unrealized_conversion_cast %633 : index to i64
    %635 = arith.addi %633, %c1 : index
    %636 = builtin.unrealized_conversion_cast %635 : index to i64
    %637 = llvm.extractvalue %468[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %638 = llvm.getelementptr %637[%634] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %639 = llvm.load %638 : !llvm.ptr -> i64
    %640 = arith.index_cast %639 : i64 to index
    %641 = llvm.extractvalue %468[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %642 = llvm.getelementptr %641[%636] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %643 = llvm.load %642 : !llvm.ptr -> i64
    %644 = arith.index_cast %643 : i64 to index
    cf.br ^bb59(%640, %627 : index, index)
  ^bb59(%645: index, %646: index):  // 2 preds: ^bb58, ^bb62
    %647 = builtin.unrealized_conversion_cast %645 : index to i64
    %648 = arith.cmpi slt, %645, %644 : index
    cf.cond_br %648, ^bb60, ^bb63
  ^bb60:  // pred: ^bb59
    %649 = llvm.extractvalue %493[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %650 = llvm.getelementptr %649[%647] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %651 = llvm.load %650 : !llvm.ptr -> i64
    %652 = arith.index_cast %651 : i64 to index
    %653 = builtin.unrealized_conversion_cast %652 : index to i64
    %654 = index.add %611, %idx1
    %655 = arith.index_cast %654 : index to i64
    %656 = llvm.extractvalue %609[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %657 = llvm.getelementptr %656[%653] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %658 = llvm.load %657 : !llvm.ptr -> i64
    %659 = arith.cmpi eq, %655, %658 : i64
    cf.cond_br %659, ^bb62(%646 : index), ^bb61
  ^bb61:  // pred: ^bb60
    %660 = llvm.extractvalue %609[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %661 = llvm.getelementptr %660[%653] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %655, %661 : i64, !llvm.ptr
    %662 = index.add %646, %idx1
    cf.br ^bb62(%662 : index)
  ^bb62(%663: index):  // 2 preds: ^bb60, ^bb61
    %664 = arith.addi %645, %c1 : index
    cf.br ^bb59(%664, %663 : index, index)
  ^bb63:  // pred: ^bb59
    %665 = arith.addi %626, %c1 : index
    cf.br ^bb57(%665, %646 : index, index)
  ^bb64:  // pred: ^bb57
    %666 = index.add %611, %idx1
    %667 = builtin.unrealized_conversion_cast %666 : index to i64
    %668 = arith.index_cast %627 : index to i64
    %669 = llvm.extractvalue %595[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %670 = llvm.getelementptr %669[%667] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %668, %670 : i64, !llvm.ptr
    cf.br ^bb55(%616, %666, %627 : index, index, index)
  ^bb65:  // pred: ^bb55
    %671 = arith.index_cast %72 : index to i64
    %672 = llvm.mlir.constant(1 : index) : i64
    %673 = llvm.mlir.constant(1 : index) : i64
    %674 = llvm.mlir.zero : !llvm.ptr
    %675 = llvm.getelementptr %674[%672] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %676 = llvm.ptrtoint %675 : !llvm.ptr to i64
    %677 = llvm.call @malloc(%676) : (i64) -> !llvm.ptr
    %678 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %679 = llvm.insertvalue %677, %678[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %680 = llvm.insertvalue %677, %679[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %681 = llvm.mlir.constant(0 : index) : i64
    %682 = llvm.insertvalue %681, %680[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %683 = llvm.insertvalue %672, %682[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %684 = llvm.insertvalue %673, %683[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %685 = llvm.extractvalue %684[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %686 = llvm.getelementptr %685[%1] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %671, %686 : i64, !llvm.ptr
    %687 = llvm.mlir.constant(1 : index) : i64
    %688 = llvm.mlir.zero : !llvm.ptr
    %689 = llvm.getelementptr %688[%614] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %690 = llvm.ptrtoint %689 : !llvm.ptr to i64
    %691 = llvm.call @malloc(%690) : (i64) -> !llvm.ptr
    %692 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %693 = llvm.insertvalue %691, %692[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %694 = llvm.insertvalue %691, %693[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %695 = llvm.mlir.constant(0 : index) : i64
    %696 = llvm.insertvalue %695, %694[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %697 = llvm.insertvalue %614, %696[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %698 = llvm.insertvalue %687, %697[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %699 = llvm.mlir.constant(1 : index) : i64
    %700 = llvm.mlir.zero : !llvm.ptr
    %701 = llvm.getelementptr %700[%614] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %702 = llvm.ptrtoint %701 : !llvm.ptr to i64
    %703 = llvm.call @malloc(%702) : (i64) -> !llvm.ptr
    %704 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %705 = llvm.insertvalue %703, %704[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %706 = llvm.insertvalue %703, %705[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %707 = llvm.mlir.constant(0 : index) : i64
    %708 = llvm.insertvalue %707, %706[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %709 = llvm.insertvalue %614, %708[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %710 = llvm.insertvalue %699, %709[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb66(%idx0 : index)
  ^bb66(%711: index):  // 2 preds: ^bb65, ^bb67
    %712 = builtin.unrealized_conversion_cast %711 : index to i64
    %713 = arith.cmpi slt, %711, %612 : index
    cf.cond_br %713, ^bb67, ^bb68
  ^bb67:  // pred: ^bb66
    %714 = llvm.extractvalue %710[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %715 = llvm.getelementptr %714[%712] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst, %715 : f64, !llvm.ptr
    %716 = arith.addi %711, %idx1 : index
    cf.br ^bb66(%716 : index)
  ^bb68:  // pred: ^bb66
    %717 = llvm.mlir.constant(1 : index) : i64
    %718 = llvm.mlir.zero : !llvm.ptr
    %719 = llvm.getelementptr %718[%356] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %720 = llvm.ptrtoint %719 : !llvm.ptr to i64
    %721 = llvm.mlir.constant(64 : index) : i64
    %722 = llvm.add %720, %721  : i64
    %723 = llvm.call @malloc(%722) : (i64) -> !llvm.ptr
    %724 = llvm.ptrtoint %723 : !llvm.ptr to i64
    %725 = llvm.mlir.constant(1 : index) : i64
    %726 = llvm.sub %721, %725  : i64
    %727 = llvm.add %724, %726  : i64
    %728 = llvm.urem %727, %721  : i64
    %729 = llvm.sub %727, %728  : i64
    %730 = llvm.inttoptr %729 : i64 to !llvm.ptr
    %731 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %732 = llvm.insertvalue %723, %731[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %733 = llvm.insertvalue %730, %732[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %734 = llvm.mlir.constant(0 : index) : i64
    %735 = llvm.insertvalue %734, %733[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %736 = llvm.insertvalue %356, %735[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %737 = llvm.insertvalue %717, %736[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %738 = llvm.mlir.constant(1 : index) : i64
    %739 = llvm.mlir.zero : !llvm.ptr
    %740 = llvm.getelementptr %739[%356] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %741 = llvm.ptrtoint %740 : !llvm.ptr to i64
    %742 = llvm.mlir.constant(64 : index) : i64
    %743 = llvm.add %741, %742  : i64
    %744 = llvm.call @malloc(%743) : (i64) -> !llvm.ptr
    %745 = llvm.ptrtoint %744 : !llvm.ptr to i64
    %746 = llvm.mlir.constant(1 : index) : i64
    %747 = llvm.sub %742, %746  : i64
    %748 = llvm.add %745, %747  : i64
    %749 = llvm.urem %748, %742  : i64
    %750 = llvm.sub %748, %749  : i64
    %751 = llvm.inttoptr %750 : i64 to !llvm.ptr
    %752 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %753 = llvm.insertvalue %744, %752[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %754 = llvm.insertvalue %751, %753[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %755 = llvm.mlir.constant(0 : index) : i64
    %756 = llvm.insertvalue %755, %754[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %757 = llvm.insertvalue %356, %756[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %758 = llvm.insertvalue %738, %757[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %759 = llvm.mlir.constant(1 : index) : i64
    %760 = llvm.mlir.zero : !llvm.ptr
    %761 = llvm.getelementptr %760[%356] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %762 = llvm.ptrtoint %761 : !llvm.ptr to i64
    %763 = llvm.mlir.constant(64 : index) : i64
    %764 = llvm.add %762, %763  : i64
    %765 = llvm.call @malloc(%764) : (i64) -> !llvm.ptr
    %766 = llvm.ptrtoint %765 : !llvm.ptr to i64
    %767 = llvm.mlir.constant(1 : index) : i64
    %768 = llvm.sub %763, %767  : i64
    %769 = llvm.add %766, %768  : i64
    %770 = llvm.urem %769, %763  : i64
    %771 = llvm.sub %769, %770  : i64
    %772 = llvm.inttoptr %771 : i64 to !llvm.ptr
    %773 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %774 = llvm.insertvalue %765, %773[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %775 = llvm.insertvalue %772, %774[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %776 = llvm.mlir.constant(0 : index) : i64
    %777 = llvm.insertvalue %776, %775[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %778 = llvm.insertvalue %356, %777[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %779 = llvm.insertvalue %759, %778[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb69(%c0, %idx0, %c1_i32 : index, index, i32)
  ^bb69(%780: index, %781: index, %782: i32):  // 2 preds: ^bb68, ^bb84
    %783 = builtin.unrealized_conversion_cast %780 : index to i64
    %784 = arith.cmpi slt, %780, %72 : index
    cf.cond_br %784, ^bb70, ^bb85
  ^bb70:  // pred: ^bb69
    %785 = arith.addi %782, %c1_i32 : i32
    %786 = arith.addi %780, %c1 : index
    %787 = builtin.unrealized_conversion_cast %786 : index to i64
    %788 = llvm.extractvalue %184[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %789 = llvm.getelementptr %788[%783] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %790 = llvm.load %789 : !llvm.ptr -> i64
    %791 = arith.index_cast %790 : i64 to index
    %792 = llvm.extractvalue %184[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %793 = llvm.getelementptr %792[%787] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %794 = llvm.load %793 : !llvm.ptr -> i64
    %795 = arith.index_cast %794 : i64 to index
    cf.br ^bb71(%791, %idx0 : index, index)
  ^bb71(%796: index, %797: index):  // 2 preds: ^bb70, ^bb79
    %798 = builtin.unrealized_conversion_cast %796 : index to i64
    %799 = arith.cmpi slt, %796, %795 : index
    cf.cond_br %799, ^bb72, ^bb80(%c0, %781 : index, index)
  ^bb72:  // pred: ^bb71
    %800 = llvm.extractvalue %209[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %801 = llvm.getelementptr %800[%798] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %802 = llvm.load %801 : !llvm.ptr -> i64
    %803 = arith.index_cast %802 : i64 to index
    %804 = builtin.unrealized_conversion_cast %803 : index to i64
    %805 = arith.addi %803, %c1 : index
    %806 = builtin.unrealized_conversion_cast %805 : index to i64
    %807 = llvm.extractvalue %468[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %808 = llvm.getelementptr %807[%804] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %809 = llvm.load %808 : !llvm.ptr -> i64
    %810 = arith.index_cast %809 : i64 to index
    %811 = llvm.extractvalue %468[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %812 = llvm.getelementptr %811[%806] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %813 = llvm.load %812 : !llvm.ptr -> i64
    %814 = arith.index_cast %813 : i64 to index
    cf.br ^bb73(%810, %797 : index, index)
  ^bb73(%815: index, %816: index):  // 2 preds: ^bb72, ^bb78
    %817 = builtin.unrealized_conversion_cast %815 : index to i64
    %818 = builtin.unrealized_conversion_cast %816 : index to i64
    %819 = arith.cmpi slt, %815, %814 : index
    cf.cond_br %819, ^bb74, ^bb79
  ^bb74:  // pred: ^bb73
    %820 = llvm.extractvalue %493[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %821 = llvm.getelementptr %820[%817] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %822 = llvm.load %821 : !llvm.ptr -> i64
    %823 = arith.index_cast %822 : i64 to index
    %824 = builtin.unrealized_conversion_cast %823 : index to i64
    %825 = llvm.extractvalue %284[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %826 = llvm.getelementptr %825[%798] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %827 = llvm.load %826 : !llvm.ptr -> f64
    %828 = llvm.extractvalue %568[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %829 = llvm.getelementptr %828[%817] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %830 = llvm.load %829 : !llvm.ptr -> f64
    %831 = arith.mulf %827, %830 : f64
    %832 = llvm.extractvalue %758[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %833 = llvm.getelementptr %832[%824] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %834 = llvm.load %833 : !llvm.ptr -> i32
    %835 = arith.cmpi eq, %834, %785 : i32
    cf.cond_br %835, ^bb75, ^bb76(%cst : f64)
  ^bb75:  // pred: ^bb74
    %836 = llvm.extractvalue %737[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %837 = llvm.getelementptr %836[%824] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %838 = llvm.load %837 : !llvm.ptr -> f64
    cf.br ^bb76(%838 : f64)
  ^bb76(%839: f64):  // 2 preds: ^bb74, ^bb75
    %840 = arith.addf %839, %831 : f64
    %841 = arith.cmpi ne, %834, %785 : i32
    cf.cond_br %841, ^bb77, ^bb78(%816 : index)
  ^bb77:  // pred: ^bb76
    %842 = llvm.extractvalue %758[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %843 = llvm.getelementptr %842[%824] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %785, %843 : i32, !llvm.ptr
    %844 = llvm.extractvalue %779[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %845 = llvm.getelementptr %844[%818] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %822, %845 : i64, !llvm.ptr
    %846 = index.add %816, %idx1
    cf.br ^bb78(%846 : index)
  ^bb78(%847: index):  // 2 preds: ^bb76, ^bb77
    %848 = llvm.extractvalue %737[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %849 = llvm.getelementptr %848[%824] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %840, %849 : f64, !llvm.ptr
    %850 = arith.addi %815, %c1 : index
    cf.br ^bb73(%850, %847 : index, index)
  ^bb79:  // pred: ^bb73
    %851 = arith.addi %796, %c1 : index
    cf.br ^bb71(%851, %816 : index, index)
  ^bb80(%852: index, %853: index):  // 2 preds: ^bb71, ^bb83
    %854 = builtin.unrealized_conversion_cast %852 : index to i64
    %855 = builtin.unrealized_conversion_cast %853 : index to i64
    %856 = arith.cmpi slt, %852, %797 : index
    cf.cond_br %856, ^bb81, ^bb84
  ^bb81:  // pred: ^bb80
    %857 = llvm.extractvalue %779[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %858 = llvm.getelementptr %857[%854] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %859 = llvm.load %858 : !llvm.ptr -> i64
    %860 = arith.index_cast %859 : i64 to index
    %861 = builtin.unrealized_conversion_cast %860 : index to i64
    %862 = llvm.extractvalue %758[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %863 = llvm.getelementptr %862[%861] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %864 = llvm.load %863 : !llvm.ptr -> i32
    %865 = arith.cmpi eq, %864, %785 : i32
    cf.cond_br %865, ^bb82, ^bb83(%cst : f64)
  ^bb82:  // pred: ^bb81
    %866 = llvm.extractvalue %737[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %867 = llvm.getelementptr %866[%861] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %868 = llvm.load %867 : !llvm.ptr -> f64
    cf.br ^bb83(%868 : f64)
  ^bb83(%869: f64):  // 2 preds: ^bb81, ^bb82
    %870 = llvm.extractvalue %698[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %871 = llvm.getelementptr %870[%855] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %859, %871 : i64, !llvm.ptr
    %872 = index.add %853, %idx1
    %873 = llvm.extractvalue %710[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %874 = llvm.getelementptr %873[%855] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %869, %874 : f64, !llvm.ptr
    %875 = arith.addi %852, %c1 : index
    cf.br ^bb80(%875, %872 : index, index)
  ^bb84:  // pred: ^bb80
    cf.br ^bb69(%786, %853, %785 : index, index, i32)
  ^bb85:  // pred: ^bb69
    %876 = llvm.mlir.constant(1 : index) : i64
    %877 = llvm.mlir.constant(1 : index) : i64
    %878 = llvm.mlir.zero : !llvm.ptr
    %879 = llvm.getelementptr %878[%876] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %880 = llvm.ptrtoint %879 : !llvm.ptr to i64
    %881 = llvm.mlir.constant(64 : index) : i64
    %882 = llvm.add %880, %881  : i64
    %883 = llvm.call @malloc(%882) : (i64) -> !llvm.ptr
    %884 = llvm.ptrtoint %883 : !llvm.ptr to i64
    %885 = llvm.mlir.constant(1 : index) : i64
    %886 = llvm.sub %881, %885  : i64
    %887 = llvm.add %884, %886  : i64
    %888 = llvm.urem %887, %881  : i64
    %889 = llvm.sub %887, %888  : i64
    %890 = llvm.inttoptr %889 : i64 to !llvm.ptr
    %891 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %892 = llvm.insertvalue %883, %891[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %893 = llvm.insertvalue %890, %892[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %894 = llvm.mlir.constant(0 : index) : i64
    %895 = llvm.insertvalue %894, %893[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %896 = llvm.insertvalue %876, %895[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %897 = llvm.insertvalue %877, %896[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %898 = llvm.extractvalue %897[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %899 = llvm.getelementptr %898[%1] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %0, %899 : i64, !llvm.ptr
    %900 = llvm.mlir.constant(1 : index) : i64
    %901 = llvm.alloca %900 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %684, %901 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %902 = llvm.mlir.constant(1 : index) : i64
    %903 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %904 = llvm.insertvalue %902, %903[0] : !llvm.struct<(i64, ptr)> 
    %905 = llvm.insertvalue %901, %904[1] : !llvm.struct<(i64, ptr)> 
    %906 = builtin.unrealized_conversion_cast %905 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    call @comet_print_memref_i64(%906) : (memref<*xi64>) -> ()
    %907 = llvm.mlir.constant(1 : index) : i64
    %908 = llvm.alloca %907 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %897, %908 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %909 = llvm.mlir.constant(1 : index) : i64
    %910 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %911 = llvm.insertvalue %909, %910[0] : !llvm.struct<(i64, ptr)> 
    %912 = llvm.insertvalue %908, %911[1] : !llvm.struct<(i64, ptr)> 
    %913 = builtin.unrealized_conversion_cast %912 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    call @comet_print_memref_index(%913) : (memref<*xindex>) -> ()
    %914 = llvm.mlir.constant(1 : index) : i64
    %915 = llvm.alloca %914 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %595, %915 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %916 = llvm.mlir.constant(1 : index) : i64
    %917 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %918 = llvm.insertvalue %916, %917[0] : !llvm.struct<(i64, ptr)> 
    %919 = llvm.insertvalue %915, %918[1] : !llvm.struct<(i64, ptr)> 
    %920 = builtin.unrealized_conversion_cast %919 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    call @comet_print_memref_i64(%920) : (memref<*xi64>) -> ()
    %921 = llvm.mlir.constant(1 : index) : i64
    %922 = llvm.alloca %921 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %698, %922 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %923 = llvm.mlir.constant(1 : index) : i64
    %924 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %925 = llvm.insertvalue %923, %924[0] : !llvm.struct<(i64, ptr)> 
    %926 = llvm.insertvalue %922, %925[1] : !llvm.struct<(i64, ptr)> 
    %927 = builtin.unrealized_conversion_cast %926 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    call @comet_print_memref_i64(%927) : (memref<*xi64>) -> ()
    %928 = llvm.mlir.constant(1 : index) : i64
    %929 = llvm.alloca %928 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %710, %929 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %930 = llvm.mlir.constant(1 : index) : i64
    %931 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %932 = llvm.insertvalue %930, %931[0] : !llvm.struct<(i64, ptr)> 
    %933 = llvm.insertvalue %929, %932[1] : !llvm.struct<(i64, ptr)> 
    %934 = builtin.unrealized_conversion_cast %933 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    call @comet_print_memref_f64(%934) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_i64(memref<*xi64>)
  func.func private @comet_print_memref_index(memref<*xindex>)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertFuncToLLVMPass (convert-func-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %idx-1 = index.constant -1
    %0 = builtin.unrealized_conversion_cast %idx-1 : index to i64
    %idx1 = index.constant 1
    %1 = builtin.unrealized_conversion_cast %idx1 : index to i64
    %idx0 = index.constant 0
    %2 = builtin.unrealized_conversion_cast %idx0 : index to i64
    %3 = builtin.unrealized_conversion_cast %idx0 : index to i64
    %4 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %5 = llvm.mlir.constant(0 : i64) : i64
    %6 = llvm.mlir.constant(10 : index) : i64
    %7 = builtin.unrealized_conversion_cast %6 : i64 to index
    %8 = builtin.unrealized_conversion_cast %7 : index to i64
    %9 = llvm.mlir.constant(9 : index) : i64
    %10 = builtin.unrealized_conversion_cast %9 : i64 to index
    %11 = builtin.unrealized_conversion_cast %10 : index to i64
    %12 = llvm.mlir.constant(8 : index) : i64
    %13 = builtin.unrealized_conversion_cast %12 : i64 to index
    %14 = builtin.unrealized_conversion_cast %13 : index to i64
    %15 = llvm.mlir.constant(7 : index) : i64
    %16 = builtin.unrealized_conversion_cast %15 : i64 to index
    %17 = builtin.unrealized_conversion_cast %16 : index to i64
    %18 = llvm.mlir.constant(6 : index) : i64
    %19 = builtin.unrealized_conversion_cast %18 : i64 to index
    %20 = builtin.unrealized_conversion_cast %19 : index to i64
    %21 = llvm.mlir.constant(5 : index) : i64
    %22 = builtin.unrealized_conversion_cast %21 : i64 to index
    %23 = builtin.unrealized_conversion_cast %22 : index to i64
    %24 = llvm.mlir.constant(4 : index) : i64
    %25 = builtin.unrealized_conversion_cast %24 : i64 to index
    %26 = builtin.unrealized_conversion_cast %25 : index to i64
    %27 = llvm.mlir.constant(1 : i32) : i32
    %28 = llvm.mlir.constant(0 : i32) : i32
    %29 = llvm.mlir.constant(3 : index) : i64
    %30 = builtin.unrealized_conversion_cast %29 : i64 to index
    %31 = builtin.unrealized_conversion_cast %30 : index to i64
    %32 = llvm.mlir.constant(2 : index) : i64
    %33 = builtin.unrealized_conversion_cast %32 : i64 to index
    %34 = builtin.unrealized_conversion_cast %33 : index to i64
    %35 = llvm.mlir.constant(-1 : index) : i64
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = builtin.unrealized_conversion_cast %36 : i64 to index
    %38 = builtin.unrealized_conversion_cast %37 : index to i64
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = builtin.unrealized_conversion_cast %39 : i64 to index
    %41 = builtin.unrealized_conversion_cast %40 : index to i64
    %42 = llvm.mlir.constant(13 : index) : i64
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.mlir.zero : !llvm.ptr
    %45 = llvm.getelementptr %44[%42] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %46 = llvm.ptrtoint %45 : !llvm.ptr to i64
    %47 = llvm.call @malloc(%46) : (i64) -> !llvm.ptr
    %48 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %49 = llvm.insertvalue %47, %48[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.insertvalue %47, %49[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.insertvalue %51, %50[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.insertvalue %42, %52[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.insertvalue %43, %53[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.alloca %55 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %54, %56 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %59 = llvm.insertvalue %57, %58[0] : !llvm.struct<(i64, ptr)> 
    %60 = llvm.insertvalue %56, %59[1] : !llvm.struct<(i64, ptr)> 
    %61 = builtin.unrealized_conversion_cast %60 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %62 = llvm.extractvalue %60[0] : !llvm.struct<(i64, ptr)> 
    %63 = llvm.extractvalue %60[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%28, %39, %35, %36, %35, %62, %63, %27) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %64 = llvm.extractvalue %54[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.getelementptr %64[%41] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %66 = llvm.load %65 : !llvm.ptr -> i64
    %67 = builtin.unrealized_conversion_cast %66 : i64 to index
    %68 = llvm.extractvalue %54[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.getelementptr %68[%38] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %70 = llvm.load %69 : !llvm.ptr -> i64
    %71 = builtin.unrealized_conversion_cast %70 : i64 to index
    %72 = llvm.extractvalue %54[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.getelementptr %72[%34] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %74 = llvm.load %73 : !llvm.ptr -> i64
    %75 = builtin.unrealized_conversion_cast %74 : i64 to index
    %76 = llvm.extractvalue %54[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.getelementptr %76[%31] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %78 = llvm.load %77 : !llvm.ptr -> i64
    %79 = builtin.unrealized_conversion_cast %78 : i64 to index
    %80 = llvm.extractvalue %54[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %81 = llvm.getelementptr %80[%26] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %82 = llvm.load %81 : !llvm.ptr -> i64
    %83 = builtin.unrealized_conversion_cast %82 : i64 to index
    %84 = llvm.extractvalue %54[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %85 = llvm.getelementptr %84[%23] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %86 = llvm.load %85 : !llvm.ptr -> i64
    %87 = builtin.unrealized_conversion_cast %86 : i64 to index
    %88 = llvm.extractvalue %54[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.getelementptr %88[%20] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %90 = llvm.load %89 : !llvm.ptr -> i64
    %91 = builtin.unrealized_conversion_cast %90 : i64 to index
    %92 = llvm.extractvalue %54[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %93 = llvm.getelementptr %92[%17] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %94 = llvm.load %93 : !llvm.ptr -> i64
    %95 = builtin.unrealized_conversion_cast %94 : i64 to index
    %96 = llvm.extractvalue %54[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.getelementptr %96[%14] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %98 = llvm.load %97 : !llvm.ptr -> i64
    %99 = builtin.unrealized_conversion_cast %98 : i64 to index
    %100 = llvm.extractvalue %54[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %101 = llvm.getelementptr %100[%11] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %102 = llvm.load %101 : !llvm.ptr -> i64
    %103 = builtin.unrealized_conversion_cast %102 : i64 to index
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.mlir.zero : !llvm.ptr
    %106 = llvm.getelementptr %105[%66] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %107 = llvm.ptrtoint %106 : !llvm.ptr to i64
    %108 = llvm.call @malloc(%107) : (i64) -> !llvm.ptr
    %109 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %110 = llvm.insertvalue %108, %109[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.insertvalue %108, %110[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %112 = llvm.mlir.constant(0 : index) : i64
    %113 = llvm.insertvalue %112, %111[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %114 = llvm.insertvalue %66, %113[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %115 = llvm.insertvalue %104, %114[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%39 : i64)
  ^bb1(%116: i64):  // 2 preds: ^bb0, ^bb2
    %117 = builtin.unrealized_conversion_cast %116 : i64 to index
    %118 = builtin.unrealized_conversion_cast %117 : index to i64
    %119 = llvm.icmp "slt" %116, %66 : i64
    llvm.cond_br %119, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %120 = llvm.extractvalue %115[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %121 = llvm.getelementptr %120[%118] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %121 : i64, !llvm.ptr
    %122 = llvm.add %116, %36  : i64
    llvm.br ^bb1(%122 : i64)
  ^bb3:  // pred: ^bb1
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.alloca %123 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %115, %124 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %127 = llvm.insertvalue %125, %126[0] : !llvm.struct<(i64, ptr)> 
    %128 = llvm.insertvalue %124, %127[1] : !llvm.struct<(i64, ptr)> 
    %129 = builtin.unrealized_conversion_cast %128 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.zero : !llvm.ptr
    %132 = llvm.getelementptr %131[%70] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %133 = llvm.ptrtoint %132 : !llvm.ptr to i64
    %134 = llvm.call @malloc(%133) : (i64) -> !llvm.ptr
    %135 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %136 = llvm.insertvalue %134, %135[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %137 = llvm.insertvalue %134, %136[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %138 = llvm.mlir.constant(0 : index) : i64
    %139 = llvm.insertvalue %138, %137[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %140 = llvm.insertvalue %70, %139[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %141 = llvm.insertvalue %130, %140[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%39 : i64)
  ^bb4(%142: i64):  // 2 preds: ^bb3, ^bb5
    %143 = builtin.unrealized_conversion_cast %142 : i64 to index
    %144 = builtin.unrealized_conversion_cast %143 : index to i64
    %145 = llvm.icmp "slt" %142, %70 : i64
    llvm.cond_br %145, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %146 = llvm.extractvalue %141[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %147 = llvm.getelementptr %146[%144] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %147 : i64, !llvm.ptr
    %148 = llvm.add %142, %36  : i64
    llvm.br ^bb4(%148 : i64)
  ^bb6:  // pred: ^bb4
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.alloca %149 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %141, %150 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %153 = llvm.insertvalue %151, %152[0] : !llvm.struct<(i64, ptr)> 
    %154 = llvm.insertvalue %150, %153[1] : !llvm.struct<(i64, ptr)> 
    %155 = builtin.unrealized_conversion_cast %154 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.mlir.zero : !llvm.ptr
    %158 = llvm.getelementptr %157[%74] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %159 = llvm.ptrtoint %158 : !llvm.ptr to i64
    %160 = llvm.call @malloc(%159) : (i64) -> !llvm.ptr
    %161 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %162 = llvm.insertvalue %160, %161[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %163 = llvm.insertvalue %160, %162[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.insertvalue %164, %163[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.insertvalue %74, %165[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %167 = llvm.insertvalue %156, %166[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%39 : i64)
  ^bb7(%168: i64):  // 2 preds: ^bb6, ^bb8
    %169 = builtin.unrealized_conversion_cast %168 : i64 to index
    %170 = builtin.unrealized_conversion_cast %169 : index to i64
    %171 = llvm.icmp "slt" %168, %74 : i64
    llvm.cond_br %171, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %172 = llvm.extractvalue %167[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %173 = llvm.getelementptr %172[%170] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %173 : i64, !llvm.ptr
    %174 = llvm.add %168, %36  : i64
    llvm.br ^bb7(%174 : i64)
  ^bb9:  // pred: ^bb7
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.alloca %175 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %167, %176 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %179 = llvm.insertvalue %177, %178[0] : !llvm.struct<(i64, ptr)> 
    %180 = llvm.insertvalue %176, %179[1] : !llvm.struct<(i64, ptr)> 
    %181 = builtin.unrealized_conversion_cast %180 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.mlir.zero : !llvm.ptr
    %184 = llvm.getelementptr %183[%78] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %185 = llvm.ptrtoint %184 : !llvm.ptr to i64
    %186 = llvm.call @malloc(%185) : (i64) -> !llvm.ptr
    %187 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %188 = llvm.insertvalue %186, %187[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %189 = llvm.insertvalue %186, %188[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.insertvalue %190, %189[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %192 = llvm.insertvalue %78, %191[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %193 = llvm.insertvalue %182, %192[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%39 : i64)
  ^bb10(%194: i64):  // 2 preds: ^bb9, ^bb11
    %195 = builtin.unrealized_conversion_cast %194 : i64 to index
    %196 = builtin.unrealized_conversion_cast %195 : index to i64
    %197 = llvm.icmp "slt" %194, %78 : i64
    llvm.cond_br %197, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %198 = llvm.extractvalue %193[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %199 = llvm.getelementptr %198[%196] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %199 : i64, !llvm.ptr
    %200 = llvm.add %194, %36  : i64
    llvm.br ^bb10(%200 : i64)
  ^bb12:  // pred: ^bb10
    %201 = llvm.mlir.constant(1 : index) : i64
    %202 = llvm.alloca %201 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %193, %202 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %205 = llvm.insertvalue %203, %204[0] : !llvm.struct<(i64, ptr)> 
    %206 = llvm.insertvalue %202, %205[1] : !llvm.struct<(i64, ptr)> 
    %207 = builtin.unrealized_conversion_cast %206 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.zero : !llvm.ptr
    %210 = llvm.getelementptr %209[%82] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %211 = llvm.ptrtoint %210 : !llvm.ptr to i64
    %212 = llvm.call @malloc(%211) : (i64) -> !llvm.ptr
    %213 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %214 = llvm.insertvalue %212, %213[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %215 = llvm.insertvalue %212, %214[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %216 = llvm.mlir.constant(0 : index) : i64
    %217 = llvm.insertvalue %216, %215[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %218 = llvm.insertvalue %82, %217[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %219 = llvm.insertvalue %208, %218[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%39 : i64)
  ^bb13(%220: i64):  // 2 preds: ^bb12, ^bb14
    %221 = builtin.unrealized_conversion_cast %220 : i64 to index
    %222 = builtin.unrealized_conversion_cast %221 : index to i64
    %223 = llvm.icmp "slt" %220, %82 : i64
    llvm.cond_br %223, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %224 = llvm.extractvalue %219[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %225 = llvm.getelementptr %224[%222] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %225 : i64, !llvm.ptr
    %226 = llvm.add %220, %36  : i64
    llvm.br ^bb13(%226 : i64)
  ^bb15:  // pred: ^bb13
    %227 = llvm.mlir.constant(1 : index) : i64
    %228 = llvm.alloca %227 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %219, %228 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %231 = llvm.insertvalue %229, %230[0] : !llvm.struct<(i64, ptr)> 
    %232 = llvm.insertvalue %228, %231[1] : !llvm.struct<(i64, ptr)> 
    %233 = builtin.unrealized_conversion_cast %232 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.mlir.zero : !llvm.ptr
    %236 = llvm.getelementptr %235[%86] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %237 = llvm.ptrtoint %236 : !llvm.ptr to i64
    %238 = llvm.call @malloc(%237) : (i64) -> !llvm.ptr
    %239 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %240 = llvm.insertvalue %238, %239[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %241 = llvm.insertvalue %238, %240[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.insertvalue %242, %241[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %244 = llvm.insertvalue %86, %243[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %245 = llvm.insertvalue %234, %244[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%39 : i64)
  ^bb16(%246: i64):  // 2 preds: ^bb15, ^bb17
    %247 = builtin.unrealized_conversion_cast %246 : i64 to index
    %248 = builtin.unrealized_conversion_cast %247 : index to i64
    %249 = llvm.icmp "slt" %246, %86 : i64
    llvm.cond_br %249, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %250 = llvm.extractvalue %245[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.getelementptr %250[%248] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %251 : i64, !llvm.ptr
    %252 = llvm.add %246, %36  : i64
    llvm.br ^bb16(%252 : i64)
  ^bb18:  // pred: ^bb16
    %253 = llvm.mlir.constant(1 : index) : i64
    %254 = llvm.alloca %253 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %245, %254 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %257 = llvm.insertvalue %255, %256[0] : !llvm.struct<(i64, ptr)> 
    %258 = llvm.insertvalue %254, %257[1] : !llvm.struct<(i64, ptr)> 
    %259 = builtin.unrealized_conversion_cast %258 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %260 = llvm.mlir.constant(1 : index) : i64
    %261 = llvm.mlir.zero : !llvm.ptr
    %262 = llvm.getelementptr %261[%90] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %263 = llvm.ptrtoint %262 : !llvm.ptr to i64
    %264 = llvm.call @malloc(%263) : (i64) -> !llvm.ptr
    %265 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %266 = llvm.insertvalue %264, %265[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.insertvalue %264, %266[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %268 = llvm.mlir.constant(0 : index) : i64
    %269 = llvm.insertvalue %268, %267[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %270 = llvm.insertvalue %90, %269[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %271 = llvm.insertvalue %260, %270[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%39 : i64)
  ^bb19(%272: i64):  // 2 preds: ^bb18, ^bb20
    %273 = builtin.unrealized_conversion_cast %272 : i64 to index
    %274 = builtin.unrealized_conversion_cast %273 : index to i64
    %275 = llvm.icmp "slt" %272, %90 : i64
    llvm.cond_br %275, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %276 = llvm.extractvalue %271[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %277 = llvm.getelementptr %276[%274] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %277 : i64, !llvm.ptr
    %278 = llvm.add %272, %36  : i64
    llvm.br ^bb19(%278 : i64)
  ^bb21:  // pred: ^bb19
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.alloca %279 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %271, %280 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %283 = llvm.insertvalue %281, %282[0] : !llvm.struct<(i64, ptr)> 
    %284 = llvm.insertvalue %280, %283[1] : !llvm.struct<(i64, ptr)> 
    %285 = builtin.unrealized_conversion_cast %284 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.mlir.zero : !llvm.ptr
    %288 = llvm.getelementptr %287[%94] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %289 = llvm.ptrtoint %288 : !llvm.ptr to i64
    %290 = llvm.call @malloc(%289) : (i64) -> !llvm.ptr
    %291 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %292 = llvm.insertvalue %290, %291[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %293 = llvm.insertvalue %290, %292[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %294 = llvm.mlir.constant(0 : index) : i64
    %295 = llvm.insertvalue %294, %293[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %296 = llvm.insertvalue %94, %295[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %297 = llvm.insertvalue %286, %296[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%39 : i64)
  ^bb22(%298: i64):  // 2 preds: ^bb21, ^bb23
    %299 = builtin.unrealized_conversion_cast %298 : i64 to index
    %300 = builtin.unrealized_conversion_cast %299 : index to i64
    %301 = llvm.icmp "slt" %298, %94 : i64
    llvm.cond_br %301, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %302 = llvm.extractvalue %297[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %303 = llvm.getelementptr %302[%300] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %303 : i64, !llvm.ptr
    %304 = llvm.add %298, %36  : i64
    llvm.br ^bb22(%304 : i64)
  ^bb24:  // pred: ^bb22
    %305 = llvm.mlir.constant(1 : index) : i64
    %306 = llvm.alloca %305 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %297, %306 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %309 = llvm.insertvalue %307, %308[0] : !llvm.struct<(i64, ptr)> 
    %310 = llvm.insertvalue %306, %309[1] : !llvm.struct<(i64, ptr)> 
    %311 = builtin.unrealized_conversion_cast %310 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.mlir.zero : !llvm.ptr
    %314 = llvm.getelementptr %313[%98] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %315 = llvm.ptrtoint %314 : !llvm.ptr to i64
    %316 = llvm.call @malloc(%315) : (i64) -> !llvm.ptr
    %317 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %318 = llvm.insertvalue %316, %317[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %319 = llvm.insertvalue %316, %318[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %320 = llvm.mlir.constant(0 : index) : i64
    %321 = llvm.insertvalue %320, %319[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %322 = llvm.insertvalue %98, %321[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %323 = llvm.insertvalue %312, %322[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%39 : i64)
  ^bb25(%324: i64):  // 2 preds: ^bb24, ^bb26
    %325 = builtin.unrealized_conversion_cast %324 : i64 to index
    %326 = builtin.unrealized_conversion_cast %325 : index to i64
    %327 = llvm.icmp "slt" %324, %98 : i64
    llvm.cond_br %327, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %328 = llvm.extractvalue %323[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %329 = llvm.getelementptr %328[%326] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %4, %329 : f64, !llvm.ptr
    %330 = llvm.add %324, %36  : i64
    llvm.br ^bb25(%330 : i64)
  ^bb27:  // pred: ^bb25
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.alloca %331 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %323, %332 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %335 = llvm.insertvalue %333, %334[0] : !llvm.struct<(i64, ptr)> 
    %336 = llvm.insertvalue %332, %335[1] : !llvm.struct<(i64, ptr)> 
    %337 = builtin.unrealized_conversion_cast %336 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    %338 = llvm.extractvalue %128[0] : !llvm.struct<(i64, ptr)> 
    %339 = llvm.extractvalue %128[1] : !llvm.struct<(i64, ptr)> 
    %340 = llvm.extractvalue %154[0] : !llvm.struct<(i64, ptr)> 
    %341 = llvm.extractvalue %154[1] : !llvm.struct<(i64, ptr)> 
    %342 = llvm.extractvalue %180[0] : !llvm.struct<(i64, ptr)> 
    %343 = llvm.extractvalue %180[1] : !llvm.struct<(i64, ptr)> 
    %344 = llvm.extractvalue %206[0] : !llvm.struct<(i64, ptr)> 
    %345 = llvm.extractvalue %206[1] : !llvm.struct<(i64, ptr)> 
    %346 = llvm.extractvalue %232[0] : !llvm.struct<(i64, ptr)> 
    %347 = llvm.extractvalue %232[1] : !llvm.struct<(i64, ptr)> 
    %348 = llvm.extractvalue %258[0] : !llvm.struct<(i64, ptr)> 
    %349 = llvm.extractvalue %258[1] : !llvm.struct<(i64, ptr)> 
    %350 = llvm.extractvalue %284[0] : !llvm.struct<(i64, ptr)> 
    %351 = llvm.extractvalue %284[1] : !llvm.struct<(i64, ptr)> 
    %352 = llvm.extractvalue %310[0] : !llvm.struct<(i64, ptr)> 
    %353 = llvm.extractvalue %310[1] : !llvm.struct<(i64, ptr)> 
    %354 = llvm.extractvalue %336[0] : !llvm.struct<(i64, ptr)> 
    %355 = llvm.extractvalue %336[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64_i64(%28, %39, %35, %36, %35, %338, %339, %340, %341, %342, %343, %344, %345, %346, %347, %348, %349, %350, %351, %352, %353, %354, %355, %27) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %356 = llvm.mlir.constant(13 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    %358 = llvm.mlir.zero : !llvm.ptr
    %359 = llvm.getelementptr %358[%356] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %360 = llvm.ptrtoint %359 : !llvm.ptr to i64
    %361 = llvm.call @malloc(%360) : (i64) -> !llvm.ptr
    %362 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %363 = llvm.insertvalue %361, %362[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %364 = llvm.insertvalue %361, %363[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %365 = llvm.mlir.constant(0 : index) : i64
    %366 = llvm.insertvalue %365, %364[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %367 = llvm.insertvalue %356, %366[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %368 = llvm.insertvalue %357, %367[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.alloca %369 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %368, %370 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %371 = llvm.mlir.constant(1 : index) : i64
    %372 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %373 = llvm.insertvalue %371, %372[0] : !llvm.struct<(i64, ptr)> 
    %374 = llvm.insertvalue %370, %373[1] : !llvm.struct<(i64, ptr)> 
    %375 = builtin.unrealized_conversion_cast %374 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %376 = llvm.extractvalue %374[0] : !llvm.struct<(i64, ptr)> 
    %377 = llvm.extractvalue %374[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%27, %39, %35, %36, %35, %376, %377, %27) {filename = "SPARSE_FILE_NAME1"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %378 = llvm.extractvalue %368[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %379 = llvm.getelementptr %378[%41] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %380 = llvm.load %379 : !llvm.ptr -> i64
    %381 = builtin.unrealized_conversion_cast %380 : i64 to index
    %382 = llvm.extractvalue %368[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %383 = llvm.getelementptr %382[%38] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %384 = llvm.load %383 : !llvm.ptr -> i64
    %385 = builtin.unrealized_conversion_cast %384 : i64 to index
    %386 = llvm.extractvalue %368[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %387 = llvm.getelementptr %386[%34] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %388 = llvm.load %387 : !llvm.ptr -> i64
    %389 = builtin.unrealized_conversion_cast %388 : i64 to index
    %390 = llvm.extractvalue %368[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %391 = llvm.getelementptr %390[%31] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %392 = llvm.load %391 : !llvm.ptr -> i64
    %393 = builtin.unrealized_conversion_cast %392 : i64 to index
    %394 = llvm.extractvalue %368[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %395 = llvm.getelementptr %394[%26] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %396 = llvm.load %395 : !llvm.ptr -> i64
    %397 = builtin.unrealized_conversion_cast %396 : i64 to index
    %398 = llvm.extractvalue %368[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %399 = llvm.getelementptr %398[%23] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %400 = llvm.load %399 : !llvm.ptr -> i64
    %401 = builtin.unrealized_conversion_cast %400 : i64 to index
    %402 = llvm.extractvalue %368[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %403 = llvm.getelementptr %402[%20] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %404 = llvm.load %403 : !llvm.ptr -> i64
    %405 = builtin.unrealized_conversion_cast %404 : i64 to index
    %406 = llvm.extractvalue %368[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %407 = llvm.getelementptr %406[%17] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %408 = llvm.load %407 : !llvm.ptr -> i64
    %409 = builtin.unrealized_conversion_cast %408 : i64 to index
    %410 = llvm.extractvalue %368[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %411 = llvm.getelementptr %410[%14] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %412 = llvm.load %411 : !llvm.ptr -> i64
    %413 = builtin.unrealized_conversion_cast %412 : i64 to index
    %414 = llvm.extractvalue %368[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %415 = llvm.getelementptr %414[%8] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %416 = llvm.load %415 : !llvm.ptr -> i64
    %417 = llvm.mlir.constant(1 : index) : i64
    %418 = llvm.mlir.zero : !llvm.ptr
    %419 = llvm.getelementptr %418[%380] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %420 = llvm.ptrtoint %419 : !llvm.ptr to i64
    %421 = llvm.call @malloc(%420) : (i64) -> !llvm.ptr
    %422 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %423 = llvm.insertvalue %421, %422[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %424 = llvm.insertvalue %421, %423[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %425 = llvm.mlir.constant(0 : index) : i64
    %426 = llvm.insertvalue %425, %424[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %427 = llvm.insertvalue %380, %426[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %428 = llvm.insertvalue %417, %427[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb28(%39 : i64)
  ^bb28(%429: i64):  // 2 preds: ^bb27, ^bb29
    %430 = builtin.unrealized_conversion_cast %429 : i64 to index
    %431 = builtin.unrealized_conversion_cast %430 : index to i64
    %432 = llvm.icmp "slt" %429, %380 : i64
    llvm.cond_br %432, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %433 = llvm.extractvalue %428[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %434 = llvm.getelementptr %433[%431] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %434 : i64, !llvm.ptr
    %435 = llvm.add %429, %36  : i64
    llvm.br ^bb28(%435 : i64)
  ^bb30:  // pred: ^bb28
    %436 = llvm.mlir.constant(1 : index) : i64
    %437 = llvm.alloca %436 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %428, %437 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %438 = llvm.mlir.constant(1 : index) : i64
    %439 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %440 = llvm.insertvalue %438, %439[0] : !llvm.struct<(i64, ptr)> 
    %441 = llvm.insertvalue %437, %440[1] : !llvm.struct<(i64, ptr)> 
    %442 = builtin.unrealized_conversion_cast %441 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %443 = llvm.mlir.constant(1 : index) : i64
    %444 = llvm.mlir.zero : !llvm.ptr
    %445 = llvm.getelementptr %444[%384] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %446 = llvm.ptrtoint %445 : !llvm.ptr to i64
    %447 = llvm.call @malloc(%446) : (i64) -> !llvm.ptr
    %448 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %449 = llvm.insertvalue %447, %448[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %450 = llvm.insertvalue %447, %449[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %451 = llvm.mlir.constant(0 : index) : i64
    %452 = llvm.insertvalue %451, %450[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %453 = llvm.insertvalue %384, %452[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %454 = llvm.insertvalue %443, %453[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb31(%39 : i64)
  ^bb31(%455: i64):  // 2 preds: ^bb30, ^bb32
    %456 = builtin.unrealized_conversion_cast %455 : i64 to index
    %457 = builtin.unrealized_conversion_cast %456 : index to i64
    %458 = llvm.icmp "slt" %455, %384 : i64
    llvm.cond_br %458, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %459 = llvm.extractvalue %454[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %460 = llvm.getelementptr %459[%457] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %460 : i64, !llvm.ptr
    %461 = llvm.add %455, %36  : i64
    llvm.br ^bb31(%461 : i64)
  ^bb33:  // pred: ^bb31
    %462 = llvm.mlir.constant(1 : index) : i64
    %463 = llvm.alloca %462 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %454, %463 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %464 = llvm.mlir.constant(1 : index) : i64
    %465 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %466 = llvm.insertvalue %464, %465[0] : !llvm.struct<(i64, ptr)> 
    %467 = llvm.insertvalue %463, %466[1] : !llvm.struct<(i64, ptr)> 
    %468 = builtin.unrealized_conversion_cast %467 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %469 = llvm.mlir.constant(1 : index) : i64
    %470 = llvm.mlir.zero : !llvm.ptr
    %471 = llvm.getelementptr %470[%388] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %472 = llvm.ptrtoint %471 : !llvm.ptr to i64
    %473 = llvm.call @malloc(%472) : (i64) -> !llvm.ptr
    %474 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %475 = llvm.insertvalue %473, %474[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %476 = llvm.insertvalue %473, %475[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %477 = llvm.mlir.constant(0 : index) : i64
    %478 = llvm.insertvalue %477, %476[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %479 = llvm.insertvalue %388, %478[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %480 = llvm.insertvalue %469, %479[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb34(%39 : i64)
  ^bb34(%481: i64):  // 2 preds: ^bb33, ^bb35
    %482 = builtin.unrealized_conversion_cast %481 : i64 to index
    %483 = builtin.unrealized_conversion_cast %482 : index to i64
    %484 = llvm.icmp "slt" %481, %388 : i64
    llvm.cond_br %484, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %485 = llvm.extractvalue %480[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %486 = llvm.getelementptr %485[%483] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %486 : i64, !llvm.ptr
    %487 = llvm.add %481, %36  : i64
    llvm.br ^bb34(%487 : i64)
  ^bb36:  // pred: ^bb34
    %488 = llvm.mlir.constant(1 : index) : i64
    %489 = llvm.alloca %488 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %480, %489 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %490 = llvm.mlir.constant(1 : index) : i64
    %491 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %492 = llvm.insertvalue %490, %491[0] : !llvm.struct<(i64, ptr)> 
    %493 = llvm.insertvalue %489, %492[1] : !llvm.struct<(i64, ptr)> 
    %494 = builtin.unrealized_conversion_cast %493 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %495 = llvm.mlir.constant(1 : index) : i64
    %496 = llvm.mlir.zero : !llvm.ptr
    %497 = llvm.getelementptr %496[%392] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %498 = llvm.ptrtoint %497 : !llvm.ptr to i64
    %499 = llvm.call @malloc(%498) : (i64) -> !llvm.ptr
    %500 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %501 = llvm.insertvalue %499, %500[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %502 = llvm.insertvalue %499, %501[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %503 = llvm.mlir.constant(0 : index) : i64
    %504 = llvm.insertvalue %503, %502[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %505 = llvm.insertvalue %392, %504[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %506 = llvm.insertvalue %495, %505[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb37(%39 : i64)
  ^bb37(%507: i64):  // 2 preds: ^bb36, ^bb38
    %508 = builtin.unrealized_conversion_cast %507 : i64 to index
    %509 = builtin.unrealized_conversion_cast %508 : index to i64
    %510 = llvm.icmp "slt" %507, %392 : i64
    llvm.cond_br %510, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %511 = llvm.extractvalue %506[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %512 = llvm.getelementptr %511[%509] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %512 : i64, !llvm.ptr
    %513 = llvm.add %507, %36  : i64
    llvm.br ^bb37(%513 : i64)
  ^bb39:  // pred: ^bb37
    %514 = llvm.mlir.constant(1 : index) : i64
    %515 = llvm.alloca %514 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %506, %515 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %516 = llvm.mlir.constant(1 : index) : i64
    %517 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %518 = llvm.insertvalue %516, %517[0] : !llvm.struct<(i64, ptr)> 
    %519 = llvm.insertvalue %515, %518[1] : !llvm.struct<(i64, ptr)> 
    %520 = builtin.unrealized_conversion_cast %519 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %521 = llvm.mlir.constant(1 : index) : i64
    %522 = llvm.mlir.zero : !llvm.ptr
    %523 = llvm.getelementptr %522[%396] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %524 = llvm.ptrtoint %523 : !llvm.ptr to i64
    %525 = llvm.call @malloc(%524) : (i64) -> !llvm.ptr
    %526 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %527 = llvm.insertvalue %525, %526[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %528 = llvm.insertvalue %525, %527[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %529 = llvm.mlir.constant(0 : index) : i64
    %530 = llvm.insertvalue %529, %528[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %531 = llvm.insertvalue %396, %530[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %532 = llvm.insertvalue %521, %531[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb40(%39 : i64)
  ^bb40(%533: i64):  // 2 preds: ^bb39, ^bb41
    %534 = builtin.unrealized_conversion_cast %533 : i64 to index
    %535 = builtin.unrealized_conversion_cast %534 : index to i64
    %536 = llvm.icmp "slt" %533, %396 : i64
    llvm.cond_br %536, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %537 = llvm.extractvalue %532[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %538 = llvm.getelementptr %537[%535] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %538 : i64, !llvm.ptr
    %539 = llvm.add %533, %36  : i64
    llvm.br ^bb40(%539 : i64)
  ^bb42:  // pred: ^bb40
    %540 = llvm.mlir.constant(1 : index) : i64
    %541 = llvm.alloca %540 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %532, %541 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %542 = llvm.mlir.constant(1 : index) : i64
    %543 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %544 = llvm.insertvalue %542, %543[0] : !llvm.struct<(i64, ptr)> 
    %545 = llvm.insertvalue %541, %544[1] : !llvm.struct<(i64, ptr)> 
    %546 = builtin.unrealized_conversion_cast %545 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %547 = llvm.mlir.constant(1 : index) : i64
    %548 = llvm.mlir.zero : !llvm.ptr
    %549 = llvm.getelementptr %548[%400] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %550 = llvm.ptrtoint %549 : !llvm.ptr to i64
    %551 = llvm.call @malloc(%550) : (i64) -> !llvm.ptr
    %552 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %553 = llvm.insertvalue %551, %552[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %554 = llvm.insertvalue %551, %553[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %555 = llvm.mlir.constant(0 : index) : i64
    %556 = llvm.insertvalue %555, %554[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %557 = llvm.insertvalue %400, %556[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %558 = llvm.insertvalue %547, %557[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb43(%39 : i64)
  ^bb43(%559: i64):  // 2 preds: ^bb42, ^bb44
    %560 = builtin.unrealized_conversion_cast %559 : i64 to index
    %561 = builtin.unrealized_conversion_cast %560 : index to i64
    %562 = llvm.icmp "slt" %559, %400 : i64
    llvm.cond_br %562, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %563 = llvm.extractvalue %558[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %564 = llvm.getelementptr %563[%561] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %564 : i64, !llvm.ptr
    %565 = llvm.add %559, %36  : i64
    llvm.br ^bb43(%565 : i64)
  ^bb45:  // pred: ^bb43
    %566 = llvm.mlir.constant(1 : index) : i64
    %567 = llvm.alloca %566 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %558, %567 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %568 = llvm.mlir.constant(1 : index) : i64
    %569 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %570 = llvm.insertvalue %568, %569[0] : !llvm.struct<(i64, ptr)> 
    %571 = llvm.insertvalue %567, %570[1] : !llvm.struct<(i64, ptr)> 
    %572 = builtin.unrealized_conversion_cast %571 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %573 = llvm.mlir.constant(1 : index) : i64
    %574 = llvm.mlir.zero : !llvm.ptr
    %575 = llvm.getelementptr %574[%404] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %576 = llvm.ptrtoint %575 : !llvm.ptr to i64
    %577 = llvm.call @malloc(%576) : (i64) -> !llvm.ptr
    %578 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %579 = llvm.insertvalue %577, %578[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %580 = llvm.insertvalue %577, %579[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %581 = llvm.mlir.constant(0 : index) : i64
    %582 = llvm.insertvalue %581, %580[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %583 = llvm.insertvalue %404, %582[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %584 = llvm.insertvalue %573, %583[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb46(%39 : i64)
  ^bb46(%585: i64):  // 2 preds: ^bb45, ^bb47
    %586 = builtin.unrealized_conversion_cast %585 : i64 to index
    %587 = builtin.unrealized_conversion_cast %586 : index to i64
    %588 = llvm.icmp "slt" %585, %404 : i64
    llvm.cond_br %588, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %589 = llvm.extractvalue %584[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %590 = llvm.getelementptr %589[%587] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %590 : i64, !llvm.ptr
    %591 = llvm.add %585, %36  : i64
    llvm.br ^bb46(%591 : i64)
  ^bb48:  // pred: ^bb46
    %592 = llvm.mlir.constant(1 : index) : i64
    %593 = llvm.alloca %592 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %584, %593 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %594 = llvm.mlir.constant(1 : index) : i64
    %595 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %596 = llvm.insertvalue %594, %595[0] : !llvm.struct<(i64, ptr)> 
    %597 = llvm.insertvalue %593, %596[1] : !llvm.struct<(i64, ptr)> 
    %598 = builtin.unrealized_conversion_cast %597 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %599 = llvm.mlir.constant(1 : index) : i64
    %600 = llvm.mlir.zero : !llvm.ptr
    %601 = llvm.getelementptr %600[%408] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %602 = llvm.ptrtoint %601 : !llvm.ptr to i64
    %603 = llvm.call @malloc(%602) : (i64) -> !llvm.ptr
    %604 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %605 = llvm.insertvalue %603, %604[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %606 = llvm.insertvalue %603, %605[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %607 = llvm.mlir.constant(0 : index) : i64
    %608 = llvm.insertvalue %607, %606[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %609 = llvm.insertvalue %408, %608[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %610 = llvm.insertvalue %599, %609[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb49(%39 : i64)
  ^bb49(%611: i64):  // 2 preds: ^bb48, ^bb50
    %612 = builtin.unrealized_conversion_cast %611 : i64 to index
    %613 = builtin.unrealized_conversion_cast %612 : index to i64
    %614 = llvm.icmp "slt" %611, %408 : i64
    llvm.cond_br %614, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %615 = llvm.extractvalue %610[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %616 = llvm.getelementptr %615[%613] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %616 : i64, !llvm.ptr
    %617 = llvm.add %611, %36  : i64
    llvm.br ^bb49(%617 : i64)
  ^bb51:  // pred: ^bb49
    %618 = llvm.mlir.constant(1 : index) : i64
    %619 = llvm.alloca %618 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %610, %619 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %620 = llvm.mlir.constant(1 : index) : i64
    %621 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %622 = llvm.insertvalue %620, %621[0] : !llvm.struct<(i64, ptr)> 
    %623 = llvm.insertvalue %619, %622[1] : !llvm.struct<(i64, ptr)> 
    %624 = builtin.unrealized_conversion_cast %623 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %625 = llvm.mlir.constant(1 : index) : i64
    %626 = llvm.mlir.zero : !llvm.ptr
    %627 = llvm.getelementptr %626[%412] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %628 = llvm.ptrtoint %627 : !llvm.ptr to i64
    %629 = llvm.call @malloc(%628) : (i64) -> !llvm.ptr
    %630 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %631 = llvm.insertvalue %629, %630[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %632 = llvm.insertvalue %629, %631[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %633 = llvm.mlir.constant(0 : index) : i64
    %634 = llvm.insertvalue %633, %632[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %635 = llvm.insertvalue %412, %634[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %636 = llvm.insertvalue %625, %635[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb52(%39 : i64)
  ^bb52(%637: i64):  // 2 preds: ^bb51, ^bb53
    %638 = builtin.unrealized_conversion_cast %637 : i64 to index
    %639 = builtin.unrealized_conversion_cast %638 : index to i64
    %640 = llvm.icmp "slt" %637, %412 : i64
    llvm.cond_br %640, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %641 = llvm.extractvalue %636[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %642 = llvm.getelementptr %641[%639] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %4, %642 : f64, !llvm.ptr
    %643 = llvm.add %637, %36  : i64
    llvm.br ^bb52(%643 : i64)
  ^bb54:  // pred: ^bb52
    %644 = llvm.mlir.constant(1 : index) : i64
    %645 = llvm.alloca %644 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %636, %645 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %646 = llvm.mlir.constant(1 : index) : i64
    %647 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %648 = llvm.insertvalue %646, %647[0] : !llvm.struct<(i64, ptr)> 
    %649 = llvm.insertvalue %645, %648[1] : !llvm.struct<(i64, ptr)> 
    %650 = builtin.unrealized_conversion_cast %649 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    %651 = llvm.extractvalue %441[0] : !llvm.struct<(i64, ptr)> 
    %652 = llvm.extractvalue %441[1] : !llvm.struct<(i64, ptr)> 
    %653 = llvm.extractvalue %467[0] : !llvm.struct<(i64, ptr)> 
    %654 = llvm.extractvalue %467[1] : !llvm.struct<(i64, ptr)> 
    %655 = llvm.extractvalue %493[0] : !llvm.struct<(i64, ptr)> 
    %656 = llvm.extractvalue %493[1] : !llvm.struct<(i64, ptr)> 
    %657 = llvm.extractvalue %519[0] : !llvm.struct<(i64, ptr)> 
    %658 = llvm.extractvalue %519[1] : !llvm.struct<(i64, ptr)> 
    %659 = llvm.extractvalue %545[0] : !llvm.struct<(i64, ptr)> 
    %660 = llvm.extractvalue %545[1] : !llvm.struct<(i64, ptr)> 
    %661 = llvm.extractvalue %571[0] : !llvm.struct<(i64, ptr)> 
    %662 = llvm.extractvalue %571[1] : !llvm.struct<(i64, ptr)> 
    %663 = llvm.extractvalue %597[0] : !llvm.struct<(i64, ptr)> 
    %664 = llvm.extractvalue %597[1] : !llvm.struct<(i64, ptr)> 
    %665 = llvm.extractvalue %623[0] : !llvm.struct<(i64, ptr)> 
    %666 = llvm.extractvalue %623[1] : !llvm.struct<(i64, ptr)> 
    %667 = llvm.extractvalue %649[0] : !llvm.struct<(i64, ptr)> 
    %668 = llvm.extractvalue %649[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64_i64(%27, %39, %35, %36, %35, %651, %652, %653, %654, %655, %656, %657, %658, %659, %660, %661, %662, %663, %664, %665, %666, %667, %668, %27) {filename = "SPARSE_FILE_NAME1"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %669 = index.add %103, %idx1
    %670 = builtin.unrealized_conversion_cast %669 : index to i64
    %671 = llvm.mlir.constant(1 : index) : i64
    %672 = llvm.mlir.zero : !llvm.ptr
    %673 = llvm.getelementptr %672[%670] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %674 = llvm.ptrtoint %673 : !llvm.ptr to i64
    %675 = llvm.call @malloc(%674) : (i64) -> !llvm.ptr
    %676 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %677 = llvm.insertvalue %675, %676[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %678 = llvm.insertvalue %675, %677[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %679 = llvm.mlir.constant(0 : index) : i64
    %680 = llvm.insertvalue %679, %678[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %681 = llvm.insertvalue %670, %680[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %682 = llvm.insertvalue %671, %681[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %683 = llvm.extractvalue %682[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %684 = llvm.getelementptr %683[%3] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %5, %684 : i64, !llvm.ptr
    %685 = llvm.mlir.constant(1 : index) : i64
    %686 = llvm.mlir.zero : !llvm.ptr
    %687 = llvm.getelementptr %686[%416] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %688 = llvm.ptrtoint %687 : !llvm.ptr to i64
    %689 = llvm.call @malloc(%688) : (i64) -> !llvm.ptr
    %690 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %691 = llvm.insertvalue %689, %690[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %692 = llvm.insertvalue %689, %691[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %693 = llvm.mlir.constant(0 : index) : i64
    %694 = llvm.insertvalue %693, %692[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %695 = llvm.insertvalue %416, %694[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %696 = llvm.insertvalue %685, %695[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb55(%39, %2, %2 : i64, i64, i64)
  ^bb55(%697: i64, %698: i64, %699: i64):  // 2 preds: ^bb54, ^bb64
    %700 = builtin.unrealized_conversion_cast %699 : i64 to index
    %701 = builtin.unrealized_conversion_cast %698 : i64 to index
    %702 = builtin.unrealized_conversion_cast %697 : i64 to index
    %703 = builtin.unrealized_conversion_cast %702 : index to i64
    %704 = builtin.unrealized_conversion_cast %700 : index to i64
    %705 = llvm.icmp "slt" %697, %102 : i64
    llvm.cond_br %705, ^bb56, ^bb65
  ^bb56:  // pred: ^bb55
    %706 = llvm.add %697, %36  : i64
    %707 = builtin.unrealized_conversion_cast %706 : i64 to index
    %708 = builtin.unrealized_conversion_cast %707 : index to i64
    %709 = llvm.extractvalue %219[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %710 = llvm.getelementptr %709[%703] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %711 = llvm.load %710 : !llvm.ptr -> i64
    %712 = llvm.extractvalue %219[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %713 = llvm.getelementptr %712[%708] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %714 = llvm.load %713 : !llvm.ptr -> i64
    llvm.br ^bb57(%711, %699 : i64, i64)
  ^bb57(%715: i64, %716: i64):  // 2 preds: ^bb56, ^bb63
    %717 = builtin.unrealized_conversion_cast %715 : i64 to index
    %718 = builtin.unrealized_conversion_cast %717 : index to i64
    %719 = llvm.icmp "slt" %715, %714 : i64
    llvm.cond_br %719, ^bb58, ^bb64
  ^bb58:  // pred: ^bb57
    %720 = llvm.extractvalue %245[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %721 = llvm.getelementptr %720[%718] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %722 = llvm.load %721 : !llvm.ptr -> i64
    %723 = builtin.unrealized_conversion_cast %722 : i64 to index
    %724 = builtin.unrealized_conversion_cast %723 : index to i64
    %725 = llvm.add %722, %36  : i64
    %726 = builtin.unrealized_conversion_cast %725 : i64 to index
    %727 = builtin.unrealized_conversion_cast %726 : index to i64
    %728 = llvm.extractvalue %532[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %729 = llvm.getelementptr %728[%724] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %730 = llvm.load %729 : !llvm.ptr -> i64
    %731 = llvm.extractvalue %532[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %732 = llvm.getelementptr %731[%727] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %733 = llvm.load %732 : !llvm.ptr -> i64
    llvm.br ^bb59(%730, %716 : i64, i64)
  ^bb59(%734: i64, %735: i64):  // 2 preds: ^bb58, ^bb62
    %736 = builtin.unrealized_conversion_cast %735 : i64 to index
    %737 = builtin.unrealized_conversion_cast %734 : i64 to index
    %738 = builtin.unrealized_conversion_cast %737 : index to i64
    %739 = llvm.icmp "slt" %734, %733 : i64
    llvm.cond_br %739, ^bb60, ^bb63
  ^bb60:  // pred: ^bb59
    %740 = llvm.extractvalue %558[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %741 = llvm.getelementptr %740[%738] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %742 = llvm.load %741 : !llvm.ptr -> i64
    %743 = builtin.unrealized_conversion_cast %742 : i64 to index
    %744 = builtin.unrealized_conversion_cast %743 : index to i64
    %745 = index.add %701, %idx1
    %746 = builtin.unrealized_conversion_cast %745 : index to i64
    %747 = llvm.extractvalue %696[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %748 = llvm.getelementptr %747[%744] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %749 = llvm.load %748 : !llvm.ptr -> i64
    %750 = llvm.icmp "eq" %746, %749 : i64
    llvm.cond_br %750, ^bb62(%735 : i64), ^bb61
  ^bb61:  // pred: ^bb60
    %751 = llvm.extractvalue %696[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %752 = llvm.getelementptr %751[%744] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %746, %752 : i64, !llvm.ptr
    %753 = index.add %736, %idx1
    %754 = builtin.unrealized_conversion_cast %753 : index to i64
    llvm.br ^bb62(%754 : i64)
  ^bb62(%755: i64):  // 2 preds: ^bb60, ^bb61
    %756 = llvm.add %734, %36  : i64
    llvm.br ^bb59(%756, %755 : i64, i64)
  ^bb63:  // pred: ^bb59
    %757 = llvm.add %715, %36  : i64
    llvm.br ^bb57(%757, %735 : i64, i64)
  ^bb64:  // pred: ^bb57
    %758 = index.add %701, %idx1
    %759 = builtin.unrealized_conversion_cast %758 : index to i64
    %760 = builtin.unrealized_conversion_cast %758 : index to i64
    %761 = llvm.extractvalue %682[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %762 = llvm.getelementptr %761[%760] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %716, %762 : i64, !llvm.ptr
    llvm.br ^bb55(%706, %759, %716 : i64, i64, i64)
  ^bb65:  // pred: ^bb55
    %763 = llvm.mlir.constant(1 : index) : i64
    %764 = llvm.mlir.constant(1 : index) : i64
    %765 = llvm.mlir.zero : !llvm.ptr
    %766 = llvm.getelementptr %765[%763] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %767 = llvm.ptrtoint %766 : !llvm.ptr to i64
    %768 = llvm.call @malloc(%767) : (i64) -> !llvm.ptr
    %769 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %770 = llvm.insertvalue %768, %769[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %771 = llvm.insertvalue %768, %770[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %772 = llvm.mlir.constant(0 : index) : i64
    %773 = llvm.insertvalue %772, %771[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %774 = llvm.insertvalue %763, %773[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %775 = llvm.insertvalue %764, %774[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %776 = llvm.extractvalue %775[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %777 = llvm.getelementptr %776[%3] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %102, %777 : i64, !llvm.ptr
    %778 = llvm.mlir.constant(1 : index) : i64
    %779 = llvm.mlir.zero : !llvm.ptr
    %780 = llvm.getelementptr %779[%704] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %781 = llvm.ptrtoint %780 : !llvm.ptr to i64
    %782 = llvm.call @malloc(%781) : (i64) -> !llvm.ptr
    %783 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %784 = llvm.insertvalue %782, %783[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %785 = llvm.insertvalue %782, %784[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %786 = llvm.mlir.constant(0 : index) : i64
    %787 = llvm.insertvalue %786, %785[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %788 = llvm.insertvalue %704, %787[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %789 = llvm.insertvalue %778, %788[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %790 = llvm.mlir.constant(1 : index) : i64
    %791 = llvm.mlir.zero : !llvm.ptr
    %792 = llvm.getelementptr %791[%704] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %793 = llvm.ptrtoint %792 : !llvm.ptr to i64
    %794 = llvm.call @malloc(%793) : (i64) -> !llvm.ptr
    %795 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %796 = llvm.insertvalue %794, %795[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %797 = llvm.insertvalue %794, %796[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %798 = llvm.mlir.constant(0 : index) : i64
    %799 = llvm.insertvalue %798, %797[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %800 = llvm.insertvalue %704, %799[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %801 = llvm.insertvalue %790, %800[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb66(%2 : i64)
  ^bb66(%802: i64):  // 2 preds: ^bb65, ^bb67
    %803 = builtin.unrealized_conversion_cast %802 : i64 to index
    %804 = builtin.unrealized_conversion_cast %803 : index to i64
    %805 = llvm.icmp "slt" %802, %699 : i64
    llvm.cond_br %805, ^bb67, ^bb68
  ^bb67:  // pred: ^bb66
    %806 = llvm.extractvalue %801[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %807 = llvm.getelementptr %806[%804] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %4, %807 : f64, !llvm.ptr
    %808 = llvm.add %802, %1  : i64
    llvm.br ^bb66(%808 : i64)
  ^bb68:  // pred: ^bb66
    %809 = llvm.mlir.constant(1 : index) : i64
    %810 = llvm.mlir.zero : !llvm.ptr
    %811 = llvm.getelementptr %810[%416] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %812 = llvm.ptrtoint %811 : !llvm.ptr to i64
    %813 = llvm.mlir.constant(64 : index) : i64
    %814 = llvm.add %812, %813  : i64
    %815 = llvm.call @malloc(%814) : (i64) -> !llvm.ptr
    %816 = llvm.ptrtoint %815 : !llvm.ptr to i64
    %817 = llvm.mlir.constant(1 : index) : i64
    %818 = llvm.sub %813, %817  : i64
    %819 = llvm.add %816, %818  : i64
    %820 = llvm.urem %819, %813  : i64
    %821 = llvm.sub %819, %820  : i64
    %822 = llvm.inttoptr %821 : i64 to !llvm.ptr
    %823 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %824 = llvm.insertvalue %815, %823[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %825 = llvm.insertvalue %822, %824[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %826 = llvm.mlir.constant(0 : index) : i64
    %827 = llvm.insertvalue %826, %825[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %828 = llvm.insertvalue %416, %827[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %829 = llvm.insertvalue %809, %828[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %830 = llvm.mlir.constant(1 : index) : i64
    %831 = llvm.mlir.zero : !llvm.ptr
    %832 = llvm.getelementptr %831[%416] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %833 = llvm.ptrtoint %832 : !llvm.ptr to i64
    %834 = llvm.mlir.constant(64 : index) : i64
    %835 = llvm.add %833, %834  : i64
    %836 = llvm.call @malloc(%835) : (i64) -> !llvm.ptr
    %837 = llvm.ptrtoint %836 : !llvm.ptr to i64
    %838 = llvm.mlir.constant(1 : index) : i64
    %839 = llvm.sub %834, %838  : i64
    %840 = llvm.add %837, %839  : i64
    %841 = llvm.urem %840, %834  : i64
    %842 = llvm.sub %840, %841  : i64
    %843 = llvm.inttoptr %842 : i64 to !llvm.ptr
    %844 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %845 = llvm.insertvalue %836, %844[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %846 = llvm.insertvalue %843, %845[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %847 = llvm.mlir.constant(0 : index) : i64
    %848 = llvm.insertvalue %847, %846[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %849 = llvm.insertvalue %416, %848[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %850 = llvm.insertvalue %830, %849[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %851 = llvm.mlir.constant(1 : index) : i64
    %852 = llvm.mlir.zero : !llvm.ptr
    %853 = llvm.getelementptr %852[%416] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %854 = llvm.ptrtoint %853 : !llvm.ptr to i64
    %855 = llvm.mlir.constant(64 : index) : i64
    %856 = llvm.add %854, %855  : i64
    %857 = llvm.call @malloc(%856) : (i64) -> !llvm.ptr
    %858 = llvm.ptrtoint %857 : !llvm.ptr to i64
    %859 = llvm.mlir.constant(1 : index) : i64
    %860 = llvm.sub %855, %859  : i64
    %861 = llvm.add %858, %860  : i64
    %862 = llvm.urem %861, %855  : i64
    %863 = llvm.sub %861, %862  : i64
    %864 = llvm.inttoptr %863 : i64 to !llvm.ptr
    %865 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %866 = llvm.insertvalue %857, %865[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %867 = llvm.insertvalue %864, %866[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %868 = llvm.mlir.constant(0 : index) : i64
    %869 = llvm.insertvalue %868, %867[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %870 = llvm.insertvalue %416, %869[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %871 = llvm.insertvalue %851, %870[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb69(%39, %2, %27 : i64, i64, i32)
  ^bb69(%872: i64, %873: i64, %874: i32):  // 2 preds: ^bb68, ^bb84
    %875 = builtin.unrealized_conversion_cast %872 : i64 to index
    %876 = builtin.unrealized_conversion_cast %875 : index to i64
    %877 = llvm.icmp "slt" %872, %102 : i64
    llvm.cond_br %877, ^bb70, ^bb85
  ^bb70:  // pred: ^bb69
    %878 = llvm.add %874, %27  : i32
    %879 = llvm.add %872, %36  : i64
    %880 = builtin.unrealized_conversion_cast %879 : i64 to index
    %881 = builtin.unrealized_conversion_cast %880 : index to i64
    %882 = llvm.extractvalue %219[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %883 = llvm.getelementptr %882[%876] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %884 = llvm.load %883 : !llvm.ptr -> i64
    %885 = llvm.extractvalue %219[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %886 = llvm.getelementptr %885[%881] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %887 = llvm.load %886 : !llvm.ptr -> i64
    llvm.br ^bb71(%884, %2 : i64, i64)
  ^bb71(%888: i64, %889: i64):  // 2 preds: ^bb70, ^bb79
    %890 = builtin.unrealized_conversion_cast %888 : i64 to index
    %891 = builtin.unrealized_conversion_cast %890 : index to i64
    %892 = llvm.icmp "slt" %888, %887 : i64
    llvm.cond_br %892, ^bb72, ^bb80(%39, %873 : i64, i64)
  ^bb72:  // pred: ^bb71
    %893 = llvm.extractvalue %245[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %894 = llvm.getelementptr %893[%891] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %895 = llvm.load %894 : !llvm.ptr -> i64
    %896 = builtin.unrealized_conversion_cast %895 : i64 to index
    %897 = builtin.unrealized_conversion_cast %896 : index to i64
    %898 = llvm.add %895, %36  : i64
    %899 = builtin.unrealized_conversion_cast %898 : i64 to index
    %900 = builtin.unrealized_conversion_cast %899 : index to i64
    %901 = llvm.extractvalue %532[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %902 = llvm.getelementptr %901[%897] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %903 = llvm.load %902 : !llvm.ptr -> i64
    %904 = llvm.extractvalue %532[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %905 = llvm.getelementptr %904[%900] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %906 = llvm.load %905 : !llvm.ptr -> i64
    llvm.br ^bb73(%903, %889 : i64, i64)
  ^bb73(%907: i64, %908: i64):  // 2 preds: ^bb72, ^bb78
    %909 = builtin.unrealized_conversion_cast %908 : i64 to index
    %910 = builtin.unrealized_conversion_cast %907 : i64 to index
    %911 = builtin.unrealized_conversion_cast %910 : index to i64
    %912 = builtin.unrealized_conversion_cast %909 : index to i64
    %913 = llvm.icmp "slt" %907, %906 : i64
    llvm.cond_br %913, ^bb74, ^bb79
  ^bb74:  // pred: ^bb73
    %914 = llvm.extractvalue %558[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %915 = llvm.getelementptr %914[%911] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %916 = llvm.load %915 : !llvm.ptr -> i64
    %917 = builtin.unrealized_conversion_cast %916 : i64 to index
    %918 = builtin.unrealized_conversion_cast %917 : index to i64
    %919 = llvm.extractvalue %323[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %920 = llvm.getelementptr %919[%891] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %921 = llvm.load %920 : !llvm.ptr -> f64
    %922 = llvm.extractvalue %636[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %923 = llvm.getelementptr %922[%911] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %924 = llvm.load %923 : !llvm.ptr -> f64
    %925 = llvm.fmul %921, %924  : f64
    %926 = llvm.extractvalue %850[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %927 = llvm.getelementptr %926[%918] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %928 = llvm.load %927 : !llvm.ptr -> i32
    %929 = llvm.icmp "eq" %928, %878 : i32
    llvm.cond_br %929, ^bb75, ^bb76(%4 : f64)
  ^bb75:  // pred: ^bb74
    %930 = llvm.extractvalue %829[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %931 = llvm.getelementptr %930[%918] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %932 = llvm.load %931 : !llvm.ptr -> f64
    llvm.br ^bb76(%932 : f64)
  ^bb76(%933: f64):  // 2 preds: ^bb74, ^bb75
    %934 = llvm.fadd %933, %925  : f64
    %935 = llvm.icmp "ne" %928, %878 : i32
    llvm.cond_br %935, ^bb77, ^bb78(%908 : i64)
  ^bb77:  // pred: ^bb76
    %936 = llvm.extractvalue %850[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %937 = llvm.getelementptr %936[%918] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %878, %937 : i32, !llvm.ptr
    %938 = llvm.extractvalue %871[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %939 = llvm.getelementptr %938[%912] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %916, %939 : i64, !llvm.ptr
    %940 = index.add %909, %idx1
    %941 = builtin.unrealized_conversion_cast %940 : index to i64
    llvm.br ^bb78(%941 : i64)
  ^bb78(%942: i64):  // 2 preds: ^bb76, ^bb77
    %943 = llvm.extractvalue %829[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %944 = llvm.getelementptr %943[%918] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %934, %944 : f64, !llvm.ptr
    %945 = llvm.add %907, %36  : i64
    llvm.br ^bb73(%945, %942 : i64, i64)
  ^bb79:  // pred: ^bb73
    %946 = llvm.add %888, %36  : i64
    llvm.br ^bb71(%946, %908 : i64, i64)
  ^bb80(%947: i64, %948: i64):  // 2 preds: ^bb71, ^bb83
    %949 = builtin.unrealized_conversion_cast %948 : i64 to index
    %950 = builtin.unrealized_conversion_cast %947 : i64 to index
    %951 = builtin.unrealized_conversion_cast %950 : index to i64
    %952 = builtin.unrealized_conversion_cast %949 : index to i64
    %953 = llvm.icmp "slt" %947, %889 : i64
    llvm.cond_br %953, ^bb81, ^bb84
  ^bb81:  // pred: ^bb80
    %954 = llvm.extractvalue %871[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %955 = llvm.getelementptr %954[%951] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %956 = llvm.load %955 : !llvm.ptr -> i64
    %957 = builtin.unrealized_conversion_cast %956 : i64 to index
    %958 = builtin.unrealized_conversion_cast %957 : index to i64
    %959 = llvm.extractvalue %850[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %960 = llvm.getelementptr %959[%958] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %961 = llvm.load %960 : !llvm.ptr -> i32
    %962 = llvm.icmp "eq" %961, %878 : i32
    llvm.cond_br %962, ^bb82, ^bb83(%4 : f64)
  ^bb82:  // pred: ^bb81
    %963 = llvm.extractvalue %829[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %964 = llvm.getelementptr %963[%958] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %965 = llvm.load %964 : !llvm.ptr -> f64
    llvm.br ^bb83(%965 : f64)
  ^bb83(%966: f64):  // 2 preds: ^bb81, ^bb82
    %967 = llvm.extractvalue %789[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %968 = llvm.getelementptr %967[%952] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %956, %968 : i64, !llvm.ptr
    %969 = index.add %949, %idx1
    %970 = builtin.unrealized_conversion_cast %969 : index to i64
    %971 = llvm.extractvalue %801[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %972 = llvm.getelementptr %971[%952] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %966, %972 : f64, !llvm.ptr
    %973 = llvm.add %947, %36  : i64
    llvm.br ^bb80(%973, %970 : i64, i64)
  ^bb84:  // pred: ^bb80
    llvm.br ^bb69(%879, %948, %878 : i64, i64, i32)
  ^bb85:  // pred: ^bb69
    %974 = llvm.mlir.constant(1 : index) : i64
    %975 = llvm.mlir.constant(1 : index) : i64
    %976 = llvm.mlir.zero : !llvm.ptr
    %977 = llvm.getelementptr %976[%974] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %978 = llvm.ptrtoint %977 : !llvm.ptr to i64
    %979 = llvm.mlir.constant(64 : index) : i64
    %980 = llvm.add %978, %979  : i64
    %981 = llvm.call @malloc(%980) : (i64) -> !llvm.ptr
    %982 = llvm.ptrtoint %981 : !llvm.ptr to i64
    %983 = llvm.mlir.constant(1 : index) : i64
    %984 = llvm.sub %979, %983  : i64
    %985 = llvm.add %982, %984  : i64
    %986 = llvm.urem %985, %979  : i64
    %987 = llvm.sub %985, %986  : i64
    %988 = llvm.inttoptr %987 : i64 to !llvm.ptr
    %989 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %990 = llvm.insertvalue %981, %989[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %991 = llvm.insertvalue %988, %990[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %992 = llvm.mlir.constant(0 : index) : i64
    %993 = llvm.insertvalue %992, %991[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %994 = llvm.insertvalue %974, %993[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %995 = llvm.insertvalue %975, %994[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %996 = llvm.extractvalue %995[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %997 = llvm.getelementptr %996[%3] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %0, %997 : i64, !llvm.ptr
    %998 = llvm.mlir.constant(1 : index) : i64
    %999 = llvm.alloca %998 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %775, %999 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %1000 = llvm.mlir.constant(1 : index) : i64
    %1001 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %1002 = llvm.insertvalue %1000, %1001[0] : !llvm.struct<(i64, ptr)> 
    %1003 = llvm.insertvalue %999, %1002[1] : !llvm.struct<(i64, ptr)> 
    %1004 = builtin.unrealized_conversion_cast %1003 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %1005 = llvm.extractvalue %1003[0] : !llvm.struct<(i64, ptr)> 
    %1006 = llvm.extractvalue %1003[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_i64(%1005, %1006) : (i64, !llvm.ptr) -> ()
    %1007 = llvm.mlir.constant(1 : index) : i64
    %1008 = llvm.alloca %1007 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %995, %1008 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %1009 = llvm.mlir.constant(1 : index) : i64
    %1010 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %1011 = llvm.insertvalue %1009, %1010[0] : !llvm.struct<(i64, ptr)> 
    %1012 = llvm.insertvalue %1008, %1011[1] : !llvm.struct<(i64, ptr)> 
    %1013 = builtin.unrealized_conversion_cast %1012 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %1014 = llvm.extractvalue %1012[0] : !llvm.struct<(i64, ptr)> 
    %1015 = llvm.extractvalue %1012[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_index(%1014, %1015) : (i64, !llvm.ptr) -> ()
    %1016 = llvm.mlir.constant(1 : index) : i64
    %1017 = llvm.alloca %1016 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %682, %1017 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %1018 = llvm.mlir.constant(1 : index) : i64
    %1019 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %1020 = llvm.insertvalue %1018, %1019[0] : !llvm.struct<(i64, ptr)> 
    %1021 = llvm.insertvalue %1017, %1020[1] : !llvm.struct<(i64, ptr)> 
    %1022 = builtin.unrealized_conversion_cast %1021 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %1023 = llvm.extractvalue %1021[0] : !llvm.struct<(i64, ptr)> 
    %1024 = llvm.extractvalue %1021[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_i64(%1023, %1024) : (i64, !llvm.ptr) -> ()
    %1025 = llvm.mlir.constant(1 : index) : i64
    %1026 = llvm.alloca %1025 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %789, %1026 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %1027 = llvm.mlir.constant(1 : index) : i64
    %1028 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %1029 = llvm.insertvalue %1027, %1028[0] : !llvm.struct<(i64, ptr)> 
    %1030 = llvm.insertvalue %1026, %1029[1] : !llvm.struct<(i64, ptr)> 
    %1031 = builtin.unrealized_conversion_cast %1030 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %1032 = llvm.extractvalue %1030[0] : !llvm.struct<(i64, ptr)> 
    %1033 = llvm.extractvalue %1030[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_i64(%1032, %1033) : (i64, !llvm.ptr) -> ()
    %1034 = llvm.mlir.constant(1 : index) : i64
    %1035 = llvm.alloca %1034 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %801, %1035 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %1036 = llvm.mlir.constant(1 : index) : i64
    %1037 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %1038 = llvm.insertvalue %1036, %1037[0] : !llvm.struct<(i64, ptr)> 
    %1039 = llvm.insertvalue %1035, %1038[1] : !llvm.struct<(i64, ptr)> 
    %1040 = builtin.unrealized_conversion_cast %1039 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    %1041 = llvm.extractvalue %1039[0] : !llvm.struct<(i64, ptr)> 
    %1042 = llvm.extractvalue %1039[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%1041, %1042) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @read_input_2D_f64_i64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @read_input_sizes_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_i64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_index(i64, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


// -----// IR Dump After ConvertIndexToLLVMPass (convert-index-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(-1 : i64) : i64
    %1 = builtin.unrealized_conversion_cast %0 : i64 to index
    %2 = builtin.unrealized_conversion_cast %1 : index to i64
    %3 = llvm.mlir.constant(1 : i64) : i64
    %4 = builtin.unrealized_conversion_cast %3 : i64 to index
    %5 = builtin.unrealized_conversion_cast %4 : index to i64
    %6 = llvm.mlir.constant(0 : i64) : i64
    %7 = builtin.unrealized_conversion_cast %6 : i64 to index
    %8 = builtin.unrealized_conversion_cast %7 : index to i64
    %9 = builtin.unrealized_conversion_cast %7 : index to i64
    %10 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %11 = llvm.mlir.constant(0 : i64) : i64
    %12 = llvm.mlir.constant(10 : index) : i64
    %13 = builtin.unrealized_conversion_cast %12 : i64 to index
    %14 = llvm.mlir.constant(9 : index) : i64
    %15 = builtin.unrealized_conversion_cast %14 : i64 to index
    %16 = llvm.mlir.constant(8 : index) : i64
    %17 = builtin.unrealized_conversion_cast %16 : i64 to index
    %18 = llvm.mlir.constant(7 : index) : i64
    %19 = builtin.unrealized_conversion_cast %18 : i64 to index
    %20 = llvm.mlir.constant(6 : index) : i64
    %21 = builtin.unrealized_conversion_cast %20 : i64 to index
    %22 = llvm.mlir.constant(5 : index) : i64
    %23 = builtin.unrealized_conversion_cast %22 : i64 to index
    %24 = llvm.mlir.constant(4 : index) : i64
    %25 = builtin.unrealized_conversion_cast %24 : i64 to index
    %26 = llvm.mlir.constant(1 : i32) : i32
    %27 = llvm.mlir.constant(0 : i32) : i32
    %28 = llvm.mlir.constant(3 : index) : i64
    %29 = builtin.unrealized_conversion_cast %28 : i64 to index
    %30 = llvm.mlir.constant(2 : index) : i64
    %31 = builtin.unrealized_conversion_cast %30 : i64 to index
    %32 = llvm.mlir.constant(-1 : index) : i64
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = builtin.unrealized_conversion_cast %33 : i64 to index
    %35 = llvm.mlir.constant(0 : index) : i64
    %36 = builtin.unrealized_conversion_cast %35 : i64 to index
    %37 = llvm.mlir.constant(13 : index) : i64
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.mlir.zero : !llvm.ptr
    %40 = llvm.getelementptr %39[%37] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %41 = llvm.ptrtoint %40 : !llvm.ptr to i64
    %42 = llvm.call @malloc(%41) : (i64) -> !llvm.ptr
    %43 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %44 = llvm.insertvalue %42, %43[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.insertvalue %42, %44[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.mlir.constant(0 : index) : i64
    %47 = llvm.insertvalue %46, %45[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.insertvalue %37, %47[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.insertvalue %38, %48[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.alloca %50 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %49, %51 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %54 = llvm.insertvalue %52, %53[0] : !llvm.struct<(i64, ptr)> 
    %55 = llvm.insertvalue %51, %54[1] : !llvm.struct<(i64, ptr)> 
    %56 = builtin.unrealized_conversion_cast %55 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %57 = llvm.extractvalue %55[0] : !llvm.struct<(i64, ptr)> 
    %58 = llvm.extractvalue %55[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%27, %35, %32, %33, %32, %57, %58, %26) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %59 = llvm.extractvalue %49[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.getelementptr %59[%35] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %61 = llvm.load %60 : !llvm.ptr -> i64
    %62 = builtin.unrealized_conversion_cast %61 : i64 to index
    %63 = llvm.extractvalue %49[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.getelementptr %63[%33] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %65 = llvm.load %64 : !llvm.ptr -> i64
    %66 = builtin.unrealized_conversion_cast %65 : i64 to index
    %67 = llvm.extractvalue %49[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.getelementptr %67[%30] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %69 = llvm.load %68 : !llvm.ptr -> i64
    %70 = builtin.unrealized_conversion_cast %69 : i64 to index
    %71 = llvm.extractvalue %49[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.getelementptr %71[%28] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %73 = llvm.load %72 : !llvm.ptr -> i64
    %74 = builtin.unrealized_conversion_cast %73 : i64 to index
    %75 = llvm.extractvalue %49[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %76 = llvm.getelementptr %75[%24] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %77 = llvm.load %76 : !llvm.ptr -> i64
    %78 = builtin.unrealized_conversion_cast %77 : i64 to index
    %79 = llvm.extractvalue %49[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %80 = llvm.getelementptr %79[%22] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %81 = llvm.load %80 : !llvm.ptr -> i64
    %82 = builtin.unrealized_conversion_cast %81 : i64 to index
    %83 = llvm.extractvalue %49[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %84 = llvm.getelementptr %83[%20] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %85 = llvm.load %84 : !llvm.ptr -> i64
    %86 = builtin.unrealized_conversion_cast %85 : i64 to index
    %87 = llvm.extractvalue %49[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.getelementptr %87[%18] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %89 = llvm.load %88 : !llvm.ptr -> i64
    %90 = builtin.unrealized_conversion_cast %89 : i64 to index
    %91 = llvm.extractvalue %49[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %92 = llvm.getelementptr %91[%16] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %93 = llvm.load %92 : !llvm.ptr -> i64
    %94 = builtin.unrealized_conversion_cast %93 : i64 to index
    %95 = llvm.extractvalue %49[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %96 = llvm.getelementptr %95[%14] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %97 = llvm.load %96 : !llvm.ptr -> i64
    %98 = builtin.unrealized_conversion_cast %97 : i64 to index
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.mlir.zero : !llvm.ptr
    %101 = llvm.getelementptr %100[%61] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %102 = llvm.ptrtoint %101 : !llvm.ptr to i64
    %103 = llvm.call @malloc(%102) : (i64) -> !llvm.ptr
    %104 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %105 = llvm.insertvalue %103, %104[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %106 = llvm.insertvalue %103, %105[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %107 = llvm.mlir.constant(0 : index) : i64
    %108 = llvm.insertvalue %107, %106[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %109 = llvm.insertvalue %61, %108[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.insertvalue %99, %109[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%35 : i64)
  ^bb1(%111: i64):  // 2 preds: ^bb0, ^bb2
    %112 = builtin.unrealized_conversion_cast %111 : i64 to index
    %113 = llvm.icmp "slt" %111, %61 : i64
    llvm.cond_br %113, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %114 = llvm.extractvalue %110[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %115 = llvm.getelementptr %114[%111] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %11, %115 : i64, !llvm.ptr
    %116 = llvm.add %111, %33  : i64
    llvm.br ^bb1(%116 : i64)
  ^bb3:  // pred: ^bb1
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.alloca %117 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %110, %118 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %121 = llvm.insertvalue %119, %120[0] : !llvm.struct<(i64, ptr)> 
    %122 = llvm.insertvalue %118, %121[1] : !llvm.struct<(i64, ptr)> 
    %123 = builtin.unrealized_conversion_cast %122 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.zero : !llvm.ptr
    %126 = llvm.getelementptr %125[%65] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %127 = llvm.ptrtoint %126 : !llvm.ptr to i64
    %128 = llvm.call @malloc(%127) : (i64) -> !llvm.ptr
    %129 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %130 = llvm.insertvalue %128, %129[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.insertvalue %128, %130[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.mlir.constant(0 : index) : i64
    %133 = llvm.insertvalue %132, %131[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %134 = llvm.insertvalue %65, %133[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %135 = llvm.insertvalue %124, %134[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%35 : i64)
  ^bb4(%136: i64):  // 2 preds: ^bb3, ^bb5
    %137 = builtin.unrealized_conversion_cast %136 : i64 to index
    %138 = llvm.icmp "slt" %136, %65 : i64
    llvm.cond_br %138, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %139 = llvm.extractvalue %135[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %140 = llvm.getelementptr %139[%136] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %11, %140 : i64, !llvm.ptr
    %141 = llvm.add %136, %33  : i64
    llvm.br ^bb4(%141 : i64)
  ^bb6:  // pred: ^bb4
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.alloca %142 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %135, %143 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %146 = llvm.insertvalue %144, %145[0] : !llvm.struct<(i64, ptr)> 
    %147 = llvm.insertvalue %143, %146[1] : !llvm.struct<(i64, ptr)> 
    %148 = builtin.unrealized_conversion_cast %147 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.mlir.zero : !llvm.ptr
    %151 = llvm.getelementptr %150[%69] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %152 = llvm.ptrtoint %151 : !llvm.ptr to i64
    %153 = llvm.call @malloc(%152) : (i64) -> !llvm.ptr
    %154 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %155 = llvm.insertvalue %153, %154[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.insertvalue %153, %155[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %157 = llvm.mlir.constant(0 : index) : i64
    %158 = llvm.insertvalue %157, %156[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %159 = llvm.insertvalue %69, %158[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %160 = llvm.insertvalue %149, %159[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%35 : i64)
  ^bb7(%161: i64):  // 2 preds: ^bb6, ^bb8
    %162 = builtin.unrealized_conversion_cast %161 : i64 to index
    %163 = llvm.icmp "slt" %161, %69 : i64
    llvm.cond_br %163, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %164 = llvm.extractvalue %160[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %165 = llvm.getelementptr %164[%161] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %11, %165 : i64, !llvm.ptr
    %166 = llvm.add %161, %33  : i64
    llvm.br ^bb7(%166 : i64)
  ^bb9:  // pred: ^bb7
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.alloca %167 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %160, %168 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %171 = llvm.insertvalue %169, %170[0] : !llvm.struct<(i64, ptr)> 
    %172 = llvm.insertvalue %168, %171[1] : !llvm.struct<(i64, ptr)> 
    %173 = builtin.unrealized_conversion_cast %172 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.mlir.zero : !llvm.ptr
    %176 = llvm.getelementptr %175[%73] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %177 = llvm.ptrtoint %176 : !llvm.ptr to i64
    %178 = llvm.call @malloc(%177) : (i64) -> !llvm.ptr
    %179 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %180 = llvm.insertvalue %178, %179[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %181 = llvm.insertvalue %178, %180[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %182 = llvm.mlir.constant(0 : index) : i64
    %183 = llvm.insertvalue %182, %181[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %184 = llvm.insertvalue %73, %183[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %185 = llvm.insertvalue %174, %184[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%35 : i64)
  ^bb10(%186: i64):  // 2 preds: ^bb9, ^bb11
    %187 = builtin.unrealized_conversion_cast %186 : i64 to index
    %188 = llvm.icmp "slt" %186, %73 : i64
    llvm.cond_br %188, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %189 = llvm.extractvalue %185[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %190 = llvm.getelementptr %189[%186] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %11, %190 : i64, !llvm.ptr
    %191 = llvm.add %186, %33  : i64
    llvm.br ^bb10(%191 : i64)
  ^bb12:  // pred: ^bb10
    %192 = llvm.mlir.constant(1 : index) : i64
    %193 = llvm.alloca %192 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %185, %193 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %194 = llvm.mlir.constant(1 : index) : i64
    %195 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %196 = llvm.insertvalue %194, %195[0] : !llvm.struct<(i64, ptr)> 
    %197 = llvm.insertvalue %193, %196[1] : !llvm.struct<(i64, ptr)> 
    %198 = builtin.unrealized_conversion_cast %197 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %199 = llvm.mlir.constant(1 : index) : i64
    %200 = llvm.mlir.zero : !llvm.ptr
    %201 = llvm.getelementptr %200[%77] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %202 = llvm.ptrtoint %201 : !llvm.ptr to i64
    %203 = llvm.call @malloc(%202) : (i64) -> !llvm.ptr
    %204 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %205 = llvm.insertvalue %203, %204[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %206 = llvm.insertvalue %203, %205[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %207 = llvm.mlir.constant(0 : index) : i64
    %208 = llvm.insertvalue %207, %206[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %209 = llvm.insertvalue %77, %208[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %210 = llvm.insertvalue %199, %209[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%35 : i64)
  ^bb13(%211: i64):  // 2 preds: ^bb12, ^bb14
    %212 = builtin.unrealized_conversion_cast %211 : i64 to index
    %213 = llvm.icmp "slt" %211, %77 : i64
    llvm.cond_br %213, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %214 = llvm.extractvalue %210[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %215 = llvm.getelementptr %214[%211] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %11, %215 : i64, !llvm.ptr
    %216 = llvm.add %211, %33  : i64
    llvm.br ^bb13(%216 : i64)
  ^bb15:  // pred: ^bb13
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.alloca %217 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %210, %218 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %221 = llvm.insertvalue %219, %220[0] : !llvm.struct<(i64, ptr)> 
    %222 = llvm.insertvalue %218, %221[1] : !llvm.struct<(i64, ptr)> 
    %223 = builtin.unrealized_conversion_cast %222 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %224 = llvm.mlir.constant(1 : index) : i64
    %225 = llvm.mlir.zero : !llvm.ptr
    %226 = llvm.getelementptr %225[%81] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %227 = llvm.ptrtoint %226 : !llvm.ptr to i64
    %228 = llvm.call @malloc(%227) : (i64) -> !llvm.ptr
    %229 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %230 = llvm.insertvalue %228, %229[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %231 = llvm.insertvalue %228, %230[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %232 = llvm.mlir.constant(0 : index) : i64
    %233 = llvm.insertvalue %232, %231[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %234 = llvm.insertvalue %81, %233[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %235 = llvm.insertvalue %224, %234[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%35 : i64)
  ^bb16(%236: i64):  // 2 preds: ^bb15, ^bb17
    %237 = builtin.unrealized_conversion_cast %236 : i64 to index
    %238 = llvm.icmp "slt" %236, %81 : i64
    llvm.cond_br %238, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %239 = llvm.extractvalue %235[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %240 = llvm.getelementptr %239[%236] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %11, %240 : i64, !llvm.ptr
    %241 = llvm.add %236, %33  : i64
    llvm.br ^bb16(%241 : i64)
  ^bb18:  // pred: ^bb16
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.alloca %242 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %235, %243 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %246 = llvm.insertvalue %244, %245[0] : !llvm.struct<(i64, ptr)> 
    %247 = llvm.insertvalue %243, %246[1] : !llvm.struct<(i64, ptr)> 
    %248 = builtin.unrealized_conversion_cast %247 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.zero : !llvm.ptr
    %251 = llvm.getelementptr %250[%85] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %252 = llvm.ptrtoint %251 : !llvm.ptr to i64
    %253 = llvm.call @malloc(%252) : (i64) -> !llvm.ptr
    %254 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %255 = llvm.insertvalue %253, %254[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %256 = llvm.insertvalue %253, %255[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %257 = llvm.mlir.constant(0 : index) : i64
    %258 = llvm.insertvalue %257, %256[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %259 = llvm.insertvalue %85, %258[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %260 = llvm.insertvalue %249, %259[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%35 : i64)
  ^bb19(%261: i64):  // 2 preds: ^bb18, ^bb20
    %262 = builtin.unrealized_conversion_cast %261 : i64 to index
    %263 = llvm.icmp "slt" %261, %85 : i64
    llvm.cond_br %263, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %264 = llvm.extractvalue %260[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %265 = llvm.getelementptr %264[%261] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %11, %265 : i64, !llvm.ptr
    %266 = llvm.add %261, %33  : i64
    llvm.br ^bb19(%266 : i64)
  ^bb21:  // pred: ^bb19
    %267 = llvm.mlir.constant(1 : index) : i64
    %268 = llvm.alloca %267 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %260, %268 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %271 = llvm.insertvalue %269, %270[0] : !llvm.struct<(i64, ptr)> 
    %272 = llvm.insertvalue %268, %271[1] : !llvm.struct<(i64, ptr)> 
    %273 = builtin.unrealized_conversion_cast %272 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.mlir.zero : !llvm.ptr
    %276 = llvm.getelementptr %275[%89] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %277 = llvm.ptrtoint %276 : !llvm.ptr to i64
    %278 = llvm.call @malloc(%277) : (i64) -> !llvm.ptr
    %279 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %280 = llvm.insertvalue %278, %279[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %281 = llvm.insertvalue %278, %280[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %282 = llvm.mlir.constant(0 : index) : i64
    %283 = llvm.insertvalue %282, %281[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %284 = llvm.insertvalue %89, %283[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %285 = llvm.insertvalue %274, %284[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%35 : i64)
  ^bb22(%286: i64):  // 2 preds: ^bb21, ^bb23
    %287 = builtin.unrealized_conversion_cast %286 : i64 to index
    %288 = llvm.icmp "slt" %286, %89 : i64
    llvm.cond_br %288, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %289 = llvm.extractvalue %285[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %290 = llvm.getelementptr %289[%286] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %11, %290 : i64, !llvm.ptr
    %291 = llvm.add %286, %33  : i64
    llvm.br ^bb22(%291 : i64)
  ^bb24:  // pred: ^bb22
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.alloca %292 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %285, %293 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %296 = llvm.insertvalue %294, %295[0] : !llvm.struct<(i64, ptr)> 
    %297 = llvm.insertvalue %293, %296[1] : !llvm.struct<(i64, ptr)> 
    %298 = builtin.unrealized_conversion_cast %297 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %299 = llvm.mlir.constant(1 : index) : i64
    %300 = llvm.mlir.zero : !llvm.ptr
    %301 = llvm.getelementptr %300[%93] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %302 = llvm.ptrtoint %301 : !llvm.ptr to i64
    %303 = llvm.call @malloc(%302) : (i64) -> !llvm.ptr
    %304 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %305 = llvm.insertvalue %303, %304[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %306 = llvm.insertvalue %303, %305[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %307 = llvm.mlir.constant(0 : index) : i64
    %308 = llvm.insertvalue %307, %306[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %309 = llvm.insertvalue %93, %308[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %310 = llvm.insertvalue %299, %309[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%35 : i64)
  ^bb25(%311: i64):  // 2 preds: ^bb24, ^bb26
    %312 = builtin.unrealized_conversion_cast %311 : i64 to index
    %313 = llvm.icmp "slt" %311, %93 : i64
    llvm.cond_br %313, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %314 = llvm.extractvalue %310[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %315 = llvm.getelementptr %314[%311] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %10, %315 : f64, !llvm.ptr
    %316 = llvm.add %311, %33  : i64
    llvm.br ^bb25(%316 : i64)
  ^bb27:  // pred: ^bb25
    %317 = llvm.mlir.constant(1 : index) : i64
    %318 = llvm.alloca %317 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %310, %318 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %319 = llvm.mlir.constant(1 : index) : i64
    %320 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %321 = llvm.insertvalue %319, %320[0] : !llvm.struct<(i64, ptr)> 
    %322 = llvm.insertvalue %318, %321[1] : !llvm.struct<(i64, ptr)> 
    %323 = builtin.unrealized_conversion_cast %322 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    %324 = llvm.extractvalue %122[0] : !llvm.struct<(i64, ptr)> 
    %325 = llvm.extractvalue %122[1] : !llvm.struct<(i64, ptr)> 
    %326 = llvm.extractvalue %147[0] : !llvm.struct<(i64, ptr)> 
    %327 = llvm.extractvalue %147[1] : !llvm.struct<(i64, ptr)> 
    %328 = llvm.extractvalue %172[0] : !llvm.struct<(i64, ptr)> 
    %329 = llvm.extractvalue %172[1] : !llvm.struct<(i64, ptr)> 
    %330 = llvm.extractvalue %197[0] : !llvm.struct<(i64, ptr)> 
    %331 = llvm.extractvalue %197[1] : !llvm.struct<(i64, ptr)> 
    %332 = llvm.extractvalue %222[0] : !llvm.struct<(i64, ptr)> 
    %333 = llvm.extractvalue %222[1] : !llvm.struct<(i64, ptr)> 
    %334 = llvm.extractvalue %247[0] : !llvm.struct<(i64, ptr)> 
    %335 = llvm.extractvalue %247[1] : !llvm.struct<(i64, ptr)> 
    %336 = llvm.extractvalue %272[0] : !llvm.struct<(i64, ptr)> 
    %337 = llvm.extractvalue %272[1] : !llvm.struct<(i64, ptr)> 
    %338 = llvm.extractvalue %297[0] : !llvm.struct<(i64, ptr)> 
    %339 = llvm.extractvalue %297[1] : !llvm.struct<(i64, ptr)> 
    %340 = llvm.extractvalue %322[0] : !llvm.struct<(i64, ptr)> 
    %341 = llvm.extractvalue %322[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64_i64(%27, %35, %32, %33, %32, %324, %325, %326, %327, %328, %329, %330, %331, %332, %333, %334, %335, %336, %337, %338, %339, %340, %341, %26) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %342 = llvm.mlir.constant(13 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    %344 = llvm.mlir.zero : !llvm.ptr
    %345 = llvm.getelementptr %344[%342] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %346 = llvm.ptrtoint %345 : !llvm.ptr to i64
    %347 = llvm.call @malloc(%346) : (i64) -> !llvm.ptr
    %348 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %349 = llvm.insertvalue %347, %348[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %350 = llvm.insertvalue %347, %349[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %351 = llvm.mlir.constant(0 : index) : i64
    %352 = llvm.insertvalue %351, %350[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %353 = llvm.insertvalue %342, %352[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %354 = llvm.insertvalue %343, %353[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %355 = llvm.mlir.constant(1 : index) : i64
    %356 = llvm.alloca %355 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %354, %356 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %357 = llvm.mlir.constant(1 : index) : i64
    %358 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %359 = llvm.insertvalue %357, %358[0] : !llvm.struct<(i64, ptr)> 
    %360 = llvm.insertvalue %356, %359[1] : !llvm.struct<(i64, ptr)> 
    %361 = builtin.unrealized_conversion_cast %360 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %362 = llvm.extractvalue %360[0] : !llvm.struct<(i64, ptr)> 
    %363 = llvm.extractvalue %360[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%26, %35, %32, %33, %32, %362, %363, %26) {filename = "SPARSE_FILE_NAME1"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %364 = llvm.extractvalue %354[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %365 = llvm.getelementptr %364[%35] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %366 = llvm.load %365 : !llvm.ptr -> i64
    %367 = builtin.unrealized_conversion_cast %366 : i64 to index
    %368 = llvm.extractvalue %354[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %369 = llvm.getelementptr %368[%33] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %370 = llvm.load %369 : !llvm.ptr -> i64
    %371 = builtin.unrealized_conversion_cast %370 : i64 to index
    %372 = llvm.extractvalue %354[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %373 = llvm.getelementptr %372[%30] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %374 = llvm.load %373 : !llvm.ptr -> i64
    %375 = builtin.unrealized_conversion_cast %374 : i64 to index
    %376 = llvm.extractvalue %354[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %377 = llvm.getelementptr %376[%28] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %378 = llvm.load %377 : !llvm.ptr -> i64
    %379 = builtin.unrealized_conversion_cast %378 : i64 to index
    %380 = llvm.extractvalue %354[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %381 = llvm.getelementptr %380[%24] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %382 = llvm.load %381 : !llvm.ptr -> i64
    %383 = builtin.unrealized_conversion_cast %382 : i64 to index
    %384 = llvm.extractvalue %354[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %385 = llvm.getelementptr %384[%22] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %386 = llvm.load %385 : !llvm.ptr -> i64
    %387 = builtin.unrealized_conversion_cast %386 : i64 to index
    %388 = llvm.extractvalue %354[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %389 = llvm.getelementptr %388[%20] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %390 = llvm.load %389 : !llvm.ptr -> i64
    %391 = builtin.unrealized_conversion_cast %390 : i64 to index
    %392 = llvm.extractvalue %354[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %393 = llvm.getelementptr %392[%18] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %394 = llvm.load %393 : !llvm.ptr -> i64
    %395 = builtin.unrealized_conversion_cast %394 : i64 to index
    %396 = llvm.extractvalue %354[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %397 = llvm.getelementptr %396[%16] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %398 = llvm.load %397 : !llvm.ptr -> i64
    %399 = builtin.unrealized_conversion_cast %398 : i64 to index
    %400 = llvm.extractvalue %354[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %401 = llvm.getelementptr %400[%12] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %402 = llvm.load %401 : !llvm.ptr -> i64
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.mlir.zero : !llvm.ptr
    %405 = llvm.getelementptr %404[%366] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %406 = llvm.ptrtoint %405 : !llvm.ptr to i64
    %407 = llvm.call @malloc(%406) : (i64) -> !llvm.ptr
    %408 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %409 = llvm.insertvalue %407, %408[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %410 = llvm.insertvalue %407, %409[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %411 = llvm.mlir.constant(0 : index) : i64
    %412 = llvm.insertvalue %411, %410[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %413 = llvm.insertvalue %366, %412[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %414 = llvm.insertvalue %403, %413[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb28(%35 : i64)
  ^bb28(%415: i64):  // 2 preds: ^bb27, ^bb29
    %416 = builtin.unrealized_conversion_cast %415 : i64 to index
    %417 = llvm.icmp "slt" %415, %366 : i64
    llvm.cond_br %417, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %418 = llvm.extractvalue %414[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %419 = llvm.getelementptr %418[%415] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %11, %419 : i64, !llvm.ptr
    %420 = llvm.add %415, %33  : i64
    llvm.br ^bb28(%420 : i64)
  ^bb30:  // pred: ^bb28
    %421 = llvm.mlir.constant(1 : index) : i64
    %422 = llvm.alloca %421 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %414, %422 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %423 = llvm.mlir.constant(1 : index) : i64
    %424 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %425 = llvm.insertvalue %423, %424[0] : !llvm.struct<(i64, ptr)> 
    %426 = llvm.insertvalue %422, %425[1] : !llvm.struct<(i64, ptr)> 
    %427 = builtin.unrealized_conversion_cast %426 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %428 = llvm.mlir.constant(1 : index) : i64
    %429 = llvm.mlir.zero : !llvm.ptr
    %430 = llvm.getelementptr %429[%370] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %431 = llvm.ptrtoint %430 : !llvm.ptr to i64
    %432 = llvm.call @malloc(%431) : (i64) -> !llvm.ptr
    %433 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %434 = llvm.insertvalue %432, %433[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %435 = llvm.insertvalue %432, %434[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %436 = llvm.mlir.constant(0 : index) : i64
    %437 = llvm.insertvalue %436, %435[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %438 = llvm.insertvalue %370, %437[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %439 = llvm.insertvalue %428, %438[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb31(%35 : i64)
  ^bb31(%440: i64):  // 2 preds: ^bb30, ^bb32
    %441 = builtin.unrealized_conversion_cast %440 : i64 to index
    %442 = llvm.icmp "slt" %440, %370 : i64
    llvm.cond_br %442, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %443 = llvm.extractvalue %439[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %444 = llvm.getelementptr %443[%440] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %11, %444 : i64, !llvm.ptr
    %445 = llvm.add %440, %33  : i64
    llvm.br ^bb31(%445 : i64)
  ^bb33:  // pred: ^bb31
    %446 = llvm.mlir.constant(1 : index) : i64
    %447 = llvm.alloca %446 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %439, %447 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %448 = llvm.mlir.constant(1 : index) : i64
    %449 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %450 = llvm.insertvalue %448, %449[0] : !llvm.struct<(i64, ptr)> 
    %451 = llvm.insertvalue %447, %450[1] : !llvm.struct<(i64, ptr)> 
    %452 = builtin.unrealized_conversion_cast %451 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %453 = llvm.mlir.constant(1 : index) : i64
    %454 = llvm.mlir.zero : !llvm.ptr
    %455 = llvm.getelementptr %454[%374] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %456 = llvm.ptrtoint %455 : !llvm.ptr to i64
    %457 = llvm.call @malloc(%456) : (i64) -> !llvm.ptr
    %458 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %459 = llvm.insertvalue %457, %458[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %460 = llvm.insertvalue %457, %459[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %461 = llvm.mlir.constant(0 : index) : i64
    %462 = llvm.insertvalue %461, %460[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %463 = llvm.insertvalue %374, %462[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %464 = llvm.insertvalue %453, %463[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb34(%35 : i64)
  ^bb34(%465: i64):  // 2 preds: ^bb33, ^bb35
    %466 = builtin.unrealized_conversion_cast %465 : i64 to index
    %467 = llvm.icmp "slt" %465, %374 : i64
    llvm.cond_br %467, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %468 = llvm.extractvalue %464[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %469 = llvm.getelementptr %468[%465] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %11, %469 : i64, !llvm.ptr
    %470 = llvm.add %465, %33  : i64
    llvm.br ^bb34(%470 : i64)
  ^bb36:  // pred: ^bb34
    %471 = llvm.mlir.constant(1 : index) : i64
    %472 = llvm.alloca %471 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %464, %472 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %473 = llvm.mlir.constant(1 : index) : i64
    %474 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %475 = llvm.insertvalue %473, %474[0] : !llvm.struct<(i64, ptr)> 
    %476 = llvm.insertvalue %472, %475[1] : !llvm.struct<(i64, ptr)> 
    %477 = builtin.unrealized_conversion_cast %476 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %478 = llvm.mlir.constant(1 : index) : i64
    %479 = llvm.mlir.zero : !llvm.ptr
    %480 = llvm.getelementptr %479[%378] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %481 = llvm.ptrtoint %480 : !llvm.ptr to i64
    %482 = llvm.call @malloc(%481) : (i64) -> !llvm.ptr
    %483 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %484 = llvm.insertvalue %482, %483[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %485 = llvm.insertvalue %482, %484[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %486 = llvm.mlir.constant(0 : index) : i64
    %487 = llvm.insertvalue %486, %485[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %488 = llvm.insertvalue %378, %487[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %489 = llvm.insertvalue %478, %488[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb37(%35 : i64)
  ^bb37(%490: i64):  // 2 preds: ^bb36, ^bb38
    %491 = builtin.unrealized_conversion_cast %490 : i64 to index
    %492 = llvm.icmp "slt" %490, %378 : i64
    llvm.cond_br %492, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %493 = llvm.extractvalue %489[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %494 = llvm.getelementptr %493[%490] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %11, %494 : i64, !llvm.ptr
    %495 = llvm.add %490, %33  : i64
    llvm.br ^bb37(%495 : i64)
  ^bb39:  // pred: ^bb37
    %496 = llvm.mlir.constant(1 : index) : i64
    %497 = llvm.alloca %496 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %489, %497 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %498 = llvm.mlir.constant(1 : index) : i64
    %499 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %500 = llvm.insertvalue %498, %499[0] : !llvm.struct<(i64, ptr)> 
    %501 = llvm.insertvalue %497, %500[1] : !llvm.struct<(i64, ptr)> 
    %502 = builtin.unrealized_conversion_cast %501 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %503 = llvm.mlir.constant(1 : index) : i64
    %504 = llvm.mlir.zero : !llvm.ptr
    %505 = llvm.getelementptr %504[%382] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %506 = llvm.ptrtoint %505 : !llvm.ptr to i64
    %507 = llvm.call @malloc(%506) : (i64) -> !llvm.ptr
    %508 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %509 = llvm.insertvalue %507, %508[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %510 = llvm.insertvalue %507, %509[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %511 = llvm.mlir.constant(0 : index) : i64
    %512 = llvm.insertvalue %511, %510[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %513 = llvm.insertvalue %382, %512[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %514 = llvm.insertvalue %503, %513[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb40(%35 : i64)
  ^bb40(%515: i64):  // 2 preds: ^bb39, ^bb41
    %516 = builtin.unrealized_conversion_cast %515 : i64 to index
    %517 = llvm.icmp "slt" %515, %382 : i64
    llvm.cond_br %517, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %518 = llvm.extractvalue %514[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %519 = llvm.getelementptr %518[%515] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %11, %519 : i64, !llvm.ptr
    %520 = llvm.add %515, %33  : i64
    llvm.br ^bb40(%520 : i64)
  ^bb42:  // pred: ^bb40
    %521 = llvm.mlir.constant(1 : index) : i64
    %522 = llvm.alloca %521 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %514, %522 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %523 = llvm.mlir.constant(1 : index) : i64
    %524 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %525 = llvm.insertvalue %523, %524[0] : !llvm.struct<(i64, ptr)> 
    %526 = llvm.insertvalue %522, %525[1] : !llvm.struct<(i64, ptr)> 
    %527 = builtin.unrealized_conversion_cast %526 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %528 = llvm.mlir.constant(1 : index) : i64
    %529 = llvm.mlir.zero : !llvm.ptr
    %530 = llvm.getelementptr %529[%386] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %531 = llvm.ptrtoint %530 : !llvm.ptr to i64
    %532 = llvm.call @malloc(%531) : (i64) -> !llvm.ptr
    %533 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %534 = llvm.insertvalue %532, %533[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %535 = llvm.insertvalue %532, %534[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %536 = llvm.mlir.constant(0 : index) : i64
    %537 = llvm.insertvalue %536, %535[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %538 = llvm.insertvalue %386, %537[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %539 = llvm.insertvalue %528, %538[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb43(%35 : i64)
  ^bb43(%540: i64):  // 2 preds: ^bb42, ^bb44
    %541 = builtin.unrealized_conversion_cast %540 : i64 to index
    %542 = llvm.icmp "slt" %540, %386 : i64
    llvm.cond_br %542, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %543 = llvm.extractvalue %539[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %544 = llvm.getelementptr %543[%540] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %11, %544 : i64, !llvm.ptr
    %545 = llvm.add %540, %33  : i64
    llvm.br ^bb43(%545 : i64)
  ^bb45:  // pred: ^bb43
    %546 = llvm.mlir.constant(1 : index) : i64
    %547 = llvm.alloca %546 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %539, %547 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %548 = llvm.mlir.constant(1 : index) : i64
    %549 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %550 = llvm.insertvalue %548, %549[0] : !llvm.struct<(i64, ptr)> 
    %551 = llvm.insertvalue %547, %550[1] : !llvm.struct<(i64, ptr)> 
    %552 = builtin.unrealized_conversion_cast %551 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %553 = llvm.mlir.constant(1 : index) : i64
    %554 = llvm.mlir.zero : !llvm.ptr
    %555 = llvm.getelementptr %554[%390] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %556 = llvm.ptrtoint %555 : !llvm.ptr to i64
    %557 = llvm.call @malloc(%556) : (i64) -> !llvm.ptr
    %558 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %559 = llvm.insertvalue %557, %558[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %560 = llvm.insertvalue %557, %559[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %561 = llvm.mlir.constant(0 : index) : i64
    %562 = llvm.insertvalue %561, %560[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %563 = llvm.insertvalue %390, %562[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %564 = llvm.insertvalue %553, %563[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb46(%35 : i64)
  ^bb46(%565: i64):  // 2 preds: ^bb45, ^bb47
    %566 = builtin.unrealized_conversion_cast %565 : i64 to index
    %567 = llvm.icmp "slt" %565, %390 : i64
    llvm.cond_br %567, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %568 = llvm.extractvalue %564[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %569 = llvm.getelementptr %568[%565] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %11, %569 : i64, !llvm.ptr
    %570 = llvm.add %565, %33  : i64
    llvm.br ^bb46(%570 : i64)
  ^bb48:  // pred: ^bb46
    %571 = llvm.mlir.constant(1 : index) : i64
    %572 = llvm.alloca %571 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %564, %572 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %573 = llvm.mlir.constant(1 : index) : i64
    %574 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %575 = llvm.insertvalue %573, %574[0] : !llvm.struct<(i64, ptr)> 
    %576 = llvm.insertvalue %572, %575[1] : !llvm.struct<(i64, ptr)> 
    %577 = builtin.unrealized_conversion_cast %576 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %578 = llvm.mlir.constant(1 : index) : i64
    %579 = llvm.mlir.zero : !llvm.ptr
    %580 = llvm.getelementptr %579[%394] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %581 = llvm.ptrtoint %580 : !llvm.ptr to i64
    %582 = llvm.call @malloc(%581) : (i64) -> !llvm.ptr
    %583 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %584 = llvm.insertvalue %582, %583[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %585 = llvm.insertvalue %582, %584[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %586 = llvm.mlir.constant(0 : index) : i64
    %587 = llvm.insertvalue %586, %585[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %588 = llvm.insertvalue %394, %587[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %589 = llvm.insertvalue %578, %588[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb49(%35 : i64)
  ^bb49(%590: i64):  // 2 preds: ^bb48, ^bb50
    %591 = builtin.unrealized_conversion_cast %590 : i64 to index
    %592 = llvm.icmp "slt" %590, %394 : i64
    llvm.cond_br %592, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %593 = llvm.extractvalue %589[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %594 = llvm.getelementptr %593[%590] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %11, %594 : i64, !llvm.ptr
    %595 = llvm.add %590, %33  : i64
    llvm.br ^bb49(%595 : i64)
  ^bb51:  // pred: ^bb49
    %596 = llvm.mlir.constant(1 : index) : i64
    %597 = llvm.alloca %596 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %589, %597 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %598 = llvm.mlir.constant(1 : index) : i64
    %599 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %600 = llvm.insertvalue %598, %599[0] : !llvm.struct<(i64, ptr)> 
    %601 = llvm.insertvalue %597, %600[1] : !llvm.struct<(i64, ptr)> 
    %602 = builtin.unrealized_conversion_cast %601 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %603 = llvm.mlir.constant(1 : index) : i64
    %604 = llvm.mlir.zero : !llvm.ptr
    %605 = llvm.getelementptr %604[%398] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %606 = llvm.ptrtoint %605 : !llvm.ptr to i64
    %607 = llvm.call @malloc(%606) : (i64) -> !llvm.ptr
    %608 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %609 = llvm.insertvalue %607, %608[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %610 = llvm.insertvalue %607, %609[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %611 = llvm.mlir.constant(0 : index) : i64
    %612 = llvm.insertvalue %611, %610[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %613 = llvm.insertvalue %398, %612[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %614 = llvm.insertvalue %603, %613[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb52(%35 : i64)
  ^bb52(%615: i64):  // 2 preds: ^bb51, ^bb53
    %616 = builtin.unrealized_conversion_cast %615 : i64 to index
    %617 = llvm.icmp "slt" %615, %398 : i64
    llvm.cond_br %617, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %618 = llvm.extractvalue %614[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %619 = llvm.getelementptr %618[%615] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %10, %619 : f64, !llvm.ptr
    %620 = llvm.add %615, %33  : i64
    llvm.br ^bb52(%620 : i64)
  ^bb54:  // pred: ^bb52
    %621 = llvm.mlir.constant(1 : index) : i64
    %622 = llvm.alloca %621 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %614, %622 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %623 = llvm.mlir.constant(1 : index) : i64
    %624 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %625 = llvm.insertvalue %623, %624[0] : !llvm.struct<(i64, ptr)> 
    %626 = llvm.insertvalue %622, %625[1] : !llvm.struct<(i64, ptr)> 
    %627 = builtin.unrealized_conversion_cast %626 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    %628 = llvm.extractvalue %426[0] : !llvm.struct<(i64, ptr)> 
    %629 = llvm.extractvalue %426[1] : !llvm.struct<(i64, ptr)> 
    %630 = llvm.extractvalue %451[0] : !llvm.struct<(i64, ptr)> 
    %631 = llvm.extractvalue %451[1] : !llvm.struct<(i64, ptr)> 
    %632 = llvm.extractvalue %476[0] : !llvm.struct<(i64, ptr)> 
    %633 = llvm.extractvalue %476[1] : !llvm.struct<(i64, ptr)> 
    %634 = llvm.extractvalue %501[0] : !llvm.struct<(i64, ptr)> 
    %635 = llvm.extractvalue %501[1] : !llvm.struct<(i64, ptr)> 
    %636 = llvm.extractvalue %526[0] : !llvm.struct<(i64, ptr)> 
    %637 = llvm.extractvalue %526[1] : !llvm.struct<(i64, ptr)> 
    %638 = llvm.extractvalue %551[0] : !llvm.struct<(i64, ptr)> 
    %639 = llvm.extractvalue %551[1] : !llvm.struct<(i64, ptr)> 
    %640 = llvm.extractvalue %576[0] : !llvm.struct<(i64, ptr)> 
    %641 = llvm.extractvalue %576[1] : !llvm.struct<(i64, ptr)> 
    %642 = llvm.extractvalue %601[0] : !llvm.struct<(i64, ptr)> 
    %643 = llvm.extractvalue %601[1] : !llvm.struct<(i64, ptr)> 
    %644 = llvm.extractvalue %626[0] : !llvm.struct<(i64, ptr)> 
    %645 = llvm.extractvalue %626[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64_i64(%26, %35, %32, %33, %32, %628, %629, %630, %631, %632, %633, %634, %635, %636, %637, %638, %639, %640, %641, %642, %643, %644, %645, %26) {filename = "SPARSE_FILE_NAME1"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %646 = llvm.add %97, %3  : i64
    %647 = builtin.unrealized_conversion_cast %646 : i64 to index
    %648 = builtin.unrealized_conversion_cast %647 : index to i64
    %649 = llvm.mlir.constant(1 : index) : i64
    %650 = llvm.mlir.zero : !llvm.ptr
    %651 = llvm.getelementptr %650[%648] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %652 = llvm.ptrtoint %651 : !llvm.ptr to i64
    %653 = llvm.call @malloc(%652) : (i64) -> !llvm.ptr
    %654 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %655 = llvm.insertvalue %653, %654[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %656 = llvm.insertvalue %653, %655[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %657 = llvm.mlir.constant(0 : index) : i64
    %658 = llvm.insertvalue %657, %656[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %659 = llvm.insertvalue %648, %658[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %660 = llvm.insertvalue %649, %659[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %661 = llvm.extractvalue %660[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %662 = llvm.getelementptr %661[%9] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %11, %662 : i64, !llvm.ptr
    %663 = llvm.mlir.constant(1 : index) : i64
    %664 = llvm.mlir.zero : !llvm.ptr
    %665 = llvm.getelementptr %664[%402] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %666 = llvm.ptrtoint %665 : !llvm.ptr to i64
    %667 = llvm.call @malloc(%666) : (i64) -> !llvm.ptr
    %668 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %669 = llvm.insertvalue %667, %668[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %670 = llvm.insertvalue %667, %669[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %671 = llvm.mlir.constant(0 : index) : i64
    %672 = llvm.insertvalue %671, %670[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %673 = llvm.insertvalue %402, %672[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %674 = llvm.insertvalue %663, %673[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb55(%35, %8, %8 : i64, i64, i64)
  ^bb55(%675: i64, %676: i64, %677: i64):  // 2 preds: ^bb54, ^bb64
    %678 = builtin.unrealized_conversion_cast %677 : i64 to index
    %679 = builtin.unrealized_conversion_cast %676 : i64 to index
    %680 = builtin.unrealized_conversion_cast %675 : i64 to index
    %681 = llvm.icmp "slt" %675, %97 : i64
    llvm.cond_br %681, ^bb56, ^bb65
  ^bb56:  // pred: ^bb55
    %682 = llvm.add %675, %33  : i64
    %683 = builtin.unrealized_conversion_cast %682 : i64 to index
    %684 = llvm.extractvalue %210[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %685 = llvm.getelementptr %684[%675] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %686 = llvm.load %685 : !llvm.ptr -> i64
    %687 = llvm.extractvalue %210[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %688 = llvm.getelementptr %687[%682] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %689 = llvm.load %688 : !llvm.ptr -> i64
    llvm.br ^bb57(%686, %677 : i64, i64)
  ^bb57(%690: i64, %691: i64):  // 2 preds: ^bb56, ^bb63
    %692 = builtin.unrealized_conversion_cast %690 : i64 to index
    %693 = llvm.icmp "slt" %690, %689 : i64
    llvm.cond_br %693, ^bb58, ^bb64
  ^bb58:  // pred: ^bb57
    %694 = llvm.extractvalue %235[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %695 = llvm.getelementptr %694[%690] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %696 = llvm.load %695 : !llvm.ptr -> i64
    %697 = builtin.unrealized_conversion_cast %696 : i64 to index
    %698 = llvm.add %696, %33  : i64
    %699 = builtin.unrealized_conversion_cast %698 : i64 to index
    %700 = llvm.extractvalue %514[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %701 = llvm.getelementptr %700[%696] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %702 = llvm.load %701 : !llvm.ptr -> i64
    %703 = llvm.extractvalue %514[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %704 = llvm.getelementptr %703[%698] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %705 = llvm.load %704 : !llvm.ptr -> i64
    llvm.br ^bb59(%702, %691 : i64, i64)
  ^bb59(%706: i64, %707: i64):  // 2 preds: ^bb58, ^bb62
    %708 = builtin.unrealized_conversion_cast %707 : i64 to index
    %709 = builtin.unrealized_conversion_cast %706 : i64 to index
    %710 = llvm.icmp "slt" %706, %705 : i64
    llvm.cond_br %710, ^bb60, ^bb63
  ^bb60:  // pred: ^bb59
    %711 = llvm.extractvalue %539[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %712 = llvm.getelementptr %711[%706] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %713 = llvm.load %712 : !llvm.ptr -> i64
    %714 = builtin.unrealized_conversion_cast %713 : i64 to index
    %715 = llvm.add %676, %3  : i64
    %716 = builtin.unrealized_conversion_cast %715 : i64 to index
    %717 = builtin.unrealized_conversion_cast %716 : index to i64
    %718 = llvm.extractvalue %674[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %719 = llvm.getelementptr %718[%713] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %720 = llvm.load %719 : !llvm.ptr -> i64
    %721 = llvm.icmp "eq" %717, %720 : i64
    llvm.cond_br %721, ^bb62(%707 : i64), ^bb61
  ^bb61:  // pred: ^bb60
    %722 = llvm.extractvalue %674[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %723 = llvm.getelementptr %722[%713] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %717, %723 : i64, !llvm.ptr
    %724 = llvm.add %707, %3  : i64
    %725 = builtin.unrealized_conversion_cast %724 : i64 to index
    %726 = builtin.unrealized_conversion_cast %725 : index to i64
    llvm.br ^bb62(%726 : i64)
  ^bb62(%727: i64):  // 2 preds: ^bb60, ^bb61
    %728 = llvm.add %706, %33  : i64
    llvm.br ^bb59(%728, %727 : i64, i64)
  ^bb63:  // pred: ^bb59
    %729 = llvm.add %690, %33  : i64
    llvm.br ^bb57(%729, %707 : i64, i64)
  ^bb64:  // pred: ^bb57
    %730 = llvm.add %676, %3  : i64
    %731 = builtin.unrealized_conversion_cast %730 : i64 to index
    %732 = builtin.unrealized_conversion_cast %731 : index to i64
    %733 = builtin.unrealized_conversion_cast %731 : index to i64
    %734 = llvm.extractvalue %660[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %735 = llvm.getelementptr %734[%733] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %691, %735 : i64, !llvm.ptr
    llvm.br ^bb55(%682, %732, %691 : i64, i64, i64)
  ^bb65:  // pred: ^bb55
    %736 = llvm.mlir.constant(1 : index) : i64
    %737 = llvm.mlir.constant(1 : index) : i64
    %738 = llvm.mlir.zero : !llvm.ptr
    %739 = llvm.getelementptr %738[%736] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %740 = llvm.ptrtoint %739 : !llvm.ptr to i64
    %741 = llvm.call @malloc(%740) : (i64) -> !llvm.ptr
    %742 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %743 = llvm.insertvalue %741, %742[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %744 = llvm.insertvalue %741, %743[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %745 = llvm.mlir.constant(0 : index) : i64
    %746 = llvm.insertvalue %745, %744[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %747 = llvm.insertvalue %736, %746[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %748 = llvm.insertvalue %737, %747[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %749 = llvm.extractvalue %748[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %750 = llvm.getelementptr %749[%9] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %97, %750 : i64, !llvm.ptr
    %751 = llvm.mlir.constant(1 : index) : i64
    %752 = llvm.mlir.zero : !llvm.ptr
    %753 = llvm.getelementptr %752[%677] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %754 = llvm.ptrtoint %753 : !llvm.ptr to i64
    %755 = llvm.call @malloc(%754) : (i64) -> !llvm.ptr
    %756 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %757 = llvm.insertvalue %755, %756[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %758 = llvm.insertvalue %755, %757[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %759 = llvm.mlir.constant(0 : index) : i64
    %760 = llvm.insertvalue %759, %758[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %761 = llvm.insertvalue %677, %760[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %762 = llvm.insertvalue %751, %761[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %763 = llvm.mlir.constant(1 : index) : i64
    %764 = llvm.mlir.zero : !llvm.ptr
    %765 = llvm.getelementptr %764[%677] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %766 = llvm.ptrtoint %765 : !llvm.ptr to i64
    %767 = llvm.call @malloc(%766) : (i64) -> !llvm.ptr
    %768 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %769 = llvm.insertvalue %767, %768[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %770 = llvm.insertvalue %767, %769[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %771 = llvm.mlir.constant(0 : index) : i64
    %772 = llvm.insertvalue %771, %770[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %773 = llvm.insertvalue %677, %772[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %774 = llvm.insertvalue %763, %773[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb66(%8 : i64)
  ^bb66(%775: i64):  // 2 preds: ^bb65, ^bb67
    %776 = builtin.unrealized_conversion_cast %775 : i64 to index
    %777 = llvm.icmp "slt" %775, %677 : i64
    llvm.cond_br %777, ^bb67, ^bb68
  ^bb67:  // pred: ^bb66
    %778 = llvm.extractvalue %774[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %779 = llvm.getelementptr %778[%775] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %10, %779 : f64, !llvm.ptr
    %780 = llvm.add %775, %5  : i64
    llvm.br ^bb66(%780 : i64)
  ^bb68:  // pred: ^bb66
    %781 = llvm.mlir.constant(1 : index) : i64
    %782 = llvm.mlir.zero : !llvm.ptr
    %783 = llvm.getelementptr %782[%402] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %784 = llvm.ptrtoint %783 : !llvm.ptr to i64
    %785 = llvm.mlir.constant(64 : index) : i64
    %786 = llvm.add %784, %785  : i64
    %787 = llvm.call @malloc(%786) : (i64) -> !llvm.ptr
    %788 = llvm.ptrtoint %787 : !llvm.ptr to i64
    %789 = llvm.mlir.constant(1 : index) : i64
    %790 = llvm.sub %785, %789  : i64
    %791 = llvm.add %788, %790  : i64
    %792 = llvm.urem %791, %785  : i64
    %793 = llvm.sub %791, %792  : i64
    %794 = llvm.inttoptr %793 : i64 to !llvm.ptr
    %795 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %796 = llvm.insertvalue %787, %795[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %797 = llvm.insertvalue %794, %796[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %798 = llvm.mlir.constant(0 : index) : i64
    %799 = llvm.insertvalue %798, %797[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %800 = llvm.insertvalue %402, %799[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %801 = llvm.insertvalue %781, %800[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %802 = llvm.mlir.constant(1 : index) : i64
    %803 = llvm.mlir.zero : !llvm.ptr
    %804 = llvm.getelementptr %803[%402] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %805 = llvm.ptrtoint %804 : !llvm.ptr to i64
    %806 = llvm.mlir.constant(64 : index) : i64
    %807 = llvm.add %805, %806  : i64
    %808 = llvm.call @malloc(%807) : (i64) -> !llvm.ptr
    %809 = llvm.ptrtoint %808 : !llvm.ptr to i64
    %810 = llvm.mlir.constant(1 : index) : i64
    %811 = llvm.sub %806, %810  : i64
    %812 = llvm.add %809, %811  : i64
    %813 = llvm.urem %812, %806  : i64
    %814 = llvm.sub %812, %813  : i64
    %815 = llvm.inttoptr %814 : i64 to !llvm.ptr
    %816 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %817 = llvm.insertvalue %808, %816[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %818 = llvm.insertvalue %815, %817[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %819 = llvm.mlir.constant(0 : index) : i64
    %820 = llvm.insertvalue %819, %818[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %821 = llvm.insertvalue %402, %820[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %822 = llvm.insertvalue %802, %821[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %823 = llvm.mlir.constant(1 : index) : i64
    %824 = llvm.mlir.zero : !llvm.ptr
    %825 = llvm.getelementptr %824[%402] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %826 = llvm.ptrtoint %825 : !llvm.ptr to i64
    %827 = llvm.mlir.constant(64 : index) : i64
    %828 = llvm.add %826, %827  : i64
    %829 = llvm.call @malloc(%828) : (i64) -> !llvm.ptr
    %830 = llvm.ptrtoint %829 : !llvm.ptr to i64
    %831 = llvm.mlir.constant(1 : index) : i64
    %832 = llvm.sub %827, %831  : i64
    %833 = llvm.add %830, %832  : i64
    %834 = llvm.urem %833, %827  : i64
    %835 = llvm.sub %833, %834  : i64
    %836 = llvm.inttoptr %835 : i64 to !llvm.ptr
    %837 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %838 = llvm.insertvalue %829, %837[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %839 = llvm.insertvalue %836, %838[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %840 = llvm.mlir.constant(0 : index) : i64
    %841 = llvm.insertvalue %840, %839[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %842 = llvm.insertvalue %402, %841[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %843 = llvm.insertvalue %823, %842[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb69(%35, %8, %26 : i64, i64, i32)
  ^bb69(%844: i64, %845: i64, %846: i32):  // 2 preds: ^bb68, ^bb84
    %847 = builtin.unrealized_conversion_cast %844 : i64 to index
    %848 = llvm.icmp "slt" %844, %97 : i64
    llvm.cond_br %848, ^bb70, ^bb85
  ^bb70:  // pred: ^bb69
    %849 = llvm.add %846, %26  : i32
    %850 = llvm.add %844, %33  : i64
    %851 = builtin.unrealized_conversion_cast %850 : i64 to index
    %852 = llvm.extractvalue %210[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %853 = llvm.getelementptr %852[%844] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %854 = llvm.load %853 : !llvm.ptr -> i64
    %855 = llvm.extractvalue %210[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %856 = llvm.getelementptr %855[%850] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %857 = llvm.load %856 : !llvm.ptr -> i64
    llvm.br ^bb71(%854, %8 : i64, i64)
  ^bb71(%858: i64, %859: i64):  // 2 preds: ^bb70, ^bb79
    %860 = builtin.unrealized_conversion_cast %858 : i64 to index
    %861 = llvm.icmp "slt" %858, %857 : i64
    llvm.cond_br %861, ^bb72, ^bb80(%35, %845 : i64, i64)
  ^bb72:  // pred: ^bb71
    %862 = llvm.extractvalue %235[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %863 = llvm.getelementptr %862[%858] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %864 = llvm.load %863 : !llvm.ptr -> i64
    %865 = builtin.unrealized_conversion_cast %864 : i64 to index
    %866 = llvm.add %864, %33  : i64
    %867 = builtin.unrealized_conversion_cast %866 : i64 to index
    %868 = llvm.extractvalue %514[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %869 = llvm.getelementptr %868[%864] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %870 = llvm.load %869 : !llvm.ptr -> i64
    %871 = llvm.extractvalue %514[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %872 = llvm.getelementptr %871[%866] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %873 = llvm.load %872 : !llvm.ptr -> i64
    llvm.br ^bb73(%870, %859 : i64, i64)
  ^bb73(%874: i64, %875: i64):  // 2 preds: ^bb72, ^bb78
    %876 = builtin.unrealized_conversion_cast %875 : i64 to index
    %877 = builtin.unrealized_conversion_cast %874 : i64 to index
    %878 = llvm.icmp "slt" %874, %873 : i64
    llvm.cond_br %878, ^bb74, ^bb79
  ^bb74:  // pred: ^bb73
    %879 = llvm.extractvalue %539[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %880 = llvm.getelementptr %879[%874] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %881 = llvm.load %880 : !llvm.ptr -> i64
    %882 = builtin.unrealized_conversion_cast %881 : i64 to index
    %883 = llvm.extractvalue %310[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %884 = llvm.getelementptr %883[%858] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %885 = llvm.load %884 : !llvm.ptr -> f64
    %886 = llvm.extractvalue %614[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %887 = llvm.getelementptr %886[%874] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %888 = llvm.load %887 : !llvm.ptr -> f64
    %889 = llvm.fmul %885, %888  : f64
    %890 = llvm.extractvalue %822[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %891 = llvm.getelementptr %890[%881] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %892 = llvm.load %891 : !llvm.ptr -> i32
    %893 = llvm.icmp "eq" %892, %849 : i32
    llvm.cond_br %893, ^bb75, ^bb76(%10 : f64)
  ^bb75:  // pred: ^bb74
    %894 = llvm.extractvalue %801[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %895 = llvm.getelementptr %894[%881] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %896 = llvm.load %895 : !llvm.ptr -> f64
    llvm.br ^bb76(%896 : f64)
  ^bb76(%897: f64):  // 2 preds: ^bb74, ^bb75
    %898 = llvm.fadd %897, %889  : f64
    %899 = llvm.icmp "ne" %892, %849 : i32
    llvm.cond_br %899, ^bb77, ^bb78(%875 : i64)
  ^bb77:  // pred: ^bb76
    %900 = llvm.extractvalue %822[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %901 = llvm.getelementptr %900[%881] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %849, %901 : i32, !llvm.ptr
    %902 = llvm.extractvalue %843[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %903 = llvm.getelementptr %902[%875] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %881, %903 : i64, !llvm.ptr
    %904 = llvm.add %875, %3  : i64
    %905 = builtin.unrealized_conversion_cast %904 : i64 to index
    %906 = builtin.unrealized_conversion_cast %905 : index to i64
    llvm.br ^bb78(%906 : i64)
  ^bb78(%907: i64):  // 2 preds: ^bb76, ^bb77
    %908 = llvm.extractvalue %801[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %909 = llvm.getelementptr %908[%881] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %898, %909 : f64, !llvm.ptr
    %910 = llvm.add %874, %33  : i64
    llvm.br ^bb73(%910, %907 : i64, i64)
  ^bb79:  // pred: ^bb73
    %911 = llvm.add %858, %33  : i64
    llvm.br ^bb71(%911, %875 : i64, i64)
  ^bb80(%912: i64, %913: i64):  // 2 preds: ^bb71, ^bb83
    %914 = builtin.unrealized_conversion_cast %913 : i64 to index
    %915 = builtin.unrealized_conversion_cast %912 : i64 to index
    %916 = llvm.icmp "slt" %912, %859 : i64
    llvm.cond_br %916, ^bb81, ^bb84
  ^bb81:  // pred: ^bb80
    %917 = llvm.extractvalue %843[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %918 = llvm.getelementptr %917[%912] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %919 = llvm.load %918 : !llvm.ptr -> i64
    %920 = builtin.unrealized_conversion_cast %919 : i64 to index
    %921 = llvm.extractvalue %822[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %922 = llvm.getelementptr %921[%919] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %923 = llvm.load %922 : !llvm.ptr -> i32
    %924 = llvm.icmp "eq" %923, %849 : i32
    llvm.cond_br %924, ^bb82, ^bb83(%10 : f64)
  ^bb82:  // pred: ^bb81
    %925 = llvm.extractvalue %801[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %926 = llvm.getelementptr %925[%919] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %927 = llvm.load %926 : !llvm.ptr -> f64
    llvm.br ^bb83(%927 : f64)
  ^bb83(%928: f64):  // 2 preds: ^bb81, ^bb82
    %929 = llvm.extractvalue %762[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %930 = llvm.getelementptr %929[%913] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %919, %930 : i64, !llvm.ptr
    %931 = llvm.add %913, %3  : i64
    %932 = builtin.unrealized_conversion_cast %931 : i64 to index
    %933 = builtin.unrealized_conversion_cast %932 : index to i64
    %934 = llvm.extractvalue %774[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %935 = llvm.getelementptr %934[%913] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %928, %935 : f64, !llvm.ptr
    %936 = llvm.add %912, %33  : i64
    llvm.br ^bb80(%936, %933 : i64, i64)
  ^bb84:  // pred: ^bb80
    llvm.br ^bb69(%850, %913, %849 : i64, i64, i32)
  ^bb85:  // pred: ^bb69
    %937 = llvm.mlir.constant(1 : index) : i64
    %938 = llvm.mlir.constant(1 : index) : i64
    %939 = llvm.mlir.zero : !llvm.ptr
    %940 = llvm.getelementptr %939[%937] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %941 = llvm.ptrtoint %940 : !llvm.ptr to i64
    %942 = llvm.mlir.constant(64 : index) : i64
    %943 = llvm.add %941, %942  : i64
    %944 = llvm.call @malloc(%943) : (i64) -> !llvm.ptr
    %945 = llvm.ptrtoint %944 : !llvm.ptr to i64
    %946 = llvm.mlir.constant(1 : index) : i64
    %947 = llvm.sub %942, %946  : i64
    %948 = llvm.add %945, %947  : i64
    %949 = llvm.urem %948, %942  : i64
    %950 = llvm.sub %948, %949  : i64
    %951 = llvm.inttoptr %950 : i64 to !llvm.ptr
    %952 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %953 = llvm.insertvalue %944, %952[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %954 = llvm.insertvalue %951, %953[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %955 = llvm.mlir.constant(0 : index) : i64
    %956 = llvm.insertvalue %955, %954[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %957 = llvm.insertvalue %937, %956[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %958 = llvm.insertvalue %938, %957[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %959 = llvm.extractvalue %958[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %960 = llvm.getelementptr %959[%9] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %2, %960 : i64, !llvm.ptr
    %961 = llvm.mlir.constant(1 : index) : i64
    %962 = llvm.alloca %961 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %748, %962 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %963 = llvm.mlir.constant(1 : index) : i64
    %964 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %965 = llvm.insertvalue %963, %964[0] : !llvm.struct<(i64, ptr)> 
    %966 = llvm.insertvalue %962, %965[1] : !llvm.struct<(i64, ptr)> 
    %967 = builtin.unrealized_conversion_cast %966 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %968 = llvm.extractvalue %966[0] : !llvm.struct<(i64, ptr)> 
    %969 = llvm.extractvalue %966[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_i64(%968, %969) : (i64, !llvm.ptr) -> ()
    %970 = llvm.mlir.constant(1 : index) : i64
    %971 = llvm.alloca %970 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %958, %971 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %972 = llvm.mlir.constant(1 : index) : i64
    %973 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %974 = llvm.insertvalue %972, %973[0] : !llvm.struct<(i64, ptr)> 
    %975 = llvm.insertvalue %971, %974[1] : !llvm.struct<(i64, ptr)> 
    %976 = builtin.unrealized_conversion_cast %975 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %977 = llvm.extractvalue %975[0] : !llvm.struct<(i64, ptr)> 
    %978 = llvm.extractvalue %975[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_index(%977, %978) : (i64, !llvm.ptr) -> ()
    %979 = llvm.mlir.constant(1 : index) : i64
    %980 = llvm.alloca %979 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %660, %980 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %981 = llvm.mlir.constant(1 : index) : i64
    %982 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %983 = llvm.insertvalue %981, %982[0] : !llvm.struct<(i64, ptr)> 
    %984 = llvm.insertvalue %980, %983[1] : !llvm.struct<(i64, ptr)> 
    %985 = builtin.unrealized_conversion_cast %984 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %986 = llvm.extractvalue %984[0] : !llvm.struct<(i64, ptr)> 
    %987 = llvm.extractvalue %984[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_i64(%986, %987) : (i64, !llvm.ptr) -> ()
    %988 = llvm.mlir.constant(1 : index) : i64
    %989 = llvm.alloca %988 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %762, %989 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %990 = llvm.mlir.constant(1 : index) : i64
    %991 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %992 = llvm.insertvalue %990, %991[0] : !llvm.struct<(i64, ptr)> 
    %993 = llvm.insertvalue %989, %992[1] : !llvm.struct<(i64, ptr)> 
    %994 = builtin.unrealized_conversion_cast %993 : !llvm.struct<(i64, ptr)> to memref<*xi64>
    %995 = llvm.extractvalue %993[0] : !llvm.struct<(i64, ptr)> 
    %996 = llvm.extractvalue %993[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_i64(%995, %996) : (i64, !llvm.ptr) -> ()
    %997 = llvm.mlir.constant(1 : index) : i64
    %998 = llvm.alloca %997 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %774, %998 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %999 = llvm.mlir.constant(1 : index) : i64
    %1000 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %1001 = llvm.insertvalue %999, %1000[0] : !llvm.struct<(i64, ptr)> 
    %1002 = llvm.insertvalue %998, %1001[1] : !llvm.struct<(i64, ptr)> 
    %1003 = builtin.unrealized_conversion_cast %1002 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    %1004 = llvm.extractvalue %1002[0] : !llvm.struct<(i64, ptr)> 
    %1005 = llvm.extractvalue %1002[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%1004, %1005) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @read_input_2D_f64_i64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @read_input_sizes_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_i64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_index(i64, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


// -----// IR Dump After ReconcileUnrealizedCasts (reconcile-unrealized-casts) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(-1 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %4 = llvm.mlir.constant(0 : i64) : i64
    %5 = llvm.mlir.constant(10 : index) : i64
    %6 = llvm.mlir.constant(9 : index) : i64
    %7 = llvm.mlir.constant(8 : index) : i64
    %8 = llvm.mlir.constant(7 : index) : i64
    %9 = llvm.mlir.constant(6 : index) : i64
    %10 = llvm.mlir.constant(5 : index) : i64
    %11 = llvm.mlir.constant(4 : index) : i64
    %12 = llvm.mlir.constant(1 : i32) : i32
    %13 = llvm.mlir.constant(0 : i32) : i32
    %14 = llvm.mlir.constant(3 : index) : i64
    %15 = llvm.mlir.constant(2 : index) : i64
    %16 = llvm.mlir.constant(-1 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.mlir.constant(13 : index) : i64
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.mlir.zero : !llvm.ptr
    %22 = llvm.getelementptr %21[13] : (!llvm.ptr) -> !llvm.ptr, i64
    %23 = llvm.ptrtoint %22 : !llvm.ptr to i64
    %24 = llvm.call @malloc(%23) : (i64) -> !llvm.ptr
    %25 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %26 = llvm.insertvalue %24, %25[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.insertvalue %24, %26[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.mlir.constant(0 : index) : i64
    %29 = llvm.insertvalue %28, %27[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.insertvalue %19, %29[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.insertvalue %20, %30[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.alloca %32 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %31, %33 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %36 = llvm.insertvalue %34, %35[0] : !llvm.struct<(i64, ptr)> 
    %37 = llvm.insertvalue %33, %36[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%13, %18, %16, %17, %16, %34, %33, %12) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
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
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.mlir.zero : !llvm.ptr
    %59 = llvm.getelementptr %58[%38] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %60 = llvm.ptrtoint %59 : !llvm.ptr to i64
    %61 = llvm.call @malloc(%60) : (i64) -> !llvm.ptr
    %62 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %63 = llvm.insertvalue %61, %62[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.insertvalue %61, %63[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.insertvalue %65, %64[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.insertvalue %38, %66[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.insertvalue %57, %67[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%18 : i64)
  ^bb1(%69: i64):  // 2 preds: ^bb0, ^bb2
    %70 = llvm.icmp "slt" %69, %38 : i64
    llvm.cond_br %70, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %71 = llvm.getelementptr %61[%69] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %71 : i64, !llvm.ptr
    %72 = llvm.add %69, %17  : i64
    llvm.br ^bb1(%72 : i64)
  ^bb3:  // pred: ^bb1
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.alloca %73 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %68, %74 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %77 = llvm.insertvalue %75, %76[0] : !llvm.struct<(i64, ptr)> 
    %78 = llvm.insertvalue %74, %77[1] : !llvm.struct<(i64, ptr)> 
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.mlir.zero : !llvm.ptr
    %81 = llvm.getelementptr %80[%40] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %82 = llvm.ptrtoint %81 : !llvm.ptr to i64
    %83 = llvm.call @malloc(%82) : (i64) -> !llvm.ptr
    %84 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %85 = llvm.insertvalue %83, %84[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.insertvalue %83, %85[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.mlir.constant(0 : index) : i64
    %88 = llvm.insertvalue %87, %86[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.insertvalue %40, %88[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.insertvalue %79, %89[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%18 : i64)
  ^bb4(%91: i64):  // 2 preds: ^bb3, ^bb5
    %92 = llvm.icmp "slt" %91, %40 : i64
    llvm.cond_br %92, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %93 = llvm.getelementptr %83[%91] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %93 : i64, !llvm.ptr
    %94 = llvm.add %91, %17  : i64
    llvm.br ^bb4(%94 : i64)
  ^bb6:  // pred: ^bb4
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.alloca %95 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %90, %96 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %99 = llvm.insertvalue %97, %98[0] : !llvm.struct<(i64, ptr)> 
    %100 = llvm.insertvalue %96, %99[1] : !llvm.struct<(i64, ptr)> 
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.mlir.zero : !llvm.ptr
    %103 = llvm.getelementptr %102[%42] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %104 = llvm.ptrtoint %103 : !llvm.ptr to i64
    %105 = llvm.call @malloc(%104) : (i64) -> !llvm.ptr
    %106 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %107 = llvm.insertvalue %105, %106[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %108 = llvm.insertvalue %105, %107[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %109 = llvm.mlir.constant(0 : index) : i64
    %110 = llvm.insertvalue %109, %108[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.insertvalue %42, %110[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %112 = llvm.insertvalue %101, %111[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%18 : i64)
  ^bb7(%113: i64):  // 2 preds: ^bb6, ^bb8
    %114 = llvm.icmp "slt" %113, %42 : i64
    llvm.cond_br %114, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %115 = llvm.getelementptr %105[%113] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %115 : i64, !llvm.ptr
    %116 = llvm.add %113, %17  : i64
    llvm.br ^bb7(%116 : i64)
  ^bb9:  // pred: ^bb7
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.alloca %117 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %112, %118 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %121 = llvm.insertvalue %119, %120[0] : !llvm.struct<(i64, ptr)> 
    %122 = llvm.insertvalue %118, %121[1] : !llvm.struct<(i64, ptr)> 
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.mlir.zero : !llvm.ptr
    %125 = llvm.getelementptr %124[%44] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %126 = llvm.ptrtoint %125 : !llvm.ptr to i64
    %127 = llvm.call @malloc(%126) : (i64) -> !llvm.ptr
    %128 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %129 = llvm.insertvalue %127, %128[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %130 = llvm.insertvalue %127, %129[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.mlir.constant(0 : index) : i64
    %132 = llvm.insertvalue %131, %130[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.insertvalue %44, %132[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %134 = llvm.insertvalue %123, %133[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%18 : i64)
  ^bb10(%135: i64):  // 2 preds: ^bb9, ^bb11
    %136 = llvm.icmp "slt" %135, %44 : i64
    llvm.cond_br %136, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %137 = llvm.getelementptr %127[%135] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %137 : i64, !llvm.ptr
    %138 = llvm.add %135, %17  : i64
    llvm.br ^bb10(%138 : i64)
  ^bb12:  // pred: ^bb10
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.alloca %139 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %134, %140 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %143 = llvm.insertvalue %141, %142[0] : !llvm.struct<(i64, ptr)> 
    %144 = llvm.insertvalue %140, %143[1] : !llvm.struct<(i64, ptr)> 
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.mlir.zero : !llvm.ptr
    %147 = llvm.getelementptr %146[%46] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %148 = llvm.ptrtoint %147 : !llvm.ptr to i64
    %149 = llvm.call @malloc(%148) : (i64) -> !llvm.ptr
    %150 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %151 = llvm.insertvalue %149, %150[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %152 = llvm.insertvalue %149, %151[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %153 = llvm.mlir.constant(0 : index) : i64
    %154 = llvm.insertvalue %153, %152[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %155 = llvm.insertvalue %46, %154[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.insertvalue %145, %155[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%18 : i64)
  ^bb13(%157: i64):  // 2 preds: ^bb12, ^bb14
    %158 = llvm.icmp "slt" %157, %46 : i64
    llvm.cond_br %158, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %159 = llvm.getelementptr %149[%157] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %159 : i64, !llvm.ptr
    %160 = llvm.add %157, %17  : i64
    llvm.br ^bb13(%160 : i64)
  ^bb15:  // pred: ^bb13
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.alloca %161 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %156, %162 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %165 = llvm.insertvalue %163, %164[0] : !llvm.struct<(i64, ptr)> 
    %166 = llvm.insertvalue %162, %165[1] : !llvm.struct<(i64, ptr)> 
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.mlir.zero : !llvm.ptr
    %169 = llvm.getelementptr %168[%48] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %170 = llvm.ptrtoint %169 : !llvm.ptr to i64
    %171 = llvm.call @malloc(%170) : (i64) -> !llvm.ptr
    %172 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %173 = llvm.insertvalue %171, %172[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %174 = llvm.insertvalue %171, %173[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %175 = llvm.mlir.constant(0 : index) : i64
    %176 = llvm.insertvalue %175, %174[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %177 = llvm.insertvalue %48, %176[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %178 = llvm.insertvalue %167, %177[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%18 : i64)
  ^bb16(%179: i64):  // 2 preds: ^bb15, ^bb17
    %180 = llvm.icmp "slt" %179, %48 : i64
    llvm.cond_br %180, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %181 = llvm.getelementptr %171[%179] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %181 : i64, !llvm.ptr
    %182 = llvm.add %179, %17  : i64
    llvm.br ^bb16(%182 : i64)
  ^bb18:  // pred: ^bb16
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.alloca %183 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %178, %184 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %187 = llvm.insertvalue %185, %186[0] : !llvm.struct<(i64, ptr)> 
    %188 = llvm.insertvalue %184, %187[1] : !llvm.struct<(i64, ptr)> 
    %189 = llvm.mlir.constant(1 : index) : i64
    %190 = llvm.mlir.zero : !llvm.ptr
    %191 = llvm.getelementptr %190[%50] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %192 = llvm.ptrtoint %191 : !llvm.ptr to i64
    %193 = llvm.call @malloc(%192) : (i64) -> !llvm.ptr
    %194 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %195 = llvm.insertvalue %193, %194[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %196 = llvm.insertvalue %193, %195[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.insertvalue %197, %196[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %199 = llvm.insertvalue %50, %198[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.insertvalue %189, %199[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%18 : i64)
  ^bb19(%201: i64):  // 2 preds: ^bb18, ^bb20
    %202 = llvm.icmp "slt" %201, %50 : i64
    llvm.cond_br %202, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %203 = llvm.getelementptr %193[%201] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %203 : i64, !llvm.ptr
    %204 = llvm.add %201, %17  : i64
    llvm.br ^bb19(%204 : i64)
  ^bb21:  // pred: ^bb19
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.alloca %205 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %200, %206 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %209 = llvm.insertvalue %207, %208[0] : !llvm.struct<(i64, ptr)> 
    %210 = llvm.insertvalue %206, %209[1] : !llvm.struct<(i64, ptr)> 
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.zero : !llvm.ptr
    %213 = llvm.getelementptr %212[%52] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %214 = llvm.ptrtoint %213 : !llvm.ptr to i64
    %215 = llvm.call @malloc(%214) : (i64) -> !llvm.ptr
    %216 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %217 = llvm.insertvalue %215, %216[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %218 = llvm.insertvalue %215, %217[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.insertvalue %219, %218[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %221 = llvm.insertvalue %52, %220[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %222 = llvm.insertvalue %211, %221[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%18 : i64)
  ^bb22(%223: i64):  // 2 preds: ^bb21, ^bb23
    %224 = llvm.icmp "slt" %223, %52 : i64
    llvm.cond_br %224, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %225 = llvm.getelementptr %215[%223] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %225 : i64, !llvm.ptr
    %226 = llvm.add %223, %17  : i64
    llvm.br ^bb22(%226 : i64)
  ^bb24:  // pred: ^bb22
    %227 = llvm.mlir.constant(1 : index) : i64
    %228 = llvm.alloca %227 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %222, %228 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %231 = llvm.insertvalue %229, %230[0] : !llvm.struct<(i64, ptr)> 
    %232 = llvm.insertvalue %228, %231[1] : !llvm.struct<(i64, ptr)> 
    %233 = llvm.mlir.constant(1 : index) : i64
    %234 = llvm.mlir.zero : !llvm.ptr
    %235 = llvm.getelementptr %234[%54] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %236 = llvm.ptrtoint %235 : !llvm.ptr to i64
    %237 = llvm.call @malloc(%236) : (i64) -> !llvm.ptr
    %238 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %239 = llvm.insertvalue %237, %238[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %240 = llvm.insertvalue %237, %239[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %241 = llvm.mlir.constant(0 : index) : i64
    %242 = llvm.insertvalue %241, %240[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %243 = llvm.insertvalue %54, %242[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %244 = llvm.insertvalue %233, %243[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%18 : i64)
  ^bb25(%245: i64):  // 2 preds: ^bb24, ^bb26
    %246 = llvm.icmp "slt" %245, %54 : i64
    llvm.cond_br %246, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %247 = llvm.getelementptr %237[%245] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %3, %247 : f64, !llvm.ptr
    %248 = llvm.add %245, %17  : i64
    llvm.br ^bb25(%248 : i64)
  ^bb27:  // pred: ^bb25
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.alloca %249 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %244, %250 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %253 = llvm.insertvalue %251, %252[0] : !llvm.struct<(i64, ptr)> 
    %254 = llvm.insertvalue %250, %253[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64_i64(%13, %18, %16, %17, %16, %75, %74, %97, %96, %119, %118, %141, %140, %163, %162, %185, %184, %207, %206, %229, %228, %251, %250, %12) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %255 = llvm.mlir.constant(13 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.mlir.zero : !llvm.ptr
    %258 = llvm.getelementptr %257[13] : (!llvm.ptr) -> !llvm.ptr, i64
    %259 = llvm.ptrtoint %258 : !llvm.ptr to i64
    %260 = llvm.call @malloc(%259) : (i64) -> !llvm.ptr
    %261 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %262 = llvm.insertvalue %260, %261[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %263 = llvm.insertvalue %260, %262[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.insertvalue %264, %263[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %266 = llvm.insertvalue %255, %265[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.insertvalue %256, %266[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.alloca %268 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %267, %269 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %272 = llvm.insertvalue %270, %271[0] : !llvm.struct<(i64, ptr)> 
    %273 = llvm.insertvalue %269, %272[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%12, %18, %16, %17, %16, %270, %269, %12) {filename = "SPARSE_FILE_NAME1"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %274 = llvm.load %260 : !llvm.ptr -> i64
    %275 = llvm.getelementptr %260[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %276 = llvm.load %275 : !llvm.ptr -> i64
    %277 = llvm.getelementptr %260[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %278 = llvm.load %277 : !llvm.ptr -> i64
    %279 = llvm.getelementptr %260[3] : (!llvm.ptr) -> !llvm.ptr, i64
    %280 = llvm.load %279 : !llvm.ptr -> i64
    %281 = llvm.getelementptr %260[4] : (!llvm.ptr) -> !llvm.ptr, i64
    %282 = llvm.load %281 : !llvm.ptr -> i64
    %283 = llvm.getelementptr %260[5] : (!llvm.ptr) -> !llvm.ptr, i64
    %284 = llvm.load %283 : !llvm.ptr -> i64
    %285 = llvm.getelementptr %260[6] : (!llvm.ptr) -> !llvm.ptr, i64
    %286 = llvm.load %285 : !llvm.ptr -> i64
    %287 = llvm.getelementptr %260[7] : (!llvm.ptr) -> !llvm.ptr, i64
    %288 = llvm.load %287 : !llvm.ptr -> i64
    %289 = llvm.getelementptr %260[8] : (!llvm.ptr) -> !llvm.ptr, i64
    %290 = llvm.load %289 : !llvm.ptr -> i64
    %291 = llvm.getelementptr %260[10] : (!llvm.ptr) -> !llvm.ptr, i64
    %292 = llvm.load %291 : !llvm.ptr -> i64
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.mlir.zero : !llvm.ptr
    %295 = llvm.getelementptr %294[%274] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %296 = llvm.ptrtoint %295 : !llvm.ptr to i64
    %297 = llvm.call @malloc(%296) : (i64) -> !llvm.ptr
    %298 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %299 = llvm.insertvalue %297, %298[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %300 = llvm.insertvalue %297, %299[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %301 = llvm.mlir.constant(0 : index) : i64
    %302 = llvm.insertvalue %301, %300[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %303 = llvm.insertvalue %274, %302[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %304 = llvm.insertvalue %293, %303[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb28(%18 : i64)
  ^bb28(%305: i64):  // 2 preds: ^bb27, ^bb29
    %306 = llvm.icmp "slt" %305, %274 : i64
    llvm.cond_br %306, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %307 = llvm.getelementptr %297[%305] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %307 : i64, !llvm.ptr
    %308 = llvm.add %305, %17  : i64
    llvm.br ^bb28(%308 : i64)
  ^bb30:  // pred: ^bb28
    %309 = llvm.mlir.constant(1 : index) : i64
    %310 = llvm.alloca %309 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %304, %310 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %311 = llvm.mlir.constant(1 : index) : i64
    %312 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %313 = llvm.insertvalue %311, %312[0] : !llvm.struct<(i64, ptr)> 
    %314 = llvm.insertvalue %310, %313[1] : !llvm.struct<(i64, ptr)> 
    %315 = llvm.mlir.constant(1 : index) : i64
    %316 = llvm.mlir.zero : !llvm.ptr
    %317 = llvm.getelementptr %316[%276] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %318 = llvm.ptrtoint %317 : !llvm.ptr to i64
    %319 = llvm.call @malloc(%318) : (i64) -> !llvm.ptr
    %320 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %321 = llvm.insertvalue %319, %320[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %322 = llvm.insertvalue %319, %321[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.insertvalue %323, %322[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %325 = llvm.insertvalue %276, %324[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %326 = llvm.insertvalue %315, %325[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb31(%18 : i64)
  ^bb31(%327: i64):  // 2 preds: ^bb30, ^bb32
    %328 = llvm.icmp "slt" %327, %276 : i64
    llvm.cond_br %328, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %329 = llvm.getelementptr %319[%327] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %329 : i64, !llvm.ptr
    %330 = llvm.add %327, %17  : i64
    llvm.br ^bb31(%330 : i64)
  ^bb33:  // pred: ^bb31
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.alloca %331 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %326, %332 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %335 = llvm.insertvalue %333, %334[0] : !llvm.struct<(i64, ptr)> 
    %336 = llvm.insertvalue %332, %335[1] : !llvm.struct<(i64, ptr)> 
    %337 = llvm.mlir.constant(1 : index) : i64
    %338 = llvm.mlir.zero : !llvm.ptr
    %339 = llvm.getelementptr %338[%278] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %340 = llvm.ptrtoint %339 : !llvm.ptr to i64
    %341 = llvm.call @malloc(%340) : (i64) -> !llvm.ptr
    %342 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %343 = llvm.insertvalue %341, %342[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %344 = llvm.insertvalue %341, %343[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %345 = llvm.mlir.constant(0 : index) : i64
    %346 = llvm.insertvalue %345, %344[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %347 = llvm.insertvalue %278, %346[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %348 = llvm.insertvalue %337, %347[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb34(%18 : i64)
  ^bb34(%349: i64):  // 2 preds: ^bb33, ^bb35
    %350 = llvm.icmp "slt" %349, %278 : i64
    llvm.cond_br %350, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %351 = llvm.getelementptr %341[%349] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %351 : i64, !llvm.ptr
    %352 = llvm.add %349, %17  : i64
    llvm.br ^bb34(%352 : i64)
  ^bb36:  // pred: ^bb34
    %353 = llvm.mlir.constant(1 : index) : i64
    %354 = llvm.alloca %353 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %348, %354 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %355 = llvm.mlir.constant(1 : index) : i64
    %356 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %357 = llvm.insertvalue %355, %356[0] : !llvm.struct<(i64, ptr)> 
    %358 = llvm.insertvalue %354, %357[1] : !llvm.struct<(i64, ptr)> 
    %359 = llvm.mlir.constant(1 : index) : i64
    %360 = llvm.mlir.zero : !llvm.ptr
    %361 = llvm.getelementptr %360[%280] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %362 = llvm.ptrtoint %361 : !llvm.ptr to i64
    %363 = llvm.call @malloc(%362) : (i64) -> !llvm.ptr
    %364 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %365 = llvm.insertvalue %363, %364[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %366 = llvm.insertvalue %363, %365[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %367 = llvm.mlir.constant(0 : index) : i64
    %368 = llvm.insertvalue %367, %366[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %369 = llvm.insertvalue %280, %368[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %370 = llvm.insertvalue %359, %369[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb37(%18 : i64)
  ^bb37(%371: i64):  // 2 preds: ^bb36, ^bb38
    %372 = llvm.icmp "slt" %371, %280 : i64
    llvm.cond_br %372, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %373 = llvm.getelementptr %363[%371] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %373 : i64, !llvm.ptr
    %374 = llvm.add %371, %17  : i64
    llvm.br ^bb37(%374 : i64)
  ^bb39:  // pred: ^bb37
    %375 = llvm.mlir.constant(1 : index) : i64
    %376 = llvm.alloca %375 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %370, %376 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %377 = llvm.mlir.constant(1 : index) : i64
    %378 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %379 = llvm.insertvalue %377, %378[0] : !llvm.struct<(i64, ptr)> 
    %380 = llvm.insertvalue %376, %379[1] : !llvm.struct<(i64, ptr)> 
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.mlir.zero : !llvm.ptr
    %383 = llvm.getelementptr %382[%282] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %384 = llvm.ptrtoint %383 : !llvm.ptr to i64
    %385 = llvm.call @malloc(%384) : (i64) -> !llvm.ptr
    %386 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %387 = llvm.insertvalue %385, %386[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %388 = llvm.insertvalue %385, %387[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %389 = llvm.mlir.constant(0 : index) : i64
    %390 = llvm.insertvalue %389, %388[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %391 = llvm.insertvalue %282, %390[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %392 = llvm.insertvalue %381, %391[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb40(%18 : i64)
  ^bb40(%393: i64):  // 2 preds: ^bb39, ^bb41
    %394 = llvm.icmp "slt" %393, %282 : i64
    llvm.cond_br %394, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %395 = llvm.getelementptr %385[%393] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %395 : i64, !llvm.ptr
    %396 = llvm.add %393, %17  : i64
    llvm.br ^bb40(%396 : i64)
  ^bb42:  // pred: ^bb40
    %397 = llvm.mlir.constant(1 : index) : i64
    %398 = llvm.alloca %397 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %392, %398 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %399 = llvm.mlir.constant(1 : index) : i64
    %400 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %401 = llvm.insertvalue %399, %400[0] : !llvm.struct<(i64, ptr)> 
    %402 = llvm.insertvalue %398, %401[1] : !llvm.struct<(i64, ptr)> 
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.mlir.zero : !llvm.ptr
    %405 = llvm.getelementptr %404[%284] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %406 = llvm.ptrtoint %405 : !llvm.ptr to i64
    %407 = llvm.call @malloc(%406) : (i64) -> !llvm.ptr
    %408 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %409 = llvm.insertvalue %407, %408[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %410 = llvm.insertvalue %407, %409[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %411 = llvm.mlir.constant(0 : index) : i64
    %412 = llvm.insertvalue %411, %410[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %413 = llvm.insertvalue %284, %412[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %414 = llvm.insertvalue %403, %413[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb43(%18 : i64)
  ^bb43(%415: i64):  // 2 preds: ^bb42, ^bb44
    %416 = llvm.icmp "slt" %415, %284 : i64
    llvm.cond_br %416, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %417 = llvm.getelementptr %407[%415] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %417 : i64, !llvm.ptr
    %418 = llvm.add %415, %17  : i64
    llvm.br ^bb43(%418 : i64)
  ^bb45:  // pred: ^bb43
    %419 = llvm.mlir.constant(1 : index) : i64
    %420 = llvm.alloca %419 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %414, %420 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %421 = llvm.mlir.constant(1 : index) : i64
    %422 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %423 = llvm.insertvalue %421, %422[0] : !llvm.struct<(i64, ptr)> 
    %424 = llvm.insertvalue %420, %423[1] : !llvm.struct<(i64, ptr)> 
    %425 = llvm.mlir.constant(1 : index) : i64
    %426 = llvm.mlir.zero : !llvm.ptr
    %427 = llvm.getelementptr %426[%286] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %428 = llvm.ptrtoint %427 : !llvm.ptr to i64
    %429 = llvm.call @malloc(%428) : (i64) -> !llvm.ptr
    %430 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %431 = llvm.insertvalue %429, %430[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %432 = llvm.insertvalue %429, %431[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %433 = llvm.mlir.constant(0 : index) : i64
    %434 = llvm.insertvalue %433, %432[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %435 = llvm.insertvalue %286, %434[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %436 = llvm.insertvalue %425, %435[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb46(%18 : i64)
  ^bb46(%437: i64):  // 2 preds: ^bb45, ^bb47
    %438 = llvm.icmp "slt" %437, %286 : i64
    llvm.cond_br %438, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %439 = llvm.getelementptr %429[%437] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %439 : i64, !llvm.ptr
    %440 = llvm.add %437, %17  : i64
    llvm.br ^bb46(%440 : i64)
  ^bb48:  // pred: ^bb46
    %441 = llvm.mlir.constant(1 : index) : i64
    %442 = llvm.alloca %441 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %436, %442 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %443 = llvm.mlir.constant(1 : index) : i64
    %444 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %445 = llvm.insertvalue %443, %444[0] : !llvm.struct<(i64, ptr)> 
    %446 = llvm.insertvalue %442, %445[1] : !llvm.struct<(i64, ptr)> 
    %447 = llvm.mlir.constant(1 : index) : i64
    %448 = llvm.mlir.zero : !llvm.ptr
    %449 = llvm.getelementptr %448[%288] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %450 = llvm.ptrtoint %449 : !llvm.ptr to i64
    %451 = llvm.call @malloc(%450) : (i64) -> !llvm.ptr
    %452 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %453 = llvm.insertvalue %451, %452[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %454 = llvm.insertvalue %451, %453[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %455 = llvm.mlir.constant(0 : index) : i64
    %456 = llvm.insertvalue %455, %454[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %457 = llvm.insertvalue %288, %456[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %458 = llvm.insertvalue %447, %457[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb49(%18 : i64)
  ^bb49(%459: i64):  // 2 preds: ^bb48, ^bb50
    %460 = llvm.icmp "slt" %459, %288 : i64
    llvm.cond_br %460, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %461 = llvm.getelementptr %451[%459] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %461 : i64, !llvm.ptr
    %462 = llvm.add %459, %17  : i64
    llvm.br ^bb49(%462 : i64)
  ^bb51:  // pred: ^bb49
    %463 = llvm.mlir.constant(1 : index) : i64
    %464 = llvm.alloca %463 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %458, %464 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %465 = llvm.mlir.constant(1 : index) : i64
    %466 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %467 = llvm.insertvalue %465, %466[0] : !llvm.struct<(i64, ptr)> 
    %468 = llvm.insertvalue %464, %467[1] : !llvm.struct<(i64, ptr)> 
    %469 = llvm.mlir.constant(1 : index) : i64
    %470 = llvm.mlir.zero : !llvm.ptr
    %471 = llvm.getelementptr %470[%290] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %472 = llvm.ptrtoint %471 : !llvm.ptr to i64
    %473 = llvm.call @malloc(%472) : (i64) -> !llvm.ptr
    %474 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %475 = llvm.insertvalue %473, %474[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %476 = llvm.insertvalue %473, %475[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %477 = llvm.mlir.constant(0 : index) : i64
    %478 = llvm.insertvalue %477, %476[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %479 = llvm.insertvalue %290, %478[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %480 = llvm.insertvalue %469, %479[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb52(%18 : i64)
  ^bb52(%481: i64):  // 2 preds: ^bb51, ^bb53
    %482 = llvm.icmp "slt" %481, %290 : i64
    llvm.cond_br %482, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %483 = llvm.getelementptr %473[%481] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %3, %483 : f64, !llvm.ptr
    %484 = llvm.add %481, %17  : i64
    llvm.br ^bb52(%484 : i64)
  ^bb54:  // pred: ^bb52
    %485 = llvm.mlir.constant(1 : index) : i64
    %486 = llvm.alloca %485 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %480, %486 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %487 = llvm.mlir.constant(1 : index) : i64
    %488 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %489 = llvm.insertvalue %487, %488[0] : !llvm.struct<(i64, ptr)> 
    %490 = llvm.insertvalue %486, %489[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64_i64(%12, %18, %16, %17, %16, %311, %310, %333, %332, %355, %354, %377, %376, %399, %398, %421, %420, %443, %442, %465, %464, %487, %486, %12) {filename = "SPARSE_FILE_NAME1"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %491 = llvm.add %56, %1  : i64
    %492 = llvm.mlir.constant(1 : index) : i64
    %493 = llvm.mlir.zero : !llvm.ptr
    %494 = llvm.getelementptr %493[%491] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %495 = llvm.ptrtoint %494 : !llvm.ptr to i64
    %496 = llvm.call @malloc(%495) : (i64) -> !llvm.ptr
    %497 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %498 = llvm.insertvalue %496, %497[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %499 = llvm.insertvalue %496, %498[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %500 = llvm.mlir.constant(0 : index) : i64
    %501 = llvm.insertvalue %500, %499[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %502 = llvm.insertvalue %491, %501[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %503 = llvm.insertvalue %492, %502[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %504 = llvm.getelementptr %496[%2] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %504 : i64, !llvm.ptr
    %505 = llvm.mlir.constant(1 : index) : i64
    %506 = llvm.mlir.zero : !llvm.ptr
    %507 = llvm.getelementptr %506[%292] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %508 = llvm.ptrtoint %507 : !llvm.ptr to i64
    %509 = llvm.call @malloc(%508) : (i64) -> !llvm.ptr
    %510 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %511 = llvm.insertvalue %509, %510[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %512 = llvm.insertvalue %509, %511[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %513 = llvm.mlir.constant(0 : index) : i64
    %514 = llvm.insertvalue %513, %512[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %515 = llvm.insertvalue %292, %514[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %516 = llvm.insertvalue %505, %515[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb55(%18, %2, %2 : i64, i64, i64)
  ^bb55(%517: i64, %518: i64, %519: i64):  // 2 preds: ^bb54, ^bb64
    %520 = llvm.icmp "slt" %517, %56 : i64
    llvm.cond_br %520, ^bb56, ^bb65
  ^bb56:  // pred: ^bb55
    %521 = llvm.add %517, %17  : i64
    %522 = llvm.getelementptr %149[%517] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %523 = llvm.load %522 : !llvm.ptr -> i64
    %524 = llvm.getelementptr %149[%521] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %525 = llvm.load %524 : !llvm.ptr -> i64
    llvm.br ^bb57(%523, %519 : i64, i64)
  ^bb57(%526: i64, %527: i64):  // 2 preds: ^bb56, ^bb63
    %528 = llvm.icmp "slt" %526, %525 : i64
    llvm.cond_br %528, ^bb58, ^bb64
  ^bb58:  // pred: ^bb57
    %529 = llvm.getelementptr %171[%526] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %530 = llvm.load %529 : !llvm.ptr -> i64
    %531 = llvm.add %530, %17  : i64
    %532 = llvm.getelementptr %385[%530] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %533 = llvm.load %532 : !llvm.ptr -> i64
    %534 = llvm.getelementptr %385[%531] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %535 = llvm.load %534 : !llvm.ptr -> i64
    llvm.br ^bb59(%533, %527 : i64, i64)
  ^bb59(%536: i64, %537: i64):  // 2 preds: ^bb58, ^bb62
    %538 = llvm.icmp "slt" %536, %535 : i64
    llvm.cond_br %538, ^bb60, ^bb63
  ^bb60:  // pred: ^bb59
    %539 = llvm.getelementptr %407[%536] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %540 = llvm.load %539 : !llvm.ptr -> i64
    %541 = llvm.add %518, %1  : i64
    %542 = llvm.getelementptr %509[%540] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %543 = llvm.load %542 : !llvm.ptr -> i64
    %544 = llvm.icmp "eq" %541, %543 : i64
    llvm.cond_br %544, ^bb62(%537 : i64), ^bb61
  ^bb61:  // pred: ^bb60
    %545 = llvm.getelementptr %509[%540] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %541, %545 : i64, !llvm.ptr
    %546 = llvm.add %537, %1  : i64
    llvm.br ^bb62(%546 : i64)
  ^bb62(%547: i64):  // 2 preds: ^bb60, ^bb61
    %548 = llvm.add %536, %17  : i64
    llvm.br ^bb59(%548, %547 : i64, i64)
  ^bb63:  // pred: ^bb59
    %549 = llvm.add %526, %17  : i64
    llvm.br ^bb57(%549, %537 : i64, i64)
  ^bb64:  // pred: ^bb57
    %550 = llvm.add %518, %1  : i64
    %551 = llvm.getelementptr %496[%550] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %527, %551 : i64, !llvm.ptr
    llvm.br ^bb55(%521, %550, %527 : i64, i64, i64)
  ^bb65:  // pred: ^bb55
    %552 = llvm.mlir.constant(1 : index) : i64
    %553 = llvm.mlir.constant(1 : index) : i64
    %554 = llvm.mlir.zero : !llvm.ptr
    %555 = llvm.getelementptr %554[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %556 = llvm.ptrtoint %555 : !llvm.ptr to i64
    %557 = llvm.call @malloc(%556) : (i64) -> !llvm.ptr
    %558 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %559 = llvm.insertvalue %557, %558[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %560 = llvm.insertvalue %557, %559[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %561 = llvm.mlir.constant(0 : index) : i64
    %562 = llvm.insertvalue %561, %560[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %563 = llvm.insertvalue %552, %562[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %564 = llvm.insertvalue %553, %563[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %565 = llvm.getelementptr %557[%2] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %56, %565 : i64, !llvm.ptr
    %566 = llvm.mlir.constant(1 : index) : i64
    %567 = llvm.mlir.zero : !llvm.ptr
    %568 = llvm.getelementptr %567[%519] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %569 = llvm.ptrtoint %568 : !llvm.ptr to i64
    %570 = llvm.call @malloc(%569) : (i64) -> !llvm.ptr
    %571 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %572 = llvm.insertvalue %570, %571[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %573 = llvm.insertvalue %570, %572[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %574 = llvm.mlir.constant(0 : index) : i64
    %575 = llvm.insertvalue %574, %573[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %576 = llvm.insertvalue %519, %575[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %577 = llvm.insertvalue %566, %576[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %578 = llvm.mlir.constant(1 : index) : i64
    %579 = llvm.mlir.zero : !llvm.ptr
    %580 = llvm.getelementptr %579[%519] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %581 = llvm.ptrtoint %580 : !llvm.ptr to i64
    %582 = llvm.call @malloc(%581) : (i64) -> !llvm.ptr
    %583 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %584 = llvm.insertvalue %582, %583[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %585 = llvm.insertvalue %582, %584[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %586 = llvm.mlir.constant(0 : index) : i64
    %587 = llvm.insertvalue %586, %585[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %588 = llvm.insertvalue %519, %587[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %589 = llvm.insertvalue %578, %588[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb66(%2 : i64)
  ^bb66(%590: i64):  // 2 preds: ^bb65, ^bb67
    %591 = llvm.icmp "slt" %590, %519 : i64
    llvm.cond_br %591, ^bb67, ^bb68
  ^bb67:  // pred: ^bb66
    %592 = llvm.getelementptr %582[%590] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %3, %592 : f64, !llvm.ptr
    %593 = llvm.add %590, %1  : i64
    llvm.br ^bb66(%593 : i64)
  ^bb68:  // pred: ^bb66
    %594 = llvm.mlir.constant(1 : index) : i64
    %595 = llvm.mlir.zero : !llvm.ptr
    %596 = llvm.getelementptr %595[%292] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %597 = llvm.ptrtoint %596 : !llvm.ptr to i64
    %598 = llvm.mlir.constant(64 : index) : i64
    %599 = llvm.add %597, %598  : i64
    %600 = llvm.call @malloc(%599) : (i64) -> !llvm.ptr
    %601 = llvm.ptrtoint %600 : !llvm.ptr to i64
    %602 = llvm.mlir.constant(1 : index) : i64
    %603 = llvm.sub %598, %602  : i64
    %604 = llvm.add %601, %603  : i64
    %605 = llvm.urem %604, %598  : i64
    %606 = llvm.sub %604, %605  : i64
    %607 = llvm.inttoptr %606 : i64 to !llvm.ptr
    %608 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %609 = llvm.insertvalue %600, %608[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %610 = llvm.insertvalue %607, %609[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %611 = llvm.mlir.constant(0 : index) : i64
    %612 = llvm.insertvalue %611, %610[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %613 = llvm.insertvalue %292, %612[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %614 = llvm.insertvalue %594, %613[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %615 = llvm.mlir.constant(1 : index) : i64
    %616 = llvm.mlir.zero : !llvm.ptr
    %617 = llvm.getelementptr %616[%292] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %618 = llvm.ptrtoint %617 : !llvm.ptr to i64
    %619 = llvm.mlir.constant(64 : index) : i64
    %620 = llvm.add %618, %619  : i64
    %621 = llvm.call @malloc(%620) : (i64) -> !llvm.ptr
    %622 = llvm.ptrtoint %621 : !llvm.ptr to i64
    %623 = llvm.mlir.constant(1 : index) : i64
    %624 = llvm.sub %619, %623  : i64
    %625 = llvm.add %622, %624  : i64
    %626 = llvm.urem %625, %619  : i64
    %627 = llvm.sub %625, %626  : i64
    %628 = llvm.inttoptr %627 : i64 to !llvm.ptr
    %629 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %630 = llvm.insertvalue %621, %629[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %631 = llvm.insertvalue %628, %630[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %632 = llvm.mlir.constant(0 : index) : i64
    %633 = llvm.insertvalue %632, %631[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %634 = llvm.insertvalue %292, %633[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %635 = llvm.insertvalue %615, %634[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %636 = llvm.mlir.constant(1 : index) : i64
    %637 = llvm.mlir.zero : !llvm.ptr
    %638 = llvm.getelementptr %637[%292] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %639 = llvm.ptrtoint %638 : !llvm.ptr to i64
    %640 = llvm.mlir.constant(64 : index) : i64
    %641 = llvm.add %639, %640  : i64
    %642 = llvm.call @malloc(%641) : (i64) -> !llvm.ptr
    %643 = llvm.ptrtoint %642 : !llvm.ptr to i64
    %644 = llvm.mlir.constant(1 : index) : i64
    %645 = llvm.sub %640, %644  : i64
    %646 = llvm.add %643, %645  : i64
    %647 = llvm.urem %646, %640  : i64
    %648 = llvm.sub %646, %647  : i64
    %649 = llvm.inttoptr %648 : i64 to !llvm.ptr
    %650 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %651 = llvm.insertvalue %642, %650[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %652 = llvm.insertvalue %649, %651[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %653 = llvm.mlir.constant(0 : index) : i64
    %654 = llvm.insertvalue %653, %652[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %655 = llvm.insertvalue %292, %654[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %656 = llvm.insertvalue %636, %655[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb69(%18, %2, %12 : i64, i64, i32)
  ^bb69(%657: i64, %658: i64, %659: i32):  // 2 preds: ^bb68, ^bb84
    %660 = llvm.icmp "slt" %657, %56 : i64
    llvm.cond_br %660, ^bb70, ^bb85
  ^bb70:  // pred: ^bb69
    %661 = llvm.add %659, %12  : i32
    %662 = llvm.add %657, %17  : i64
    %663 = llvm.getelementptr %149[%657] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %664 = llvm.load %663 : !llvm.ptr -> i64
    %665 = llvm.getelementptr %149[%662] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %666 = llvm.load %665 : !llvm.ptr -> i64
    llvm.br ^bb71(%664, %2 : i64, i64)
  ^bb71(%667: i64, %668: i64):  // 2 preds: ^bb70, ^bb79
    %669 = llvm.icmp "slt" %667, %666 : i64
    llvm.cond_br %669, ^bb72, ^bb80(%18, %658 : i64, i64)
  ^bb72:  // pred: ^bb71
    %670 = llvm.getelementptr %171[%667] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %671 = llvm.load %670 : !llvm.ptr -> i64
    %672 = llvm.add %671, %17  : i64
    %673 = llvm.getelementptr %385[%671] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %674 = llvm.load %673 : !llvm.ptr -> i64
    %675 = llvm.getelementptr %385[%672] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %676 = llvm.load %675 : !llvm.ptr -> i64
    llvm.br ^bb73(%674, %668 : i64, i64)
  ^bb73(%677: i64, %678: i64):  // 2 preds: ^bb72, ^bb78
    %679 = llvm.icmp "slt" %677, %676 : i64
    llvm.cond_br %679, ^bb74, ^bb79
  ^bb74:  // pred: ^bb73
    %680 = llvm.getelementptr %407[%677] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %681 = llvm.load %680 : !llvm.ptr -> i64
    %682 = llvm.getelementptr %237[%667] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %683 = llvm.load %682 : !llvm.ptr -> f64
    %684 = llvm.getelementptr %473[%677] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %685 = llvm.load %684 : !llvm.ptr -> f64
    %686 = llvm.fmul %683, %685  : f64
    %687 = llvm.getelementptr %628[%681] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %688 = llvm.load %687 : !llvm.ptr -> i32
    %689 = llvm.icmp "eq" %688, %661 : i32
    llvm.cond_br %689, ^bb75, ^bb76(%3 : f64)
  ^bb75:  // pred: ^bb74
    %690 = llvm.getelementptr %607[%681] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %691 = llvm.load %690 : !llvm.ptr -> f64
    llvm.br ^bb76(%691 : f64)
  ^bb76(%692: f64):  // 2 preds: ^bb74, ^bb75
    %693 = llvm.fadd %692, %686  : f64
    %694 = llvm.icmp "ne" %688, %661 : i32
    llvm.cond_br %694, ^bb77, ^bb78(%678 : i64)
  ^bb77:  // pred: ^bb76
    %695 = llvm.getelementptr %628[%681] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %661, %695 : i32, !llvm.ptr
    %696 = llvm.getelementptr %649[%678] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %681, %696 : i64, !llvm.ptr
    %697 = llvm.add %678, %1  : i64
    llvm.br ^bb78(%697 : i64)
  ^bb78(%698: i64):  // 2 preds: ^bb76, ^bb77
    %699 = llvm.getelementptr %607[%681] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %693, %699 : f64, !llvm.ptr
    %700 = llvm.add %677, %17  : i64
    llvm.br ^bb73(%700, %698 : i64, i64)
  ^bb79:  // pred: ^bb73
    %701 = llvm.add %667, %17  : i64
    llvm.br ^bb71(%701, %678 : i64, i64)
  ^bb80(%702: i64, %703: i64):  // 2 preds: ^bb71, ^bb83
    %704 = llvm.icmp "slt" %702, %668 : i64
    llvm.cond_br %704, ^bb81, ^bb84
  ^bb81:  // pred: ^bb80
    %705 = llvm.getelementptr %649[%702] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %706 = llvm.load %705 : !llvm.ptr -> i64
    %707 = llvm.getelementptr %628[%706] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %708 = llvm.load %707 : !llvm.ptr -> i32
    %709 = llvm.icmp "eq" %708, %661 : i32
    llvm.cond_br %709, ^bb82, ^bb83(%3 : f64)
  ^bb82:  // pred: ^bb81
    %710 = llvm.getelementptr %607[%706] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %711 = llvm.load %710 : !llvm.ptr -> f64
    llvm.br ^bb83(%711 : f64)
  ^bb83(%712: f64):  // 2 preds: ^bb81, ^bb82
    %713 = llvm.getelementptr %570[%703] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %706, %713 : i64, !llvm.ptr
    %714 = llvm.add %703, %1  : i64
    %715 = llvm.getelementptr %582[%703] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %712, %715 : f64, !llvm.ptr
    %716 = llvm.add %702, %17  : i64
    llvm.br ^bb80(%716, %714 : i64, i64)
  ^bb84:  // pred: ^bb80
    llvm.br ^bb69(%662, %703, %661 : i64, i64, i32)
  ^bb85:  // pred: ^bb69
    %717 = llvm.mlir.constant(1 : index) : i64
    %718 = llvm.mlir.constant(1 : index) : i64
    %719 = llvm.mlir.zero : !llvm.ptr
    %720 = llvm.getelementptr %719[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %721 = llvm.ptrtoint %720 : !llvm.ptr to i64
    %722 = llvm.mlir.constant(64 : index) : i64
    %723 = llvm.add %721, %722  : i64
    %724 = llvm.call @malloc(%723) : (i64) -> !llvm.ptr
    %725 = llvm.ptrtoint %724 : !llvm.ptr to i64
    %726 = llvm.mlir.constant(1 : index) : i64
    %727 = llvm.sub %722, %726  : i64
    %728 = llvm.add %725, %727  : i64
    %729 = llvm.urem %728, %722  : i64
    %730 = llvm.sub %728, %729  : i64
    %731 = llvm.inttoptr %730 : i64 to !llvm.ptr
    %732 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %733 = llvm.insertvalue %724, %732[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %734 = llvm.insertvalue %731, %733[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %735 = llvm.mlir.constant(0 : index) : i64
    %736 = llvm.insertvalue %735, %734[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %737 = llvm.insertvalue %717, %736[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %738 = llvm.insertvalue %718, %737[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %739 = llvm.getelementptr %731[%2] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %0, %739 : i64, !llvm.ptr
    %740 = llvm.mlir.constant(1 : index) : i64
    %741 = llvm.alloca %740 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %564, %741 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %742 = llvm.mlir.constant(1 : index) : i64
    %743 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %744 = llvm.insertvalue %742, %743[0] : !llvm.struct<(i64, ptr)> 
    %745 = llvm.insertvalue %741, %744[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_i64(%742, %741) : (i64, !llvm.ptr) -> ()
    %746 = llvm.mlir.constant(1 : index) : i64
    %747 = llvm.alloca %746 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %738, %747 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %748 = llvm.mlir.constant(1 : index) : i64
    %749 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %750 = llvm.insertvalue %748, %749[0] : !llvm.struct<(i64, ptr)> 
    %751 = llvm.insertvalue %747, %750[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_index(%748, %747) : (i64, !llvm.ptr) -> ()
    %752 = llvm.mlir.constant(1 : index) : i64
    %753 = llvm.alloca %752 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %503, %753 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %754 = llvm.mlir.constant(1 : index) : i64
    %755 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %756 = llvm.insertvalue %754, %755[0] : !llvm.struct<(i64, ptr)> 
    %757 = llvm.insertvalue %753, %756[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_i64(%754, %753) : (i64, !llvm.ptr) -> ()
    %758 = llvm.mlir.constant(1 : index) : i64
    %759 = llvm.alloca %758 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %577, %759 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %760 = llvm.mlir.constant(1 : index) : i64
    %761 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %762 = llvm.insertvalue %760, %761[0] : !llvm.struct<(i64, ptr)> 
    %763 = llvm.insertvalue %759, %762[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_i64(%760, %759) : (i64, !llvm.ptr) -> ()
    %764 = llvm.mlir.constant(1 : index) : i64
    %765 = llvm.alloca %764 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %589, %765 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %766 = llvm.mlir.constant(1 : index) : i64
    %767 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %768 = llvm.insertvalue %766, %767[0] : !llvm.struct<(i64, ptr)> 
    %769 = llvm.insertvalue %765, %768[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%766, %765) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @read_input_2D_f64_i64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @read_input_sizes_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_i64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_index(i64, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(-1 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %4 = llvm.mlir.constant(0 : i64) : i64
    %5 = llvm.mlir.constant(10 : index) : i64
    %6 = llvm.mlir.constant(9 : index) : i64
    %7 = llvm.mlir.constant(8 : index) : i64
    %8 = llvm.mlir.constant(7 : index) : i64
    %9 = llvm.mlir.constant(6 : index) : i64
    %10 = llvm.mlir.constant(5 : index) : i64
    %11 = llvm.mlir.constant(4 : index) : i64
    %12 = llvm.mlir.constant(1 : i32) : i32
    %13 = llvm.mlir.constant(0 : i32) : i32
    %14 = llvm.mlir.constant(3 : index) : i64
    %15 = llvm.mlir.constant(2 : index) : i64
    %16 = llvm.mlir.constant(-1 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.mlir.constant(13 : index) : i64
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.mlir.zero : !llvm.ptr
    %22 = llvm.getelementptr %21[13] : (!llvm.ptr) -> !llvm.ptr, i64
    %23 = llvm.ptrtoint %22 : !llvm.ptr to i64
    %24 = llvm.call @malloc(%23) : (i64) -> !llvm.ptr
    %25 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %26 = llvm.insertvalue %24, %25[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.insertvalue %24, %26[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.mlir.constant(0 : index) : i64
    %29 = llvm.insertvalue %28, %27[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.insertvalue %19, %29[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.insertvalue %20, %30[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.alloca %32 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %31, %33 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %36 = llvm.insertvalue %34, %35[0] : !llvm.struct<(i64, ptr)> 
    %37 = llvm.insertvalue %33, %36[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%13, %18, %16, %17, %16, %34, %33, %12) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
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
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.mlir.zero : !llvm.ptr
    %59 = llvm.getelementptr %58[%38] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %60 = llvm.ptrtoint %59 : !llvm.ptr to i64
    %61 = llvm.call @malloc(%60) : (i64) -> !llvm.ptr
    %62 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %63 = llvm.insertvalue %61, %62[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.insertvalue %61, %63[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.insertvalue %65, %64[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.insertvalue %38, %66[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.insertvalue %57, %67[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%18 : i64)
  ^bb1(%69: i64):  // 2 preds: ^bb0, ^bb2
    %70 = llvm.icmp "slt" %69, %38 : i64
    llvm.cond_br %70, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %71 = llvm.getelementptr %61[%69] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %71 : i64, !llvm.ptr
    %72 = llvm.add %69, %17  : i64
    llvm.br ^bb1(%72 : i64)
  ^bb3:  // pred: ^bb1
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.alloca %73 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %68, %74 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %77 = llvm.insertvalue %75, %76[0] : !llvm.struct<(i64, ptr)> 
    %78 = llvm.insertvalue %74, %77[1] : !llvm.struct<(i64, ptr)> 
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.mlir.zero : !llvm.ptr
    %81 = llvm.getelementptr %80[%40] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %82 = llvm.ptrtoint %81 : !llvm.ptr to i64
    %83 = llvm.call @malloc(%82) : (i64) -> !llvm.ptr
    %84 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %85 = llvm.insertvalue %83, %84[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.insertvalue %83, %85[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.mlir.constant(0 : index) : i64
    %88 = llvm.insertvalue %87, %86[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.insertvalue %40, %88[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.insertvalue %79, %89[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%18 : i64)
  ^bb4(%91: i64):  // 2 preds: ^bb3, ^bb5
    %92 = llvm.icmp "slt" %91, %40 : i64
    llvm.cond_br %92, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %93 = llvm.getelementptr %83[%91] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %93 : i64, !llvm.ptr
    %94 = llvm.add %91, %17  : i64
    llvm.br ^bb4(%94 : i64)
  ^bb6:  // pred: ^bb4
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.alloca %95 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %90, %96 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %99 = llvm.insertvalue %97, %98[0] : !llvm.struct<(i64, ptr)> 
    %100 = llvm.insertvalue %96, %99[1] : !llvm.struct<(i64, ptr)> 
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.mlir.zero : !llvm.ptr
    %103 = llvm.getelementptr %102[%42] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %104 = llvm.ptrtoint %103 : !llvm.ptr to i64
    %105 = llvm.call @malloc(%104) : (i64) -> !llvm.ptr
    %106 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %107 = llvm.insertvalue %105, %106[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %108 = llvm.insertvalue %105, %107[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %109 = llvm.mlir.constant(0 : index) : i64
    %110 = llvm.insertvalue %109, %108[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.insertvalue %42, %110[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %112 = llvm.insertvalue %101, %111[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%18 : i64)
  ^bb7(%113: i64):  // 2 preds: ^bb6, ^bb8
    %114 = llvm.icmp "slt" %113, %42 : i64
    llvm.cond_br %114, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %115 = llvm.getelementptr %105[%113] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %115 : i64, !llvm.ptr
    %116 = llvm.add %113, %17  : i64
    llvm.br ^bb7(%116 : i64)
  ^bb9:  // pred: ^bb7
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.alloca %117 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %112, %118 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %121 = llvm.insertvalue %119, %120[0] : !llvm.struct<(i64, ptr)> 
    %122 = llvm.insertvalue %118, %121[1] : !llvm.struct<(i64, ptr)> 
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.mlir.zero : !llvm.ptr
    %125 = llvm.getelementptr %124[%44] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %126 = llvm.ptrtoint %125 : !llvm.ptr to i64
    %127 = llvm.call @malloc(%126) : (i64) -> !llvm.ptr
    %128 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %129 = llvm.insertvalue %127, %128[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %130 = llvm.insertvalue %127, %129[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.mlir.constant(0 : index) : i64
    %132 = llvm.insertvalue %131, %130[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.insertvalue %44, %132[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %134 = llvm.insertvalue %123, %133[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%18 : i64)
  ^bb10(%135: i64):  // 2 preds: ^bb9, ^bb11
    %136 = llvm.icmp "slt" %135, %44 : i64
    llvm.cond_br %136, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %137 = llvm.getelementptr %127[%135] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %137 : i64, !llvm.ptr
    %138 = llvm.add %135, %17  : i64
    llvm.br ^bb10(%138 : i64)
  ^bb12:  // pred: ^bb10
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.alloca %139 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %134, %140 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %143 = llvm.insertvalue %141, %142[0] : !llvm.struct<(i64, ptr)> 
    %144 = llvm.insertvalue %140, %143[1] : !llvm.struct<(i64, ptr)> 
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.mlir.zero : !llvm.ptr
    %147 = llvm.getelementptr %146[%46] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %148 = llvm.ptrtoint %147 : !llvm.ptr to i64
    %149 = llvm.call @malloc(%148) : (i64) -> !llvm.ptr
    %150 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %151 = llvm.insertvalue %149, %150[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %152 = llvm.insertvalue %149, %151[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %153 = llvm.mlir.constant(0 : index) : i64
    %154 = llvm.insertvalue %153, %152[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %155 = llvm.insertvalue %46, %154[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.insertvalue %145, %155[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%18 : i64)
  ^bb13(%157: i64):  // 2 preds: ^bb12, ^bb14
    %158 = llvm.icmp "slt" %157, %46 : i64
    llvm.cond_br %158, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %159 = llvm.getelementptr %149[%157] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %159 : i64, !llvm.ptr
    %160 = llvm.add %157, %17  : i64
    llvm.br ^bb13(%160 : i64)
  ^bb15:  // pred: ^bb13
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.alloca %161 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %156, %162 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %165 = llvm.insertvalue %163, %164[0] : !llvm.struct<(i64, ptr)> 
    %166 = llvm.insertvalue %162, %165[1] : !llvm.struct<(i64, ptr)> 
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.mlir.zero : !llvm.ptr
    %169 = llvm.getelementptr %168[%48] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %170 = llvm.ptrtoint %169 : !llvm.ptr to i64
    %171 = llvm.call @malloc(%170) : (i64) -> !llvm.ptr
    %172 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %173 = llvm.insertvalue %171, %172[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %174 = llvm.insertvalue %171, %173[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %175 = llvm.mlir.constant(0 : index) : i64
    %176 = llvm.insertvalue %175, %174[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %177 = llvm.insertvalue %48, %176[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %178 = llvm.insertvalue %167, %177[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%18 : i64)
  ^bb16(%179: i64):  // 2 preds: ^bb15, ^bb17
    %180 = llvm.icmp "slt" %179, %48 : i64
    llvm.cond_br %180, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %181 = llvm.getelementptr %171[%179] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %181 : i64, !llvm.ptr
    %182 = llvm.add %179, %17  : i64
    llvm.br ^bb16(%182 : i64)
  ^bb18:  // pred: ^bb16
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.alloca %183 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %178, %184 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %187 = llvm.insertvalue %185, %186[0] : !llvm.struct<(i64, ptr)> 
    %188 = llvm.insertvalue %184, %187[1] : !llvm.struct<(i64, ptr)> 
    %189 = llvm.mlir.constant(1 : index) : i64
    %190 = llvm.mlir.zero : !llvm.ptr
    %191 = llvm.getelementptr %190[%50] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %192 = llvm.ptrtoint %191 : !llvm.ptr to i64
    %193 = llvm.call @malloc(%192) : (i64) -> !llvm.ptr
    %194 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %195 = llvm.insertvalue %193, %194[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %196 = llvm.insertvalue %193, %195[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.insertvalue %197, %196[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %199 = llvm.insertvalue %50, %198[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.insertvalue %189, %199[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%18 : i64)
  ^bb19(%201: i64):  // 2 preds: ^bb18, ^bb20
    %202 = llvm.icmp "slt" %201, %50 : i64
    llvm.cond_br %202, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %203 = llvm.getelementptr %193[%201] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %203 : i64, !llvm.ptr
    %204 = llvm.add %201, %17  : i64
    llvm.br ^bb19(%204 : i64)
  ^bb21:  // pred: ^bb19
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.alloca %205 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %200, %206 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %209 = llvm.insertvalue %207, %208[0] : !llvm.struct<(i64, ptr)> 
    %210 = llvm.insertvalue %206, %209[1] : !llvm.struct<(i64, ptr)> 
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.zero : !llvm.ptr
    %213 = llvm.getelementptr %212[%52] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %214 = llvm.ptrtoint %213 : !llvm.ptr to i64
    %215 = llvm.call @malloc(%214) : (i64) -> !llvm.ptr
    %216 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %217 = llvm.insertvalue %215, %216[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %218 = llvm.insertvalue %215, %217[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.insertvalue %219, %218[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %221 = llvm.insertvalue %52, %220[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %222 = llvm.insertvalue %211, %221[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%18 : i64)
  ^bb22(%223: i64):  // 2 preds: ^bb21, ^bb23
    %224 = llvm.icmp "slt" %223, %52 : i64
    llvm.cond_br %224, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %225 = llvm.getelementptr %215[%223] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %225 : i64, !llvm.ptr
    %226 = llvm.add %223, %17  : i64
    llvm.br ^bb22(%226 : i64)
  ^bb24:  // pred: ^bb22
    %227 = llvm.mlir.constant(1 : index) : i64
    %228 = llvm.alloca %227 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %222, %228 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %231 = llvm.insertvalue %229, %230[0] : !llvm.struct<(i64, ptr)> 
    %232 = llvm.insertvalue %228, %231[1] : !llvm.struct<(i64, ptr)> 
    %233 = llvm.mlir.constant(1 : index) : i64
    %234 = llvm.mlir.zero : !llvm.ptr
    %235 = llvm.getelementptr %234[%54] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %236 = llvm.ptrtoint %235 : !llvm.ptr to i64
    %237 = llvm.call @malloc(%236) : (i64) -> !llvm.ptr
    %238 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %239 = llvm.insertvalue %237, %238[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %240 = llvm.insertvalue %237, %239[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %241 = llvm.mlir.constant(0 : index) : i64
    %242 = llvm.insertvalue %241, %240[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %243 = llvm.insertvalue %54, %242[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %244 = llvm.insertvalue %233, %243[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%18 : i64)
  ^bb25(%245: i64):  // 2 preds: ^bb24, ^bb26
    %246 = llvm.icmp "slt" %245, %54 : i64
    llvm.cond_br %246, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %247 = llvm.getelementptr %237[%245] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %3, %247 : f64, !llvm.ptr
    %248 = llvm.add %245, %17  : i64
    llvm.br ^bb25(%248 : i64)
  ^bb27:  // pred: ^bb25
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.alloca %249 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %244, %250 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %253 = llvm.insertvalue %251, %252[0] : !llvm.struct<(i64, ptr)> 
    %254 = llvm.insertvalue %250, %253[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64_i64(%13, %18, %16, %17, %16, %75, %74, %97, %96, %119, %118, %141, %140, %163, %162, %185, %184, %207, %206, %229, %228, %251, %250, %12) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %255 = llvm.mlir.constant(13 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.mlir.zero : !llvm.ptr
    %258 = llvm.getelementptr %257[13] : (!llvm.ptr) -> !llvm.ptr, i64
    %259 = llvm.ptrtoint %258 : !llvm.ptr to i64
    %260 = llvm.call @malloc(%259) : (i64) -> !llvm.ptr
    %261 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %262 = llvm.insertvalue %260, %261[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %263 = llvm.insertvalue %260, %262[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.insertvalue %264, %263[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %266 = llvm.insertvalue %255, %265[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.insertvalue %256, %266[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.alloca %268 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %267, %269 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %272 = llvm.insertvalue %270, %271[0] : !llvm.struct<(i64, ptr)> 
    %273 = llvm.insertvalue %269, %272[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%12, %18, %16, %17, %16, %270, %269, %12) {filename = "SPARSE_FILE_NAME1"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %274 = llvm.load %260 : !llvm.ptr -> i64
    %275 = llvm.getelementptr %260[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %276 = llvm.load %275 : !llvm.ptr -> i64
    %277 = llvm.getelementptr %260[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %278 = llvm.load %277 : !llvm.ptr -> i64
    %279 = llvm.getelementptr %260[3] : (!llvm.ptr) -> !llvm.ptr, i64
    %280 = llvm.load %279 : !llvm.ptr -> i64
    %281 = llvm.getelementptr %260[4] : (!llvm.ptr) -> !llvm.ptr, i64
    %282 = llvm.load %281 : !llvm.ptr -> i64
    %283 = llvm.getelementptr %260[5] : (!llvm.ptr) -> !llvm.ptr, i64
    %284 = llvm.load %283 : !llvm.ptr -> i64
    %285 = llvm.getelementptr %260[6] : (!llvm.ptr) -> !llvm.ptr, i64
    %286 = llvm.load %285 : !llvm.ptr -> i64
    %287 = llvm.getelementptr %260[7] : (!llvm.ptr) -> !llvm.ptr, i64
    %288 = llvm.load %287 : !llvm.ptr -> i64
    %289 = llvm.getelementptr %260[8] : (!llvm.ptr) -> !llvm.ptr, i64
    %290 = llvm.load %289 : !llvm.ptr -> i64
    %291 = llvm.getelementptr %260[10] : (!llvm.ptr) -> !llvm.ptr, i64
    %292 = llvm.load %291 : !llvm.ptr -> i64
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.mlir.zero : !llvm.ptr
    %295 = llvm.getelementptr %294[%274] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %296 = llvm.ptrtoint %295 : !llvm.ptr to i64
    %297 = llvm.call @malloc(%296) : (i64) -> !llvm.ptr
    %298 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %299 = llvm.insertvalue %297, %298[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %300 = llvm.insertvalue %297, %299[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %301 = llvm.mlir.constant(0 : index) : i64
    %302 = llvm.insertvalue %301, %300[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %303 = llvm.insertvalue %274, %302[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %304 = llvm.insertvalue %293, %303[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb28(%18 : i64)
  ^bb28(%305: i64):  // 2 preds: ^bb27, ^bb29
    %306 = llvm.icmp "slt" %305, %274 : i64
    llvm.cond_br %306, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %307 = llvm.getelementptr %297[%305] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %307 : i64, !llvm.ptr
    %308 = llvm.add %305, %17  : i64
    llvm.br ^bb28(%308 : i64)
  ^bb30:  // pred: ^bb28
    %309 = llvm.mlir.constant(1 : index) : i64
    %310 = llvm.alloca %309 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %304, %310 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %311 = llvm.mlir.constant(1 : index) : i64
    %312 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %313 = llvm.insertvalue %311, %312[0] : !llvm.struct<(i64, ptr)> 
    %314 = llvm.insertvalue %310, %313[1] : !llvm.struct<(i64, ptr)> 
    %315 = llvm.mlir.constant(1 : index) : i64
    %316 = llvm.mlir.zero : !llvm.ptr
    %317 = llvm.getelementptr %316[%276] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %318 = llvm.ptrtoint %317 : !llvm.ptr to i64
    %319 = llvm.call @malloc(%318) : (i64) -> !llvm.ptr
    %320 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %321 = llvm.insertvalue %319, %320[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %322 = llvm.insertvalue %319, %321[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.insertvalue %323, %322[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %325 = llvm.insertvalue %276, %324[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %326 = llvm.insertvalue %315, %325[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb31(%18 : i64)
  ^bb31(%327: i64):  // 2 preds: ^bb30, ^bb32
    %328 = llvm.icmp "slt" %327, %276 : i64
    llvm.cond_br %328, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %329 = llvm.getelementptr %319[%327] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %329 : i64, !llvm.ptr
    %330 = llvm.add %327, %17  : i64
    llvm.br ^bb31(%330 : i64)
  ^bb33:  // pred: ^bb31
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.alloca %331 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %326, %332 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %335 = llvm.insertvalue %333, %334[0] : !llvm.struct<(i64, ptr)> 
    %336 = llvm.insertvalue %332, %335[1] : !llvm.struct<(i64, ptr)> 
    %337 = llvm.mlir.constant(1 : index) : i64
    %338 = llvm.mlir.zero : !llvm.ptr
    %339 = llvm.getelementptr %338[%278] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %340 = llvm.ptrtoint %339 : !llvm.ptr to i64
    %341 = llvm.call @malloc(%340) : (i64) -> !llvm.ptr
    %342 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %343 = llvm.insertvalue %341, %342[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %344 = llvm.insertvalue %341, %343[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %345 = llvm.mlir.constant(0 : index) : i64
    %346 = llvm.insertvalue %345, %344[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %347 = llvm.insertvalue %278, %346[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %348 = llvm.insertvalue %337, %347[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb34(%18 : i64)
  ^bb34(%349: i64):  // 2 preds: ^bb33, ^bb35
    %350 = llvm.icmp "slt" %349, %278 : i64
    llvm.cond_br %350, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %351 = llvm.getelementptr %341[%349] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %351 : i64, !llvm.ptr
    %352 = llvm.add %349, %17  : i64
    llvm.br ^bb34(%352 : i64)
  ^bb36:  // pred: ^bb34
    %353 = llvm.mlir.constant(1 : index) : i64
    %354 = llvm.alloca %353 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %348, %354 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %355 = llvm.mlir.constant(1 : index) : i64
    %356 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %357 = llvm.insertvalue %355, %356[0] : !llvm.struct<(i64, ptr)> 
    %358 = llvm.insertvalue %354, %357[1] : !llvm.struct<(i64, ptr)> 
    %359 = llvm.mlir.constant(1 : index) : i64
    %360 = llvm.mlir.zero : !llvm.ptr
    %361 = llvm.getelementptr %360[%280] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %362 = llvm.ptrtoint %361 : !llvm.ptr to i64
    %363 = llvm.call @malloc(%362) : (i64) -> !llvm.ptr
    %364 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %365 = llvm.insertvalue %363, %364[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %366 = llvm.insertvalue %363, %365[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %367 = llvm.mlir.constant(0 : index) : i64
    %368 = llvm.insertvalue %367, %366[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %369 = llvm.insertvalue %280, %368[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %370 = llvm.insertvalue %359, %369[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb37(%18 : i64)
  ^bb37(%371: i64):  // 2 preds: ^bb36, ^bb38
    %372 = llvm.icmp "slt" %371, %280 : i64
    llvm.cond_br %372, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %373 = llvm.getelementptr %363[%371] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %373 : i64, !llvm.ptr
    %374 = llvm.add %371, %17  : i64
    llvm.br ^bb37(%374 : i64)
  ^bb39:  // pred: ^bb37
    %375 = llvm.mlir.constant(1 : index) : i64
    %376 = llvm.alloca %375 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %370, %376 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %377 = llvm.mlir.constant(1 : index) : i64
    %378 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %379 = llvm.insertvalue %377, %378[0] : !llvm.struct<(i64, ptr)> 
    %380 = llvm.insertvalue %376, %379[1] : !llvm.struct<(i64, ptr)> 
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.mlir.zero : !llvm.ptr
    %383 = llvm.getelementptr %382[%282] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %384 = llvm.ptrtoint %383 : !llvm.ptr to i64
    %385 = llvm.call @malloc(%384) : (i64) -> !llvm.ptr
    %386 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %387 = llvm.insertvalue %385, %386[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %388 = llvm.insertvalue %385, %387[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %389 = llvm.mlir.constant(0 : index) : i64
    %390 = llvm.insertvalue %389, %388[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %391 = llvm.insertvalue %282, %390[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %392 = llvm.insertvalue %381, %391[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb40(%18 : i64)
  ^bb40(%393: i64):  // 2 preds: ^bb39, ^bb41
    %394 = llvm.icmp "slt" %393, %282 : i64
    llvm.cond_br %394, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %395 = llvm.getelementptr %385[%393] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %395 : i64, !llvm.ptr
    %396 = llvm.add %393, %17  : i64
    llvm.br ^bb40(%396 : i64)
  ^bb42:  // pred: ^bb40
    %397 = llvm.mlir.constant(1 : index) : i64
    %398 = llvm.alloca %397 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %392, %398 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %399 = llvm.mlir.constant(1 : index) : i64
    %400 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %401 = llvm.insertvalue %399, %400[0] : !llvm.struct<(i64, ptr)> 
    %402 = llvm.insertvalue %398, %401[1] : !llvm.struct<(i64, ptr)> 
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.mlir.zero : !llvm.ptr
    %405 = llvm.getelementptr %404[%284] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %406 = llvm.ptrtoint %405 : !llvm.ptr to i64
    %407 = llvm.call @malloc(%406) : (i64) -> !llvm.ptr
    %408 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %409 = llvm.insertvalue %407, %408[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %410 = llvm.insertvalue %407, %409[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %411 = llvm.mlir.constant(0 : index) : i64
    %412 = llvm.insertvalue %411, %410[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %413 = llvm.insertvalue %284, %412[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %414 = llvm.insertvalue %403, %413[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb43(%18 : i64)
  ^bb43(%415: i64):  // 2 preds: ^bb42, ^bb44
    %416 = llvm.icmp "slt" %415, %284 : i64
    llvm.cond_br %416, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %417 = llvm.getelementptr %407[%415] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %417 : i64, !llvm.ptr
    %418 = llvm.add %415, %17  : i64
    llvm.br ^bb43(%418 : i64)
  ^bb45:  // pred: ^bb43
    %419 = llvm.mlir.constant(1 : index) : i64
    %420 = llvm.alloca %419 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %414, %420 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %421 = llvm.mlir.constant(1 : index) : i64
    %422 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %423 = llvm.insertvalue %421, %422[0] : !llvm.struct<(i64, ptr)> 
    %424 = llvm.insertvalue %420, %423[1] : !llvm.struct<(i64, ptr)> 
    %425 = llvm.mlir.constant(1 : index) : i64
    %426 = llvm.mlir.zero : !llvm.ptr
    %427 = llvm.getelementptr %426[%286] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %428 = llvm.ptrtoint %427 : !llvm.ptr to i64
    %429 = llvm.call @malloc(%428) : (i64) -> !llvm.ptr
    %430 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %431 = llvm.insertvalue %429, %430[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %432 = llvm.insertvalue %429, %431[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %433 = llvm.mlir.constant(0 : index) : i64
    %434 = llvm.insertvalue %433, %432[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %435 = llvm.insertvalue %286, %434[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %436 = llvm.insertvalue %425, %435[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb46(%18 : i64)
  ^bb46(%437: i64):  // 2 preds: ^bb45, ^bb47
    %438 = llvm.icmp "slt" %437, %286 : i64
    llvm.cond_br %438, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %439 = llvm.getelementptr %429[%437] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %439 : i64, !llvm.ptr
    %440 = llvm.add %437, %17  : i64
    llvm.br ^bb46(%440 : i64)
  ^bb48:  // pred: ^bb46
    %441 = llvm.mlir.constant(1 : index) : i64
    %442 = llvm.alloca %441 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %436, %442 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %443 = llvm.mlir.constant(1 : index) : i64
    %444 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %445 = llvm.insertvalue %443, %444[0] : !llvm.struct<(i64, ptr)> 
    %446 = llvm.insertvalue %442, %445[1] : !llvm.struct<(i64, ptr)> 
    %447 = llvm.mlir.constant(1 : index) : i64
    %448 = llvm.mlir.zero : !llvm.ptr
    %449 = llvm.getelementptr %448[%288] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %450 = llvm.ptrtoint %449 : !llvm.ptr to i64
    %451 = llvm.call @malloc(%450) : (i64) -> !llvm.ptr
    %452 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %453 = llvm.insertvalue %451, %452[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %454 = llvm.insertvalue %451, %453[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %455 = llvm.mlir.constant(0 : index) : i64
    %456 = llvm.insertvalue %455, %454[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %457 = llvm.insertvalue %288, %456[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %458 = llvm.insertvalue %447, %457[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb49(%18 : i64)
  ^bb49(%459: i64):  // 2 preds: ^bb48, ^bb50
    %460 = llvm.icmp "slt" %459, %288 : i64
    llvm.cond_br %460, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %461 = llvm.getelementptr %451[%459] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %461 : i64, !llvm.ptr
    %462 = llvm.add %459, %17  : i64
    llvm.br ^bb49(%462 : i64)
  ^bb51:  // pred: ^bb49
    %463 = llvm.mlir.constant(1 : index) : i64
    %464 = llvm.alloca %463 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %458, %464 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %465 = llvm.mlir.constant(1 : index) : i64
    %466 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %467 = llvm.insertvalue %465, %466[0] : !llvm.struct<(i64, ptr)> 
    %468 = llvm.insertvalue %464, %467[1] : !llvm.struct<(i64, ptr)> 
    %469 = llvm.mlir.constant(1 : index) : i64
    %470 = llvm.mlir.zero : !llvm.ptr
    %471 = llvm.getelementptr %470[%290] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %472 = llvm.ptrtoint %471 : !llvm.ptr to i64
    %473 = llvm.call @malloc(%472) : (i64) -> !llvm.ptr
    %474 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %475 = llvm.insertvalue %473, %474[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %476 = llvm.insertvalue %473, %475[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %477 = llvm.mlir.constant(0 : index) : i64
    %478 = llvm.insertvalue %477, %476[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %479 = llvm.insertvalue %290, %478[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %480 = llvm.insertvalue %469, %479[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb52(%18 : i64)
  ^bb52(%481: i64):  // 2 preds: ^bb51, ^bb53
    %482 = llvm.icmp "slt" %481, %290 : i64
    llvm.cond_br %482, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %483 = llvm.getelementptr %473[%481] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %3, %483 : f64, !llvm.ptr
    %484 = llvm.add %481, %17  : i64
    llvm.br ^bb52(%484 : i64)
  ^bb54:  // pred: ^bb52
    %485 = llvm.mlir.constant(1 : index) : i64
    %486 = llvm.alloca %485 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %480, %486 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %487 = llvm.mlir.constant(1 : index) : i64
    %488 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %489 = llvm.insertvalue %487, %488[0] : !llvm.struct<(i64, ptr)> 
    %490 = llvm.insertvalue %486, %489[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64_i64(%12, %18, %16, %17, %16, %311, %310, %333, %332, %355, %354, %377, %376, %399, %398, %421, %420, %443, %442, %465, %464, %487, %486, %12) {filename = "SPARSE_FILE_NAME1"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %491 = llvm.add %56, %1  : i64
    %492 = llvm.mlir.constant(1 : index) : i64
    %493 = llvm.mlir.zero : !llvm.ptr
    %494 = llvm.getelementptr %493[%491] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %495 = llvm.ptrtoint %494 : !llvm.ptr to i64
    %496 = llvm.call @malloc(%495) : (i64) -> !llvm.ptr
    %497 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %498 = llvm.insertvalue %496, %497[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %499 = llvm.insertvalue %496, %498[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %500 = llvm.mlir.constant(0 : index) : i64
    %501 = llvm.insertvalue %500, %499[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %502 = llvm.insertvalue %491, %501[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %503 = llvm.insertvalue %492, %502[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %504 = llvm.getelementptr %496[%2] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %504 : i64, !llvm.ptr
    %505 = llvm.mlir.constant(1 : index) : i64
    %506 = llvm.mlir.zero : !llvm.ptr
    %507 = llvm.getelementptr %506[%292] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %508 = llvm.ptrtoint %507 : !llvm.ptr to i64
    %509 = llvm.call @malloc(%508) : (i64) -> !llvm.ptr
    %510 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %511 = llvm.insertvalue %509, %510[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %512 = llvm.insertvalue %509, %511[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %513 = llvm.mlir.constant(0 : index) : i64
    %514 = llvm.insertvalue %513, %512[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %515 = llvm.insertvalue %292, %514[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %516 = llvm.insertvalue %505, %515[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb55(%18, %2, %2 : i64, i64, i64)
  ^bb55(%517: i64, %518: i64, %519: i64):  // 2 preds: ^bb54, ^bb64
    %520 = llvm.icmp "slt" %517, %56 : i64
    llvm.cond_br %520, ^bb56, ^bb65
  ^bb56:  // pred: ^bb55
    %521 = llvm.add %517, %17  : i64
    %522 = llvm.getelementptr %149[%517] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %523 = llvm.load %522 : !llvm.ptr -> i64
    %524 = llvm.getelementptr %149[%521] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %525 = llvm.load %524 : !llvm.ptr -> i64
    llvm.br ^bb57(%523, %519 : i64, i64)
  ^bb57(%526: i64, %527: i64):  // 2 preds: ^bb56, ^bb63
    %528 = llvm.icmp "slt" %526, %525 : i64
    llvm.cond_br %528, ^bb58, ^bb64
  ^bb58:  // pred: ^bb57
    %529 = llvm.getelementptr %171[%526] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %530 = llvm.load %529 : !llvm.ptr -> i64
    %531 = llvm.add %530, %17  : i64
    %532 = llvm.getelementptr %385[%530] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %533 = llvm.load %532 : !llvm.ptr -> i64
    %534 = llvm.getelementptr %385[%531] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %535 = llvm.load %534 : !llvm.ptr -> i64
    llvm.br ^bb59(%533, %527 : i64, i64)
  ^bb59(%536: i64, %537: i64):  // 2 preds: ^bb58, ^bb62
    %538 = llvm.icmp "slt" %536, %535 : i64
    llvm.cond_br %538, ^bb60, ^bb63
  ^bb60:  // pred: ^bb59
    %539 = llvm.getelementptr %407[%536] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %540 = llvm.load %539 : !llvm.ptr -> i64
    %541 = llvm.add %518, %1  : i64
    %542 = llvm.getelementptr %509[%540] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %543 = llvm.load %542 : !llvm.ptr -> i64
    %544 = llvm.icmp "eq" %541, %543 : i64
    llvm.cond_br %544, ^bb62(%537 : i64), ^bb61
  ^bb61:  // pred: ^bb60
    %545 = llvm.getelementptr %509[%540] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %541, %545 : i64, !llvm.ptr
    %546 = llvm.add %537, %1  : i64
    llvm.br ^bb62(%546 : i64)
  ^bb62(%547: i64):  // 2 preds: ^bb60, ^bb61
    %548 = llvm.add %536, %17  : i64
    llvm.br ^bb59(%548, %547 : i64, i64)
  ^bb63:  // pred: ^bb59
    %549 = llvm.add %526, %17  : i64
    llvm.br ^bb57(%549, %537 : i64, i64)
  ^bb64:  // pred: ^bb57
    %550 = llvm.add %518, %1  : i64
    %551 = llvm.getelementptr %496[%550] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %527, %551 : i64, !llvm.ptr
    llvm.br ^bb55(%521, %550, %527 : i64, i64, i64)
  ^bb65:  // pred: ^bb55
    %552 = llvm.mlir.constant(1 : index) : i64
    %553 = llvm.mlir.constant(1 : index) : i64
    %554 = llvm.mlir.zero : !llvm.ptr
    %555 = llvm.getelementptr %554[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %556 = llvm.ptrtoint %555 : !llvm.ptr to i64
    %557 = llvm.call @malloc(%556) : (i64) -> !llvm.ptr
    %558 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %559 = llvm.insertvalue %557, %558[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %560 = llvm.insertvalue %557, %559[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %561 = llvm.mlir.constant(0 : index) : i64
    %562 = llvm.insertvalue %561, %560[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %563 = llvm.insertvalue %552, %562[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %564 = llvm.insertvalue %553, %563[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %565 = llvm.getelementptr %557[%2] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %56, %565 : i64, !llvm.ptr
    %566 = llvm.mlir.constant(1 : index) : i64
    %567 = llvm.mlir.zero : !llvm.ptr
    %568 = llvm.getelementptr %567[%519] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %569 = llvm.ptrtoint %568 : !llvm.ptr to i64
    %570 = llvm.call @malloc(%569) : (i64) -> !llvm.ptr
    %571 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %572 = llvm.insertvalue %570, %571[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %573 = llvm.insertvalue %570, %572[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %574 = llvm.mlir.constant(0 : index) : i64
    %575 = llvm.insertvalue %574, %573[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %576 = llvm.insertvalue %519, %575[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %577 = llvm.insertvalue %566, %576[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %578 = llvm.mlir.constant(1 : index) : i64
    %579 = llvm.mlir.zero : !llvm.ptr
    %580 = llvm.getelementptr %579[%519] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %581 = llvm.ptrtoint %580 : !llvm.ptr to i64
    %582 = llvm.call @malloc(%581) : (i64) -> !llvm.ptr
    %583 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %584 = llvm.insertvalue %582, %583[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %585 = llvm.insertvalue %582, %584[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %586 = llvm.mlir.constant(0 : index) : i64
    %587 = llvm.insertvalue %586, %585[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %588 = llvm.insertvalue %519, %587[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %589 = llvm.insertvalue %578, %588[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb66(%2 : i64)
  ^bb66(%590: i64):  // 2 preds: ^bb65, ^bb67
    %591 = llvm.icmp "slt" %590, %519 : i64
    llvm.cond_br %591, ^bb67, ^bb68
  ^bb67:  // pred: ^bb66
    %592 = llvm.getelementptr %582[%590] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %3, %592 : f64, !llvm.ptr
    %593 = llvm.add %590, %1  : i64
    llvm.br ^bb66(%593 : i64)
  ^bb68:  // pred: ^bb66
    %594 = llvm.mlir.constant(1 : index) : i64
    %595 = llvm.mlir.zero : !llvm.ptr
    %596 = llvm.getelementptr %595[%292] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %597 = llvm.ptrtoint %596 : !llvm.ptr to i64
    %598 = llvm.mlir.constant(64 : index) : i64
    %599 = llvm.add %597, %598  : i64
    %600 = llvm.call @malloc(%599) : (i64) -> !llvm.ptr
    %601 = llvm.ptrtoint %600 : !llvm.ptr to i64
    %602 = llvm.mlir.constant(1 : index) : i64
    %603 = llvm.sub %598, %602  : i64
    %604 = llvm.add %601, %603  : i64
    %605 = llvm.urem %604, %598  : i64
    %606 = llvm.sub %604, %605  : i64
    %607 = llvm.inttoptr %606 : i64 to !llvm.ptr
    %608 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %609 = llvm.insertvalue %600, %608[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %610 = llvm.insertvalue %607, %609[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %611 = llvm.mlir.constant(0 : index) : i64
    %612 = llvm.insertvalue %611, %610[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %613 = llvm.insertvalue %292, %612[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %614 = llvm.insertvalue %594, %613[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %615 = llvm.mlir.constant(1 : index) : i64
    %616 = llvm.mlir.zero : !llvm.ptr
    %617 = llvm.getelementptr %616[%292] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %618 = llvm.ptrtoint %617 : !llvm.ptr to i64
    %619 = llvm.mlir.constant(64 : index) : i64
    %620 = llvm.add %618, %619  : i64
    %621 = llvm.call @malloc(%620) : (i64) -> !llvm.ptr
    %622 = llvm.ptrtoint %621 : !llvm.ptr to i64
    %623 = llvm.mlir.constant(1 : index) : i64
    %624 = llvm.sub %619, %623  : i64
    %625 = llvm.add %622, %624  : i64
    %626 = llvm.urem %625, %619  : i64
    %627 = llvm.sub %625, %626  : i64
    %628 = llvm.inttoptr %627 : i64 to !llvm.ptr
    %629 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %630 = llvm.insertvalue %621, %629[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %631 = llvm.insertvalue %628, %630[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %632 = llvm.mlir.constant(0 : index) : i64
    %633 = llvm.insertvalue %632, %631[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %634 = llvm.insertvalue %292, %633[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %635 = llvm.insertvalue %615, %634[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %636 = llvm.mlir.constant(1 : index) : i64
    %637 = llvm.mlir.zero : !llvm.ptr
    %638 = llvm.getelementptr %637[%292] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %639 = llvm.ptrtoint %638 : !llvm.ptr to i64
    %640 = llvm.mlir.constant(64 : index) : i64
    %641 = llvm.add %639, %640  : i64
    %642 = llvm.call @malloc(%641) : (i64) -> !llvm.ptr
    %643 = llvm.ptrtoint %642 : !llvm.ptr to i64
    %644 = llvm.mlir.constant(1 : index) : i64
    %645 = llvm.sub %640, %644  : i64
    %646 = llvm.add %643, %645  : i64
    %647 = llvm.urem %646, %640  : i64
    %648 = llvm.sub %646, %647  : i64
    %649 = llvm.inttoptr %648 : i64 to !llvm.ptr
    %650 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %651 = llvm.insertvalue %642, %650[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %652 = llvm.insertvalue %649, %651[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %653 = llvm.mlir.constant(0 : index) : i64
    %654 = llvm.insertvalue %653, %652[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %655 = llvm.insertvalue %292, %654[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %656 = llvm.insertvalue %636, %655[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb69(%18, %2, %12 : i64, i64, i32)
  ^bb69(%657: i64, %658: i64, %659: i32):  // 2 preds: ^bb68, ^bb84
    %660 = llvm.icmp "slt" %657, %56 : i64
    llvm.cond_br %660, ^bb70, ^bb85
  ^bb70:  // pred: ^bb69
    %661 = llvm.add %659, %12  : i32
    %662 = llvm.add %657, %17  : i64
    %663 = llvm.getelementptr %149[%657] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %664 = llvm.load %663 : !llvm.ptr -> i64
    %665 = llvm.getelementptr %149[%662] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %666 = llvm.load %665 : !llvm.ptr -> i64
    llvm.br ^bb71(%664, %2 : i64, i64)
  ^bb71(%667: i64, %668: i64):  // 2 preds: ^bb70, ^bb79
    %669 = llvm.icmp "slt" %667, %666 : i64
    llvm.cond_br %669, ^bb72, ^bb80(%18, %658 : i64, i64)
  ^bb72:  // pred: ^bb71
    %670 = llvm.getelementptr %171[%667] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %671 = llvm.load %670 : !llvm.ptr -> i64
    %672 = llvm.add %671, %17  : i64
    %673 = llvm.getelementptr %385[%671] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %674 = llvm.load %673 : !llvm.ptr -> i64
    %675 = llvm.getelementptr %385[%672] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %676 = llvm.load %675 : !llvm.ptr -> i64
    llvm.br ^bb73(%674, %668 : i64, i64)
  ^bb73(%677: i64, %678: i64):  // 2 preds: ^bb72, ^bb78
    %679 = llvm.icmp "slt" %677, %676 : i64
    llvm.cond_br %679, ^bb74, ^bb79
  ^bb74:  // pred: ^bb73
    %680 = llvm.getelementptr %407[%677] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %681 = llvm.load %680 : !llvm.ptr -> i64
    %682 = llvm.getelementptr %237[%667] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %683 = llvm.load %682 : !llvm.ptr -> f64
    %684 = llvm.getelementptr %473[%677] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %685 = llvm.load %684 : !llvm.ptr -> f64
    %686 = llvm.fmul %683, %685  : f64
    %687 = llvm.getelementptr %628[%681] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %688 = llvm.load %687 : !llvm.ptr -> i32
    %689 = llvm.icmp "eq" %688, %661 : i32
    llvm.cond_br %689, ^bb75, ^bb76(%3 : f64)
  ^bb75:  // pred: ^bb74
    %690 = llvm.getelementptr %607[%681] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %691 = llvm.load %690 : !llvm.ptr -> f64
    llvm.br ^bb76(%691 : f64)
  ^bb76(%692: f64):  // 2 preds: ^bb74, ^bb75
    %693 = llvm.fadd %692, %686  : f64
    %694 = llvm.icmp "ne" %688, %661 : i32
    llvm.cond_br %694, ^bb77, ^bb78(%678 : i64)
  ^bb77:  // pred: ^bb76
    %695 = llvm.getelementptr %628[%681] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %661, %695 : i32, !llvm.ptr
    %696 = llvm.getelementptr %649[%678] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %681, %696 : i64, !llvm.ptr
    %697 = llvm.add %678, %1  : i64
    llvm.br ^bb78(%697 : i64)
  ^bb78(%698: i64):  // 2 preds: ^bb76, ^bb77
    %699 = llvm.getelementptr %607[%681] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %693, %699 : f64, !llvm.ptr
    %700 = llvm.add %677, %17  : i64
    llvm.br ^bb73(%700, %698 : i64, i64)
  ^bb79:  // pred: ^bb73
    %701 = llvm.add %667, %17  : i64
    llvm.br ^bb71(%701, %678 : i64, i64)
  ^bb80(%702: i64, %703: i64):  // 2 preds: ^bb71, ^bb83
    %704 = llvm.icmp "slt" %702, %668 : i64
    llvm.cond_br %704, ^bb81, ^bb84
  ^bb81:  // pred: ^bb80
    %705 = llvm.getelementptr %649[%702] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %706 = llvm.load %705 : !llvm.ptr -> i64
    %707 = llvm.getelementptr %628[%706] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %708 = llvm.load %707 : !llvm.ptr -> i32
    %709 = llvm.icmp "eq" %708, %661 : i32
    llvm.cond_br %709, ^bb82, ^bb83(%3 : f64)
  ^bb82:  // pred: ^bb81
    %710 = llvm.getelementptr %607[%706] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %711 = llvm.load %710 : !llvm.ptr -> f64
    llvm.br ^bb83(%711 : f64)
  ^bb83(%712: f64):  // 2 preds: ^bb81, ^bb82
    %713 = llvm.getelementptr %570[%703] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %706, %713 : i64, !llvm.ptr
    %714 = llvm.add %703, %1  : i64
    %715 = llvm.getelementptr %582[%703] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %712, %715 : f64, !llvm.ptr
    %716 = llvm.add %702, %17  : i64
    llvm.br ^bb80(%716, %714 : i64, i64)
  ^bb84:  // pred: ^bb80
    llvm.br ^bb69(%662, %703, %661 : i64, i64, i32)
  ^bb85:  // pred: ^bb69
    %717 = llvm.mlir.constant(1 : index) : i64
    %718 = llvm.mlir.constant(1 : index) : i64
    %719 = llvm.mlir.zero : !llvm.ptr
    %720 = llvm.getelementptr %719[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %721 = llvm.ptrtoint %720 : !llvm.ptr to i64
    %722 = llvm.mlir.constant(64 : index) : i64
    %723 = llvm.add %721, %722  : i64
    %724 = llvm.call @malloc(%723) : (i64) -> !llvm.ptr
    %725 = llvm.ptrtoint %724 : !llvm.ptr to i64
    %726 = llvm.mlir.constant(1 : index) : i64
    %727 = llvm.sub %722, %726  : i64
    %728 = llvm.add %725, %727  : i64
    %729 = llvm.urem %728, %722  : i64
    %730 = llvm.sub %728, %729  : i64
    %731 = llvm.inttoptr %730 : i64 to !llvm.ptr
    %732 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %733 = llvm.insertvalue %724, %732[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %734 = llvm.insertvalue %731, %733[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %735 = llvm.mlir.constant(0 : index) : i64
    %736 = llvm.insertvalue %735, %734[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %737 = llvm.insertvalue %717, %736[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %738 = llvm.insertvalue %718, %737[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %739 = llvm.getelementptr %731[%2] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %0, %739 : i64, !llvm.ptr
    %740 = llvm.mlir.constant(1 : index) : i64
    %741 = llvm.alloca %740 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %564, %741 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %742 = llvm.mlir.constant(1 : index) : i64
    %743 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %744 = llvm.insertvalue %742, %743[0] : !llvm.struct<(i64, ptr)> 
    %745 = llvm.insertvalue %741, %744[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_i64(%742, %741) : (i64, !llvm.ptr) -> ()
    %746 = llvm.mlir.constant(1 : index) : i64
    %747 = llvm.alloca %746 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %738, %747 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %748 = llvm.mlir.constant(1 : index) : i64
    %749 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %750 = llvm.insertvalue %748, %749[0] : !llvm.struct<(i64, ptr)> 
    %751 = llvm.insertvalue %747, %750[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_index(%748, %747) : (i64, !llvm.ptr) -> ()
    %752 = llvm.mlir.constant(1 : index) : i64
    %753 = llvm.alloca %752 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %503, %753 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %754 = llvm.mlir.constant(1 : index) : i64
    %755 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %756 = llvm.insertvalue %754, %755[0] : !llvm.struct<(i64, ptr)> 
    %757 = llvm.insertvalue %753, %756[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_i64(%754, %753) : (i64, !llvm.ptr) -> ()
    %758 = llvm.mlir.constant(1 : index) : i64
    %759 = llvm.alloca %758 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %577, %759 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %760 = llvm.mlir.constant(1 : index) : i64
    %761 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %762 = llvm.insertvalue %760, %761[0] : !llvm.struct<(i64, ptr)> 
    %763 = llvm.insertvalue %759, %762[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_i64(%760, %759) : (i64, !llvm.ptr) -> ()
    %764 = llvm.mlir.constant(1 : index) : i64
    %765 = llvm.alloca %764 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %589, %765 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %766 = llvm.mlir.constant(1 : index) : i64
    %767 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %768 = llvm.insertvalue %766, %767[0] : !llvm.struct<(i64, ptr)> 
    %769 = llvm.insertvalue %765, %768[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%766, %765) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @read_input_2D_f64_i64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @read_input_sizes_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_i64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_index(i64, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}
