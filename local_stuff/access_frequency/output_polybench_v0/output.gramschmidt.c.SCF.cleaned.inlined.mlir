module {
  llvm.mlir.global internal constant @str8("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str7("Q\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2lf \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("R\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main() attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 1.000000e+03 : f64
    %c1200 = arith.constant 1200 : index
    %c1000 = arith.constant 1000 : index
    %cst_0 = arith.constant 1.000000e+02 : f64
    %cst_1 = arith.constant 1.000000e+01 : f64
    %cst_2 = arith.constant 0.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c1000_i32 = arith.constant 1000 : i32
    %alloc = memref.alloc() : memref<1000x1200xf64>
    %alloc_3 = memref.alloc() : memref<1200x1200xf64>
    %alloc_4 = memref.alloc() : memref<1000x1200xf64>
    scf.for %arg0 = %c0 to %c1000 step %c1 {
      %1 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c1200 step %c1 {
        %2 = arith.index_cast %arg1 : index to i32
        %3 = arith.muli %1, %2 : i32
        %4 = arith.remsi %3, %c1000_i32 : i32
        %5 = arith.sitofp %4 : i32 to f64
        %6 = arith.divf %5, %cst : f64
        %7 = arith.mulf %6, %cst_0 : f64
        %8 = arith.addf %7, %cst_1 : f64
        memref.store %8, %alloc[%arg0, %arg1] : memref<1000x1200xf64>
        memref.store %cst_2, %alloc_4[%arg0, %arg1] : memref<1000x1200xf64>
      }
    }
    scf.for %arg0 = %c0 to %c1200 step %c1 {
      scf.for %arg1 = %c0 to %c1200 step %c1 {
        memref.store %cst_2, %alloc_3[%arg0, %arg1] : memref<1200x1200xf64>
      }
    }
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    memref.store %0, %alloca[] : memref<f64>
    %c0_5 = arith.constant 0 : index
    %c1200_6 = arith.constant 1200 : index
    %c1_7 = arith.constant 1 : index
    scf.for %arg0 = %c0_5 to %c1200_6 step %c1_7 {
      memref.store %cst_2, %alloca[] : memref<f64>
      %c0_8 = arith.constant 0 : index
      %c1000_9 = arith.constant 1000 : index
      %c1_10 = arith.constant 1 : index
      scf.for %arg1 = %c0_8 to %c1000_9 step %c1_10 {
        %4 = memref.load %alloc[%arg1, %arg0] : memref<1000x1200xf64>
        %5 = arith.mulf %4, %4 : f64
        %6 = memref.load %alloca[] : memref<f64>
        %7 = arith.addf %6, %5 : f64
        memref.store %7, %alloca[] : memref<f64>
      }
      %1 = memref.load %alloca[] : memref<f64>
      %2 = math.sqrt %1 : f64
      memref.store %2, %alloc_3[%arg0, %arg0] : memref<1200x1200xf64>
      %c0_11 = arith.constant 0 : index
      %c1000_12 = arith.constant 1000 : index
      %c1_13 = arith.constant 1 : index
      scf.for %arg1 = %c0_11 to %c1000_12 step %c1_13 {
        %4 = memref.load %alloc[%arg1, %arg0] : memref<1000x1200xf64>
        %5 = memref.load %alloc_3[%arg0, %arg0] : memref<1200x1200xf64>
        %6 = arith.divf %4, %5 : f64
        memref.store %6, %alloc_4[%arg1, %arg0] : memref<1000x1200xf64>
      }
      %c1_14 = arith.constant 1 : index
      %3 = arith.addi %arg0, %c1_14 : index
      %c1200_15 = arith.constant 1200 : index
      %c1_16 = arith.constant 1 : index
      scf.for %arg1 = %3 to %c1200_15 step %c1_16 {
        memref.store %cst_2, %alloc_3[%arg0, %arg1] : memref<1200x1200xf64>
        %c0_17 = arith.constant 0 : index
        %c1000_18 = arith.constant 1000 : index
        %c1_19 = arith.constant 1 : index
        scf.for %arg2 = %c0_17 to %c1000_18 step %c1_19 {
          %4 = memref.load %alloc_4[%arg2, %arg0] : memref<1000x1200xf64>
          %5 = memref.load %alloc[%arg2, %arg1] : memref<1000x1200xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = memref.load %alloc_3[%arg0, %arg1] : memref<1200x1200xf64>
          %8 = arith.addf %7, %6 : f64
          memref.store %8, %alloc_3[%arg0, %arg1] : memref<1200x1200xf64>
        }
        %c0_20 = arith.constant 0 : index
        %c1000_21 = arith.constant 1000 : index
        %c1_22 = arith.constant 1 : index
        scf.for %arg2 = %c0_20 to %c1000_21 step %c1_22 {
          %4 = memref.load %alloc[%arg2, %arg1] : memref<1000x1200xf64>
          %5 = memref.load %alloc_4[%arg2, %arg0] : memref<1000x1200xf64>
          %6 = memref.load %alloc_3[%arg0, %arg1] : memref<1200x1200xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = arith.subf %4, %7 : f64
          memref.store %8, %alloc[%arg2, %arg1] : memref<1000x1200xf64>
        }
      }
    }
    memref.dealloc %alloc : memref<1000x1200xf64>
    memref.dealloc %alloc_3 : memref<1200x1200xf64>
    memref.dealloc %alloc_4 : memref<1000x1200xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}

