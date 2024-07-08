// -----// IR Dump Before {anonymous}::FuncOpLoweringPass () //----- //
#map = affine_map<(d0, d1, d2) -> (d0, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
module {
  ta.func @main() {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = "ta.dynamic_index_label"(%c0, %c1) : (index, index) -> !ta.range
    %c0_0 = arith.constant 0 : index
    %c1_1 = arith.constant 1 : index
    %1 = "ta.dynamic_index_label"(%c0_0, %c1_1) : (index, index) -> !ta.range
    %c0_2 = arith.constant 0 : index
    %c1_3 = arith.constant 1 : index
    %2 = "ta.dynamic_index_label"(%c0_2, %c1_3) : (index, index) -> !ta.range
    %3 = "ta.sparse_tensor_decl"(%0, %1) {format = "CSR", temporal_tensor = false} : (!ta.range, !ta.range) -> tensor<?x?xf64>
    %4 = "ta.sparse_tensor_decl"(%1, %2) {format = "CSR", temporal_tensor = false} : (!ta.range, !ta.range) -> tensor<?x?xf64>
    %5 = "ta.sparse_tensor_decl"(%0, %2) {format = "CSR", temporal_tensor = false} : (!ta.range, !ta.range) -> tensor<?x?xf64>
    "ta.fill_from_file"(%3) {filename = "SPARSE_FILE_NAME0", readMode = 1 : i32} : (tensor<?x?xf64>) -> ()
    "ta.fill_from_file"(%4) {filename = "SPARSE_FILE_NAME1", readMode = 1 : i32} : (tensor<?x?xf64>) -> ()
    %6 = "ta.mul"(%3, %4, %0, %2) {MaskType = "none", __alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, formats = ["CSR", "CSR", "CSR"], indexing_maps = [#map, #map1, #map2], operand_segment_sizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"} : (tensor<?x?xf64>, tensor<?x?xf64>, !ta.range, !ta.range) -> tensor<?x?xf64>
    "ta.set_op"(%6, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
    "ta.print"(%5) : (tensor<?x?xf64>) -> ()
    ta.return
  }
}


// -----// IR Dump Before {anonymous}::LowerTAMulChainPass () //----- //
func.func @main() {
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %0 = "ta.dynamic_index_label"(%c0, %c1) : (index, index) -> !ta.range
  %c0_0 = arith.constant 0 : index
  %c1_1 = arith.constant 1 : index
  %1 = "ta.dynamic_index_label"(%c0_0, %c1_1) : (index, index) -> !ta.range
  %c0_2 = arith.constant 0 : index
  %c1_3 = arith.constant 1 : index
  %2 = "ta.dynamic_index_label"(%c0_2, %c1_3) : (index, index) -> !ta.range
  %3 = "ta.sparse_tensor_decl"(%0, %1) {format = "CSR", temporal_tensor = false} : (!ta.range, !ta.range) -> tensor<?x?xf64>
  %4 = "ta.sparse_tensor_decl"(%1, %2) {format = "CSR", temporal_tensor = false} : (!ta.range, !ta.range) -> tensor<?x?xf64>
  %5 = "ta.sparse_tensor_decl"(%0, %2) {format = "CSR", temporal_tensor = false} : (!ta.range, !ta.range) -> tensor<?x?xf64>
  "ta.fill_from_file"(%3) {filename = "SPARSE_FILE_NAME0", readMode = 1 : i32} : (tensor<?x?xf64>) -> ()
  "ta.fill_from_file"(%4) {filename = "SPARSE_FILE_NAME1", readMode = 1 : i32} : (tensor<?x?xf64>) -> ()
  %6 = "ta.mul"(%3, %4, %0, %2) {MaskType = "none", __alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, formats = ["CSR", "CSR", "CSR"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operand_segment_sizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"} : (tensor<?x?xf64>, tensor<?x?xf64>, !ta.range, !ta.range) -> tensor<?x?xf64>
  "ta.set_op"(%6, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  "ta.print"(%5) : (tensor<?x?xf64>) -> ()
  return
}

// -----// IR Dump Before {anonymous}::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func @main() {
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %0 = "ta.dynamic_index_label"(%c0, %c1) : (index, index) -> !ta.range
  %c0_0 = arith.constant 0 : index
  %c1_1 = arith.constant 1 : index
  %1 = "ta.dynamic_index_label"(%c0_0, %c1_1) : (index, index) -> !ta.range
  %c0_2 = arith.constant 0 : index
  %c1_3 = arith.constant 1 : index
  %2 = "ta.dynamic_index_label"(%c0_2, %c1_3) : (index, index) -> !ta.range
  %3 = "ta.sparse_tensor_decl"(%0, %1) {format = "CSR", temporal_tensor = false} : (!ta.range, !ta.range) -> tensor<?x?xf64>
  %4 = "ta.sparse_tensor_decl"(%1, %2) {format = "CSR", temporal_tensor = false} : (!ta.range, !ta.range) -> tensor<?x?xf64>
  %5 = "ta.sparse_tensor_decl"(%0, %2) {format = "CSR", temporal_tensor = false} : (!ta.range, !ta.range) -> tensor<?x?xf64>
  "ta.fill_from_file"(%3) {filename = "SPARSE_FILE_NAME0", readMode = 1 : i32} : (tensor<?x?xf64>) -> ()
  "ta.fill_from_file"(%4) {filename = "SPARSE_FILE_NAME1", readMode = 1 : i32} : (tensor<?x?xf64>) -> ()
  %6 = "ta.mul"(%3, %4, %0, %2) {MaskType = "none", __alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, formats = ["CSR", "CSR", "CSR"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operand_segment_sizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"} : (tensor<?x?xf64>, tensor<?x?xf64>, !ta.range, !ta.range) -> tensor<?x?xf64>
  "ta.set_op"(%6, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  "ta.print"(%5) : (tensor<?x?xf64>) -> ()
  return
}

// -----// IR Dump Before {anonymous}::LowerTensorAlgebraToIndexTreePass () //----- //
func.func @main() {
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %0 = "ta.dynamic_index_label"(%c0, %c1) : (index, index) -> !ta.range
  %c0_0 = arith.constant 0 : index
  %c1_1 = arith.constant 1 : index
  %1 = "ta.dynamic_index_label"(%c0_0, %c1_1) : (index, index) -> !ta.range
  %c0_2 = arith.constant 0 : index
  %c1_3 = arith.constant 1 : index
  %2 = "ta.dynamic_index_label"(%c0_2, %c1_3) : (index, index) -> !ta.range
  %3 = "ta.sparse_tensor_decl"(%0, %1) {format = "CSR", temporal_tensor = false} : (!ta.range, !ta.range) -> tensor<?x?xf64>
  %4 = "ta.sparse_tensor_decl"(%1, %2) {format = "CSR", temporal_tensor = false} : (!ta.range, !ta.range) -> tensor<?x?xf64>
  %5 = "ta.sparse_tensor_decl"(%0, %2) {format = "CSR", temporal_tensor = false} : (!ta.range, !ta.range) -> tensor<?x?xf64>
  "ta.fill_from_file"(%3) {filename = "SPARSE_FILE_NAME0", readMode = 1 : i32} : (tensor<?x?xf64>) -> ()
  "ta.fill_from_file"(%4) {filename = "SPARSE_FILE_NAME1", readMode = 1 : i32} : (tensor<?x?xf64>) -> ()
  %6 = "ta.mul"(%3, %4, %0, %2) {MaskType = "none", __alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64, formats = ["CSR", "CSR", "CSR"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operand_segment_sizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"} : (tensor<?x?xf64>, tensor<?x?xf64>, !ta.range, !ta.range) -> tensor<?x?xf64>
  "ta.set_op"(%6, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  "ta.print"(%5) : (tensor<?x?xf64>) -> ()
  return
}

// -----// IR Dump Before IndexTreeDomainInference (indextree-domain-inference) //----- //
func.func @main() {
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %0 = "ta.dynamic_index_label"(%c0, %c1) : (index, index) -> !ta.range
  %c0_0 = arith.constant 0 : index
  %c1_1 = arith.constant 1 : index
  %1 = "ta.dynamic_index_label"(%c0_0, %c1_1) : (index, index) -> !ta.range
  %c0_2 = arith.constant 0 : index
  %c1_3 = arith.constant 1 : index
  %2 = "ta.dynamic_index_label"(%c0_2, %c1_3) : (index, index) -> !ta.range
  %3 = "ta.sparse_tensor_decl"(%0, %1) {format = "CSR", temporal_tensor = false} : (!ta.range, !ta.range) -> tensor<?x?xf64>
  %4 = "ta.sparse_tensor_decl"(%1, %2) {format = "CSR", temporal_tensor = false} : (!ta.range, !ta.range) -> tensor<?x?xf64>
  %5 = "ta.sparse_tensor_decl"(%0, %2) {format = "CSR", temporal_tensor = false} : (!ta.range, !ta.range) -> tensor<?x?xf64>
  "ta.fill_from_file"(%3) {filename = "SPARSE_FILE_NAME0", readMode = 1 : i32} : (tensor<?x?xf64>) -> ()
  "ta.fill_from_file"(%4) {filename = "SPARSE_FILE_NAME1", readMode = 1 : i32} : (tensor<?x?xf64>) -> ()
  %6 = "it.itree"() ({
    %7 = "it.RootOp"() : () -> !it.index_tree
    %8 = "it.IndexOp"(%7) : (!it.index_tree) -> !it.index
    %9 = "it.IndexOp"(%8) : (!it.index) -> !it.index
    %10 = "it.IndexOp"(%9) : (!it.index) -> !it.index
    %11 = "it.OperandOp"(%5, %8, %9) : (tensor<?x?xf64>, !it.index, !it.index) -> !it.operand
    %12 = "it.OperandOp"(%3, %9, %10) : (tensor<?x?xf64>, !it.index, !it.index) -> !it.operand
    %13 = "it.OperandOp"(%4, %8, %10) : (tensor<?x?xf64>, !it.index, !it.index) -> !it.operand
    %14 = "it.ComputeOp"(%10, %11, %12, %13) {comp_worksp_opt = false, semiring = "plusxy_times"} : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %14 : tensor<?x?xf64>  /// ??? (1) What is %10 used for? (2) Why 3 operands? (3) Can the region of iteration be changed? e.g., change the range, or modify the iterator in the loop body?
  }) : () -> tensor<?x?xf64>
  "ta.set_op"(%6, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
  "ta.print"(%5) : (tensor<?x?xf64>) -> ()
  return
}

module {
  func.func @main() {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = "ta.dynamic_index_label"(%c0, %c1) : (index, index) -> !ta.range
    %c0_0 = arith.constant 0 : index
    %c1_1 = arith.constant 1 : index
    %1 = "ta.dynamic_index_label"(%c0_0, %c1_1) : (index, index) -> !ta.range
    %c0_2 = arith.constant 0 : index
    %c1_3 = arith.constant 1 : index
    %2 = "ta.dynamic_index_label"(%c0_2, %c1_3) : (index, index) -> !ta.range
    %3 = "ta.sparse_tensor_decl"(%0, %1) {format = "CSR", temporal_tensor = false} : (!ta.range, !ta.range) -> tensor<?x?xf64>
    %4 = "ta.sparse_tensor_decl"(%1, %2) {format = "CSR", temporal_tensor = false} : (!ta.range, !ta.range) -> tensor<?x?xf64>
    %5 = "ta.sparse_tensor_decl"(%0, %2) {format = "CSR", temporal_tensor = false} : (!ta.range, !ta.range) -> tensor<?x?xf64>
    "ta.fill_from_file"(%3) {filename = "SPARSE_FILE_NAME0", readMode = 1 : i32} : (tensor<?x?xf64>) -> ()
    "ta.fill_from_file"(%4) {filename = "SPARSE_FILE_NAME1", readMode = 1 : i32} : (tensor<?x?xf64>) -> ()
    %6 = "it.itree"() ({
      %7 = "it.RootOp"() : () -> !it.index_tree
      %8 = "it.DomainOp"(%4) {dim = 0 : ui32} : (tensor<?x?xf64>) -> !it.domain
      %9 = "it.DomainOp"(%5) {dim = 0 : ui32} : (tensor<?x?xf64>) -> !it.domain
      %10 = "it.DomainUnionOp"(%9, %8) : (!it.domain, !it.domain) -> !it.domain  /// ??? (1) What is a Domain?
      %11 = "it.IndexOp"(%7, %10) : (!it.index_tree, !it.domain) -> !it.index
      %12 = "it.DomainOp"(%3) {dim = 0 : ui32} : (tensor<?x?xf64>) -> !it.domain
      %13 = "it.DomainOp"(%5) {dim = 1 : ui32} : (tensor<?x?xf64>) -> !it.domain
      %14 = "it.DomainUnionOp"(%13, %12) : (!it.domain, !it.domain) -> !it.domain
      %15 = "it.IndexOp"(%11, %14) : (!it.index, !it.domain) -> !it.index
      %16 = "it.DomainOp"(%4) {dim = 1 : ui32} : (tensor<?x?xf64>) -> !it.domain
      %17 = "it.DomainOp"(%3) {dim = 1 : ui32} : (tensor<?x?xf64>) -> !it.domain
      %18 = "it.DomainIntersectionOp"(%17, %16) : (!it.domain, !it.domain) -> !it.domain
      %19 = "it.IndexOp"(%15, %18) : (!it.index, !it.domain) -> !it.index
      %20 = "it.OperandOp"(%5, %11, %15) : (tensor<?x?xf64>, !it.index, !it.index) -> !it.operand
      %21 = "it.OperandOp"(%3, %15, %19) : (tensor<?x?xf64>, !it.index, !it.index) -> !it.operand
      %22 = "it.OperandOp"(%4, %11, %19) : (tensor<?x?xf64>, !it.index, !it.index) -> !it.operand
      %23 = "it.ComputeOp"(%19, %20, %21, %22) {comp_worksp_opt = false, semiring = "plusxy_times"} : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
      it.yield %23 : tensor<?x?xf64>
    }) : () -> tensor<?x?xf64>
    "ta.set_op"(%6, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x?xf64>) -> ()
    "ta.print"(%5) : (tensor<?x?xf64>) -> ()
    return
  }
}
