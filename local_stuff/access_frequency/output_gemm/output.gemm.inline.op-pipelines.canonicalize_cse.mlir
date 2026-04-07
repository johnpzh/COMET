module {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2lf \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("C\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main(%arg0: i32, %arg1: memref<?xmemref<?xi8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 1.100000e+03 : f64
    %cst_0 = arith.constant 1.200000e+03 : f64
    %c1200 = arith.constant 1200 : index
    %cst_1 = arith.constant 1.000000e+03 : f64
    %c1100 = arith.constant 1100 : index
    %c1000 = arith.constant 1000 : index
    %cst_2 = arith.constant 1.500000e+00 : f64
    %cst_3 = arith.constant 1.200000e+00 : f64
    %c1_i32 = arith.constant 1 : i32
    %c2_i32 = arith.constant 2 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c0_i32 = arith.constant 0 : i32
    %c42_i32 = arith.constant 42 : i32
    %c1200_i32 = arith.constant 1200 : i32
    %c1100_i32 = arith.constant 1100 : i32
    %c1000_i32 = arith.constant 1000 : i32
    %alloca = memref.alloca() : memref<1xf64>
    %0 = llvm.mlir.undef : f64
    affine.store %0, %alloca[0] : memref<1xf64>
    %alloca_4 = memref.alloca() : memref<1xf64>
    affine.store %0, %alloca_4[0] : memref<1xf64>
    %alloc = memref.alloc() : memref<1000x1100xf64>
    %alloc_5 = memref.alloc() : memref<1000x1200xf64>
    %alloc_6 = memref.alloc() : memref<1200x1100xf64>
    affine.store %cst_2, %alloca_4[0] : memref<1xf64>
    affine.store %cst_3, %alloca[0] : memref<1xf64>
    scf.for %arg2 = %c0 to %c1000 step %c1 {
      %4 = arith.index_cast %arg2 : index to i32
      scf.for %arg3 = %c0 to %c1100 step %c1 {
        %5 = arith.index_cast %arg3 : index to i32
        %6 = arith.muli %4, %5 : i32
        %7 = arith.addi %6, %c1_i32 : i32
        %8 = arith.remsi %7, %c1000_i32 : i32
        %9 = arith.sitofp %8 : i32 to f64
        %10 = arith.divf %9, %cst_1 : f64
        memref.store %10, %alloc[%arg2, %arg3] : memref<1000x1100xf64>
      }
    }
    scf.for %arg2 = %c0 to %c1000 step %c1 {
      %4 = arith.index_cast %arg2 : index to i32
      scf.for %arg3 = %c0 to %c1200 step %c1 {
        %5 = arith.index_cast %arg3 : index to i32
        %6 = arith.addi %5, %c1_i32 : i32
        %7 = arith.muli %4, %6 : i32
        %8 = arith.remsi %7, %c1200_i32 : i32
        %9 = arith.sitofp %8 : i32 to f64
        %10 = arith.divf %9, %cst_0 : f64
        memref.store %10, %alloc_5[%arg2, %arg3] : memref<1000x1200xf64>
      }
    }
    scf.for %arg2 = %c0 to %c1200 step %c1 {
      %4 = arith.index_cast %arg2 : index to i32
      scf.for %arg3 = %c0 to %c1100 step %c1 {
        %5 = arith.index_cast %arg3 : index to i32
        %6 = arith.addi %5, %c2_i32 : i32
        %7 = arith.muli %4, %6 : i32
        %8 = arith.remsi %7, %c1100_i32 : i32
        %9 = arith.sitofp %8 : i32 to f64
        %10 = arith.divf %9, %cst : f64
        memref.store %10, %alloc_6[%arg2, %arg3] : memref<1200x1100xf64>
      }
    }
    %1 = affine.load %alloca_4[0] : memref<1xf64>
    %2 = affine.load %alloca[0] : memref<1xf64>
    affine.for %arg2 = 0 to 1000 {
      affine.for %arg3 = 0 to 1100 {
        %4 = affine.load %alloc[%arg2, %arg3] : memref<1000x1100xf64>
        %5 = arith.mulf %4, %2 : f64
        affine.store %5, %alloc[%arg2, %arg3] : memref<1000x1100xf64>
      }
      affine.for %arg3 = 0 to 1200 {
        affine.for %arg4 = 0 to 1100 {
          %4 = affine.load %alloc_5[%arg2, %arg3] : memref<1000x1200xf64>
          %5 = arith.mulf %1, %4 : f64
          %6 = affine.load %alloc_6[%arg3, %arg4] : memref<1200x1100xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = affine.load %alloc[%arg2, %arg4] : memref<1000x1100xf64>
          %9 = arith.addf %8, %7 : f64
          affine.store %9, %alloc[%arg2, %arg4] : memref<1000x1100xf64>
        }
      }
    }
    %3 = arith.cmpi sgt, %arg0, %c42_i32 : i32
    scf.if %3 {
      %4 = affine.load %arg1[0] : memref<?xmemref<?xi8>>
      %5 = llvm.mlir.addressof @str0 : !llvm.ptr
      %6 = "polygeist.pointer2memref"(%5) : (!llvm.ptr) -> memref<?xi8>
      %7 = func.call @strcmp(%4, %6) : (memref<?xi8>, memref<?xi8>) -> i32
    }
    memref.dealloc %alloc : memref<1000x1100xf64>
    memref.dealloc %alloc_5 : memref<1000x1200xf64>
    memref.dealloc %alloc_6 : memref<1200x1100xf64>
    return %c0_i32 : i32
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}

