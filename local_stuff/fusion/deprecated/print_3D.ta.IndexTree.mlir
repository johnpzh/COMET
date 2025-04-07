module {
  func.func @main() {
    %0 = "ta.spTensor_decl"() <{format = "CSF", temporal_tensor = false}> : () -> !ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>
    "ta.fill_from_file"(%0) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> ()
    "ta.print"(%0) : (!ta.sparse_tensor<f64, i64, ?x?x?, cu, unk, cu, unk, cu, unk>) -> ()
    return
  }
}
