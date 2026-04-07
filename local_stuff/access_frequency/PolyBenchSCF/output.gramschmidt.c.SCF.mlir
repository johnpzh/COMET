#map = affine_map<(d0) -> (d0 + 1)>
module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str8("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str7("Q\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2lf \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("R\00") {addr_space = 0 : i32}
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
    %alloc = memref.alloc() : memref<1000x1200xf64>
    %alloc_0 = memref.alloc() : memref<1200x1200xf64>
    %alloc_1 = memref.alloc() : memref<1000x1200xf64>
    %cast = memref.cast %alloc : memref<1000x1200xf64> to memref<?x1200xf64>
    %cast_2 = memref.cast %alloc_0 : memref<1200x1200xf64> to memref<?x1200xf64>
    %cast_3 = memref.cast %alloc_1 : memref<1000x1200xf64> to memref<?x1200xf64>
    call @init_array(%c1000_i32, %c1200_i32, %cast, %cast_2, %cast_3) : (i32, i32, memref<?x1200xf64>, memref<?x1200xf64>, memref<?x1200xf64>) -> ()
    %cast_4 = memref.cast %alloc : memref<1000x1200xf64> to memref<?x1200xf64>
    %cast_5 = memref.cast %alloc_0 : memref<1200x1200xf64> to memref<?x1200xf64>
    %cast_6 = memref.cast %alloc_1 : memref<1000x1200xf64> to memref<?x1200xf64>
    call @kernel_gramschmidt(%c1000_i32, %c1200_i32, %cast_4, %cast_5, %cast_6) : (i32, i32, memref<?x1200xf64>, memref<?x1200xf64>, memref<?x1200xf64>) -> ()
    %0 = arith.cmpi sgt, %arg0, %c42_i32 : i32
    scf.if %0 {
      %1 = affine.load %arg1[0] : memref<?xmemref<?xi8>>
      %2 = llvm.mlir.addressof @str0 : !llvm.ptr
      %3 = "polygeist.pointer2memref"(%2) : (!llvm.ptr) -> memref<?xi8>
      %4 = func.call @strcmp(%1, %3) : (memref<?xi8>, memref<?xi8>) -> i32
      %5 = arith.cmpi eq, %4, %c0_i32 : i32
      scf.if %5 {
        %cast_7 = memref.cast %alloc : memref<1000x1200xf64> to memref<?x1200xf64>
        %cast_8 = memref.cast %alloc_0 : memref<1200x1200xf64> to memref<?x1200xf64>
        %cast_9 = memref.cast %alloc_1 : memref<1000x1200xf64> to memref<?x1200xf64>
        func.call @print_array(%c1000_i32, %c1200_i32, %cast_7, %cast_8, %cast_9) : (i32, i32, memref<?x1200xf64>, memref<?x1200xf64>, memref<?x1200xf64>) -> ()
      }
    }
    memref.dealloc %alloc : memref<1000x1200xf64>
    memref.dealloc %alloc_0 : memref<1200x1200xf64>
    memref.dealloc %alloc_1 : memref<1000x1200xf64>
    return %c0_i32 : i32
  }
  func.func private @init_array(%arg0: i32, %arg1: i32, %arg2: memref<?x1200xf64>, %arg3: memref<?x1200xf64>, %arg4: memref<?x1200xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+01 : f64
    %cst_1 = arith.constant 1.000000e+02 : f64
    %0 = arith.index_cast %arg0 : i32 to index
    scf.for %arg5 = %c0 to %0 step %c1 {
      %2 = arith.index_cast %arg5 : index to i32
      %3 = arith.index_cast %arg1 : i32 to index
      scf.for %arg6 = %c0 to %3 step %c1 {
        %4 = arith.index_cast %arg6 : index to i32
        %5 = arith.muli %2, %4 : i32
        %6 = arith.remsi %5, %arg0 : i32
        %7 = arith.sitofp %6 : i32 to f64
        %8 = arith.sitofp %arg0 : i32 to f64
        %9 = arith.divf %7, %8 : f64
        %10 = arith.mulf %9, %cst_1 : f64
        %11 = arith.addf %10, %cst_0 : f64
        memref.store %11, %arg2[%arg5, %arg6] : memref<?x1200xf64>
        memref.store %cst, %arg4[%arg5, %arg6] : memref<?x1200xf64>
      }
    }
    %1 = arith.index_cast %arg1 : i32 to index
    scf.for %arg5 = %c0 to %1 step %c1 {
      %2 = arith.index_cast %arg1 : i32 to index
      scf.for %arg6 = %c0 to %2 step %c1 {
        memref.store %cst, %arg3[%arg5, %arg6] : memref<?x1200xf64>
      }
    }
    return
  }
  func.func private @kernel_gramschmidt(%arg0: i32, %arg1: i32, %arg2: memref<?x1200xf64>, %arg3: memref<?x1200xf64>, %arg4: memref<?x1200xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg0 : i32 to index
    %alloca = memref.alloca() : memref<f64>
    %1 = llvm.mlir.undef : f64
    affine.store %1, %alloca[] : memref<f64>
    %2 = arith.index_cast %arg1 : i32 to index
    affine.for %arg5 = 0 to %2 {
      affine.store %cst, %alloca[] : memref<f64>
      affine.for %arg6 = 0 to %0 {
        %5 = affine.load %arg2[%arg6, %arg5] : memref<?x1200xf64>
        %6 = arith.mulf %5, %5 : f64
        %7 = affine.load %alloca[] : memref<f64>
        %8 = arith.addf %7, %6 : f64
        affine.store %8, %alloca[] : memref<f64>
      }
      %3 = affine.load %alloca[] : memref<f64>
      %4 = math.sqrt %3 : f64
      affine.store %4, %arg3[%arg5, %arg5] : memref<?x1200xf64>
      affine.for %arg6 = 0 to %0 {
        %5 = affine.load %arg2[%arg6, %arg5] : memref<?x1200xf64>
        %6 = affine.load %arg3[%arg5, %arg5] : memref<?x1200xf64>
        %7 = arith.divf %5, %6 : f64
        affine.store %7, %arg4[%arg6, %arg5] : memref<?x1200xf64>
      }
      affine.for %arg6 = #map(%arg5) to %2 {
        affine.store %cst, %arg3[%arg5, %arg6] : memref<?x1200xf64>
        affine.for %arg7 = 0 to %0 {
          %5 = affine.load %arg4[%arg7, %arg5] : memref<?x1200xf64>
          %6 = affine.load %arg2[%arg7, %arg6] : memref<?x1200xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = affine.load %arg3[%arg5, %arg6] : memref<?x1200xf64>
          %9 = arith.addf %8, %7 : f64
          affine.store %9, %arg3[%arg5, %arg6] : memref<?x1200xf64>
        }
        affine.for %arg7 = 0 to %0 {
          %5 = affine.load %arg2[%arg7, %arg6] : memref<?x1200xf64>
          %6 = affine.load %arg4[%arg7, %arg5] : memref<?x1200xf64>
          %7 = affine.load %arg3[%arg5, %arg6] : memref<?x1200xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = arith.subf %5, %8 : f64
          affine.store %9, %arg2[%arg7, %arg6] : memref<?x1200xf64>
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
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i8>
    %12 = llvm.call @fprintf(%7, %9, %11) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %13 = arith.index_cast %arg1 : i32 to index
    scf.for %arg5 = %c0 to %13 step %c1 {
      %37 = arith.index_cast %arg5 : index to i32
      %38 = arith.index_cast %arg1 : i32 to index
      scf.for %arg6 = %c0 to %38 step %c1 {
        %39 = arith.index_cast %arg6 : index to i32
        %40 = arith.muli %37, %arg1 : i32
        %41 = arith.addi %40, %39 : i32
        %42 = arith.remsi %41, %c20_i32 : i32
        %43 = arith.cmpi eq, %42, %c0_i32 : i32
        scf.if %43 {
          %50 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
          %51 = "polygeist.memref2pointer"(%50) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
          %52 = llvm.mlir.addressof @str4 : !llvm.ptr
          %53 = llvm.getelementptr %52[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i8>
          %54 = llvm.call @fprintf(%51, %53) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
        }
        %44 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
        %45 = "polygeist.memref2pointer"(%44) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
        %46 = llvm.mlir.addressof @str5 : !llvm.ptr
        %47 = llvm.getelementptr %46[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x i8>
        %48 = memref.load %arg3[%arg5, %arg6] : memref<?x1200xf64>
        %49 = llvm.call @fprintf(%45, %47, %48) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
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
    %22 = llvm.getelementptr %21[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i8>
    %23 = llvm.call @fprintf(%20, %9, %22) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %24 = arith.index_cast %arg0 : i32 to index
    scf.for %arg5 = %c0 to %24 step %c1 {
      %37 = arith.index_cast %arg5 : index to i32
      %38 = arith.index_cast %arg1 : i32 to index
      scf.for %arg6 = %c0 to %38 step %c1 {
        %39 = arith.index_cast %arg6 : index to i32
        %40 = arith.muli %37, %arg1 : i32
        %41 = arith.addi %40, %39 : i32
        %42 = arith.remsi %41, %c20_i32 : i32
        %43 = arith.cmpi eq, %42, %c0_i32 : i32
        scf.if %43 {
          %50 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
          %51 = "polygeist.memref2pointer"(%50) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
          %52 = llvm.mlir.addressof @str4 : !llvm.ptr
          %53 = llvm.getelementptr %52[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i8>
          %54 = llvm.call @fprintf(%51, %53) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
        }
        %44 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
        %45 = "polygeist.memref2pointer"(%44) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
        %46 = llvm.mlir.addressof @str5 : !llvm.ptr
        %47 = llvm.getelementptr %46[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x i8>
        %48 = memref.load %arg4[%arg5, %arg6] : memref<?x1200xf64>
        %49 = llvm.call @fprintf(%45, %47, %48) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
      }
    }
    %25 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
    %26 = "polygeist.memref2pointer"(%25) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %27 = llvm.mlir.addressof @str6 : !llvm.ptr
    %28 = llvm.getelementptr %27[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<17 x i8>
    %29 = llvm.mlir.addressof @str7 : !llvm.ptr
    %30 = llvm.getelementptr %29[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i8>
    %31 = llvm.call @fprintf(%26, %28, %30) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %32 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
    %33 = "polygeist.memref2pointer"(%32) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %34 = llvm.mlir.addressof @str8 : !llvm.ptr
    %35 = llvm.getelementptr %34[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<23 x i8>
    %36 = llvm.call @fprintf(%33, %35) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
    return
  }
}
