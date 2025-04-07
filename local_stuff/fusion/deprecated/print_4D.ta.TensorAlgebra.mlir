Unsupported formats: CSF (tensor dimes: 4) 
module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.index_label"() : () -> !ta.index
    %4 = "ta.index_label"() : () -> !ta.index
    %5 = "ta.spTensor_decl"() <{format = "CSF", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?x?x?, >
    %c0 = arith.constant 0 : index
    %6 = "ta.dim"(%5, %c0) : (!ta.sparse_tensor<f64, i64, ?x?x?x?, >, index) -> index
    %c1 = arith.constant 1 : index
    %7 = "ta.dim"(%5, %c1) : (!ta.sparse_tensor<f64, i64, ?x?x?x?, >, index) -> index
    %c2 = arith.constant 2 : index
    %8 = "ta.dim"(%5, %c2) : (!ta.sparse_tensor<f64, i64, ?x?x?x?, >, index) -> index
    %c3 = arith.constant 3 : index
    %9 = "ta.dim"(%5, %c3) : (!ta.sparse_tensor<f64, i64, ?x?x?x?, >, index) -> index
    "ta.fill_from_file"(%5) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?x?, >) -> ()
    "ta.print"(%5) : (!ta.sparse_tensor<f64, i64, ?x?x?x?, >) -> ()
    return
  }
}
