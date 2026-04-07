####====---------------------------------====####

memory object: `%alloc_7 = memref.alloc() : memref<1000x1000xf64>`
object name: %alloc_7
read time-complexity: O(1200000 + 1200000*%arg0 + 1200000*%arg0)
write time-complexity: O(1000*(1000-%5) + 1000*%5)

memory object: `%alloc = memref.alloc() : memref<1000x1200xf64>`
object name: %alloc
read time-complexity: O(1200000 + 1200000*%arg0)
write time-complexity: O(1200000 + 1200000*%arg0 + 1200000)

memory object: `%alloc_8 = memref.alloc() : memref<1000x1200xf64>`
object name: %alloc_8
read time-complexity: O(1200000 + 1200000*%arg0 + 1200000*%arg0)
write time-complexity: O(1200000)

Read Time Complexity:
O(1200000 + 1200000*%arg0 + 1200000*%arg0)	|	%alloc_8
O(1200000 + 1200000*%arg0 + 1200000*%arg0)	|	%alloc_7
O(1200000 + 1200000*%arg0)	|	%alloc

Write Time Complexity:
O(1200000 + 1200000*%arg0 + 1200000)	|	%alloc
O(1000*(1000-%5) + 1000*%5)	|	%alloc_7
O(1200000)	|	%alloc_8
####====---------------------------------====####
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
    %c1200 = arith.constant 1200 : index
    %c1000 = arith.constant 1000 : index
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.500000e+00 : f64
    %cst_2 = arith.constant 1.200000e+00 : f64
    %c100_i32 = arith.constant 100 : i32
    %c1_i32 = arith.constant 1 : i32
    %cst_3 = arith.constant -9.990000e+02 : f64
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c1200_i32 = arith.constant 1200 : i32
    %alloca = memref.alloca() : memref<1xf64>
    %0 = llvm.mlir.undef : f64
    memref.store %0, %alloca[%c0] : memref<1xf64>
    %alloca_4 = memref.alloca() : memref<1xf64>
    memref.store %0, %alloca_4[%c0] : memref<1xf64>
    %alloc = memref.alloc() : memref<1000x1200xf64>
    %alloc_5 = memref.alloc() : memref<1000x1000xf64>
    %alloc_6 = memref.alloc() : memref<1000x1200xf64>
    memref.store %cst_1, %alloca_4[%c0] : memref<1xf64>
    memref.store %cst_2, %alloca[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c1000 step %c1 {
      %3 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c1200 step %c1 {
        %4 = arith.index_cast %arg1 : index to i32
        %5 = arith.addi %3, %4 : i32
        %6 = arith.remsi %5, %c100_i32 : i32
        %7 = arith.sitofp %6 : i32 to f64
        %8 = arith.divf %7, %cst : f64
        memref.store %8, %alloc[%arg0, %arg1] : memref<1000x1200xf64>
        %9 = arith.addi %3, %c1200_i32 : i32
        %10 = arith.subi %9, %4 : i32
        %11 = arith.remsi %10, %c100_i32 : i32
        %12 = arith.sitofp %11 : i32 to f64
        %13 = arith.divf %12, %cst : f64
        memref.store %13, %alloc_6[%arg0, %arg1] : memref<1000x1200xf64>
      }
    }
    scf.for %arg0 = %c0 to %c1000 step %c1 {
      %3 = arith.index_cast %arg0 : index to i32
      %4 = arith.addi %3, %c1_i32 : i32
      %5 = arith.index_cast %4 : i32 to index
      scf.for %arg1 = %c0 to %5 step %c1 {
        %6 = arith.index_cast %arg1 : index to i32
        %7 = arith.addi %3, %6 : i32
        %8 = arith.remsi %7, %c100_i32 : i32
        %9 = arith.sitofp %8 : i32 to f64
        %10 = arith.divf %9, %cst : f64
        memref.store %10, %alloc_5[%arg0, %arg1] : memref<1000x1000xf64>
      }
      scf.for %arg1 = %5 to %c1000 step %c1 {
        memref.store %cst_3, %alloc_5[%arg0, %arg1] : memref<1000x1000xf64>
      }
    }
    %1 = memref.load %alloca_4[%c0] : memref<1xf64>
    %2 = memref.load %alloca[%c0] : memref<1xf64>
    %alloca_7 = memref.alloca() : memref<f64>
    memref.store %0, %alloca_7[] : memref<f64>
    scf.for %arg0 = %c0 to %c1000 step %c1 {
      scf.for %arg1 = %c0 to %c1200 step %c1 {
        memref.store %cst_0, %alloca_7[] : memref<f64>
        scf.for %arg2 = %c0 to %arg0 step %c1 {
          %13 = memref.load %alloc_6[%arg0, %arg1] : memref<1000x1200xf64>
          %14 = arith.mulf %1, %13 : f64
          %15 = memref.load %alloc_5[%arg0, %arg2] : memref<1000x1000xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = memref.load %alloc[%arg2, %arg1] : memref<1000x1200xf64>
          %18 = arith.addf %17, %16 : f64
          memref.store %18, %alloc[%arg2, %arg1] : memref<1000x1200xf64>
          %19 = memref.load %alloc_6[%arg2, %arg1] : memref<1000x1200xf64>
          %20 = memref.load %alloc_5[%arg0, %arg2] : memref<1000x1000xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = memref.load %alloca_7[] : memref<f64>
          %23 = arith.addf %22, %21 : f64
          memref.store %23, %alloca_7[] : memref<f64>
        }
        %3 = memref.load %alloc[%arg0, %arg1] : memref<1000x1200xf64>
        %4 = arith.mulf %2, %3 : f64
        %5 = memref.load %alloc_6[%arg0, %arg1] : memref<1000x1200xf64>
        %6 = arith.mulf %1, %5 : f64
        %7 = memref.load %alloc_5[%arg0, %arg0] : memref<1000x1000xf64>
        %8 = arith.mulf %6, %7 : f64
        %9 = arith.addf %4, %8 : f64
        %10 = memref.load %alloca_7[] : memref<f64>
        %11 = arith.mulf %1, %10 : f64
        %12 = arith.addf %9, %11 : f64
        memref.store %12, %alloc[%arg0, %arg1] : memref<1000x1200xf64>
      }
    }
    memref.dealloc %alloc : memref<1000x1200xf64>
    memref.dealloc %alloc_5 : memref<1000x1000xf64>
    memref.dealloc %alloc_6 : memref<1000x1200xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}
