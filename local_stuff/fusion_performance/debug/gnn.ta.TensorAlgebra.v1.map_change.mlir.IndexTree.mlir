// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
#map = affine_map<(d0, d1, d2) -> (d0, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.index_label"() : () -> !ta.index
    %4 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %c0 = arith.constant 0 : index
    %5 = "ta.dim"(%4, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %c1 = arith.constant 1 : index
    %6 = "ta.dim"(%4, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %7 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
    %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<16x16xf64>
    %9 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
    %10 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
    "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x16xf64>) -> ()
    "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<16x16xf64>) -> ()
    "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
    "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
    %11 = "ta.getTime"() : () -> f64
    %12 = "ta.mul"(%4, %7, %0, %1, %1, %3, %0, %3) <{MaskType = "none", formats = ["CSR", "Dense", "Dense"], indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x16xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<?x16xf64>
    "ta.set_op"(%12, %10) {__beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<?x16xf64>) -> ()
    %13 = "ta.mul"(%10, %8, %0, %3, %3, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<16x16xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<?x16xf64>
    "ta.set_op"(%13, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<?x16xf64>) -> ()
    %14 = "ta.getTime"() : () -> f64
    %15 = "ta.reduce"(%9) : (tensor<?x16xf64>) -> f64
    "ta.print"(%15) : (f64) -> ()
    "ta.print_elapsed_time"(%11, %14) : (f64, f64) -> ()
    return
  }
}


// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.index_label"() : () -> !ta.index
  %4 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %c0 = arith.constant 0 : index
  %5 = "ta.dim"(%4, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1 = arith.constant 1 : index
  %6 = "ta.dim"(%4, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %7 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
  %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<16x16xf64>
  %9 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
  %10 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
  "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<16x16xf64>) -> ()
  "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  %11 = "ta.getTime"() : () -> f64
  %12 = "ta.mul"(%4, %7, %0, %1, %1, %3, %0, %3) <{MaskType = "none", formats = ["CSR", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?x16xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<?x16xf64>
  "ta.set_op"(%12, %10) {__beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<?x16xf64>) -> ()
  %13 = "ta.mul"(%10, %8, %0, %3, %3, %2, %0, %2) <{MaskType = "none", formats = ["Dense", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<16x16xf64>, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index, !ta.index) -> tensor<?x16xf64>
  "ta.set_op"(%13, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<?x16xf64>) -> ()
  %14 = "ta.getTime"() : () -> f64
  %15 = "ta.reduce"(%9) : (tensor<?x16xf64>) -> f64
  "ta.print"(%15) : (f64) -> ()
  "ta.print_elapsed_time"(%11, %14) : (f64, f64) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToIndexTreePass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.index
  %1 = "ta.index_label"() : () -> !ta.index
  %2 = "ta.index_label"() : () -> !ta.index
  %3 = "ta.index_label"() : () -> !ta.index
  %4 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>  /// %4 = B[i,k]
  %c0 = arith.constant 0 : index
  %5 = "ta.dim"(%4, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %c1 = arith.constant 1 : index
  %6 = "ta.dim"(%4, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %7 = "ta.dense_tensor_decl"(%6) <{format = "Dense"}> : (index) -> tensor<?x16xf64>  /// %7 = C[k,h]
  %8 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<16x16xf64>  /// %8 = D[h,j]
  %9 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x16xf64>  /// %9 = A[i,j]
  %10 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x16xf64>  /// %10 = T[i,h]
  "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%7) <{value = 1.200000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  "ta.fill"(%8) <{value = 3.400000e+00 : f64}> : (tensor<16x16xf64>) -> ()
  "ta.fill"(%9) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  "ta.fill"(%10) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  %11 = "ta.getTime"() : () -> f64
  %12 = "it.itree"(%10) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x16xf64>):  /// %arg0 = T[i,h]
    %16 = "it.RootOp"() : () -> !it.index_tree
    %17 = "it.IndexOp"(%16) : (!it.index_tree) -> !it.index  /// %17 = i
    %18 = "it.IndexOp"(%17) : (!it.index) -> !it.index  /// %18 = k
    %19 = "it.IndexOp"(%18) : (!it.index) -> !it.index  /// %19 = h
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %17) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %19, %pos) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %20 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%4, %17) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%4, %18, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %21 = "it.OperandOp"(%4, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%7, %18) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%7, %19, %pos_7) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %22 = "it.OperandOp"(%7, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %23 = "it.ComputeOp"(%19, %20, %21, %22) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x16xf64>
    it.yield %23 : tensor<?x16xf64>
  }) : (tensor<?x16xf64>) -> tensor<?x16xf64>
  "ta.set_op"(%12, %10) {__beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<?x16xf64>) -> ()
  %13 = "it.itree"(%9) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x16xf64>):  /// %arg0 = A[i,j]
    %16 = "it.RootOp"() : () -> !it.index_tree
    %17 = "it.IndexOp"(%16) : (!it.index_tree) -> !it.index  /// %17 = i
    %18 = "it.IndexOp"(%17) : (!it.index) -> !it.index  /// %18 = h
    %19 = "it.IndexOp"(%18) : (!it.index) -> !it.index  /// %19 = j
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %17) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %19, %pos) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %20 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%10, %17) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%10, %18, %pos_3) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %21 = "it.OperandOp"(%10, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%8, %18) <{dim = 0 : ui32}> : (tensor<16x16xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%8, %19, %pos_7) <{dim = 1 : ui32}> : (tensor<16x16xf64>, !it.index, index) -> (index, index)
    %22 = "it.OperandOp"(%8, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<16x16xf64>, index, index, index, index) -> !it.operand
    %23 = "it.ComputeOp"(%19, %20, %21, %22) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x16xf64>
    it.yield %23 : tensor<?x16xf64>
  }) : (tensor<?x16xf64>) -> tensor<?x16xf64>
  "ta.set_op"(%13, %9) {__beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<?x16xf64>) -> ()
  %14 = "ta.getTime"() : () -> f64
  %15 = "ta.reduce"(%9) : (tensor<?x16xf64>) -> f64
  "ta.print"(%15) : (f64) -> ()
  "ta.print_elapsed_time"(%11, %14) : (f64, f64) -> ()
  return
}

