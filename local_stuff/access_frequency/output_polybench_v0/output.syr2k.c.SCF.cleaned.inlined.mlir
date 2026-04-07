module {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2lf \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("C\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main() attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 1.000000e+03 : f64
    %cst_0 = arith.constant 1.200000e+03 : f64
    %c1000 = arith.constant 1000 : index
    %c1200 = arith.constant 1200 : index
    %cst_1 = arith.constant 1.500000e+00 : f64
    %cst_2 = arith.constant 1.200000e+00 : f64
    %c1_i32 = arith.constant 1 : i32
    %c2_i32 = arith.constant 2 : i32
    %c3_i32 = arith.constant 3 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c1000_i32 = arith.constant 1000 : i32
    %c1200_i32 = arith.constant 1200 : i32
    %alloca = memref.alloca() : memref<1xf64>
    %0 = llvm.mlir.undef : f64
    %c0_3 = arith.constant 0 : index
    memref.store %0, %alloca[%c0_3] : memref<1xf64>
    %alloca_4 = memref.alloca() : memref<1xf64>
    %c0_5 = arith.constant 0 : index
    memref.store %0, %alloca_4[%c0_5] : memref<1xf64>
    %alloc = memref.alloc() : memref<1200x1200xf64>
    %alloc_6 = memref.alloc() : memref<1200x1000xf64>
    %alloc_7 = memref.alloc() : memref<1200x1000xf64>
    %c0_8 = arith.constant 0 : index
    memref.store %cst_1, %alloca_4[%c0_8] : memref<1xf64>
    %c0_9 = arith.constant 0 : index
    memref.store %cst_2, %alloca[%c0_9] : memref<1xf64>
    scf.for %arg0 = %c0 to %c1200 step %c1 {
      %3 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c1000 step %c1 {
        %4 = arith.index_cast %arg1 : index to i32
        %5 = arith.muli %3, %4 : i32
        %6 = arith.addi %5, %c1_i32 : i32
        %7 = arith.remsi %6, %c1200_i32 : i32
        %8 = arith.sitofp %7 : i32 to f64
        %9 = arith.divf %8, %cst_0 : f64
        memref.store %9, %alloc_6[%arg0, %arg1] : memref<1200x1000xf64>
        %10 = arith.addi %5, %c2_i32 : i32
        %11 = arith.remsi %10, %c1000_i32 : i32
        %12 = arith.sitofp %11 : i32 to f64
        %13 = arith.divf %12, %cst : f64
        memref.store %13, %alloc_7[%arg0, %arg1] : memref<1200x1000xf64>
      }
    }
    scf.for %arg0 = %c0 to %c1200 step %c1 {
      %3 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c1200 step %c1 {
        %4 = arith.index_cast %arg1 : index to i32
        %5 = arith.muli %3, %4 : i32
        %6 = arith.addi %5, %c3_i32 : i32
        %7 = arith.remsi %6, %c1200_i32 : i32
        %8 = arith.sitofp %7 : i32 to f64
        %9 = arith.divf %8, %cst : f64
        memref.store %9, %alloc[%arg0, %arg1] : memref<1200x1200xf64>
      }
    }
    %c0_10 = arith.constant 0 : index
    %1 = memref.load %alloca_4[%c0_10] : memref<1xf64>
    %c0_11 = arith.constant 0 : index
    %2 = memref.load %alloca[%c0_11] : memref<1xf64>
    %c0_12 = arith.constant 0 : index
    %c1200_13 = arith.constant 1200 : index
    %c1_14 = arith.constant 1 : index
    scf.for %arg0 = %c0_12 to %c1200_13 step %c1_14 {
      %c0_15 = arith.constant 0 : index
      %c1_16 = arith.constant 1 : index
      %3 = arith.addi %arg0, %c1_16 : index
      %c1_17 = arith.constant 1 : index
      scf.for %arg1 = %c0_15 to %3 step %c1_17 {
        %4 = memref.load %alloc[%arg0, %arg1] : memref<1200x1200xf64>
        %5 = arith.mulf %4, %2 : f64
        memref.store %5, %alloc[%arg0, %arg1] : memref<1200x1200xf64>
      }
      %c0_18 = arith.constant 0 : index
      %c1000_19 = arith.constant 1000 : index
      %c1_20 = arith.constant 1 : index
      scf.for %arg1 = %c0_18 to %c1000_19 step %c1_20 {
        %c0_21 = arith.constant 0 : index
        %c1_22 = arith.constant 1 : index
        %4 = arith.addi %arg0, %c1_22 : index
        %c1_23 = arith.constant 1 : index
        scf.for %arg2 = %c0_21 to %4 step %c1_23 {
          %5 = memref.load %alloc_6[%arg2, %arg1] : memref<1200x1000xf64>
          %6 = arith.mulf %5, %1 : f64
          %7 = memref.load %alloc_7[%arg0, %arg1] : memref<1200x1000xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = memref.load %alloc_7[%arg2, %arg1] : memref<1200x1000xf64>
          %10 = arith.mulf %9, %1 : f64
          %11 = memref.load %alloc_6[%arg0, %arg1] : memref<1200x1000xf64>
          %12 = arith.mulf %10, %11 : f64
          %13 = arith.addf %8, %12 : f64
          %14 = memref.load %alloc[%arg0, %arg2] : memref<1200x1200xf64>
          %15 = arith.addf %14, %13 : f64
          memref.store %15, %alloc[%arg0, %arg2] : memref<1200x1200xf64>
        }
      }
    }
    memref.dealloc %alloc : memref<1200x1200xf64>
    memref.dealloc %alloc_6 : memref<1200x1000xf64>
    memref.dealloc %alloc_7 : memref<1200x1000xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}

