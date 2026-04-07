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
    %c0_1 = arith.constant 0 : index
    %c2500_2 = arith.constant 2500 : index
    %c1_3 = arith.constant 1 : index
    scf.for %arg0 = %c0_1 to %c2500_2 step %c1_3 {
      %c-1 = arith.constant -1 : index
      %0 = arith.muli %arg0, %c-1 : index
      %c2500_4 = arith.constant 2500 : index
      %1 = arith.addi %0, %c2500_4 : index
      %c2500_5 = arith.constant 2500 : index
      %c1_6 = arith.constant 1 : index
      scf.for %arg1 = %1 to %c2500_5 step %c1_6 {
        %c0_7 = arith.constant 0 : index
        %c-1_8 = arith.constant -1 : index
        %2 = arith.addi %arg1, %c-1_8 : index
        %3 = arith.cmpi sge, %2, %c0_7 : index
        scf.if %3 {
          %c-1_17 = arith.constant -1 : index
          %13 = arith.muli %arg0, %c-1_17 : index
          %c2499 = arith.constant 2499 : index
          %14 = arith.addi %13, %c2499 : index
          %15 = memref.load %alloc_0[%14, %arg1] : memref<2500x2500xi32>
          %c-1_18 = arith.constant -1 : index
          %16 = arith.muli %arg0, %c-1_18 : index
          %c2499_19 = arith.constant 2499 : index
          %17 = arith.addi %16, %c2499_19 : index
          %c-1_20 = arith.constant -1 : index
          %18 = arith.addi %arg1, %c-1_20 : index
          %19 = memref.load %alloc_0[%17, %18] : memref<2500x2500xi32>
          %20 = arith.cmpi sge, %15, %19 : i32
          %21 = scf.if %20 -> (i32) {
            %c-1_23 = arith.constant -1 : index
            %24 = arith.muli %arg0, %c-1_23 : index
            %c2499_24 = arith.constant 2499 : index
            %25 = arith.addi %24, %c2499_24 : index
            %26 = memref.load %alloc_0[%25, %arg1] : memref<2500x2500xi32>
            scf.yield %26 : i32
          } else {
            %c-1_23 = arith.constant -1 : index
            %24 = arith.muli %arg0, %c-1_23 : index
            %c2499_24 = arith.constant 2499 : index
            %25 = arith.addi %24, %c2499_24 : index
            %c-1_25 = arith.constant -1 : index
            %26 = arith.addi %arg1, %c-1_25 : index
            %27 = memref.load %alloc_0[%25, %26] : memref<2500x2500xi32>
            scf.yield %27 : i32
          }
          %c-1_21 = arith.constant -1 : index
          %22 = arith.muli %arg0, %c-1_21 : index
          %c2499_22 = arith.constant 2499 : index
          %23 = arith.addi %22, %c2499_22 : index
          memref.store %21, %alloc_0[%23, %arg1] : memref<2500x2500xi32>
        }
        %c0_9 = arith.constant 0 : index
        %c-1_10 = arith.constant -1 : index
        %4 = arith.addi %arg0, %c-1_10 : index
        %5 = arith.cmpi sge, %4, %c0_9 : index
        scf.if %5 {
          %c-1_17 = arith.constant -1 : index
          %13 = arith.muli %arg0, %c-1_17 : index
          %c2499 = arith.constant 2499 : index
          %14 = arith.addi %13, %c2499 : index
          %15 = memref.load %alloc_0[%14, %arg1] : memref<2500x2500xi32>
          %c-1_18 = arith.constant -1 : index
          %16 = arith.muli %arg0, %c-1_18 : index
          %c2500_19 = arith.constant 2500 : index
          %17 = arith.addi %16, %c2500_19 : index
          %18 = memref.load %alloc_0[%17, %arg1] : memref<2500x2500xi32>
          %19 = arith.cmpi sge, %15, %18 : i32
          %20 = scf.if %19 -> (i32) {
            %c-1_22 = arith.constant -1 : index
            %23 = arith.muli %arg0, %c-1_22 : index
            %c2499_23 = arith.constant 2499 : index
            %24 = arith.addi %23, %c2499_23 : index
            %25 = memref.load %alloc_0[%24, %arg1] : memref<2500x2500xi32>
            scf.yield %25 : i32
          } else {
            %c-1_22 = arith.constant -1 : index
            %23 = arith.muli %arg0, %c-1_22 : index
            %c2500_23 = arith.constant 2500 : index
            %24 = arith.addi %23, %c2500_23 : index
            %25 = memref.load %alloc_0[%24, %arg1] : memref<2500x2500xi32>
            scf.yield %25 : i32
          }
          %c-1_20 = arith.constant -1 : index
          %21 = arith.muli %arg0, %c-1_20 : index
          %c2499_21 = arith.constant 2499 : index
          %22 = arith.addi %21, %c2499_21 : index
          memref.store %20, %alloc_0[%22, %arg1] : memref<2500x2500xi32>
        }
        %c0_11 = arith.constant 0 : index
        %c-1_12 = arith.constant -1 : index
        %6 = arith.addi %arg1, %c-1_12 : index
        %7 = arith.cmpi sge, %6, %c0_11 : index
        %c-1_13 = arith.constant -1 : index
        %8 = arith.addi %arg0, %c-1_13 : index
        %9 = arith.cmpi sge, %8, %c0_11 : index
        %10 = arith.andi %7, %9 : i1
        scf.if %10 {
          %c0_17 = arith.constant 0 : index
          %13 = arith.addi %arg0, %arg1 : index
          %c-2501 = arith.constant -2501 : index
          %14 = arith.addi %13, %c-2501 : index
          %15 = arith.cmpi sge, %14, %c0_17 : index
          scf.if %15 {
            %c-1_18 = arith.constant -1 : index
            %16 = arith.muli %arg0, %c-1_18 : index
            %c2499 = arith.constant 2499 : index
            %17 = arith.addi %16, %c2499 : index
            %18 = memref.load %alloc_0[%17, %arg1] : memref<2500x2500xi32>
            %c-1_19 = arith.constant -1 : index
            %19 = arith.muli %arg0, %c-1_19 : index
            %c2500_20 = arith.constant 2500 : index
            %20 = arith.addi %19, %c2500_20 : index
            %c-1_21 = arith.constant -1 : index
            %21 = arith.addi %arg1, %c-1_21 : index
            %22 = memref.load %alloc_0[%20, %21] : memref<2500x2500xi32>
            %c-1_22 = arith.constant -1 : index
            %23 = arith.muli %arg0, %c-1_22 : index
            %c2499_23 = arith.constant 2499 : index
            %24 = arith.addi %23, %c2499_23 : index
            %25 = memref.load %alloc[%24] : memref<2500xi8>
            %26 = arith.extsi %25 : i8 to i32
            %27 = memref.load %alloc[%arg1] : memref<2500xi8>
            %28 = arith.extsi %27 : i8 to i32
            %29 = arith.addi %26, %28 : i32
            %30 = arith.cmpi eq, %29, %c3_i32 : i32
            %31 = arith.extui %30 : i1 to i32
            %32 = arith.addi %22, %31 : i32
            %33 = arith.cmpi sge, %18, %32 : i32
            %34 = scf.if %33 -> (i32) {
              %c-1_26 = arith.constant -1 : index
              %37 = arith.muli %arg0, %c-1_26 : index
              %c2499_27 = arith.constant 2499 : index
              %38 = arith.addi %37, %c2499_27 : index
              %39 = memref.load %alloc_0[%38, %arg1] : memref<2500x2500xi32>
              scf.yield %39 : i32
            } else {
              %c-1_26 = arith.constant -1 : index
              %37 = arith.muli %arg0, %c-1_26 : index
              %c2500_27 = arith.constant 2500 : index
              %38 = arith.addi %37, %c2500_27 : index
              %c-1_28 = arith.constant -1 : index
              %39 = arith.addi %arg1, %c-1_28 : index
              %40 = memref.load %alloc_0[%38, %39] : memref<2500x2500xi32>
              %c-1_29 = arith.constant -1 : index
              %41 = arith.muli %arg0, %c-1_29 : index
              %c2499_30 = arith.constant 2499 : index
              %42 = arith.addi %41, %c2499_30 : index
              %43 = memref.load %alloc[%42] : memref<2500xi8>
              %44 = arith.extsi %43 : i8 to i32
              %45 = arith.addi %44, %28 : i32
              %46 = arith.cmpi eq, %45, %c3_i32 : i32
              %47 = arith.extui %46 : i1 to i32
              %48 = arith.addi %40, %47 : i32
              scf.yield %48 : i32
            }
            %c-1_24 = arith.constant -1 : index
            %35 = arith.muli %arg0, %c-1_24 : index
            %c2499_25 = arith.constant 2499 : index
            %36 = arith.addi %35, %c2499_25 : index
            memref.store %34, %alloc_0[%36, %arg1] : memref<2500x2500xi32>
          } else {
            %c-1_18 = arith.constant -1 : index
            %16 = arith.muli %arg0, %c-1_18 : index
            %c2499 = arith.constant 2499 : index
            %17 = arith.addi %16, %c2499 : index
            %18 = memref.load %alloc_0[%17, %arg1] : memref<2500x2500xi32>
            %c-1_19 = arith.constant -1 : index
            %19 = arith.muli %arg0, %c-1_19 : index
            %c2500_20 = arith.constant 2500 : index
            %20 = arith.addi %19, %c2500_20 : index
            %c-1_21 = arith.constant -1 : index
            %21 = arith.addi %arg1, %c-1_21 : index
            %22 = memref.load %alloc_0[%20, %21] : memref<2500x2500xi32>
            %23 = arith.cmpi sge, %18, %22 : i32
            %24 = scf.if %23 -> (i32) {
              %c-1_24 = arith.constant -1 : index
              %27 = arith.muli %arg0, %c-1_24 : index
              %c2499_25 = arith.constant 2499 : index
              %28 = arith.addi %27, %c2499_25 : index
              %29 = memref.load %alloc_0[%28, %arg1] : memref<2500x2500xi32>
              scf.yield %29 : i32
            } else {
              %c-1_24 = arith.constant -1 : index
              %27 = arith.muli %arg0, %c-1_24 : index
              %c2500_25 = arith.constant 2500 : index
              %28 = arith.addi %27, %c2500_25 : index
              %c-1_26 = arith.constant -1 : index
              %29 = arith.addi %arg1, %c-1_26 : index
              %30 = memref.load %alloc_0[%28, %29] : memref<2500x2500xi32>
              scf.yield %30 : i32
            }
            %c-1_22 = arith.constant -1 : index
            %25 = arith.muli %arg0, %c-1_22 : index
            %c2499_23 = arith.constant 2499 : index
            %26 = arith.addi %25, %c2499_23 : index
            memref.store %24, %alloc_0[%26, %arg1] : memref<2500x2500xi32>
          }
        }
        %c-1_14 = arith.constant -1 : index
        %11 = arith.muli %arg0, %c-1_14 : index
        %c2500_15 = arith.constant 2500 : index
        %12 = arith.addi %11, %c2500_15 : index
        %c1_16 = arith.constant 1 : index
        scf.for %arg2 = %12 to %arg1 step %c1_16 {
          %c-1_17 = arith.constant -1 : index
          %13 = arith.muli %arg0, %c-1_17 : index
          %c2499 = arith.constant 2499 : index
          %14 = arith.addi %13, %c2499 : index
          %15 = memref.load %alloc_0[%14, %arg1] : memref<2500x2500xi32>
          %c-1_18 = arith.constant -1 : index
          %16 = arith.muli %arg0, %c-1_18 : index
          %c2499_19 = arith.constant 2499 : index
          %17 = arith.addi %16, %c2499_19 : index
          %18 = memref.load %alloc_0[%17, %arg2] : memref<2500x2500xi32>
          %c1_20 = arith.constant 1 : index
          %19 = arith.addi %arg2, %c1_20 : index
          %20 = memref.load %alloc_0[%19, %arg1] : memref<2500x2500xi32>
          %21 = arith.addi %18, %20 : i32
          %22 = arith.cmpi sge, %15, %21 : i32
          %23 = scf.if %22 -> (i32) {
            %c-1_23 = arith.constant -1 : index
            %26 = arith.muli %arg0, %c-1_23 : index
            %c2499_24 = arith.constant 2499 : index
            %27 = arith.addi %26, %c2499_24 : index
            %28 = memref.load %alloc_0[%27, %arg1] : memref<2500x2500xi32>
            scf.yield %28 : i32
          } else {
            %c-1_23 = arith.constant -1 : index
            %26 = arith.muli %arg0, %c-1_23 : index
            %c2499_24 = arith.constant 2499 : index
            %27 = arith.addi %26, %c2499_24 : index
            %28 = memref.load %alloc_0[%27, %arg2] : memref<2500x2500xi32>
            %29 = arith.addi %28, %20 : i32
            scf.yield %29 : i32
          }
          %c-1_21 = arith.constant -1 : index
          %24 = arith.muli %arg0, %c-1_21 : index
          %c2499_22 = arith.constant 2499 : index
          %25 = arith.addi %24, %c2499_22 : index
          memref.store %23, %alloc_0[%25, %arg1] : memref<2500x2500xi32>
        }
      }
    }
    memref.dealloc %alloc : memref<2500xi8>
    memref.dealloc %alloc_0 : memref<2500x2500xi32>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}

