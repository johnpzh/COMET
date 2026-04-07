####====---------------------------------====####

memory object: `%alloc_0 = memref.alloc() : memref<2000xf64>`
object name: %alloc_0
read time-complexity: O(4000000)
write time-complexity: O(4000000 + 2000)

memory object: `%alloc_2 = memref.alloc() : memref<2000xf64>`
object name: %alloc_2
read time-complexity: O(4000000)
write time-complexity: O(2000)

memory object: `%alloc = memref.alloc() : memref<2000x2000xf64>`
object name: %alloc
read time-complexity: O(4000000 + 4000000)
write time-complexity: O(4000000)

memory object: `%alloc_1 = memref.alloc() : memref<2000xf64>`
object name: %alloc_1
read time-complexity: O(4000000)
write time-complexity: O(4000000 + 2000)

memory object: `%alloc_3 = memref.alloc() : memref<2000xf64>`
object name: %alloc_3
read time-complexity: O(4000000)
write time-complexity: O(2000)

Read Time Complexity:
O(4000000)	|	%alloc_3
O(4000000)	|	%alloc_2
O(4000000)	|	%alloc_1
O(4000000)	|	%alloc_0
O(4000000 + 4000000)	|	%alloc

Write Time Complexity:
O(4000000 + 2000)	|	%alloc_1
O(4000000 + 2000)	|	%alloc_0
O(4000000)	|	%alloc
O(2000)	|	%alloc_3
O(2000)	|	%alloc_2
####====---------------------------------====####
module {
  llvm.mlir.global internal constant @str8("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str7("x2\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2lf \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("x1\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main() attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 2.000000e+03 : f64
    %c2000 = arith.constant 2000 : index
    %c1_i32 = arith.constant 1 : i32
    %c3_i32 = arith.constant 3 : i32
    %c4_i32 = arith.constant 4 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c2000_i32 = arith.constant 2000 : i32
    %alloc = memref.alloc() : memref<2000x2000xf64>
    %alloc_0 = memref.alloc() : memref<2000xf64>
    %alloc_1 = memref.alloc() : memref<2000xf64>
    %alloc_2 = memref.alloc() : memref<2000xf64>
    %alloc_3 = memref.alloc() : memref<2000xf64>
    scf.for %arg0 = %c0 to %c2000 step %c1 {
      %0 = arith.index_cast %arg0 : index to i32
      %1 = arith.remsi %0, %c2000_i32 : i32
      %2 = arith.sitofp %1 : i32 to f64
      %3 = arith.divf %2, %cst : f64
      memref.store %3, %alloc_0[%arg0] : memref<2000xf64>
      %4 = arith.addi %0, %c1_i32 : i32
      %5 = arith.remsi %4, %c2000_i32 : i32
      %6 = arith.sitofp %5 : i32 to f64
      %7 = arith.divf %6, %cst : f64
      memref.store %7, %alloc_1[%arg0] : memref<2000xf64>
      %8 = arith.addi %0, %c3_i32 : i32
      %9 = arith.remsi %8, %c2000_i32 : i32
      %10 = arith.sitofp %9 : i32 to f64
      %11 = arith.divf %10, %cst : f64
      memref.store %11, %alloc_2[%arg0] : memref<2000xf64>
      %12 = arith.addi %0, %c4_i32 : i32
      %13 = arith.remsi %12, %c2000_i32 : i32
      %14 = arith.sitofp %13 : i32 to f64
      %15 = arith.divf %14, %cst : f64
      memref.store %15, %alloc_3[%arg0] : memref<2000xf64>
      scf.for %arg1 = %c0 to %c2000 step %c1 {
        %16 = arith.index_cast %arg1 : index to i32
        %17 = arith.muli %0, %16 : i32
        %18 = arith.remsi %17, %c2000_i32 : i32
        %19 = arith.sitofp %18 : i32 to f64
        %20 = arith.divf %19, %cst : f64
        memref.store %20, %alloc[%arg0, %arg1] : memref<2000x2000xf64>
      }
    }
    scf.for %arg0 = %c0 to %c2000 step %c1 {
      scf.for %arg1 = %c0 to %c2000 step %c1 {
        %0 = memref.load %alloc_0[%arg0] : memref<2000xf64>
        %1 = memref.load %alloc[%arg0, %arg1] : memref<2000x2000xf64>
        %2 = memref.load %alloc_2[%arg1] : memref<2000xf64>
        %3 = arith.mulf %1, %2 : f64
        %4 = arith.addf %0, %3 : f64
        memref.store %4, %alloc_0[%arg0] : memref<2000xf64>
      }
    }
    scf.for %arg0 = %c0 to %c2000 step %c1 {
      scf.for %arg1 = %c0 to %c2000 step %c1 {
        %0 = memref.load %alloc_1[%arg0] : memref<2000xf64>
        %1 = memref.load %alloc[%arg1, %arg0] : memref<2000x2000xf64>
        %2 = memref.load %alloc_3[%arg1] : memref<2000xf64>
        %3 = arith.mulf %1, %2 : f64
        %4 = arith.addf %0, %3 : f64
        memref.store %4, %alloc_1[%arg0] : memref<2000xf64>
      }
    }
    memref.dealloc %alloc : memref<2000x2000xf64>
    memref.dealloc %alloc_0 : memref<2000xf64>
    memref.dealloc %alloc_1 : memref<2000xf64>
    memref.dealloc %alloc_2 : memref<2000xf64>
    memref.dealloc %alloc_3 : memref<2000xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}
