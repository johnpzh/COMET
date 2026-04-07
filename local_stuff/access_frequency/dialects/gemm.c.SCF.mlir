module {

func.func @matmul(%arg0: memref<?x400xf32>, %arg1: memref<?x300xf32>, %arg2: memref<?x300xf32>) attributes {test.ptr = "func"} {
  %c400 = arith.constant {test.ptr = "c400"} 400 : index
  %c300 = arith.constant {test.ptr = "c300"} 300 : index
  %c200 = arith.constant {test.ptr = "c200"} 200 : index
  %c0 = arith.constant {test.ptr = "c0"} 0 : index
  %c1 = arith.constant {test.ptr = "c1"} 1 : index
  scf.for %arg3 = %c0 to %c200 step %c1 {
    scf.for %arg4 = %c0 to %c300 step %c1 {
      scf.for %arg5 = %c0 to %c400 step %c1 {
        %0 = memref.load %arg0[%arg3, %arg5] : memref<?x400xf32>
        %1 = memref.load %arg1[%arg5, %arg4] : memref<?x300xf32>
        %2 = arith.mulf %0, %1 : f32
        %3 = memref.load %arg2[%arg3, %arg4] : memref<?x300xf32>
        %4 = arith.addf %3, %2 : f32
        memref.store %4, %arg2[%arg3, %arg4] : memref<?x300xf32>
      } {test.ptr = "for_3"}
    } {test.ptr = "for_2"}
  } {test.ptr = "for_1"}
  return
}

}
