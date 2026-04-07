####====---------------------------------====####

memory object: `%alloc_6 = memref.alloc() : memref<2000xf64>`
object name: %alloc_6
read time-complexity: O(2000 + 2000*%arg0)
write time-complexity: O(2000 + 2000)

memory object: `%alloc_7 = memref.alloc() : memref<2000x2000xf64>`
object name: %alloc_7
read time-complexity: O(4000000 + 8000000000)
write time-complexity: O(8000000000 + 4000000)

memory object: `%alloc_5 = memref.alloc() : memref<2000xf64>`
object name: %alloc_5
read time-complexity: O(2000*(2000-%5))
write time-complexity: O(2000 + 2000)

memory object: `%alloc_4 = memref.alloc() : memref<2000xf64>`
object name: %alloc_4
read time-complexity: O(2000)
write time-complexity: O(2000)

memory object: `%alloc = memref.alloc() : memref<2000x2000xf64>`
object name: %alloc
read time-complexity: O(2000 + 2000*(2000-%5) + 2000*%arg0 + 2000*%arg0*(2000-%arg0) + 2000*%arg0*(2000-%arg0) + 2000*(2000-%arg0) + 2000*%arg0 + 2000*%arg1*%arg0 + 2000*%arg1*%arg0 + 2000*%arg0 + 8000000000 + 8000000000)
write time-complexity: O(2000*(2000-%arg0) + 2000*%arg0 + 4000000 + 2000 + 2000*(2000-%3) + 2000*%3)

Read Time Complexity:
O(2000 + 2000*(2000-%5) + 2000*%arg0 + 2000*%arg0*(2000-%arg0) + 2000*%arg0*(2000-%arg0) + 2000*(2000-%arg0) + 2000*%arg0 + 2000*%arg1*%arg0 + 2000*%arg1*%arg0 + 2000*%arg0 + 8000000000 + 8000000000)	|	%alloc
O(2000 + 2000*%arg0)	|	%alloc_6
O(2000*(2000-%5))	|	%alloc_5
O(4000000 + 8000000000)	|	%alloc_7
O(2000)	|	%alloc_4

