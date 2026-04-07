####====---------------------------------====####

memory object: `%alloc_0 = memref.alloc() : memref<2500x2500xi32>`
object name: %alloc_0
read time-complexity: O(2500*(%arg1-%12)*(2500-%1) + 2500*(%arg1-%12)*(2500-%1) + 2500*(%arg1-%12)*(2500-%1) + 2500*(%arg1-%12)*(2500-%1) + 2500*(%arg1-%12)*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1))
write time-complexity: O(2500*(%arg1-%12)*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 6250000)

memory object: `%alloc = memref.alloc() : memref<2500xi8>`
object name: %alloc
read time-complexity: O(2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1))
write time-complexity: O(2500)

Read Time Complexity:
O(2500*(%arg1-%12)*(2500-%1) + 2500*(%arg1-%12)*(2500-%1) + 2500*(%arg1-%12)*(2500-%1) + 2500*(%arg1-%12)*(2500-%1) + 2500*(%arg1-%12)*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1))	|	%alloc_0
O(2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1))	|	%alloc

Write Time Complexity:
O(2500*(%arg1-%12)*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 2500*(2500-%1) + 6250000)	|	%alloc_0
O(2500)	|	%alloc
####====---------------------------------====####
module {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%d \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("table\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main() attributes {llvm.linkage = #llvm.linkage<external>} {
    %c-2501 = arith.constant -2501 : index
    %c2499 = arith.constant 2499 : index
    %c-1 = arith.constant -1 : index
    %c2500 = arith.constant 2500 : index
    %c3_i32 = arith.constant 3 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %c4_i32 = arith.constant 4 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<2500xi8>
    %alloc_0 = memref.alloc() : memref<2500x2500xi32>
    scf.for %arg0 = %c0 to %c2500 step %c1 {
      %0 = arith.index_cast %arg0 : index to i32
      %1 = arith.addi %0, %c1_i32 : i32
      %2 = arith.remsi %1, %c4_i32 : i32
      %3 = arith.trunci %2 : i32 to i8
      memref.store %3, %alloc[%arg0] : memref<2500xi8>
    }
    scf.for %arg0 = %c0 to %c2500 step %c1 {
      scf.for %arg1 = %c0 to %c2500 step %c1 {
        memref.store %c0_i32, %alloc_0[%arg0, %arg1] : memref<2500x2500xi32>
      }
    }
    scf.for %arg0 = %c0 to %c2500 step %c1 {
      %0 = arith.subi %c2500, %arg0 : index
      scf.for %arg1 = %0 to %c2500 step %c1 {
        %1 = arith.addi %arg1, %c-1 : index
        %2 = arith.cmpi sge, %1, %c0 : index
        scf.if %2 {
          %6 = arith.subi %c2499, %arg0 : index
          %7 = memref.load %alloc_0[%6, %arg1] : memref<2500x2500xi32>
          %8 = memref.load %alloc_0[%6, %1] : memref<2500x2500xi32>
          %9 = arith.cmpi sge, %7, %8 : i32
          %10 = scf.if %9 -> (i32) {
            %11 = memref.load %alloc_0[%6, %arg1] : memref<2500x2500xi32>
            scf.yield %11 : i32
          } else {
            %11 = memref.load %alloc_0[%6, %1] : memref<2500x2500xi32>
            scf.yield %11 : i32
          }
          memref.store %10, %alloc_0[%6, %arg1] : memref<2500x2500xi32>
        }
        %3 = arith.addi %arg0, %c-1 : index
        %4 = arith.cmpi sge, %3, %c0 : index
        scf.if %4 {
          %6 = arith.subi %c2499, %arg0 : index
          %7 = memref.load %alloc_0[%6, %arg1] : memref<2500x2500xi32>
          %8 = memref.load %alloc_0[%0, %arg1] : memref<2500x2500xi32>
          %9 = arith.cmpi sge, %7, %8 : i32
          %10 = scf.if %9 -> (i32) {
            %11 = memref.load %alloc_0[%6, %arg1] : memref<2500x2500xi32>
            scf.yield %11 : i32
          } else {
            %11 = memref.load %alloc_0[%0, %arg1] : memref<2500x2500xi32>
            scf.yield %11 : i32
          }
          memref.store %10, %alloc_0[%6, %arg1] : memref<2500x2500xi32>
        }
        %5 = arith.andi %2, %4 : i1
        scf.if %5 {
          %6 = arith.addi %arg0, %arg1 : index
          %7 = arith.addi %6, %c-2501 : index
          %8 = arith.cmpi sge, %7, %c0 : index
          scf.if %8 {
            %9 = arith.subi %c2499, %arg0 : index
            %10 = memref.load %alloc_0[%9, %arg1] : memref<2500x2500xi32>
            %11 = memref.load %alloc_0[%0, %1] : memref<2500x2500xi32>
            %12 = memref.load %alloc[%9] : memref<2500xi8>
            %13 = arith.extsi %12 : i8 to i32
            %14 = memref.load %alloc[%arg1] : memref<2500xi8>
            %15 = arith.extsi %14 : i8 to i32
            %16 = arith.addi %13, %15 : i32
            %17 = arith.cmpi eq, %16, %c3_i32 : i32
            %18 = arith.extui %17 : i1 to i32
            %19 = arith.addi %11, %18 : i32
            %20 = arith.cmpi sge, %10, %19 : i32
            %21 = scf.if %20 -> (i32) {
              %22 = memref.load %alloc_0[%9, %arg1] : memref<2500x2500xi32>
              scf.yield %22 : i32
            } else {
              %22 = memref.load %alloc_0[%0, %1] : memref<2500x2500xi32>
              %23 = memref.load %alloc[%9] : memref<2500xi8>
              %24 = arith.extsi %23 : i8 to i32
              %25 = arith.addi %24, %15 : i32
              %26 = arith.cmpi eq, %25, %c3_i32 : i32
              %27 = arith.extui %26 : i1 to i32
              %28 = arith.addi %22, %27 : i32
              scf.yield %28 : i32
            }
            memref.store %21, %alloc_0[%9, %arg1] : memref<2500x2500xi32>
          } else {
            %9 = arith.subi %c2499, %arg0 : index
            %10 = memref.load %alloc_0[%9, %arg1] : memref<2500x2500xi32>
            %11 = memref.load %alloc_0[%0, %1] : memref<2500x2500xi32>
            %12 = arith.cmpi sge, %10, %11 : i32
            %13 = scf.if %12 -> (i32) {
              %14 = memref.load %alloc_0[%9, %arg1] : memref<2500x2500xi32>
              scf.yield %14 : i32
            } else {
              %14 = memref.load %alloc_0[%0, %1] : memref<2500x2500xi32>
              scf.yield %14 : i32
            }
            memref.store %13, %alloc_0[%9, %arg1] : memref<2500x2500xi32>
          }
        }
        scf.for %arg2 = %0 to %arg1 step %c1 {
          %6 = arith.subi %c2499, %arg0 : index
          %7 = memref.load %alloc_0[%6, %arg1] : memref<2500x2500xi32>
          %8 = memref.load %alloc_0[%6, %arg2] : memref<2500x2500xi32>
          %9 = arith.addi %arg2, %c1 : index
          %10 = memref.load %alloc_0[%9, %arg1] : memref<2500x2500xi32>
          %11 = arith.addi %8, %10 : i32
          %12 = arith.cmpi sge, %7, %11 : i32
          %13 = scf.if %12 -> (i32) {
            %14 = memref.load %alloc_0[%6, %arg1] : memref<2500x2500xi32>
            scf.yield %14 : i32
          } else {
            %14 = memref.load %alloc_0[%6, %arg2] : memref<2500x2500xi32>
            %15 = arith.addi %14, %10 : i32
            scf.yield %15 : i32
          }
          memref.store %13, %alloc_0[%6, %arg1] : memref<2500x2500xi32>
        }
      }
    }
    memref.dealloc %alloc : memref<2500xi8>
    memref.dealloc %alloc_0 : memref<2500x2500xi32>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}
