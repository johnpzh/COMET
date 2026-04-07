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
    %c0_6 = arith.constant 0 : index
    memref.store %0, %alloca[%c0_6] : memref<1xf64>
    %alloca_7 = memref.alloca() : memref<1xf64>
    %c0_8 = arith.constant 0 : index
    memref.store %0, %alloca_7[%c0_8] : memref<1xf64>
    %alloc = memref.alloc() : memref<800x900xf64>
    %alloc_9 = memref.alloc() : memref<800x1100xf64>
    %alloc_10 = memref.alloc() : memref<1100x900xf64>
    %alloc_11 = memref.alloc() : memref<900x1200xf64>
    %alloc_12 = memref.alloc() : memref<800x1200xf64>
    %c0_13 = arith.constant 0 : index
    memref.store %cst_4, %alloca_7[%c0_13] : memref<1xf64>
    %c0_14 = arith.constant 0 : index
    memref.store %cst_5, %alloca[%c0_14] : memref<1xf64>
    scf.for %arg0 = %c0 to %c800 step %c1 {
      %3 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c1100 step %c1 {
        %4 = arith.index_cast %arg1 : index to i32
        %5 = arith.muli %3, %4 : i32
        %6 = arith.addi %5, %c1_i32 : i32
        %7 = arith.remsi %6, %c800_i32 : i32
        %8 = arith.sitofp %7 : i32 to f64
        %9 = arith.divf %8, %cst_2 : f64
        memref.store %9, %alloc_9[%arg0, %arg1] : memref<800x1100xf64>
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
        memref.store %9, %alloc_10[%arg0, %arg1] : memref<1100x900xf64>
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
        memref.store %10, %alloc_11[%arg0, %arg1] : memref<900x1200xf64>
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
        memref.store %9, %alloc_12[%arg0, %arg1] : memref<800x1200xf64>
      }
    }
    %c0_15 = arith.constant 0 : index
    %1 = memref.load %alloca_7[%c0_15] : memref<1xf64>
    %c0_16 = arith.constant 0 : index
    %2 = memref.load %alloca[%c0_16] : memref<1xf64>
    %c0_17 = arith.constant 0 : index
    %c800_18 = arith.constant 800 : index
    %c1_19 = arith.constant 1 : index
    scf.for %arg0 = %c0_17 to %c800_18 step %c1_19 {
      %c0_23 = arith.constant 0 : index
      %c900_24 = arith.constant 900 : index
      %c1_25 = arith.constant 1 : index
      scf.for %arg1 = %c0_23 to %c900_24 step %c1_25 {
        memref.store %cst_3, %alloc[%arg0, %arg1] : memref<800x900xf64>
        %c0_26 = arith.constant 0 : index
        %c1100_27 = arith.constant 1100 : index
        %c1_28 = arith.constant 1 : index
        scf.for %arg2 = %c0_26 to %c1100_27 step %c1_28 {
          %3 = memref.load %alloc_9[%arg0, %arg2] : memref<800x1100xf64>
          %4 = arith.mulf %1, %3 : f64
          %5 = memref.load %alloc_10[%arg2, %arg1] : memref<1100x900xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = memref.load %alloc[%arg0, %arg1] : memref<800x900xf64>
          %8 = arith.addf %7, %6 : f64
          memref.store %8, %alloc[%arg0, %arg1] : memref<800x900xf64>
        }
      }
    }
    %c0_20 = arith.constant 0 : index
    %c800_21 = arith.constant 800 : index
    %c1_22 = arith.constant 1 : index
    scf.for %arg0 = %c0_20 to %c800_21 step %c1_22 {
      %c0_23 = arith.constant 0 : index
      %c1200_24 = arith.constant 1200 : index
      %c1_25 = arith.constant 1 : index
      scf.for %arg1 = %c0_23 to %c1200_24 step %c1_25 {
        %3 = memref.load %alloc_12[%arg0, %arg1] : memref<800x1200xf64>
        %4 = arith.mulf %3, %2 : f64
        memref.store %4, %alloc_12[%arg0, %arg1] : memref<800x1200xf64>
        %c0_26 = arith.constant 0 : index
        %c900_27 = arith.constant 900 : index
        %c1_28 = arith.constant 1 : index
        scf.for %arg2 = %c0_26 to %c900_27 step %c1_28 {
          %5 = memref.load %alloc[%arg0, %arg2] : memref<800x900xf64>
          %6 = memref.load %alloc_11[%arg2, %arg1] : memref<900x1200xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = memref.load %alloc_12[%arg0, %arg1] : memref<800x1200xf64>
          %9 = arith.addf %8, %7 : f64
          memref.store %9, %alloc_12[%arg0, %arg1] : memref<800x1200xf64>
        }
      }
    }
    memref.dealloc %alloc : memref<800x900xf64>
    memref.dealloc %alloc_9 : memref<800x1100xf64>
    memref.dealloc %alloc_10 : memref<1100x900xf64>
    memref.dealloc %alloc_11 : memref<900x1200xf64>
    memref.dealloc %alloc_12 : memref<800x1200xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}

