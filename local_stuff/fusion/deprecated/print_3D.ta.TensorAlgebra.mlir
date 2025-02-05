module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.index
    %1 = "ta.index_label"() : () -> !ta.index
    %2 = "ta.index_label"() : () -> !ta.index
    %3 = "ta.index_label"() : () -> !ta.index
    %4 = "ta.spTensor_decl"() <{format = "CSF", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>
    %c0 = arith.constant 0 : index
    %5 = "ta.dim"(%4, %c0) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
    %c1 = arith.constant 1 : index
    %6 = "ta.dim"(%4, %c1) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
    %c2 = arith.constant 2 : index
    %7 = "ta.dim"(%4, %c2) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>, index) -> index
    "ta.fill_from_file"(%4) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> ()
    "ta.print"(%4) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> ()
    return
  }
}
