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
    %6 = "ta.dense_tensor_decl"(%5) <{allocator = "default", format = "Dense"}> : (index) -> tensor<?x256xf64>
    %7 = "ta.dense_tensor_decl"(%4) <{allocator = "default", format = "Dense"}> : (index) -> tensor<?x256xf64>
    "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%6) <{value = 1.700000e+00 : f64}> : (tensor<?x256xf64>) -> ()
    "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<?x256xf64>) -> ()
    %8 = "ta.getTime"() : () -> f64
    %9 = "ta.mul"(%3, %6, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["CSR", "Dense", "Dense"], indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x256xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<?x256xf64>
    "ta.set_op"(%9, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<?x256xf64>, tensor<?x256xf64>) -> ()
    %10 = "ta.getTime"() : () -> f64
    %11 = "ta.reduce"(%7) : (tensor<?x256xf64>) -> f64
    "ta.print"(%11) : (f64) -> ()
    "ta.print_elapsed_time"(%8, %10) : (f64, f64) -> ()
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
  %6 = "ta.dense_tensor_decl"(%5) <{allocator = "default", format = "Dense"}> : (index) -> tensor<?x256xf64>
  %7 = "ta.dense_tensor_decl"(%4) <{allocator = "default", format = "Dense"}> : (index) -> tensor<?x256xf64>
  "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%6) <{value = 1.700000e+00 : f64}> : (tensor<?x256xf64>) -> ()
  "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<?x256xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "ta.mul"(%3, %6, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["CSR", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x256xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<?x256xf64>
  "ta.set_op"(%9, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<?x256xf64>, tensor<?x256xf64>) -> ()
  %10 = "ta.getTime"() : () -> f64
  %11 = "ta.reduce"(%7) : (tensor<?x256xf64>) -> f64
  "ta.print"(%11) : (f64) -> ()
  "ta.print_elapsed_time"(%8, %10) : (f64, f64) -> ()
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
  %6 = "ta.dense_tensor_decl"(%5) <{allocator = "default", format = "Dense"}> : (index) -> tensor<?x256xf64>
  %7 = "ta.dense_tensor_decl"(%4) <{allocator = "default", format = "Dense"}> : (index) -> tensor<?x256xf64>
  "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%6) <{value = 1.700000e+00 : f64}> : (tensor<?x256xf64>) -> ()
  "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<?x256xf64>) -> ()
  %8 = "ta.getTime"() : () -> f64
  %9 = "it.itree"(%7) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x256xf64>):
    %12 = "it.RootOp"() : () -> !it.index_tree
    %13 = "it.IndexOp"(%12) <{IsParallel = true}> : (!it.index_tree) -> !it.index
    %14 = "it.IndexOp"(%13) <{IsParallel = false}> : (!it.index) -> !it.index
    %15 = "it.IndexOp"(%14) <{IsParallel = false}> : (!it.index) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %13) <{dim = 0 : ui32}> : (tensor<?x256xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %15, %pos) <{dim = 1 : ui32}> : (tensor<?x256xf64>, !it.index, index) -> (index, index)
    %16 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x256xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%3, %13) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%3, %14, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %17 = "it.OperandOp"(%3, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%6, %14) <{dim = 0 : ui32}> : (tensor<?x256xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%6, %15, %pos_7) <{dim = 1 : ui32}> : (tensor<?x256xf64>, !it.index, index) -> (index, index)
    %18 = "it.OperandOp"(%6, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x256xf64>, index, index, index, index) -> !it.operand
    %19 = "it.ComputeOp"(%15, %16, %17, %18) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x256xf64>
    it.yield %19 : tensor<?x256xf64>
  }) : (tensor<?x256xf64>) -> tensor<?x256xf64>
  "ta.set_op"(%9, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<?x256xf64>, tensor<?x256xf64>) -> ()
  %10 = "ta.getTime"() : () -> f64
  %11 = "ta.reduce"(%7) : (tensor<?x256xf64>) -> f64
  "ta.print"(%11) : (f64) -> ()
  "ta.print_elapsed_time"(%8, %10) : (f64, f64) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainInference (indextree-domain-inference) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %0 = "ta.spTensor_decl"() <{allocator = "default", format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %1 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %2 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %3 = "ta.dense_tensor_decl"(%2) <{allocator = "default", format = "Dense"}> : (index) -> tensor<?x256xf64>
  %4 = "ta.dense_tensor_decl"(%1) <{allocator = "default", format = "Dense"}> : (index) -> tensor<?x256xf64>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%3) <{value = 1.700000e+00 : f64}> : (tensor<?x256xf64>) -> ()
  "ta.fill"(%4) <{value = 0.000000e+00 : f64}> : (tensor<?x256xf64>) -> ()
  %5 = "ta.getTime"() : () -> f64
  %6 = "it.itree"(%4) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x256xf64>):
    %9 = "it.RootOp"() : () -> !it.index_tree
    %10 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %11 = "it.IndexOp"(%9, %10) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %12 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x256xf64>) -> !it.domain
    %13 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %14 = "it.DomainIntersectionOp"(%13, %12) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %15 = "it.IndexOp"(%11, %14) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %16 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x256xf64>) -> !it.domain
    %17 = "it.IndexOp"(%15, %16) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %11) <{dim = 0 : ui32}> : (tensor<?x256xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %17, %pos) <{dim = 1 : ui32}> : (tensor<?x256xf64>, !it.index, index) -> (index, index)
    %18 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x256xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %11) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %15, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %19 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%3, %15) <{dim = 0 : ui32}> : (tensor<?x256xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%3, %17, %pos_7) <{dim = 1 : ui32}> : (tensor<?x256xf64>, !it.index, index) -> (index, index)
    %20 = "it.OperandOp"(%3, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x256xf64>, index, index, index, index) -> !it.operand
    %21 = "it.ComputeOp"(%17, %18, %19, %20) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x256xf64>
    it.yield %21 : tensor<?x256xf64>
  }) : (tensor<?x256xf64>) -> tensor<?x256xf64>
  "ta.set_op"(%6, %4) {__beta__ = 0.000000e+00 : f64} : (tensor<?x256xf64>, tensor<?x256xf64>) -> ()
  %7 = "ta.getTime"() : () -> f64
  %8 = "ta.reduce"(%4) : (tensor<?x256xf64>) -> f64
  "ta.print"(%8) : (f64) -> ()
  "ta.print_elapsed_time"(%5, %7) : (f64, f64) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainConcretization (indextree-domain-concretization) //----- //
