module {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2lf \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("y\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main() attributes {llvm.linkage = #llvm.linkage<external>} {
    %c2001_i32 = arith.constant 2001 : i32
    %c2000 = arith.constant 2000 : index
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<2000xf64>
    %alloc_1 = memref.alloc() : memref<2000xf64>
    scf.for %arg0 = %c0 to %c2000 step %c1 {
      %5 = arith.index_cast %arg0 : index to i32
      %6 = arith.subi %c2001_i32, %5 : i32
      %7 = arith.sitofp %6 : i32 to f64
      memref.store %7, %alloc[%arg0] : memref<2000xf64>
    }
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    memref.store %0, %alloca[] : memref<f64>
    %alloca_2 = memref.alloca() : memref<f64>
    memref.store %0, %alloca_2[] : memref<f64>
    %alloca_3 = memref.alloca() : memref<f64>
    memref.store %0, %alloca_3[] : memref<f64>
    %alloca_4 = memref.alloca() : memref<2000xf64>
    %c0_5 = arith.constant 0 : index
    %1 = memref.load %alloc[%c0_5] : memref<2000xf64>
    %2 = arith.negf %1 : f64
    %c0_6 = arith.constant 0 : index
    memref.store %2, %alloc_1[%c0_6] : memref<2000xf64>
    memref.store %cst, %alloca_2[] : memref<f64>
    %c0_7 = arith.constant 0 : index
    %3 = memref.load %alloc[%c0_7] : memref<2000xf64>
    %4 = arith.negf %3 : f64
    memref.store %4, %alloca_3[] : memref<f64>
    %c1_8 = arith.constant 1 : index
    %c2000_9 = arith.constant 2000 : index
    %c1_10 = arith.constant 1 : index
    scf.for %arg0 = %c1_8 to %c2000_9 step %c1_10 {
      %5 = memref.load %alloca_3[] : memref<f64>
      %6 = arith.mulf %5, %5 : f64
      %7 = arith.subf %cst, %6 : f64
      %8 = memref.load %alloca_2[] : memref<f64>
      %9 = arith.mulf %7, %8 : f64
      memref.store %9, %alloca_2[] : memref<f64>
      memref.store %cst_0, %alloca[] : memref<f64>
      %c0_11 = arith.constant 0 : index
      %c1_12 = arith.constant 1 : index
      scf.for %arg1 = %c0_11 to %arg0 step %c1_12 {
        %c-1 = arith.constant -1 : index
        %15 = arith.muli %arg1, %c-1 : index
        %16 = arith.addi %arg0, %15 : index
        %c-1_17 = arith.constant -1 : index
        %17 = arith.addi %16, %c-1_17 : index
        %18 = memref.load %alloc[%17] : memref<2000xf64>
        %19 = memref.load %alloc_1[%arg1] : memref<2000xf64>
        %20 = arith.mulf %18, %19 : f64
        %21 = memref.load %alloca[] : memref<f64>
        %22 = arith.addf %21, %20 : f64
        memref.store %22, %alloca[] : memref<f64>
      }
      %10 = memref.load %alloc[%arg0] : memref<2000xf64>
      %11 = memref.load %alloca[] : memref<f64>
      %12 = arith.addf %10, %11 : f64
      %13 = arith.negf %12 : f64
      %14 = arith.divf %13, %9 : f64
      memref.store %14, %alloca_3[] : memref<f64>
      %c0_13 = arith.constant 0 : index
      %c1_14 = arith.constant 1 : index
      scf.for %arg1 = %c0_13 to %arg0 step %c1_14 {
        %15 = memref.load %alloc_1[%arg1] : memref<2000xf64>
        %c-1 = arith.constant -1 : index
        %16 = arith.muli %arg1, %c-1 : index
        %17 = arith.addi %arg0, %16 : index
        %c-1_17 = arith.constant -1 : index
        %18 = arith.addi %17, %c-1_17 : index
        %19 = memref.load %alloc_1[%18] : memref<2000xf64>
        %20 = arith.mulf %14, %19 : f64
        %21 = arith.addf %15, %20 : f64
        memref.store %21, %alloca_4[%arg1] : memref<2000xf64>
      }
      %c0_15 = arith.constant 0 : index
      %c1_16 = arith.constant 1 : index
      scf.for %arg1 = %c0_15 to %arg0 step %c1_16 {
        %15 = memref.load %alloca_4[%arg1] : memref<2000xf64>
        memref.store %15, %alloc_1[%arg1] : memref<2000xf64>
      }
      memref.store %14, %alloc_1[%arg0] : memref<2000xf64>
    }
    memref.dealloc %alloc : memref<2000xf64>
    memref.dealloc %alloc_1 : memref<2000xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}

