####====---------------------------------====####

memory object: `%alloc = memref.alloc() : memref<2000xf64>`
object name: %alloc
read time-complexity: O(2997000)
write time-complexity: O(1001000)

memory object: `%alloc_3 = memref.alloc() : memref<2000xf64>`
object name: %alloc_3
read time-complexity: O(2997000)
write time-complexity: O(1001000)

Read Time Complexity:
O(2997000)	|	%alloc_3
O(2997000)	|	%alloc

Write Time Complexity:
O(1001000)	|	%alloc_3
O(1001000)	|	%alloc
####====---------------------------------====####
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
    %c-1 = arith.constant -1 : index
    %c1999 = arith.constant 1999 : index
    %c500 = arith.constant 500 : index
    %cst = arith.constant 2.000000e+03 : f64
    %c2000 = arith.constant 2000 : index
    %cst_0 = arith.constant 3.333300e-01 : f64
    %cst_1 = arith.constant 2.000000e+00 : f64
    %cst_2 = arith.constant 3.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<2000xf64>
    %alloc_3 = memref.alloc() : memref<2000xf64>
    scf.for %arg0 = %c0 to %c2000 step %c1 {
      %0 = arith.index_cast %arg0 : index to i32
      %1 = arith.sitofp %0 : i32 to f64
      %2 = arith.addf %1, %cst_1 : f64
      %3 = arith.divf %2, %cst : f64
      memref.store %3, %alloc[%arg0] : memref<2000xf64>
      %4 = arith.addf %1, %cst_2 : f64
      %5 = arith.divf %4, %cst : f64
      memref.store %5, %alloc_3[%arg0] : memref<2000xf64>
    }
    scf.for %arg0 = %c0 to %c500 step %c1 {
      scf.for %arg1 = %c1 to %c1999 step %c1 {
        %0 = arith.addi %arg1, %c-1 : index
        %1 = memref.load %alloc[%0] : memref<2000xf64>
        %2 = memref.load %alloc[%arg1] : memref<2000xf64>
        %3 = arith.addf %1, %2 : f64
        %4 = arith.addi %arg1, %c1 : index
        %5 = memref.load %alloc[%4] : memref<2000xf64>
        %6 = arith.addf %3, %5 : f64
        %7 = arith.mulf %6, %cst_0 : f64
        memref.store %7, %alloc_3[%arg1] : memref<2000xf64>
      }
      scf.for %arg1 = %c1 to %c1999 step %c1 {
        %0 = arith.addi %arg1, %c-1 : index
        %1 = memref.load %alloc_3[%0] : memref<2000xf64>
        %2 = memref.load %alloc_3[%arg1] : memref<2000xf64>
        %3 = arith.addf %1, %2 : f64
        %4 = arith.addi %arg1, %c1 : index
        %5 = memref.load %alloc_3[%4] : memref<2000xf64>
        %6 = arith.addf %3, %5 : f64
        %7 = arith.mulf %6, %cst_0 : f64
        memref.store %7, %alloc[%arg1] : memref<2000xf64>
      }
    }
    memref.dealloc %alloc : memref<2000xf64>
    memref.dealloc %alloc_3 : memref<2000xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}