func.func @main() {
  %idx256 = index.constant 256
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
  %7 = "ta.dense_tensor_decl"(%6) <{allocator = "default", format = "Dense"}> : (index) -> tensor<?x256xf64>
  %8 = "ta.dense_tensor_decl"(%5) <{allocator = "default", format = "Dense"}> : (index) -> tensor<?x256xf64>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%7) <{value = 1.700000e+00 : f64}> : (tensor<?x256xf64>) -> ()
  "ta.fill"(%8) <{value = 0.000000e+00 : f64}> : (tensor<?x256xf64>) -> ()
  %9 = "ta.getTime"() : () -> f64
  %10 = "it.itree"(%8) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x256xf64>):
    %13 = "it.RootOp"() : () -> !it.index_tree
    %14 = "it.DenseDomainOp"(%1, %0) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %15 = "it.IndexOp"(%13, %14) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%0, %15) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %16 = "it.SparseDomainOp"(%0, %2, %3, %dim, %dim_0, %4, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %17 = "it.IndexOp"(%15, %16) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %18 = "it.DenseDomainOp"(%idx256, %7) <{dims = [1 : i32]}> : (index, tensor<?x256xf64>) -> !it.domain
    %19 = "it.IndexOp"(%17, %18) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_1, %pos_2 = "it.IndexToTensorDim"(%arg0, %15) <{dim = 0 : ui32}> : (tensor<?x256xf64>, !it.index) -> (index, index)
    %crd_3, %pos_4 = "it.IndexToTensorDim"(%arg0, %19, %pos_2) <{dim = 1 : ui32}> : (tensor<?x256xf64>, !it.index, index) -> (index, index)
    %20 = "it.LHSOperandOp"(%arg0, %pos_2, %pos_4, %crd_1, %crd_3) : (tensor<?x256xf64>, index, index, index, index) -> !it.operand
    %crd_5, %pos_6 = "it.IndexToTensorDim"(%0, %17, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %21 = "it.OperandOp"(%0, %pos, %pos_6, %crd, %crd_5) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_7, %pos_8 = "it.IndexToTensorDim"(%7, %17) <{dim = 0 : ui32}> : (tensor<?x256xf64>, !it.index) -> (index, index)
    %crd_9, %pos_10 = "it.IndexToTensorDim"(%7, %19, %pos_8) <{dim = 1 : ui32}> : (tensor<?x256xf64>, !it.index, index) -> (index, index)
    %22 = "it.OperandOp"(%7, %pos_8, %pos_10, %crd_7, %crd_9) : (tensor<?x256xf64>, index, index, index, index) -> !it.operand
    %23 = "it.ComputeOp"(%19, %20, %21, %22) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x256xf64>
    it.yield %23 : tensor<?x256xf64>
  }) : (tensor<?x256xf64>) -> tensor<?x256xf64>
  "ta.set_op"(%10, %8) {__beta__ = 0.000000e+00 : f64} : (tensor<?x256xf64>, tensor<?x256xf64>) -> ()
  %11 = "ta.getTime"() : () -> f64
  %12 = "ta.reduce"(%8) : (tensor<?x256xf64>) -> f64
  "ta.print"(%12) : (f64) -> ()
  "ta.print_elapsed_time"(%9, %11) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx256 = index.constant 256
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
  %29 = "ta.dense_tensor_decl"(%28) <{allocator = "default", format = "Dense"}> : (index) -> tensor<?x256xf64>
  %30 = "ta.dense_tensor_decl"(%27) <{allocator = "default", format = "Dense"}> : (index) -> tensor<?x256xf64>
  "ta.fill"(%29) <{value = 1.700000e+00 : f64}> : (tensor<?x256xf64>) -> ()
  "ta.fill"(%30) <{value = 0.000000e+00 : f64}> : (tensor<?x256xf64>) -> ()
  %31 = "ta.getTime"() : () -> f64
  %32 = "it.itree"(%30) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x256xf64>):
    %35 = "it.RootOp"() : () -> !it.index_tree
    %36 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %37) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %38 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_27, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %40 = "it.DenseDomainOp"(%idx256, %29) <{dims = [1 : i32]}> : (index, tensor<?x256xf64>) -> !it.domain
    %41 = "it.IndexOp"(%39, %40) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_28, %pos_29 = "it.IndexToTensorDim"(%arg0, %37) <{dim = 0 : ui32}> : (tensor<?x256xf64>, !it.index) -> (index, index)
    %crd_30, %pos_31 = "it.IndexToTensorDim"(%arg0, %41, %pos_29) <{dim = 1 : ui32}> : (tensor<?x256xf64>, !it.index, index) -> (index, index)
    %42 = "it.LHSOperandOp"(%arg0, %pos_29, %pos_31, %crd_28, %crd_30) : (tensor<?x256xf64>, index, index, index, index) -> !it.operand
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%22, %39, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%22, %pos, %pos_33, %crd, %crd_32) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%29, %39) <{dim = 0 : ui32}> : (tensor<?x256xf64>, !it.index) -> (index, index)
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%29, %41, %pos_35) <{dim = 1 : ui32}> : (tensor<?x256xf64>, !it.index, index) -> (index, index)
    %44 = "it.OperandOp"(%29, %pos_35, %pos_37, %crd_34, %crd_36) : (tensor<?x256xf64>, index, index, index, index) -> !it.operand
    %45 = "it.ComputeOp"(%41, %42, %43, %44) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x256xf64>
    it.yield %45 : tensor<?x256xf64>
  }) : (tensor<?x256xf64>) -> tensor<?x256xf64>
  "ta.set_op"(%32, %30) {__beta__ = 0.000000e+00 : f64} : (tensor<?x256xf64>, tensor<?x256xf64>) -> ()
  %33 = "ta.getTime"() : () -> f64
  %34 = "ta.reduce"(%30) : (tensor<?x256xf64>) -> f64
  "ta.print"(%34) : (f64) -> ()
  "ta.print_elapsed_time"(%31, %33) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx256 = index.constant 256
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
  %alloc_28 = memref.alloc(%28) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  %29 = bufferization.to_tensor %alloc_28 restrict writable : memref<?x256xf64>
  %alloc_29 = memref.alloc(%27) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  %30 = bufferization.to_tensor %alloc_29 restrict writable : memref<?x256xf64>
  "ta.fill"(%29) <{value = 1.700000e+00 : f64}> : (tensor<?x256xf64>) -> ()
  "ta.fill"(%30) <{value = 0.000000e+00 : f64}> : (tensor<?x256xf64>) -> ()
  %31 = "ta.getTime"() : () -> f64
  %32 = "it.itree"(%30) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x256xf64>):
    %35 = "it.RootOp"() : () -> !it.index_tree
    %36 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %37) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %38 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_27, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %40 = "it.DenseDomainOp"(%idx256, %29) <{dims = [1 : i32]}> : (index, tensor<?x256xf64>) -> !it.domain
    %41 = "it.IndexOp"(%39, %40) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_30, %pos_31 = "it.IndexToTensorDim"(%arg0, %37) <{dim = 0 : ui32}> : (tensor<?x256xf64>, !it.index) -> (index, index)
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%arg0, %41, %pos_31) <{dim = 1 : ui32}> : (tensor<?x256xf64>, !it.index, index) -> (index, index)
    %42 = "it.LHSOperandOp"(%arg0, %pos_31, %pos_33, %crd_30, %crd_32) : (tensor<?x256xf64>, index, index, index, index) -> !it.operand
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%22, %39, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%22, %pos, %pos_35, %crd, %crd_34) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%29, %39) <{dim = 0 : ui32}> : (tensor<?x256xf64>, !it.index) -> (index, index)
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%29, %41, %pos_37) <{dim = 1 : ui32}> : (tensor<?x256xf64>, !it.index, index) -> (index, index)
    %44 = "it.OperandOp"(%29, %pos_37, %pos_39, %crd_36, %crd_38) : (tensor<?x256xf64>, index, index, index, index) -> !it.operand
    %45 = "it.ComputeOp"(%41, %42, %43, %44) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x256xf64>
    it.yield %45 : tensor<?x256xf64>
  }) : (tensor<?x256xf64>) -> tensor<?x256xf64>
  "ta.set_op"(%32, %30) {__beta__ = 0.000000e+00 : f64} : (tensor<?x256xf64>, tensor<?x256xf64>) -> ()
  %33 = "ta.getTime"() : () -> f64
  %34 = "ta.reduce"(%30) : (tensor<?x256xf64>) -> f64
  "ta.print"(%34) : (f64) -> ()
  "ta.print_elapsed_time"(%31, %33) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx256 = index.constant 256
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
  %alloc_28 = memref.alloc(%28) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  %29 = bufferization.to_tensor %alloc_28 restrict writable : memref<?x256xf64>
  %alloc_29 = memref.alloc(%27) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  %30 = bufferization.to_tensor %alloc_29 restrict writable : memref<?x256xf64>
  "ta.fill"(%29) <{value = 1.700000e+00 : f64}> : (tensor<?x256xf64>) -> ()
  "ta.fill"(%30) <{value = 0.000000e+00 : f64}> : (tensor<?x256xf64>) -> ()
  %31 = "ta.getTime"() : () -> f64
  %32 = "it.itree"(%30) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x256xf64>):
    %35 = "it.RootOp"() : () -> !it.index_tree
    %36 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %37) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %38 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_27, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %40 = "it.DenseDomainOp"(%idx256, %29) <{dims = [1 : i32]}> : (index, tensor<?x256xf64>) -> !it.domain
    %41 = "it.IndexOp"(%39, %40) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_30, %pos_31 = "it.IndexToTensorDim"(%arg0, %37) <{dim = 0 : ui32}> : (tensor<?x256xf64>, !it.index) -> (index, index)
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%arg0, %41, %pos_31) <{dim = 1 : ui32}> : (tensor<?x256xf64>, !it.index, index) -> (index, index)
    %42 = "it.LHSOperandOp"(%arg0, %pos_31, %pos_33, %crd_30, %crd_32) : (tensor<?x256xf64>, index, index, index, index) -> !it.operand
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%22, %39, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%22, %pos, %pos_35, %crd, %crd_34) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%29, %39) <{dim = 0 : ui32}> : (tensor<?x256xf64>, !it.index) -> (index, index)
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%29, %41, %pos_37) <{dim = 1 : ui32}> : (tensor<?x256xf64>, !it.index, index) -> (index, index)
    %44 = "it.OperandOp"(%29, %pos_37, %pos_39, %crd_36, %crd_38) : (tensor<?x256xf64>, index, index, index, index) -> !it.operand
    %45 = "it.ComputeOp"(%41, %42, %43, %44) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x256xf64>
    it.yield %45 : tensor<?x256xf64>
  }) : (tensor<?x256xf64>) -> tensor<?x256xf64>
  "ta.set_op"(%32, %30) {__beta__ = 0.000000e+00 : f64} : (tensor<?x256xf64>, tensor<?x256xf64>) -> ()
  %33 = "ta.getTime"() : () -> f64
  %34 = "ta.reduce"(%30) : (tensor<?x256xf64>) -> f64
  "ta.print"(%34) : (f64) -> ()
  "ta.print_elapsed_time"(%31, %33) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %idx256 = index.constant 256
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
  %alloc_28 = memref.alloc(%28) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  %29 = bufferization.to_tensor %alloc_28 restrict writable : memref<?x256xf64>
  %alloc_29 = memref.alloc(%27) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  %30 = bufferization.to_tensor %alloc_29 restrict writable : memref<?x256xf64>
  "ta.fill"(%29) <{value = 1.700000e+00 : f64}> : (tensor<?x256xf64>) -> ()
  "ta.fill"(%30) <{value = 0.000000e+00 : f64}> : (tensor<?x256xf64>) -> ()
  %31 = "ta.getTime"() : () -> f64
  %32 = "it.itree"(%30) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x256xf64>):
    %35 = "it.RootOp"() : () -> !it.index_tree
    %36 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %37) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %38 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_27, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %40 = "it.DenseDomainOp"(%idx256, %29) <{dims = [1 : i32]}> : (index, tensor<?x256xf64>) -> !it.domain
    %41 = "it.IndexOp"(%39, %40) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_30, %pos_31 = "it.IndexToTensorDim"(%arg0, %37) <{dim = 0 : ui32}> : (tensor<?x256xf64>, !it.index) -> (index, index)
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%arg0, %41, %pos_31) <{dim = 1 : ui32}> : (tensor<?x256xf64>, !it.index, index) -> (index, index)
    %42 = "it.LHSOperandOp"(%arg0, %pos_31, %pos_33, %crd_30, %crd_32) : (tensor<?x256xf64>, index, index, index, index) -> !it.operand
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%22, %39, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%22, %pos, %pos_35, %crd, %crd_34) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%29, %39) <{dim = 0 : ui32}> : (tensor<?x256xf64>, !it.index) -> (index, index)
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%29, %41, %pos_37) <{dim = 1 : ui32}> : (tensor<?x256xf64>, !it.index, index) -> (index, index)
    %44 = "it.OperandOp"(%29, %pos_37, %pos_39, %crd_36, %crd_38) : (tensor<?x256xf64>, index, index, index, index) -> !it.operand
    %45 = "it.ComputeOp"(%41, %42, %43, %44) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x256xf64>
    it.yield %45 : tensor<?x256xf64>
  }) : (tensor<?x256xf64>) -> tensor<?x256xf64>
  "ta.set_op"(%32, %30) {__beta__ = 0.000000e+00 : f64} : (tensor<?x256xf64>, tensor<?x256xf64>) -> ()
  %33 = "ta.getTime"() : () -> f64
  %34 = "ta.reduce"(%30) : (tensor<?x256xf64>) -> f64
  "ta.print"(%34) : (f64) -> ()
  "ta.print_elapsed_time"(%31, %33) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func @main() {
  %idx256 = index.constant 256
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
  %alloc_28 = memref.alloc(%28) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  %cst_29 = arith.constant 1.700000e+00 : f64
  linalg.fill ins(%cst_29 : f64) outs(%alloc_28 : memref<?x256xf64>)
  %29 = bufferization.to_tensor %alloc_28 restrict writable : memref<?x256xf64>
  %alloc_30 = memref.alloc(%27) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  %cst_31 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_31 : f64) outs(%alloc_30 : memref<?x256xf64>)
  %30 = bufferization.to_tensor %alloc_30 restrict writable : memref<?x256xf64>
  %31 = "ta.getTime"() : () -> f64
  %32 = "it.itree"(%30) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x256xf64>):
    %35 = "it.RootOp"() : () -> !it.index_tree
    %36 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %37) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %38 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_27, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %40 = "it.DenseDomainOp"(%idx256, %29) <{dims = [1 : i32]}> : (index, tensor<?x256xf64>) -> !it.domain
    %41 = "it.IndexOp"(%39, %40) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%arg0, %37) <{dim = 0 : ui32}> : (tensor<?x256xf64>, !it.index) -> (index, index)
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%arg0, %41, %pos_33) <{dim = 1 : ui32}> : (tensor<?x256xf64>, !it.index, index) -> (index, index)
    %42 = "it.LHSOperandOp"(%arg0, %pos_33, %pos_35, %crd_32, %crd_34) : (tensor<?x256xf64>, index, index, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%22, %39, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%22, %pos, %pos_37, %crd, %crd_36) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%29, %39) <{dim = 0 : ui32}> : (tensor<?x256xf64>, !it.index) -> (index, index)
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%29, %41, %pos_39) <{dim = 1 : ui32}> : (tensor<?x256xf64>, !it.index, index) -> (index, index)
    %44 = "it.OperandOp"(%29, %pos_39, %pos_41, %crd_38, %crd_40) : (tensor<?x256xf64>, index, index, index, index) -> !it.operand
    %45 = "it.ComputeOp"(%41, %42, %43, %44) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x256xf64>
    it.yield %45 : tensor<?x256xf64>
  }) : (tensor<?x256xf64>) -> tensor<?x256xf64>
  "ta.set_op"(%32, %30) {__beta__ = 0.000000e+00 : f64} : (tensor<?x256xf64>, tensor<?x256xf64>) -> ()
  %33 = "ta.getTime"() : () -> f64
  %34 = "ta.reduce"(%30) : (tensor<?x256xf64>) -> f64
  "ta.print"(%34) : (f64) -> ()
  "ta.print_elapsed_time"(%31, %33) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func @main() {
  %idx256 = index.constant 256
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
  %alloc_28 = memref.alloc(%28) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  %cst_29 = arith.constant 1.700000e+00 : f64
  linalg.fill ins(%cst_29 : f64) outs(%alloc_28 : memref<?x256xf64>)
  %29 = bufferization.to_tensor %alloc_28 restrict writable : memref<?x256xf64>
  %alloc_30 = memref.alloc(%27) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  %cst_31 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_31 : f64) outs(%alloc_30 : memref<?x256xf64>)
  %30 = bufferization.to_tensor %alloc_30 restrict writable : memref<?x256xf64>
  %31 = "ta.getTime"() : () -> f64
  %32 = "it.itree"(%30) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x256xf64>):
    %35 = "it.RootOp"() : () -> !it.index_tree
    %36 = "it.DenseDomainOp"(%23, %22) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%22, %37) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %38 = "it.SparseDomainOp"(%22, %24, %25, %dim, %dim_27, %26, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %40 = "it.DenseDomainOp"(%idx256, %29) <{dims = [1 : i32]}> : (index, tensor<?x256xf64>) -> !it.domain
    %41 = "it.IndexOp"(%39, %40) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_32, %pos_33 = "it.IndexToTensorDim"(%arg0, %37) <{dim = 0 : ui32}> : (tensor<?x256xf64>, !it.index) -> (index, index)
    %crd_34, %pos_35 = "it.IndexToTensorDim"(%arg0, %41, %pos_33) <{dim = 1 : ui32}> : (tensor<?x256xf64>, !it.index, index) -> (index, index)
    %42 = "it.LHSOperandOp"(%arg0, %pos_33, %pos_35, %crd_32, %crd_34) : (tensor<?x256xf64>, index, index, index, index) -> !it.operand
    %crd_36, %pos_37 = "it.IndexToTensorDim"(%22, %39, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %43 = "it.OperandOp"(%22, %pos, %pos_37, %crd, %crd_36) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_38, %pos_39 = "it.IndexToTensorDim"(%29, %39) <{dim = 0 : ui32}> : (tensor<?x256xf64>, !it.index) -> (index, index)
    %crd_40, %pos_41 = "it.IndexToTensorDim"(%29, %41, %pos_39) <{dim = 1 : ui32}> : (tensor<?x256xf64>, !it.index, index) -> (index, index)
    %44 = "it.OperandOp"(%29, %pos_39, %pos_41, %crd_38, %crd_40) : (tensor<?x256xf64>, index, index, index, index) -> !it.operand
    %45 = "it.ComputeOp"(%41, %42, %43, %44) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x256xf64>
    it.yield %45 : tensor<?x256xf64>
  }) : (tensor<?x256xf64>) -> tensor<?x256xf64>
  "ta.set_op"(%32, %30) {__beta__ = 0.000000e+00 : f64} : (tensor<?x256xf64>, tensor<?x256xf64>) -> ()
  %33 = "ta.getTime"() : () -> f64
  %34 = "ta.reduce"(%30) : (tensor<?x256xf64>) -> f64
  "ta.print"(%34) : (f64) -> ()
  "ta.print_elapsed_time"(%31, %33) : (f64, f64) -> ()
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
  %idx256 = index.constant 256
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
  %alloc_16 = memref.alloc(%26) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?x256xf64>)
  %27 = bufferization.to_tensor %alloc_16 restrict writable : memref<?x256xf64>
  %alloc_17 = memref.alloc(%25) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?x256xf64>)
  %28 = bufferization.to_tensor %alloc_17 restrict writable : memref<?x256xf64>
  %29 = "ta.getTime"() : () -> f64
  %30 = "it.itree"(%28) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x256xf64>):
    %33 = "it.RootOp"() : () -> !it.index_tree
    %34 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %36 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_15, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %38 = "it.DenseDomainOp"(%idx256, %27) <{dims = [1 : i32]}> : (index, tensor<?x256xf64>) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_18, %pos_19 = "it.IndexToTensorDim"(%arg0, %35) <{dim = 0 : ui32}> : (tensor<?x256xf64>, !it.index) -> (index, index)
    %crd_20, %pos_21 = "it.IndexToTensorDim"(%arg0, %39, %pos_19) <{dim = 1 : ui32}> : (tensor<?x256xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos_19, %pos_21, %crd_18, %crd_20) : (tensor<?x256xf64>, index, index, index, index) -> !it.operand
    %crd_22, %pos_23 = "it.IndexToTensorDim"(%20, %37, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%20, %pos, %pos_23, %crd, %crd_22) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_24, %pos_25 = "it.IndexToTensorDim"(%27, %37) <{dim = 0 : ui32}> : (tensor<?x256xf64>, !it.index) -> (index, index)
    %crd_26, %pos_27 = "it.IndexToTensorDim"(%27, %39, %pos_25) <{dim = 1 : ui32}> : (tensor<?x256xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%27, %pos_25, %pos_27, %crd_24, %crd_26) : (tensor<?x256xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x256xf64>
    it.yield %43 : tensor<?x256xf64>
  }) : (tensor<?x256xf64>) -> tensor<?x256xf64>
  "ta.set_op"(%30, %28) {__beta__ = 0.000000e+00 : f64} : (tensor<?x256xf64>, tensor<?x256xf64>) -> ()
  %31 = "ta.getTime"() : () -> f64
  %32 = "ta.reduce"(%28) : (tensor<?x256xf64>) -> f64
  "ta.print"(%32) : (f64) -> ()
  "ta.print_elapsed_time"(%29, %31) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
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
  %idx256 = index.constant 256
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
  %alloc_16 = memref.alloc(%26) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?x256xf64>)
  %27 = bufferization.to_tensor %alloc_16 restrict writable : memref<?x256xf64>
  %alloc_17 = memref.alloc(%25) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?x256xf64>)
  %28 = bufferization.to_tensor %alloc_17 restrict writable : memref<?x256xf64>
  %29 = "ta.getTime"() : () -> f64
  %30 = "it.itree"(%28) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x256xf64>):
    %33 = "it.RootOp"() : () -> !it.index_tree
    %34 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %36 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_15, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %38 = "it.DenseDomainOp"(%idx256, %27) <{dims = [1 : i32]}> : (index, tensor<?x256xf64>) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_25, %pos_26 = "it.IndexToTensorDim"(%arg0, %35) <{dim = 0 : ui32}> : (tensor<?x256xf64>, !it.index) -> (index, index)
    %crd_27, %pos_28 = "it.IndexToTensorDim"(%arg0, %39, %pos_26) <{dim = 1 : ui32}> : (tensor<?x256xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos_26, %pos_28, %crd_25, %crd_27) : (tensor<?x256xf64>, index, index, index, index) -> !it.operand
    %crd_29, %pos_30 = "it.IndexToTensorDim"(%20, %37, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%20, %pos, %pos_30, %crd, %crd_29) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_31, %pos_32 = "it.IndexToTensorDim"(%27, %37) <{dim = 0 : ui32}> : (tensor<?x256xf64>, !it.index) -> (index, index)
    %crd_33, %pos_34 = "it.IndexToTensorDim"(%27, %39, %pos_32) <{dim = 1 : ui32}> : (tensor<?x256xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%27, %pos_32, %pos_34, %crd_31, %crd_33) : (tensor<?x256xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x256xf64>
    it.yield %43 : tensor<?x256xf64>
  }) : (tensor<?x256xf64>) -> tensor<?x256xf64>
  %31 = "ta.getTime"() : () -> f64
  %c0_18 = arith.constant 0 : index
  %alloc_19 = memref.alloc() : memref<1xf64>
  %cst_20 = arith.constant 0.000000e+00 : f64
  memref.store %cst_20, %alloc_19[%c0_18] : memref<1xf64>
  %c0_21 = arith.constant 0 : index
  %c1_22 = arith.constant 1 : index
  %c0_23 = arith.constant 0 : index
  %dim_24 = tensor.dim %30, %c0_23 : tensor<?x256xf64>
  scf.for %arg0 = %c0_21 to %dim_24 step %c1_22 {
    %c1_25 = arith.constant 1 : index
    %dim_26 = tensor.dim %30, %c1_25 : tensor<?x256xf64>
    scf.for %arg1 = %c0_21 to %dim_26 step %c1_22 {
      %extracted = tensor.extract %30[%arg0, %arg1] : tensor<?x256xf64>
      %33 = memref.load %alloc_19[%c0_18] : memref<1xf64>
      %34 = arith.addf %extracted, %33 : f64
      memref.store %34, %alloc_19[%c0_18] : memref<1xf64>
    }
  }
  %32 = memref.load %alloc_19[%c0_18] : memref<1xf64>
  "ta.print"(%32) : (f64) -> ()
  "ta.print_elapsed_time"(%29, %31) : (f64, f64) -> ()
  return
}

