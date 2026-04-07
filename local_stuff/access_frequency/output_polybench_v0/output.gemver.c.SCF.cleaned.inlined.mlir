module {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2lf \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("w\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main() attributes {llvm.linkage = #llvm.linkage<external>} {
    %c2000 = arith.constant 2000 : index
    %cst = arith.constant 2.000000e+03 : f64
    %cst_0 = arith.constant 1.500000e+00 : f64
    %cst_1 = arith.constant 1.200000e+00 : f64
    %c1_i32 = arith.constant 1 : i32
    %cst_2 = arith.constant 2.000000e+00 : f64
    %cst_3 = arith.constant 4.000000e+00 : f64
    %cst_4 = arith.constant 6.000000e+00 : f64
    %cst_5 = arith.constant 8.000000e+00 : f64
    %cst_6 = arith.constant 9.000000e+00 : f64
    %cst_7 = arith.constant 0.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c2000_i32 = arith.constant 2000 : i32
    %alloca = memref.alloca() : memref<1xf64>
    %0 = llvm.mlir.undef : f64
    %c0_8 = arith.constant 0 : index
    memref.store %0, %alloca[%c0_8] : memref<1xf64>
    %alloca_9 = memref.alloca() : memref<1xf64>
    %c0_10 = arith.constant 0 : index
    memref.store %0, %alloca_9[%c0_10] : memref<1xf64>
    %alloc = memref.alloc() : memref<2000x2000xf64>
    %alloc_11 = memref.alloc() : memref<2000xf64>
    %alloc_12 = memref.alloc() : memref<2000xf64>
    %alloc_13 = memref.alloc() : memref<2000xf64>
    %alloc_14 = memref.alloc() : memref<2000xf64>
    %alloc_15 = memref.alloc() : memref<2000xf64>
    %alloc_16 = memref.alloc() : memref<2000xf64>
    %alloc_17 = memref.alloc() : memref<2000xf64>
    %alloc_18 = memref.alloc() : memref<2000xf64>
    %c0_19 = arith.constant 0 : index
    memref.store %cst_0, %alloca_9[%c0_19] : memref<1xf64>
    %c0_20 = arith.constant 0 : index
    memref.store %cst_1, %alloca[%c0_20] : memref<1xf64>
    scf.for %arg0 = %c0 to %c2000 step %c1 {
      %3 = arith.index_cast %arg0 : index to i32
      %4 = arith.sitofp %3 : i32 to f64
      memref.store %4, %alloc_11[%arg0] : memref<2000xf64>
      %5 = arith.addi %3, %c1_i32 : i32
      %6 = arith.sitofp %5 : i32 to f64
      %7 = arith.divf %6, %cst : f64
      %8 = arith.divf %7, %cst_2 : f64
      memref.store %8, %alloc_13[%arg0] : memref<2000xf64>
      %9 = arith.divf %7, %cst_3 : f64
      memref.store %9, %alloc_12[%arg0] : memref<2000xf64>
      %10 = arith.divf %7, %cst_4 : f64
      memref.store %10, %alloc_14[%arg0] : memref<2000xf64>
      %11 = arith.divf %7, %cst_5 : f64
      memref.store %11, %alloc_17[%arg0] : memref<2000xf64>
      %12 = arith.divf %7, %cst_6 : f64
      memref.store %12, %alloc_18[%arg0] : memref<2000xf64>
      memref.store %cst_7, %alloc_16[%arg0] : memref<2000xf64>
      memref.store %cst_7, %alloc_15[%arg0] : memref<2000xf64>
      scf.for %arg1 = %c0 to %c2000 step %c1 {
        %13 = arith.index_cast %arg1 : index to i32
        %14 = arith.muli %3, %13 : i32
        %15 = arith.remsi %14, %c2000_i32 : i32
        %16 = arith.sitofp %15 : i32 to f64
        %17 = arith.divf %16, %cst : f64
        memref.store %17, %alloc[%arg0, %arg1] : memref<2000x2000xf64>
      }
    }
    %c0_21 = arith.constant 0 : index
    %1 = memref.load %alloca_9[%c0_21] : memref<1xf64>
    %c0_22 = arith.constant 0 : index
    %2 = memref.load %alloca[%c0_22] : memref<1xf64>
    %c0_23 = arith.constant 0 : index
    %c2000_24 = arith.constant 2000 : index
    %c1_25 = arith.constant 1 : index
    scf.for %arg0 = %c0_23 to %c2000_24 step %c1_25 {
      %c0_35 = arith.constant 0 : index
      %c2000_36 = arith.constant 2000 : index
      %c1_37 = arith.constant 1 : index
      scf.for %arg1 = %c0_35 to %c2000_36 step %c1_37 {
        %3 = memref.load %alloc[%arg0, %arg1] : memref<2000x2000xf64>
        %4 = memref.load %alloc_11[%arg0] : memref<2000xf64>
        %5 = memref.load %alloc_12[%arg1] : memref<2000xf64>
        %6 = arith.mulf %4, %5 : f64
        %7 = arith.addf %3, %6 : f64
        %8 = memref.load %alloc_13[%arg0] : memref<2000xf64>
        %9 = memref.load %alloc_14[%arg1] : memref<2000xf64>
        %10 = arith.mulf %8, %9 : f64
        %11 = arith.addf %7, %10 : f64
        memref.store %11, %alloc[%arg0, %arg1] : memref<2000x2000xf64>
      }
    }
    %c0_26 = arith.constant 0 : index
    %c2000_27 = arith.constant 2000 : index
    %c1_28 = arith.constant 1 : index
    scf.for %arg0 = %c0_26 to %c2000_27 step %c1_28 {
      %c0_35 = arith.constant 0 : index
      %c2000_36 = arith.constant 2000 : index
      %c1_37 = arith.constant 1 : index
      scf.for %arg1 = %c0_35 to %c2000_36 step %c1_37 {
        %3 = memref.load %alloc_16[%arg0] : memref<2000xf64>
        %4 = memref.load %alloc[%arg1, %arg0] : memref<2000x2000xf64>
        %5 = arith.mulf %2, %4 : f64
        %6 = memref.load %alloc_17[%arg1] : memref<2000xf64>
        %7 = arith.mulf %5, %6 : f64
        %8 = arith.addf %3, %7 : f64
        memref.store %8, %alloc_16[%arg0] : memref<2000xf64>
      }
    }
    %c0_29 = arith.constant 0 : index
    %c2000_30 = arith.constant 2000 : index
    %c1_31 = arith.constant 1 : index
    scf.for %arg0 = %c0_29 to %c2000_30 step %c1_31 {
      %3 = memref.load %alloc_16[%arg0] : memref<2000xf64>
      %4 = memref.load %alloc_18[%arg0] : memref<2000xf64>
      %5 = arith.addf %3, %4 : f64
      memref.store %5, %alloc_16[%arg0] : memref<2000xf64>
    }
    %c0_32 = arith.constant 0 : index
    %c2000_33 = arith.constant 2000 : index
    %c1_34 = arith.constant 1 : index
    scf.for %arg0 = %c0_32 to %c2000_33 step %c1_34 {
      %c0_35 = arith.constant 0 : index
      %c2000_36 = arith.constant 2000 : index
      %c1_37 = arith.constant 1 : index
      scf.for %arg1 = %c0_35 to %c2000_36 step %c1_37 {
        %3 = memref.load %alloc_15[%arg0] : memref<2000xf64>
        %4 = memref.load %alloc[%arg0, %arg1] : memref<2000x2000xf64>
        %5 = arith.mulf %1, %4 : f64
        %6 = memref.load %alloc_16[%arg1] : memref<2000xf64>
        %7 = arith.mulf %5, %6 : f64
        %8 = arith.addf %3, %7 : f64
        memref.store %8, %alloc_15[%arg0] : memref<2000xf64>
      }
    }
    memref.dealloc %alloc : memref<2000x2000xf64>
    memref.dealloc %alloc_11 : memref<2000xf64>
    memref.dealloc %alloc_12 : memref<2000xf64>
    memref.dealloc %alloc_13 : memref<2000xf64>
    memref.dealloc %alloc_14 : memref<2000xf64>
    memref.dealloc %alloc_15 : memref<2000xf64>
    memref.dealloc %alloc_16 : memref<2000xf64>
    memref.dealloc %alloc_17 : memref<2000xf64>
    memref.dealloc %alloc_18 : memref<2000xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}

