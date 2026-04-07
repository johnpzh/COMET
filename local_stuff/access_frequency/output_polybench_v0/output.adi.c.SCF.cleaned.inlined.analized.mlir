####====---------------------------------====####

memory object: `%alloc_11 = memref.alloc() : memref<1000x1000xf64>`
object name: %alloc_11
read time-complexity: O(498002000 + 498002000 + 498002000 + 498002000)
write time-complexity: O(498002000 + 499000 + 498002000 + 499000)

memory object: `%alloc_10 = memref.alloc() : memref<1000x1000xf64>`
object name: %alloc_10
read time-complexity: O(498002000 + 498002000 + 498002000 + 498002000 + 499000)
write time-complexity: O(498002000 + 499000 + 499000)

memory object: `%alloc = memref.alloc() : memref<1000x1000xf64>`
object name: %alloc
read time-complexity: O(498002000 + 499000 + 498002000 + 498002000 + 498002000)
write time-complexity: O(498002000 + 499000 + 499000 + 1000000)

memory object: `%alloc_12 = memref.alloc() : memref<1000x1000xf64>`
object name: %alloc_12
read time-complexity: O(498002000 + 498002000 + 498002000 + 498002000)
write time-complexity: O(498002000 + 499000 + 498002000 + 499000)

Read Time Complexity:
O(498002000 + 498002000 + 498002000 + 498002000)	|	%alloc_12
O(498002000 + 498002000 + 498002000 + 498002000)	|	%alloc_11
O(498002000 + 498002000 + 498002000 + 498002000 + 499000)	|	%alloc_10
O(498002000 + 499000 + 498002000 + 498002000 + 498002000)	|	%alloc

