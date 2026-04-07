module {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2lf \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("u\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main() attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant -3999.0000000000005 : f64
    %cst_0 = arith.constant -1999.0000000000002 : f64
    %cst_1 = arith.constant 1000.0000000000001 : f64
    %cst_2 = arith.constant 2000.0000000000002 : f64
    %cst_3 = arith.constant 2001.0000000000002 : f64
    %cst_4 = arith.constant -1000.0000000000001 : f64
    %cst_5 = arith.constant 4001.0000000000005 : f64
    %cst_6 = arith.constant -2000.0000000000002 : f64
    %cst_7 = arith.constant 1.000000e+03 : f64
    %c1000 = arith.constant 1000 : index
    %cst_8 = arith.constant 0.000000e+00 : f64
    %cst_9 = arith.constant 1.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c1000_i32 = arith.constant 1000 : i32
    %alloc = memref.alloc() : memref<1000x1000xf64>
    %alloc_10 = memref.alloc() : memref<1000x1000xf64>
    %alloc_11 = memref.alloc() : memref<1000x1000xf64>
    %alloc_12 = memref.alloc() : memref<1000x1000xf64>
    scf.for %arg0 = %c0 to %c1000 step %c1 {
      %0 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c1000 step %c1 {
        %1 = arith.index_cast %arg1 : index to i32
        %2 = arith.addi %0, %c1000_i32 : i32
        %3 = arith.subi %2, %1 : i32
        %4 = arith.sitofp %3 : i32 to f64
        %5 = arith.divf %4, %cst_7 : f64
        memref.store %5, %alloc[%arg0, %arg1] : memref<1000x1000xf64>
      }
    }
    %c1_13 = arith.constant 1 : index
    %c501 = arith.constant 501 : index
    %c1_14 = arith.constant 1 : index
    scf.for %arg0 = %c1_13 to %c501 step %c1_14 {
      %c1_15 = arith.constant 1 : index
      %c999 = arith.constant 999 : index
      %c1_16 = arith.constant 1 : index
      scf.for %arg1 = %c1_15 to %c999 step %c1_16 {
        %c0_20 = arith.constant 0 : index
        memref.store %cst_9, %alloc_10[%c0_20, %arg1] : memref<1000x1000xf64>
        %c0_21 = arith.constant 0 : index
        memref.store %cst_8, %alloc_11[%arg1, %c0_21] : memref<1000x1000xf64>
        %c0_22 = arith.constant 0 : index
        %0 = memref.load %alloc_10[%c0_22, %arg1] : memref<1000x1000xf64>
        %c0_23 = arith.constant 0 : index
        memref.store %0, %alloc_12[%arg1, %c0_23] : memref<1000x1000xf64>
        %c1_24 = arith.constant 1 : index
        %c999_25 = arith.constant 999 : index
        %c1_26 = arith.constant 1 : index
        scf.for %arg2 = %c1_24 to %c999_25 step %c1_26 {
          %c-1 = arith.constant -1 : index
          %1 = arith.addi %arg2, %c-1 : index
          %2 = memref.load %alloc_11[%arg1, %1] : memref<1000x1000xf64>
          %3 = arith.mulf %2, %cst_6 : f64
          %4 = arith.addf %3, %cst_5 : f64
          %5 = arith.divf %cst_2, %4 : f64
          memref.store %5, %alloc_11[%arg1, %arg2] : memref<1000x1000xf64>
          %c-1_31 = arith.constant -1 : index
          %6 = arith.addi %arg1, %c-1_31 : index
          %7 = memref.load %alloc[%arg2, %6] : memref<1000x1000xf64>
          %8 = arith.mulf %7, %cst_1 : f64
          %9 = memref.load %alloc[%arg2, %arg1] : memref<1000x1000xf64>
          %10 = arith.mulf %9, %cst_0 : f64
          %11 = arith.addf %8, %10 : f64
          %c1_32 = arith.constant 1 : index
          %12 = arith.addi %arg1, %c1_32 : index
          %13 = memref.load %alloc[%arg2, %12] : memref<1000x1000xf64>
          %14 = arith.mulf %13, %cst_4 : f64
          %15 = arith.subf %11, %14 : f64
          %c-1_33 = arith.constant -1 : index
          %16 = arith.addi %arg2, %c-1_33 : index
          %17 = memref.load %alloc_12[%arg1, %16] : memref<1000x1000xf64>
          %18 = arith.mulf %17, %cst_6 : f64
          %19 = arith.subf %15, %18 : f64
          %20 = arith.divf %19, %4 : f64
          memref.store %20, %alloc_12[%arg1, %arg2] : memref<1000x1000xf64>
        }
        %c999_27 = arith.constant 999 : index
        memref.store %cst_9, %alloc_10[%c999_27, %arg1] : memref<1000x1000xf64>
        %c1_28 = arith.constant 1 : index
        %c999_29 = arith.constant 999 : index
        %c1_30 = arith.constant 1 : index
        scf.for %arg2 = %c1_28 to %c999_29 step %c1_30 {
          %c-1 = arith.constant -1 : index
          %1 = arith.muli %arg2, %c-1 : index
          %c999_31 = arith.constant 999 : index
          %2 = arith.addi %1, %c999_31 : index
          %3 = memref.load %alloc_11[%arg1, %2] : memref<1000x1000xf64>
          %c-1_32 = arith.constant -1 : index
          %4 = arith.muli %arg2, %c-1_32 : index
          %c1000_33 = arith.constant 1000 : index
          %5 = arith.addi %4, %c1000_33 : index
          %6 = memref.load %alloc_10[%5, %arg1] : memref<1000x1000xf64>
          %7 = arith.mulf %3, %6 : f64
          %c-1_34 = arith.constant -1 : index
          %8 = arith.muli %arg2, %c-1_34 : index
          %c999_35 = arith.constant 999 : index
          %9 = arith.addi %8, %c999_35 : index
          %10 = memref.load %alloc_12[%arg1, %9] : memref<1000x1000xf64>
          %11 = arith.addf %7, %10 : f64
          %c-1_36 = arith.constant -1 : index
          %12 = arith.muli %arg2, %c-1_36 : index
          %c999_37 = arith.constant 999 : index
          %13 = arith.addi %12, %c999_37 : index
          memref.store %11, %alloc_10[%13, %arg1] : memref<1000x1000xf64>
        }
      }
      %c1_17 = arith.constant 1 : index
      %c999_18 = arith.constant 999 : index
      %c1_19 = arith.constant 1 : index
      scf.for %arg1 = %c1_17 to %c999_18 step %c1_19 {
        %c0_20 = arith.constant 0 : index
        memref.store %cst_9, %alloc[%arg1, %c0_20] : memref<1000x1000xf64>
        %c0_21 = arith.constant 0 : index
        memref.store %cst_8, %alloc_11[%arg1, %c0_21] : memref<1000x1000xf64>
        %c0_22 = arith.constant 0 : index
        %0 = memref.load %alloc[%arg1, %c0_22] : memref<1000x1000xf64>
        %c0_23 = arith.constant 0 : index
        memref.store %0, %alloc_12[%arg1, %c0_23] : memref<1000x1000xf64>
        %c1_24 = arith.constant 1 : index
        %c999_25 = arith.constant 999 : index
        %c1_26 = arith.constant 1 : index
        scf.for %arg2 = %c1_24 to %c999_25 step %c1_26 {
          %c-1 = arith.constant -1 : index
          %1 = arith.addi %arg2, %c-1 : index
          %2 = memref.load %alloc_11[%arg1, %1] : memref<1000x1000xf64>
          %3 = arith.mulf %2, %cst_4 : f64
          %4 = arith.addf %3, %cst_3 : f64
          %5 = arith.divf %cst_1, %4 : f64
          memref.store %5, %alloc_11[%arg1, %arg2] : memref<1000x1000xf64>
          %c-1_31 = arith.constant -1 : index
          %6 = arith.addi %arg1, %c-1_31 : index
          %7 = memref.load %alloc_10[%6, %arg2] : memref<1000x1000xf64>
          %8 = arith.mulf %7, %cst_2 : f64
          %9 = memref.load %alloc_10[%arg1, %arg2] : memref<1000x1000xf64>
          %10 = arith.mulf %9, %cst : f64
          %11 = arith.addf %8, %10 : f64
          %c1_32 = arith.constant 1 : index
          %12 = arith.addi %arg1, %c1_32 : index
          %13 = memref.load %alloc_10[%12, %arg2] : memref<1000x1000xf64>
          %14 = arith.mulf %13, %cst_6 : f64
          %15 = arith.subf %11, %14 : f64
          %c-1_33 = arith.constant -1 : index
          %16 = arith.addi %arg2, %c-1_33 : index
          %17 = memref.load %alloc_12[%arg1, %16] : memref<1000x1000xf64>
          %18 = arith.mulf %17, %cst_4 : f64
          %19 = arith.subf %15, %18 : f64
          %20 = arith.divf %19, %4 : f64
          memref.store %20, %alloc_12[%arg1, %arg2] : memref<1000x1000xf64>
        }
        %c999_27 = arith.constant 999 : index
        memref.store %cst_9, %alloc[%arg1, %c999_27] : memref<1000x1000xf64>
        %c1_28 = arith.constant 1 : index
        %c999_29 = arith.constant 999 : index
        %c1_30 = arith.constant 1 : index
        scf.for %arg2 = %c1_28 to %c999_29 step %c1_30 {
          %c-1 = arith.constant -1 : index
          %1 = arith.muli %arg2, %c-1 : index
          %c999_31 = arith.constant 999 : index
          %2 = arith.addi %1, %c999_31 : index
          %3 = memref.load %alloc_11[%arg1, %2] : memref<1000x1000xf64>
          %c-1_32 = arith.constant -1 : index
          %4 = arith.muli %arg2, %c-1_32 : index
          %c1000_33 = arith.constant 1000 : index
          %5 = arith.addi %4, %c1000_33 : index
          %6 = memref.load %alloc[%arg1, %5] : memref<1000x1000xf64>
          %7 = arith.mulf %3, %6 : f64
          %c-1_34 = arith.constant -1 : index
          %8 = arith.muli %arg2, %c-1_34 : index
          %c999_35 = arith.constant 999 : index
          %9 = arith.addi %8, %c999_35 : index
          %10 = memref.load %alloc_12[%arg1, %9] : memref<1000x1000xf64>
          %11 = arith.addf %7, %10 : f64
          %c-1_36 = arith.constant -1 : index
          %12 = arith.muli %arg2, %c-1_36 : index
          %c999_37 = arith.constant 999 : index
          %13 = arith.addi %12, %c999_37 : index
          memref.store %11, %alloc[%arg1, %13] : memref<1000x1000xf64>
        }
      }
    }
    memref.dealloc %alloc : memref<1000x1000xf64>
    memref.dealloc %alloc_10 : memref<1000x1000xf64>
    memref.dealloc %alloc_11 : memref<1000x1000xf64>
    memref.dealloc %alloc_12 : memref<1000x1000xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}

