####====---------------------------------====####

memory object: `%alloc_6 = memref.alloc() : memref<1200x1000xf64>`
object name: %alloc_6
read time-complexity: O(1200000*%4 + 1200000*%4)
write time-complexity: O(1200000)

memory object: `%alloc = memref.alloc() : memref<1200x1200xf64>`
object name: %alloc
read time-complexity: O(1200000*%4 + 1200*%3)
write time-complexity: O(1440000 + 1200000*%4 + 1200*%3)

memory object: `%alloc_7 = memref.alloc() : memref<1200x1000xf64>`
object name: %alloc_7
read time-complexity: O(1200000*%4 + 1200000*%4)
write time-complexity: O(1200000)

Read Time Complexity:
O(1200000*%4 + 1200000*%4)	|	%alloc_7
O(1200000*%4 + 1200000*%4)	|	%alloc_6
O(1200000*%4 + 1200*%3)	|	%alloc

Write Time Complexity:
O(1440000 + 1200000*%4 + 1200*%3)	|	%alloc
O(1200000)	|	%alloc_7
O(1200000)	|	%alloc_6
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
    memref.store %0, %alloca[%c0] : memref<1xf64>
    %alloca_3 = memref.alloca() : memref<1xf64>
    memref.store %0, %alloca_3[%c0] : memref<1xf64>
    %alloc = memref.alloc() : memref<1200x1200xf64>
    %alloc_4 = memref.alloc() : memref<1200x1000xf64>
    %alloc_5 = memref.alloc() : memref<1200x1000xf64>
    memref.store %cst_1, %alloca_3[%c0] : memref<1xf64>
    memref.store %cst_2, %alloca[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c1200 step %c1 {
      %3 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c1000 step %c1 {
        %4 = arith.index_cast %arg1 : index to i32
        %5 = arith.muli %3, %4 : i32
        %6 = arith.addi %5, %c1_i32 : i32
        %7 = arith.remsi %6, %c1200_i32 : i32
        %8 = arith.sitofp %7 : i32 to f64
        %9 = arith.divf %8, %cst_0 : f64
        memref.store %9, %alloc_4[%arg0, %arg1] : memref<1200x1000xf64>
        %10 = arith.addi %5, %c2_i32 : i32
        %11 = arith.remsi %10, %c1000_i32 : i32
        %12 = arith.sitofp %11 : i32 to f64
        %13 = arith.divf %12, %cst : f64
        memref.store %13, %alloc_5[%arg0, %arg1] : memref<1200x1000xf64>
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
    %1 = memref.load %alloca_3[%c0] : memref<1xf64>
    %2 = memref.load %alloca[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c1200 step %c1 {
      %3 = arith.addi %arg0, %c1 : index
      scf.for %arg1 = %c0 to %3 step %c1 {
        %4 = memref.load %alloc[%arg0, %arg1] : memref<1200x1200xf64>
        %5 = arith.mulf %4, %2 : f64
        memref.store %5, %alloc[%arg0, %arg1] : memref<1200x1200xf64>
      }
      scf.for %arg1 = %c0 to %c1000 step %c1 {
        scf.for %arg2 = %c0 to %3 step %c1 {
          %4 = memref.load %alloc_4[%arg2, %arg1] : memref<1200x1000xf64>
          %5 = arith.mulf %4, %1 : f64
          %6 = memref.load %alloc_5[%arg0, %arg1] : memref<1200x1000xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = memref.load %alloc_5[%arg2, %arg1] : memref<1200x1000xf64>
          %9 = arith.mulf %8, %1 : f64
          %10 = memref.load %alloc_4[%arg0, %arg1] : memref<1200x1000xf64>
          %11 = arith.mulf %9, %10 : f64
          %12 = arith.addf %7, %11 : f64
          %13 = memref.load %alloc[%arg0, %arg2] : memref<1200x1200xf64>
          %14 = arith.addf %13, %12 : f64
          memref.store %14, %alloc[%arg0, %arg2] : memref<1200x1200xf64>
        }
      }
    }
    memref.dealloc %alloc : memref<1200x1200xf64>
    memref.dealloc %alloc_4 : memref<1200x1000xf64>
    memref.dealloc %alloc_5 : memref<1200x1000xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}