// -----// IR Dump After IndexTreeDomainInference (indextree-domain-inference) //----- //
func.func @main() {
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %0 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
  %1 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %2 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
  %3 = "ta.dense_tensor_decl"(%2) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
  %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<16x16xf64>
  %5 = "ta.dense_tensor_decl"(%1) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
  %6 = "ta.dense_tensor_decl"(%1) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
  "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
  "ta.fill"(%3) <{value = 1.200000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<16x16xf64>) -> ()
  "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  "ta.fill"(%6) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
  %7 = "ta.getTime"() : () -> f64
  %8 = "it.itree"(%6) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x16xf64>):
    %12 = "it.RootOp"() : () -> !it.index_tree
    %13 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %14 = "it.IndexOp"(%12, %13) : (!it.index_tree, !it.domain) -> !it.index
    %15 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x16xf64>) -> !it.domain
    %16 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %17 = "it.DomainIntersectionOp"(%16, %15) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %18 = "it.IndexOp"(%14, %17) : (!it.index, !it.domain) -> !it.index
    %19 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x16xf64>) -> !it.domain
    %20 = "it.IndexOp"(%18, %19) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %14) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %20, %pos) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %21 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %14) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %18, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
    %22 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%3, %18) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%3, %20, %pos_7) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %23 = "it.OperandOp"(%3, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %24 = "it.ComputeOp"(%20, %21, %22, %23) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x16xf64>
    it.yield %24 : tensor<?x16xf64>
  }) : (tensor<?x16xf64>) -> tensor<?x16xf64>
  "ta.set_op"(%8, %6) {__beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<?x16xf64>) -> ()
  %9 = "it.itree"(%5) <{operandSegmentSizes = array<i32: 1, 0>}> ({
  ^bb0(%arg0: tensor<?x16xf64>):
    %12 = "it.RootOp"() : () -> !it.index_tree
    %13 = "it.DomainOp"(%6) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x16xf64>) -> !it.domain
    %14 = "it.IndexOp"(%12, %13) : (!it.index_tree, !it.domain) -> !it.index
    %15 = "it.DomainOp"(%4) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<16x16xf64>) -> !it.domain
    %16 = "it.DomainOp"(%6) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x16xf64>) -> !it.domain
    %17 = "it.DomainIntersectionOp"(%16, %15) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
    %18 = "it.IndexOp"(%14, %17) : (!it.index, !it.domain) -> !it.index
    %19 = "it.DomainOp"(%4) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<16x16xf64>) -> !it.domain
    %20 = "it.IndexOp"(%18, %19) : (!it.index, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%arg0, %14) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %20, %pos) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %21 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %crd_2, %pos_3 = "it.IndexToTensorDim"(%6, %14) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
    %crd_4, %pos_5 = "it.IndexToTensorDim"(%6, %18, %pos_3) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
    %22 = "it.OperandOp"(%6, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
    %crd_6, %pos_7 = "it.IndexToTensorDim"(%4, %18) <{dim = 0 : ui32}> : (tensor<16x16xf64>, !it.index) -> (index, index)
    %crd_8, %pos_9 = "it.IndexToTensorDim"(%4, %20, %pos_7) <{dim = 1 : ui32}> : (tensor<16x16xf64>, !it.index, index) -> (index, index)
    %23 = "it.OperandOp"(%4, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<16x16xf64>, index, index, index, index) -> !it.operand
    %24 = "it.ComputeOp"(%20, %21, %22, %23) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x16xf64>
    it.yield %24 : tensor<?x16xf64>
  }) : (tensor<?x16xf64>) -> tensor<?x16xf64>
  "ta.set_op"(%9, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<?x16xf64>) -> ()
  %10 = "ta.getTime"() : () -> f64
  %11 = "ta.reduce"(%5) : (tensor<?x16xf64>) -> f64
  "ta.print"(%11) : (f64) -> ()
  "ta.print_elapsed_time"(%7, %10) : (f64, f64) -> ()
  return
}

