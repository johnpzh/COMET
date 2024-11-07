#map = affine_map<()[s0] -> (s0 - 1)>
module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str9("hz\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str8("ey\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2lf \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("ex\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @stderr() {addr_space = 0 : i32} : memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main(%arg0: i32, %arg1: memref<?xmemref<?xi8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0_i32 = arith.constant 0 : i32
    %c42_i32 = arith.constant 42 : i32
    %c1200_i32 = arith.constant 1200 : i32
    %c1000_i32 = arith.constant 1000 : i32
    %c500_i32 = arith.constant 500 : i32
    %alloc = memref.alloc() : memref<1000x1200xf64>
    %alloc_0 = memref.alloc() : memref<1000x1200xf64>
    %alloc_1 = memref.alloc() : memref<1000x1200xf64>
    %alloc_2 = memref.alloc() : memref<500xf64>
    %cast = memref.cast %alloc : memref<1000x1200xf64> to memref<?x1200xf64>
    %cast_3 = memref.cast %alloc_0 : memref<1000x1200xf64> to memref<?x1200xf64>
    %cast_4 = memref.cast %alloc_1 : memref<1000x1200xf64> to memref<?x1200xf64>
    %cast_5 = memref.cast %alloc_2 : memref<500xf64> to memref<?xf64>
    call @init_array(%c500_i32, %c1000_i32, %c1200_i32, %cast, %cast_3, %cast_4, %cast_5) : (i32, i32, i32, memref<?x1200xf64>, memref<?x1200xf64>, memref<?x1200xf64>, memref<?xf64>) -> ()
    %cast_6 = memref.cast %alloc : memref<1000x1200xf64> to memref<?x1200xf64>
    %cast_7 = memref.cast %alloc_0 : memref<1000x1200xf64> to memref<?x1200xf64>
    %cast_8 = memref.cast %alloc_1 : memref<1000x1200xf64> to memref<?x1200xf64>
    %cast_9 = memref.cast %alloc_2 : memref<500xf64> to memref<?xf64>
    call @kernel_fdtd_2d(%c500_i32, %c1000_i32, %c1200_i32, %cast_6, %cast_7, %cast_8, %cast_9) : (i32, i32, i32, memref<?x1200xf64>, memref<?x1200xf64>, memref<?x1200xf64>, memref<?xf64>) -> ()
    %0 = arith.cmpi sgt, %arg0, %c42_i32 : i32
    scf.if %0 {
      %1 = affine.load %arg1[0] : memref<?xmemref<?xi8>>
      %2 = llvm.mlir.addressof @str0 : !llvm.ptr
      %3 = "polygeist.pointer2memref"(%2) : (!llvm.ptr) -> memref<?xi8>
      %4 = func.call @strcmp(%1, %3) : (memref<?xi8>, memref<?xi8>) -> i32
      %5 = arith.cmpi eq, %4, %c0_i32 : i32
      scf.if %5 {
        %cast_10 = memref.cast %alloc : memref<1000x1200xf64> to memref<?x1200xf64>
        %cast_11 = memref.cast %alloc_0 : memref<1000x1200xf64> to memref<?x1200xf64>
        %cast_12 = memref.cast %alloc_1 : memref<1000x1200xf64> to memref<?x1200xf64>
        func.call @print_array(%c1000_i32, %c1200_i32, %cast_10, %cast_11, %cast_12) : (i32, i32, memref<?x1200xf64>, memref<?x1200xf64>, memref<?x1200xf64>) -> ()
      }
    }
    memref.dealloc %alloc : memref<1000x1200xf64>
    memref.dealloc %alloc_0 : memref<1000x1200xf64>
    memref.dealloc %alloc_1 : memref<1000x1200xf64>
    memref.dealloc %alloc_2 : memref<500xf64>
    return %c0_i32 : i32
  }
  func.func private @init_array(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x1200xf64>, %arg4: memref<?x1200xf64>, %arg5: memref<?x1200xf64>, %arg6: memref<?xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c3_i32 = arith.constant 3 : i32
    %c2_i32 = arith.constant 2 : i32
    %c1_i32 = arith.constant 1 : i32
    %0 = arith.index_cast %arg0 : i32 to index
    scf.for %arg7 = %c0 to %0 step %c1 {
      %2 = arith.index_cast %arg7 : index to i32
      %3 = arith.sitofp %2 : i32 to f64
      memref.store %3, %arg6[%arg7] : memref<?xf64>
    }
    %1 = arith.index_cast %arg1 : i32 to index
    scf.for %arg7 = %c0 to %1 step %c1 {
      %2 = arith.index_cast %arg7 : index to i32
      %3 = arith.index_cast %arg2 : i32 to index
      scf.for %arg8 = %c0 to %3 step %c1 {
        %4 = arith.index_cast %arg8 : index to i32
        %5 = arith.sitofp %2 : i32 to f64
        %6 = arith.addi %4, %c1_i32 : i32
        %7 = arith.sitofp %6 : i32 to f64
        %8 = arith.mulf %5, %7 : f64
        %9 = arith.sitofp %arg1 : i32 to f64
        %10 = arith.divf %8, %9 : f64
        memref.store %10, %arg3[%arg7, %arg8] : memref<?x1200xf64>
        %11 = arith.addi %4, %c2_i32 : i32
        %12 = arith.sitofp %11 : i32 to f64
        %13 = arith.mulf %5, %12 : f64
        %14 = arith.sitofp %arg2 : i32 to f64
        %15 = arith.divf %13, %14 : f64
        memref.store %15, %arg4[%arg7, %arg8] : memref<?x1200xf64>
        %16 = arith.addi %4, %c3_i32 : i32
        %17 = arith.sitofp %16 : i32 to f64
        %18 = arith.mulf %5, %17 : f64
        %19 = arith.divf %18, %9 : f64
        memref.store %19, %arg5[%arg7, %arg8] : memref<?x1200xf64>
      }
    }
    return
  }
  func.func private @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x1200xf64>, %arg4: memref<?x1200xf64>, %arg5: memref<?x1200xf64>, %arg6: memref<?xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %cst = arith.constant 5.000000e-01 : f64
    %cst_0 = arith.constant 0.69999999999999996 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg2 : i32 to index
    %2 = arith.index_cast %arg0 : i32 to index
    affine.for %arg7 = 0 to %2 {
      affine.for %arg8 = 0 to %1 {
        %3 = affine.load %arg6[%arg7] : memref<?xf64>
        affine.store %3, %arg4[0, %arg8] : memref<?x1200xf64>
      }
      affine.for %arg8 = 1 to %0 {
        affine.for %arg9 = 0 to %1 {
          %3 = affine.load %arg4[%arg8, %arg9] : memref<?x1200xf64>
          %4 = affine.load %arg5[%arg8, %arg9] : memref<?x1200xf64>
          %5 = affine.load %arg5[%arg8 - 1, %arg9] : memref<?x1200xf64>
          %6 = arith.subf %4, %5 : f64
          %7 = arith.mulf %6, %cst : f64
          %8 = arith.subf %3, %7 : f64
          affine.store %8, %arg4[%arg8, %arg9] : memref<?x1200xf64>
        }
      }
      affine.for %arg8 = 0 to %0 {
        affine.for %arg9 = 1 to %1 {
          %3 = affine.load %arg3[%arg8, %arg9] : memref<?x1200xf64>
          %4 = affine.load %arg5[%arg8, %arg9] : memref<?x1200xf64>
          %5 = affine.load %arg5[%arg8, %arg9 - 1] : memref<?x1200xf64>
          %6 = arith.subf %4, %5 : f64
          %7 = arith.mulf %6, %cst : f64
          %8 = arith.subf %3, %7 : f64
          affine.store %8, %arg3[%arg8, %arg9] : memref<?x1200xf64>
        }
      }
      affine.for %arg8 = 0 to #map()[%0] {
        affine.for %arg9 = 0 to #map()[%1] {
          %3 = affine.load %arg5[%arg8, %arg9] : memref<?x1200xf64>
          %4 = affine.load %arg3[%arg8, %arg9 + 1] : memref<?x1200xf64>
          %5 = affine.load %arg3[%arg8, %arg9] : memref<?x1200xf64>
          %6 = arith.subf %4, %5 : f64
          %7 = affine.load %arg4[%arg8 + 1, %arg9] : memref<?x1200xf64>
          %8 = arith.addf %6, %7 : f64
          %9 = affine.load %arg4[%arg8, %arg9] : memref<?x1200xf64>
          %10 = arith.subf %8, %9 : f64
          %11 = arith.mulf %10, %cst_0 : f64
          %12 = arith.subf %3, %11 : f64
          affine.store %12, %arg5[%arg8, %arg9] : memref<?x1200xf64>
        }
      }
    }
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @print_array(%arg0: i32, %arg1: i32, %arg2: memref<?x1200xf64>, %arg3: memref<?x1200xf64>, %arg4: memref<?x1200xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c20_i32 = arith.constant 20 : i32
    %c0_i32 = arith.constant 0 : i32
    %0 = llvm.mlir.addressof @stderr : !llvm.ptr
    %1 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
    %2 = "polygeist.memref2pointer"(%1) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %3 = llvm.mlir.addressof @str1 : !llvm.ptr
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<23 x i8>
    %5 = llvm.call @fprintf(%2, %4) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
    %6 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
    %7 = "polygeist.memref2pointer"(%6) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %8 = llvm.mlir.addressof @str2 : !llvm.ptr
    %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<15 x i8>
    %10 = llvm.mlir.addressof @str3 : !llvm.ptr
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<3 x i8>
    %12 = llvm.call @fprintf(%7, %9, %11) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %13 = arith.index_cast %arg0 : i32 to index
    scf.for %arg5 = %c0 to %13 step %c1 {
      %50 = arith.index_cast %arg5 : index to i32
      %51 = arith.index_cast %arg1 : i32 to index
      scf.for %arg6 = %c0 to %51 step %c1 {
        %52 = arith.index_cast %arg6 : index to i32
        %53 = arith.muli %50, %arg0 : i32
        %54 = arith.addi %53, %52 : i32
        %55 = arith.remsi %54, %c20_i32 : i32
        %56 = arith.cmpi eq, %55, %c0_i32 : i32
        scf.if %56 {
          %63 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
          %64 = "polygeist.memref2pointer"(%63) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
          %65 = llvm.mlir.addressof @str4 : !llvm.ptr
          %66 = llvm.getelementptr %65[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i8>
          %67 = llvm.call @fprintf(%64, %66) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
        }
        %57 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
        %58 = "polygeist.memref2pointer"(%57) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
        %59 = llvm.mlir.addressof @str5 : !llvm.ptr
        %60 = llvm.getelementptr %59[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x i8>
        %61 = memref.load %arg2[%arg5, %arg6] : memref<?x1200xf64>
        %62 = llvm.call @fprintf(%58, %60, %61) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
      }
    }
    %14 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
    %15 = "polygeist.memref2pointer"(%14) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %16 = llvm.mlir.addressof @str6 : !llvm.ptr
    %17 = llvm.getelementptr %16[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<17 x i8>
    %18 = llvm.call @fprintf(%15, %17, %11) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %19 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
    %20 = "polygeist.memref2pointer"(%19) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %21 = llvm.mlir.addressof @str7 : !llvm.ptr
    %22 = llvm.getelementptr %21[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<23 x i8>
    %23 = llvm.call @fprintf(%20, %22) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
    %24 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
    %25 = "polygeist.memref2pointer"(%24) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %26 = llvm.mlir.addressof @str8 : !llvm.ptr
    %27 = llvm.getelementptr %26[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<3 x i8>
    %28 = llvm.call @fprintf(%25, %9, %27) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %29 = arith.index_cast %arg0 : i32 to index
    scf.for %arg5 = %c0 to %29 step %c1 {
      %50 = arith.index_cast %arg5 : index to i32
      %51 = arith.index_cast %arg1 : i32 to index
      scf.for %arg6 = %c0 to %51 step %c1 {
        %52 = arith.index_cast %arg6 : index to i32
        %53 = arith.muli %50, %arg0 : i32
        %54 = arith.addi %53, %52 : i32
        %55 = arith.remsi %54, %c20_i32 : i32
        %56 = arith.cmpi eq, %55, %c0_i32 : i32
        scf.if %56 {
          %63 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
          %64 = "polygeist.memref2pointer"(%63) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
          %65 = llvm.mlir.addressof @str4 : !llvm.ptr
          %66 = llvm.getelementptr %65[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i8>
          %67 = llvm.call @fprintf(%64, %66) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
        }
        %57 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
        %58 = "polygeist.memref2pointer"(%57) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
        %59 = llvm.mlir.addressof @str5 : !llvm.ptr
        %60 = llvm.getelementptr %59[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x i8>
        %61 = memref.load %arg3[%arg5, %arg6] : memref<?x1200xf64>
        %62 = llvm.call @fprintf(%58, %60, %61) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
      }
    }
    %30 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
    %31 = "polygeist.memref2pointer"(%30) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %32 = llvm.mlir.addressof @str6 : !llvm.ptr
    %33 = llvm.getelementptr %32[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<17 x i8>
    %34 = llvm.mlir.addressof @str8 : !llvm.ptr
    %35 = llvm.getelementptr %34[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<3 x i8>
    %36 = llvm.call @fprintf(%31, %33, %35) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %37 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
    %38 = "polygeist.memref2pointer"(%37) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %39 = llvm.mlir.addressof @str9 : !llvm.ptr
    %40 = llvm.getelementptr %39[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<3 x i8>
    %41 = llvm.call @fprintf(%38, %9, %40) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %42 = arith.index_cast %arg0 : i32 to index
    scf.for %arg5 = %c0 to %42 step %c1 {
      %50 = arith.index_cast %arg5 : index to i32
      %51 = arith.index_cast %arg1 : i32 to index
      scf.for %arg6 = %c0 to %51 step %c1 {
        %52 = arith.index_cast %arg6 : index to i32
        %53 = arith.muli %50, %arg0 : i32
        %54 = arith.addi %53, %52 : i32
        %55 = arith.remsi %54, %c20_i32 : i32
        %56 = arith.cmpi eq, %55, %c0_i32 : i32
        scf.if %56 {
          %63 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
          %64 = "polygeist.memref2pointer"(%63) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
          %65 = llvm.mlir.addressof @str4 : !llvm.ptr
          %66 = llvm.getelementptr %65[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i8>
          %67 = llvm.call @fprintf(%64, %66) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
        }
        %57 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
        %58 = "polygeist.memref2pointer"(%57) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
        %59 = llvm.mlir.addressof @str5 : !llvm.ptr
        %60 = llvm.getelementptr %59[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x i8>
        %61 = memref.load %arg4[%arg5, %arg6] : memref<?x1200xf64>
        %62 = llvm.call @fprintf(%58, %60, %61) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
      }
    }
    %43 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
    %44 = "polygeist.memref2pointer"(%43) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %45 = llvm.mlir.addressof @str6 : !llvm.ptr
    %46 = llvm.getelementptr %45[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<17 x i8>
    %47 = llvm.mlir.addressof @str9 : !llvm.ptr
    %48 = llvm.getelementptr %47[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<3 x i8>
    %49 = llvm.call @fprintf(%44, %46, %48) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    return
  }
}
