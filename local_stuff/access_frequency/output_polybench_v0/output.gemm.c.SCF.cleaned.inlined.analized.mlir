####====---------------------------------====####

memory object: `%alloc_7 = memref.alloc() : memref<1000x1200xf64>`
object name: %alloc_7
read time-complexity: O(1320000000)
write time-complexity: O(1200000)

memory object: `%alloc_8 = memref.alloc() : memref<1200x1100xf64>`
object name: %alloc_8
read time-complexity: O(1320000000)
write time-complexity: O(1320000)

memory object: `%alloc = memref.alloc() : memref<1000x1100xf64>`
object name: %alloc
read time-complexity: O(1320000000 + 1100000)
write time-complexity: O(1320000000 + 1100000 + 1100000)

Read Time Complexity:
O(1320000000)	|	%alloc_8
O(1320000000)	|	%alloc_7
O(1320000000 + 1100000)	|	%alloc

Write Time Complexity:
O(1320000000 + 1100000 + 1100000)	|	%alloc
O(1320000)	|	%alloc_8
O(1200000)	|	%alloc_7
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
    %cst = arith.constant 1.100000e+03 : f64
    %cst_0 = arith.constant 1.200000e+03 : f64
    %c1200 = arith.constant 1200 : index
    %cst_1 = arith.constant 1.000000e+03 : f64
    %c1100 = arith.constant 1100 : index
    %c1000 = arith.constant 1000 : index
    %cst_2 = arith.constant 1.500000e+00 : f64
    %cst_3 = arith.constant 1.200000e+00 : f64
    %c1_i32 = arith.constant 1 : i32
    %c2_i32 = arith.constant 2 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c1200_i32 = arith.constant 1200 : i32
    %c1100_i32 = arith.constant 1100 : i32
    %c1000_i32 = arith.constant 1000 : i32
    %alloca = memref.alloca() : memref<1xf64>
    %0 = llvm.mlir.undef : f64
    memref.store %0, %alloca[%c0] : memref<1xf64>
    %alloca_4 = memref.alloca() : memref<1xf64>
    memref.store %0, %alloca_4[%c0] : memref<1xf64>
    %alloc = memref.alloc() : memref<1000x1100xf64>
    %alloc_5 = memref.alloc() : memref<1000x1200xf64>
    %alloc_6 = memref.alloc() : memref<1200x1100xf64>
    memref.store %cst_2, %alloca_4[%c0] : memref<1xf64>
    memref.store %cst_3, %alloca[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c1000 step %c1 {
      %3 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c1100 step %c1 {
        %4 = arith.index_cast %arg1 : index to i32
        %5 = arith.muli %3, %4 : i32
        %6 = arith.addi %5, %c1_i32 : i32
        %7 = arith.remsi %6, %c1000_i32 : i32
        %8 = arith.sitofp %7 : i32 to f64
        %9 = arith.divf %8, %cst_1 : f64
        memref.store %9, %alloc[%arg0, %arg1] : memref<1000x1100xf64>
      }
    }
    scf.for %arg0 = %c0 to %c1000 step %c1 {
      %3 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c1200 step %c1 {
        %4 = arith.index_cast %arg1 : index to i32
        %5 = arith.addi %4, %c1_i32 : i32
        %6 = arith.muli %3, %5 : i32
        %7 = arith.remsi %6, %c1200_i32 : i32
        %8 = arith.sitofp %7 : i32 to f64
        %9 = arith.divf %8, %cst_0 : f64
        memref.store %9, %alloc_5[%arg0, %arg1] : memref<1000x1200xf64>
      }
    }
    scf.for %arg0 = %c0 to %c1200 step %c1 {
      %3 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c1100 step %c1 {
        %4 = arith.index_cast %arg1 : index to i32
        %5 = arith.addi %4, %c2_i32 : i32
        %6 = arith.muli %3, %5 : i32
        %7 = arith.remsi %6, %c1100_i32 : i32
        %8 = arith.sitofp %7 : i32 to f64
        %9 = arith.divf %8, %cst : f64
        memref.store %9, %alloc_6[%arg0, %arg1] : memref<1200x1100xf64>
      }
    }
    %1 = memref.load %alloca_4[%c0] : memref<1xf64>
    %2 = memref.load %alloca[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c1000 step %c1 {
      scf.for %arg1 = %c0 to %c1100 step %c1 {
        %3 = memref.load %alloc[%arg0, %arg1] : memref<1000x1100xf64>
        %4 = arith.mulf %3, %2 : f64
        memref.store %4, %alloc[%arg0, %arg1] : memref<1000x1100xf64>
      }
      scf.for %arg1 = %c0 to %c1200 step %c1 {
        scf.for %arg2 = %c0 to %c1100 step %c1 {
          %3 = memref.load %alloc_5[%arg0, %arg1] : memref<1000x1200xf64>
          %4 = arith.mulf %1, %3 : f64
          %5 = memref.load %alloc_6[%arg1, %arg2] : memref<1200x1100xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = memref.load %alloc[%arg0, %arg2] : memref<1000x1100xf64>
          %8 = arith.addf %7, %6 : f64
          memref.store %8, %alloc[%arg0, %arg2] : memref<1000x1100xf64>
        }
      }
    }
    memref.dealloc %alloc : memref<1000x1100xf64>
    memref.dealloc %alloc_5 : memref<1000x1200xf64>
    memref.dealloc %alloc_6 : memref<1200x1100xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}
