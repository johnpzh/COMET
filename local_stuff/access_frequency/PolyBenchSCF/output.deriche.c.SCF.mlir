module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2f \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("imgOut\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @stderr() {addr_space = 0 : i32} : memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main(%arg0: i32, %arg1: memref<?xmemref<?xi8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0_i32 = arith.constant 0 : i32
    %c42_i32 = arith.constant 42 : i32
    %c2160_i32 = arith.constant 2160 : i32
    %c4096_i32 = arith.constant 4096 : i32
    %alloca = memref.alloca() : memref<1xf32>
    %0 = llvm.mlir.undef : f32
    affine.store %0, %alloca[0] : memref<1xf32>
    %alloc = memref.alloc() : memref<4096x2160xf32>
    %alloc_0 = memref.alloc() : memref<4096x2160xf32>
    %alloc_1 = memref.alloc() : memref<4096x2160xf32>
    %alloc_2 = memref.alloc() : memref<4096x2160xf32>
    %cast = memref.cast %alloca : memref<1xf32> to memref<?xf32>
    %cast_3 = memref.cast %alloc : memref<4096x2160xf32> to memref<?x2160xf32>
    %cast_4 = memref.cast %alloc_0 : memref<4096x2160xf32> to memref<?x2160xf32>
    call @init_array(%c4096_i32, %c2160_i32, %cast, %cast_3, %cast_4) : (i32, i32, memref<?xf32>, memref<?x2160xf32>, memref<?x2160xf32>) -> ()
    %1 = affine.load %alloca[0] : memref<1xf32>
    %cast_5 = memref.cast %alloc : memref<4096x2160xf32> to memref<?x2160xf32>
    %cast_6 = memref.cast %alloc_0 : memref<4096x2160xf32> to memref<?x2160xf32>
    %cast_7 = memref.cast %alloc_1 : memref<4096x2160xf32> to memref<?x2160xf32>
    %cast_8 = memref.cast %alloc_2 : memref<4096x2160xf32> to memref<?x2160xf32>
    call @kernel_deriche(%c4096_i32, %c2160_i32, %1, %cast_5, %cast_6, %cast_7, %cast_8) : (i32, i32, f32, memref<?x2160xf32>, memref<?x2160xf32>, memref<?x2160xf32>, memref<?x2160xf32>) -> ()
    %2 = arith.cmpi sgt, %arg0, %c42_i32 : i32
    scf.if %2 {
      %3 = affine.load %arg1[0] : memref<?xmemref<?xi8>>
      %4 = llvm.mlir.addressof @str0 : !llvm.ptr
      %5 = "polygeist.pointer2memref"(%4) : (!llvm.ptr) -> memref<?xi8>
      %6 = func.call @strcmp(%3, %5) : (memref<?xi8>, memref<?xi8>) -> i32
      %7 = arith.cmpi eq, %6, %c0_i32 : i32
      scf.if %7 {
        %cast_9 = memref.cast %alloc_0 : memref<4096x2160xf32> to memref<?x2160xf32>
        func.call @print_array(%c4096_i32, %c2160_i32, %cast_9) : (i32, i32, memref<?x2160xf32>) -> ()
      }
    }
    memref.dealloc %alloc : memref<4096x2160xf32>
    memref.dealloc %alloc_0 : memref<4096x2160xf32>
    memref.dealloc %alloc_1 : memref<4096x2160xf32>
    memref.dealloc %alloc_2 : memref<4096x2160xf32>
    return %c0_i32 : i32
  }
  func.func private @init_array(%arg0: i32, %arg1: i32, %arg2: memref<?xf32>, %arg3: memref<?x2160xf32>, %arg4: memref<?x2160xf32>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 6.553500e+04 : f32
    %c65536_i32 = arith.constant 65536 : i32
    %c991_i32 = arith.constant 991 : i32
    %c313_i32 = arith.constant 313 : i32
    %cst_0 = arith.constant 2.500000e-01 : f32
    affine.store %cst_0, %arg2[0] : memref<?xf32>
    %0 = arith.index_cast %arg0 : i32 to index
    scf.for %arg5 = %c0 to %0 step %c1 {
      %1 = arith.index_cast %arg5 : index to i32
      %2 = arith.index_cast %arg1 : i32 to index
      scf.for %arg6 = %c0 to %2 step %c1 {
        %3 = arith.index_cast %arg6 : index to i32
        %4 = arith.muli %1, %c313_i32 : i32
        %5 = arith.muli %3, %c991_i32 : i32
        %6 = arith.addi %4, %5 : i32
        %7 = arith.remsi %6, %c65536_i32 : i32
        %8 = arith.sitofp %7 : i32 to f32
        %9 = arith.divf %8, %cst : f32
        memref.store %9, %arg3[%arg5, %arg6] : memref<?x2160xf32>
      }
    }
    return
  }
  func.func private @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x2160xf32>, %arg4: memref<?x2160xf32>, %arg5: memref<?x2160xf32>, %arg6: memref<?x2160xf32>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %cst = arith.constant 1.000000e+00 : f32
    %cst_0 = arith.constant 2.000000e+00 : f32
    %cst_1 = arith.constant -2.000000e+00 : f32
    %cst_2 = arith.constant 0.000000e+00 : f32
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg1 : i32 to index
    %2 = arith.index_cast %arg1 : i32 to index
    %3 = arith.index_cast %arg1 : i32 to index
    %4 = arith.index_cast %arg1 : i32 to index
    %5 = arith.index_cast %arg0 : i32 to index
    %6 = arith.index_cast %arg0 : i32 to index
    %7 = arith.index_cast %arg0 : i32 to index
    %8 = arith.index_cast %arg0 : i32 to index
    %9 = llvm.mlir.undef : f32
    %alloca = memref.alloca() : memref<f32>
    affine.store %9, %alloca[] : memref<f32>
    %alloca_3 = memref.alloca() : memref<f32>
    affine.store %9, %alloca_3[] : memref<f32>
    %alloca_4 = memref.alloca() : memref<f32>
    affine.store %9, %alloca_4[] : memref<f32>
    %alloca_5 = memref.alloca() : memref<f32>
    affine.store %9, %alloca_5[] : memref<f32>
    %alloca_6 = memref.alloca() : memref<f32>
    affine.store %9, %alloca_6[] : memref<f32>
    %alloca_7 = memref.alloca() : memref<f32>
    affine.store %9, %alloca_7[] : memref<f32>
    %alloca_8 = memref.alloca() : memref<f32>
    affine.store %9, %alloca_8[] : memref<f32>
    %alloca_9 = memref.alloca() : memref<f32>
    affine.store %9, %alloca_9[] : memref<f32>
    %alloca_10 = memref.alloca() : memref<f32>
    affine.store %9, %alloca_10[] : memref<f32>
    %alloca_11 = memref.alloca() : memref<f32>
    affine.store %9, %alloca_11[] : memref<f32>
    %10 = arith.negf %arg2 : f32
    %11 = math.exp %10 : f32
    %12 = arith.subf %cst, %11 : f32
    %13 = arith.mulf %12, %12 : f32
    %14 = arith.mulf %arg2, %cst_0 : f32
    %15 = arith.mulf %14, %11 : f32
    %16 = arith.addf %15, %cst : f32
    %17 = math.exp %14 : f32
    %18 = arith.subf %16, %17 : f32
    %19 = arith.divf %13, %18 : f32
    %20 = arith.mulf %19, %11 : f32
    %21 = arith.subf %arg2, %cst : f32
    %22 = arith.mulf %20, %21 : f32
    %23 = arith.addf %arg2, %cst : f32
    %24 = arith.mulf %20, %23 : f32
    %25 = arith.negf %19 : f32
    %26 = arith.mulf %arg2, %cst_1 : f32
    %27 = math.exp %26 : f32
    %28 = arith.mulf %25, %27 : f32
    %29 = math.powf %cst_0, %10 : f32
    %30 = arith.negf %27 : f32
    %31 = arith.index_cast %arg0 : i32 to index
    affine.for %arg7 = 0 to %31 {
      affine.store %cst_2, %alloca_9[] : memref<f32>
      affine.store %cst_2, %alloca_8[] : memref<f32>
      affine.store %cst_2, %alloca_11[] : memref<f32>
      affine.for %arg8 = 0 to %0 {
        %33 = affine.load %arg3[%arg7, %arg8] : memref<?x2160xf32>
        %34 = arith.mulf %19, %33 : f32
        %35 = affine.load %alloca_11[] : memref<f32>
        %36 = arith.mulf %22, %35 : f32
        %37 = arith.addf %34, %36 : f32
        %38 = affine.load %alloca_9[] : memref<f32>
        %39 = arith.mulf %29, %38 : f32
        %40 = arith.addf %37, %39 : f32
        %41 = affine.load %alloca_8[] : memref<f32>
        %42 = arith.mulf %30, %41 : f32
        %43 = arith.addf %40, %42 : f32
        affine.store %43, %arg5[%arg7, %arg8] : memref<?x2160xf32>
        %44 = affine.load %arg3[%arg7, %arg8] : memref<?x2160xf32>
        affine.store %44, %alloca_11[] : memref<f32>
        affine.store %38, %alloca_8[] : memref<f32>
        %45 = affine.load %arg5[%arg7, %arg8] : memref<?x2160xf32>
        affine.store %45, %alloca_9[] : memref<f32>
      }
    }
    affine.for %arg7 = 0 to %31 {
      affine.store %cst_2, %alloca_3[] : memref<f32>
      affine.store %cst_2, %alloca[] : memref<f32>
      affine.store %cst_2, %alloca_7[] : memref<f32>
      affine.store %cst_2, %alloca_6[] : memref<f32>
      affine.for %arg8 = 0 to %0 {
        %33 = affine.load %alloca_7[] : memref<f32>
        %34 = arith.mulf %24, %33 : f32
        %35 = affine.load %alloca_6[] : memref<f32>
        %36 = arith.mulf %28, %35 : f32
        %37 = arith.addf %34, %36 : f32
        %38 = affine.load %alloca_3[] : memref<f32>
        %39 = arith.mulf %29, %38 : f32
        %40 = arith.addf %37, %39 : f32
        %41 = affine.load %alloca[] : memref<f32>
        %42 = arith.mulf %30, %41 : f32
        %43 = arith.addf %40, %42 : f32
        affine.store %43, %arg6[%arg7, -%arg8 + symbol(%1) - 1] : memref<?x2160xf32>
        affine.store %33, %alloca_6[] : memref<f32>
        %44 = affine.load %arg3[%arg7, -%arg8 + symbol(%2) - 1] : memref<?x2160xf32>
        affine.store %44, %alloca_7[] : memref<f32>
        affine.store %38, %alloca[] : memref<f32>
        %45 = affine.load %arg6[%arg7, -%arg8 + symbol(%3) - 1] : memref<?x2160xf32>
        affine.store %45, %alloca_3[] : memref<f32>
      }
    }
    affine.for %arg7 = 0 to %31 {
      affine.for %arg8 = 0 to %4 {
        %33 = affine.load %arg5[%arg7, %arg8] : memref<?x2160xf32>
        %34 = affine.load %arg6[%arg7, %arg8] : memref<?x2160xf32>
        %35 = arith.addf %33, %34 : f32
        affine.store %35, %arg4[%arg7, %arg8] : memref<?x2160xf32>
      }
    }
    %32 = arith.index_cast %arg1 : i32 to index
    affine.for %arg7 = 0 to %32 {
      affine.store %cst_2, %alloca_10[] : memref<f32>
      affine.store %cst_2, %alloca_9[] : memref<f32>
      affine.store %cst_2, %alloca_8[] : memref<f32>
      affine.for %arg8 = 0 to %31 {
        %33 = affine.load %arg4[%arg8, %arg7] : memref<?x2160xf32>
        %34 = arith.mulf %19, %33 : f32
        %35 = affine.load %alloca_10[] : memref<f32>
        %36 = arith.mulf %22, %35 : f32
        %37 = arith.addf %34, %36 : f32
        %38 = affine.load %alloca_9[] : memref<f32>
        %39 = arith.mulf %29, %38 : f32
        %40 = arith.addf %37, %39 : f32
        %41 = affine.load %alloca_8[] : memref<f32>
        %42 = arith.mulf %30, %41 : f32
        %43 = arith.addf %40, %42 : f32
        affine.store %43, %arg5[%arg8, %arg7] : memref<?x2160xf32>
        %44 = affine.load %arg4[%arg8, %arg7] : memref<?x2160xf32>
        affine.store %44, %alloca_10[] : memref<f32>
        affine.store %38, %alloca_8[] : memref<f32>
        %45 = affine.load %arg5[%arg8, %arg7] : memref<?x2160xf32>
        affine.store %45, %alloca_9[] : memref<f32>
      }
    }
    affine.for %arg7 = 0 to %32 {
      affine.store %cst_2, %alloca_5[] : memref<f32>
      affine.store %cst_2, %alloca_4[] : memref<f32>
      affine.store %cst_2, %alloca_3[] : memref<f32>
      affine.store %cst_2, %alloca[] : memref<f32>
      affine.for %arg8 = 0 to %5 {
        %33 = affine.load %alloca_5[] : memref<f32>
        %34 = arith.mulf %24, %33 : f32
        %35 = affine.load %alloca_4[] : memref<f32>
        %36 = arith.mulf %28, %35 : f32
        %37 = arith.addf %34, %36 : f32
        %38 = affine.load %alloca_3[] : memref<f32>
        %39 = arith.mulf %29, %38 : f32
        %40 = arith.addf %37, %39 : f32
        %41 = affine.load %alloca[] : memref<f32>
        %42 = arith.mulf %30, %41 : f32
        %43 = arith.addf %40, %42 : f32
        affine.store %43, %arg6[-%arg8 + symbol(%6) - 1, %arg7] : memref<?x2160xf32>
        affine.store %33, %alloca_4[] : memref<f32>
        %44 = affine.load %arg4[-%arg8 + symbol(%7) - 1, %arg7] : memref<?x2160xf32>
        affine.store %44, %alloca_5[] : memref<f32>
        affine.store %38, %alloca[] : memref<f32>
        %45 = affine.load %arg6[-%arg8 + symbol(%8) - 1, %arg7] : memref<?x2160xf32>
        affine.store %45, %alloca_3[] : memref<f32>
      }
    }
    affine.for %arg7 = 0 to %31 {
      affine.for %arg8 = 0 to %32 {
        %33 = affine.load %arg5[%arg7, %arg8] : memref<?x2160xf32>
        %34 = affine.load %arg6[%arg7, %arg8] : memref<?x2160xf32>
        %35 = arith.addf %33, %34 : f32
        affine.store %35, %arg4[%arg7, %arg8] : memref<?x2160xf32>
      }
    }
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @print_array(%arg0: i32, %arg1: i32, %arg2: memref<?x2160xf32>) attributes {llvm.linkage = #llvm.linkage<internal>} {
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
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<7 x i8>
    %12 = llvm.call @fprintf(%7, %9, %11) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %13 = arith.index_cast %arg0 : i32 to index
    scf.for %arg3 = %c0 to %13 step %c1 {
      %24 = arith.index_cast %arg3 : index to i32
      %25 = arith.index_cast %arg1 : i32 to index
      scf.for %arg4 = %c0 to %25 step %c1 {
        %26 = arith.index_cast %arg4 : index to i32
        %27 = arith.muli %24, %arg1 : i32
        %28 = arith.addi %27, %26 : i32
        %29 = arith.remsi %28, %c20_i32 : i32
        %30 = arith.cmpi eq, %29, %c0_i32 : i32
        scf.if %30 {
          %38 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
          %39 = "polygeist.memref2pointer"(%38) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
          %40 = llvm.mlir.addressof @str4 : !llvm.ptr
          %41 = llvm.getelementptr %40[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i8>
          %42 = llvm.call @fprintf(%39, %41) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
        }
        %31 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
        %32 = "polygeist.memref2pointer"(%31) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
        %33 = llvm.mlir.addressof @str5 : !llvm.ptr
        %34 = llvm.getelementptr %33[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<7 x i8>
        %35 = memref.load %arg2[%arg3, %arg4] : memref<?x2160xf32>
        %36 = arith.extf %35 : f32 to f64
        %37 = llvm.call @fprintf(%32, %34, %36) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
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
    return
  }
}
