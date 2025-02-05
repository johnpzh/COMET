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
    %9 = "ta.mul"(%3, %6, %0, %1, %1, %2, %0, %2, %6) <{MaskType = "push", formats = ["CSR", "CSR", "CSR"], indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 1, 1, 6, 1>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
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
  %9 = "ta.mul"(%3, %6, %0, %1, %1, %2, %0, %2, %6) <{MaskType = "push", formats = ["CSR", "CSR", "CSR"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 1>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
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
  %9 = "ta.SpTensorAlias"(%6) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %10 = "it.itree"(%8) ({
    %11 = "it.RootOp"() : () -> !it.index_tree
    %12 = "it.IndexOp"(%11) : (!it.index_tree) -> !it.index
    %13 = "it.IndexOp"(%12) : (!it.index) -> !it.index
    %14 = "it.IndexOp"(%13) : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%8, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_1, %pos_2 = "it.IndexToTensorDim"(%9, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_3, %pos_4 = "it.IndexToTensorDim"(%8, %14, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %crd_5, %pos_6 = "it.IndexToTensorDim"(%9, %14, %pos_2) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %15 = "it.LHSOperandOp"(%8, %pos, %pos_4, %crd, %crd_3) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %16 = "it.OperandOp"(%9, %pos_2, %pos_6, %crd_1, %crd_5) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_7, %pos_8 = "it.IndexToTensorDim"(%3, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_9, %pos_10 = "it.IndexToTensorDim"(%3, %13, %pos_8) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %17 = "it.OperandOp"(%3, %pos_8, %pos_10, %crd_7, %crd_9) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_11, %pos_12 = "it.IndexToTensorDim"(%6, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_13, %pos_14 = "it.IndexToTensorDim"(%6, %14, %pos_12) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %18 = "it.OperandOp"(%6, %pos_12, %pos_14, %crd_11, %crd_13) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %19 = "it.ComputeOp"(%14, %15, %17, %18, %16) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 1>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %19 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%10, %8) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %6 = "ta.SpTensorAlias"(%3) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %7 = "it.itree"(%5) ({
    %8 = "it.RootOp"() : () -> !it.index_tree
    %9 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %10 = "it.DomainOp"(%6) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %11 = "it.DomainIntersectionOp"(%9, %10) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %12 = "it.IndexOp"(%8, %11) : (!it.index_tree, !it.domain) -> !it.index
    %13 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %14 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %15 = "it.DomainIntersectionOp"(%14, %13) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %16 = "it.IndexOp"(%12, %15) : (!it.index, !it.domain) -> !it.index
    %17 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %18 = "it.DomainOp"(%6) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %19 = "it.DomainIntersectionOp"(%17, %18) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %20 = "it.IndexOp"(%16, %19) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%5, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%6, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%5, %20, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%6, %20, %pos_1) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %21 = "it.LHSOperandOp"(%5, %pos, %pos_3, %crd, %crd_2) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %22 = "it.OperandOp"(%6, %pos_1, %pos_5, %crd_0, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%0, %12) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%0, %16, %pos_7) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %23 = "it.OperandOp"(%0, %pos_7, %pos_9, %crd_6, %crd_8) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_10, %pos_11 = "it.IndexToTensorDim"(%3, %16) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_12, %pos_13 = "it.IndexToTensorDim"(%3, %20, %pos_11) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %24 = "it.OperandOp"(%3, %pos_11, %pos_13, %crd_10, %crd_12) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %25 = "it.ComputeOp"(%20, %21, %23, %24, %22) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 1>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %25 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%7, %5) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %50 = "ta.SpTensorAlias"(%47) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %51 = "it.itree"(%49) ({
    %52 = "it.RootOp"() : () -> !it.index_tree
    %53 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %54 = "it.DomainOp"(%50) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %55 = "it.DomainIntersectionOp"(%53, %54) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %56 = "it.IndexOp"(%52, %55) : (!it.index_tree, !it.domain) -> !it.index
    %57 = "it.DomainOp"(%47) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %58 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %59 = "it.DomainIntersectionOp"(%58, %57) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %60 = "it.IndexOp"(%56, %59) : (!it.index, !it.domain) -> !it.index
    %61 = "it.DomainOp"(%47) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %62 = "it.DomainOp"(%50) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %63 = "it.DomainIntersectionOp"(%61, %62) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %64 = "it.IndexOp"(%60, %63) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%49, %56) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_81, %pos_82 = "it.IndexToTensorDim"(%50, %56) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_83, %pos_84 = "it.IndexToTensorDim"(%49, %64, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %crd_85, %pos_86 = "it.IndexToTensorDim"(%50, %64, %pos_82) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %65 = "it.LHSOperandOp"(%49, %pos, %pos_84, %crd, %crd_83) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %66 = "it.OperandOp"(%50, %pos_82, %pos_86, %crd_81, %crd_85) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_87, %pos_88 = "it.IndexToTensorDim"(%22, %56) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_89, %pos_90 = "it.IndexToTensorDim"(%22, %60, %pos_88) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %67 = "it.OperandOp"(%22, %pos_88, %pos_90, %crd_87, %crd_89) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_91, %pos_92 = "it.IndexToTensorDim"(%47, %60) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_93, %pos_94 = "it.IndexToTensorDim"(%47, %64, %pos_92) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %68 = "it.OperandOp"(%47, %pos_92, %pos_94, %crd_91, %crd_93) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %69 = "it.ComputeOp"(%64, %65, %67, %68, %66) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 1>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %69 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%51, %49) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %50 = "ta.SpTensorAlias"(%47) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %51 = "it.itree"(%49) ({
    %52 = "it.RootOp"() : () -> !it.index_tree
    %53 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %54 = "it.DomainOp"(%50) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %55 = "it.DomainIntersectionOp"(%53, %54) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %56 = "it.IndexOp"(%52, %55) : (!it.index_tree, !it.domain) -> !it.index
    %57 = "it.DomainOp"(%47) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %58 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %59 = "it.DomainIntersectionOp"(%58, %57) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %60 = "it.IndexOp"(%56, %59) : (!it.index, !it.domain) -> !it.index
    %61 = "it.DomainOp"(%47) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %62 = "it.DomainOp"(%50) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %63 = "it.DomainIntersectionOp"(%61, %62) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %64 = "it.IndexOp"(%60, %63) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%49, %56) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_81, %pos_82 = "it.IndexToTensorDim"(%50, %56) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_83, %pos_84 = "it.IndexToTensorDim"(%49, %64, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %crd_85, %pos_86 = "it.IndexToTensorDim"(%50, %64, %pos_82) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %65 = "it.LHSOperandOp"(%49, %pos, %pos_84, %crd, %crd_83) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %66 = "it.OperandOp"(%50, %pos_82, %pos_86, %crd_81, %crd_85) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_87, %pos_88 = "it.IndexToTensorDim"(%22, %56) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_89, %pos_90 = "it.IndexToTensorDim"(%22, %60, %pos_88) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %67 = "it.OperandOp"(%22, %pos_88, %pos_90, %crd_87, %crd_89) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_91, %pos_92 = "it.IndexToTensorDim"(%47, %60) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_93, %pos_94 = "it.IndexToTensorDim"(%47, %64, %pos_92) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %68 = "it.OperandOp"(%47, %pos_92, %pos_94, %crd_91, %crd_93) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %69 = "it.ComputeOp"(%64, %65, %67, %68, %66) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 1>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %69 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%51, %49) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %50 = "ta.SpTensorAlias"(%47) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %51 = "it.itree"(%49) ({
    %52 = "it.RootOp"() : () -> !it.index_tree
    %53 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %54 = "it.DomainOp"(%50) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %55 = "it.DomainIntersectionOp"(%53, %54) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %56 = "it.IndexOp"(%52, %55) : (!it.index_tree, !it.domain) -> !it.index
    %57 = "it.DomainOp"(%47) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %58 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %59 = "it.DomainIntersectionOp"(%58, %57) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %60 = "it.IndexOp"(%56, %59) : (!it.index, !it.domain) -> !it.index
    %61 = "it.DomainOp"(%47) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %62 = "it.DomainOp"(%50) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %63 = "it.DomainIntersectionOp"(%61, %62) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %64 = "it.IndexOp"(%60, %63) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%49, %56) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_81, %pos_82 = "it.IndexToTensorDim"(%50, %56) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_83, %pos_84 = "it.IndexToTensorDim"(%49, %64, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %crd_85, %pos_86 = "it.IndexToTensorDim"(%50, %64, %pos_82) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %65 = "it.LHSOperandOp"(%49, %pos, %pos_84, %crd, %crd_83) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %66 = "it.OperandOp"(%50, %pos_82, %pos_86, %crd_81, %crd_85) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_87, %pos_88 = "it.IndexToTensorDim"(%22, %56) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_89, %pos_90 = "it.IndexToTensorDim"(%22, %60, %pos_88) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %67 = "it.OperandOp"(%22, %pos_88, %pos_90, %crd_87, %crd_89) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_91, %pos_92 = "it.IndexToTensorDim"(%47, %60) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_93, %pos_94 = "it.IndexToTensorDim"(%47, %64, %pos_92) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %68 = "it.OperandOp"(%47, %pos_92, %pos_94, %crd_91, %crd_93) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %69 = "it.ComputeOp"(%64, %65, %67, %68, %66) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 1>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %69 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%51, %49) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %51 = "ta.SpTensorAlias"(%47) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %52 = "it.itree"(%50) ({
    %53 = "it.RootOp"() : () -> !it.index_tree
    %54 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %55 = "it.DomainOp"(%51) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %56 = "it.DomainIntersectionOp"(%54, %55) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %57 = "it.IndexOp"(%53, %56) : (!it.index_tree, !it.domain) -> !it.index
    %58 = "it.DomainOp"(%47) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %59 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %60 = "it.DomainIntersectionOp"(%59, %58) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %61 = "it.IndexOp"(%57, %60) : (!it.index, !it.domain) -> !it.index
    %62 = "it.DomainOp"(%47) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %63 = "it.DomainOp"(%51) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %64 = "it.DomainIntersectionOp"(%62, %63) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %65 = "it.IndexOp"(%61, %64) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%50, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_81, %pos_82 = "it.IndexToTensorDim"(%51, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_83, %pos_84 = "it.IndexToTensorDim"(%50, %65, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %crd_85, %pos_86 = "it.IndexToTensorDim"(%51, %65, %pos_82) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %66 = "it.LHSOperandOp"(%50, %pos, %pos_84, %crd, %crd_83) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %67 = "it.OperandOp"(%51, %pos_82, %pos_86, %crd_81, %crd_85) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_87, %pos_88 = "it.IndexToTensorDim"(%22, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_89, %pos_90 = "it.IndexToTensorDim"(%22, %61, %pos_88) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %68 = "it.OperandOp"(%22, %pos_88, %pos_90, %crd_87, %crd_89) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_91, %pos_92 = "it.IndexToTensorDim"(%47, %61) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_93, %pos_94 = "it.IndexToTensorDim"(%47, %65, %pos_92) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %69 = "it.OperandOp"(%47, %pos_92, %pos_94, %crd_91, %crd_93) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %70 = "it.ComputeOp"(%65, %66, %68, %69, %67) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 1>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %70 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%52, %50) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %51 = "ta.SpTensorAlias"(%47) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %52 = "it.itree"(%50) ({
    %53 = "it.RootOp"() : () -> !it.index_tree
    %54 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %55 = "it.DomainOp"(%51) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %56 = "it.DomainIntersectionOp"(%54, %55) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %57 = "it.IndexOp"(%53, %56) : (!it.index_tree, !it.domain) -> !it.index
    %58 = "it.DomainOp"(%47) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %59 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %60 = "it.DomainIntersectionOp"(%59, %58) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %61 = "it.IndexOp"(%57, %60) : (!it.index, !it.domain) -> !it.index
    %62 = "it.DomainOp"(%47) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %63 = "it.DomainOp"(%51) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %64 = "it.DomainIntersectionOp"(%62, %63) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %65 = "it.IndexOp"(%61, %64) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%50, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_81, %pos_82 = "it.IndexToTensorDim"(%51, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_83, %pos_84 = "it.IndexToTensorDim"(%50, %65, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %crd_85, %pos_86 = "it.IndexToTensorDim"(%51, %65, %pos_82) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %66 = "it.LHSOperandOp"(%50, %pos, %pos_84, %crd, %crd_83) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %67 = "it.OperandOp"(%51, %pos_82, %pos_86, %crd_81, %crd_85) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_87, %pos_88 = "it.IndexToTensorDim"(%22, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_89, %pos_90 = "it.IndexToTensorDim"(%22, %61, %pos_88) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %68 = "it.OperandOp"(%22, %pos_88, %pos_90, %crd_87, %crd_89) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_91, %pos_92 = "it.IndexToTensorDim"(%47, %61) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_93, %pos_94 = "it.IndexToTensorDim"(%47, %65, %pos_92) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %69 = "it.OperandOp"(%47, %pos_92, %pos_94, %crd_91, %crd_93) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %70 = "it.ComputeOp"(%65, %66, %68, %69, %67) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 1>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %70 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%52, %50) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %51 = "ta.SpTensorAlias"(%47) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %52 = "it.itree"(%50) ({
    %53 = "it.RootOp"() : () -> !it.index_tree
    %54 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %55 = "it.DomainOp"(%51) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %56 = "it.DomainIntersectionOp"(%54, %55) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %57 = "it.IndexOp"(%53, %56) : (!it.index_tree, !it.domain) -> !it.index
    %58 = "it.DomainOp"(%47) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %59 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %60 = "it.DomainIntersectionOp"(%59, %58) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %61 = "it.IndexOp"(%57, %60) : (!it.index, !it.domain) -> !it.index
    %62 = "it.DomainOp"(%47) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %63 = "it.DomainOp"(%51) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %64 = "it.DomainIntersectionOp"(%62, %63) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %65 = "it.IndexOp"(%61, %64) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%50, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_81, %pos_82 = "it.IndexToTensorDim"(%51, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_83, %pos_84 = "it.IndexToTensorDim"(%50, %65, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %crd_85, %pos_86 = "it.IndexToTensorDim"(%51, %65, %pos_82) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %66 = "it.LHSOperandOp"(%50, %pos, %pos_84, %crd, %crd_83) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %67 = "it.OperandOp"(%51, %pos_82, %pos_86, %crd_81, %crd_85) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_87, %pos_88 = "it.IndexToTensorDim"(%22, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_89, %pos_90 = "it.IndexToTensorDim"(%22, %61, %pos_88) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %68 = "it.OperandOp"(%22, %pos_88, %pos_90, %crd_87, %crd_89) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_91, %pos_92 = "it.IndexToTensorDim"(%47, %61) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_93, %pos_94 = "it.IndexToTensorDim"(%47, %65, %pos_92) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %69 = "it.OperandOp"(%47, %pos_92, %pos_94, %crd_91, %crd_93) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %70 = "it.ComputeOp"(%65, %66, %68, %69, %67) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 1>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %70 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.set_op"(%52, %50) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %51 = "ta.SpTensorAlias"(%47) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %52 = "it.itree"(%50) ({
    %53 = "it.RootOp"() : () -> !it.index_tree
    %54 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %55 = "it.DomainOp"(%51) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %56 = "it.DomainIntersectionOp"(%54, %55) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %57 = "it.IndexOp"(%53, %56) : (!it.index_tree, !it.domain) -> !it.index
    %58 = "it.DomainOp"(%47) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %59 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %60 = "it.DomainIntersectionOp"(%59, %58) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %61 = "it.IndexOp"(%57, %60) : (!it.index, !it.domain) -> !it.index
    %62 = "it.DomainOp"(%47) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %63 = "it.DomainOp"(%51) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %64 = "it.DomainIntersectionOp"(%62, %63) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %65 = "it.IndexOp"(%61, %64) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%50, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_81, %pos_82 = "it.IndexToTensorDim"(%51, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_83, %pos_84 = "it.IndexToTensorDim"(%50, %65, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %crd_85, %pos_86 = "it.IndexToTensorDim"(%51, %65, %pos_82) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %66 = "it.LHSOperandOp"(%50, %pos, %pos_84, %crd, %crd_83) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %67 = "it.OperandOp"(%51, %pos_82, %pos_86, %crd_81, %crd_85) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_87, %pos_88 = "it.IndexToTensorDim"(%22, %57) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_89, %pos_90 = "it.IndexToTensorDim"(%22, %61, %pos_88) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %68 = "it.OperandOp"(%22, %pos_88, %pos_90, %crd_87, %crd_89) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_91, %pos_92 = "it.IndexToTensorDim"(%47, %61) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_93, %pos_94 = "it.IndexToTensorDim"(%47, %65, %pos_92) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %69 = "it.OperandOp"(%47, %pos_92, %pos_94, %crd_91, %crd_93) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %70 = "it.ComputeOp"(%65, %66, %68, %69, %67) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 1>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %70 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.print"(%52) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %49 = "ta.SpTensorAlias"(%45) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %50 = "it.DenseDomainOp"(%21, %20, %49) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %51 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %52 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %53 = "it.NestedDomainOp"(%51, %52, %48) : (!it.domain, !it.domain, index) -> !it.domain
  %54 = "ta.SpTensorGetDimPos"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %55 = "ta.SpTensorGetDimCrd"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_42 = tensor.dim %54, %c0 : tensor<?xi64>
  %dim_43 = tensor.dim %55, %c0 : tensor<?xi64>
  %56 = "ta.SpTensorGetDimSize"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %57 = "it.SparseDomainOp"(%49, %54, %55, %dim_42, %dim_43, %56) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %58 = "it.DomainIntersectionOp"(%53, %57, %48) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
  %59 = "it.IndexTreeSparseTensorOp"(%50, %58) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %60 = "it.itree"(%59) ({
    %61 = "it.RootOp"() : () -> !it.index_tree
    %62 = "it.DenseDomainOp"(%21, %20, %49) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %63 = "it.IndexOp"(%61, %62) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %63) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %64 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %65 = "it.IndexOp"(%63, %64) : (!it.index, !it.domain) -> !it.index
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%45, %65) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %66 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos_45) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%49, %63) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %67 = "it.SparseDomainOp"(%49, %54, %55, %dim_42, %dim_43, %56, %pos_47) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %68 = "it.DomainIntersectionOp"(%66, %67, %48) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %69 = "it.IndexOp"(%65, %68) : (!it.index, !it.domain) -> !it.index
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%59, %63) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%59, %69, %pos_49) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%49, %69, %pos_47) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %70 = "it.LHSOperandOp"(%59, %pos_49, %pos_51, %crd_48, %crd_50) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %71 = "it.OperandOp"(%49, %pos_47, %pos_53, %crd_46, %crd_52) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_54, %pos_55 = "it.IndexToTensorDim"(%20, %65, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %72 = "it.OperandOp"(%20, %pos, %pos_55, %crd, %crd_54) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_56, %pos_57 = "it.IndexToTensorDim"(%45, %69, %pos_45) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %73 = "it.OperandOp"(%45, %pos_45, %pos_57, %crd_44, %crd_56) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %74 = "it.ComputeOp"(%69, %70, %72, %73, %71) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 1>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %74 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  "ta.print"(%60) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %49 = "ta.SpTensorAlias"(%45) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %50 = "it.DenseDomainOp"(%21, %20, %49) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %51 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %52 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %53 = "it.NestedDomainOp"(%51, %52, %48) : (!it.domain, !it.domain, index) -> !it.domain
  %54 = "ta.SpTensorGetDimPos"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %55 = "ta.SpTensorGetDimCrd"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_42 = tensor.dim %54, %c0 : tensor<?xi64>
  %dim_43 = tensor.dim %55, %c0 : tensor<?xi64>
  %56 = "ta.SpTensorGetDimSize"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %57 = "it.SparseDomainOp"(%49, %54, %55, %dim_42, %dim_43, %56) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index) -> !it.domain
  %58 = "it.DomainIntersectionOp"(%53, %57, %48) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
  %59 = "it.IndexTreeSparseTensorOp"(%50, %58) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %60 = "ta.AllocWorkspace"(%59) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, -9223372036854775808>
  %61:2 = "it.itree"(%59, %60) ({
    %62 = "it.RootOp"() : () -> !it.index_tree
    %63 = "it.DenseDomainOp"(%21, %20, %49) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %64 = "it.IndexOp"(%62, %63) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %65 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %66 = "it.WorkspaceStartRowOp"(%64, %60) : (!it.index, !ta.workspace<f64, i64, -9223372036854775808>) -> !ta.workspace<f64, i64, -9223372036854775808>
    %67 = "it.IndexOp"(%64, %65) : (!it.index, !it.domain) -> !it.index
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%45, %67) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %68 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos_45) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%49, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %69 = "it.SparseDomainOp"(%49, %54, %55, %dim_42, %dim_43, %56, %pos_47) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %70 = "it.DomainIntersectionOp"(%68, %69, %48) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %71 = "it.IndexOp"(%67, %70) : (!it.index, !it.domain) -> !it.index
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%20, %67, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %72 = "it.OperandOp"(%20, %pos, %pos_49, %crd, %crd_48) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%45, %71, %pos_45) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %73 = "it.OperandOp"(%45, %pos_45, %pos_51, %crd_44, %crd_50) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%66, %71) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, -9223372036854775808>, !it.index) -> (index, index)
    %74 = "it.LHSOperandOp"(%66, %pos_53, %crd_52) : (!ta.workspace<f64, i64, -9223372036854775808>, index, index) -> !it.operand
    %75 = "it.ComputeOp"(%71, %74, %72, %73) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.workspace<f64, i64, -9223372036854775808>
    %76 = "ta.SpTensorGetDimSize"(%75) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, -9223372036854775808>) -> index
    %77 = "it.WorkspaceDomainOp"(%75, %76) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, -9223372036854775808>, index) -> !it.domain
    %78 = "it.IndexOp"(%64, %77) : (!it.index, !it.domain) -> !it.index
    %crd_54, %pos_55 = "it.IndexToTensorDim"(%59, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_56, %pos_57 = "it.IndexToTensorDim"(%59, %78, %pos_55) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %79 = "it.LHSOperandOp"(%59, %pos_55, %pos_57, %crd_54, %crd_56) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_58, %pos_59 = "it.IndexToTensorDim"(%75, %78) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, -9223372036854775808>, !it.index) -> (index, index)
    %80 = "it.OperandOp"(%75, %pos_59, %crd_58) : (!ta.workspace<f64, i64, -9223372036854775808>, index, index) -> !it.operand
    %81 = "it.ComputeOp"(%78, %79, %80) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_noop"}> : (!it.index, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %81, %60 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>)
  "ta.print"(%61#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %49 = "ta.SpTensorAlias"(%45) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %50 = "it.DenseDomainOp"(%21, %20, %49) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %51 = "ta.SpTensorGetDimPos"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %52 = "ta.SpTensorGetDimCrd"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_42 = tensor.dim %51, %c0 : tensor<?xi64>
  %dim_43 = tensor.dim %52, %c0 : tensor<?xi64>
  %53 = "ta.SpTensorGetDimSize"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %54 = "it.DeclDomainOp"(%48, %21) <{indices_bitwidth = 64 : i32, is_dynamic = false}> : (index, index) -> !it.symbolic_domain<64>
  %55 = "it.itree"(%54) ({
    %59 = "it.RootOp"() : () -> !it.index_tree
    %60 = "it.DenseDomainOp"(%21, %20, %49) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %61 = "it.IndexOp"(%59, %60) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %61) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %62 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %63 = "it.IndexOp"(%61, %62) : (!it.index, !it.domain) -> !it.index
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%45, %63) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %64 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos_45) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%49, %61) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %65 = "it.SparseDomainOp"(%49, %51, %52, %dim_42, %dim_43, %53, %pos_47) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %66 = "it.DomainIntersectionOp"(%64, %65, %48) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %67 = "it.IndexOp"(%63, %66) : (!it.index, !it.domain) -> !it.index
    %68 = "it.ComputeSymbolicDomainOp"(%67, %54) <{is_unique = false}> : (!it.index, !it.symbolic_domain<64>) -> !it.symbolic_domain<64>
    %69 = "it.ComputeSymbolicDomainRowOp"(%61, %68) <{needs_mark = true}> : (!it.index, !it.symbolic_domain<64>) -> !it.symbolic_domain<64>
    it.yield %69 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %56 = "it.IndexTreeSparseTensorOp"(%50, %55) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %57 = "ta.AllocWorkspace"(%56) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, -9223372036854775808>
  %58:2 = "it.itree"(%56, %57) ({
    %59 = "it.RootOp"() : () -> !it.index_tree
    %60 = "it.DenseDomainOp"(%21, %20, %49) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %61 = "it.IndexOp"(%59, %60) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %61) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %62 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_18, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %63 = "it.WorkspaceStartRowOp"(%61, %57) : (!it.index, !ta.workspace<f64, i64, -9223372036854775808>) -> !ta.workspace<f64, i64, -9223372036854775808>
    %64 = "it.IndexOp"(%61, %62) : (!it.index, !it.domain) -> !it.index
    %crd_44, %pos_45 = "it.IndexToTensorDim"(%45, %64) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %65 = "it.SparseDomainOp"(%45, %46, %47, %dim_40, %dim_41, %48, %pos_45) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %crd_46, %pos_47 = "it.IndexToTensorDim"(%49, %61) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %66 = "it.SparseDomainOp"(%49, %51, %52, %dim_42, %dim_43, %53, %pos_47) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %67 = "it.DomainIntersectionOp"(%65, %66, %48) <{operandSegmentSizes = array<i32: 2, 1>}> : (!it.domain, !it.domain, index) -> !it.domain
    %68 = "it.IndexOp"(%64, %67) : (!it.index, !it.domain) -> !it.index
    %crd_48, %pos_49 = "it.IndexToTensorDim"(%20, %64, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %69 = "it.OperandOp"(%20, %pos, %pos_49, %crd, %crd_48) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_50, %pos_51 = "it.IndexToTensorDim"(%45, %68, %pos_45) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %70 = "it.OperandOp"(%45, %pos_45, %pos_51, %crd_44, %crd_50) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_52, %pos_53 = "it.IndexToTensorDim"(%63, %68) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, -9223372036854775808>, !it.index) -> (index, index)
    %71 = "it.LHSOperandOp"(%63, %pos_53, %crd_52) : (!ta.workspace<f64, i64, -9223372036854775808>, index, index) -> !it.operand
    %72 = "it.ComputeOp"(%68, %71, %69, %70) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.workspace<f64, i64, -9223372036854775808>
    %73 = "ta.SpTensorGetDimSize"(%72) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, -9223372036854775808>) -> index
    %74 = "it.WorkspaceDomainOp"(%72, %73) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, -9223372036854775808>, index) -> !it.domain
    %75 = "it.IndexOp"(%61, %74) : (!it.index, !it.domain) -> !it.index
    %crd_54, %pos_55 = "it.IndexToTensorDim"(%56, %61) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_56, %pos_57 = "it.IndexToTensorDim"(%56, %75, %pos_55) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %76 = "it.LHSOperandOp"(%56, %pos_55, %pos_57, %crd_54, %crd_56) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_58, %pos_59 = "it.IndexToTensorDim"(%72, %75) <{dim = 0 : ui32}> : (!ta.workspace<f64, i64, -9223372036854775808>, !it.index) -> (index, index)
    %77 = "it.OperandOp"(%72, %pos_59, %crd_58) : (!ta.workspace<f64, i64, -9223372036854775808>, index, index) -> !it.operand
    %78 = "it.ComputeOp"(%75, %76, %77) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, semiring = "noop_noop"}> : (!it.index, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    it.yield %78, %57 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>)
  "ta.print"(%58#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %49 = "ta.SpTensorAlias"(%45) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %50 = "it.DenseDomainOp"(%21, %20, %49) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
  %51 = "ta.SpTensorGetDimPos"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %52 = "ta.SpTensorGetDimCrd"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_42 = tensor.dim %51, %c0 : tensor<?xi64>
  %dim_43 = tensor.dim %52, %c0 : tensor<?xi64>
  %53 = "ta.SpTensorGetDimSize"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %54 = "it.DeclDomainOp"(%48, %21) <{indices_bitwidth = 64 : i32, is_dynamic = false}> : (index, index) -> !it.symbolic_domain<64>
  %55 = "it.itree"(%54) ({
    %c0_44 = arith.constant 0 : index
    %c1_45 = arith.constant 1 : index
    %59 = scf.for %arg0 = %c0_44 to %21 step %c1_45 iter_args(%arg1 = %54) -> (!it.symbolic_domain<64>) {
      %c1_46 = arith.constant 1 : index
      %60 = arith.addi %arg0, %c1_46 : index
      %extracted = tensor.extract %22[%arg0] : tensor<?xi64>
      %61 = arith.index_cast %extracted : i64 to index
      %extracted_47 = tensor.extract %22[%60] : tensor<?xi64>
      %62 = arith.index_cast %extracted_47 : i64 to index
      %c1_48 = arith.constant 1 : index
      %63 = scf.for %arg2 = %61 to %62 step %c1_48 iter_args(%arg3 = %arg1) -> (!it.symbolic_domain<64>) {
        %65 = "ta.SpTensorGetCrd"(%20, %arg2) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %66 = arith.index_cast %65 : i64 to index
        %c1_49 = arith.constant 1 : index
        %idx0 = index.constant 0
        %67 = arith.addi %66, %c1_49 : index
        %extracted_50 = tensor.extract %46[%66] : tensor<?xi64>
        %68 = arith.index_cast %extracted_50 : i64 to index
        %extracted_51 = tensor.extract %46[%67] : tensor<?xi64>
        %69 = arith.index_cast %extracted_51 : i64 to index
        %70 = arith.addi %arg0, %c1_49 : index
        %extracted_52 = tensor.extract %51[%arg0] : tensor<?xi64>
        %71 = arith.index_cast %extracted_52 : i64 to index
        %extracted_53 = tensor.extract %51[%70] : tensor<?xi64>
        %72 = arith.index_cast %extracted_53 : i64 to index
        %73:4 = scf.while (%arg4 = %arg3, %arg5 = %idx0, %arg6 = %68, %arg7 = %71) : (!it.symbolic_domain<64>, index, index, index) -> (!it.symbolic_domain<64>, index, index, index) {
          %74 = arith.cmpi ult, %arg7, %72 : index
          %75 = arith.cmpi ult, %arg6, %69 : index
          %76 = arith.andi %75, %74 : i1
          scf.condition(%76) %arg4, %arg5, %arg6, %arg7 : !it.symbolic_domain<64>, index, index, index
        } do {
        ^bb0(%arg4: !it.symbolic_domain<64>, %arg5: index, %arg6: index, %arg7: index):
          %74 = "ta.SpTensorGetCrd"(%49, %arg7) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %75 = arith.index_cast %74 : i64 to index
          %76 = "ta.SpTensorGetCrd"(%45, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %77 = arith.index_cast %76 : i64 to index
          %78 = arith.minui %77, %75 : index
          %79 = arith.cmpi eq, %78, %77 : index
          %80 = arith.cmpi eq, %78, %75 : index
          %81 = arith.andi %79, %80 : i1
          %82:2 = scf.if %81 -> (!it.symbolic_domain<64>, index) {
            %idx1 = index.constant 1
            %87 = "it.SymbolicDomainInsertOp"(%arg4, %78) <{is_unique = false}> : (!it.symbolic_domain<64>, index) -> !it.symbolic_domain<64>
            %88 = index.add %arg5, %idx1
            scf.yield %87, %88 : !it.symbolic_domain<64>, index
          } else {
            scf.yield %arg4, %arg5 : !it.symbolic_domain<64>, index
          }
          %83 = index.castu %79 : i1 to index
          %84 = index.add %arg6, %83
          %85 = index.castu %80 : i1 to index
          %86 = index.add %arg7, %85
          scf.yield %82#0, %82#1, %84, %86 : !it.symbolic_domain<64>, index, index, index
        }
        scf.yield %73#0 : !it.symbolic_domain<64>
      }
      %64 = "it.SymbolicDomainEndRowOp"(%63) <{needs_mark = true}> : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
      scf.yield %64 : !it.symbolic_domain<64>
    }
    it.yield %59 : !it.symbolic_domain<64>
  }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
  %56 = "it.IndexTreeSparseTensorOp"(%50, %55) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %57 = "ta.AllocWorkspace"(%56) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, -9223372036854775808>
  %58:2 = "it.itree"(%56, %57) ({
    %c0_44 = arith.constant 0 : index
    %c1_45 = arith.constant 1 : index
    %59:2 = scf.for %arg0 = %c0_44 to %21 step %c1_45 iter_args(%arg1 = %56, %arg2 = %57) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) {
      %60 = "ta.WorkspaceClear"(%arg2) : (!ta.workspace<f64, i64, -9223372036854775808>) -> !ta.workspace<f64, i64, -9223372036854775808>
      %c1_46 = arith.constant 1 : index
      %61 = arith.addi %arg0, %c1_46 : index
      %extracted = tensor.extract %22[%arg0] : tensor<?xi64>
      %62 = arith.index_cast %extracted : i64 to index
      %extracted_47 = tensor.extract %22[%61] : tensor<?xi64>
      %63 = arith.index_cast %extracted_47 : i64 to index
      %c1_48 = arith.constant 1 : index
      %64:2 = scf.for %arg3 = %62 to %63 step %c1_48 iter_args(%arg4 = %arg1, %arg5 = %60) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) {
        %67 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %68 = arith.index_cast %67 : i64 to index
        %c1_51 = arith.constant 1 : index
        %idx0 = index.constant 0
        %69 = arith.addi %68, %c1_51 : index
        %extracted_52 = tensor.extract %46[%68] : tensor<?xi64>
        %70 = arith.index_cast %extracted_52 : i64 to index
        %extracted_53 = tensor.extract %46[%69] : tensor<?xi64>
        %71 = arith.index_cast %extracted_53 : i64 to index
        %72 = arith.addi %arg0, %c1_51 : index
        %extracted_54 = tensor.extract %51[%arg0] : tensor<?xi64>
        %73 = arith.index_cast %extracted_54 : i64 to index
        %extracted_55 = tensor.extract %51[%72] : tensor<?xi64>
        %74 = arith.index_cast %extracted_55 : i64 to index
        %75:5 = scf.while (%arg6 = %arg4, %arg7 = %arg5, %arg8 = %idx0, %arg9 = %70, %arg10 = %73) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>, index, index, index) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>, index, index, index) {
          %76 = arith.cmpi ult, %arg10, %74 : index
          %77 = arith.cmpi ult, %arg9, %71 : index
          %78 = arith.andi %77, %76 : i1
          scf.condition(%78) %arg6, %arg7, %arg8, %arg9, %arg10 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>, index, index, index
        } do {
        ^bb0(%arg6: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg7: !ta.workspace<f64, i64, -9223372036854775808>, %arg8: index, %arg9: index, %arg10: index):
          %76 = "ta.SpTensorGetCrd"(%49, %arg10) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %77 = arith.index_cast %76 : i64 to index
          %78 = "ta.SpTensorGetCrd"(%45, %arg9) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %79 = arith.index_cast %78 : i64 to index
          %80 = arith.minui %79, %77 : index
          %81 = arith.cmpi eq, %80, %79 : index
          %82 = arith.cmpi eq, %80, %77 : index
          %83 = arith.andi %81, %82 : i1
          %84:3 = scf.if %83 -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>, index) {
            %idx1 = index.constant 1
            %89 = "ta.TensorFindPos"(%arg7, %80) <{dim = 0 : i32, is_linear = true}> : (!ta.workspace<f64, i64, -9223372036854775808>, index) -> index
            %90 = "ta.TAExtractOp"(%20, %arg3, %arg0, %68) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
            %91 = "ta.TAExtractOp"(%45, %arg9, %68, %80) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
            %92 = arith.mulf %90, %91 : f64
            %93 = "ta.TAExtractOp"(%arg7, %89, %80) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, -9223372036854775808>, index, index) -> f64
            %94 = arith.addf %93, %92 : f64
            %95 = "ta.TAInsertOp"(%arg7, %89, %80, %94) : (!ta.workspace<f64, i64, -9223372036854775808>, index, index, f64) -> !ta.workspace<f64, i64, -9223372036854775808>
            %96 = index.add %arg8, %idx1
            scf.yield %arg6, %95, %96 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>, index
          } else {
            scf.yield %arg6, %arg7, %arg8 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>, index
          }
          %85 = index.castu %81 : i1 to index
          %86 = index.add %arg9, %85
          %87 = index.castu %82 : i1 to index
          %88 = index.add %arg10, %87
          scf.yield %84#0, %84#1, %84#2, %86, %88 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>, index, index, index
        }
        scf.yield %75#0, %75#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
      }
      %c0_49 = arith.constant 0 : index
      %65 = "ta.SpTensorGetNNZ"(%64#1) : (!ta.workspace<f64, i64, -9223372036854775808>) -> index
      %c1_50 = arith.constant 1 : index
      %66:2 = scf.for %arg3 = %c0_49 to %65 step %c1_50 iter_args(%arg4 = %64#0, %arg5 = %64#1) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) {
        %67 = "ta.SpTensorGetCrd"(%64#1, %arg3) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, -9223372036854775808>, index) -> i64
        %68 = arith.index_cast %67 : i64 to index
        %69 = "ta.TensorFindPos"(%arg4) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
        %70 = "ta.TAExtractOp"(%arg5, %arg3, %68) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, -9223372036854775808>, index, index) -> f64
        %71 = "ta.TAExtractOp"(%arg4, %69, %arg0, %68) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
        %72 = "ta.TAInsertOp"(%arg4, %arg0, %69, %arg0, %68, %70) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %72, %arg5 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
      }
      scf.yield %66#0, %66#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
    }
    it.yield %59#0, %59#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>)
  "ta.print"(%58#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %49 = "ta.SpTensorAlias"(%45) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %50 = "ta.SpTensorGetDimPos"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %51 = "ta.SpTensorGetDimCrd"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
  %dim_42 = tensor.dim %50, %c0 : tensor<?xi64>
  %dim_43 = tensor.dim %51, %c0 : tensor<?xi64>
  %52 = "ta.SpTensorGetDimSize"(%49) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
  %idx0 = index.constant 0
  %idx1 = index.constant 1
  %53 = index.add %21, %idx1
  %alloc_44 = memref.alloc(%53) : memref<?xi64>
  %c0_i64_45 = arith.constant 0 : i64
  memref.store %c0_i64_45, %alloc_44[%idx0] : memref<?xi64>
  %alloc_46 = memref.alloc(%48) : memref<?xi64>
  %54 = builtin.unrealized_conversion_cast %idx0, %53, %idx0, %48, %alloc_44, %alloc_46 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
  %55:6 = "it.itree"(%idx0, %53, %idx0, %48, %alloc_44, %alloc_46) ({
    %c0_60 = arith.constant 0 : index
    %c1_61 = arith.constant 1 : index
    %71:6 = scf.for %arg0 = %c0_60 to %21 step %c1_61 iter_args(%arg1 = %idx0, %arg2 = %53, %arg3 = %idx0, %arg4 = %48, %arg5 = %alloc_44, %arg6 = %alloc_46) -> (index, index, index, index, memref<?xi64>, memref<?xi64>) {
      %c1_62 = arith.constant 1 : index
      %73 = arith.addi %arg0, %c1_62 : index
      %extracted = tensor.extract %22[%arg0] : tensor<?xi64>
      %74 = arith.index_cast %extracted : i64 to index
      %extracted_63 = tensor.extract %22[%73] : tensor<?xi64>
      %75 = arith.index_cast %extracted_63 : i64 to index
      %c1_64 = arith.constant 1 : index
      %76:6 = scf.for %arg7 = %74 to %75 step %c1_64 iter_args(%arg8 = %arg1, %arg9 = %arg2, %arg10 = %arg3, %arg11 = %arg4, %arg12 = %arg5, %arg13 = %arg6) -> (index, index, index, index, memref<?xi64>, memref<?xi64>) {
        %81 = "ta.SpTensorGetCrd"(%20, %arg7) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %82 = arith.index_cast %81 : i64 to index
        %c1_66 = arith.constant 1 : index
        %idx0_67 = index.constant 0
        %83 = arith.addi %82, %c1_66 : index
        %extracted_68 = tensor.extract %46[%82] : tensor<?xi64>
        %84 = arith.index_cast %extracted_68 : i64 to index
        %extracted_69 = tensor.extract %46[%83] : tensor<?xi64>
        %85 = arith.index_cast %extracted_69 : i64 to index
        %86 = arith.addi %arg0, %c1_66 : index
        %extracted_70 = tensor.extract %50[%arg0] : tensor<?xi64>
        %87 = arith.index_cast %extracted_70 : i64 to index
        %extracted_71 = tensor.extract %50[%86] : tensor<?xi64>
        %88 = arith.index_cast %extracted_71 : i64 to index
        %89:9 = scf.while (%arg14 = %arg8, %arg15 = %arg9, %arg16 = %arg10, %arg17 = %arg11, %arg18 = %arg12, %arg19 = %arg13, %arg20 = %idx0_67, %arg21 = %84, %arg22 = %87) : (index, index, index, index, memref<?xi64>, memref<?xi64>, index, index, index) -> (index, index, index, index, memref<?xi64>, memref<?xi64>, index, index, index) {
          %91 = arith.cmpi ult, %arg22, %88 : index
          %92 = arith.cmpi ult, %arg21, %85 : index
          %93 = arith.andi %92, %91 : i1
          scf.condition(%93) %arg14, %arg15, %arg16, %arg17, %arg18, %arg19, %arg20, %arg21, %arg22 : index, index, index, index, memref<?xi64>, memref<?xi64>, index, index, index
        } do {
        ^bb0(%arg14: index, %arg15: index, %arg16: index, %arg17: index, %arg18: memref<?xi64>, %arg19: memref<?xi64>, %arg20: index, %arg21: index, %arg22: index):
          %91 = "ta.SpTensorGetCrd"(%49, %arg22) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %92 = arith.index_cast %91 : i64 to index
          %93 = "ta.SpTensorGetCrd"(%45, %arg21) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %94 = arith.index_cast %93 : i64 to index
          %95 = arith.minui %94, %92 : index
          %96 = arith.cmpi eq, %95, %94 : index
          %97 = arith.cmpi eq, %95, %92 : index
          %98 = arith.andi %96, %97 : i1
          %99:7 = scf.if %98 -> (index, index, index, index, memref<?xi64>, memref<?xi64>, index) {
            %idx1_72 = index.constant 1
            %idx1_73 = index.constant 1
            %105 = index.add %arg14, %idx1_73
            %106 = arith.index_cast %105 : index to i64
            %107 = memref.load %arg19[%95] : memref<?xi64>
            %108 = arith.cmpi eq, %106, %107 : i64
            %109 = scf.if %108 -> (index) {
              scf.yield %arg16 : index
            } else {
              memref.store %106, %arg19[%95] : memref<?xi64>
              %112 = index.add %arg16, %idx1_73
              scf.yield %112 : index
            }
            %110 = builtin.unrealized_conversion_cast %arg14, %arg15, %109, %arg17, %arg18, %arg19 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
            %111 = index.add %arg20, %idx1_72
            scf.yield %arg14, %arg15, %109, %arg17, %arg18, %arg19, %111 : index, index, index, index, memref<?xi64>, memref<?xi64>, index
          } else {
            scf.yield %arg14, %arg15, %arg16, %arg17, %arg18, %arg19, %arg20 : index, index, index, index, memref<?xi64>, memref<?xi64>, index
          }
          %100 = builtin.unrealized_conversion_cast %99#0, %99#1, %99#2, %99#3, %99#4, %99#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
          %101 = index.castu %96 : i1 to index
          %102 = index.add %arg21, %101
          %103 = index.castu %97 : i1 to index
          %104 = index.add %arg22, %103
          scf.yield %99#0, %99#1, %99#2, %99#3, %99#4, %99#5, %99#6, %102, %104 : index, index, index, index, memref<?xi64>, memref<?xi64>, index, index, index
        }
        %90 = builtin.unrealized_conversion_cast %89#0, %89#1, %89#2, %89#3, %89#4, %89#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
        scf.yield %89#0, %89#1, %89#2, %89#3, %89#4, %89#5 : index, index, index, index, memref<?xi64>, memref<?xi64>
      }
      %77 = builtin.unrealized_conversion_cast %76#0, %76#1, %76#2, %76#3, %76#4, %76#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
      %idx1_65 = index.constant 1
      %78 = index.add %76#0, %idx1_65
      %79 = arith.index_cast %76#2 : index to i64
      memref.store %79, %76#4[%78] : memref<?xi64>
      %80 = builtin.unrealized_conversion_cast %78, %76#1, %76#2, %76#3, %76#4, %76#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
      scf.yield %78, %76#1, %76#2, %76#3, %76#4, %76#5 : index, index, index, index, memref<?xi64>, memref<?xi64>
    }
    %72 = builtin.unrealized_conversion_cast %71#0, %71#1, %71#2, %71#3, %71#4, %71#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
    it.yield %71#0, %71#1, %71#2, %71#3, %71#4, %71#5 : index, index, index, index, memref<?xi64>, memref<?xi64>
  }) : (index, index, index, index, memref<?xi64>, memref<?xi64>) -> (index, index, index, index, memref<?xi64>, memref<?xi64>)
  %56 = builtin.unrealized_conversion_cast %55#0, %55#1, %55#2, %55#3, %55#4, %55#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
  %idx0_47 = index.constant 0
  %idx1_48 = index.constant 1
  %57 = arith.index_cast %21 : index to i64
  %idx1_49 = index.constant 1
  %alloc_50 = memref.alloc(%idx1_49) : memref<?xi64>
  memref.store %57, %alloc_50[%idx0_47] : memref<?xi64>
  %alloc_51 = memref.alloc() : memref<0xi64>
  %alloc_52 = memref.alloc() : memref<0xi64>
  %alloc_53 = memref.alloc() : memref<0xi64>
  %58 = bufferization.to_tensor %alloc_50 restrict writable : memref<?xi64>
  %59 = bufferization.to_tensor %alloc_51 restrict writable : memref<0xi64>
  %60 = bufferization.to_tensor %alloc_52 restrict writable : memref<0xi64>
  %61 = bufferization.to_tensor %alloc_53 restrict writable : memref<0xi64>
  %62 = index.mul %idx1_48, %21
  %alloc_54 = memref.alloc(%55#2) : memref<?xi64>
  %alloc_55 = memref.alloc() : memref<0xi64>
  %alloc_56 = memref.alloc() : memref<0xi64>
  %63 = bufferization.to_tensor %55#4 restrict writable : memref<?xi64>
  %64 = bufferization.to_tensor %alloc_54 restrict writable : memref<?xi64>
  %65 = bufferization.to_tensor %alloc_55 restrict writable : memref<0xi64>
  %66 = bufferization.to_tensor %alloc_56 restrict writable : memref<0xi64>
  %alloc_57 = memref.alloc(%55#2) : memref<?xf64>
  %cst_58 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_47 to %55#2 step %idx1_48 {
    memref.store %cst_58, %alloc_57[%arg0] : memref<?xf64>
  }
  %67 = bufferization.to_tensor %alloc_57 restrict writable : memref<?xf64>
  %from_elements_59 = tensor.from_elements %21, %55#3 : tensor<2xindex>
  %68 = "ta.spTensor_construct"(%from_elements_59, %58, %63, %59, %64, %60, %65, %61, %66, %67) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<0xi64>, tensor<?xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %69 = "ta.AllocWorkspace"(%68) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, -9223372036854775808>
  %70:2 = "it.itree"(%68, %69) ({
    %c0_60 = arith.constant 0 : index
    %c1_61 = arith.constant 1 : index
    %71:2 = scf.for %arg0 = %c0_60 to %21 step %c1_61 iter_args(%arg1 = %68, %arg2 = %69) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) {
      %72 = "ta.WorkspaceClear"(%arg2) : (!ta.workspace<f64, i64, -9223372036854775808>) -> !ta.workspace<f64, i64, -9223372036854775808>
      %c1_62 = arith.constant 1 : index
      %73 = arith.addi %arg0, %c1_62 : index
      %extracted = tensor.extract %22[%arg0] : tensor<?xi64>
      %74 = arith.index_cast %extracted : i64 to index
      %extracted_63 = tensor.extract %22[%73] : tensor<?xi64>
      %75 = arith.index_cast %extracted_63 : i64 to index
      %c1_64 = arith.constant 1 : index
      %76:2 = scf.for %arg3 = %74 to %75 step %c1_64 iter_args(%arg4 = %arg1, %arg5 = %72) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) {
        %79 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
        %80 = arith.index_cast %79 : i64 to index
        %c1_67 = arith.constant 1 : index
        %idx0_68 = index.constant 0
        %81 = arith.addi %80, %c1_67 : index
        %extracted_69 = tensor.extract %46[%80] : tensor<?xi64>
        %82 = arith.index_cast %extracted_69 : i64 to index
        %extracted_70 = tensor.extract %46[%81] : tensor<?xi64>
        %83 = arith.index_cast %extracted_70 : i64 to index
        %84 = arith.addi %arg0, %c1_67 : index
        %extracted_71 = tensor.extract %50[%arg0] : tensor<?xi64>
        %85 = arith.index_cast %extracted_71 : i64 to index
        %extracted_72 = tensor.extract %50[%84] : tensor<?xi64>
        %86 = arith.index_cast %extracted_72 : i64 to index
        %87:5 = scf.while (%arg6 = %arg4, %arg7 = %arg5, %arg8 = %idx0_68, %arg9 = %82, %arg10 = %85) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>, index, index, index) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>, index, index, index) {
          %88 = arith.cmpi ult, %arg10, %86 : index
          %89 = arith.cmpi ult, %arg9, %83 : index
          %90 = arith.andi %89, %88 : i1
          scf.condition(%90) %arg6, %arg7, %arg8, %arg9, %arg10 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>, index, index, index
        } do {
        ^bb0(%arg6: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg7: !ta.workspace<f64, i64, -9223372036854775808>, %arg8: index, %arg9: index, %arg10: index):
          %88 = "ta.SpTensorGetCrd"(%49, %arg10) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %89 = arith.index_cast %88 : i64 to index
          %90 = "ta.SpTensorGetCrd"(%45, %arg9) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %91 = arith.index_cast %90 : i64 to index
          %92 = arith.minui %91, %89 : index
          %93 = arith.cmpi eq, %92, %91 : index
          %94 = arith.cmpi eq, %92, %89 : index
          %95 = arith.andi %93, %94 : i1
          %96:3 = scf.if %95 -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>, index) {
            %idx1_73 = index.constant 1
            %101 = "ta.TensorFindPos"(%arg7, %92) <{dim = 0 : i32, is_linear = true}> : (!ta.workspace<f64, i64, -9223372036854775808>, index) -> index
            %102 = "ta.TAExtractOp"(%20, %arg3, %arg0, %80) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
            %103 = "ta.TAExtractOp"(%45, %arg9, %80, %92) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
            %104 = arith.mulf %102, %103 : f64
            %105 = "ta.TAExtractOp"(%arg7, %101, %92) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, -9223372036854775808>, index, index) -> f64
            %106 = arith.addf %105, %104 : f64
            %107 = "ta.TAInsertOp"(%arg7, %101, %92, %106) : (!ta.workspace<f64, i64, -9223372036854775808>, index, index, f64) -> !ta.workspace<f64, i64, -9223372036854775808>
            %108 = index.add %arg8, %idx1_73
            scf.yield %arg6, %107, %108 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>, index
          } else {
            scf.yield %arg6, %arg7, %arg8 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>, index
          }
          %97 = index.castu %93 : i1 to index
          %98 = index.add %arg9, %97
          %99 = index.castu %94 : i1 to index
          %100 = index.add %arg10, %99
          scf.yield %96#0, %96#1, %96#2, %98, %100 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>, index, index, index
        }
        scf.yield %87#0, %87#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
      }
      %c0_65 = arith.constant 0 : index
      %77 = "ta.SpTensorGetNNZ"(%76#1) : (!ta.workspace<f64, i64, -9223372036854775808>) -> index
      %c1_66 = arith.constant 1 : index
      %78:2 = scf.for %arg3 = %c0_65 to %77 step %c1_66 iter_args(%arg4 = %76#0, %arg5 = %76#1) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) {
        %79 = "ta.SpTensorGetCrd"(%76#1, %arg3) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, -9223372036854775808>, index) -> i64
        %80 = arith.index_cast %79 : i64 to index
        %81 = "ta.TensorFindPos"(%arg4) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
        %82 = "ta.TAExtractOp"(%arg5, %arg3, %80) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, -9223372036854775808>, index, index) -> f64
        %83 = "ta.TAExtractOp"(%arg4, %81, %arg0, %80) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
        %84 = "ta.TAInsertOp"(%arg4, %arg0, %81, %arg0, %80, %82) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index, f64) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %84, %arg5 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
      }
      scf.yield %78#0, %78#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
    }
    it.yield %71#0, %71#1 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>
  }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, -9223372036854775808>)
  "ta.print"(%70#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
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
  %dim_49 = tensor.dim %36, %c0 : tensor<?xi64>
  %dim_50 = tensor.dim %37, %c0 : tensor<?xi64>
  %idx1_51 = index.constant 1
  %extracted_52 = tensor.extract %from_elements_42[%idx1_51] : tensor<2xindex>
  %idx0_53 = index.constant 0
  %idx1_54 = index.constant 1
  %42 = index.add %extracted, %idx1_54
  %alloc_55 = memref.alloc(%42) : memref<?xi64>
  %c0_i64_56 = arith.constant 0 : i64
  memref.store %c0_i64_56, %alloc_55[%idx0_53] : memref<?xi64>
  %alloc_57 = memref.alloc(%extracted_48) : memref<?xi64>
  %43 = builtin.unrealized_conversion_cast %idx0_53, %42, %idx0_53, %extracted_48, %alloc_55, %alloc_57 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
  %44:6 = "it.itree"(%idx0_53, %42, %idx0_53, %extracted_48, %alloc_55, %alloc_57) ({
    %c0_78 = arith.constant 0 : index
    %c1_79 = arith.constant 1 : index
    %66:6 = scf.for %arg0 = %c0_78 to %extracted step %c1_79 iter_args(%arg1 = %idx0_53, %arg2 = %42, %arg3 = %idx0_53, %arg4 = %extracted_48, %arg5 = %alloc_55, %arg6 = %alloc_57) -> (index, index, index, index, memref<?xi64>, memref<?xi64>) {
      %c1_80 = arith.constant 1 : index
      %68 = arith.addi %arg0, %c1_80 : index
      %extracted_81 = tensor.extract %15[%arg0] : tensor<?xi64>
      %69 = arith.index_cast %extracted_81 : i64 to index
      %extracted_82 = tensor.extract %15[%68] : tensor<?xi64>
      %70 = arith.index_cast %extracted_82 : i64 to index
      %c1_83 = arith.constant 1 : index
      %71:6 = scf.for %arg7 = %69 to %70 step %c1_83 iter_args(%arg8 = %arg1, %arg9 = %arg2, %arg10 = %arg3, %arg11 = %arg4, %arg12 = %arg5, %arg13 = %arg6) -> (index, index, index, index, memref<?xi64>, memref<?xi64>) {
        %extracted_85 = tensor.extract %16[%arg7] : tensor<?xi64>
        %76 = arith.index_cast %extracted_85 : i64 to index
        %c1_86 = arith.constant 1 : index
        %idx0_87 = index.constant 0
        %77 = arith.addi %76, %c1_86 : index
        %extracted_88 = tensor.extract %36[%76] : tensor<?xi64>
        %78 = arith.index_cast %extracted_88 : i64 to index
        %extracted_89 = tensor.extract %36[%77] : tensor<?xi64>
        %79 = arith.index_cast %extracted_89 : i64 to index
        %80 = arith.addi %arg0, %c1_86 : index
        %extracted_90 = tensor.extract %36[%arg0] : tensor<?xi64>
        %81 = arith.index_cast %extracted_90 : i64 to index
        %extracted_91 = tensor.extract %36[%80] : tensor<?xi64>
        %82 = arith.index_cast %extracted_91 : i64 to index
        %83:9 = scf.while (%arg14 = %arg8, %arg15 = %arg9, %arg16 = %arg10, %arg17 = %arg11, %arg18 = %arg12, %arg19 = %arg13, %arg20 = %idx0_87, %arg21 = %78, %arg22 = %81) : (index, index, index, index, memref<?xi64>, memref<?xi64>, index, index, index) -> (index, index, index, index, memref<?xi64>, memref<?xi64>, index, index, index) {
          %85 = arith.cmpi ult, %arg22, %82 : index
          %86 = arith.cmpi ult, %arg21, %79 : index
          %87 = arith.andi %86, %85 : i1
          scf.condition(%87) %arg14, %arg15, %arg16, %arg17, %arg18, %arg19, %arg20, %arg21, %arg22 : index, index, index, index, memref<?xi64>, memref<?xi64>, index, index, index
        } do {
        ^bb0(%arg14: index, %arg15: index, %arg16: index, %arg17: index, %arg18: memref<?xi64>, %arg19: memref<?xi64>, %arg20: index, %arg21: index, %arg22: index):
          %extracted_92 = tensor.extract %37[%arg22] : tensor<?xi64>
          %85 = arith.index_cast %extracted_92 : i64 to index
          %extracted_93 = tensor.extract %37[%arg21] : tensor<?xi64>
          %86 = arith.index_cast %extracted_93 : i64 to index
          %87 = arith.minui %86, %85 : index
          %88 = arith.cmpi eq, %87, %86 : index
          %89 = arith.cmpi eq, %87, %85 : index
          %90 = arith.andi %88, %89 : i1
          %91:7 = scf.if %90 -> (index, index, index, index, memref<?xi64>, memref<?xi64>, index) {
            %idx1_94 = index.constant 1
            %idx1_95 = index.constant 1
            %97 = index.add %arg14, %idx1_95
            %98 = arith.index_cast %97 : index to i64
            %99 = memref.load %arg19[%87] : memref<?xi64>
            %100 = arith.cmpi eq, %98, %99 : i64
            %101 = scf.if %100 -> (index) {
              scf.yield %arg16 : index
            } else {
              memref.store %98, %arg19[%87] : memref<?xi64>
              %104 = index.add %arg16, %idx1_95
              scf.yield %104 : index
            }
            %102 = builtin.unrealized_conversion_cast %arg14, %arg15, %101, %arg17, %arg18, %arg19 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
            %103 = index.add %arg20, %idx1_94
            scf.yield %arg14, %arg15, %101, %arg17, %arg18, %arg19, %103 : index, index, index, index, memref<?xi64>, memref<?xi64>, index
          } else {
            scf.yield %arg14, %arg15, %arg16, %arg17, %arg18, %arg19, %arg20 : index, index, index, index, memref<?xi64>, memref<?xi64>, index
          }
          %92 = builtin.unrealized_conversion_cast %91#0, %91#1, %91#2, %91#3, %91#4, %91#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
          %93 = index.castu %88 : i1 to index
          %94 = index.add %arg21, %93
          %95 = index.castu %89 : i1 to index
          %96 = index.add %arg22, %95
          scf.yield %91#0, %91#1, %91#2, %91#3, %91#4, %91#5, %91#6, %94, %96 : index, index, index, index, memref<?xi64>, memref<?xi64>, index, index, index
        }
        %84 = builtin.unrealized_conversion_cast %83#0, %83#1, %83#2, %83#3, %83#4, %83#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
        scf.yield %83#0, %83#1, %83#2, %83#3, %83#4, %83#5 : index, index, index, index, memref<?xi64>, memref<?xi64>
      }
      %72 = builtin.unrealized_conversion_cast %71#0, %71#1, %71#2, %71#3, %71#4, %71#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
      %idx1_84 = index.constant 1
      %73 = index.add %71#0, %idx1_84
      %74 = arith.index_cast %71#2 : index to i64
      memref.store %74, %71#4[%73] : memref<?xi64>
      %75 = builtin.unrealized_conversion_cast %73, %71#1, %71#2, %71#3, %71#4, %71#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
      scf.yield %73, %71#1, %71#2, %71#3, %71#4, %71#5 : index, index, index, index, memref<?xi64>, memref<?xi64>
    }
    %67 = builtin.unrealized_conversion_cast %66#0, %66#1, %66#2, %66#3, %66#4, %66#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
    it.yield %66#0, %66#1, %66#2, %66#3, %66#4, %66#5 : index, index, index, index, memref<?xi64>, memref<?xi64>
  }) : (index, index, index, index, memref<?xi64>, memref<?xi64>) -> (index, index, index, index, memref<?xi64>, memref<?xi64>)
  %45 = builtin.unrealized_conversion_cast %44#0, %44#1, %44#2, %44#3, %44#4, %44#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
  %idx0_58 = index.constant 0
  %idx1_59 = index.constant 1
  %46 = arith.index_cast %extracted : index to i64
  %idx1_60 = index.constant 1
  %alloc_61 = memref.alloc(%idx1_60) : memref<?xi64>
  memref.store %46, %alloc_61[%idx0_58] : memref<?xi64>
  %alloc_62 = memref.alloc() : memref<0xi64>
  %alloc_63 = memref.alloc() : memref<0xi64>
  %alloc_64 = memref.alloc() : memref<0xi64>
  %47 = bufferization.to_tensor %alloc_61 restrict writable : memref<?xi64>
  %48 = bufferization.to_tensor %alloc_62 restrict writable : memref<0xi64>
  %49 = bufferization.to_tensor %alloc_63 restrict writable : memref<0xi64>
  %50 = bufferization.to_tensor %alloc_64 restrict writable : memref<0xi64>
  %51 = index.mul %idx1_59, %extracted
  %alloc_65 = memref.alloc(%44#2) : memref<?xi64>
  %alloc_66 = memref.alloc() : memref<0xi64>
  %alloc_67 = memref.alloc() : memref<0xi64>
  %52 = bufferization.to_tensor %44#4 restrict writable : memref<?xi64>
  %53 = bufferization.to_tensor %alloc_65 restrict writable : memref<?xi64>
  %54 = bufferization.to_tensor %alloc_66 restrict writable : memref<0xi64>
  %55 = bufferization.to_tensor %alloc_67 restrict writable : memref<0xi64>
  %alloc_68 = memref.alloc(%44#2) : memref<?xf64>
  %cst_69 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_58 to %44#2 step %idx1_59 {
    memref.store %cst_69, %alloc_68[%arg0] : memref<?xf64>
  }
  %56 = bufferization.to_tensor %alloc_68 restrict writable : memref<?xf64>
  %from_elements_70 = tensor.from_elements %extracted, %44#3 : tensor<2xindex>
  %idx0_71 = index.constant 0
  %idx0_72 = index.constant 0
  %57 = builtin.unrealized_conversion_cast %from_elements_70, %idx0_71, %47, %idx0_72, %52, %53, %56 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx1_73 = index.constant 1
  %extracted_74 = tensor.extract %from_elements_70[%idx1_73] : tensor<2xindex>
  %58 = bufferization.alloc_tensor(%extracted_74) : tensor<?xf64>
  %c1_i32_75 = arith.constant 1 : i32
  %59 = bufferization.alloc_tensor(%extracted_74) : tensor<?xi32>
  %idx0_76 = index.constant 0
  %60 = bufferization.alloc_tensor(%extracted_74) : tensor<?xi64>
  %61 = builtin.unrealized_conversion_cast %58, %c1_i32_75, %59, %idx0_76, %60 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
  %62:12 = "it.itree"(%from_elements_70, %idx0_71, %47, %idx0_72, %52, %53, %56, %58, %c1_i32_75, %59, %idx0_76, %60) ({
    %c0_78 = arith.constant 0 : index
    %c1_79 = arith.constant 1 : index
    %66:12 = scf.for %arg0 = %c0_78 to %extracted step %c1_79 iter_args(%arg1 = %from_elements_70, %arg2 = %idx0_71, %arg3 = %47, %arg4 = %idx0_72, %arg5 = %52, %arg6 = %53, %arg7 = %56, %arg8 = %58, %arg9 = %c1_i32_75, %arg10 = %59, %arg11 = %idx0_76, %arg12 = %60) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
      %c1_i32_80 = arith.constant 1 : i32
      %69 = arith.addi %arg9, %c1_i32_80 : i32
      %idx0_81 = index.constant 0
      %70 = builtin.unrealized_conversion_cast %arg8, %69, %arg10, %idx0_81, %arg12 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
      %c1_82 = arith.constant 1 : index
      %71 = arith.addi %arg0, %c1_82 : index
      %extracted_83 = tensor.extract %15[%arg0] : tensor<?xi64>
      %72 = arith.index_cast %extracted_83 : i64 to index
      %extracted_84 = tensor.extract %15[%71] : tensor<?xi64>
      %73 = arith.index_cast %extracted_84 : i64 to index
      %c1_85 = arith.constant 1 : index
      %74:12 = scf.for %arg13 = %72 to %73 step %c1_85 iter_args(%arg14 = %arg1, %arg15 = %arg2, %arg16 = %arg3, %arg17 = %arg4, %arg18 = %arg5, %arg19 = %arg6, %arg20 = %arg7, %arg21 = %arg8, %arg22 = %69, %arg23 = %arg10, %arg24 = %idx0_81, %arg25 = %arg12) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_88 = tensor.extract %16[%arg13] : tensor<?xi64>
        %80 = arith.index_cast %extracted_88 : i64 to index
        %c1_89 = arith.constant 1 : index
        %idx0_90 = index.constant 0
        %81 = arith.addi %80, %c1_89 : index
        %extracted_91 = tensor.extract %36[%80] : tensor<?xi64>
        %82 = arith.index_cast %extracted_91 : i64 to index
        %extracted_92 = tensor.extract %36[%81] : tensor<?xi64>
        %83 = arith.index_cast %extracted_92 : i64 to index
        %84 = arith.addi %arg0, %c1_89 : index
        %extracted_93 = tensor.extract %36[%arg0] : tensor<?xi64>
        %85 = arith.index_cast %extracted_93 : i64 to index
        %extracted_94 = tensor.extract %36[%84] : tensor<?xi64>
        %86 = arith.index_cast %extracted_94 : i64 to index
        %87:15 = scf.while (%arg26 = %arg14, %arg27 = %arg15, %arg28 = %arg16, %arg29 = %arg17, %arg30 = %arg18, %arg31 = %arg19, %arg32 = %arg20, %arg33 = %arg21, %arg34 = %arg22, %arg35 = %arg23, %arg36 = %arg24, %arg37 = %arg25, %arg38 = %idx0_90, %arg39 = %82, %arg40 = %85) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>, index, index, index) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>, index, index, index) {
          %90 = arith.cmpi ult, %arg40, %86 : index
          %91 = arith.cmpi ult, %arg39, %83 : index
          %92 = arith.andi %91, %90 : i1
          scf.condition(%92) %arg26, %arg27, %arg28, %arg29, %arg30, %arg31, %arg32, %arg33, %arg34, %arg35, %arg36, %arg37, %arg38, %arg39, %arg40 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>, index, index, index
        } do {
        ^bb0(%arg26: tensor<2xindex>, %arg27: index, %arg28: tensor<?xi64>, %arg29: index, %arg30: tensor<?xi64>, %arg31: tensor<?xi64>, %arg32: tensor<?xf64>, %arg33: tensor<?xf64>, %arg34: i32, %arg35: tensor<?xi32>, %arg36: index, %arg37: tensor<?xi64>, %arg38: index, %arg39: index, %arg40: index):
          %extracted_95 = tensor.extract %37[%arg40] : tensor<?xi64>
          %90 = arith.index_cast %extracted_95 : i64 to index
          %extracted_96 = tensor.extract %37[%arg39] : tensor<?xi64>
          %91 = arith.index_cast %extracted_96 : i64 to index
          %92 = arith.minui %91, %90 : index
          %93 = arith.cmpi eq, %92, %91 : index
          %94 = arith.cmpi eq, %92, %90 : index
          %95 = arith.andi %93, %94 : i1
          %96:13 = scf.if %95 -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>, index) {
            %idx1_97 = index.constant 1
            %extracted_98 = tensor.extract %19[%arg13] : tensor<?xf64>
            %extracted_99 = tensor.extract %40[%arg39] : tensor<?xf64>
            %103 = arith.mulf %extracted_98, %extracted_99 : f64
            %extracted_100 = tensor.extract %arg35[%92] : tensor<?xi32>
            %104 = arith.cmpi eq, %extracted_100, %arg34 : i32
            %105 = scf.if %104 -> (f64) {
              %extracted_103 = tensor.extract %arg33[%92] : tensor<?xf64>
              scf.yield %extracted_103 : f64
            } else {
              %cst_103 = arith.constant 0.000000e+00 : f64
              scf.yield %cst_103 : f64
            }
            %106 = arith.addf %105, %103 : f64
            %extracted_101 = tensor.extract %arg35[%92] : tensor<?xi32>
            %107 = arith.cmpi ne, %extracted_101, %arg34 : i32
            %108:3 = scf.if %107 -> (tensor<?xi32>, index, tensor<?xi64>) {
              %inserted_103 = tensor.insert %arg34 into %arg35[%92] : tensor<?xi32>
              %111 = arith.index_cast %92 : index to i64
              %inserted_104 = tensor.insert %111 into %arg37[%arg36] : tensor<?xi64>
              %idx1_105 = index.constant 1
              %112 = index.add %arg36, %idx1_105
              scf.yield %inserted_103, %112, %inserted_104 : tensor<?xi32>, index, tensor<?xi64>
            } else {
              scf.yield %arg35, %arg36, %arg37 : tensor<?xi32>, index, tensor<?xi64>
            }
            %inserted_102 = tensor.insert %106 into %arg33[%92] : tensor<?xf64>
            %109 = builtin.unrealized_conversion_cast %inserted_102, %arg34, %108#0, %108#1, %108#2 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
            %110 = index.add %arg38, %idx1_97
            scf.yield %arg26, %arg27, %arg28, %arg29, %arg30, %arg31, %arg32, %inserted_102, %arg34, %108#0, %108#1, %108#2, %110 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>, index
          } else {
            scf.yield %arg26, %arg27, %arg28, %arg29, %arg30, %arg31, %arg32, %arg33, %arg34, %arg35, %arg36, %arg37, %arg38 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>, index
          }
          %97 = builtin.unrealized_conversion_cast %96#0, %96#1, %96#2, %96#3, %96#4, %96#5, %96#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
          %98 = builtin.unrealized_conversion_cast %96#7, %96#8, %96#9, %96#10, %96#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
          %99 = index.castu %93 : i1 to index
          %100 = index.add %arg39, %99
          %101 = index.castu %94 : i1 to index
          %102 = index.add %arg40, %101
          scf.yield %96#0, %96#1, %96#2, %96#3, %96#4, %96#5, %96#6, %96#7, %96#8, %96#9, %96#10, %96#11, %96#12, %100, %102 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>, index, index, index
        }
        %88 = builtin.unrealized_conversion_cast %87#0, %87#1, %87#2, %87#3, %87#4, %87#5, %87#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %89 = builtin.unrealized_conversion_cast %87#7, %87#8, %87#9, %87#10, %87#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
        scf.yield %87#0, %87#1, %87#2, %87#3, %87#4, %87#5, %87#6, %87#7, %87#8, %87#9, %87#10, %87#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
      }
      %75 = builtin.unrealized_conversion_cast %74#0, %74#1, %74#2, %74#3, %74#4, %74#5, %74#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %76 = builtin.unrealized_conversion_cast %74#7, %74#8, %74#9, %74#10, %74#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
      %c0_86 = arith.constant 0 : index
      %c1_87 = arith.constant 1 : index
      %77:12 = scf.for %arg13 = %c0_86 to %74#10 step %c1_87 iter_args(%arg14 = %74#0, %arg15 = %74#1, %arg16 = %74#2, %arg17 = %74#3, %arg18 = %74#4, %arg19 = %74#5, %arg20 = %74#6, %arg21 = %74#7, %arg22 = %74#8, %arg23 = %74#9, %arg24 = %74#10, %arg25 = %74#11) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
        %extracted_88 = tensor.extract %74#11[%arg13] : tensor<?xi64>
        %80 = arith.index_cast %extracted_88 : i64 to index
        %extracted_89 = tensor.extract %arg23[%80] : tensor<?xi32>
        %81 = arith.cmpi eq, %extracted_89, %arg22 : i32
        %82 = scf.if %81 -> (f64) {
          %extracted_94 = tensor.extract %arg21[%80] : tensor<?xf64>
          scf.yield %extracted_94 : f64
        } else {
          %cst_94 = arith.constant 0.000000e+00 : f64
          scf.yield %cst_94 : f64
        }
        %extracted_90 = tensor.extract %arg20[%arg17] : tensor<?xf64>
        %83 = arith.index_cast %80 : index to i64
        %inserted_91 = tensor.insert %83 into %arg19[%arg17] : tensor<?xi64>
        %idx1_92 = index.constant 1
        %84 = index.add %arg17, %idx1_92
        %inserted_93 = tensor.insert %82 into %arg20[%arg17] : tensor<?xf64>
        %85 = builtin.unrealized_conversion_cast %arg14, %arg15, %arg16, %84, %arg18, %inserted_91, %inserted_93 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        scf.yield %arg14, %arg15, %arg16, %84, %arg18, %inserted_91, %inserted_93, %arg21, %arg22, %arg23, %arg24, %arg25 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
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
  %idx0_77 = index.constant 0
  %inserted = tensor.insert %idx-1 into %65[%idx0_77] : tensor<1xindex>
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
  %dim_47 = tensor.dim %36, %c0 : tensor<?xi64>
  %dim_48 = tensor.dim %37, %c0 : tensor<?xi64>
  %idx1_49 = index.constant 1
  %idx0_50 = index.constant 0
  %idx1_51 = index.constant 1
  %42 = index.add %9, %idx1_51
  %alloc_52 = memref.alloc(%42) : memref<?xi64>
  %c0_i64_53 = arith.constant 0 : i64
  memref.store %c0_i64_53, %alloc_52[%idx0_50] : memref<?xi64>
  %alloc_54 = memref.alloc(%31) : memref<?xi64>
  %43 = builtin.unrealized_conversion_cast %idx0_50, %42, %idx0_50, %31, %alloc_52, %alloc_54 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
  %c0_55 = arith.constant 0 : index
  %c1_56 = arith.constant 1 : index
  %44:6 = scf.for %arg0 = %c0_55 to %9 step %c1_56 iter_args(%arg1 = %idx0_50, %arg2 = %42, %arg3 = %idx0_50, %arg4 = %31, %arg5 = %alloc_52, %arg6 = %alloc_54) -> (index, index, index, index, memref<?xi64>, memref<?xi64>) {
    %c1_78 = arith.constant 1 : index
    %69 = arith.addi %arg0, %c1_78 : index
    %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
    %70 = arith.index_cast %extracted : i64 to index
    %extracted_79 = tensor.extract %15[%69] : tensor<?xi64>
    %71 = arith.index_cast %extracted_79 : i64 to index
    %c1_80 = arith.constant 1 : index
    %72:6 = scf.for %arg7 = %70 to %71 step %c1_80 iter_args(%arg8 = %arg1, %arg9 = %arg2, %arg10 = %arg3, %arg11 = %arg4, %arg12 = %arg5, %arg13 = %arg6) -> (index, index, index, index, memref<?xi64>, memref<?xi64>) {
      %extracted_82 = tensor.extract %16[%arg7] : tensor<?xi64>
      %77 = arith.index_cast %extracted_82 : i64 to index
      %c1_83 = arith.constant 1 : index
      %idx0_84 = index.constant 0
      %78 = arith.addi %77, %c1_83 : index
      %extracted_85 = tensor.extract %36[%77] : tensor<?xi64>
      %79 = arith.index_cast %extracted_85 : i64 to index
      %extracted_86 = tensor.extract %36[%78] : tensor<?xi64>
      %80 = arith.index_cast %extracted_86 : i64 to index
      %81 = arith.addi %arg0, %c1_83 : index
      %extracted_87 = tensor.extract %36[%arg0] : tensor<?xi64>
      %82 = arith.index_cast %extracted_87 : i64 to index
      %extracted_88 = tensor.extract %36[%81] : tensor<?xi64>
      %83 = arith.index_cast %extracted_88 : i64 to index
      %84:9 = scf.while (%arg14 = %arg8, %arg15 = %arg9, %arg16 = %arg10, %arg17 = %arg11, %arg18 = %arg12, %arg19 = %arg13, %arg20 = %idx0_84, %arg21 = %79, %arg22 = %82) : (index, index, index, index, memref<?xi64>, memref<?xi64>, index, index, index) -> (index, index, index, index, memref<?xi64>, memref<?xi64>, index, index, index) {
        %86 = arith.cmpi ult, %arg22, %83 : index
        %87 = arith.cmpi ult, %arg21, %80 : index
        %88 = arith.andi %87, %86 : i1
        scf.condition(%88) %arg14, %arg15, %arg16, %arg17, %arg18, %arg19, %arg20, %arg21, %arg22 : index, index, index, index, memref<?xi64>, memref<?xi64>, index, index, index
      } do {
      ^bb0(%arg14: index, %arg15: index, %arg16: index, %arg17: index, %arg18: memref<?xi64>, %arg19: memref<?xi64>, %arg20: index, %arg21: index, %arg22: index):
        %extracted_89 = tensor.extract %37[%arg22] : tensor<?xi64>
        %86 = arith.index_cast %extracted_89 : i64 to index
        %extracted_90 = tensor.extract %37[%arg21] : tensor<?xi64>
        %87 = arith.index_cast %extracted_90 : i64 to index
        %88 = arith.minui %87, %86 : index
        %89 = arith.cmpi eq, %88, %87 : index
        %90 = arith.cmpi eq, %88, %86 : index
        %91 = arith.andi %89, %90 : i1
        %92:7 = scf.if %91 -> (index, index, index, index, memref<?xi64>, memref<?xi64>, index) {
          %idx1_91 = index.constant 1
          %idx1_92 = index.constant 1
          %98 = index.add %arg14, %idx1_92
          %99 = arith.index_cast %98 : index to i64
          %100 = memref.load %arg19[%88] : memref<?xi64>
          %101 = arith.cmpi eq, %99, %100 : i64
          %102 = scf.if %101 -> (index) {
            scf.yield %arg16 : index
          } else {
            memref.store %99, %arg19[%88] : memref<?xi64>
            %105 = index.add %arg16, %idx1_92
            scf.yield %105 : index
          }
          %103 = builtin.unrealized_conversion_cast %arg14, %arg15, %102, %arg17, %arg18, %arg19 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
          %104 = index.add %arg20, %idx1_91
          scf.yield %arg14, %arg15, %102, %arg17, %arg18, %arg19, %104 : index, index, index, index, memref<?xi64>, memref<?xi64>, index
        } else {
          scf.yield %arg14, %arg15, %arg16, %arg17, %arg18, %arg19, %arg20 : index, index, index, index, memref<?xi64>, memref<?xi64>, index
        }
        %93 = builtin.unrealized_conversion_cast %92#0, %92#1, %92#2, %92#3, %92#4, %92#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
        %94 = index.castu %89 : i1 to index
        %95 = index.add %arg21, %94
        %96 = index.castu %90 : i1 to index
        %97 = index.add %arg22, %96
        scf.yield %92#0, %92#1, %92#2, %92#3, %92#4, %92#5, %92#6, %95, %97 : index, index, index, index, memref<?xi64>, memref<?xi64>, index, index, index
      }
      %85 = builtin.unrealized_conversion_cast %84#0, %84#1, %84#2, %84#3, %84#4, %84#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
      scf.yield %84#0, %84#1, %84#2, %84#3, %84#4, %84#5 : index, index, index, index, memref<?xi64>, memref<?xi64>
    }
    %73 = builtin.unrealized_conversion_cast %72#0, %72#1, %72#2, %72#3, %72#4, %72#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
    %idx1_81 = index.constant 1
    %74 = index.add %72#0, %idx1_81
    %75 = arith.index_cast %72#2 : index to i64
    memref.store %75, %72#4[%74] : memref<?xi64>
    %76 = builtin.unrealized_conversion_cast %74, %72#1, %72#2, %72#3, %72#4, %72#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
    scf.yield %74, %72#1, %72#2, %72#3, %72#4, %72#5 : index, index, index, index, memref<?xi64>, memref<?xi64>
  }
  %45 = builtin.unrealized_conversion_cast %44#0, %44#1, %44#2, %44#3, %44#4, %44#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
  %46 = builtin.unrealized_conversion_cast %44#0, %44#1, %44#2, %44#3, %44#4, %44#5 : index, index, index, index, memref<?xi64>, memref<?xi64> to !it.symbolic_domain<64>
  %idx0_57 = index.constant 0
  %idx1_58 = index.constant 1
  %47 = arith.index_cast %9 : index to i64
  %idx1_59 = index.constant 1
  %alloc_60 = memref.alloc(%idx1_59) : memref<?xi64>
  memref.store %47, %alloc_60[%idx0_57] : memref<?xi64>
  %alloc_61 = memref.alloc() : memref<0xi64>
  %alloc_62 = memref.alloc() : memref<0xi64>
  %alloc_63 = memref.alloc() : memref<0xi64>
  %48 = bufferization.to_tensor %alloc_60 restrict writable : memref<?xi64>
  %49 = bufferization.to_tensor %alloc_61 restrict writable : memref<0xi64>
  %50 = bufferization.to_tensor %alloc_62 restrict writable : memref<0xi64>
  %51 = bufferization.to_tensor %alloc_63 restrict writable : memref<0xi64>
  %52 = index.mul %idx1_58, %9
  %alloc_64 = memref.alloc(%44#2) : memref<?xi64>
  %alloc_65 = memref.alloc() : memref<0xi64>
  %alloc_66 = memref.alloc() : memref<0xi64>
  %53 = bufferization.to_tensor %44#4 restrict writable : memref<?xi64>
  %54 = bufferization.to_tensor %alloc_64 restrict writable : memref<?xi64>
  %55 = bufferization.to_tensor %alloc_65 restrict writable : memref<0xi64>
  %56 = bufferization.to_tensor %alloc_66 restrict writable : memref<0xi64>
  %alloc_67 = memref.alloc(%44#2) : memref<?xf64>
  %cst_68 = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %idx0_57 to %44#2 step %idx1_58 {
    memref.store %cst_68, %alloc_67[%arg0] : memref<?xf64>
  }
  %57 = bufferization.to_tensor %alloc_67 restrict writable : memref<?xf64>
  %from_elements_69 = tensor.from_elements %9, %44#3 : tensor<2xindex>
  %idx0_70 = index.constant 0
  %idx0_71 = index.constant 0
  %58 = builtin.unrealized_conversion_cast %from_elements_69, %idx0_70, %48, %idx0_71, %53, %54, %57 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx1_72 = index.constant 1
  %59 = bufferization.alloc_tensor(%44#3) : tensor<?xf64>
  %c1_i32_73 = arith.constant 1 : i32
  %60 = bufferization.alloc_tensor(%44#3) : tensor<?xi32>
  %idx0_74 = index.constant 0
  %61 = bufferization.alloc_tensor(%44#3) : tensor<?xi64>
  %62 = builtin.unrealized_conversion_cast %59, %c1_i32_73, %60, %idx0_74, %61 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
  %c0_75 = arith.constant 0 : index
  %c1_76 = arith.constant 1 : index
  %63:12 = scf.for %arg0 = %c0_75 to %9 step %c1_76 iter_args(%arg1 = %from_elements_69, %arg2 = %idx0_70, %arg3 = %48, %arg4 = %idx0_71, %arg5 = %53, %arg6 = %54, %arg7 = %57, %arg8 = %59, %arg9 = %c1_i32_73, %arg10 = %60, %arg11 = %idx0_74, %arg12 = %61) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
    %c1_i32_78 = arith.constant 1 : i32
    %69 = arith.addi %arg9, %c1_i32_78 : i32
    %idx0_79 = index.constant 0
    %70 = builtin.unrealized_conversion_cast %arg8, %69, %arg10, %idx0_79, %arg12 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
    %c1_80 = arith.constant 1 : index
    %71 = arith.addi %arg0, %c1_80 : index
    %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
    %72 = arith.index_cast %extracted : i64 to index
    %extracted_81 = tensor.extract %15[%71] : tensor<?xi64>
    %73 = arith.index_cast %extracted_81 : i64 to index
    %c1_82 = arith.constant 1 : index
    %74:12 = scf.for %arg13 = %72 to %73 step %c1_82 iter_args(%arg14 = %arg1, %arg15 = %arg2, %arg16 = %arg3, %arg17 = %arg4, %arg18 = %arg5, %arg19 = %arg6, %arg20 = %arg7, %arg21 = %arg8, %arg22 = %69, %arg23 = %arg10, %arg24 = %idx0_79, %arg25 = %arg12) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_85 = tensor.extract %16[%arg13] : tensor<?xi64>
      %80 = arith.index_cast %extracted_85 : i64 to index
      %c1_86 = arith.constant 1 : index
      %idx0_87 = index.constant 0
      %81 = arith.addi %80, %c1_86 : index
      %extracted_88 = tensor.extract %36[%80] : tensor<?xi64>
      %82 = arith.index_cast %extracted_88 : i64 to index
      %extracted_89 = tensor.extract %36[%81] : tensor<?xi64>
      %83 = arith.index_cast %extracted_89 : i64 to index
      %84 = arith.addi %arg0, %c1_86 : index
      %extracted_90 = tensor.extract %36[%arg0] : tensor<?xi64>
      %85 = arith.index_cast %extracted_90 : i64 to index
      %extracted_91 = tensor.extract %36[%84] : tensor<?xi64>
      %86 = arith.index_cast %extracted_91 : i64 to index
      %87:15 = scf.while (%arg26 = %arg14, %arg27 = %arg15, %arg28 = %arg16, %arg29 = %arg17, %arg30 = %arg18, %arg31 = %arg19, %arg32 = %arg20, %arg33 = %arg21, %arg34 = %arg22, %arg35 = %arg23, %arg36 = %arg24, %arg37 = %arg25, %arg38 = %idx0_87, %arg39 = %82, %arg40 = %85) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>, index, index, index) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>, index, index, index) {
        %90 = arith.cmpi ult, %arg40, %86 : index
        %91 = arith.cmpi ult, %arg39, %83 : index
        %92 = arith.andi %91, %90 : i1
        scf.condition(%92) %arg26, %arg27, %arg28, %arg29, %arg30, %arg31, %arg32, %arg33, %arg34, %arg35, %arg36, %arg37, %arg38, %arg39, %arg40 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>, index, index, index
      } do {
      ^bb0(%arg26: tensor<2xindex>, %arg27: index, %arg28: tensor<?xi64>, %arg29: index, %arg30: tensor<?xi64>, %arg31: tensor<?xi64>, %arg32: tensor<?xf64>, %arg33: tensor<?xf64>, %arg34: i32, %arg35: tensor<?xi32>, %arg36: index, %arg37: tensor<?xi64>, %arg38: index, %arg39: index, %arg40: index):
        %extracted_92 = tensor.extract %37[%arg40] : tensor<?xi64>
        %90 = arith.index_cast %extracted_92 : i64 to index
        %extracted_93 = tensor.extract %37[%arg39] : tensor<?xi64>
        %91 = arith.index_cast %extracted_93 : i64 to index
        %92 = arith.minui %91, %90 : index
        %93 = arith.cmpi eq, %92, %91 : index
        %94 = arith.cmpi eq, %92, %90 : index
        %95 = arith.andi %93, %94 : i1
        %96:13 = scf.if %95 -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>, index) {
          %idx1_94 = index.constant 1
          %extracted_95 = tensor.extract %19[%arg13] : tensor<?xf64>
          %extracted_96 = tensor.extract %40[%arg39] : tensor<?xf64>
          %103 = arith.mulf %extracted_95, %extracted_96 : f64
          %extracted_97 = tensor.extract %arg35[%92] : tensor<?xi32>
          %104 = arith.cmpi eq, %extracted_97, %arg34 : i32
          %105 = scf.if %104 -> (f64) {
            %extracted_100 = tensor.extract %arg33[%92] : tensor<?xf64>
            scf.yield %extracted_100 : f64
          } else {
            %cst_100 = arith.constant 0.000000e+00 : f64
            scf.yield %cst_100 : f64
          }
          %106 = arith.addf %105, %103 : f64
          %extracted_98 = tensor.extract %arg35[%92] : tensor<?xi32>
          %107 = arith.cmpi ne, %extracted_98, %arg34 : i32
          %108:3 = scf.if %107 -> (tensor<?xi32>, index, tensor<?xi64>) {
            %inserted_100 = tensor.insert %arg34 into %arg35[%92] : tensor<?xi32>
            %111 = arith.index_cast %92 : index to i64
            %inserted_101 = tensor.insert %111 into %arg37[%arg36] : tensor<?xi64>
            %idx1_102 = index.constant 1
            %112 = index.add %arg36, %idx1_102
            scf.yield %inserted_100, %112, %inserted_101 : tensor<?xi32>, index, tensor<?xi64>
          } else {
            scf.yield %arg35, %arg36, %arg37 : tensor<?xi32>, index, tensor<?xi64>
          }
          %inserted_99 = tensor.insert %106 into %arg33[%92] : tensor<?xf64>
          %109 = builtin.unrealized_conversion_cast %inserted_99, %arg34, %108#0, %108#1, %108#2 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
          %110 = index.add %arg38, %idx1_94
          scf.yield %arg26, %arg27, %arg28, %arg29, %arg30, %arg31, %arg32, %inserted_99, %arg34, %108#0, %108#1, %108#2, %110 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>, index
        } else {
          scf.yield %arg26, %arg27, %arg28, %arg29, %arg30, %arg31, %arg32, %arg33, %arg34, %arg35, %arg36, %arg37, %arg38 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>, index
        }
        %97 = builtin.unrealized_conversion_cast %96#0, %96#1, %96#2, %96#3, %96#4, %96#5, %96#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %98 = builtin.unrealized_conversion_cast %96#7, %96#8, %96#9, %96#10, %96#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
        %99 = index.castu %93 : i1 to index
        %100 = index.add %arg39, %99
        %101 = index.castu %94 : i1 to index
        %102 = index.add %arg40, %101
        scf.yield %96#0, %96#1, %96#2, %96#3, %96#4, %96#5, %96#6, %96#7, %96#8, %96#9, %96#10, %96#11, %96#12, %100, %102 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>, index, index, index
      }
      %88 = builtin.unrealized_conversion_cast %87#0, %87#1, %87#2, %87#3, %87#4, %87#5, %87#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %89 = builtin.unrealized_conversion_cast %87#7, %87#8, %87#9, %87#10, %87#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
      scf.yield %87#0, %87#1, %87#2, %87#3, %87#4, %87#5, %87#6, %87#7, %87#8, %87#9, %87#10, %87#11 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
    }
    %75 = builtin.unrealized_conversion_cast %74#0, %74#1, %74#2, %74#3, %74#4, %74#5, %74#6 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %76 = builtin.unrealized_conversion_cast %74#7, %74#8, %74#9, %74#10, %74#11 : tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64> to !ta.workspace<f64, i64, -9223372036854775808>
    %c0_83 = arith.constant 0 : index
    %c1_84 = arith.constant 1 : index
    %77:12 = scf.for %arg13 = %c0_83 to %74#10 step %c1_84 iter_args(%arg14 = %74#0, %arg15 = %74#1, %arg16 = %74#2, %arg17 = %74#3, %arg18 = %74#4, %arg19 = %74#5, %arg20 = %74#6, %arg21 = %74#7, %arg22 = %74#8, %arg23 = %74#9, %arg24 = %74#10, %arg25 = %74#11) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) {
      %extracted_85 = tensor.extract %74#11[%arg13] : tensor<?xi64>
      %80 = arith.index_cast %extracted_85 : i64 to index
      %extracted_86 = tensor.extract %arg23[%80] : tensor<?xi32>
      %81 = arith.cmpi eq, %extracted_86, %arg22 : i32
      %82 = scf.if %81 -> (f64) {
        %extracted_91 = tensor.extract %arg21[%80] : tensor<?xf64>
        scf.yield %extracted_91 : f64
      } else {
        %cst_91 = arith.constant 0.000000e+00 : f64
        scf.yield %cst_91 : f64
      }
      %extracted_87 = tensor.extract %arg20[%arg17] : tensor<?xf64>
      %83 = arith.index_cast %80 : index to i64
      %inserted_88 = tensor.insert %83 into %arg19[%arg17] : tensor<?xi64>
      %idx1_89 = index.constant 1
      %84 = index.add %arg17, %idx1_89
      %inserted_90 = tensor.insert %82 into %arg20[%arg17] : tensor<?xf64>
      %85 = builtin.unrealized_conversion_cast %arg14, %arg15, %arg16, %84, %arg18, %inserted_88, %inserted_90 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      scf.yield %arg14, %arg15, %arg16, %84, %arg18, %inserted_88, %inserted_90, %arg21, %arg22, %arg23, %arg24, %arg25 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>
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
  %idx0_77 = index.constant 0
  %inserted = tensor.insert %idx-1 into %68[%idx0_77] : tensor<1xindex>
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
      %48 = arith.addi %arg0, %c1 : index
      %extracted_48 = tensor.extract %23[%arg0] : tensor<?xi64>
      %49 = arith.index_cast %extracted_48 : i64 to index
      %extracted_49 = tensor.extract %23[%48] : tensor<?xi64>
      %50 = arith.index_cast %extracted_49 : i64 to index
      %51:4 = scf.while (%arg5 = %arg4, %arg6 = %idx0, %arg7 = %46, %arg8 = %49) : (index, index, index, index) -> (index, index, index, index) {
        %52 = arith.cmpi ult, %arg8, %50 : index
        %53 = arith.cmpi ult, %arg7, %47 : index
        %54 = arith.andi %53, %52 : i1
        scf.condition(%54) %arg5, %arg6, %arg7, %arg8 : index, index, index, index
      } do {
      ^bb0(%arg5: index, %arg6: index, %arg7: index, %arg8: index):
        %extracted_50 = tensor.extract %24[%arg8] : tensor<?xi64>
        %52 = arith.index_cast %extracted_50 : i64 to index
        %extracted_51 = tensor.extract %24[%arg7] : tensor<?xi64>
        %53 = arith.index_cast %extracted_51 : i64 to index
        %54 = arith.minui %53, %52 : index
        %55 = arith.cmpi eq, %54, %53 : index
        %56 = arith.cmpi eq, %54, %52 : index
        %57 = arith.andi %55, %56 : i1
        %58:2 = scf.if %57 -> (index, index) {
          %63 = index.add %arg1, %idx1
          %64 = arith.index_cast %63 : index to i64
          %65 = memref.load %alloc_39[%54] : memref<?xi64>
          %66 = arith.cmpi eq, %64, %65 : i64
          %67 = scf.if %66 -> (index) {
            scf.yield %arg5 : index
          } else {
            memref.store %64, %alloc_39[%54] : memref<?xi64>
            %69 = index.add %arg5, %idx1
            scf.yield %69 : index
          }
          %68 = index.add %arg6, %idx1
          scf.yield %67, %68 : index, index
        } else {
          scf.yield %arg5, %arg6 : index, index
        }
        %59 = index.castu %55 : i1 to index
        %60 = index.add %arg7, %59
        %61 = index.castu %56 : i1 to index
        %62 = index.add %arg8, %61
        scf.yield %58#0, %58#1, %60, %62 : index, index, index, index
      }
      scf.yield %51#0 : index
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
      %48 = arith.addi %arg0, %c1 : index
      %extracted_48 = tensor.extract %23[%arg0] : tensor<?xi64>
      %49 = arith.index_cast %extracted_48 : i64 to index
      %extracted_49 = tensor.extract %23[%48] : tensor<?xi64>
      %50 = arith.index_cast %extracted_49 : i64 to index
      %51:7 = scf.while (%arg13 = %arg9, %arg14 = %arg10, %arg15 = %arg11, %arg16 = %arg12, %arg17 = %idx0, %arg18 = %46, %arg19 = %49) : (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>, index, index, index) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>, index, index, index) {
        %52 = arith.cmpi ult, %arg19, %50 : index
        %53 = arith.cmpi ult, %arg18, %47 : index
        %54 = arith.andi %53, %52 : i1
        scf.condition(%54) %arg13, %arg14, %arg15, %arg16, %arg17, %arg18, %arg19 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>, index, index, index
      } do {
      ^bb0(%arg13: tensor<?xf64>, %arg14: tensor<?xi32>, %arg15: index, %arg16: tensor<?xi64>, %arg17: index, %arg18: index, %arg19: index):
        %extracted_50 = tensor.extract %24[%arg19] : tensor<?xi64>
        %52 = arith.index_cast %extracted_50 : i64 to index
        %extracted_51 = tensor.extract %24[%arg18] : tensor<?xi64>
        %53 = arith.index_cast %extracted_51 : i64 to index
        %54 = arith.minui %53, %52 : index
        %55 = arith.cmpi eq, %54, %53 : index
        %56 = arith.cmpi eq, %54, %52 : index
        %57 = arith.andi %55, %56 : i1
        %58:5 = scf.if %57 -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>, index) {
          %extracted_52 = tensor.extract %12[%arg8] : tensor<?xf64>
          %extracted_53 = tensor.extract %25[%arg18] : tensor<?xf64>
          %63 = arith.mulf %extracted_52, %extracted_53 : f64
          %extracted_54 = tensor.extract %arg14[%54] : tensor<?xi32>
          %64 = arith.cmpi eq, %extracted_54, %38 : i32
          %65 = scf.if %64 -> (f64) {
            %extracted_57 = tensor.extract %arg13[%54] : tensor<?xf64>
            scf.yield %extracted_57 : f64
          } else {
            scf.yield %cst : f64
          }
          %66 = arith.addf %65, %63 : f64
          %extracted_55 = tensor.extract %arg14[%54] : tensor<?xi32>
          %67 = arith.cmpi ne, %extracted_55, %38 : i32
          %68:3 = scf.if %67 -> (tensor<?xi32>, index, tensor<?xi64>) {
            %inserted_57 = tensor.insert %38 into %arg14[%54] : tensor<?xi32>
            %70 = arith.index_cast %54 : index to i64
            %inserted_58 = tensor.insert %70 into %arg16[%arg15] : tensor<?xi64>
            %71 = index.add %arg15, %idx1
            scf.yield %inserted_57, %71, %inserted_58 : tensor<?xi32>, index, tensor<?xi64>
          } else {
            scf.yield %arg14, %arg15, %arg16 : tensor<?xi32>, index, tensor<?xi64>
          }
          %inserted_56 = tensor.insert %66 into %arg13[%54] : tensor<?xf64>
          %69 = index.add %arg17, %idx1
          scf.yield %inserted_56, %68#0, %68#1, %68#2, %69 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>, index
        } else {
          scf.yield %arg13, %arg14, %arg15, %arg16, %arg17 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>, index
        }
        %59 = index.castu %55 : i1 to index
        %60 = index.add %arg18, %59
        %61 = index.castu %56 : i1 to index
        %62 = index.add %arg19, %61
        scf.yield %58#0, %58#1, %58#2, %58#3, %58#4, %60, %62 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>, index, index, index
      }
      scf.yield %51#0, %51#1, %51#2, %51#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
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
        %48 = arith.addi %arg0, %c1 : index
        %extracted_48 = tensor.extract %23[%arg0] : tensor<?xi64>
        %49 = arith.index_cast %extracted_48 : i64 to index
        %extracted_49 = tensor.extract %23[%48] : tensor<?xi64>
        %50 = arith.index_cast %extracted_49 : i64 to index
        %51:4 = scf.while (%arg5 = %arg4, %arg6 = %idx0, %arg7 = %46, %arg8 = %49) : (index, index, index, index) -> (index, index, index, index) {
          %52 = arith.cmpi ult, %arg8, %50 : index
          %53 = arith.cmpi ult, %arg7, %47 : index
          %54 = arith.andi %53, %52 : i1
          scf.condition(%54) %arg5, %arg6, %arg7, %arg8 : index, index, index, index
        } do {
        ^bb0(%arg5: index, %arg6: index, %arg7: index, %arg8: index):
          %extracted_50 = tensor.extract %24[%arg8] : tensor<?xi64>
          %52 = arith.index_cast %extracted_50 : i64 to index
          %extracted_51 = tensor.extract %24[%arg7] : tensor<?xi64>
          %53 = arith.index_cast %extracted_51 : i64 to index
          %54 = arith.minui %53, %52 : index
          %55 = arith.cmpi eq, %54, %53 : index
          %56 = arith.cmpi eq, %54, %52 : index
          %57 = arith.andi %55, %56 : i1
          %58:2 = scf.if %57 -> (index, index) {
            %63 = index.add %arg1, %idx1
            %64 = arith.index_cast %63 : index to i64
            %65 = memref.load %alloc_39[%54] : memref<?xi64>
            %66 = arith.cmpi eq, %64, %65 : i64
            %67 = scf.if %66 -> (index) {
              scf.yield %arg5 : index
            } else {
              memref.store %64, %alloc_39[%54] : memref<?xi64>
              %69 = index.add %arg5, %idx1
              scf.yield %69 : index
            }
            %68 = index.add %arg6, %idx1
            scf.yield %67, %68 : index, index
          } else {
            scf.yield %arg5, %arg6 : index, index
          }
          %59 = index.castu %55 : i1 to index
          %60 = index.add %arg7, %59
          %61 = index.castu %56 : i1 to index
          %62 = index.add %arg8, %61
          scf.yield %58#0, %58#1, %60, %62 : index, index, index, index
        }
        scf.yield %51#0 : index
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
        %48 = arith.addi %arg0, %c1 : index
        %extracted_48 = tensor.extract %23[%arg0] : tensor<?xi64>
        %49 = arith.index_cast %extracted_48 : i64 to index
        %extracted_49 = tensor.extract %23[%48] : tensor<?xi64>
        %50 = arith.index_cast %extracted_49 : i64 to index
        %51:7 = scf.while (%arg13 = %arg9, %arg14 = %arg10, %arg15 = %arg11, %arg16 = %arg12, %arg17 = %idx0, %arg18 = %46, %arg19 = %49) : (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>, index, index, index) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>, index, index, index) {
          %52 = arith.cmpi ult, %arg19, %50 : index
          %53 = arith.cmpi ult, %arg18, %47 : index
          %54 = arith.andi %53, %52 : i1
          scf.condition(%54) %arg13, %arg14, %arg15, %arg16, %arg17, %arg18, %arg19 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>, index, index, index
        } do {
        ^bb0(%arg13: tensor<?xf64>, %arg14: tensor<?xi32>, %arg15: index, %arg16: tensor<?xi64>, %arg17: index, %arg18: index, %arg19: index):
          %extracted_50 = tensor.extract %24[%arg19] : tensor<?xi64>
          %52 = arith.index_cast %extracted_50 : i64 to index
          %extracted_51 = tensor.extract %24[%arg18] : tensor<?xi64>
          %53 = arith.index_cast %extracted_51 : i64 to index
          %54 = arith.minui %53, %52 : index
          %55 = arith.cmpi eq, %54, %53 : index
          %56 = arith.cmpi eq, %54, %52 : index
          %57 = arith.andi %55, %56 : i1
          %58:5 = scf.if %57 -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>, index) {
            %extracted_52 = tensor.extract %12[%arg8] : tensor<?xf64>
            %extracted_53 = tensor.extract %25[%arg18] : tensor<?xf64>
            %63 = arith.mulf %extracted_52, %extracted_53 : f64
            %extracted_54 = tensor.extract %arg14[%54] : tensor<?xi32>
            %64 = arith.cmpi eq, %extracted_54, %38 : i32
            %65 = scf.if %64 -> (f64) {
              %extracted_57 = tensor.extract %arg13[%54] : tensor<?xf64>
              scf.yield %extracted_57 : f64
            } else {
              scf.yield %cst : f64
            }
            %66 = arith.addf %65, %63 : f64
            %extracted_55 = tensor.extract %arg14[%54] : tensor<?xi32>
            %67 = arith.cmpi ne, %extracted_55, %38 : i32
            %68:3 = scf.if %67 -> (tensor<?xi32>, index, tensor<?xi64>) {
              %inserted_57 = tensor.insert %38 into %arg14[%54] : tensor<?xi32>
              %70 = arith.index_cast %54 : index to i64
              %inserted_58 = tensor.insert %70 into %arg16[%arg15] : tensor<?xi64>
              %71 = index.add %arg15, %idx1
              scf.yield %inserted_57, %71, %inserted_58 : tensor<?xi32>, index, tensor<?xi64>
            } else {
              scf.yield %arg14, %arg15, %arg16 : tensor<?xi32>, index, tensor<?xi64>
            }
            %inserted_56 = tensor.insert %66 into %arg13[%54] : tensor<?xf64>
            %69 = index.add %arg17, %idx1
            scf.yield %inserted_56, %68#0, %68#1, %68#2, %69 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>, index
          } else {
            scf.yield %arg13, %arg14, %arg15, %arg16, %arg17 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>, index
          }
          %59 = index.castu %55 : i1 to index
          %60 = index.add %arg18, %59
          %61 = index.castu %56 : i1 to index
          %62 = index.add %arg19, %61
          scf.yield %58#0, %58#1, %58#2, %58#3, %58#4, %60, %62 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>, index, index, index
        }
        scf.yield %51#0, %51#1, %51#2, %51#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
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
        %48 = arith.addi %arg0, %c1 : index
        %extracted_48 = tensor.extract %23[%arg0] : tensor<?xi64>
        %49 = arith.index_cast %extracted_48 : i64 to index
        %extracted_49 = tensor.extract %23[%48] : tensor<?xi64>
        %50 = arith.index_cast %extracted_49 : i64 to index
        %51:4 = scf.while (%arg5 = %arg4, %arg6 = %idx0, %arg7 = %46, %arg8 = %49) : (index, index, index, index) -> (index, index, index, index) {
          %52 = arith.cmpi ult, %arg8, %50 : index
          %53 = arith.cmpi ult, %arg7, %47 : index
          %54 = arith.andi %53, %52 : i1
          scf.condition(%54) %arg5, %arg6, %arg7, %arg8 : index, index, index, index
        } do {
        ^bb0(%arg5: index, %arg6: index, %arg7: index, %arg8: index):
          %extracted_50 = tensor.extract %24[%arg8] : tensor<?xi64>
          %52 = arith.index_cast %extracted_50 : i64 to index
          %extracted_51 = tensor.extract %24[%arg7] : tensor<?xi64>
          %53 = arith.index_cast %extracted_51 : i64 to index
          %54 = arith.minui %53, %52 : index
          %55 = arith.cmpi eq, %54, %53 : index
          %56 = arith.cmpi eq, %54, %52 : index
          %57 = arith.andi %55, %56 : i1
          %58:2 = scf.if %57 -> (index, index) {
            %63 = index.add %arg1, %idx1
            %64 = arith.index_cast %63 : index to i64
            %65 = memref.load %alloc_39[%54] : memref<?xi64>
            %66 = arith.cmpi eq, %64, %65 : i64
            %67 = scf.if %66 -> (index) {
              scf.yield %arg5 : index
            } else {
              memref.store %64, %alloc_39[%54] : memref<?xi64>
              %69 = index.add %arg5, %idx1
              scf.yield %69 : index
            }
            %68 = index.add %arg6, %idx1
            scf.yield %67, %68 : index, index
          } else {
            scf.yield %arg5, %arg6 : index, index
          }
          %59 = index.castu %55 : i1 to index
          %60 = index.add %arg7, %59
          %61 = index.castu %56 : i1 to index
          %62 = index.add %arg8, %61
          scf.yield %58#0, %58#1, %60, %62 : index, index, index, index
        }
        scf.yield %51#0 : index
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
        %48 = arith.addi %arg0, %c1 : index
        %extracted_48 = tensor.extract %23[%arg0] : tensor<?xi64>
        %49 = arith.index_cast %extracted_48 : i64 to index
        %extracted_49 = tensor.extract %23[%48] : tensor<?xi64>
        %50 = arith.index_cast %extracted_49 : i64 to index
        %51:7 = scf.while (%arg13 = %arg9, %arg14 = %arg10, %arg15 = %arg11, %arg16 = %arg12, %arg17 = %idx0, %arg18 = %46, %arg19 = %49) : (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>, index, index, index) -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>, index, index, index) {
          %52 = arith.cmpi ult, %arg19, %50 : index
          %53 = arith.cmpi ult, %arg18, %47 : index
          %54 = arith.andi %53, %52 : i1
          scf.condition(%54) %arg13, %arg14, %arg15, %arg16, %arg17, %arg18, %arg19 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>, index, index, index
        } do {
        ^bb0(%arg13: tensor<?xf64>, %arg14: tensor<?xi32>, %arg15: index, %arg16: tensor<?xi64>, %arg17: index, %arg18: index, %arg19: index):
          %extracted_50 = tensor.extract %24[%arg19] : tensor<?xi64>
          %52 = arith.index_cast %extracted_50 : i64 to index
          %extracted_51 = tensor.extract %24[%arg18] : tensor<?xi64>
          %53 = arith.index_cast %extracted_51 : i64 to index
          %54 = arith.minui %53, %52 : index
          %55 = arith.cmpi eq, %54, %53 : index
          %56 = arith.cmpi eq, %54, %52 : index
          %57 = arith.andi %55, %56 : i1
          %58:5 = scf.if %57 -> (tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>, index) {
            %extracted_52 = tensor.extract %12[%arg8] : tensor<?xf64>
            %extracted_53 = tensor.extract %25[%arg18] : tensor<?xf64>
            %63 = arith.mulf %extracted_52, %extracted_53 : f64
            %extracted_54 = tensor.extract %arg14[%54] : tensor<?xi32>
            %64 = arith.cmpi eq, %extracted_54, %38 : i32
            %65 = scf.if %64 -> (f64) {
              %extracted_57 = tensor.extract %arg13[%54] : tensor<?xf64>
              scf.yield %extracted_57 : f64
            } else {
              scf.yield %cst : f64
            }
            %66 = arith.addf %65, %63 : f64
            %extracted_55 = tensor.extract %arg14[%54] : tensor<?xi32>
            %67 = arith.cmpi ne, %extracted_55, %38 : i32
            %68:3 = scf.if %67 -> (tensor<?xi32>, index, tensor<?xi64>) {
              %inserted_57 = tensor.insert %38 into %arg14[%54] : tensor<?xi32>
              %70 = arith.index_cast %54 : index to i64
              %inserted_58 = tensor.insert %70 into %arg16[%arg15] : tensor<?xi64>
              %71 = index.add %arg15, %idx1
              scf.yield %inserted_57, %71, %inserted_58 : tensor<?xi32>, index, tensor<?xi64>
            } else {
              scf.yield %arg14, %arg15, %arg16 : tensor<?xi32>, index, tensor<?xi64>
            }
            %inserted_56 = tensor.insert %66 into %arg13[%54] : tensor<?xf64>
            %69 = index.add %arg17, %idx1
            scf.yield %inserted_56, %68#0, %68#1, %68#2, %69 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>, index
          } else {
            scf.yield %arg13, %arg14, %arg15, %arg16, %arg17 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>, index
          }
          %59 = index.castu %55 : i1 to index
          %60 = index.add %arg18, %59
          %61 = index.castu %56 : i1 to index
          %62 = index.add %arg19, %61
          scf.yield %58#0, %58#1, %58#2, %58#3, %58#4, %60, %62 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>, index, index, index
        }
        scf.yield %51#0, %51#1, %51#2, %51#3 : tensor<?xf64>, tensor<?xi32>, index, tensor<?xi64>
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
        %44 = arith.addi %arg0, %c1 : index
        %45 = memref.load %alloc_28[%arg0] : memref<?xi64>
        %46 = arith.index_cast %45 : i64 to index
        %47 = memref.load %alloc_28[%44] : memref<?xi64>
        %48 = arith.index_cast %47 : i64 to index
        %49:4 = scf.while (%arg5 = %arg4, %arg6 = %idx0, %arg7 = %41, %arg8 = %46) : (index, index, index, index) -> (index, index, index, index) {
          %50 = arith.cmpi ult, %arg8, %48 : index
          %51 = arith.cmpi ult, %arg7, %43 : index
          %52 = arith.andi %51, %50 : i1
          scf.condition(%52) %arg5, %arg6, %arg7, %arg8 : index, index, index, index
        } do {
        ^bb0(%arg5: index, %arg6: index, %arg7: index, %arg8: index):
          %50 = memref.load %alloc_30[%arg8] : memref<?xi64>
          %51 = arith.index_cast %50 : i64 to index
          %52 = memref.load %alloc_30[%arg7] : memref<?xi64>
          %53 = arith.index_cast %52 : i64 to index
          %54 = arith.minui %53, %51 : index
          %55 = arith.cmpi eq, %54, %53 : index
          %56 = arith.cmpi eq, %54, %51 : index
          %57 = arith.andi %55, %56 : i1
          %58:2 = scf.if %57 -> (index, index) {
            %63 = index.add %arg1, %idx1
            %64 = arith.index_cast %63 : index to i64
            %65 = memref.load %alloc_39[%54] : memref<?xi64>
            %66 = arith.cmpi eq, %64, %65 : i64
            %67 = scf.if %66 -> (index) {
              scf.yield %arg5 : index
            } else {
              memref.store %64, %alloc_39[%54] : memref<?xi64>
              %69 = index.add %arg5, %idx1
              scf.yield %69 : index
            }
            %68 = index.add %arg6, %idx1
            scf.yield %67, %68 : index, index
          } else {
            scf.yield %arg5, %arg6 : index, index
          }
          %59 = index.castu %55 : i1 to index
          %60 = index.add %arg7, %59
          %61 = index.castu %56 : i1 to index
          %62 = index.add %arg8, %61
          scf.yield %58#0, %58#1, %60, %62 : index, index, index, index
        }
        scf.yield %49#0 : index
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
        %44 = arith.addi %arg0, %c1 : index
        %45 = memref.load %alloc_28[%arg0] : memref<?xi64>
        %46 = arith.index_cast %45 : i64 to index
        %47 = memref.load %alloc_28[%44] : memref<?xi64>
        %48 = arith.index_cast %47 : i64 to index
        %49:7 = scf.while (%arg13 = %arg9, %arg14 = %arg10, %arg15 = %arg11, %arg16 = %arg12, %arg17 = %idx0, %arg18 = %41, %arg19 = %46) : (memref<?xf64>, memref<?xi32>, index, memref<?xi64>, index, index, index) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>, index, index, index) {
          %50 = arith.cmpi ult, %arg19, %48 : index
          %51 = arith.cmpi ult, %arg18, %43 : index
          %52 = arith.andi %51, %50 : i1
          scf.condition(%52) %arg13, %arg14, %arg15, %arg16, %arg17, %arg18, %arg19 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>, index, index, index
        } do {
        ^bb0(%arg13: memref<?xf64>, %arg14: memref<?xi32>, %arg15: index, %arg16: memref<?xi64>, %arg17: index, %arg18: index, %arg19: index):
          %50 = memref.load %alloc_30[%arg19] : memref<?xi64>
          %51 = arith.index_cast %50 : i64 to index
          %52 = memref.load %alloc_30[%arg18] : memref<?xi64>
          %53 = arith.index_cast %52 : i64 to index
          %54 = arith.minui %53, %51 : index
          %55 = arith.cmpi eq, %54, %53 : index
          %56 = arith.cmpi eq, %54, %51 : index
          %57 = arith.andi %55, %56 : i1
          %58:5 = scf.if %57 -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>, index) {
            %63 = memref.load %alloc_16[%arg8] : memref<?xf64>
            %64 = memref.load %alloc_36[%arg18] : memref<?xf64>
            %65 = arith.mulf %63, %64 : f64
            %66 = memref.load %arg14[%54] : memref<?xi32>
            %67 = arith.cmpi eq, %66, %29 : i32
            %68 = scf.if %67 -> (f64) {
              %74 = memref.load %arg13[%54] : memref<?xf64>
              scf.yield %74 : f64
            } else {
              scf.yield %cst : f64
            }
            %69 = arith.addf %68, %65 : f64
            %70 = memref.load %arg14[%54] : memref<?xi32>
            %71 = arith.cmpi ne, %70, %29 : i32
            %72:3 = scf.if %71 -> (memref<?xi32>, index, memref<?xi64>) {
              memref.store %29, %arg14[%54] : memref<?xi32>
              %74 = arith.index_cast %54 : index to i64
              memref.store %74, %arg16[%arg15] : memref<?xi64>
              %75 = index.add %arg15, %idx1
              scf.yield %arg14, %75, %arg16 : memref<?xi32>, index, memref<?xi64>
            } else {
              scf.yield %arg14, %arg15, %arg16 : memref<?xi32>, index, memref<?xi64>
            }
            memref.store %69, %arg13[%54] : memref<?xf64>
            %73 = index.add %arg17, %idx1
            scf.yield %arg13, %72#0, %72#1, %72#2, %73 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>, index
          } else {
            scf.yield %arg13, %arg14, %arg15, %arg16, %arg17 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>, index
          }
          %59 = index.castu %55 : i1 to index
          %60 = index.add %arg18, %59
          %61 = index.castu %56 : i1 to index
          %62 = index.add %arg19, %61
          scf.yield %58#0, %58#1, %58#2, %58#3, %58#4, %60, %62 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>, index, index, index
        }
        scf.yield %49#0, %49#1, %49#2, %49#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
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
      %44 = arith.addi %arg0, %c1 : index
      %45 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %46 = arith.index_cast %45 : i64 to index
      %47 = memref.load %alloc_28[%44] : memref<?xi64>
      %48 = arith.index_cast %47 : i64 to index
      %49:4 = scf.while (%arg5 = %arg4, %arg6 = %idx0, %arg7 = %41, %arg8 = %46) : (index, index, index, index) -> (index, index, index, index) {
        %50 = arith.cmpi ult, %arg8, %48 : index
        %51 = arith.cmpi ult, %arg7, %43 : index
        %52 = arith.andi %51, %50 : i1
        scf.condition(%52) %arg5, %arg6, %arg7, %arg8 : index, index, index, index
      } do {
      ^bb0(%arg5: index, %arg6: index, %arg7: index, %arg8: index):
        %50 = memref.load %alloc_30[%arg8] : memref<?xi64>
        %51 = arith.index_cast %50 : i64 to index
        %52 = memref.load %alloc_30[%arg7] : memref<?xi64>
        %53 = arith.index_cast %52 : i64 to index
        %54 = arith.minui %53, %51 : index
        %55 = arith.cmpi eq, %54, %53 : index
        %56 = arith.cmpi eq, %54, %51 : index
        %57 = arith.andi %55, %56 : i1
        %58:2 = scf.if %57 -> (index, index) {
          %63 = index.add %arg1, %idx1
          %64 = arith.index_cast %63 : index to i64
          %65 = memref.load %alloc_39[%54] : memref<?xi64>
          %66 = arith.cmpi eq, %64, %65 : i64
          %67 = scf.if %66 -> (index) {
            scf.yield %arg5 : index
          } else {
            memref.store %64, %alloc_39[%54] : memref<?xi64>
            %69 = index.add %arg5, %idx1
            scf.yield %69 : index
          }
          %68 = index.add %arg6, %idx1
          scf.yield %67, %68 : index, index
        } else {
          scf.yield %arg5, %arg6 : index, index
        }
        %59 = index.castu %55 : i1 to index
        %60 = index.add %arg7, %59
        %61 = index.castu %56 : i1 to index
        %62 = index.add %arg8, %61
        scf.yield %58#0, %58#1, %60, %62 : index, index, index, index
      }
      scf.yield %49#0 : index
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
      %44 = arith.addi %arg0, %c1 : index
      %45 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %46 = arith.index_cast %45 : i64 to index
      %47 = memref.load %alloc_28[%44] : memref<?xi64>
      %48 = arith.index_cast %47 : i64 to index
      %49:7 = scf.while (%arg13 = %arg9, %arg14 = %arg10, %arg15 = %arg11, %arg16 = %arg12, %arg17 = %idx0, %arg18 = %41, %arg19 = %46) : (memref<?xf64>, memref<?xi32>, index, memref<?xi64>, index, index, index) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>, index, index, index) {
        %50 = arith.cmpi ult, %arg19, %48 : index
        %51 = arith.cmpi ult, %arg18, %43 : index
        %52 = arith.andi %51, %50 : i1
        scf.condition(%52) %arg13, %arg14, %arg15, %arg16, %arg17, %arg18, %arg19 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>, index, index, index
      } do {
      ^bb0(%arg13: memref<?xf64>, %arg14: memref<?xi32>, %arg15: index, %arg16: memref<?xi64>, %arg17: index, %arg18: index, %arg19: index):
        %50 = memref.load %alloc_30[%arg19] : memref<?xi64>
        %51 = arith.index_cast %50 : i64 to index
        %52 = memref.load %alloc_30[%arg18] : memref<?xi64>
        %53 = arith.index_cast %52 : i64 to index
        %54 = arith.minui %53, %51 : index
        %55 = arith.cmpi eq, %54, %53 : index
        %56 = arith.cmpi eq, %54, %51 : index
        %57 = arith.andi %55, %56 : i1
        %58:5 = scf.if %57 -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>, index) {
          %63 = memref.load %alloc_16[%arg8] : memref<?xf64>
          %64 = memref.load %alloc_36[%arg18] : memref<?xf64>
          %65 = arith.mulf %63, %64 : f64
          %66 = memref.load %arg14[%54] : memref<?xi32>
          %67 = arith.cmpi eq, %66, %29 : i32
          %68 = scf.if %67 -> (f64) {
            %74 = memref.load %arg13[%54] : memref<?xf64>
            scf.yield %74 : f64
          } else {
            scf.yield %cst : f64
          }
          %69 = arith.addf %68, %65 : f64
          %70 = memref.load %arg14[%54] : memref<?xi32>
          %71 = arith.cmpi ne, %70, %29 : i32
          %72:3 = scf.if %71 -> (memref<?xi32>, index, memref<?xi64>) {
            memref.store %29, %arg14[%54] : memref<?xi32>
            %74 = arith.index_cast %54 : index to i64
            memref.store %74, %arg16[%arg15] : memref<?xi64>
            %75 = index.add %arg15, %idx1
            scf.yield %arg14, %75, %arg16 : memref<?xi32>, index, memref<?xi64>
          } else {
            scf.yield %arg14, %arg15, %arg16 : memref<?xi32>, index, memref<?xi64>
          }
          memref.store %69, %arg13[%54] : memref<?xf64>
          %73 = index.add %arg17, %idx1
          scf.yield %arg13, %72#0, %72#1, %72#2, %73 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>, index
        } else {
          scf.yield %arg13, %arg14, %arg15, %arg16, %arg17 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>, index
        }
        %59 = index.castu %55 : i1 to index
        %60 = index.add %arg18, %59
        %61 = index.castu %56 : i1 to index
        %62 = index.add %arg19, %61
        scf.yield %58#0, %58#1, %58#2, %58#3, %58#4, %60, %62 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>, index, index, index
      }
      scf.yield %49#0, %49#1, %49#2, %49#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
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
      %49 = arith.addi %arg0, %c1 : index
      %50 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %51 = arith.index_cast %50 : i64 to index
      %52 = memref.load %alloc_28[%49] : memref<?xi64>
      %53 = arith.index_cast %52 : i64 to index
      %54:4 = scf.while (%arg5 = %arg4, %arg6 = %idx0, %arg7 = %46, %arg8 = %51) : (index, index, index, index) -> (index, index, index, index) {
        %55 = arith.cmpi ult, %arg8, %53 : index
        %56 = arith.cmpi ult, %arg7, %48 : index
        %57 = arith.andi %56, %55 : i1
        scf.condition(%57) %arg5, %arg6, %arg7, %arg8 : index, index, index, index
      } do {
      ^bb0(%arg5: index, %arg6: index, %arg7: index, %arg8: index):
        %55 = memref.load %alloc_30[%arg8] : memref<?xi64>
        %56 = arith.index_cast %55 : i64 to index
        %57 = memref.load %alloc_30[%arg7] : memref<?xi64>
        %58 = arith.index_cast %57 : i64 to index
        %59 = arith.minui %58, %56 : index
        %60 = arith.cmpi eq, %59, %58 : index
        %61 = arith.cmpi eq, %59, %56 : index
        %62 = arith.andi %60, %61 : i1
        %63:2 = scf.if %62 -> (index, index) {
          %68 = index.add %arg1, %idx1
          %69 = arith.index_cast %68 : index to i64
          %70 = memref.load %alloc_39[%59] : memref<?xi64>
          %71 = arith.cmpi eq, %69, %70 : i64
          %72 = scf.if %71 -> (index) {
            scf.yield %arg5 : index
          } else {
            memref.store %69, %alloc_39[%59] : memref<?xi64>
            %74 = index.add %arg5, %idx1
            scf.yield %74 : index
          }
          %73 = index.add %arg6, %idx1
          scf.yield %72, %73 : index, index
        } else {
          scf.yield %arg5, %arg6 : index, index
        }
        %64 = index.castu %60 : i1 to index
        %65 = index.add %arg7, %64
        %66 = index.castu %61 : i1 to index
        %67 = index.add %arg8, %66
        scf.yield %63#0, %63#1, %65, %67 : index, index, index, index
      }
      scf.yield %54#0 : index
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
      %49 = arith.addi %arg0, %c1 : index
      %50 = memref.load %alloc_28[%arg0] : memref<?xi64>
      %51 = arith.index_cast %50 : i64 to index
      %52 = memref.load %alloc_28[%49] : memref<?xi64>
      %53 = arith.index_cast %52 : i64 to index
      %54:7 = scf.while (%arg13 = %arg9, %arg14 = %arg10, %arg15 = %arg11, %arg16 = %arg12, %arg17 = %idx0, %arg18 = %46, %arg19 = %51) : (memref<?xf64>, memref<?xi32>, index, memref<?xi64>, index, index, index) -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>, index, index, index) {
        %55 = arith.cmpi ult, %arg19, %53 : index
        %56 = arith.cmpi ult, %arg18, %48 : index
        %57 = arith.andi %56, %55 : i1
        scf.condition(%57) %arg13, %arg14, %arg15, %arg16, %arg17, %arg18, %arg19 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>, index, index, index
      } do {
      ^bb0(%arg13: memref<?xf64>, %arg14: memref<?xi32>, %arg15: index, %arg16: memref<?xi64>, %arg17: index, %arg18: index, %arg19: index):
        %55 = memref.load %alloc_30[%arg19] : memref<?xi64>
        %56 = arith.index_cast %55 : i64 to index
        %57 = memref.load %alloc_30[%arg18] : memref<?xi64>
        %58 = arith.index_cast %57 : i64 to index
        %59 = arith.minui %58, %56 : index
        %60 = arith.cmpi eq, %59, %58 : index
        %61 = arith.cmpi eq, %59, %56 : index
        %62 = arith.andi %60, %61 : i1
        %63:5 = scf.if %62 -> (memref<?xf64>, memref<?xi32>, index, memref<?xi64>, index) {
          %68 = memref.load %alloc_16[%arg8] : memref<?xf64>
          %69 = memref.load %alloc_36[%arg18] : memref<?xf64>
          %70 = arith.mulf %68, %69 : f64
          %71 = memref.load %arg14[%59] : memref<?xi32>
          %72 = arith.cmpi eq, %71, %34 : i32
          %73 = scf.if %72 -> (f64) {
            %79 = memref.load %arg13[%59] : memref<?xf64>
            scf.yield %79 : f64
          } else {
            scf.yield %cst : f64
          }
          %74 = arith.addf %73, %70 : f64
          %75 = memref.load %arg14[%59] : memref<?xi32>
          %76 = arith.cmpi ne, %75, %34 : i32
          %77:3 = scf.if %76 -> (memref<?xi32>, index, memref<?xi64>) {
            memref.store %34, %arg14[%59] : memref<?xi32>
            %79 = arith.index_cast %59 : index to i64
            memref.store %79, %arg16[%arg15] : memref<?xi64>
            %80 = index.add %arg15, %idx1
            scf.yield %arg14, %80, %arg16 : memref<?xi32>, index, memref<?xi64>
          } else {
            scf.yield %arg14, %arg15, %arg16 : memref<?xi32>, index, memref<?xi64>
          }
          memref.store %74, %arg13[%59] : memref<?xf64>
          %78 = index.add %arg17, %idx1
          scf.yield %arg13, %77#0, %77#1, %77#2, %78 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>, index
        } else {
          scf.yield %arg13, %arg14, %arg15, %arg16, %arg17 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>, index
        }
        %64 = index.castu %60 : i1 to index
        %65 = index.add %arg18, %64
        %66 = index.castu %61 : i1 to index
        %67 = index.add %arg19, %66
        scf.yield %63#0, %63#1, %63#2, %63#3, %63#4, %65, %67 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>, index, index, index
      }
      scf.yield %54#0, %54#1, %54#2, %54#3 : memref<?xf64>, memref<?xi32>, index, memref<?xi64>
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
        %39 = arith.addi %arg0, %c1 : index
        %40 = memref.load %alloc_28[%arg0] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = memref.load %alloc_28[%39] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44:4 = scf.while (%arg5 = %arg4, %arg6 = %idx0, %arg7 = %36, %arg8 = %41) : (index, index, index, index) -> (index, index, index, index) {
          %45 = arith.cmpi ult, %arg8, %43 : index
          %46 = arith.cmpi ult, %arg7, %38 : index
          %47 = arith.andi %46, %45 : i1
          scf.condition(%47) %arg5, %arg6, %arg7, %arg8 : index, index, index, index
        } do {
        ^bb0(%arg5: index, %arg6: index, %arg7: index, %arg8: index):
          %45 = memref.load %alloc_30[%arg8] : memref<?xi64>
          %46 = arith.index_cast %45 : i64 to index
          %47 = memref.load %alloc_30[%arg7] : memref<?xi64>
          %48 = arith.index_cast %47 : i64 to index
          %49 = arith.minui %48, %46 : index
          %50 = arith.cmpi eq, %49, %48 : index
          %51 = arith.cmpi eq, %49, %46 : index
          %52 = arith.andi %50, %51 : i1
          %53:2 = scf.if %52 -> (index, index) {
            %58 = index.add %arg1, %idx1
            %59 = arith.index_cast %58 : index to i64
            %60 = memref.load %alloc_39[%49] : memref<?xi64>
            %61 = arith.cmpi eq, %59, %60 : i64
            %62 = scf.if %61 -> (index) {
              scf.yield %arg5 : index
            } else {
              memref.store %59, %alloc_39[%49] : memref<?xi64>
              %64 = index.add %arg5, %idx1
              scf.yield %64 : index
            }
            %63 = index.add %arg6, %idx1
            scf.yield %62, %63 : index, index
          } else {
            scf.yield %arg5, %arg6 : index, index
          }
          %54 = index.castu %50 : i1 to index
          %55 = index.add %arg7, %54
          %56 = index.castu %51 : i1 to index
          %57 = index.add %arg8, %56
          scf.yield %53#0, %53#1, %55, %57 : index, index, index, index
        }
        scf.yield %44#0 : index
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
        %39 = arith.addi %arg0, %c1 : index
        %40 = memref.load %alloc_28[%arg0] : memref<?xi64>
        %41 = arith.index_cast %40 : i64 to index
        %42 = memref.load %alloc_28[%39] : memref<?xi64>
        %43 = arith.index_cast %42 : i64 to index
        %44:4 = scf.while (%arg5 = %arg4, %arg6 = %idx0, %arg7 = %36, %arg8 = %41) : (index, index, index, index) -> (index, index, index, index) {
          %45 = arith.cmpi ult, %arg8, %43 : index
          %46 = arith.cmpi ult, %arg7, %38 : index
          %47 = arith.andi %46, %45 : i1
          scf.condition(%47) %arg5, %arg6, %arg7, %arg8 : index, index, index, index
        } do {
        ^bb0(%arg5: index, %arg6: index, %arg7: index, %arg8: index):
          %45 = memref.load %alloc_30[%arg8] : memref<?xi64>
          %46 = arith.index_cast %45 : i64 to index
          %47 = memref.load %alloc_30[%arg7] : memref<?xi64>
          %48 = arith.index_cast %47 : i64 to index
          %49 = arith.minui %48, %46 : index
          %50 = arith.cmpi eq, %49, %48 : index
          %51 = arith.cmpi eq, %49, %46 : index
          %52 = arith.andi %50, %51 : i1
          %53:2 = scf.if %52 -> (index, index) {
            %58 = memref.load %alloc_16[%arg3] : memref<?xf64>
            %59 = memref.load %alloc_36[%arg7] : memref<?xf64>
            %60 = arith.mulf %58, %59 : f64
            %61 = memref.load %alloc_44[%49] : memref<?xi32>
            %62 = arith.cmpi eq, %61, %24 : i32
            %63 = scf.if %62 -> (f64) {
              %69 = memref.load %alloc_43[%49] : memref<?xf64>
              scf.yield %69 : f64
            } else {
              scf.yield %cst : f64
            }
            %64 = arith.addf %63, %60 : f64
            %65 = memref.load %alloc_44[%49] : memref<?xi32>
            %66 = arith.cmpi ne, %65, %24 : i32
            %67 = scf.if %66 -> (index) {
              memref.store %24, %alloc_44[%49] : memref<?xi32>
              %69 = arith.index_cast %49 : index to i64
              memref.store %69, %alloc_45[%arg5] : memref<?xi64>
              %70 = index.add %arg5, %idx1
              scf.yield %70 : index
            } else {
              scf.yield %arg5 : index
            }
            memref.store %64, %alloc_43[%49] : memref<?xf64>
            %68 = index.add %arg6, %idx1
            scf.yield %67, %68 : index, index
          } else {
            scf.yield %arg5, %arg6 : index, index
          }
          %54 = index.castu %50 : i1 to index
          %55 = index.add %arg7, %54
          %56 = index.castu %51 : i1 to index
          %57 = index.add %arg8, %56
          scf.yield %53#0, %53#1, %55, %57 : index, index, index, index
        }
        scf.yield %44#0 : index
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
        %39 = memref.load %alloc_28[%arg0] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_28[%24] : memref<?xi64>
        %42 = arith.index_cast %41 : i64 to index
        %43:4 = scf.while (%arg5 = %arg4, %arg6 = %idx0, %arg7 = %36, %arg8 = %40) : (index, index, index, index) -> (index, index, index, index) {
          %44 = arith.cmpi ult, %arg8, %42 : index
          %45 = arith.cmpi ult, %arg7, %38 : index
          %46 = arith.andi %45, %44 : i1
          scf.condition(%46) %arg5, %arg6, %arg7, %arg8 : index, index, index, index
        } do {
        ^bb0(%arg5: index, %arg6: index, %arg7: index, %arg8: index):
          %44 = memref.load %alloc_30[%arg8] : memref<?xi64>
          %45 = arith.index_cast %44 : i64 to index
          %46 = memref.load %alloc_30[%arg7] : memref<?xi64>
          %47 = arith.index_cast %46 : i64 to index
          %48 = arith.minui %47, %45 : index
          %49 = arith.cmpi eq, %48, %47 : index
          %50 = arith.cmpi eq, %48, %45 : index
          %51 = arith.andi %49, %50 : i1
          %52:2 = scf.if %51 -> (index, index) {
            %57 = index.add %arg1, %idx1
            %58 = arith.index_cast %57 : index to i64
            %59 = memref.load %alloc_39[%48] : memref<?xi64>
            %60 = arith.cmpi eq, %58, %59 : i64
            %61 = scf.if %60 -> (index) {
              scf.yield %arg5 : index
            } else {
              memref.store %58, %alloc_39[%48] : memref<?xi64>
              %63 = index.add %arg5, %idx1
              scf.yield %63 : index
            }
            %62 = index.add %arg6, %idx1
            scf.yield %61, %62 : index, index
          } else {
            scf.yield %arg5, %arg6 : index, index
          }
          %53 = index.castu %49 : i1 to index
          %54 = index.add %arg7, %53
          %55 = index.castu %50 : i1 to index
          %56 = index.add %arg8, %55
          scf.yield %52#0, %52#1, %54, %56 : index, index, index, index
        }
        scf.yield %43#0 : index
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
        %39 = memref.load %alloc_28[%arg0] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_28[%25] : memref<?xi64>
        %42 = arith.index_cast %41 : i64 to index
        %43:4 = scf.while (%arg5 = %arg4, %arg6 = %idx0, %arg7 = %36, %arg8 = %40) : (index, index, index, index) -> (index, index, index, index) {
          %44 = arith.cmpi ult, %arg8, %42 : index
          %45 = arith.cmpi ult, %arg7, %38 : index
          %46 = arith.andi %45, %44 : i1
          scf.condition(%46) %arg5, %arg6, %arg7, %arg8 : index, index, index, index
        } do {
        ^bb0(%arg5: index, %arg6: index, %arg7: index, %arg8: index):
          %44 = memref.load %alloc_30[%arg8] : memref<?xi64>
          %45 = arith.index_cast %44 : i64 to index
          %46 = memref.load %alloc_30[%arg7] : memref<?xi64>
          %47 = arith.index_cast %46 : i64 to index
          %48 = arith.minui %47, %45 : index
          %49 = arith.cmpi eq, %48, %47 : index
          %50 = arith.cmpi eq, %48, %45 : index
          %51 = arith.andi %49, %50 : i1
          %52:2 = scf.if %51 -> (index, index) {
            %57 = memref.load %alloc_16[%arg3] : memref<?xf64>
            %58 = memref.load %alloc_36[%arg7] : memref<?xf64>
            %59 = arith.mulf %57, %58 : f64
            %60 = memref.load %alloc_44[%48] : memref<?xi32>
            %61 = arith.cmpi eq, %60, %24 : i32
            %62 = scf.if %61 -> (f64) {
              %67 = memref.load %alloc_43[%48] : memref<?xf64>
              scf.yield %67 : f64
            } else {
              scf.yield %cst : f64
            }
            %63 = arith.addf %62, %59 : f64
            %64 = arith.cmpi ne, %60, %24 : i32
            %65 = scf.if %64 -> (index) {
              memref.store %24, %alloc_44[%48] : memref<?xi32>
              %67 = arith.index_cast %48 : index to i64
              memref.store %67, %alloc_45[%arg5] : memref<?xi64>
              %68 = index.add %arg5, %idx1
              scf.yield %68 : index
            } else {
              scf.yield %arg5 : index
            }
            memref.store %63, %alloc_43[%48] : memref<?xf64>
            %66 = index.add %arg6, %idx1
            scf.yield %65, %66 : index, index
          } else {
            scf.yield %arg5, %arg6 : index, index
          }
          %53 = index.castu %49 : i1 to index
          %54 = index.add %arg7, %53
          %55 = index.castu %50 : i1 to index
          %56 = index.add %arg8, %55
          scf.yield %52#0, %52#1, %54, %56 : index, index, index, index
        }
        scf.yield %43#0 : index
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
        %39 = memref.load %alloc_28[%arg0] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_28[%24] : memref<?xi64>
        %42 = arith.index_cast %41 : i64 to index
        %43:4 = scf.while (%arg5 = %arg4, %arg6 = %idx0, %arg7 = %36, %arg8 = %40) : (index, index, index, index) -> (index, index, index, index) {
          %44 = arith.cmpi ult, %arg8, %42 : index
          %45 = arith.cmpi ult, %arg7, %38 : index
          %46 = arith.andi %45, %44 : i1
          scf.condition(%46) %arg5, %arg6, %arg7, %arg8 : index, index, index, index
        } do {
        ^bb0(%arg5: index, %arg6: index, %arg7: index, %arg8: index):
          %44 = memref.load %alloc_30[%arg8] : memref<?xi64>
          %45 = arith.index_cast %44 : i64 to index
          %46 = memref.load %alloc_30[%arg7] : memref<?xi64>
          %47 = arith.index_cast %46 : i64 to index
          %48 = arith.minui %47, %45 : index
          %49 = arith.cmpi eq, %48, %47 : index
          %50 = arith.cmpi eq, %48, %45 : index
          %51 = arith.andi %49, %50 : i1
          %52:2 = scf.if %51 -> (index, index) {
            %57 = index.add %arg1, %idx1
            %58 = arith.index_cast %57 : index to i64
            %59 = memref.load %alloc_39[%48] : memref<?xi64>
            %60 = arith.cmpi eq, %58, %59 : i64
            %61 = scf.if %60 -> (index) {
              scf.yield %arg5 : index
            } else {
              memref.store %58, %alloc_39[%48] : memref<?xi64>
              %63 = index.add %arg5, %idx1
              scf.yield %63 : index
            }
            %62 = index.add %arg6, %idx1
            scf.yield %61, %62 : index, index
          } else {
            scf.yield %arg5, %arg6 : index, index
          }
          %53 = index.castu %49 : i1 to index
          %54 = index.add %arg7, %53
          %55 = index.castu %50 : i1 to index
          %56 = index.add %arg8, %55
          scf.yield %52#0, %52#1, %54, %56 : index, index, index, index
        }
        scf.yield %43#0 : index
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
        %39 = memref.load %alloc_28[%arg0] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_28[%25] : memref<?xi64>
        %42 = arith.index_cast %41 : i64 to index
        %43:4 = scf.while (%arg5 = %arg4, %arg6 = %idx0, %arg7 = %36, %arg8 = %40) : (index, index, index, index) -> (index, index, index, index) {
          %44 = arith.cmpi ult, %arg8, %42 : index
          %45 = arith.cmpi ult, %arg7, %38 : index
          %46 = arith.andi %45, %44 : i1
          scf.condition(%46) %arg5, %arg6, %arg7, %arg8 : index, index, index, index
        } do {
        ^bb0(%arg5: index, %arg6: index, %arg7: index, %arg8: index):
          %44 = memref.load %alloc_30[%arg8] : memref<?xi64>
          %45 = arith.index_cast %44 : i64 to index
          %46 = memref.load %alloc_30[%arg7] : memref<?xi64>
          %47 = arith.index_cast %46 : i64 to index
          %48 = arith.minui %47, %45 : index
          %49 = arith.cmpi eq, %48, %47 : index
          %50 = arith.cmpi eq, %48, %45 : index
          %51 = arith.andi %49, %50 : i1
          %52:2 = scf.if %51 -> (index, index) {
            %57 = memref.load %alloc_16[%arg3] : memref<?xf64>
            %58 = memref.load %alloc_36[%arg7] : memref<?xf64>
            %59 = arith.mulf %57, %58 : f64
            %60 = memref.load %alloc_44[%48] : memref<?xi32>
            %61 = arith.cmpi eq, %60, %24 : i32
            %62 = scf.if %61 -> (f64) {
              %67 = memref.load %alloc_43[%48] : memref<?xf64>
              scf.yield %67 : f64
            } else {
              scf.yield %cst : f64
            }
            %63 = arith.addf %62, %59 : f64
            %64 = arith.cmpi ne, %60, %24 : i32
            %65 = scf.if %64 -> (index) {
              memref.store %24, %alloc_44[%48] : memref<?xi32>
              %67 = arith.index_cast %48 : index to i64
              memref.store %67, %alloc_45[%arg5] : memref<?xi64>
              %68 = index.add %arg5, %idx1
              scf.yield %68 : index
            } else {
              scf.yield %arg5 : index
            }
            memref.store %63, %alloc_43[%48] : memref<?xf64>
            %66 = index.add %arg6, %idx1
            scf.yield %65, %66 : index, index
          } else {
            scf.yield %arg5, %arg6 : index, index
          }
          %53 = index.castu %49 : i1 to index
          %54 = index.add %arg7, %53
          %55 = index.castu %50 : i1 to index
          %56 = index.add %arg8, %55
          scf.yield %52#0, %52#1, %54, %56 : index, index, index, index
        }
        scf.yield %43#0 : index
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
        %39 = memref.load %alloc_28[%arg0] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_28[%24] : memref<?xi64>
        %42 = arith.index_cast %41 : i64 to index
        %43:4 = scf.while (%arg5 = %arg4, %arg6 = %idx0, %arg7 = %36, %arg8 = %40) : (index, index, index, index) -> (index, index, index, index) {
          %44 = arith.cmpi ult, %arg8, %42 : index
          %45 = arith.cmpi ult, %arg7, %38 : index
          %46 = arith.andi %45, %44 : i1
          scf.condition(%46) %arg5, %arg6, %arg7, %arg8 : index, index, index, index
        } do {
        ^bb0(%arg5: index, %arg6: index, %arg7: index, %arg8: index):
          %44 = memref.load %alloc_30[%arg8] : memref<?xi64>
          %45 = arith.index_cast %44 : i64 to index
          %46 = memref.load %alloc_30[%arg7] : memref<?xi64>
          %47 = arith.index_cast %46 : i64 to index
          %48 = arith.minui %47, %45 : index
          %49 = arith.cmpi eq, %48, %47 : index
          %50 = arith.cmpi eq, %48, %45 : index
          %51 = arith.andi %49, %50 : i1
          %52:2 = scf.if %51 -> (index, index) {
            %57 = index.add %arg1, %idx1
            %58 = arith.index_cast %57 : index to i64
            %59 = memref.load %alloc_39[%48] : memref<?xi64>
            %60 = arith.cmpi eq, %58, %59 : i64
            %61 = scf.if %60 -> (index) {
              scf.yield %arg5 : index
            } else {
              memref.store %58, %alloc_39[%48] : memref<?xi64>
              %63 = index.add %arg5, %idx1
              scf.yield %63 : index
            }
            %62 = index.add %arg6, %idx1
            scf.yield %61, %62 : index, index
          } else {
            scf.yield %arg5, %arg6 : index, index
          }
          %53 = index.castu %49 : i1 to index
          %54 = index.add %arg7, %53
          %55 = index.castu %50 : i1 to index
          %56 = index.add %arg8, %55
          scf.yield %52#0, %52#1, %54, %56 : index, index, index, index
        }
        scf.yield %43#0 : index
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
        %39 = memref.load %alloc_28[%arg0] : memref<?xi64>
        %40 = arith.index_cast %39 : i64 to index
        %41 = memref.load %alloc_28[%25] : memref<?xi64>
        %42 = arith.index_cast %41 : i64 to index
        %43:4 = scf.while (%arg5 = %arg4, %arg6 = %idx0, %arg7 = %36, %arg8 = %40) : (index, index, index, index) -> (index, index, index, index) {
          %44 = arith.cmpi ult, %arg8, %42 : index
          %45 = arith.cmpi ult, %arg7, %38 : index
          %46 = arith.andi %45, %44 : i1
          scf.condition(%46) %arg5, %arg6, %arg7, %arg8 : index, index, index, index
        } do {
        ^bb0(%arg5: index, %arg6: index, %arg7: index, %arg8: index):
          %44 = memref.load %alloc_30[%arg8] : memref<?xi64>
          %45 = arith.index_cast %44 : i64 to index
          %46 = memref.load %alloc_30[%arg7] : memref<?xi64>
          %47 = arith.index_cast %46 : i64 to index
          %48 = arith.minui %47, %45 : index
          %49 = arith.cmpi eq, %48, %47 : index
          %50 = arith.cmpi eq, %48, %45 : index
          %51 = arith.andi %49, %50 : i1
          %52:2 = scf.if %51 -> (index, index) {
            %57 = memref.load %alloc_16[%arg3] : memref<?xf64>
            %58 = memref.load %alloc_36[%arg7] : memref<?xf64>
            %59 = arith.mulf %57, %58 : f64
            %60 = memref.load %alloc_44[%48] : memref<?xi32>
            %61 = arith.cmpi eq, %60, %24 : i32
            %62 = scf.if %61 -> (f64) {
              %67 = memref.load %alloc_43[%48] : memref<?xf64>
              scf.yield %67 : f64
            } else {
              scf.yield %cst : f64
            }
            %63 = arith.addf %62, %59 : f64
            %64 = arith.cmpi ne, %60, %24 : i32
            %65 = scf.if %64 -> (index) {
              memref.store %24, %alloc_44[%48] : memref<?xi32>
              %67 = arith.index_cast %48 : index to i64
              memref.store %67, %alloc_45[%arg5] : memref<?xi64>
              %68 = index.add %arg5, %idx1
              scf.yield %68 : index
            } else {
              scf.yield %arg5 : index
            }
            memref.store %63, %alloc_43[%48] : memref<?xf64>
            %66 = index.add %arg6, %idx1
            scf.yield %65, %66 : index, index
          } else {
            scf.yield %arg5, %arg6 : index, index
          }
          %53 = index.castu %49 : i1 to index
          %54 = index.add %arg7, %53
          %55 = index.castu %50 : i1 to index
          %56 = index.add %arg8, %55
          scf.yield %52#0, %52#1, %54, %56 : index, index, index, index
        }
        scf.yield %43#0 : index
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
