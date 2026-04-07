####====---------------------------------====####

memory object: `%alloc = memref.alloc() : memref<1900x2100xf64>`
object name: %alloc
read time-complexity: O(7980000)
write time-complexity: O(3990000)

memory object: `%alloc_4 = memref.alloc() : memref<2100xf64>`
object name: %alloc_4
read time-complexity: O(3990000)
write time-complexity: O(3992100)

memory object: `%alloc_5 = memref.alloc() : memref<1900xf64>`
object name: %alloc_5
read time-complexity: O(7980000)
write time-complexity: O(3991900)

memory object: `%alloc_3 = memref.alloc() : memref<2100xf64>`
object name: %alloc_3
read time-complexity: O(3990000)
write time-complexity: O(2100)

Read Time Complexity:
O(7980000)	|	%alloc_5
O(7980000)	|	%alloc
O(3990000)	|	%alloc_4
O(3990000)	|	%alloc_3

Write Time Complexity:
O(3992100)	|	%alloc_4
O(3991900)	|	%alloc_5
O(3990000)	|	%alloc
O(2100)	|	%alloc_3
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
    %cst = arith.constant 9.500000e+03 : f64
    %c1900 = arith.constant 1900 : index
    %c2100 = arith.constant 2100 : index
    %cst_0 = arith.constant 2.100000e+03 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %cst_2 = arith.constant 1.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c2100_i32 = arith.constant 2100 : i32
    %alloc = memref.alloc() : memref<1900x2100xf64>
    %alloc_3 = memref.alloc() : memref<2100xf64>
    %alloc_4 = memref.alloc() : memref<2100xf64>
    %alloc_5 = memref.alloc() : memref<1900xf64>
    scf.for %arg0 = %c0 to %c2100 step %c1 {
      %0 = arith.index_cast %arg0 : index to i32
      %1 = arith.sitofp %0 : i32 to f64
      %2 = arith.divf %1, %cst_0 : f64
      %3 = arith.addf %2, %cst_2 : f64
      memref.store %3, %alloc_3[%arg0] : memref<2100xf64>
    }
    scf.for %arg0 = %c0 to %c1900 step %c1 {
      %0 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c2100 step %c1 {
        %1 = arith.index_cast %arg1 : index to i32
        %2 = arith.addi %0, %1 : i32
        %3 = arith.remsi %2, %c2100_i32 : i32
        %4 = arith.sitofp %3 : i32 to f64
        %5 = arith.divf %4, %cst : f64
        memref.store %5, %alloc[%arg0, %arg1] : memref<1900x2100xf64>
      }
    }
    scf.for %arg0 = %c0 to %c2100 step %c1 {
      memref.store %cst_1, %alloc_4[%arg0] : memref<2100xf64>
    }
    scf.for %arg0 = %c0 to %c1900 step %c1 {
      memref.store %cst_1, %alloc_5[%arg0] : memref<1900xf64>
      scf.for %arg1 = %c0 to %c2100 step %c1 {
        %0 = memref.load %alloc_5[%arg0] : memref<1900xf64>
        %1 = memref.load %alloc[%arg0, %arg1] : memref<1900x2100xf64>
        %2 = memref.load %alloc_3[%arg1] : memref<2100xf64>
        %3 = arith.mulf %1, %2 : f64
        %4 = arith.addf %0, %3 : f64
        memref.store %4, %alloc_5[%arg0] : memref<1900xf64>
      }
      scf.for %arg1 = %c0 to %c2100 step %c1 {
        %0 = memref.load %alloc_4[%arg1] : memref<2100xf64>
        %1 = memref.load %alloc[%arg0, %arg1] : memref<1900x2100xf64>
        %2 = memref.load %alloc_5[%arg0] : memref<1900xf64>
        %3 = arith.mulf %1, %2 : f64
        %4 = arith.addf %0, %3 : f64
        memref.store %4, %alloc_4[%arg1] : memref<2100xf64>
      }
    }
    memref.dealloc %alloc : memref<1900x2100xf64>
    memref.dealloc %alloc_3 : memref<2100xf64>
    memref.dealloc %alloc_4 : memref<2100xf64>
    memref.dealloc %alloc_5 : memref<1900xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}