Write Time Complexity:
O(498002000 + 499000 + 498002000 + 499000)	|	%alloc_12
O(498002000 + 499000 + 498002000 + 499000)	|	%alloc_11
O(498002000 + 499000 + 499000)	|	%alloc_10
O(498002000 + 499000 + 499000 + 1000000)	|	%alloc
####====---------------------------------====####
module {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2lf \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("u\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main() attributes {llvm.linkage = #llvm.linkage<external>} {
    %c-1 = arith.constant -1 : index
    %c999 = arith.constant 999 : index
    %c501 = arith.constant 501 : index
    %cst = arith.constant -3999.0000000000005 : f64
    %cst_0 = arith.constant -1999.0000000000002 : f64
    %cst_1 = arith.constant 1000.0000000000001 : f64
    %cst_2 = arith.constant 2000.0000000000002 : f64
    %cst_3 = arith.constant 2001.0000000000002 : f64
    %cst_4 = arith.constant -1000.0000000000001 : f64
    %cst_5 = arith.constant 4001.0000000000005 : f64
    %cst_6 = arith.constant -2000.0000000000002 : f64
    %cst_7 = arith.constant 1.000000e+03 : f64
    %c1000 = arith.constant 1000 : index
    %cst_8 = arith.constant 0.000000e+00 : f64
    %cst_9 = arith.constant 1.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c1000_i32 = arith.constant 1000 : i32
    %alloc = memref.alloc() : memref<1000x1000xf64>
    %alloc_10 = memref.alloc() : memref<1000x1000xf64>
    %alloc_11 = memref.alloc() : memref<1000x1000xf64>
    %alloc_12 = memref.alloc() : memref<1000x1000xf64>
    scf.for %arg0 = %c0 to %c1000 step %c1 {
      %0 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c1000 step %c1 {
        %1 = arith.index_cast %arg1 : index to i32
        %2 = arith.addi %0, %c1000_i32 : i32
        %3 = arith.subi %2, %1 : i32
        %4 = arith.sitofp %3 : i32 to f64
        %5 = arith.divf %4, %cst_7 : f64
        memref.store %5, %alloc[%arg0, %arg1] : memref<1000x1000xf64>
      }
    }
    scf.for %arg0 = %c1 to %c501 step %c1 {
      scf.for %arg1 = %c1 to %c999 step %c1 {
        memref.store %cst_9, %alloc_10[%c0, %arg1] : memref<1000x1000xf64>
        memref.store %cst_8, %alloc_11[%arg1, %c0] : memref<1000x1000xf64>
        %0 = memref.load %alloc_10[%c0, %arg1] : memref<1000x1000xf64>
        memref.store %0, %alloc_12[%arg1, %c0] : memref<1000x1000xf64>
        scf.for %arg2 = %c1 to %c999 step %c1 {
          %1 = arith.addi %arg2, %c-1 : index
          %2 = memref.load %alloc_11[%arg1, %1] : memref<1000x1000xf64>
          %3 = arith.mulf %2, %cst_6 : f64
          %4 = arith.addf %3, %cst_5 : f64
          %5 = arith.divf %cst_2, %4 : f64
          memref.store %5, %alloc_11[%arg1, %arg2] : memref<1000x1000xf64>
          %6 = arith.addi %arg1, %c-1 : index
          %7 = memref.load %alloc[%arg2, %6] : memref<1000x1000xf64>
          %8 = arith.mulf %7, %cst_1 : f64
          %9 = memref.load %alloc[%arg2, %arg1] : memref<1000x1000xf64>
          %10 = arith.mulf %9, %cst_0 : f64
          %11 = arith.addf %8, %10 : f64
          %12 = arith.addi %arg1, %c1 : index
          %13 = memref.load %alloc[%arg2, %12] : memref<1000x1000xf64>
          %14 = arith.mulf %13, %cst_4 : f64
          %15 = arith.subf %11, %14 : f64
          %16 = memref.load %alloc_12[%arg1, %1] : memref<1000x1000xf64>
          %17 = arith.mulf %16, %cst_6 : f64
          %18 = arith.subf %15, %17 : f64
          %19 = arith.divf %18, %4 : f64
          memref.store %19, %alloc_12[%arg1, %arg2] : memref<1000x1000xf64>
        }
        memref.store %cst_9, %alloc_10[%c999, %arg1] : memref<1000x1000xf64>
        scf.for %arg2 = %c1 to %c999 step %c1 {
          %1 = arith.subi %c999, %arg2 : index
          %2 = memref.load %alloc_11[%arg1, %1] : memref<1000x1000xf64>
          %3 = arith.subi %c1000, %arg2 : index
          %4 = memref.load %alloc_10[%3, %arg1] : memref<1000x1000xf64>
          %5 = arith.mulf %2, %4 : f64
          %6 = memref.load %alloc_12[%arg1, %1] : memref<1000x1000xf64>
          %7 = arith.addf %5, %6 : f64
          memref.store %7, %alloc_10[%1, %arg1] : memref<1000x1000xf64>
        }
      }
      scf.for %arg1 = %c1 to %c999 step %c1 {
        memref.store %cst_9, %alloc[%arg1, %c0] : memref<1000x1000xf64>
        memref.store %cst_8, %alloc_11[%arg1, %c0] : memref<1000x1000xf64>
        %0 = memref.load %alloc[%arg1, %c0] : memref<1000x1000xf64>
        memref.store %0, %alloc_12[%arg1, %c0] : memref<1000x1000xf64>
        scf.for %arg2 = %c1 to %c999 step %c1 {
          %1 = arith.addi %arg2, %c-1 : index
          %2 = memref.load %alloc_11[%arg1, %1] : memref<1000x1000xf64>
          %3 = arith.mulf %2, %cst_4 : f64
          %4 = arith.addf %3, %cst_3 : f64
          %5 = arith.divf %cst_1, %4 : f64
          memref.store %5, %alloc_11[%arg1, %arg2] : memref<1000x1000xf64>
          %6 = arith.addi %arg1, %c-1 : index
          %7 = memref.load %alloc_10[%6, %arg2] : memref<1000x1000xf64>
          %8 = arith.mulf %7, %cst_2 : f64
          %9 = memref.load %alloc_10[%arg1, %arg2] : memref<1000x1000xf64>
          %10 = arith.mulf %9, %cst : f64
          %11 = arith.addf %8, %10 : f64
          %12 = arith.addi %arg1, %c1 : index
          %13 = memref.load %alloc_10[%12, %arg2] : memref<1000x1000xf64>
          %14 = arith.mulf %13, %cst_6 : f64
          %15 = arith.subf %11, %14 : f64
          %16 = memref.load %alloc_12[%arg1, %1] : memref<1000x1000xf64>
          %17 = arith.mulf %16, %cst_4 : f64
          %18 = arith.subf %15, %17 : f64
          %19 = arith.divf %18, %4 : f64
          memref.store %19, %alloc_12[%arg1, %arg2] : memref<1000x1000xf64>
        }
        memref.store %cst_9, %alloc[%arg1, %c999] : memref<1000x1000xf64>
        scf.for %arg2 = %c1 to %c999 step %c1 {
          %1 = arith.subi %c999, %arg2 : index
          %2 = memref.load %alloc_11[%arg1, %1] : memref<1000x1000xf64>
          %3 = arith.subi %c1000, %arg2 : index
          %4 = memref.load %alloc[%arg1, %3] : memref<1000x1000xf64>
          %5 = arith.mulf %2, %4 : f64
          %6 = memref.load %alloc_12[%arg1, %1] : memref<1000x1000xf64>
          %7 = arith.addf %5, %6 : f64
          memref.store %7, %alloc[%arg1, %1] : memref<1000x1000xf64>
        }
      }
    }
    memref.dealloc %alloc : memref<1000x1000xf64>
    memref.dealloc %alloc_10 : memref<1000x1000xf64>
    memref.dealloc %alloc_11 : memref<1000x1000xf64>
    memref.dealloc %alloc_12 : memref<1000x1000xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}
