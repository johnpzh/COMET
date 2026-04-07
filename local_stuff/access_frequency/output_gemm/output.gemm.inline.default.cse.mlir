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
    %c0_i32 = arith.constant 0 : i32
    %c42_i32 = arith.constant 42 : i32
    %c1200_i32 = arith.constant 1200 : i32
    %c1100_i32 = arith.constant 1100 : i32
    %c1000_i32 = arith.constant 1000 : i32
    %alloca = memref.alloca() : memref<1xf64>
    %0 = llvm.mlir.undef : f64
    affine.store %0, %alloca[0] : memref<1xf64>
    %alloca_0 = memref.alloca() : memref<1xf64>
    affine.store %0, %alloca_0[0] : memref<1xf64>
    %alloc = memref.alloc() : memref<1000x1100xf64>
    %alloc_1 = memref.alloc() : memref<1000x1200xf64>
    %alloc_2 = memref.alloc() : memref<1200x1100xf64>
    %cast = memref.cast %alloca_0 : memref<1xf64> to memref<?xf64>
    %cast_3 = memref.cast %alloca : memref<1xf64> to memref<?xf64>
    %cast_4 = memref.cast %alloc : memref<1000x1100xf64> to memref<?x1100xf64>
    %cast_5 = memref.cast %alloc_1 : memref<1000x1200xf64> to memref<?x1200xf64>
    %cast_6 = memref.cast %alloc_2 : memref<1200x1100xf64> to memref<?x1100xf64>
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2_i32 = arith.constant 2 : i32
    %c1_i32 = arith.constant 1 : i32
    %cst = arith.constant 1.200000e+00 : f64
    %cst_7 = arith.constant 1.500000e+00 : f64
    affine.store %cst_7, %cast[0] : memref<?xf64>
    affine.store %cst, %cast_3[0] : memref<?xf64>
    %1 = arith.index_cast %c1000_i32 : i32 to index
    scf.for %arg2 = %c0 to %1 step %c1 {
      %7 = arith.index_cast %arg2 : index to i32
      %8 = arith.index_cast %c1100_i32 : i32 to index
      scf.for %arg3 = %c0 to %8 step %c1 {
        %9 = arith.index_cast %arg3 : index to i32
        %10 = arith.muli %7, %9 : i32
        %11 = arith.addi %10, %c1_i32 : i32
        %12 = arith.remsi %11, %c1000_i32 : i32
        %13 = arith.sitofp %12 : i32 to f64
        %14 = arith.sitofp %c1000_i32 : i32 to f64
        %15 = arith.divf %13, %14 : f64
        memref.store %15, %cast_4[%arg2, %arg3] : memref<?x1100xf64>
      }
    }
    scf.for %arg2 = %c0 to %1 step %c1 {
      %7 = arith.index_cast %arg2 : index to i32
      %8 = arith.index_cast %c1200_i32 : i32 to index
      scf.for %arg3 = %c0 to %8 step %c1 {
        %9 = arith.index_cast %arg3 : index to i32
        %10 = arith.addi %9, %c1_i32 : i32
        %11 = arith.muli %7, %10 : i32
        %12 = arith.remsi %11, %c1200_i32 : i32
        %13 = arith.sitofp %12 : i32 to f64
        %14 = arith.sitofp %c1200_i32 : i32 to f64
        %15 = arith.divf %13, %14 : f64
        memref.store %15, %cast_5[%arg2, %arg3] : memref<?x1200xf64>
      }
    }
    %2 = arith.index_cast %c1200_i32 : i32 to index
    scf.for %arg2 = %c0 to %2 step %c1 {
      %7 = arith.index_cast %arg2 : index to i32
      %8 = arith.index_cast %c1100_i32 : i32 to index
      scf.for %arg3 = %c0 to %8 step %c1 {
        %9 = arith.index_cast %arg3 : index to i32
        %10 = arith.addi %9, %c2_i32 : i32
        %11 = arith.muli %7, %10 : i32
        %12 = arith.remsi %11, %c1100_i32 : i32
        %13 = arith.sitofp %12 : i32 to f64
        %14 = arith.sitofp %c1100_i32 : i32 to f64
        %15 = arith.divf %13, %14 : f64
        memref.store %15, %cast_6[%arg2, %arg3] : memref<?x1100xf64>
      }
    }
    %3 = affine.load %alloca_0[0] : memref<1xf64>
    %4 = affine.load %alloca[0] : memref<1xf64>
    %5 = arith.index_cast %c1100_i32 : i32 to index
    affine.for %arg2 = 0 to %1 {
      affine.for %arg3 = 0 to %5 {
        %7 = affine.load %cast_4[%arg2, %arg3] : memref<?x1100xf64>
        %8 = arith.mulf %7, %4 : f64
        affine.store %8, %cast_4[%arg2, %arg3] : memref<?x1100xf64>
      }
      affine.for %arg3 = 0 to %2 {
        affine.for %arg4 = 0 to %5 {
          %7 = affine.load %cast_5[%arg2, %arg3] : memref<?x1200xf64>
          %8 = arith.mulf %3, %7 : f64
          %9 = affine.load %cast_6[%arg3, %arg4] : memref<?x1100xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = affine.load %cast_4[%arg2, %arg4] : memref<?x1100xf64>
          %12 = arith.addf %11, %10 : f64
          affine.store %12, %cast_4[%arg2, %arg4] : memref<?x1100xf64>
        }
      }
    }
    %6 = arith.cmpi sgt, %arg0, %c42_i32 : i32
    scf.if %6 {
      %7 = affine.load %arg1[0] : memref<?xmemref<?xi8>>
      %8 = llvm.mlir.addressof @str0 : !llvm.ptr
      %9 = "polygeist.pointer2memref"(%8) : (!llvm.ptr) -> memref<?xi8>
      %10 = func.call @strcmp(%7, %9) : (memref<?xi8>, memref<?xi8>) -> i32
    }
    memref.dealloc %alloc : memref<1000x1100xf64>
    memref.dealloc %alloc_1 : memref<1000x1200xf64>
    memref.dealloc %alloc_2 : memref<1200x1100xf64>
    return %c0_i32 : i32
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}