// -----// IR Dump After IndexTreeSymbolicComputePass (indextree-symbolic-compute) //----- //
func.func @main() {
  %c256 = arith.constant 256 : index
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
  %idx256 = index.constant 256
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
  %alloc_16 = memref.alloc(%26) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?x256xf64>)
  %27 = bufferization.to_tensor %alloc_16 restrict writable : memref<?x256xf64>
  %alloc_17 = memref.alloc(%25) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?x256xf64>)
  %28 = bufferization.to_tensor %alloc_17 restrict writable : memref<?x256xf64>
  %29 = "ta.getTime"() : () -> f64
  %30 = "it.itree"(%28) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x256xf64>):
    %33 = "it.RootOp"() : () -> !it.index_tree
    %34 = "it.DenseDomainOp"(%21, %20) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %35 = "it.IndexOp"(%33, %34) <{IsParallel = true}> : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%20, %35) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %36 = "it.SparseDomainOp"(%20, %22, %23, %dim, %dim_15, %24, %pos) <{dim = 1 : ui32, format = 2 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xi64>, tensor<?xi64>, index, index, index, index) -> !it.domain
    %37 = "it.IndexOp"(%35, %36) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %38 = "it.DenseDomainOp"(%idx256, %27) <{dims = [1 : i32]}> : (index, tensor<?x256xf64>) -> !it.domain
    %39 = "it.IndexOp"(%37, %38) <{IsParallel = false}> : (!it.index, !it.domain) -> !it.index
    %crd_20, %pos_21 = "it.IndexToTensorDim"(%arg0, %35) <{dim = 0 : ui32}> : (tensor<?x256xf64>, !it.index) -> (index, index)
    %crd_22, %pos_23 = "it.IndexToTensorDim"(%arg0, %39, %pos_21) <{dim = 1 : ui32}> : (tensor<?x256xf64>, !it.index, index) -> (index, index)
    %40 = "it.LHSOperandOp"(%arg0, %pos_21, %pos_23, %crd_20, %crd_22) : (tensor<?x256xf64>, index, index, index, index) -> !it.operand
    %crd_24, %pos_25 = "it.IndexToTensorDim"(%20, %37, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %41 = "it.OperandOp"(%20, %pos, %pos_25, %crd, %crd_24) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_26, %pos_27 = "it.IndexToTensorDim"(%27, %37) <{dim = 0 : ui32}> : (tensor<?x256xf64>, !it.index) -> (index, index)
    %crd_28, %pos_29 = "it.IndexToTensorDim"(%27, %39, %pos_27) <{dim = 1 : ui32}> : (tensor<?x256xf64>, !it.index, index) -> (index, index)
    %42 = "it.OperandOp"(%27, %pos_27, %pos_29, %crd_26, %crd_28) : (tensor<?x256xf64>, index, index, index, index) -> !it.operand
    %43 = "it.ComputeOp"(%39, %40, %41, %42) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x256xf64>
    it.yield %43 : tensor<?x256xf64>
  }) : (tensor<?x256xf64>) -> tensor<?x256xf64>
  %31 = "ta.getTime"() : () -> f64
  %alloc_18 = memref.alloc() : memref<1xf64>
  memref.store %cst_0, %alloc_18[%c0] : memref<1xf64>
  %dim_19 = tensor.dim %30, %c0 : tensor<?x256xf64>
  scf.for %arg0 = %c0 to %dim_19 step %c1 {
    scf.for %arg1 = %c0 to %c256 step %c1 {
      %extracted = tensor.extract %30[%arg0, %arg1] : tensor<?x256xf64>
      %33 = memref.load %alloc_18[%c0] : memref<1xf64>
      %34 = arith.addf %extracted, %33 : f64
      memref.store %34, %alloc_18[%c0] : memref<1xf64>
    }
  }
  %32 = memref.load %alloc_18[%c0] : memref<1xf64>
  "ta.print"(%32) : (f64) -> ()
  "ta.print_elapsed_time"(%29, %31) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func @main() {
  %c256 = arith.constant 256 : index
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
  %idx256 = index.constant 256
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
  %alloc_16 = memref.alloc(%26) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?x256xf64>)
  %27 = bufferization.to_tensor %alloc_16 restrict writable : memref<?x256xf64>
  %alloc_17 = memref.alloc(%25) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_17 : memref<?x256xf64>)
  %28 = bufferization.to_tensor %alloc_17 restrict writable : memref<?x256xf64>
  %29 = "ta.getTime"() : () -> f64
  %30 = "it.itree"(%28) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x256xf64>):
    %33 = scf.forall (%arg1) in (%21) shared_outs(%arg2 = %arg0) -> (tensor<?x256xf64>) {
      %extracted_slice = tensor.extract_slice %arg2[%arg1, 0] [1, 256] [1, 1] : tensor<?x256xf64> to tensor<1x256xf64>
      %c1_20 = arith.constant 1 : index
      %34 = arith.addi %arg1, %c1_20 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %35 = arith.index_cast %extracted : i64 to index
      %extracted_21 = tensor.extract %22[%34] : tensor<?xi64>
      %36 = arith.index_cast %extracted_21 : i64 to index
      %c1_22 = arith.constant 1 : index
      %37 = scf.for %arg3 = %35 to %36 step %c1_22 iter_args(%arg4 = %extracted_slice) -> (tensor<1x256xf64>) {
        %c0_23 = arith.constant 0 : index
        %c1_24 = arith.constant 1 : index
        %38 = scf.for %arg5 = %c0_23 to %idx256 step %c1_24 iter_args(%arg6 = %arg4) -> (tensor<1x256xf64>) {
          %idx0 = index.constant 0
          %39 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %40 = arith.index_cast %39 : i64 to index
          %41 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %42 = arith.index_cast %41 : i64 to index
          %43 = "ta.TAExtractOp"(%20, %arg3, %arg1, %40) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %extracted_25 = tensor.extract %27[%42, %arg5] : tensor<?x256xf64>
          %44 = arith.mulf %43, %extracted_25 : f64
          %extracted_26 = tensor.extract %arg6[%idx0, %arg5] : tensor<1x256xf64>
          %45 = arith.addf %extracted_26, %44 : f64
          %inserted = tensor.insert %45 into %arg6[%idx0, %arg5] : tensor<1x256xf64>
          scf.yield %inserted : tensor<1x256xf64>
        }
        scf.yield %38 : tensor<1x256xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %37 into %arg2[%arg1, 0] [1, 256] [1, 1] : tensor<1x256xf64> into tensor<?x256xf64>
      }
    }
    it.yield %33 : tensor<?x256xf64>
  }) : (tensor<?x256xf64>) -> tensor<?x256xf64>
  %31 = "ta.getTime"() : () -> f64
  %alloc_18 = memref.alloc() : memref<1xf64>
  memref.store %cst_0, %alloc_18[%c0] : memref<1xf64>
  %dim_19 = tensor.dim %30, %c0 : tensor<?x256xf64>
  scf.for %arg0 = %c0 to %dim_19 step %c1 {
    scf.for %arg1 = %c0 to %c256 step %c1 {
      %extracted = tensor.extract %30[%arg0, %arg1] : tensor<?x256xf64>
      %33 = memref.load %alloc_18[%c0] : memref<1xf64>
      %34 = arith.addf %extracted, %33 : f64
      memref.store %34, %alloc_18[%c0] : memref<1xf64>
    }
  }
  %32 = memref.load %alloc_18[%c0] : memref<1xf64>
  "ta.print"(%32) : (f64) -> ()
  "ta.print_elapsed_time"(%29, %31) : (f64, f64) -> ()
  return
}

