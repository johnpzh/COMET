module {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%d \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("path\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main() attributes {llvm.linkage = #llvm.linkage<external>} {
    %c2800 = arith.constant 2800 : index
    %c0_i32 = arith.constant 0 : i32
    %c7_i32 = arith.constant 7 : i32
    %c1_i32 = arith.constant 1 : i32
    %c13_i32 = arith.constant 13 : i32
    %c11_i32 = arith.constant 11 : i32
    %c999_i32 = arith.constant 999 : i32
    %true = arith.constant true
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<2800x2800xi32>
    scf.for %arg0 = %c0 to %c2800 step %c1 {
      %0 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c2800 step %c1 {
        %1 = arith.index_cast %arg1 : index to i32
        %2 = arith.muli %0, %1 : i32
        %3 = arith.remsi %2, %c7_i32 : i32
        %4 = arith.addi %3, %c1_i32 : i32
        memref.store %4, %alloc[%arg0, %arg1] : memref<2800x2800xi32>
        %5 = arith.addi %0, %1 : i32
        %6 = arith.remsi %5, %c13_i32 : i32
        %7 = arith.cmpi eq, %6, %c0_i32 : i32
        %8 = scf.if %7 -> (i1) {
          scf.yield %true : i1
        } else {
          %10 = arith.remsi %5, %c7_i32 : i32
          %11 = arith.cmpi eq, %10, %c0_i32 : i32
          scf.yield %11 : i1
        }
        %9 = scf.if %8 -> (i1) {
          scf.yield %true : i1
        } else {
          %10 = arith.remsi %5, %c11_i32 : i32
          %11 = arith.cmpi eq, %10, %c0_i32 : i32
          scf.yield %11 : i1
        }
        scf.if %9 {
          memref.store %c999_i32, %alloc[%arg0, %arg1] : memref<2800x2800xi32>
        }
      }
    }
    %c0_0 = arith.constant 0 : index
    %c2800_1 = arith.constant 2800 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg0 = %c0_0 to %c2800_1 step %c1_2 {
      %c0_3 = arith.constant 0 : index
      %c2800_4 = arith.constant 2800 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg1 = %c0_3 to %c2800_4 step %c1_5 {
        %c0_6 = arith.constant 0 : index
        %c2800_7 = arith.constant 2800 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg2 = %c0_6 to %c2800_7 step %c1_8 {
          %0 = memref.load %alloc[%arg1, %arg2] : memref<2800x2800xi32>
          %1 = memref.load %alloc[%arg1, %arg0] : memref<2800x2800xi32>
          %2 = memref.load %alloc[%arg0, %arg2] : memref<2800x2800xi32>
          %3 = arith.addi %1, %2 : i32
          %4 = arith.cmpi slt, %0, %3 : i32
          %5 = arith.select %4, %0, %3 : i32
          memref.store %5, %alloc[%arg1, %arg2] : memref<2800x2800xi32>
        }
      }
    }
    memref.dealloc %alloc : memref<2800x2800xi32>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}

