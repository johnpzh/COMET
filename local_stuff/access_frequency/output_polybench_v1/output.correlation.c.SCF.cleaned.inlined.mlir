module {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2lf \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("corr\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main() attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e-01 : f64
    %cst_2 = arith.constant 1.400000e+03 : f64
    %cst_3 = arith.constant 1.200000e+03 : f64
    %c1200 = arith.constant 1200 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c1400 = arith.constant 1400 : index
    %alloca = memref.alloca() : memref<1xf64>
    %0 = llvm.mlir.undef : f64
    %c0_4 = arith.constant 0 : index
    memref.store %0, %alloca[%c0_4] : memref<1xf64>
    %alloc = memref.alloc() : memref<1400x1200xf64>
    %alloc_5 = memref.alloc() : memref<1200x1200xf64>
    %alloc_6 = memref.alloc() : memref<1200xf64>
    %alloc_7 = memref.alloc() : memref<1200xf64>
    %c0_8 = arith.constant 0 : index
    memref.store %cst_2, %alloca[%c0_8] : memref<1xf64>
    scf.for %arg0 = %c0 to %c1400 step %c1 {
      %3 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c1200 step %c1 {
        %4 = arith.index_cast %arg1 : index to i32
        %5 = arith.muli %3, %4 : i32
        %6 = arith.sitofp %5 : i32 to f64
        %7 = arith.divf %6, %cst_3 : f64
        %8 = arith.sitofp %3 : i32 to f64
        %9 = arith.addf %7, %8 : f64
        memref.store %9, %alloc[%arg0, %arg1] : memref<1400x1200xf64>
      }
    }
    %c0_9 = arith.constant 0 : index
    %1 = memref.load %alloca[%c0_9] : memref<1xf64>
    %c0_10 = arith.constant 0 : index
    %c1200_11 = arith.constant 1200 : index
    %c1_12 = arith.constant 1 : index
    scf.for %arg0 = %c0_10 to %c1200_11 step %c1_12 {
      memref.store %cst_0, %alloc_6[%arg0] : memref<1200xf64>
      %c0_23 = arith.constant 0 : index
      %c1400_24 = arith.constant 1400 : index
      %c1_25 = arith.constant 1 : index
      scf.for %arg1 = %c0_23 to %c1400_24 step %c1_25 {
        %5 = memref.load %alloc[%arg1, %arg0] : memref<1400x1200xf64>
        %6 = memref.load %alloc_6[%arg0] : memref<1200xf64>
        %7 = arith.addf %6, %5 : f64
        memref.store %7, %alloc_6[%arg0] : memref<1200xf64>
      }
      %3 = memref.load %alloc_6[%arg0] : memref<1200xf64>
      %4 = arith.divf %3, %1 : f64
      memref.store %4, %alloc_6[%arg0] : memref<1200xf64>
    }
    %c0_13 = arith.constant 0 : index
    %c1200_14 = arith.constant 1200 : index
    %c1_15 = arith.constant 1 : index
    scf.for %arg0 = %c0_13 to %c1200_14 step %c1_15 {
      memref.store %cst_0, %alloc_7[%arg0] : memref<1200xf64>
      %c0_23 = arith.constant 0 : index
      %c1400_24 = arith.constant 1400 : index
      %c1_25 = arith.constant 1 : index
      scf.for %arg1 = %c0_23 to %c1400_24 step %c1_25 {
        %8 = memref.load %alloc[%arg1, %arg0] : memref<1400x1200xf64>
        %9 = memref.load %alloc_6[%arg0] : memref<1200xf64>
        %10 = arith.subf %8, %9 : f64
        %11 = arith.mulf %10, %10 : f64
        %12 = memref.load %alloc_7[%arg0] : memref<1200xf64>
        %13 = arith.addf %12, %11 : f64
        memref.store %13, %alloc_7[%arg0] : memref<1200xf64>
      }
      %3 = memref.load %alloc_7[%arg0] : memref<1200xf64>
      %4 = arith.divf %3, %1 : f64
      %5 = math.sqrt %4 : f64
      %6 = arith.cmpf ole, %5, %cst_1 : f64
      %7 = arith.select %6, %cst, %5 : f64
      memref.store %7, %alloc_7[%arg0] : memref<1200xf64>
    }
    %2 = math.sqrt %1 : f64
    %c0_16 = arith.constant 0 : index
    %c1400_17 = arith.constant 1400 : index
    %c1_18 = arith.constant 1 : index
    scf.for %arg0 = %c0_16 to %c1400_17 step %c1_18 {
      %c0_23 = arith.constant 0 : index
      %c1200_24 = arith.constant 1200 : index
      %c1_25 = arith.constant 1 : index
      scf.for %arg1 = %c0_23 to %c1200_24 step %c1_25 {
        %3 = memref.load %alloc_6[%arg1] : memref<1200xf64>
        %4 = memref.load %alloc[%arg0, %arg1] : memref<1400x1200xf64>
        %5 = arith.subf %4, %3 : f64
        memref.store %5, %alloc[%arg0, %arg1] : memref<1400x1200xf64>
        %6 = memref.load %alloc_7[%arg1] : memref<1200xf64>
        %7 = arith.mulf %2, %6 : f64
        %8 = arith.divf %5, %7 : f64
        memref.store %8, %alloc[%arg0, %arg1] : memref<1400x1200xf64>
      }
    }
    %c0_19 = arith.constant 0 : index
    %c1199 = arith.constant 1199 : index
    %c1_20 = arith.constant 1 : index
    scf.for %arg0 = %c0_19 to %c1199 step %c1_20 {
      memref.store %cst, %alloc_5[%arg0, %arg0] : memref<1200x1200xf64>
      %c1_23 = arith.constant 1 : index
      %3 = arith.addi %arg0, %c1_23 : index
      %c1200_24 = arith.constant 1200 : index
      %c1_25 = arith.constant 1 : index
      scf.for %arg1 = %3 to %c1200_24 step %c1_25 {
        memref.store %cst_0, %alloc_5[%arg0, %arg1] : memref<1200x1200xf64>
        %c0_26 = arith.constant 0 : index
        %c1400_27 = arith.constant 1400 : index
        %c1_28 = arith.constant 1 : index
        scf.for %arg2 = %c0_26 to %c1400_27 step %c1_28 {
          %5 = memref.load %alloc[%arg2, %arg0] : memref<1400x1200xf64>
          %6 = memref.load %alloc[%arg2, %arg1] : memref<1400x1200xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = memref.load %alloc_5[%arg0, %arg1] : memref<1200x1200xf64>
          %9 = arith.addf %8, %7 : f64
          memref.store %9, %alloc_5[%arg0, %arg1] : memref<1200x1200xf64>
        }
        %4 = memref.load %alloc_5[%arg0, %arg1] : memref<1200x1200xf64>
        memref.store %4, %alloc_5[%arg1, %arg0] : memref<1200x1200xf64>
      }
    }
    %c1199_21 = arith.constant 1199 : index
    %c1199_22 = arith.constant 1199 : index
    memref.store %cst, %alloc_5[%c1199_21, %c1199_22] : memref<1200x1200xf64>
    memref.dealloc %alloc : memref<1400x1200xf64>
    memref.dealloc %alloc_5 : memref<1200x1200xf64>
    memref.dealloc %alloc_6 : memref<1200xf64>
    memref.dealloc %alloc_7 : memref<1200xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}

