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
    %cst = arith.constant 2.000000e+03 : f64
    %c2000 = arith.constant 2000 : index
    %c0_i32 = arith.constant 0 : i32
    %cst_0 = arith.constant 1.000000e+00 : f64
    %c1_i32 = arith.constant 1 : i32
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c2000_i32 = arith.constant 2000 : i32
    %alloc = memref.alloc() : memref<2000x2000xf64>
    scf.for %arg0 = %c0 to %c2000 step %c1 {
      %0 = arith.index_cast %arg0 : index to i32
      %1 = arith.addi %0, %c1_i32 : i32
      %2 = arith.index_cast %1 : i32 to index
      scf.for %arg1 = %c0 to %2 step %c1 {
        %3 = arith.index_cast %arg1 : index to i32
        %4 = arith.subi %c0_i32, %3 : i32
        %5 = arith.remsi %4, %c2000_i32 : i32
        %6 = arith.sitofp %5 : i32 to f64
        %7 = arith.divf %6, %cst : f64
        %8 = arith.addf %7, %cst_0 : f64
        memref.store %8, %alloc[%arg0, %arg1] : memref<2000x2000xf64>
      }
      scf.for %arg1 = %2 to %c2000 step %c1 {
        memref.store %cst_1, %alloc[%arg0, %arg1] : memref<2000x2000xf64>
      }
      memref.store %cst_0, %alloc[%arg0, %arg0] : memref<2000x2000xf64>
    }
    %alloc_2 = memref.alloc() : memref<2000x2000xf64>
    scf.for %arg0 = %c0 to %c2000 step %c1 {
      scf.for %arg1 = %c0 to %c2000 step %c1 {
        memref.store %cst_1, %alloc_2[%arg0, %arg1] : memref<2000x2000xf64>
      }
    }
    scf.for %arg0 = %c0 to %c2000 step %c1 {
      scf.for %arg1 = %c0 to %c2000 step %c1 {
        scf.for %arg2 = %c0 to %c2000 step %c1 {
          %0 = memref.load %alloc[%arg1, %arg0] : memref<2000x2000xf64>
          %1 = memref.load %alloc[%arg2, %arg0] : memref<2000x2000xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %alloc_2[%arg1, %arg2] : memref<2000x2000xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %alloc_2[%arg1, %arg2] : memref<2000x2000xf64>
        }
      }
    }
    scf.for %arg0 = %c0 to %c2000 step %c1 {
      scf.for %arg1 = %c0 to %c2000 step %c1 {
        %0 = memref.load %alloc_2[%arg0, %arg1] : memref<2000x2000xf64>
        memref.store %0, %alloc[%arg0, %arg1] : memref<2000x2000xf64>
      }
    }
    memref.dealloc %alloc_2 : memref<2000x2000xf64>
    %c0_3 = arith.constant 0 : index
    %c2000_4 = arith.constant 2000 : index
    %c1_5 = arith.constant 1 : index
    scf.for %arg0 = %c0_3 to %c2000_4 step %c1_5 {
      %c0_6 = arith.constant 0 : index
      %c1_7 = arith.constant 1 : index
      scf.for %arg1 = %c0_6 to %arg0 step %c1_7 {
        %c0_10 = arith.constant 0 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg2 = %c0_10 to %arg1 step %c1_11 {
          %5 = memref.load %alloc[%arg0, %arg2] : memref<2000x2000xf64>
          %6 = memref.load %alloc[%arg1, %arg2] : memref<2000x2000xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = memref.load %alloc[%arg0, %arg1] : memref<2000x2000xf64>
          %9 = arith.subf %8, %7 : f64
          memref.store %9, %alloc[%arg0, %arg1] : memref<2000x2000xf64>
        }
        %2 = memref.load %alloc[%arg1, %arg1] : memref<2000x2000xf64>
        %3 = memref.load %alloc[%arg0, %arg1] : memref<2000x2000xf64>
        %4 = arith.divf %3, %2 : f64
        memref.store %4, %alloc[%arg0, %arg1] : memref<2000x2000xf64>
      }
      %c0_8 = arith.constant 0 : index
      %c1_9 = arith.constant 1 : index
      scf.for %arg1 = %c0_8 to %arg0 step %c1_9 {
        %2 = memref.load %alloc[%arg0, %arg1] : memref<2000x2000xf64>
        %3 = arith.mulf %2, %2 : f64
        %4 = memref.load %alloc[%arg0, %arg0] : memref<2000x2000xf64>
        %5 = arith.subf %4, %3 : f64
        memref.store %5, %alloc[%arg0, %arg0] : memref<2000x2000xf64>
      }
      %0 = memref.load %alloc[%arg0, %arg0] : memref<2000x2000xf64>
      %1 = math.sqrt %0 : f64
      memref.store %1, %alloc[%arg0, %arg0] : memref<2000x2000xf64>
    }
    memref.dealloc %alloc : memref<2000x2000xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}