####====---------------------------------====####

memory object: `%alloc_6 = memref.alloc() : memref<1300x1300xf64>`
object name: %alloc_6
read time-complexity: O(1690000)
write time-complexity: O(1690000)

memory object: `%alloc = memref.alloc() : memref<1300x1300xf64>`
object name: %alloc
read time-complexity: O(1690000)
write time-complexity: O(1690000)

memory object: `%alloc_8 = memref.alloc() : memref<1300xf64>`
object name: %alloc_8
read time-complexity: O(3380000)
write time-complexity: O(1300)

memory object: `%alloc_9 = memref.alloc() : memref<1300xf64>`
object name: %alloc_9
read time-complexity: O(1691300)
write time-complexity: O(1692600)

memory object: `%alloc_7 = memref.alloc() : memref<1300xf64>`
object name: %alloc_7
read time-complexity: O(1691300)
write time-complexity: O(1691300)

Read Time Complexity:
O(3380000)	|	%alloc_8
O(1691300)	|	%alloc_9
O(1691300)	|	%alloc_7
O(1690000)	|	%alloc_6
O(1690000)	|	%alloc

Write Time Complexity:
O(1692600)	|	%alloc_9
O(1691300)	|	%alloc_7
O(1690000)	|	%alloc_6
O(1690000)	|	%alloc
O(1300)	|	%alloc_8
####====---------------------------------====####
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
    %cst = arith.constant 1.300000e+03 : f64
    %c1300 = arith.constant 1300 : index
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.500000e+00 : f64
    %cst_2 = arith.constant 1.200000e+00 : f64
    %c1_i32 = arith.constant 1 : i32
    %c2_i32 = arith.constant 2 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c1300_i32 = arith.constant 1300 : i32
    %alloca = memref.alloca() : memref<1xf64>
    %0 = llvm.mlir.undef : f64
    memref.store %0, %alloca[%c0] : memref<1xf64>
    %alloca_3 = memref.alloca() : memref<1xf64>
    memref.store %0, %alloca_3[%c0] : memref<1xf64>
    %alloc = memref.alloc() : memref<1300x1300xf64>
    %alloc_4 = memref.alloc() : memref<1300x1300xf64>
    %alloc_5 = memref.alloc() : memref<1300xf64>
    %alloc_6 = memref.alloc() : memref<1300xf64>
    %alloc_7 = memref.alloc() : memref<1300xf64>
    memref.store %cst_1, %alloca_3[%c0] : memref<1xf64>
    memref.store %cst_2, %alloca[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c1300 step %c1 {
      %3 = arith.index_cast %arg0 : index to i32
      %4 = arith.remsi %3, %c1300_i32 : i32
      %5 = arith.sitofp %4 : i32 to f64
      %6 = arith.divf %5, %cst : f64
      memref.store %6, %alloc_6[%arg0] : memref<1300xf64>
      scf.for %arg1 = %c0 to %c1300 step %c1 {
        %7 = arith.index_cast %arg1 : index to i32
        %8 = arith.muli %3, %7 : i32
        %9 = arith.addi %8, %c1_i32 : i32
        %10 = arith.remsi %9, %c1300_i32 : i32
        %11 = arith.sitofp %10 : i32 to f64
        %12 = arith.divf %11, %cst : f64
        memref.store %12, %alloc[%arg0, %arg1] : memref<1300x1300xf64>
        %13 = arith.addi %8, %c2_i32 : i32
        %14 = arith.remsi %13, %c1300_i32 : i32
        %15 = arith.sitofp %14 : i32 to f64
        %16 = arith.divf %15, %cst : f64
        memref.store %16, %alloc_4[%arg0, %arg1] : memref<1300x1300xf64>
      }
    }
    %1 = memref.load %alloca_3[%c0] : memref<1xf64>
    %2 = memref.load %alloca[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c1300 step %c1 {
      memref.store %cst_0, %alloc_5[%arg0] : memref<1300xf64>
      memref.store %cst_0, %alloc_7[%arg0] : memref<1300xf64>
      scf.for %arg1 = %c0 to %c1300 step %c1 {
        %8 = memref.load %alloc[%arg0, %arg1] : memref<1300x1300xf64>
        %9 = memref.load %alloc_6[%arg1] : memref<1300xf64>
        %10 = arith.mulf %8, %9 : f64
        %11 = memref.load %alloc_5[%arg0] : memref<1300xf64>
        %12 = arith.addf %10, %11 : f64
        memref.store %12, %alloc_5[%arg0] : memref<1300xf64>
        %13 = memref.load %alloc_4[%arg0, %arg1] : memref<1300x1300xf64>
        %14 = memref.load %alloc_6[%arg1] : memref<1300xf64>
        %15 = arith.mulf %13, %14 : f64
        %16 = memref.load %alloc_7[%arg0] : memref<1300xf64>
        %17 = arith.addf %15, %16 : f64
        memref.store %17, %alloc_7[%arg0] : memref<1300xf64>
      }
      %3 = memref.load %alloc_5[%arg0] : memref<1300xf64>
      %4 = arith.mulf %1, %3 : f64
      %5 = memref.load %alloc_7[%arg0] : memref<1300xf64>
      %6 = arith.mulf %2, %5 : f64
      %7 = arith.addf %4, %6 : f64
      memref.store %7, %alloc_7[%arg0] : memref<1300xf64>
    }
    memref.dealloc %alloc : memref<1300x1300xf64>
    memref.dealloc %alloc_4 : memref<1300x1300xf64>
    memref.dealloc %alloc_5 : memref<1300xf64>
    memref.dealloc %alloc_6 : memref<1300xf64>
    memref.dealloc %alloc_7 : memref<1300xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}