// -----// IR Dump After TensorAlgebraWorkspaceOptimizations (ta-workspace-optimizations) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c256 = arith.constant 256 : index
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
  %idx256 = index.constant 256
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
  %alloc_15 = memref.alloc(%24) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_15 : memref<?x256xf64>)
  %25 = bufferization.to_tensor %alloc_15 restrict writable : memref<?x256xf64>
  %alloc_16 = memref.alloc(%23) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_16 : memref<?x256xf64>)
  %26 = bufferization.to_tensor %alloc_16 restrict writable : memref<?x256xf64>
  %27 = "ta.getTime"() : () -> f64
  %28 = "it.itree"(%26) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x256xf64>):
    %31 = scf.forall (%arg1) in (%21) shared_outs(%arg2 = %arg0) -> (tensor<?x256xf64>) {
      %extracted_slice = tensor.extract_slice %arg2[%arg1, 0] [1, 256] [1, 1] : tensor<?x256xf64> to tensor<1x256xf64>
      %32 = arith.addi %arg1, %c1 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %33 = arith.index_cast %extracted : i64 to index
      %extracted_18 = tensor.extract %22[%32] : tensor<?xi64>
      %34 = arith.index_cast %extracted_18 : i64 to index
      %35 = scf.for %arg3 = %33 to %34 step %c1 iter_args(%arg4 = %extracted_slice) -> (tensor<1x256xf64>) {
        %36 = scf.for %arg5 = %c0 to %idx256 step %c1 iter_args(%arg6 = %arg4) -> (tensor<1x256xf64>) {
          %37 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %38 = arith.index_cast %37 : i64 to index
          %39 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %40 = arith.index_cast %39 : i64 to index
          %41 = "ta.TAExtractOp"(%20, %arg3, %arg1, %38) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %extracted_19 = tensor.extract %25[%40, %arg5] : tensor<?x256xf64>
          %42 = arith.mulf %41, %extracted_19 : f64
          %extracted_20 = tensor.extract %arg6[%idx0, %arg5] : tensor<1x256xf64>
          %43 = arith.addf %extracted_20, %42 : f64
          %inserted = tensor.insert %43 into %arg6[%idx0, %arg5] : tensor<1x256xf64>
          scf.yield %inserted : tensor<1x256xf64>
        }
        scf.yield %36 : tensor<1x256xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %35 into %arg2[%arg1, 0] [1, 256] [1, 1] : tensor<1x256xf64> into tensor<?x256xf64>
      }
    }
    it.yield %31 : tensor<?x256xf64>
  }) : (tensor<?x256xf64>) -> tensor<?x256xf64>
  %29 = "ta.getTime"() : () -> f64
  %alloc_17 = memref.alloc() : memref<1xf64>
  memref.store %cst_0, %alloc_17[%c0] : memref<1xf64>
  %dim = tensor.dim %28, %c0 : tensor<?x256xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    scf.for %arg1 = %c0 to %c256 step %c1 {
      %extracted = tensor.extract %28[%arg0, %arg1] : tensor<?x256xf64>
      %31 = memref.load %alloc_17[%c0] : memref<1xf64>
      %32 = arith.addf %extracted, %31 : f64
      memref.store %32, %alloc_17[%c0] : memref<1xf64>
    }
  }
  %30 = memref.load %alloc_17[%c0] : memref<1xf64>
  "ta.print"(%30) : (f64) -> ()
  "ta.print_elapsed_time"(%27, %29) : (f64, f64) -> ()
  return
}

// -----// IR Dump After ConvertSymbolicDomainsPass () //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c256 = arith.constant 256 : index
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
  %idx256 = index.constant 256
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
  %alloc_15 = memref.alloc(%24) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_15 : memref<?x256xf64>)
  %25 = bufferization.to_tensor %alloc_15 restrict writable : memref<?x256xf64>
  %alloc_16 = memref.alloc(%23) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_16 : memref<?x256xf64>)
  %26 = bufferization.to_tensor %alloc_16 restrict writable : memref<?x256xf64>
  %27 = "ta.getTime"() : () -> f64
  %28 = "it.itree"(%26) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x256xf64>):
    %31 = scf.forall (%arg1) in (%21) shared_outs(%arg2 = %arg0) -> (tensor<?x256xf64>) {
      %extracted_slice = tensor.extract_slice %arg2[%arg1, 0] [1, 256] [1, 1] : tensor<?x256xf64> to tensor<1x256xf64>
      %32 = arith.addi %arg1, %c1 : index
      %extracted = tensor.extract %22[%arg1] : tensor<?xi64>
      %33 = arith.index_cast %extracted : i64 to index
      %extracted_18 = tensor.extract %22[%32] : tensor<?xi64>
      %34 = arith.index_cast %extracted_18 : i64 to index
      %35 = scf.for %arg3 = %33 to %34 step %c1 iter_args(%arg4 = %extracted_slice) -> (tensor<1x256xf64>) {
        %36 = scf.for %arg5 = %c0 to %idx256 step %c1 iter_args(%arg6 = %arg4) -> (tensor<1x256xf64>) {
          %37 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %38 = arith.index_cast %37 : i64 to index
          %39 = "ta.SpTensorGetCrd"(%20, %arg3) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %40 = arith.index_cast %39 : i64 to index
          %41 = "ta.TAExtractOp"(%20, %arg3, %arg1, %38) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
          %extracted_19 = tensor.extract %25[%40, %arg5] : tensor<?x256xf64>
          %42 = arith.mulf %41, %extracted_19 : f64
          %extracted_20 = tensor.extract %arg6[%idx0, %arg5] : tensor<1x256xf64>
          %43 = arith.addf %extracted_20, %42 : f64
          %inserted = tensor.insert %43 into %arg6[%idx0, %arg5] : tensor<1x256xf64>
          scf.yield %inserted : tensor<1x256xf64>
        }
        scf.yield %36 : tensor<1x256xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %35 into %arg2[%arg1, 0] [1, 256] [1, 1] : tensor<1x256xf64> into tensor<?x256xf64>
      }
    }
    it.yield %31 : tensor<?x256xf64>
  }) : (tensor<?x256xf64>) -> tensor<?x256xf64>
  %29 = "ta.getTime"() : () -> f64
  %alloc_17 = memref.alloc() : memref<1xf64>
  memref.store %cst_0, %alloc_17[%c0] : memref<1xf64>
  %dim = tensor.dim %28, %c0 : tensor<?x256xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    scf.for %arg1 = %c0 to %c256 step %c1 {
      %extracted = tensor.extract %28[%arg0, %arg1] : tensor<?x256xf64>
      %31 = memref.load %alloc_17[%c0] : memref<1xf64>
      %32 = arith.addf %extracted, %31 : f64
      memref.store %32, %alloc_17[%c0] : memref<1xf64>
    }
  }
  %30 = memref.load %alloc_17[%c0] : memref<1xf64>
  "ta.print"(%30) : (f64) -> ()
  "ta.print_elapsed_time"(%27, %29) : (f64, f64) -> ()
  return
}

