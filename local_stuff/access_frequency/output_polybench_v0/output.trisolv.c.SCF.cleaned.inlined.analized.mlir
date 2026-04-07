####====---------------------------------====####

memory object: `%alloc_3 = memref.alloc() : memref<2000xf64>`
object name: %alloc_3
read time-complexity: O(2000)
write time-complexity: O(2000)

memory object: `%alloc = memref.alloc() : memref<2000x2000xf64>`
object name: %alloc
read time-complexity: O(2000 + 2000*%arg0)
write time-complexity: O(2000*%3)

memory object: `%alloc_2 = memref.alloc() : memref<2000xf64>`
object name: %alloc_2
read time-complexity: O(2000 + 2000*%arg0 + 2000*%arg0)
write time-complexity: O(2000 + 2000*%arg0 + 2000 + 2000)

Read Time Complexity:
O(2000 + 2000*%arg0 + 2000*%arg0)	|	%alloc_2
O(2000 + 2000*%arg0)	|	%alloc
O(2000)	|	%alloc_3

Write Time Complexity:
O(2000 + 2000*%arg0 + 2000 + 2000)	|	%alloc_2
O(2000*%3)	|	%alloc
O(2000)	|	%alloc_3
####====---------------------------------====####
module {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("%0.2lf \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("x\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main() attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 2.000000e+03 : f64
    %c2000 = arith.constant 2000 : index
    %cst_0 = arith.constant -9.990000e+02 : f64
    %c1_i32 = arith.constant 1 : i32
    %cst_1 = arith.constant 2.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c2000_i32 = arith.constant 2000 : i32
    %alloc = memref.alloc() : memref<2000x2000xf64>
    %alloc_2 = memref.alloc() : memref<2000xf64>
    %alloc_3 = memref.alloc() : memref<2000xf64>
    scf.for %arg0 = %c0 to %c2000 step %c1 {
      %0 = arith.index_cast %arg0 : index to i32
      memref.store %cst_0, %alloc_2[%arg0] : memref<2000xf64>
      %1 = arith.sitofp %0 : i32 to f64
      memref.store %1, %alloc_3[%arg0] : memref<2000xf64>
      %2 = arith.addi %0, %c1_i32 : i32
      %3 = arith.index_cast %2 : i32 to index
      scf.for %arg1 = %c0 to %3 step %c1 {
        %4 = arith.index_cast %arg1 : index to i32
        %5 = arith.addi %0, %c2000_i32 : i32
        %6 = arith.subi %5, %4 : i32
        %7 = arith.addi %6, %c1_i32 : i32
        %8 = arith.sitofp %7 : i32 to f64
        %9 = arith.mulf %8, %cst_1 : f64
        %10 = arith.divf %9, %cst : f64
        memref.store %10, %alloc[%arg0, %arg1] : memref<2000x2000xf64>
      }
    }
    scf.for %arg0 = %c0 to %c2000 step %c1 {
      %0 = memref.load %alloc_3[%arg0] : memref<2000xf64>
      memref.store %0, %alloc_2[%arg0] : memref<2000xf64>
      scf.for %arg1 = %c0 to %arg0 step %c1 {
        %4 = memref.load %alloc[%arg0, %arg1] : memref<2000x2000xf64>
        %5 = memref.load %alloc_2[%arg1] : memref<2000xf64>
        %6 = arith.mulf %4, %5 : f64
        %7 = memref.load %alloc_2[%arg0] : memref<2000xf64>
        %8 = arith.subf %7, %6 : f64
        memref.store %8, %alloc_2[%arg0] : memref<2000xf64>
      }
      %1 = memref.load %alloc_2[%arg0] : memref<2000xf64>
      %2 = memref.load %alloc[%arg0, %arg0] : memref<2000x2000xf64>
      %3 = arith.divf %1, %2 : f64
      memref.store %3, %alloc_2[%arg0] : memref<2000xf64>
    }
    memref.dealloc %alloc : memref<2000x2000xf64>
    memref.dealloc %alloc_2 : memref<2000xf64>
    memref.dealloc %alloc_3 : memref<2000xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}