Write Time Complexity:
O(2000*(2000-%arg0) + 2000*%arg0 + 4000000 + 2000 + 2000*(2000-%3) + 2000*%3)	|	%alloc
O(8000000000 + 4000000)	|	%alloc_7
O(2000 + 2000)	|	%alloc_6
O(2000 + 2000)	|	%alloc_5
O(2000)	|	%alloc_4
####====---------------------------------====####
module {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2lf \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("x\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main() attributes {llvm.linkage = #llvm.linkage<external>} {
    %c1999 = arith.constant 1999 : index
    %c2000 = arith.constant 2000 : index
    %cst = arith.constant 2.000000e+03 : f64
    %c0_i32 = arith.constant 0 : i32
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c1_i32 = arith.constant 1 : i32
    %cst_1 = arith.constant 2.000000e+00 : f64
    %cst_2 = arith.constant 4.000000e+00 : f64
    %cst_3 = arith.constant 1.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c2000_i32 = arith.constant 2000 : i32
    %alloc = memref.alloc() : memref<2000x2000xf64>
    %alloc_4 = memref.alloc() : memref<2000xf64>
    %alloc_5 = memref.alloc() : memref<2000xf64>
    %alloc_6 = memref.alloc() : memref<2000xf64>
    scf.for %arg0 = %c0 to %c2000 step %c1 {
      %1 = arith.index_cast %arg0 : index to i32
      memref.store %cst_0, %alloc_5[%arg0] : memref<2000xf64>
      memref.store %cst_0, %alloc_6[%arg0] : memref<2000xf64>
      %2 = arith.addi %1, %c1_i32 : i32
      %3 = arith.sitofp %2 : i32 to f64
      %4 = arith.divf %3, %cst : f64
      %5 = arith.divf %4, %cst_1 : f64
      %6 = arith.addf %5, %cst_2 : f64
      memref.store %6, %alloc_4[%arg0] : memref<2000xf64>
    }
    scf.for %arg0 = %c0 to %c2000 step %c1 {
      %1 = arith.index_cast %arg0 : index to i32
      %2 = arith.addi %1, %c1_i32 : i32
      %3 = arith.index_cast %2 : i32 to index
      scf.for %arg1 = %c0 to %3 step %c1 {
        %4 = arith.index_cast %arg1 : index to i32
        %5 = arith.subi %c0_i32, %4 : i32
        %6 = arith.remsi %5, %c2000_i32 : i32
        %7 = arith.sitofp %6 : i32 to f64
        %8 = arith.divf %7, %cst : f64
        %9 = arith.addf %8, %cst_3 : f64
        memref.store %9, %alloc[%arg0, %arg1] : memref<2000x2000xf64>
      }
      scf.for %arg1 = %3 to %c2000 step %c1 {
        memref.store %cst_0, %alloc[%arg0, %arg1] : memref<2000x2000xf64>
      }
      memref.store %cst_3, %alloc[%arg0, %arg0] : memref<2000x2000xf64>
    }
    %alloc_7 = memref.alloc() : memref<2000x2000xf64>
    scf.for %arg0 = %c0 to %c2000 step %c1 {
      scf.for %arg1 = %c0 to %c2000 step %c1 {
        memref.store %cst_0, %alloc_7[%arg0, %arg1] : memref<2000x2000xf64>
      }
    }
    scf.for %arg0 = %c0 to %c2000 step %c1 {
      scf.for %arg1 = %c0 to %c2000 step %c1 {
        scf.for %arg2 = %c0 to %c2000 step %c1 {
          %1 = memref.load %alloc[%arg1, %arg0] : memref<2000x2000xf64>
          %2 = memref.load %alloc[%arg2, %arg0] : memref<2000x2000xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = memref.load %alloc_7[%arg1, %arg2] : memref<2000x2000xf64>
          %5 = arith.addf %4, %3 : f64
          memref.store %5, %alloc_7[%arg1, %arg2] : memref<2000x2000xf64>
        }
      }
    }
    scf.for %arg0 = %c0 to %c2000 step %c1 {
      scf.for %arg1 = %c0 to %c2000 step %c1 {
        %1 = memref.load %alloc_7[%arg0, %arg1] : memref<2000x2000xf64>
        memref.store %1, %alloc[%arg0, %arg1] : memref<2000x2000xf64>
      }
    }
    memref.dealloc %alloc_7 : memref<2000x2000xf64>
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    memref.store %0, %alloca[] : memref<f64>
    scf.for %arg0 = %c0 to %c2000 step %c1 {
      scf.for %arg1 = %c0 to %arg0 step %c1 {
        %1 = memref.load %alloc[%arg0, %arg1] : memref<2000x2000xf64>
        memref.store %1, %alloca[] : memref<f64>
        scf.for %arg2 = %c0 to %arg1 step %c1 {
          %5 = memref.load %alloc[%arg0, %arg2] : memref<2000x2000xf64>
          %6 = memref.load %alloc[%arg2, %arg1] : memref<2000x2000xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = memref.load %alloca[] : memref<f64>
          %9 = arith.subf %8, %7 : f64
          memref.store %9, %alloca[] : memref<f64>
        }
        %2 = memref.load %alloca[] : memref<f64>
        %3 = memref.load %alloc[%arg1, %arg1] : memref<2000x2000xf64>
        %4 = arith.divf %2, %3 : f64
        memref.store %4, %alloc[%arg0, %arg1] : memref<2000x2000xf64>
      }
      scf.for %arg1 = %arg0 to %c2000 step %c1 {
        %1 = memref.load %alloc[%arg0, %arg1] : memref<2000x2000xf64>
        memref.store %1, %alloca[] : memref<f64>
        scf.for %arg2 = %c0 to %arg0 step %c1 {
          %3 = memref.load %alloc[%arg0, %arg2] : memref<2000x2000xf64>
          %4 = memref.load %alloc[%arg2, %arg1] : memref<2000x2000xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %alloca[] : memref<f64>
          %7 = arith.subf %6, %5 : f64
          memref.store %7, %alloca[] : memref<f64>
        }
        %2 = memref.load %alloca[] : memref<f64>
        memref.store %2, %alloc[%arg0, %arg1] : memref<2000x2000xf64>
      }
    }
    scf.for %arg0 = %c0 to %c2000 step %c1 {
      %1 = memref.load %alloc_4[%arg0] : memref<2000xf64>
      memref.store %1, %alloca[] : memref<f64>
      scf.for %arg1 = %c0 to %arg0 step %c1 {
        %3 = memref.load %alloc[%arg0, %arg1] : memref<2000x2000xf64>
        %4 = memref.load %alloc_6[%arg1] : memref<2000xf64>
        %5 = arith.mulf %3, %4 : f64
        %6 = memref.load %alloca[] : memref<f64>
        %7 = arith.subf %6, %5 : f64
        memref.store %7, %alloca[] : memref<f64>
      }
      %2 = memref.load %alloca[] : memref<f64>
      memref.store %2, %alloc_6[%arg0] : memref<2000xf64>
    }
    scf.for %arg0 = %c0 to %c2000 step %c1 {
      %1 = arith.subi %c1999, %arg0 : index
      %2 = memref.load %alloc_6[%1] : memref<2000xf64>
      memref.store %2, %alloca[] : memref<f64>
      %3 = arith.subi %c2000, %arg0 : index
      scf.for %arg1 = %3 to %c2000 step %c1 {
        %7 = memref.load %alloc[%1, %arg1] : memref<2000x2000xf64>
        %8 = memref.load %alloc_5[%arg1] : memref<2000xf64>
        %9 = arith.mulf %7, %8 : f64
        %10 = memref.load %alloca[] : memref<f64>
        %11 = arith.subf %10, %9 : f64
        memref.store %11, %alloca[] : memref<f64>
      }
      %4 = memref.load %alloca[] : memref<f64>
      %5 = memref.load %alloc[%1, %1] : memref<2000x2000xf64>
      %6 = arith.divf %4, %5 : f64
      memref.store %6, %alloc_5[%1] : memref<2000xf64>
    }
    memref.dealloc %alloc : memref<2000x2000xf64>
    memref.dealloc %alloc_4 : memref<2000xf64>
    memref.dealloc %alloc_5 : memref<2000xf64>
    memref.dealloc %alloc_6 : memref<2000xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}
