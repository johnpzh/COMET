module {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2lf \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main() attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 2.000000e+03 : f64
    %c2000 = arith.constant 2000 : index
    %cst_0 = arith.constant 9.000000e+00 : f64
    %c2_i32 = arith.constant 2 : i32
    %cst_1 = arith.constant 2.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<2000x2000xf64>
    scf.for %arg0 = %c0 to %c2000 step %c1 {
      %0 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c2000 step %c1 {
        %1 = arith.index_cast %arg1 : index to i32
        %2 = arith.sitofp %0 : i32 to f64
        %3 = arith.addi %1, %c2_i32 : i32
        %4 = arith.sitofp %3 : i32 to f64
        %5 = arith.mulf %2, %4 : f64
        %6 = arith.addf %5, %cst_1 : f64
        %7 = arith.divf %6, %cst : f64
        memref.store %7, %alloc[%arg0, %arg1] : memref<2000x2000xf64>
      }
    }
    %c0_2 = arith.constant 0 : index
    %c500 = arith.constant 500 : index
    %c1_3 = arith.constant 1 : index
    scf.for %arg0 = %c0_2 to %c500 step %c1_3 {
      %c1_4 = arith.constant 1 : index
      %c1999 = arith.constant 1999 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg1 = %c1_4 to %c1999 step %c1_5 {
        %c1_6 = arith.constant 1 : index
        %c1999_7 = arith.constant 1999 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg2 = %c1_6 to %c1999_7 step %c1_8 {
          %c-1 = arith.constant -1 : index
          %0 = arith.addi %arg1, %c-1 : index
          %c-1_9 = arith.constant -1 : index
          %1 = arith.addi %arg2, %c-1_9 : index
          %2 = memref.load %alloc[%0, %1] : memref<2000x2000xf64>
          %c-1_10 = arith.constant -1 : index
          %3 = arith.addi %arg1, %c-1_10 : index
          %4 = memref.load %alloc[%3, %arg2] : memref<2000x2000xf64>
          %5 = arith.addf %2, %4 : f64
          %c-1_11 = arith.constant -1 : index
          %6 = arith.addi %arg1, %c-1_11 : index
          %c1_12 = arith.constant 1 : index
          %7 = arith.addi %arg2, %c1_12 : index
          %8 = memref.load %alloc[%6, %7] : memref<2000x2000xf64>
          %9 = arith.addf %5, %8 : f64
          %c-1_13 = arith.constant -1 : index
          %10 = arith.addi %arg2, %c-1_13 : index
          %11 = memref.load %alloc[%arg1, %10] : memref<2000x2000xf64>
          %12 = arith.addf %9, %11 : f64
          %13 = memref.load %alloc[%arg1, %arg2] : memref<2000x2000xf64>
          %14 = arith.addf %12, %13 : f64
          %c1_14 = arith.constant 1 : index
          %15 = arith.addi %arg2, %c1_14 : index
          %16 = memref.load %alloc[%arg1, %15] : memref<2000x2000xf64>
          %17 = arith.addf %14, %16 : f64
          %c1_15 = arith.constant 1 : index
          %18 = arith.addi %arg1, %c1_15 : index
          %c-1_16 = arith.constant -1 : index
          %19 = arith.addi %arg2, %c-1_16 : index
          %20 = memref.load %alloc[%18, %19] : memref<2000x2000xf64>
          %21 = arith.addf %17, %20 : f64
          %c1_17 = arith.constant 1 : index
          %22 = arith.addi %arg1, %c1_17 : index
          %23 = memref.load %alloc[%22, %arg2] : memref<2000x2000xf64>
          %24 = arith.addf %21, %23 : f64
          %c1_18 = arith.constant 1 : index
          %25 = arith.addi %arg1, %c1_18 : index
          %c1_19 = arith.constant 1 : index
          %26 = arith.addi %arg2, %c1_19 : index
          %27 = memref.load %alloc[%25, %26] : memref<2000x2000xf64>
          %28 = arith.addf %24, %27 : f64
          %29 = arith.divf %28, %cst_0 : f64
          memref.store %29, %alloc[%arg1, %arg2] : memref<2000x2000xf64>
        }
      }
    }
    memref.dealloc %alloc : memref<2000x2000xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}

