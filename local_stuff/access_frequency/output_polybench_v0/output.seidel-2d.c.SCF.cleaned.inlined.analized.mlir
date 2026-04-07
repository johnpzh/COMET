####====---------------------------------====####

memory object: `%alloc = memref.alloc() : memref<2000x2000xf64>`
object name: %alloc
read time-complexity: O(1996002000 + 1996002000 + 1996002000 + 1996002000 + 1996002000 + 1996002000 + 1996002000 + 1996002000 + 1996002000)
write time-complexity: O(1996002000 + 4000000)

Read Time Complexity:
O(1996002000 + 1996002000 + 1996002000 + 1996002000 + 1996002000 + 1996002000 + 1996002000 + 1996002000 + 1996002000)	|	%alloc

Write Time Complexity:
O(1996002000 + 4000000)	|	%alloc
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
    %cst_0 = arith.constant 9.000000e+00 : f64
    %c2_i32 = arith.constant 2 : i32
    %cst_1 = arith.constant 2.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<2000x2000xf64>
    scf.for %arg0 = %c0 to %c2000 step %c1 {
      %0 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c2000 step %c1 {
        %1 = arith.index_cast %arg1 : index to i32
        %2 = arith.sitofp %0 : i32 to f64
        %3 = arith.addi %1, %c2_i32 : i32
        %4 = arith.sitofp %3 : i32 to f64
        %5 = arith.mulf %2, %4 : f64
        %6 = arith.addf %5, %cst_1 : f64
        %7 = arith.divf %6, %cst : f64
        memref.store %7, %alloc[%arg0, %arg1] : memref<2000x2000xf64>
      }
    }
    scf.for %arg0 = %c0 to %c500 step %c1 {
      scf.for %arg1 = %c1 to %c1999 step %c1 {
        scf.for %arg2 = %c1 to %c1999 step %c1 {
          %0 = arith.addi %arg1, %c-1 : index
          %1 = arith.addi %arg2, %c-1 : index
          %2 = memref.load %alloc[%0, %1] : memref<2000x2000xf64>
          %3 = memref.load %alloc[%0, %arg2] : memref<2000x2000xf64>
          %4 = arith.addf %2, %3 : f64
          %5 = arith.addi %arg2, %c1 : index
          %6 = memref.load %alloc[%0, %5] : memref<2000x2000xf64>
          %7 = arith.addf %4, %6 : f64
          %8 = memref.load %alloc[%arg1, %1] : memref<2000x2000xf64>
          %9 = arith.addf %7, %8 : f64
          %10 = memref.load %alloc[%arg1, %arg2] : memref<2000x2000xf64>
          %11 = arith.addf %9, %10 : f64
          %12 = memref.load %alloc[%arg1, %5] : memref<2000x2000xf64>
          %13 = arith.addf %11, %12 : f64
          %14 = arith.addi %arg1, %c1 : index
          %15 = memref.load %alloc[%14, %1] : memref<2000x2000xf64>
          %16 = arith.addf %13, %15 : f64
          %17 = memref.load %alloc[%14, %arg2] : memref<2000x2000xf64>
          %18 = arith.addf %16, %17 : f64
          %19 = memref.load %alloc[%14, %5] : memref<2000x2000xf64>
          %20 = arith.addf %18, %19 : f64
          %21 = arith.divf %20, %cst_0 : f64
          memref.store %21, %alloc[%arg1, %arg2] : memref<2000x2000xf64>
        }
      }
    }
    memref.dealloc %alloc : memref<2000x2000xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}
