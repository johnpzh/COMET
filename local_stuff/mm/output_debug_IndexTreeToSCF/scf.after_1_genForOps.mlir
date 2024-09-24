module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.indexlabel
    %1 = "ta.index_label"() : () -> !ta.indexlabel
    %2 = "ta.index_label"() : () -> !ta.indexlabel
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<8x4xf64>
    %3 = bufferization.to_tensor %alloc : memref<8x4xf64>
    %alloc_0 = memref.alloc() {alignment = 32 : i64} : memref<4x2xf64>
    %4 = bufferization.to_tensor %alloc_0 : memref<4x2xf64>
    %alloc_1 = memref.alloc() {alignment = 32 : i64} : memref<8x2xf64>
    %5 = bufferization.to_tensor %alloc_1 : memref<8x2xf64>
    %cst = arith.constant 2.200000e+00 : f64
    linalg.fill ins(%cst : f64) outs(%alloc : memref<8x4xf64>)
    %cst_2 = arith.constant 3.400000e+00 : f64
    linalg.fill ins(%cst_2 : f64) outs(%alloc_0 : memref<4x2xf64>)
    %cst_3 = arith.constant 0.000000e+00 : f64
    linalg.fill ins(%cst_3 : f64) outs(%alloc_1 : memref<8x2xf64>)
    %6 = "it.ComputeRHS"(%3, %4) <{allFormats = [["D", "D"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (tensor<8x4xf64>, tensor<4x2xf64>) -> tensor<*xf64>
    %7 = "it.ComputeLHS"(%5) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<8x2xf64>) -> tensor<*xf64>
    %8 = "it.Compute"(%6, %7) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %9 = "it.Indices"(%8) <{indices = [2], iterator_type = "parallel"}> : (i64) -> i64
    %10 = "it.Indices"(%9) <{indices = [1], iterator_type = "default"}> : (i64) -> i64
    %11 = "it.Indices"(%10) <{indices = [0], iterator_type = "parallel"}> : (i64) -> i64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c0_4 = arith.constant 0 : index
    %dim = tensor.dim %3, %c0_4 : tensor<8x4xf64>
    scf.for %arg0 = %c0 to %dim step %c1 {
    }
    %12 = "it.itree"(%11) : (i64) -> i64
    "ta.print"(%5) : (tensor<8x2xf64>) -> ()
    return
  }
  func.func private @comet_sort_index(memref<*xindex>, index, index)
}