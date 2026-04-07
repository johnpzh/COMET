module {
  func.func @main() {
    %c16 = arith.constant 16 : index
    %c6_i32 = arith.constant 6 : i32
    %c8_i32 = arith.constant 8 : i32
    %c8 = arith.constant 8 : index
    %c6 = arith.constant 6 : index
    %c3072 = arith.constant 3072 : index
    %c4096 = arith.constant 4096 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 3.400000e+00 : f64
    %cst_1 = arith.constant 2.300000e+00 : f64
    %alloc = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    %alloc_2 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    %alloc_3 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc : memref<16x16x16x16xf64>)
    linalg.fill ins(%cst_0 : f64) outs(%alloc_2 : memref<16x16x16x16xf64>)
    linalg.fill ins(%cst : f64) outs(%alloc_3 : memref<16x16xf64>)
    %alloc_4 = memref.alloc() {alignment = 32 : i64} : memref<16x16x16x16xf64>
    linalg.transpose ins(%alloc : memref<16x16x16x16xf64>) outs(%alloc_4 : memref<16x16x16x16xf64>) permutation = [0, 2, 3, 1] 
    %collapse_shape = memref.collapse_shape %alloc_4 [[0], [1, 2, 3]] : memref<16x16x16x16xf64> into memref<16x4096xf64>
    %collapse_shape_5 = memref.collapse_shape %alloc_2 [[0, 1, 2], [3]] : memref<16x16x16x16xf64> into memref<4096x16xf64>
    scf.for %arg0 = %c0 to %c4096 step %c3072 {
      %0 = affine.min affine_map<(d0) -> (-d0 + 4096, 3072)>(%arg0)
      %subview = memref.subview %collapse_shape[0, %arg0] [16, %0] [1, 1] : memref<16x4096xf64> to memref<16x?xf64, strided<[4096, 1], offset: ?>>
      %subview_6 = memref.subview %collapse_shape_5[%arg0, 0] [%0, 16] [1, 1] : memref<4096x16xf64> to memref<?x16xf64, strided<[16, 1], offset: ?>>
      scf.for %arg1 = %c0 to %c16 step %c6 {
        %1 = affine.min affine_map<(d0) -> (-d0 + 16, 6)>(%arg1)
        scf.for %arg2 = %c0 to %c16 step %c8 {
          %2 = affine.min affine_map<(d0) -> (-d0 + 16, 8)>(%arg2)
          scf.for %arg3 = %c0 to %0 step %c3072 {
            %3 = affine.min affine_map<(d0)[s0] -> (-d0 + s0, 3072)>(%arg3)[%0]
            %subview_7 = memref.subview %subview[%arg2, %arg3] [%2, %3] [1, 1] : memref<16x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[4096, 1], offset: ?>>
            %subview_8 = memref.subview %subview_6[%arg3, %arg1] [%3, %1] [1, 1] : memref<?x16xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[16, 1], offset: ?>>
            %subview_9 = memref.subview %alloc_3[%arg2, %arg1] [%2, %1] [1, 1] : memref<16x16xf64> to memref<?x?xf64, strided<[16, 1], offset: ?>>
            %cast_10 = memref.cast %subview_7 : memref<?x?xf64, strided<[4096, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
            %cast_11 = memref.cast %subview_8 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
            %cast_12 = memref.cast %subview_9 : memref<?x?xf64, strided<[16, 1], offset: ?>> to memref<?x?xf64, strided<[?, ?], offset: ?>>
            func.call @linalg_matmul_viewsxs_viewsxs_viewsxs(%cast_10, %cast_11, %cast_12, %c8_i32, %c6_i32) : (memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) -> ()
          }
        }
      }
    }
    %cast = memref.cast %alloc_3 : memref<16x16xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast) : (memref<*xf64>) -> ()
    memref.dealloc %alloc_4 : memref<16x16x16x16xf64>
    return
  }
  func.func private @getTime() -> f64
  func.func private @linalg_matmul_viewsxs_viewsxs_viewsxs(memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, memref<?x?xf64, strided<[?, ?], offset: ?>>, i32, i32) attributes {llvm.emit_c_interface}
  func.func private @print_flops(f64)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}