module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %0 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %1 = "ta.dim"(%0, %c0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %2 = "ta.dim"(%0, %c1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
    %3 = "ta.dense_tensor_decl"(%2) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
    %4 = "ta.dense_tensor_decl"() <{format = "Dense"}> : () -> tensor<16x16xf64>
    %5 = "ta.dense_tensor_decl"(%1) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
    %6 = "ta.dense_tensor_decl"(%1) <{format = "Dense"}> : (index) -> tensor<?x16xf64>
    "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "ta.fill"(%3) <{value = 1.200000e+00 : f64}> : (tensor<?x16xf64>) -> ()
    "ta.fill"(%4) <{value = 3.400000e+00 : f64}> : (tensor<16x16xf64>) -> ()
    "ta.fill"(%5) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
    "ta.fill"(%6) <{value = 0.000000e+00 : f64}> : (tensor<?x16xf64>) -> ()
    %7 = "ta.getTime"() : () -> f64
    %8 = "it.itree"(%6) <{operandSegmentSizes = array<i32: 1, 0>}> ({
    ^bb0(%arg0: tensor<?x16xf64>):
      %12 = "it.RootOp"() : () -> !it.index_tree
      %13 = "it.DomainOp"(%0) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
      %14 = "it.IndexOp"(%12, %13) : (!it.index_tree, !it.domain) -> !it.index
      %15 = "it.DomainOp"(%3) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x16xf64>) -> !it.domain
      %16 = "it.DomainOp"(%0) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
      %17 = "it.DomainIntersectionOp"(%16, %15) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
      %18 = "it.IndexOp"(%14, %17) : (!it.index, !it.domain) -> !it.index
      %19 = "it.DomainOp"(%3) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x16xf64>) -> !it.domain
      %20 = "it.IndexOp"(%18, %19) : (!it.index, !it.domain) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%arg0, %14) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %20, %pos) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
      %21 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%0, %14) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%0, %18, %pos_3) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %22 = "it.OperandOp"(%0, %pos_3, %pos_5, %crd_2, %crd_4) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%3, %18) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%3, %20, %pos_7) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
      %23 = "it.OperandOp"(%3, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
      %24 = "it.ComputeOp"(%20, %21, %22, %23) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x16xf64>
      it.yield %24 : tensor<?x16xf64>
    }) : (tensor<?x16xf64>) -> tensor<?x16xf64>
    "ta.set_op"(%8, %6) {__beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<?x16xf64>) -> ()
    %9 = "it.itree"(%5) <{operandSegmentSizes = array<i32: 1, 0>}> ({
    ^bb0(%arg0: tensor<?x16xf64>):
      %12 = "it.RootOp"() : () -> !it.index_tree
      %13 = "it.DomainOp"(%6) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x16xf64>) -> !it.domain
      %14 = "it.IndexOp"(%12, %13) : (!it.index_tree, !it.domain) -> !it.index
      %15 = "it.DomainOp"(%4) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<16x16xf64>) -> !it.domain
      %16 = "it.DomainOp"(%6) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x16xf64>) -> !it.domain
      %17 = "it.DomainIntersectionOp"(%16, %15) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
      %18 = "it.IndexOp"(%14, %17) : (!it.index, !it.domain) -> !it.index
      %19 = "it.DomainOp"(%4) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<16x16xf64>) -> !it.domain
      %20 = "it.IndexOp"(%18, %19) : (!it.index, !it.domain) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%arg0, %14) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
      %crd_0, %pos_1 = "it.IndexToTensorDim"(%arg0, %20, %pos) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
      %21 = "it.LHSOperandOp"(%arg0, %pos, %pos_1, %crd, %crd_0) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
      %crd_2, %pos_3 = "it.IndexToTensorDim"(%6, %14) <{dim = 0 : ui32}> : (tensor<?x16xf64>, !it.index) -> (index, index)
      %crd_4, %pos_5 = "it.IndexToTensorDim"(%6, %18, %pos_3) <{dim = 1 : ui32}> : (tensor<?x16xf64>, !it.index, index) -> (index, index)
      %22 = "it.OperandOp"(%6, %pos_3, %pos_5, %crd_2, %crd_4) : (tensor<?x16xf64>, index, index, index, index) -> !it.operand
      %crd_6, %pos_7 = "it.IndexToTensorDim"(%4, %18) <{dim = 0 : ui32}> : (tensor<16x16xf64>, !it.index) -> (index, index)
      %crd_8, %pos_9 = "it.IndexToTensorDim"(%4, %20, %pos_7) <{dim = 1 : ui32}> : (tensor<16x16xf64>, !it.index, index) -> (index, index)
      %23 = "it.OperandOp"(%4, %pos_7, %pos_9, %crd_6, %crd_8) : (tensor<16x16xf64>, index, index, index, index) -> !it.operand
      %24 = "it.ComputeOp"(%20, %21, %22, %23) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x16xf64>
      it.yield %24 : tensor<?x16xf64>
    }) : (tensor<?x16xf64>) -> tensor<?x16xf64>
    "ta.set_op"(%9, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<?x16xf64>, tensor<?x16xf64>) -> ()
    %10 = "ta.getTime"() : () -> f64
    %11 = "ta.reduce"(%5) : (tensor<?x16xf64>) -> f64
    "ta.print"(%11) : (f64) -> ()
    "ta.print_elapsed_time"(%7, %10) : (f64, f64) -> ()
    return
  }
}
