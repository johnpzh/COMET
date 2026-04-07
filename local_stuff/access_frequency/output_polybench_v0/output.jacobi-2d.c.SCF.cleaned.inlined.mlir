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
    %cst = arith.constant 1.300000e+03 : f64
    %c1300 = arith.constant 1300 : index
    %cst_0 = arith.constant 2.000000e-01 : f64
    %c2_i32 = arith.constant 2 : i32
    %cst_1 = arith.constant 2.000000e+00 : f64
    %c3_i32 = arith.constant 3 : i32
    %cst_2 = arith.constant 3.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<1300x1300xf64>
    %alloc_3 = memref.alloc() : memref<1300x1300xf64>
    scf.for %arg0 = %c0 to %c1300 step %c1 {
      %0 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c1300 step %c1 {
        %1 = arith.index_cast %arg1 : index to i32
        %2 = arith.sitofp %0 : i32 to f64
        %3 = arith.addi %1, %c2_i32 : i32
        %4 = arith.sitofp %3 : i32 to f64
        %5 = arith.mulf %2, %4 : f64
        %6 = arith.addf %5, %cst_1 : f64
        %7 = arith.divf %6, %cst : f64
        memref.store %7, %alloc[%arg0, %arg1] : memref<1300x1300xf64>
        %8 = arith.addi %1, %c3_i32 : i32
        %9 = arith.sitofp %8 : i32 to f64
        %10 = arith.mulf %2, %9 : f64
        %11 = arith.addf %10, %cst_2 : f64
        %12 = arith.divf %11, %cst : f64
        memref.store %12, %alloc_3[%arg0, %arg1] : memref<1300x1300xf64>
      }
    }
    %c0_4 = arith.constant 0 : index
    %c500 = arith.constant 500 : index
    %c1_5 = arith.constant 1 : index
    scf.for %arg0 = %c0_4 to %c500 step %c1_5 {
      %c1_6 = arith.constant 1 : index
      %c1299 = arith.constant 1299 : index
      %c1_7 = arith.constant 1 : index
      scf.for %arg1 = %c1_6 to %c1299 step %c1_7 {
        %c1_11 = arith.constant 1 : index
        %c1299_12 = arith.constant 1299 : index
        %c1_13 = arith.constant 1 : index
        scf.for %arg2 = %c1_11 to %c1299_12 step %c1_13 {
          %0 = memref.load %alloc[%arg1, %arg2] : memref<1300x1300xf64>
          %c-1 = arith.constant -1 : index
          %1 = arith.addi %arg2, %c-1 : index
          %2 = memref.load %alloc[%arg1, %1] : memref<1300x1300xf64>
          %3 = arith.addf %0, %2 : f64
          %c1_14 = arith.constant 1 : index
          %4 = arith.addi %arg2, %c1_14 : index
          %5 = memref.load %alloc[%arg1, %4] : memref<1300x1300xf64>
          %6 = arith.addf %3, %5 : f64
          %c1_15 = arith.constant 1 : index
          %7 = arith.addi %arg1, %c1_15 : index
          %8 = memref.load %alloc[%7, %arg2] : memref<1300x1300xf64>
          %9 = arith.addf %6, %8 : f64
          %c-1_16 = arith.constant -1 : index
          %10 = arith.addi %arg1, %c-1_16 : index
          %11 = memref.load %alloc[%10, %arg2] : memref<1300x1300xf64>
          %12 = arith.addf %9, %11 : f64
          %13 = arith.mulf %12, %cst_0 : f64
          memref.store %13, %alloc_3[%arg1, %arg2] : memref<1300x1300xf64>
        }
      }
      %c1_8 = arith.constant 1 : index
      %c1299_9 = arith.constant 1299 : index
      %c1_10 = arith.constant 1 : index
      scf.for %arg1 = %c1_8 to %c1299_9 step %c1_10 {
        %c1_11 = arith.constant 1 : index
        %c1299_12 = arith.constant 1299 : index
        %c1_13 = arith.constant 1 : index
        scf.for %arg2 = %c1_11 to %c1299_12 step %c1_13 {
          %0 = memref.load %alloc_3[%arg1, %arg2] : memref<1300x1300xf64>
          %c-1 = arith.constant -1 : index
          %1 = arith.addi %arg2, %c-1 : index
          %2 = memref.load %alloc_3[%arg1, %1] : memref<1300x1300xf64>
          %3 = arith.addf %0, %2 : f64
          %c1_14 = arith.constant 1 : index
          %4 = arith.addi %arg2, %c1_14 : index
          %5 = memref.load %alloc_3[%arg1, %4] : memref<1300x1300xf64>
          %6 = arith.addf %3, %5 : f64
          %c1_15 = arith.constant 1 : index
          %7 = arith.addi %arg1, %c1_15 : index
          %8 = memref.load %alloc_3[%7, %arg2] : memref<1300x1300xf64>
          %9 = arith.addf %6, %8 : f64
          %c-1_16 = arith.constant -1 : index
          %10 = arith.addi %arg1, %c-1_16 : index
          %11 = memref.load %alloc_3[%10, %arg2] : memref<1300x1300xf64>
          %12 = arith.addf %9, %11 : f64
          %13 = arith.mulf %12, %cst_0 : f64
          memref.store %13, %alloc[%arg1, %arg2] : memref<1300x1300xf64>
        }
      }
    }
    memref.dealloc %alloc : memref<1300x1300xf64>
    memref.dealloc %alloc_3 : memref<1300x1300xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}

