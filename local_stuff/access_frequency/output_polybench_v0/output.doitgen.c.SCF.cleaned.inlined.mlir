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
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x140x160xf64>, %arg4: memref<?x160xf64>, %arg5: memref<?xf64>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg2 : i32 to index
    %2 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %2 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg7 = %c0_0 to %0 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c1_3 = arith.constant 1 : index
        scf.for %arg8 = %c0_2 to %1 step %c1_3 {
          memref.store %cst, %arg5[%arg8] : memref<?xf64>
          %c0_6 = arith.constant 0 : index
          %c1_7 = arith.constant 1 : index
          scf.for %arg9 = %c0_6 to %1 step %c1_7 {
            %3 = memref.load %arg3[%arg6, %arg7, %arg9] : memref<?x140x160xf64>
            %4 = memref.load %arg4[%arg9, %arg8] : memref<?x160xf64>
            %5 = arith.mulf %3, %4 : f64
            %6 = memref.load %arg5[%arg8] : memref<?xf64>
            %7 = arith.addf %6, %5 : f64
            memref.store %7, %arg5[%arg8] : memref<?xf64>
          }
        }
        %c0_4 = arith.constant 0 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg8 = %c0_4 to %1 step %c1_5 {
          %3 = memref.load %arg5[%arg8] : memref<?xf64>
          memref.store %3, %arg3[%arg6, %arg7, %arg8] : memref<?x140x160xf64>
        }
      }
    }
    return
  }
  func.func @main() attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 1.600000e+02 : f64
    %c160 = arith.constant 160 : index
    %c140 = arith.constant 140 : index
    %c150 = arith.constant 150 : index
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c160_i32 = arith.constant 160 : i32
    %alloc = memref.alloc() : memref<150x140x160xf64>
    %alloc_1 = memref.alloc() : memref<160xf64>
    %alloc_2 = memref.alloc() : memref<160x160xf64>
    scf.for %arg0 = %c0 to %c150 step %c1 {
      %0 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c140 step %c1 {
        %1 = arith.index_cast %arg1 : index to i32
        scf.for %arg2 = %c0 to %c160 step %c1 {
          %2 = arith.index_cast %arg2 : index to i32
          %3 = arith.muli %0, %1 : i32
          %4 = arith.addi %3, %2 : i32
          %5 = arith.remsi %4, %c160_i32 : i32
          %6 = arith.sitofp %5 : i32 to f64
          %7 = arith.divf %6, %cst : f64
          memref.store %7, %alloc[%arg0, %arg1, %arg2] : memref<150x140x160xf64>
        }
      }
    }
    scf.for %arg0 = %c0 to %c160 step %c1 {
      %0 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c160 step %c1 {
        %1 = arith.index_cast %arg1 : index to i32
        %2 = arith.muli %0, %1 : i32
        %3 = arith.remsi %2, %c160_i32 : i32
        %4 = arith.sitofp %3 : i32 to f64
        %5 = arith.divf %4, %cst : f64
        memref.store %5, %alloc_2[%arg0, %arg1] : memref<160x160xf64>
      }
    }
    %c0_3 = arith.constant 0 : index
    %c150_4 = arith.constant 150 : index
    %c1_5 = arith.constant 1 : index
    scf.for %arg0 = %c0_3 to %c150_4 step %c1_5 {
      %c0_6 = arith.constant 0 : index
      %c140_7 = arith.constant 140 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg1 = %c0_6 to %c140_7 step %c1_8 {
        %c0_9 = arith.constant 0 : index
        %c160_10 = arith.constant 160 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg2 = %c0_9 to %c160_10 step %c1_11 {
          memref.store %cst_0, %alloc_1[%arg2] : memref<160xf64>
          %c0_15 = arith.constant 0 : index
          %c160_16 = arith.constant 160 : index
          %c1_17 = arith.constant 1 : index
          scf.for %arg3 = %c0_15 to %c160_16 step %c1_17 {
            %0 = memref.load %alloc[%arg0, %arg1, %arg3] : memref<150x140x160xf64>
            %1 = memref.load %alloc_2[%arg3, %arg2] : memref<160x160xf64>
            %2 = arith.mulf %0, %1 : f64
            %3 = memref.load %alloc_1[%arg2] : memref<160xf64>
            %4 = arith.addf %3, %2 : f64
            memref.store %4, %alloc_1[%arg2] : memref<160xf64>
          }
        }
        %c0_12 = arith.constant 0 : index
        %c160_13 = arith.constant 160 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg2 = %c0_12 to %c160_13 step %c1_14 {
          %0 = memref.load %alloc_1[%arg2] : memref<160xf64>
          memref.store %0, %alloc[%arg0, %arg1, %arg2] : memref<150x140x160xf64>
        }
      }
    }
    memref.dealloc %alloc : memref<150x140x160xf64>
    memref.dealloc %alloc_1 : memref<160xf64>
    memref.dealloc %alloc_2 : memref<160x160xf64>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}

