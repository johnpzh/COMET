####====---------------------------------====####

memory object: `%alloc = memref.alloc() : memref<1400x1200xf64>`
object name: %alloc
read time-complexity: O(3360000 + 1680000*(1200-%arg0) + 1680000*(1200-%arg0))
write time-complexity: O(3360000)

memory object: `%alloc_4 = memref.alloc() : memref<1200x1200xf64>`
object name: %alloc_4
read time-complexity: O(1200*(1200-%arg0) + 1680000*(1200-%arg0))
write time-complexity: O(1200*(1200-%arg0) + 1200*(1200-%arg0) + 1680000*(1200-%arg0) + 1200*(1200-%arg0))

memory object: `%alloc_5 = memref.alloc() : memref<1200xf64>`
object name: %alloc_5
read time-complexity: O(3361200)
write time-complexity: O(1682400)

Read Time Complexity:
O(1200*(1200-%arg0) + 1680000*(1200-%arg0))	|	%alloc_4
O(3361200)	|	%alloc_5
O(3360000 + 1680000*(1200-%arg0) + 1680000*(1200-%arg0))	|	%alloc

Write Time Complexity:
O(1200*(1200-%arg0) + 1200*(1200-%arg0) + 1680000*(1200-%arg0) + 1200*(1200-%arg0))	|	%alloc_4
O(3360000)	|	%alloc
O(1682400)	|	%alloc_5
####====---------------------------------====####
module {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2lf \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("cov\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main() attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 1.400000e+03 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %cst_2 = arith.constant 1.200000e+03 : f64
    %c1200 = arith.constant 1200 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c1400 = arith.constant 1400 : index
    %alloca = memref.alloca() : memref<1xf64>
    %0 = llvm.mlir.undef : f64
    memref.store %0, %alloca[%c0] : memref<1xf64>
    %alloc = memref.alloc() : memref<1400x1200xf64>
    %alloc_3 = memref.alloc() : memref<1200x1200xf64>
    %alloc_4 = memref.alloc() : memref<1200xf64>
    memref.store %cst, %alloca[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c1400 step %c1 {
      %3 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c1200 step %c1 {
        %4 = arith.index_cast %arg1 : index to i32
        %5 = arith.sitofp %3 : i32 to f64
        %6 = arith.sitofp %4 : i32 to f64
        %7 = arith.mulf %5, %6 : f64
        %8 = arith.divf %7, %cst_2 : f64
        memref.store %8, %alloc[%arg0, %arg1] : memref<1400x1200xf64>
      }
    }
    %1 = memref.load %alloca[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %c1200 step %c1 {
      memref.store %cst_1, %alloc_4[%arg0] : memref<1200xf64>
      scf.for %arg1 = %c0 to %c1400 step %c1 {
        %5 = memref.load %alloc[%arg1, %arg0] : memref<1400x1200xf64>
        %6 = memref.load %alloc_4[%arg0] : memref<1200xf64>
        %7 = arith.addf %6, %5 : f64
        memref.store %7, %alloc_4[%arg0] : memref<1200xf64>
      }
      %3 = memref.load %alloc_4[%arg0] : memref<1200xf64>
      %4 = arith.divf %3, %1 : f64
      memref.store %4, %alloc_4[%arg0] : memref<1200xf64>
    }
    scf.for %arg0 = %c0 to %c1400 step %c1 {
      scf.for %arg1 = %c0 to %c1200 step %c1 {
        %3 = memref.load %alloc_4[%arg1] : memref<1200xf64>
        %4 = memref.load %alloc[%arg0, %arg1] : memref<1400x1200xf64>
        %5 = arith.subf %4, %3 : f64
        memref.store %5, %alloc[%arg0, %arg1] : memref<1400x1200xf64>
      }
    }
    %2 = arith.subf %1, %cst_0 : f64
    scf.for %arg0 = %c0 to %c1200 step %c1 {
      scf.for %arg1 = %arg0 to %c1200 step %c1 {
        memref.store %cst_1, %alloc_3[%arg0, %arg1] : memref<1200x1200xf64>
        scf.for %arg2 = %c0 to %c1400 step %c1 {
          %5 = memref.load %alloc[%arg2, %arg0] : memref<1400x1200xf64>
          %6 = memref.load %alloc[%arg2, %arg1] : memref<1400x1200xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = memref.load %alloc_3[%arg0, %arg1] : memref<1200x1200xf64>
          %9 = arith.addf %8, %7 : f64
          memref.store %9, %alloc_3[%arg0, %arg1] : memref<1200x1200xf64>
        }
        %3 = memref.load %alloc_3[%arg0, %arg1] : memref<1200x1200xf64>
        %4 = arith.divf %3, %2 : f64
        memref.store %4, %alloc_3[%arg0, %arg1] : memref<1200x1200xf64>
        memref.store %4, %alloc_3[%arg1, %arg0] : memref<1200x1200xf64>
      }
    }
    memref.dealloc %alloc : memref<1400x1200xf64>
    memref.dealloc %alloc_3 : memref<1200x1200xf64>
    memref.dealloc %alloc_4 : memref<1200xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}
