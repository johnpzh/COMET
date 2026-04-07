module {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2lf \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("G\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main() attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 5.000000e+03 : f64
    %c1100 = arith.constant 1100 : index
    %cst_0 = arith.constant 5.500000e+03 : f64
    %c1200 = arith.constant 1200 : index
    %cst_1 = arith.constant 4.500000e+03 : f64
    %c900 = arith.constant 900 : index
    %cst_2 = arith.constant 4.000000e+03 : f64
    %c1000 = arith.constant 1000 : index
    %c800 = arith.constant 800 : index
    %cst_3 = arith.constant 0.000000e+00 : f64
    %c1_i32 = arith.constant 1 : i32
    %c2_i32 = arith.constant 2 : i32
    %c3_i32 = arith.constant 3 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c1100_i32 = arith.constant 1100 : i32
    %c1000_i32 = arith.constant 1000 : i32
    %c900_i32 = arith.constant 900 : i32
    %c800_i32 = arith.constant 800 : i32
    %alloc = memref.alloc() : memref<800x900xf64>
    %alloc_4 = memref.alloc() : memref<800x1000xf64>
    %alloc_5 = memref.alloc() : memref<1000x900xf64>
    %alloc_6 = memref.alloc() : memref<900x1100xf64>
    %alloc_7 = memref.alloc() : memref<900x1200xf64>
    %alloc_8 = memref.alloc() : memref<1200x1100xf64>
    %alloc_9 = memref.alloc() : memref<800x1100xf64>
    scf.for %arg0 = %c0 to %c800 step %c1 {
      %0 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c1000 step %c1 {
        %1 = arith.index_cast %arg1 : index to i32
        %2 = arith.muli %0, %1 : i32
        %3 = arith.addi %2, %c1_i32 : i32
        %4 = arith.remsi %3, %c800_i32 : i32
        %5 = arith.sitofp %4 : i32 to f64
        %6 = arith.divf %5, %cst_2 : f64
        memref.store %6, %alloc_4[%arg0, %arg1] : memref<800x1000xf64>
      }
    }
    scf.for %arg0 = %c0 to %c1000 step %c1 {
      %0 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c900 step %c1 {
        %1 = arith.index_cast %arg1 : index to i32
        %2 = arith.addi %1, %c1_i32 : i32
        %3 = arith.muli %0, %2 : i32
        %4 = arith.addi %3, %c2_i32 : i32
        %5 = arith.remsi %4, %c900_i32 : i32
        %6 = arith.sitofp %5 : i32 to f64
        %7 = arith.divf %6, %cst_1 : f64
        memref.store %7, %alloc_5[%arg0, %arg1] : memref<1000x900xf64>
      }
    }
    scf.for %arg0 = %c0 to %c900 step %c1 {
      %0 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c1200 step %c1 {
        %1 = arith.index_cast %arg1 : index to i32
        %2 = arith.addi %1, %c3_i32 : i32
        %3 = arith.muli %0, %2 : i32
        %4 = arith.remsi %3, %c1100_i32 : i32
        %5 = arith.sitofp %4 : i32 to f64
        %6 = arith.divf %5, %cst_0 : f64
        memref.store %6, %alloc_7[%arg0, %arg1] : memref<900x1200xf64>
      }
    }
    scf.for %arg0 = %c0 to %c1200 step %c1 {
      %0 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c1100 step %c1 {
        %1 = arith.index_cast %arg1 : index to i32
        %2 = arith.addi %1, %c2_i32 : i32
        %3 = arith.muli %0, %2 : i32
        %4 = arith.addi %3, %c2_i32 : i32
        %5 = arith.remsi %4, %c1000_i32 : i32
        %6 = arith.sitofp %5 : i32 to f64
        %7 = arith.divf %6, %cst : f64
        memref.store %7, %alloc_8[%arg0, %arg1] : memref<1200x1100xf64>
      }
    }
    %c0_10 = arith.constant 0 : index
    %c800_11 = arith.constant 800 : index
    %c1_12 = arith.constant 1 : index
    scf.for %arg0 = %c0_10 to %c800_11 step %c1_12 {
      %c0_19 = arith.constant 0 : index
      %c900_20 = arith.constant 900 : index
      %c1_21 = arith.constant 1 : index
      scf.for %arg1 = %c0_19 to %c900_20 step %c1_21 {
        memref.store %cst_3, %alloc[%arg0, %arg1] : memref<800x900xf64>
        %c0_22 = arith.constant 0 : index
        %c1000_23 = arith.constant 1000 : index
        %c1_24 = arith.constant 1 : index
        scf.for %arg2 = %c0_22 to %c1000_23 step %c1_24 {
          %0 = memref.load %alloc_4[%arg0, %arg2] : memref<800x1000xf64>
          %1 = memref.load %alloc_5[%arg2, %arg1] : memref<1000x900xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %alloc[%arg0, %arg1] : memref<800x900xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %alloc[%arg0, %arg1] : memref<800x900xf64>
        }
      }
    }
    %c0_13 = arith.constant 0 : index
    %c900_14 = arith.constant 900 : index
    %c1_15 = arith.constant 1 : index
    scf.for %arg0 = %c0_13 to %c900_14 step %c1_15 {
      %c0_19 = arith.constant 0 : index
      %c1100_20 = arith.constant 1100 : index
      %c1_21 = arith.constant 1 : index
      scf.for %arg1 = %c0_19 to %c1100_20 step %c1_21 {
        memref.store %cst_3, %alloc_6[%arg0, %arg1] : memref<900x1100xf64>
        %c0_22 = arith.constant 0 : index
        %c1200_23 = arith.constant 1200 : index
        %c1_24 = arith.constant 1 : index
        scf.for %arg2 = %c0_22 to %c1200_23 step %c1_24 {
          %0 = memref.load %alloc_7[%arg0, %arg2] : memref<900x1200xf64>
          %1 = memref.load %alloc_8[%arg2, %arg1] : memref<1200x1100xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %alloc_6[%arg0, %arg1] : memref<900x1100xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %alloc_6[%arg0, %arg1] : memref<900x1100xf64>
        }
      }
    }
    %c0_16 = arith.constant 0 : index
    %c800_17 = arith.constant 800 : index
    %c1_18 = arith.constant 1 : index
    scf.for %arg0 = %c0_16 to %c800_17 step %c1_18 {
      %c0_19 = arith.constant 0 : index
      %c1100_20 = arith.constant 1100 : index
      %c1_21 = arith.constant 1 : index
      scf.for %arg1 = %c0_19 to %c1100_20 step %c1_21 {
        memref.store %cst_3, %alloc_9[%arg0, %arg1] : memref<800x1100xf64>
        %c0_22 = arith.constant 0 : index
        %c900_23 = arith.constant 900 : index
        %c1_24 = arith.constant 1 : index
        scf.for %arg2 = %c0_22 to %c900_23 step %c1_24 {
          %0 = memref.load %alloc[%arg0, %arg2] : memref<800x900xf64>
          %1 = memref.load %alloc_6[%arg2, %arg1] : memref<900x1100xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %alloc_9[%arg0, %arg1] : memref<800x1100xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %alloc_9[%arg0, %arg1] : memref<800x1100xf64>
        }
      }
    }
    memref.dealloc %alloc : memref<800x900xf64>
    memref.dealloc %alloc_4 : memref<800x1000xf64>
    memref.dealloc %alloc_5 : memref<1000x900xf64>
    memref.dealloc %alloc_6 : memref<900x1100xf64>
    memref.dealloc %alloc_7 : memref<900x1200xf64>
    memref.dealloc %alloc_8 : memref<1200x1100xf64>
    memref.dealloc %alloc_9 : memref<800x1100xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}