// -----// IR Dump After SparseTensorConversionPass (convert-sparse-tensor) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c256 = arith.constant 256 : index
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
  %idx256 = index.constant 256
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
  %idx0_15 = index.constant 0
  %idx0_16 = index.constant 0
  %20 = builtin.unrealized_conversion_cast %from_elements, %idx0_15, %11, %idx0_16, %15, %16, %19 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_17 = index.constant 0
  %extracted = tensor.extract %from_elements[%idx0_17] : tensor<2xindex>
  %idx0_18 = index.constant 0
  %extracted_19 = tensor.extract %from_elements[%idx0_18] : tensor<2xindex>
  %idx1 = index.constant 1
  %extracted_20 = tensor.extract %from_elements[%idx1] : tensor<2xindex>
  %alloc_21 = memref.alloc(%extracted_20) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<?x256xf64>)
  %21 = bufferization.to_tensor %alloc_21 restrict writable : memref<?x256xf64>
  %alloc_22 = memref.alloc(%extracted_19) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_22 : memref<?x256xf64>)
  %22 = bufferization.to_tensor %alloc_22 restrict writable : memref<?x256xf64>
  %23 = call @getTime() : () -> f64
  %24 = "it.itree"(%22) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x256xf64>):
    %27 = scf.forall (%arg1) in (%extracted) shared_outs(%arg2 = %arg0) -> (tensor<?x256xf64>) {
      %extracted_slice = tensor.extract_slice %arg2[%arg1, 0] [1, 256] [1, 1] : tensor<?x256xf64> to tensor<1x256xf64>
      %28 = arith.addi %arg1, %c1 : index
      %extracted_24 = tensor.extract %15[%arg1] : tensor<?xi64>
      %29 = arith.index_cast %extracted_24 : i64 to index
      %extracted_25 = tensor.extract %15[%28] : tensor<?xi64>
      %30 = arith.index_cast %extracted_25 : i64 to index
      %31 = scf.for %arg3 = %29 to %30 step %c1 iter_args(%arg4 = %extracted_slice) -> (tensor<1x256xf64>) {
        %32 = scf.for %arg5 = %c0 to %idx256 step %c1 iter_args(%arg6 = %arg4) -> (tensor<1x256xf64>) {
          %extracted_26 = tensor.extract %16[%arg3] : tensor<?xi64>
          %33 = arith.index_cast %extracted_26 : i64 to index
          %extracted_27 = tensor.extract %16[%arg3] : tensor<?xi64>
          %34 = arith.index_cast %extracted_27 : i64 to index
          %extracted_28 = tensor.extract %19[%arg3] : tensor<?xf64>
          %extracted_29 = tensor.extract %21[%34, %arg5] : tensor<?x256xf64>
          %35 = arith.mulf %extracted_28, %extracted_29 : f64
          %extracted_30 = tensor.extract %arg6[%idx0, %arg5] : tensor<1x256xf64>
          %36 = arith.addf %extracted_30, %35 : f64
          %inserted = tensor.insert %36 into %arg6[%idx0, %arg5] : tensor<1x256xf64>
          scf.yield %inserted : tensor<1x256xf64>
        }
        scf.yield %32 : tensor<1x256xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %31 into %arg2[%arg1, 0] [1, 256] [1, 1] : tensor<1x256xf64> into tensor<?x256xf64>
      }
    }
    it.yield %27 : tensor<?x256xf64>
  }) : (tensor<?x256xf64>) -> tensor<?x256xf64>
  %25 = call @getTime() : () -> f64
  %alloc_23 = memref.alloc() : memref<1xf64>
  memref.store %cst_0, %alloc_23[%c0] : memref<1xf64>
  %dim = tensor.dim %24, %c0 : tensor<?x256xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    scf.for %arg1 = %c0 to %c256 step %c1 {
      %extracted_24 = tensor.extract %24[%arg0, %arg1] : tensor<?x256xf64>
      %27 = memref.load %alloc_23[%c0] : memref<1xf64>
      %28 = arith.addf %extracted_24, %27 : f64
      memref.store %28, %alloc_23[%c0] : memref<1xf64>
    }
  }
  %26 = memref.load %alloc_23[%c0] : memref<1xf64>
  "ta.print"(%26) : (f64) -> ()
  call @printElapsedTime(%23, %25) : (f64, f64) -> ()
  return
}

// -----// IR Dump After IndexTreeInliningPass () //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c256 = arith.constant 256 : index
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
  %idx256 = index.constant 256
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
  %idx0_15 = index.constant 0
  %idx0_16 = index.constant 0
  %20 = builtin.unrealized_conversion_cast %from_elements, %idx0_15, %11, %idx0_16, %15, %16, %19 : tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64> to !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %idx0_17 = index.constant 0
  %idx0_18 = index.constant 0
  %idx1 = index.constant 1
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x256xf64>)
  %21 = bufferization.to_tensor %alloc_19 restrict writable : memref<?x256xf64>
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x256xf64>)
  %22 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x256xf64>
  %23 = call @getTime() : () -> f64
  %24 = scf.forall (%arg0) in (%9) shared_outs(%arg1 = %22) -> (tensor<?x256xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 256] [1, 1] : tensor<?x256xf64> to tensor<1x256xf64>
    %27 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %15[%arg0] : tensor<?xi64>
    %28 = arith.index_cast %extracted : i64 to index
    %extracted_22 = tensor.extract %15[%27] : tensor<?xi64>
    %29 = arith.index_cast %extracted_22 : i64 to index
    %30 = scf.for %arg2 = %28 to %29 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x256xf64>) {
      %31 = scf.for %arg4 = %c0 to %idx256 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x256xf64>) {
        %extracted_23 = tensor.extract %16[%arg2] : tensor<?xi64>
        %32 = arith.index_cast %extracted_23 : i64 to index
        %extracted_24 = tensor.extract %16[%arg2] : tensor<?xi64>
        %33 = arith.index_cast %extracted_24 : i64 to index
        %extracted_25 = tensor.extract %19[%arg2] : tensor<?xf64>
        %extracted_26 = tensor.extract %21[%33, %arg4] : tensor<?x256xf64>
        %34 = arith.mulf %extracted_25, %extracted_26 : f64
        %extracted_27 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x256xf64>
        %35 = arith.addf %extracted_27, %34 : f64
        %inserted = tensor.insert %35 into %arg5[%idx0, %arg4] : tensor<1x256xf64>
        scf.yield %inserted : tensor<1x256xf64>
      }
      scf.yield %31 : tensor<1x256xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %30 into %arg1[%arg0, 0] [1, 256] [1, 1] : tensor<1x256xf64> into tensor<?x256xf64>
    }
  }
  %25 = call @getTime() : () -> f64
  %alloc_21 = memref.alloc() : memref<1xf64>
  memref.store %cst_0, %alloc_21[%c0] : memref<1xf64>
  %dim = tensor.dim %24, %c0 : tensor<?x256xf64>
  scf.for %arg0 = %c0 to %dim step %c1 {
    scf.for %arg1 = %c0 to %c256 step %c1 {
      %extracted = tensor.extract %24[%arg0, %arg1] : tensor<?x256xf64>
      %27 = memref.load %alloc_21[%c0] : memref<1xf64>
      %28 = arith.addf %extracted, %27 : f64
      memref.store %28, %alloc_21[%c0] : memref<1xf64>
    }
  }
  %26 = memref.load %alloc_21[%c0] : memref<1xf64>
  "ta.print"(%26) : (f64) -> ()
  call @printElapsedTime(%23, %25) : (f64, f64) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c256 = arith.constant 256 : index
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
  %idx256 = index.constant 256
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
  %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x256xf64>)
  %10 = bufferization.to_tensor %alloc_11 restrict writable : memref<?x256xf64>
  %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x256xf64>)
  %11 = bufferization.to_tensor %alloc_12 restrict writable : memref<?x256xf64>
  %12 = call @getTime() : () -> f64
  %13 = scf.forall (%arg0) in (%5) shared_outs(%arg1 = %11) -> (tensor<?x256xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 256] [1, 1] : tensor<?x256xf64> to tensor<1x256xf64>
    %16 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %7[%arg0] : tensor<?xi64>
    %17 = arith.index_cast %extracted : i64 to index
    %extracted_14 = tensor.extract %7[%16] : tensor<?xi64>
    %18 = arith.index_cast %extracted_14 : i64 to index
    %19 = scf.for %arg2 = %17 to %18 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x256xf64>) {
      %20 = scf.for %arg4 = %c0 to %idx256 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x256xf64>) {
        %extracted_15 = tensor.extract %8[%arg2] : tensor<?xi64>
        %21 = arith.index_cast %extracted_15 : i64 to index
        %extracted_16 = tensor.extract %9[%arg2] : tensor<?xf64>
        %extracted_17 = tensor.extract %10[%21, %arg4] : tensor<?x256xf64>
        %22 = arith.mulf %extracted_16, %extracted_17 : f64
        %extracted_18 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x256xf64>
        %23 = arith.addf %extracted_18, %22 : f64
        %inserted = tensor.insert %23 into %arg5[%idx0, %arg4] : tensor<1x256xf64>
        scf.yield %inserted : tensor<1x256xf64>
      }
      scf.yield %20 : tensor<1x256xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %19 into %arg1[%arg0, 0] [1, 256] [1, 1] : tensor<1x256xf64> into tensor<?x256xf64>
    }
  }
  %14 = call @getTime() : () -> f64
  %alloc_13 = memref.alloc() : memref<1xf64>
  memref.store %cst_0, %alloc_13[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %5 step %c1 {
    scf.for %arg1 = %c0 to %c256 step %c1 {
      %extracted = tensor.extract %13[%arg0, %arg1] : tensor<?x256xf64>
      %16 = memref.load %alloc_13[%c0] : memref<1xf64>
      %17 = arith.addf %extracted, %16 : f64
      memref.store %17, %alloc_13[%c0] : memref<1xf64>
    }
  }
  %15 = memref.load %alloc_13[%c0] : memref<1xf64>
  "ta.print"(%15) : (f64) -> ()
  call @printElapsedTime(%12, %14) : (f64, f64) -> ()
  return
}

// -----// IR Dump After LoopInvariantCodeMotion (loop-invariant-code-motion) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c256 = arith.constant 256 : index
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
  %idx256 = index.constant 256
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
  %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x256xf64>)
  %10 = bufferization.to_tensor %alloc_11 restrict writable : memref<?x256xf64>
  %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x256xf64>)
  %11 = bufferization.to_tensor %alloc_12 restrict writable : memref<?x256xf64>
  %12 = call @getTime() : () -> f64
  %13 = scf.forall (%arg0) in (%5) shared_outs(%arg1 = %11) -> (tensor<?x256xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 256] [1, 1] : tensor<?x256xf64> to tensor<1x256xf64>
    %16 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %7[%arg0] : tensor<?xi64>
    %17 = arith.index_cast %extracted : i64 to index
    %extracted_14 = tensor.extract %7[%16] : tensor<?xi64>
    %18 = arith.index_cast %extracted_14 : i64 to index
    %19 = scf.for %arg2 = %17 to %18 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x256xf64>) {
      %extracted_15 = tensor.extract %8[%arg2] : tensor<?xi64>
      %20 = arith.index_cast %extracted_15 : i64 to index
      %extracted_16 = tensor.extract %9[%arg2] : tensor<?xf64>
      %21 = scf.for %arg4 = %c0 to %idx256 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x256xf64>) {
        %extracted_17 = tensor.extract %10[%20, %arg4] : tensor<?x256xf64>
        %22 = arith.mulf %extracted_16, %extracted_17 : f64
        %extracted_18 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x256xf64>
        %23 = arith.addf %extracted_18, %22 : f64
        %inserted = tensor.insert %23 into %arg5[%idx0, %arg4] : tensor<1x256xf64>
        scf.yield %inserted : tensor<1x256xf64>
      }
      scf.yield %21 : tensor<1x256xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %19 into %arg1[%arg0, 0] [1, 256] [1, 1] : tensor<1x256xf64> into tensor<?x256xf64>
    }
  }
  %14 = call @getTime() : () -> f64
  %alloc_13 = memref.alloc() : memref<1xf64>
  memref.store %cst_0, %alloc_13[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %5 step %c1 {
    scf.for %arg1 = %c0 to %c256 step %c1 {
      %extracted = tensor.extract %13[%arg0, %arg1] : tensor<?x256xf64>
      %16 = memref.load %alloc_13[%c0] : memref<1xf64>
      %17 = arith.addf %extracted, %16 : f64
      memref.store %17, %alloc_13[%c0] : memref<1xf64>
    }
  }
  %15 = memref.load %alloc_13[%c0] : memref<1xf64>
  "ta.print"(%15) : (f64) -> ()
  call @printElapsedTime(%12, %14) : (f64, f64) -> ()
  return
}

