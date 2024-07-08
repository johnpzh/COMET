// bin/comet-opt --emit-it ../integration_test/ops/mult_spmm_CSRxDense.ta

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
    %c4 = arith.constant 4 : index
    %2 = "ta.static_index_label"(%c0_2, %c4, %c1_3) : (index, index, index) -> !ta.range
    %3 = "ta.sparse_tensor_decl"(%0, %1) {format = "CSR", temporal_tensor = false} : (!ta.range, !ta.range) -> tensor<?x?xf64>
    %4 = "ta.dense_tensor_decl"(%1, %2) {format = "Dense"} : (!ta.range, !ta.range) -> tensor<?x4xf64>
    %5 = "ta.dense_tensor_decl"(%0, %2) {format = "Dense"} : (!ta.range, !ta.range) -> tensor<?x4xf64>
    "ta.fill_from_file"(%3) {filename = "SPARSE_FILE_NAME0", readMode = 1 : i32} : (tensor<?x?xf64>) -> ()
    "ta.fill"(%4) {value = 1.700000e+00 : f64} : (tensor<?x4xf64>) -> ()
    "ta.fill"(%5) {value = 0.000000e+00 : f64} : (tensor<?x4xf64>) -> ()
    %6 = "it.itree"(%5, %3, %4) ({
    ^bb0(%arg0: tensor<?x4xf64>, %arg1: tensor<?x4xf64>, %arg2: tensor<?x4xf64>):
      %7 = "it.RootOp"() : () -> !it.index_tree
      %8 = "it.DomainOp"(%arg1) {dim = 0 : ui32} : (tensor<?x4xf64>) -> !it.domain
      %9 = "it.DomainOp"(%arg0) {dim = 0 : ui32} : (tensor<?x4xf64>) -> !it.domain
      %10 = "it.DomainUnionOp"(%9, %8) : (!it.domain, !it.domain) -> !it.domain
      %11 = "it.IndexOp"(%7, %10) : (!it.index_tree, !it.domain) -> !it.index
      %12 = "it.DomainOp"(%arg2) {dim = 0 : ui32} : (tensor<?x4xf64>) -> !it.domain
      %13 = "it.DomainOp"(%arg1) {dim = 1 : ui32} : (tensor<?x4xf64>) -> !it.domain
      %14 = "it.DomainIntersectionOp"(%13, %12) : (!it.domain, !it.domain) -> !it.domain
      %15 = "it.IndexOp"(%11, %14) : (!it.index, !it.domain) -> !it.index
      %16 = "it.DomainOp"(%arg2) {dim = 1 : ui32} : (tensor<?x4xf64>) -> !it.domain
      %17 = "it.DomainOp"(%arg0) {dim = 1 : ui32} : (tensor<?x4xf64>) -> !it.domain
      %18 = "it.DomainUnionOp"(%17, %16) : (!it.domain, !it.domain) -> !it.domain
      %19 = "it.IndexOp"(%15, %18) : (!it.index, !it.domain) -> !it.index
      %20 = "it.OperandOp"(%arg0, %11, %19) : (tensor<?x4xf64>, !it.index, !it.index) -> !it.operand
      %21 = "it.OperandOp"(%arg1, %11, %15) : (tensor<?x4xf64>, !it.index, !it.index) -> !it.operand
      %22 = "it.OperandOp"(%arg2, %15, %19) : (tensor<?x4xf64>, !it.index, !it.index) -> !it.operand
      %23 = "it.ComputeOp"(%19, %20, %21, %22) {comp_worksp_opt = false, semiring = "plusxy_times"} : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
      it.yield %23 : tensor<?x4xf64>
    }) : (tensor<?x4xf64>, tensor<?x?xf64>, tensor<?x4xf64>) -> tensor<?x4xf64>
    "ta.set_op"(%6, %5) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    "ta.print"(%5) : (tensor<?x4xf64>) -> ()
    return
  }
}
