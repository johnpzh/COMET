####====---------------------------------====####

memory object: `%alloc_11 = memref.alloc() : memref<900x1200xf64>`
object name: %alloc_11
read time-complexity: O(864000000)
write time-complexity: O(1080000)

memory object: `%alloc_10 = memref.alloc() : memref<1100x900xf64>`
object name: %alloc_10
read time-complexity: O(792000000)
write time-complexity: O(990000)

memory object: `%alloc_9 = memref.alloc() : memref<800x1100xf64>`
object name: %alloc_9
read time-complexity: O(792000000)
write time-complexity: O(880000)

memory object: `%alloc_12 = memref.alloc() : memref<800x1200xf64>`
object name: %alloc_12
read time-complexity: O(864000000 + 960000)
write time-complexity: O(864000000 + 960000 + 960000)

memory object: `%alloc = memref.alloc() : memref<800x900xf64>`
object name: %alloc
read time-complexity: O(864000000 + 792000000)
write time-complexity: O(792000000 + 720000)

Read Time Complexity:
O(864000000 + 960000)	|	%alloc_12
O(864000000)	|	%alloc_11
O(864000000 + 792000000)	|	%alloc
O(792000000)	|	%alloc_9
O(792000000)	|	%alloc_10

Write Time Complexity:
O(864000000 + 960000 + 960000)	|	%alloc_12
O(792000000 + 720000)	|	%alloc
O(1080000)	|	%alloc_11
O(990000)	|	%alloc_10
O(880000)	|	%alloc_9
####====---------------------------------====####
module {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2lf \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("D\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main() attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 1.100000e+03 : f64
    %cst_0 = arith.constant 1.200000e+03 : f64
    %c1200 = arith.constant 1200 : index
    %cst_1 = arith.constant 9.000000e+02 : f64
    %c900 = arith.constant 900 : index
    %cst_2 = arith.constant 8.000000e+02 : f64
    %c1100 = arith.constant 1100 : index
    %c800 = arith.constant 800 : index
    %cst_3 = arith.constant 0.000000e+00 : f64
    %cst_4 = arith.constant 1.500000e+00 : f64
    %cst_5 = arith.constant 1.200000e+00 : f64
    %c1_i32 = arith.constant 1 : i32
    %c3_i32 = arith.constant 3 : i32
    %c2_i32 = arith.constant 2 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c1200_i32 = arith.constant 1200 : i32
    %c1100_i32 = arith.constant 1100 : i32
    %c900_i32 = arith.constant 900 : i32
    %c800_i32 = arith.constant 800 : i32
    %alloca = memref.alloca() : memref<1xf64>
    %0 = llvm.mlir.undef : f64
    memref.store %0, %alloca[%c0] : memref<1xf64>
    %alloca_6 = memref.alloca() : memref<1xf64>
    memref.store %0, %alloca_6[%c0] : memref<1xf64>
    %alloc = memref.alloc() : memref<800x900xf64>
    %alloc_7 = memref.alloc() : memref<800x1100xf64>
    %alloc_8 = memref.alloc() : memref<1100x900xf64>
    %alloc_9 = memref.alloc() : memref<900x1200xf64>
    %alloc_10 = memref.alloc() : memref<800x1200xf64>
    memref.store %cst_4, %alloca_6[%c0] : memref<1xf64>
    memref.store %cst_5, %alloca[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c800 step %c1 {
      %3 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c1100 step %c1 {
        %4 = arith.index_cast %arg1 : index to i32
        %5 = arith.muli %3, %4 : i32
        %6 = arith.addi %5, %c1_i32 : i32
        %7 = arith.remsi %6, %c800_i32 : i32
        %8 = arith.sitofp %7 : i32 to f64
        %9 = arith.divf %8, %cst_2 : f64
        memref.store %9, %alloc_7[%arg0, %arg1] : memref<800x1100xf64>
      }
    }
    scf.for %arg0 = %c0 to %c1100 step %c1 {
      %3 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c900 step %c1 {
        %4 = arith.index_cast %arg1 : index to i32
        %5 = arith.addi %4, %c1_i32 : i32
        %6 = arith.muli %3, %5 : i32
        %7 = arith.remsi %6, %c900_i32 : i32
        %8 = arith.sitofp %7 : i32 to f64
        %9 = arith.divf %8, %cst_1 : f64
        memref.store %9, %alloc_8[%arg0, %arg1] : memref<1100x900xf64>
      }
    }
    scf.for %arg0 = %c0 to %c900 step %c1 {
      %3 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c1200 step %c1 {
        %4 = arith.index_cast %arg1 : index to i32
        %5 = arith.addi %4, %c3_i32 : i32
        %6 = arith.muli %3, %5 : i32
        %7 = arith.addi %6, %c1_i32 : i32
        %8 = arith.remsi %7, %c1200_i32 : i32
        %9 = arith.sitofp %8 : i32 to f64
        %10 = arith.divf %9, %cst_0 : f64
        memref.store %10, %alloc_9[%arg0, %arg1] : memref<900x1200xf64>
      }
    }
    scf.for %arg0 = %c0 to %c800 step %c1 {
      %3 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c1200 step %c1 {
        %4 = arith.index_cast %arg1 : index to i32
        %5 = arith.addi %4, %c2_i32 : i32
        %6 = arith.muli %3, %5 : i32
        %7 = arith.remsi %6, %c1100_i32 : i32
        %8 = arith.sitofp %7 : i32 to f64
        %9 = arith.divf %8, %cst : f64
        memref.store %9, %alloc_10[%arg0, %arg1] : memref<800x1200xf64>
      }
    }
    %1 = memref.load %alloca_6[%c0] : memref<1xf64>
    %2 = memref.load %alloca[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c800 step %c1 {
      scf.for %arg1 = %c0 to %c900 step %c1 {
        memref.store %cst_3, %alloc[%arg0, %arg1] : memref<800x900xf64>
        scf.for %arg2 = %c0 to %c1100 step %c1 {
          %3 = memref.load %alloc_7[%arg0, %arg2] : memref<800x1100xf64>
          %4 = arith.mulf %1, %3 : f64
          %5 = memref.load %alloc_8[%arg2, %arg1] : memref<1100x900xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = memref.load %alloc[%arg0, %arg1] : memref<800x900xf64>
          %8 = arith.addf %7, %6 : f64
          memref.store %8, %alloc[%arg0, %arg1] : memref<800x900xf64>
        }
      }
    }
    scf.for %arg0 = %c0 to %c800 step %c1 {
      scf.for %arg1 = %c0 to %c1200 step %c1 {
        %3 = memref.load %alloc_10[%arg0, %arg1] : memref<800x1200xf64>
        %4 = arith.mulf %3, %2 : f64
        memref.store %4, %alloc_10[%arg0, %arg1] : memref<800x1200xf64>
        scf.for %arg2 = %c0 to %c900 step %c1 {
          %5 = memref.load %alloc[%arg0, %arg2] : memref<800x900xf64>
          %6 = memref.load %alloc_9[%arg2, %arg1] : memref<900x1200xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = memref.load %alloc_10[%arg0, %arg1] : memref<800x1200xf64>
          %9 = arith.addf %8, %7 : f64
          memref.store %9, %alloc_10[%arg0, %arg1] : memref<800x1200xf64>
        }
      }
    }
    memref.dealloc %alloc : memref<800x900xf64>
    memref.dealloc %alloc_7 : memref<800x1100xf64>
    memref.dealloc %alloc_8 : memref<1100x900xf64>
    memref.dealloc %alloc_9 : memref<900x1200xf64>
    memref.dealloc %alloc_10 : memref<800x1200xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}