// -----// IR Dump After LoopInvariantSubsetHoisting (loop-invariant-subset-hoisting) //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c256 = arith.constant 256 : index
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
  %idx256 = index.constant 256
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
  %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x256xf64>)
  %10 = bufferization.to_tensor %alloc_11 restrict writable : memref<?x256xf64>
  %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x256xf64>)
  %11 = bufferization.to_tensor %alloc_12 restrict writable : memref<?x256xf64>
  %12 = call @getTime() : () -> f64
  %13 = scf.forall (%arg0) in (%5) shared_outs(%arg1 = %11) -> (tensor<?x256xf64>) {
    %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 256] [1, 1] : tensor<?x256xf64> to tensor<1x256xf64>
    %16 = arith.addi %arg0, %c1 : index
    %extracted = tensor.extract %7[%arg0] : tensor<?xi64>
    %17 = arith.index_cast %extracted : i64 to index
    %extracted_14 = tensor.extract %7[%16] : tensor<?xi64>
    %18 = arith.index_cast %extracted_14 : i64 to index
    %19 = scf.for %arg2 = %17 to %18 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x256xf64>) {
      %extracted_15 = tensor.extract %8[%arg2] : tensor<?xi64>
      %20 = arith.index_cast %extracted_15 : i64 to index
      %extracted_16 = tensor.extract %9[%arg2] : tensor<?xf64>
      %21 = scf.for %arg4 = %c0 to %idx256 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x256xf64>) {
        %extracted_17 = tensor.extract %10[%20, %arg4] : tensor<?x256xf64>
        %22 = arith.mulf %extracted_16, %extracted_17 : f64
        %extracted_18 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x256xf64>
        %23 = arith.addf %extracted_18, %22 : f64
        %inserted = tensor.insert %23 into %arg5[%idx0, %arg4] : tensor<1x256xf64>
        scf.yield %inserted : tensor<1x256xf64>
      }
      scf.yield %21 : tensor<1x256xf64>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %19 into %arg1[%arg0, 0] [1, 256] [1, 1] : tensor<1x256xf64> into tensor<?x256xf64>
    }
  }
  %14 = call @getTime() : () -> f64
  %alloc_13 = memref.alloc() : memref<1xf64>
  memref.store %cst_0, %alloc_13[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %5 step %c1 {
    scf.for %arg1 = %c0 to %c256 step %c1 {
      %extracted = tensor.extract %13[%arg0, %arg1] : tensor<?x256xf64>
      %16 = memref.load %alloc_13[%c0] : memref<1xf64>
      %17 = arith.addf %extracted, %16 : f64
      memref.store %17, %alloc_13[%c0] : memref<1xf64>
    }
  }
  %15 = memref.load %alloc_13[%c0] : memref<1xf64>
  "ta.print"(%15) : (f64) -> ()
  call @printElapsedTime(%12, %14) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::BufferizeFunc () //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %c256 = arith.constant 256 : index
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
    %idx256 = index.constant 256
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
    %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x256xf64>)
    %10 = bufferization.to_tensor %alloc_11 restrict writable : memref<?x256xf64>
    %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x256xf64>)
    %11 = bufferization.to_tensor %alloc_12 restrict writable : memref<?x256xf64>
    %12 = call @getTime() : () -> f64
    %13 = scf.forall (%arg0) in (%5) shared_outs(%arg1 = %11) -> (tensor<?x256xf64>) {
      %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 256] [1, 1] : tensor<?x256xf64> to tensor<1x256xf64>
      %16 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %7[%arg0] : tensor<?xi64>
      %17 = arith.index_cast %extracted : i64 to index
      %extracted_14 = tensor.extract %7[%16] : tensor<?xi64>
      %18 = arith.index_cast %extracted_14 : i64 to index
      %19 = scf.for %arg2 = %17 to %18 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x256xf64>) {
        %extracted_15 = tensor.extract %8[%arg2] : tensor<?xi64>
        %20 = arith.index_cast %extracted_15 : i64 to index
        %extracted_16 = tensor.extract %9[%arg2] : tensor<?xf64>
        %21 = scf.for %arg4 = %c0 to %idx256 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x256xf64>) {
          %extracted_17 = tensor.extract %10[%20, %arg4] : tensor<?x256xf64>
          %22 = arith.mulf %extracted_16, %extracted_17 : f64
          %extracted_18 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x256xf64>
          %23 = arith.addf %extracted_18, %22 : f64
          %inserted = tensor.insert %23 into %arg5[%idx0, %arg4] : tensor<1x256xf64>
          scf.yield %inserted : tensor<1x256xf64>
        }
        scf.yield %21 : tensor<1x256xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %19 into %arg1[%arg0, 0] [1, 256] [1, 1] : tensor<1x256xf64> into tensor<?x256xf64>
      }
    }
    %14 = call @getTime() : () -> f64
    %alloc_13 = memref.alloc() : memref<1xf64>
    memref.store %cst_0, %alloc_13[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      scf.for %arg1 = %c0 to %c256 step %c1 {
        %extracted = tensor.extract %13[%arg0, %arg1] : tensor<?x256xf64>
        %16 = memref.load %alloc_13[%c0] : memref<1xf64>
        %17 = arith.addf %extracted, %16 : f64
        memref.store %17, %alloc_13[%c0] : memref<1xf64>
      }
    }
    %15 = memref.load %alloc_13[%c0] : memref<1xf64>
    "ta.print"(%15) : (f64) -> ()
    call @printElapsedTime(%12, %14) : (f64, f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64_no_tiles(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %c256 = arith.constant 256 : index
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
    %idx256 = index.constant 256
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
    %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x256xf64>)
    %10 = bufferization.to_tensor %alloc_11 restrict writable : memref<?x256xf64>
    %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x256xf64>)
    %11 = bufferization.to_tensor %alloc_12 restrict writable : memref<?x256xf64>
    %12 = call @getTime() : () -> f64
    %13 = scf.forall (%arg0) in (%5) shared_outs(%arg1 = %11) -> (tensor<?x256xf64>) {
      %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 256] [1, 1] : tensor<?x256xf64> to tensor<1x256xf64>
      %16 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %7[%arg0] : tensor<?xi64>
      %17 = arith.index_cast %extracted : i64 to index
      %extracted_14 = tensor.extract %7[%16] : tensor<?xi64>
      %18 = arith.index_cast %extracted_14 : i64 to index
      %19 = scf.for %arg2 = %17 to %18 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x256xf64>) {
        %extracted_15 = tensor.extract %8[%arg2] : tensor<?xi64>
        %20 = arith.index_cast %extracted_15 : i64 to index
        %extracted_16 = tensor.extract %9[%arg2] : tensor<?xf64>
        %21 = scf.for %arg4 = %c0 to %idx256 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x256xf64>) {
          %extracted_17 = tensor.extract %10[%20, %arg4] : tensor<?x256xf64>
          %22 = arith.mulf %extracted_16, %extracted_17 : f64
          %extracted_18 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x256xf64>
          %23 = arith.addf %extracted_18, %22 : f64
          %inserted = tensor.insert %23 into %arg5[%idx0, %arg4] : tensor<1x256xf64>
          scf.yield %inserted : tensor<1x256xf64>
        }
        scf.yield %21 : tensor<1x256xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %19 into %arg1[%arg0, 0] [1, 256] [1, 1] : tensor<1x256xf64> into tensor<?x256xf64>
      }
    }
    %14 = call @getTime() : () -> f64
    %alloc_13 = memref.alloc() : memref<1xf64>
    memref.store %cst_0, %alloc_13[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      scf.for %arg1 = %c0 to %c256 step %c1 {
        %extracted = tensor.extract %13[%arg0, %arg1] : tensor<?x256xf64>
        %16 = memref.load %alloc_13[%c0] : memref<1xf64>
        %17 = arith.addf %extracted, %16 : f64
        memref.store %17, %alloc_13[%c0] : memref<1xf64>
      }
    }
    %15 = memref.load %alloc_13[%c0] : memref<1xf64>
    "ta.print"(%15) : (f64) -> ()
    call @printElapsedTime(%12, %14) : (f64, f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64_no_tiles(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
}


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %c256 = arith.constant 256 : index
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
    %idx256 = index.constant 256
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
    %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x256xf64>)
    %10 = bufferization.to_tensor %alloc_11 restrict writable : memref<?x256xf64>
    %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x256xf64>)
    %11 = bufferization.to_tensor %alloc_12 restrict writable : memref<?x256xf64>
    %12 = call @getTime() : () -> f64
    %13 = scf.forall (%arg0) in (%5) shared_outs(%arg1 = %11) -> (tensor<?x256xf64>) {
      %extracted_slice = tensor.extract_slice %arg1[%arg0, 0] [1, 256] [1, 1] : tensor<?x256xf64> to tensor<1x256xf64>
      %16 = arith.addi %arg0, %c1 : index
      %extracted = tensor.extract %7[%arg0] : tensor<?xi64>
      %17 = arith.index_cast %extracted : i64 to index
      %extracted_14 = tensor.extract %7[%16] : tensor<?xi64>
      %18 = arith.index_cast %extracted_14 : i64 to index
      %19 = scf.for %arg2 = %17 to %18 step %c1 iter_args(%arg3 = %extracted_slice) -> (tensor<1x256xf64>) {
        %extracted_15 = tensor.extract %8[%arg2] : tensor<?xi64>
        %20 = arith.index_cast %extracted_15 : i64 to index
        %extracted_16 = tensor.extract %9[%arg2] : tensor<?xf64>
        %21 = scf.for %arg4 = %c0 to %idx256 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1x256xf64>) {
          %extracted_17 = tensor.extract %10[%20, %arg4] : tensor<?x256xf64>
          %22 = arith.mulf %extracted_16, %extracted_17 : f64
          %extracted_18 = tensor.extract %arg5[%idx0, %arg4] : tensor<1x256xf64>
          %23 = arith.addf %extracted_18, %22 : f64
          %inserted = tensor.insert %23 into %arg5[%idx0, %arg4] : tensor<1x256xf64>
          scf.yield %inserted : tensor<1x256xf64>
        }
        scf.yield %21 : tensor<1x256xf64>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %19 into %arg1[%arg0, 0] [1, 256] [1, 1] : tensor<1x256xf64> into tensor<?x256xf64>
      }
    }
    %14 = call @getTime() : () -> f64
    %alloc_13 = memref.alloc() : memref<1xf64>
    memref.store %cst_0, %alloc_13[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      scf.for %arg1 = %c0 to %c256 step %c1 {
        %extracted = tensor.extract %13[%arg0, %arg1] : tensor<?x256xf64>
        %16 = memref.load %alloc_13[%c0] : memref<1xf64>
        %17 = arith.addf %extracted, %16 : f64
        memref.store %17, %alloc_13[%c0] : memref<1xf64>
      }
    }
    %15 = memref.load %alloc_13[%c0] : memref<1xf64>
    "ta.print"(%15) : (f64) -> ()
    call @printElapsedTime(%12, %14) : (f64, f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64_no_tiles(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
}


// -----// IR Dump After OneShotBufferize (one-shot-bufferize) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %c256 = arith.constant 256 : index
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
    %idx256 = index.constant 256
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
    %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x256xf64>)
    %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x256xf64>)
    %7 = call @getTime() : () -> f64
    scf.forall (%arg0) in (%5) {
      %subview = memref.subview %alloc_12[%arg0, 0] [1, 256] [1, 1] : memref<?x256xf64> to memref<1x256xf64, strided<[256, 1], offset: ?>>
      %10 = arith.addi %arg0, %c1 : index
      %11 = memref.load %alloc_5[%arg0] : memref<?xi64>
      %12 = arith.index_cast %11 : i64 to index
      %13 = memref.load %alloc_5[%10] : memref<?xi64>
      %14 = arith.index_cast %13 : i64 to index
      %15 = scf.for %arg1 = %12 to %14 step %c1 iter_args(%arg2 = %subview) -> (memref<1x256xf64, strided<[256, 1], offset: ?>>) {
        %16 = memref.load %alloc_7[%arg1] : memref<?xi64>
        %17 = arith.index_cast %16 : i64 to index
        %18 = memref.load %alloc_9[%arg1] : memref<?xf64>
        %19 = scf.for %arg3 = %c0 to %idx256 step %c1 iter_args(%arg4 = %arg2) -> (memref<1x256xf64, strided<[256, 1], offset: ?>>) {
          %20 = memref.load %alloc_11[%17, %arg3] : memref<?x256xf64>
          %21 = arith.mulf %18, %20 : f64
          %22 = memref.load %arg4[%idx0, %arg3] : memref<1x256xf64, strided<[256, 1], offset: ?>>
          %23 = arith.addf %22, %21 : f64
          memref.store %23, %arg4[%idx0, %arg3] : memref<1x256xf64, strided<[256, 1], offset: ?>>
          scf.yield %arg4 : memref<1x256xf64, strided<[256, 1], offset: ?>>
        }
        scf.yield %19 : memref<1x256xf64, strided<[256, 1], offset: ?>>
      }
      %subview_14 = memref.subview %alloc_12[%arg0, 0] [1, 256] [1, 1] : memref<?x256xf64> to memref<1x256xf64, strided<[256, 1], offset: ?>>
      memref.copy %15, %subview_14 : memref<1x256xf64, strided<[256, 1], offset: ?>> to memref<1x256xf64, strided<[256, 1], offset: ?>>
    }
    %8 = call @getTime() : () -> f64
    %alloc_13 = memref.alloc() : memref<1xf64>
    memref.store %cst_0, %alloc_13[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      scf.for %arg1 = %c0 to %c256 step %c1 {
        %10 = memref.load %alloc_12[%arg0, %arg1] : memref<?x256xf64>
        %11 = memref.load %alloc_13[%c0] : memref<1xf64>
        %12 = arith.addf %10, %11 : f64
        memref.store %12, %alloc_13[%c0] : memref<1xf64>
      }
    }
    %9 = memref.load %alloc_13[%c0] : memref<1xf64>
    "ta.print"(%9) : (f64) -> ()
    call @printElapsedTime(%7, %8) : (f64, f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64_no_tiles(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
}


// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_2D_f64_i64_no_tiles(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @printElapsedTime(f64, f64)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @read_input_2D_f64_i64_no_tiles(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @printElapsedTime(f64, f64)

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func private @getTime() -> f64

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func private @getTime() -> f64

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c256 = arith.constant 256 : index
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
  %idx256 = index.constant 256
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
  %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x256xf64>)
  %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x256xf64>)
  %7 = call @getTime() : () -> f64
  scf.forall (%arg0) in (%5) {
    %subview = memref.subview %alloc_12[%arg0, 0] [1, 256] [1, 1] : memref<?x256xf64> to memref<1x256xf64, strided<[256, 1], offset: ?>>
    %10 = arith.addi %arg0, %c1 : index
    %11 = memref.load %alloc_5[%arg0] : memref<?xi64>
    %12 = arith.index_cast %11 : i64 to index
    %13 = memref.load %alloc_5[%10] : memref<?xi64>
    %14 = arith.index_cast %13 : i64 to index
    %15 = scf.for %arg1 = %12 to %14 step %c1 iter_args(%arg2 = %subview) -> (memref<1x256xf64, strided<[256, 1], offset: ?>>) {
      %16 = memref.load %alloc_7[%arg1] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = memref.load %alloc_9[%arg1] : memref<?xf64>
      %19 = scf.for %arg3 = %c0 to %idx256 step %c1 iter_args(%arg4 = %arg2) -> (memref<1x256xf64, strided<[256, 1], offset: ?>>) {
        %20 = memref.load %alloc_11[%17, %arg3] : memref<?x256xf64>
        %21 = arith.mulf %18, %20 : f64
        %22 = memref.load %arg4[%idx0, %arg3] : memref<1x256xf64, strided<[256, 1], offset: ?>>
        %23 = arith.addf %22, %21 : f64
        memref.store %23, %arg4[%idx0, %arg3] : memref<1x256xf64, strided<[256, 1], offset: ?>>
        scf.yield %arg4 : memref<1x256xf64, strided<[256, 1], offset: ?>>
      }
      scf.yield %19 : memref<1x256xf64, strided<[256, 1], offset: ?>>
    }
    %subview_14 = memref.subview %alloc_12[%arg0, 0] [1, 256] [1, 1] : memref<?x256xf64> to memref<1x256xf64, strided<[256, 1], offset: ?>>
    memref.copy %15, %subview_14 : memref<1x256xf64, strided<[256, 1], offset: ?>> to memref<1x256xf64, strided<[256, 1], offset: ?>>
  }
  %8 = call @getTime() : () -> f64
  %alloc_13 = memref.alloc() : memref<1xf64>
  memref.store %cst_0, %alloc_13[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %5 step %c1 {
    scf.for %arg1 = %c0 to %c256 step %c1 {
      %10 = memref.load %alloc_12[%arg0, %arg1] : memref<?x256xf64>
      %11 = memref.load %alloc_13[%c0] : memref<1xf64>
      %12 = arith.addf %10, %11 : f64
      memref.store %12, %alloc_13[%c0] : memref<1xf64>
    }
  }
  %9 = memref.load %alloc_13[%c0] : memref<1xf64>
  "ta.print"(%9) : (f64) -> ()
  call @printElapsedTime(%7, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %idx0 = index.constant 0
  %c256 = arith.constant 256 : index
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
  %idx256 = index.constant 256
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
  %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x256xf64>)
  %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
  linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x256xf64>)
  %7 = call @getTime() : () -> f64
  scf.forall (%arg0) in (%5) {
    %subview = memref.subview %alloc_12[%arg0, 0] [1, 256] [1, 1] : memref<?x256xf64> to memref<1x256xf64, strided<[256, 1], offset: ?>>
    %10 = arith.addi %arg0, %c1 : index
    %11 = memref.load %alloc_5[%arg0] : memref<?xi64>
    %12 = arith.index_cast %11 : i64 to index
    %13 = memref.load %alloc_5[%10] : memref<?xi64>
    %14 = arith.index_cast %13 : i64 to index
    %15 = scf.for %arg1 = %12 to %14 step %c1 iter_args(%arg2 = %subview) -> (memref<1x256xf64, strided<[256, 1], offset: ?>>) {
      %16 = memref.load %alloc_7[%arg1] : memref<?xi64>
      %17 = arith.index_cast %16 : i64 to index
      %18 = memref.load %alloc_9[%arg1] : memref<?xf64>
      %19 = scf.for %arg3 = %c0 to %idx256 step %c1 iter_args(%arg4 = %arg2) -> (memref<1x256xf64, strided<[256, 1], offset: ?>>) {
        %20 = memref.load %alloc_11[%17, %arg3] : memref<?x256xf64>
        %21 = arith.mulf %18, %20 : f64
        %22 = memref.load %arg4[%idx0, %arg3] : memref<1x256xf64, strided<[256, 1], offset: ?>>
        %23 = arith.addf %22, %21 : f64
        memref.store %23, %arg4[%idx0, %arg3] : memref<1x256xf64, strided<[256, 1], offset: ?>>
        scf.yield %arg4 : memref<1x256xf64, strided<[256, 1], offset: ?>>
      }
      scf.yield %19 : memref<1x256xf64, strided<[256, 1], offset: ?>>
    }
    %subview_14 = memref.subview %alloc_12[%arg0, 0] [1, 256] [1, 1] : memref<?x256xf64> to memref<1x256xf64, strided<[256, 1], offset: ?>>
    memref.copy %15, %subview_14 : memref<1x256xf64, strided<[256, 1], offset: ?>> to memref<1x256xf64, strided<[256, 1], offset: ?>>
  }
  %8 = call @getTime() : () -> f64
  %alloc_13 = memref.alloc() : memref<1xf64>
  memref.store %cst_0, %alloc_13[%c0] : memref<1xf64>
  scf.for %arg0 = %c0 to %5 step %c1 {
    scf.for %arg1 = %c0 to %c256 step %c1 {
      %10 = memref.load %alloc_12[%arg0, %arg1] : memref<?x256xf64>
      %11 = memref.load %alloc_13[%c0] : memref<1xf64>
      %12 = arith.addf %10, %11 : f64
      memref.store %12, %alloc_13[%c0] : memref<1xf64>
    }
  }
  %9 = memref.load %alloc_13[%c0] : memref<1xf64>
  call @printF64(%9) : (f64) -> ()
  call @printNewline() : () -> ()
  call @printElapsedTime(%7, %8) : (f64, f64) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %c256 = arith.constant 256 : index
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
    %idx256 = index.constant 256
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
    %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x256xf64>)
    %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x256xf64>)
    %7 = call @getTime() : () -> f64
    scf.forall (%arg0) in (%5) {
      %subview = memref.subview %alloc_12[%arg0, 0] [1, 256] [1, 1] : memref<?x256xf64> to memref<1x256xf64, strided<[256, 1], offset: ?>>
      %10 = arith.addi %arg0, %c1 : index
      %11 = memref.load %alloc_5[%arg0] : memref<?xi64>
      %12 = arith.index_cast %11 : i64 to index
      %13 = memref.load %alloc_5[%10] : memref<?xi64>
      %14 = arith.index_cast %13 : i64 to index
      scf.for %arg1 = %12 to %14 step %c1 {
        %15 = memref.load %alloc_7[%arg1] : memref<?xi64>
        %16 = arith.index_cast %15 : i64 to index
        %17 = memref.load %alloc_9[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx256 step %c1 {
          %18 = memref.load %alloc_11[%16, %arg2] : memref<?x256xf64>
          %19 = arith.mulf %17, %18 : f64
          %20 = memref.load %subview[%idx0, %arg2] : memref<1x256xf64, strided<[256, 1], offset: ?>>
          %21 = arith.addf %20, %19 : f64
          memref.store %21, %subview[%idx0, %arg2] : memref<1x256xf64, strided<[256, 1], offset: ?>>
        }
      }
      %subview_14 = memref.subview %alloc_12[%arg0, 0] [1, 256] [1, 1] : memref<?x256xf64> to memref<1x256xf64, strided<[256, 1], offset: ?>>
      memref.copy %subview, %subview_14 : memref<1x256xf64, strided<[256, 1], offset: ?>> to memref<1x256xf64, strided<[256, 1], offset: ?>>
    }
    %8 = call @getTime() : () -> f64
    %alloc_13 = memref.alloc() : memref<1xf64>
    memref.store %cst_0, %alloc_13[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      scf.for %arg1 = %c0 to %c256 step %c1 {
        %10 = memref.load %alloc_12[%arg0, %arg1] : memref<?x256xf64>
        %11 = memref.load %alloc_13[%c0] : memref<1xf64>
        %12 = arith.addf %10, %11 : f64
        memref.store %12, %alloc_13[%c0] : memref<1xf64>
      }
    }
    %9 = memref.load %alloc_13[%c0] : memref<1xf64>
    call @printF64(%9) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%7, %8) : (f64, f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64_no_tiles(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %idx0 = index.constant 0
    %c256 = arith.constant 256 : index
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
    %idx256 = index.constant 256
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
    %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x256xf64>)
    %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x256xf64>)
    %7 = call @getTime() : () -> f64
    scf.forall (%arg0) in (%5) {
      %subview = memref.subview %alloc_12[%arg0, 0] [1, 256] [1, 1] : memref<?x256xf64> to memref<1x256xf64, strided<[256, 1], offset: ?>>
      %10 = arith.addi %arg0, %c1 : index
      %11 = memref.load %alloc_5[%arg0] : memref<?xi64>
      %12 = arith.index_cast %11 : i64 to index
      %13 = memref.load %alloc_5[%10] : memref<?xi64>
      %14 = arith.index_cast %13 : i64 to index
      scf.for %arg1 = %12 to %14 step %c1 {
        %15 = memref.load %alloc_7[%arg1] : memref<?xi64>
        %16 = arith.index_cast %15 : i64 to index
        %17 = memref.load %alloc_9[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx256 step %c1 {
          %18 = memref.load %alloc_11[%16, %arg2] : memref<?x256xf64>
          %19 = arith.mulf %17, %18 : f64
          %20 = memref.load %subview[%idx0, %arg2] : memref<1x256xf64, strided<[256, 1], offset: ?>>
          %21 = arith.addf %20, %19 : f64
          memref.store %21, %subview[%idx0, %arg2] : memref<1x256xf64, strided<[256, 1], offset: ?>>
        }
      }
      memref.copy %subview, %subview : memref<1x256xf64, strided<[256, 1], offset: ?>> to memref<1x256xf64, strided<[256, 1], offset: ?>>
    }
    %8 = call @getTime() : () -> f64
    %alloc_13 = memref.alloc() : memref<1xf64>
    memref.store %cst_0, %alloc_13[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      scf.for %arg1 = %c0 to %c256 step %c1 {
        %10 = memref.load %alloc_12[%arg0, %arg1] : memref<?x256xf64>
        %11 = memref.load %alloc_13[%c0] : memref<1xf64>
        %12 = arith.addf %10, %11 : f64
        memref.store %12, %alloc_13[%c0] : memref<1xf64>
      }
    }
    %9 = memref.load %alloc_13[%c0] : memref<1xf64>
    call @printF64(%9) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%7, %8) : (f64, f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64_no_tiles(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After FoldMemRefAliasOps (fold-memref-alias-ops) //----- //
module {
  func.func @main() {
    %c256 = arith.constant 256 : index
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
    %idx256 = index.constant 256
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
    %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x256xf64>)
    %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x256xf64>)
    %7 = call @getTime() : () -> f64
    scf.forall (%arg0) in (%5) {
      %subview = memref.subview %alloc_12[%arg0, 0] [1, 256] [1, 1] : memref<?x256xf64> to memref<1x256xf64, strided<[256, 1], offset: ?>>
      %10 = arith.addi %arg0, %c1 : index
      %11 = memref.load %alloc_5[%arg0] : memref<?xi64>
      %12 = arith.index_cast %11 : i64 to index
      %13 = memref.load %alloc_5[%10] : memref<?xi64>
      %14 = arith.index_cast %13 : i64 to index
      scf.for %arg1 = %12 to %14 step %c1 {
        %15 = memref.load %alloc_7[%arg1] : memref<?xi64>
        %16 = arith.index_cast %15 : i64 to index
        %17 = memref.load %alloc_9[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx256 step %c1 {
          %18 = memref.load %alloc_11[%16, %arg2] : memref<?x256xf64>
          %19 = arith.mulf %17, %18 : f64
          %20 = memref.load %alloc_12[%arg0, %arg2] : memref<?x256xf64>
          %21 = arith.addf %20, %19 : f64
          memref.store %21, %alloc_12[%arg0, %arg2] : memref<?x256xf64>
        }
      }
      memref.copy %subview, %subview : memref<1x256xf64, strided<[256, 1], offset: ?>> to memref<1x256xf64, strided<[256, 1], offset: ?>>
    }
    %8 = call @getTime() : () -> f64
    %alloc_13 = memref.alloc() : memref<1xf64>
    memref.store %cst_0, %alloc_13[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      scf.for %arg1 = %c0 to %c256 step %c1 {
        %10 = memref.load %alloc_12[%arg0, %arg1] : memref<?x256xf64>
        %11 = memref.load %alloc_13[%c0] : memref<1xf64>
        %12 = arith.addf %10, %11 : f64
        memref.store %12, %alloc_13[%c0] : memref<1xf64>
      }
    }
    %9 = memref.load %alloc_13[%c0] : memref<1xf64>
    call @printF64(%9) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%7, %8) : (f64, f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64_no_tiles(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c256 = arith.constant 256 : index
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
    %idx256 = index.constant 256
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
    %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x256xf64>)
    %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x256xf64>)
    %7 = call @getTime() : () -> f64
    scf.forall (%arg0) in (%5) {
      %10 = arith.addi %arg0, %c1 : index
      %11 = memref.load %alloc_5[%arg0] : memref<?xi64>
      %12 = arith.index_cast %11 : i64 to index
      %13 = memref.load %alloc_5[%10] : memref<?xi64>
      %14 = arith.index_cast %13 : i64 to index
      scf.for %arg1 = %12 to %14 step %c1 {
        %15 = memref.load %alloc_7[%arg1] : memref<?xi64>
        %16 = arith.index_cast %15 : i64 to index
        %17 = memref.load %alloc_9[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx256 step %c1 {
          %18 = memref.load %alloc_11[%16, %arg2] : memref<?x256xf64>
          %19 = arith.mulf %17, %18 : f64
          %20 = memref.load %alloc_12[%arg0, %arg2] : memref<?x256xf64>
          %21 = arith.addf %20, %19 : f64
          memref.store %21, %alloc_12[%arg0, %arg2] : memref<?x256xf64>
        }
      }
    }
    %8 = call @getTime() : () -> f64
    %alloc_13 = memref.alloc() : memref<1xf64>
    memref.store %cst_0, %alloc_13[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      scf.for %arg1 = %c0 to %c256 step %c1 {
        %10 = memref.load %alloc_12[%arg0, %arg1] : memref<?x256xf64>
        %11 = memref.load %alloc_13[%c0] : memref<1xf64>
        %12 = arith.addf %10, %11 : f64
        memref.store %12, %alloc_13[%c0] : memref<1xf64>
      }
    }
    %9 = memref.load %alloc_13[%c0] : memref<1xf64>
    call @printF64(%9) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%7, %8) : (f64, f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64_no_tiles(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %c256 = arith.constant 256 : index
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
    %idx256 = index.constant 256
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
    %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x256xf64>)
    %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x256xf64>)
    %7 = call @getTime() : () -> f64
    scf.forall (%arg0) in (%5) {
      %10 = arith.addi %arg0, %c1 : index
      %11 = memref.load %alloc_5[%arg0] : memref<?xi64>
      %12 = arith.index_cast %11 : i64 to index
      %13 = memref.load %alloc_5[%10] : memref<?xi64>
      %14 = arith.index_cast %13 : i64 to index
      scf.for %arg1 = %12 to %14 step %c1 {
        %15 = memref.load %alloc_7[%arg1] : memref<?xi64>
        %16 = arith.index_cast %15 : i64 to index
        %17 = memref.load %alloc_9[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx256 step %c1 {
          %18 = memref.load %alloc_11[%16, %arg2] : memref<?x256xf64>
          %19 = arith.mulf %17, %18 : f64
          %20 = memref.load %alloc_12[%arg0, %arg2] : memref<?x256xf64>
          %21 = arith.addf %20, %19 : f64
          memref.store %21, %alloc_12[%arg0, %arg2] : memref<?x256xf64>
        }
      }
    }
    %8 = call @getTime() : () -> f64
    %alloc_13 = memref.alloc() : memref<1xf64>
    memref.store %cst_0, %alloc_13[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      scf.for %arg1 = %c0 to %c256 step %c1 {
        %10 = memref.load %alloc_12[%arg0, %arg1] : memref<?x256xf64>
        %11 = memref.load %alloc_13[%c0] : memref<1xf64>
        %12 = arith.addf %10, %11 : f64
        memref.store %12, %alloc_13[%c0] : memref<1xf64>
      }
    }
    %9 = memref.load %alloc_13[%c0] : memref<1xf64>
    call @printF64(%9) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%7, %8) : (f64, f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64_no_tiles(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
  func.func private @printF64(f64)
  func.func private @printNewline()
}


module {
  func.func @main() {
    %c256 = arith.constant 256 : index
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
    %idx256 = index.constant 256
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
    %alloc_11 = memref.alloc(%6) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_11 : memref<?x256xf64>)
    %alloc_12 = memref.alloc(%5) {alignment = 32 : i64, allocator = "default"} : memref<?x256xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_12 : memref<?x256xf64>)
    %7 = call @getTime() : () -> f64
    scf.forall (%arg0) in (%5) {
      %10 = arith.addi %arg0, %c1 : index
      %11 = memref.load %alloc_5[%arg0] : memref<?xi64>
      %12 = arith.index_cast %11 : i64 to index
      %13 = memref.load %alloc_5[%10] : memref<?xi64>
      %14 = arith.index_cast %13 : i64 to index
      scf.for %arg1 = %12 to %14 step %c1 {
        %15 = memref.load %alloc_7[%arg1] : memref<?xi64>
        %16 = arith.index_cast %15 : i64 to index
        %17 = memref.load %alloc_9[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx256 step %c1 {
          %18 = memref.load %alloc_11[%16, %arg2] : memref<?x256xf64>
          %19 = arith.mulf %17, %18 : f64
          %20 = memref.load %alloc_12[%arg0, %arg2] : memref<?x256xf64>
          %21 = arith.addf %20, %19 : f64
          memref.store %21, %alloc_12[%arg0, %arg2] : memref<?x256xf64>
        }
      }
    }
    %8 = call @getTime() : () -> f64
    %alloc_13 = memref.alloc() : memref<1xf64>
    memref.store %cst_0, %alloc_13[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %5 step %c1 {
      scf.for %arg1 = %c0 to %c256 step %c1 {
        %10 = memref.load %alloc_12[%arg0, %arg1] : memref<?x256xf64>
        %11 = memref.load %alloc_13[%c0] : memref<1xf64>
        %12 = arith.addf %10, %11 : f64
        memref.store %12, %alloc_13[%c0] : memref<1xf64>
      }
    }
    %9 = memref.load %alloc_13[%c0] : memref<1xf64>
    call @printF64(%9) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%7, %8) : (f64, f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64_no_tiles(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
  func.func private @printF64(f64)
  func.func private @printNewline()
}
