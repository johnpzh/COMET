module {
  llvm.mlir.global internal constant @str9("hz\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str8("ey\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2lf \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("ex\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main() attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 1.200000e+03 : f64
    %cst_0 = arith.constant 1.000000e+03 : f64
    %c1200 = arith.constant 1200 : index
    %c1000 = arith.constant 1000 : index
    %c500 = arith.constant 500 : index
    %cst_1 = arith.constant 0.69999999999999996 : f64
    %cst_2 = arith.constant 5.000000e-01 : f64
    %c1_i32 = arith.constant 1 : i32
    %c2_i32 = arith.constant 2 : i32
    %c3_i32 = arith.constant 3 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<1000x1200xf64>
    %alloc_3 = memref.alloc() : memref<1000x1200xf64>
    %alloc_4 = memref.alloc() : memref<1000x1200xf64>
    %alloc_5 = memref.alloc() : memref<500xf64>
    scf.for %arg0 = %c0 to %c500 step %c1 {
      %0 = arith.index_cast %arg0 : index to i32
      %1 = arith.sitofp %0 : i32 to f64
      memref.store %1, %alloc_5[%arg0] : memref<500xf64>
    }
    scf.for %arg0 = %c0 to %c1000 step %c1 {
      %0 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c1200 step %c1 {
        %1 = arith.index_cast %arg1 : index to i32
        %2 = arith.sitofp %0 : i32 to f64
        %3 = arith.addi %1, %c1_i32 : i32
        %4 = arith.sitofp %3 : i32 to f64
        %5 = arith.mulf %2, %4 : f64
        %6 = arith.divf %5, %cst_0 : f64
        memref.store %6, %alloc[%arg0, %arg1] : memref<1000x1200xf64>
        %7 = arith.addi %1, %c2_i32 : i32
        %8 = arith.sitofp %7 : i32 to f64
        %9 = arith.mulf %2, %8 : f64
        %10 = arith.divf %9, %cst : f64
        memref.store %10, %alloc_3[%arg0, %arg1] : memref<1000x1200xf64>
        %11 = arith.addi %1, %c3_i32 : i32
        %12 = arith.sitofp %11 : i32 to f64
        %13 = arith.mulf %2, %12 : f64
        %14 = arith.divf %13, %cst_0 : f64
        memref.store %14, %alloc_4[%arg0, %arg1] : memref<1000x1200xf64>
      }
    }
    %c0_6 = arith.constant 0 : index
    %c500_7 = arith.constant 500 : index
    %c1_8 = arith.constant 1 : index
    scf.for %arg0 = %c0_6 to %c500_7 step %c1_8 {
      %c0_9 = arith.constant 0 : index
      %c1200_10 = arith.constant 1200 : index
      %c1_11 = arith.constant 1 : index
      scf.for %arg1 = %c0_9 to %c1200_10 step %c1_11 {
        %0 = memref.load %alloc_5[%arg0] : memref<500xf64>
        %c0_20 = arith.constant 0 : index
        memref.store %0, %alloc_3[%c0_20, %arg1] : memref<1000x1200xf64>
      }
      %c1_12 = arith.constant 1 : index
      %c1000_13 = arith.constant 1000 : index
      %c1_14 = arith.constant 1 : index
      scf.for %arg1 = %c1_12 to %c1000_13 step %c1_14 {
        %c0_20 = arith.constant 0 : index
        %c1200_21 = arith.constant 1200 : index
        %c1_22 = arith.constant 1 : index
        scf.for %arg2 = %c0_20 to %c1200_21 step %c1_22 {
          %0 = memref.load %alloc_3[%arg1, %arg2] : memref<1000x1200xf64>
          %1 = memref.load %alloc_4[%arg1, %arg2] : memref<1000x1200xf64>
          %c-1 = arith.constant -1 : index
          %2 = arith.addi %arg1, %c-1 : index
          %3 = memref.load %alloc_4[%2, %arg2] : memref<1000x1200xf64>
          %4 = arith.subf %1, %3 : f64
          %5 = arith.mulf %4, %cst_2 : f64
          %6 = arith.subf %0, %5 : f64
          memref.store %6, %alloc_3[%arg1, %arg2] : memref<1000x1200xf64>
        }
      }
      %c0_15 = arith.constant 0 : index
      %c1000_16 = arith.constant 1000 : index
      %c1_17 = arith.constant 1 : index
      scf.for %arg1 = %c0_15 to %c1000_16 step %c1_17 {
        %c1_20 = arith.constant 1 : index
        %c1200_21 = arith.constant 1200 : index
        %c1_22 = arith.constant 1 : index
        scf.for %arg2 = %c1_20 to %c1200_21 step %c1_22 {
          %0 = memref.load %alloc[%arg1, %arg2] : memref<1000x1200xf64>
          %1 = memref.load %alloc_4[%arg1, %arg2] : memref<1000x1200xf64>
          %c-1 = arith.constant -1 : index
          %2 = arith.addi %arg2, %c-1 : index
          %3 = memref.load %alloc_4[%arg1, %2] : memref<1000x1200xf64>
          %4 = arith.subf %1, %3 : f64
          %5 = arith.mulf %4, %cst_2 : f64
          %6 = arith.subf %0, %5 : f64
          memref.store %6, %alloc[%arg1, %arg2] : memref<1000x1200xf64>
        }
      }
      %c0_18 = arith.constant 0 : index
      %c999 = arith.constant 999 : index
      %c1_19 = arith.constant 1 : index
      scf.for %arg1 = %c0_18 to %c999 step %c1_19 {
        %c0_20 = arith.constant 0 : index
        %c1199 = arith.constant 1199 : index
        %c1_21 = arith.constant 1 : index
        scf.for %arg2 = %c0_20 to %c1199 step %c1_21 {
          %0 = memref.load %alloc_4[%arg1, %arg2] : memref<1000x1200xf64>
          %c1_22 = arith.constant 1 : index
          %1 = arith.addi %arg2, %c1_22 : index
          %2 = memref.load %alloc[%arg1, %1] : memref<1000x1200xf64>
          %3 = memref.load %alloc[%arg1, %arg2] : memref<1000x1200xf64>
          %4 = arith.subf %2, %3 : f64
          %c1_23 = arith.constant 1 : index
          %5 = arith.addi %arg1, %c1_23 : index
          %6 = memref.load %alloc_3[%5, %arg2] : memref<1000x1200xf64>
          %7 = arith.addf %4, %6 : f64
          %8 = memref.load %alloc_3[%arg1, %arg2] : memref<1000x1200xf64>
          %9 = arith.subf %7, %8 : f64
          %10 = arith.mulf %9, %cst_1 : f64
          %11 = arith.subf %0, %10 : f64
          memref.store %11, %alloc_4[%arg1, %arg2] : memref<1000x1200xf64>
        }
      }
    }
    memref.dealloc %alloc : memref<1000x1200xf64>
    memref.dealloc %alloc_3 : memref<1000x1200xf64>
    memref.dealloc %alloc_4 : memref<1000x1200xf64>
    memref.dealloc %alloc_5 : memref<500xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}

