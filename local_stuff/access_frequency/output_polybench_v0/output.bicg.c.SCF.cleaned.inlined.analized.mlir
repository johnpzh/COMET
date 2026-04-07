####====---------------------------------====####

memory object: `%alloc_5 = memref.alloc() : memref<2100xf64>`
object name: %alloc_5
read time-complexity: O(3990000)
write time-complexity: O(2100)

memory object: `%alloc_3 = memref.alloc() : memref<2100xf64>`
object name: %alloc_3
read time-complexity: O(3990000)
write time-complexity: O(3990000 + 2100)

memory object: `%alloc = memref.alloc() : memref<2100x1900xf64>`
object name: %alloc
read time-complexity: O(3990000 + 3990000)
write time-complexity: O(3990000)

memory object: `%alloc_4 = memref.alloc() : memref<1900xf64>`
object name: %alloc_4
read time-complexity: O(3990000)
write time-complexity: O(1900)

memory object: `%alloc_2 = memref.alloc() : memref<1900xf64>`
object name: %alloc_2
read time-complexity: O(3990000)
write time-complexity: O(3990000 + 1900)

Read Time Complexity:
O(3990000)	|	%alloc_5
O(3990000)	|	%alloc_4
O(3990000)	|	%alloc_3
O(3990000)	|	%alloc_2
O(3990000 + 3990000)	|	%alloc

Write Time Complexity:
O(3990000 + 2100)	|	%alloc_3
O(3990000 + 1900)	|	%alloc_2
O(3990000)	|	%alloc
O(2100)	|	%alloc_5
O(1900)	|	%alloc_4
####====---------------------------------====####
module {
  llvm.mlir.global internal constant @str8("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str7("q\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2lf \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main() attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 2.100000e+03 : f64
    %c2100 = arith.constant 2100 : index
    %cst_0 = arith.constant 1.900000e+03 : f64
    %c1900 = arith.constant 1900 : index
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c1_i32 = arith.constant 1 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c1900_i32 = arith.constant 1900 : i32
    %c2100_i32 = arith.constant 2100 : i32
    %alloc = memref.alloc() : memref<2100x1900xf64>
    %alloc_2 = memref.alloc() : memref<1900xf64>
    %alloc_3 = memref.alloc() : memref<2100xf64>
    %alloc_4 = memref.alloc() : memref<1900xf64>
    %alloc_5 = memref.alloc() : memref<2100xf64>
    scf.for %arg0 = %c0 to %c1900 step %c1 {
      %0 = arith.index_cast %arg0 : index to i32
      %1 = arith.remsi %0, %c1900_i32 : i32
      %2 = arith.sitofp %1 : i32 to f64
      %3 = arith.divf %2, %cst_0 : f64
      memref.store %3, %alloc_4[%arg0] : memref<1900xf64>
    }
    scf.for %arg0 = %c0 to %c2100 step %c1 {
      %0 = arith.index_cast %arg0 : index to i32
      %1 = arith.remsi %0, %c2100_i32 : i32
      %2 = arith.sitofp %1 : i32 to f64
      %3 = arith.divf %2, %cst : f64
      memref.store %3, %alloc_5[%arg0] : memref<2100xf64>
      scf.for %arg1 = %c0 to %c1900 step %c1 {
        %4 = arith.index_cast %arg1 : index to i32
        %5 = arith.addi %4, %c1_i32 : i32
        %6 = arith.muli %0, %5 : i32
        %7 = arith.remsi %6, %c2100_i32 : i32
        %8 = arith.sitofp %7 : i32 to f64
        %9 = arith.divf %8, %cst : f64
        memref.store %9, %alloc[%arg0, %arg1] : memref<2100x1900xf64>
      }
    }
    scf.for %arg0 = %c0 to %c1900 step %c1 {
      memref.store %cst_1, %alloc_2[%arg0] : memref<1900xf64>
    }
    scf.for %arg0 = %c0 to %c2100 step %c1 {
      memref.store %cst_1, %alloc_3[%arg0] : memref<2100xf64>
      scf.for %arg1 = %c0 to %c1900 step %c1 {
        %0 = memref.load %alloc_2[%arg1] : memref<1900xf64>
        %1 = memref.load %alloc_5[%arg0] : memref<2100xf64>
        %2 = memref.load %alloc[%arg0, %arg1] : memref<2100x1900xf64>
        %3 = arith.mulf %1, %2 : f64
        %4 = arith.addf %0, %3 : f64
        memref.store %4, %alloc_2[%arg1] : memref<1900xf64>
        %5 = memref.load %alloc_3[%arg0] : memref<2100xf64>
        %6 = memref.load %alloc[%arg0, %arg1] : memref<2100x1900xf64>
        %7 = memref.load %alloc_4[%arg1] : memref<1900xf64>
        %8 = arith.mulf %6, %7 : f64
        %9 = arith.addf %5, %8 : f64
        memref.store %9, %alloc_3[%arg0] : memref<2100xf64>
      }
    }
    memref.dealloc %alloc : memref<2100x1900xf64>
    memref.dealloc %alloc_2 : memref<1900xf64>
    memref.dealloc %alloc_3 : memref<2100xf64>
    memref.dealloc %alloc_4 : memref<1900xf64>
    memref.dealloc %alloc_5 : memref<2100xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}
