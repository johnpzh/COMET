module {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2lf \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("B\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main() attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 1.200000e+03 : f64
    %c1200 = arith.constant 1200 : index
    %cst_0 = arith.constant 1.000000e+03 : f64
    %c1000 = arith.constant 1000 : index
    %cst_1 = arith.constant 1.500000e+00 : f64
    %cst_2 = arith.constant 1.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c1200_i32 = arith.constant 1200 : i32
    %c1000_i32 = arith.constant 1000 : i32
    %alloca = memref.alloca() : memref<1xf64>
    %0 = llvm.mlir.undef : f64
    %c0_3 = arith.constant 0 : index
    memref.store %0, %alloca[%c0_3] : memref<1xf64>
    %alloc = memref.alloc() : memref<1000x1000xf64>
    %alloc_4 = memref.alloc() : memref<1000x1200xf64>
    %c0_5 = arith.constant 0 : index
    memref.store %cst_1, %alloca[%c0_5] : memref<1xf64>
    scf.for %arg0 = %c0 to %c1000 step %c1 {
      %2 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %arg0 step %c1 {
        %3 = arith.index_cast %arg1 : index to i32
        %4 = arith.addi %2, %3 : i32
        %5 = arith.remsi %4, %c1000_i32 : i32
        %6 = arith.sitofp %5 : i32 to f64
        %7 = arith.divf %6, %cst_0 : f64
        memref.store %7, %alloc[%arg0, %arg1] : memref<1000x1000xf64>
      }
      memref.store %cst_2, %alloc[%arg0, %arg0] : memref<1000x1000xf64>
      scf.for %arg1 = %c0 to %c1200 step %c1 {
        %3 = arith.index_cast %arg1 : index to i32
        %4 = arith.subi %2, %3 : i32
        %5 = arith.addi %4, %c1200_i32 : i32
        %6 = arith.remsi %5, %c1200_i32 : i32
        %7 = arith.sitofp %6 : i32 to f64
        %8 = arith.divf %7, %cst : f64
        memref.store %8, %alloc_4[%arg0, %arg1] : memref<1000x1200xf64>
      }
    }
    %c0_6 = arith.constant 0 : index
    %1 = memref.load %alloca[%c0_6] : memref<1xf64>
    %c0_7 = arith.constant 0 : index
    %c1000_8 = arith.constant 1000 : index
    %c1_9 = arith.constant 1 : index
    scf.for %arg0 = %c0_7 to %c1000_8 step %c1_9 {
      %c0_10 = arith.constant 0 : index
      %c1200_11 = arith.constant 1200 : index
      %c1_12 = arith.constant 1 : index
      scf.for %arg1 = %c0_10 to %c1200_11 step %c1_12 {
        %c1_13 = arith.constant 1 : index
        %2 = arith.addi %arg0, %c1_13 : index
        %c1000_14 = arith.constant 1000 : index
        %c1_15 = arith.constant 1 : index
        scf.for %arg2 = %2 to %c1000_14 step %c1_15 {
          %5 = memref.load %alloc[%arg2, %arg0] : memref<1000x1000xf64>
          %6 = memref.load %alloc_4[%arg2, %arg1] : memref<1000x1200xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = memref.load %alloc_4[%arg0, %arg1] : memref<1000x1200xf64>
          %9 = arith.addf %8, %7 : f64
          memref.store %9, %alloc_4[%arg0, %arg1] : memref<1000x1200xf64>
        }
        %3 = memref.load %alloc_4[%arg0, %arg1] : memref<1000x1200xf64>
        %4 = arith.mulf %1, %3 : f64
        memref.store %4, %alloc_4[%arg0, %arg1] : memref<1000x1200xf64>
      }
    }
    memref.dealloc %alloc : memref<1000x1000xf64>
    memref.dealloc %alloc_4 : memref<1000x1200xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}

