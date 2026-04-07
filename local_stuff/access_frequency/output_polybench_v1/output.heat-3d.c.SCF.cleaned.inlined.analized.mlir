####====---------------------------------====####

memory object: `%alloc = memref.alloc() : memref<120x120x120xf64>`
object name: %alloc
read time-complexity: O(5750612000)
write time-complexity: O(823244000)

memory object: `%alloc_3 = memref.alloc() : memref<120x120x120xf64>`
object name: %alloc_3
read time-complexity: O(5752340000)
write time-complexity: O(823244000)

Read Time Complexity:
O(5752340000)	|	%alloc_3
O(5750612000)	|	%alloc

Write Time Complexity:
O(823244000)	|	%alloc_3
O(823244000)	|	%alloc
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
    %c119 = arith.constant 119 : index
    %c501 = arith.constant 501 : index
    %cst = arith.constant 1.200000e+02 : f64
    %c120 = arith.constant 120 : index
    %cst_0 = arith.constant 2.000000e+00 : f64
    %cst_1 = arith.constant 1.250000e-01 : f64
    %cst_2 = arith.constant 1.000000e+01 : f64
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c120_i32 = arith.constant 120 : i32
    %alloc = memref.alloc() : memref<120x120x120xf64>
    %alloc_3 = memref.alloc() : memref<120x120x120xf64>
    scf.for %arg0 = %c0 to %c120 step %c1 {
      %0 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c120 step %c1 {
        %1 = arith.index_cast %arg1 : index to i32
        scf.for %arg2 = %c0 to %c120 step %c1 {
          %2 = arith.index_cast %arg2 : index to i32
          %3 = arith.addi %0, %1 : i32
          %4 = arith.subi %c120_i32, %2 : i32
          %5 = arith.addi %3, %4 : i32
          %6 = arith.sitofp %5 : i32 to f64
          %7 = arith.mulf %6, %cst_2 : f64
          %8 = arith.divf %7, %cst : f64
          memref.store %8, %alloc_3[%arg0, %arg1, %arg2] : memref<120x120x120xf64>
          %9 = memref.load %alloc_3[%arg0, %arg1, %arg2] : memref<120x120x120xf64>
          memref.store %9, %alloc[%arg0, %arg1, %arg2] : memref<120x120x120xf64>
        }
      }
    }
    scf.for %arg0 = %c1 to %c501 step %c1 {
      scf.for %arg1 = %c1 to %c119 step %c1 {
        scf.for %arg2 = %c1 to %c119 step %c1 {
          scf.for %arg3 = %c1 to %c119 step %c1 {
            %0 = arith.addi %arg1, %c1 : index
            %1 = memref.load %alloc[%0, %arg2, %arg3] : memref<120x120x120xf64>
            %2 = memref.load %alloc[%arg1, %arg2, %arg3] : memref<120x120x120xf64>
            %3 = arith.mulf %2, %cst_0 : f64
            %4 = arith.subf %1, %3 : f64
            %5 = arith.addi %arg1, %c-1 : index
            %6 = memref.load %alloc[%5, %arg2, %arg3] : memref<120x120x120xf64>
            %7 = arith.addf %4, %6 : f64
            %8 = arith.mulf %7, %cst_1 : f64
            %9 = arith.addi %arg2, %c1 : index
            %10 = memref.load %alloc[%arg1, %9, %arg3] : memref<120x120x120xf64>
            %11 = arith.subf %10, %3 : f64
            %12 = arith.addi %arg2, %c-1 : index
            %13 = memref.load %alloc[%arg1, %12, %arg3] : memref<120x120x120xf64>
            %14 = arith.addf %11, %13 : f64
            %15 = arith.mulf %14, %cst_1 : f64
            %16 = arith.addf %8, %15 : f64
            %17 = arith.addi %arg3, %c1 : index
            %18 = memref.load %alloc[%arg1, %arg2, %17] : memref<120x120x120xf64>
            %19 = arith.subf %18, %3 : f64
            %20 = arith.addi %arg3, %c-1 : index
            %21 = memref.load %alloc[%arg1, %arg2, %20] : memref<120x120x120xf64>
            %22 = arith.addf %19, %21 : f64
            %23 = arith.mulf %22, %cst_1 : f64
            %24 = arith.addf %16, %23 : f64
            %25 = arith.addf %24, %2 : f64
            memref.store %25, %alloc_3[%arg1, %arg2, %arg3] : memref<120x120x120xf64>
          }
        }
      }
      scf.for %arg1 = %c1 to %c119 step %c1 {
        scf.for %arg2 = %c1 to %c119 step %c1 {
          scf.for %arg3 = %c1 to %c119 step %c1 {
            %0 = arith.addi %arg1, %c1 : index
            %1 = memref.load %alloc_3[%0, %arg2, %arg3] : memref<120x120x120xf64>
            %2 = memref.load %alloc_3[%arg1, %arg2, %arg3] : memref<120x120x120xf64>
            %3 = arith.mulf %2, %cst_0 : f64
            %4 = arith.subf %1, %3 : f64
            %5 = arith.addi %arg1, %c-1 : index
            %6 = memref.load %alloc_3[%5, %arg2, %arg3] : memref<120x120x120xf64>
            %7 = arith.addf %4, %6 : f64
            %8 = arith.mulf %7, %cst_1 : f64
            %9 = arith.addi %arg2, %c1 : index
            %10 = memref.load %alloc_3[%arg1, %9, %arg3] : memref<120x120x120xf64>
            %11 = arith.subf %10, %3 : f64
            %12 = arith.addi %arg2, %c-1 : index
            %13 = memref.load %alloc_3[%arg1, %12, %arg3] : memref<120x120x120xf64>
            %14 = arith.addf %11, %13 : f64
            %15 = arith.mulf %14, %cst_1 : f64
            %16 = arith.addf %8, %15 : f64
            %17 = arith.addi %arg3, %c1 : index
            %18 = memref.load %alloc_3[%arg1, %arg2, %17] : memref<120x120x120xf64>
            %19 = arith.subf %18, %3 : f64
            %20 = arith.addi %arg3, %c-1 : index
            %21 = memref.load %alloc_3[%arg1, %arg2, %20] : memref<120x120x120xf64>
            %22 = arith.addf %19, %21 : f64
            %23 = arith.mulf %22, %cst_1 : f64
            %24 = arith.addf %16, %23 : f64
            %25 = arith.addf %24, %2 : f64
            memref.store %25, %alloc[%arg1, %arg2, %arg3] : memref<120x120x120xf64>
          }
        }
      }
    }
    memref.dealloc %alloc : memref<120x120x120xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}
