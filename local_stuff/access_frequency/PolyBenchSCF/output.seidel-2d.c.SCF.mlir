#map = affine_map<()[s0] -> (s0 - 1)>
module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2lf \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @stderr() {addr_space = 0 : i32} : memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main(%arg0: i32, %arg1: memref<?xmemref<?xi8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0_i32 = arith.constant 0 : i32
    %c42_i32 = arith.constant 42 : i32
    %c500_i32 = arith.constant 500 : i32
    %c2000_i32 = arith.constant 2000 : i32
    %alloc = memref.alloc() : memref<2000x2000xf64>
    %cast = memref.cast %alloc : memref<2000x2000xf64> to memref<?x2000xf64>
    call @init_array(%c2000_i32, %cast) : (i32, memref<?x2000xf64>) -> ()
    %cast_0 = memref.cast %alloc : memref<2000x2000xf64> to memref<?x2000xf64>
    call @kernel_seidel_2d(%c500_i32, %c2000_i32, %cast_0) : (i32, i32, memref<?x2000xf64>) -> ()
    %0 = arith.cmpi sgt, %arg0, %c42_i32 : i32
    scf.if %0 {
      %1 = affine.load %arg1[0] : memref<?xmemref<?xi8>>
      %2 = llvm.mlir.addressof @str0 : !llvm.ptr
      %3 = "polygeist.pointer2memref"(%2) : (!llvm.ptr) -> memref<?xi8>
      %4 = func.call @strcmp(%1, %3) : (memref<?xi8>, memref<?xi8>) -> i32
      %5 = arith.cmpi eq, %4, %c0_i32 : i32
      scf.if %5 {
        %cast_1 = memref.cast %alloc : memref<2000x2000xf64> to memref<?x2000xf64>
        func.call @print_array(%c2000_i32, %cast_1) : (i32, memref<?x2000xf64>) -> ()
      }
    }
    memref.dealloc %alloc : memref<2000x2000xf64>
    return %c0_i32 : i32
  }
  func.func private @init_array(%arg0: i32, %arg1: memref<?x2000xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 2.000000e+00 : f64
    %c2_i32 = arith.constant 2 : i32
    %0 = arith.index_cast %arg0 : i32 to index
    scf.for %arg2 = %c0 to %0 step %c1 {
      %1 = arith.index_cast %arg2 : index to i32
      %2 = arith.index_cast %arg0 : i32 to index
      scf.for %arg3 = %c0 to %2 step %c1 {
        %3 = arith.index_cast %arg3 : index to i32
        %4 = arith.sitofp %1 : i32 to f64
        %5 = arith.addi %3, %c2_i32 : i32
        %6 = arith.sitofp %5 : i32 to f64
        %7 = arith.mulf %4, %6 : f64
        %8 = arith.addf %7, %cst : f64
        %9 = arith.sitofp %arg0 : i32 to f64
        %10 = arith.divf %8, %9 : f64
        memref.store %10, %arg1[%arg2, %arg3] : memref<?x2000xf64>
      }
    }
    return
  }
  func.func private @kernel_seidel_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x2000xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %cst = arith.constant 9.000000e+00 : f64
    %0 = arith.index_cast %arg0 : i32 to index
    %1 = arith.index_cast %arg1 : i32 to index
    %2 = arith.index_cast %arg1 : i32 to index
    affine.for %arg3 = 0 to %0 {
      affine.for %arg4 = 1 to #map()[%1] {
        affine.for %arg5 = 1 to #map()[%2] {
          %3 = affine.load %arg2[%arg4 - 1, %arg5 - 1] : memref<?x2000xf64>
          %4 = affine.load %arg2[%arg4 - 1, %arg5] : memref<?x2000xf64>
          %5 = arith.addf %3, %4 : f64
          %6 = affine.load %arg2[%arg4 - 1, %arg5 + 1] : memref<?x2000xf64>
          %7 = arith.addf %5, %6 : f64
          %8 = affine.load %arg2[%arg4, %arg5 - 1] : memref<?x2000xf64>
          %9 = arith.addf %7, %8 : f64
          %10 = affine.load %arg2[%arg4, %arg5] : memref<?x2000xf64>
          %11 = arith.addf %9, %10 : f64
          %12 = affine.load %arg2[%arg4, %arg5 + 1] : memref<?x2000xf64>
          %13 = arith.addf %11, %12 : f64
          %14 = affine.load %arg2[%arg4 + 1, %arg5 - 1] : memref<?x2000xf64>
          %15 = arith.addf %13, %14 : f64
          %16 = affine.load %arg2[%arg4 + 1, %arg5] : memref<?x2000xf64>
          %17 = arith.addf %15, %16 : f64
          %18 = affine.load %arg2[%arg4 + 1, %arg5 + 1] : memref<?x2000xf64>
          %19 = arith.addf %17, %18 : f64
          %20 = arith.divf %19, %cst : f64
          affine.store %20, %arg2[%arg4, %arg5] : memref<?x2000xf64>
        }
      }
    }
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @print_array(%arg0: i32, %arg1: memref<?x2000xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
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
    %13 = arith.index_cast %arg0 : i32 to index
    scf.for %arg2 = %c0 to %13 step %c1 {
      %24 = arith.index_cast %arg2 : index to i32
      %25 = arith.index_cast %arg0 : i32 to index
      scf.for %arg3 = %c0 to %25 step %c1 {
        %26 = arith.index_cast %arg3 : index to i32
        %27 = arith.muli %24, %arg0 : i32
        %28 = arith.addi %27, %26 : i32
        %29 = arith.remsi %28, %c20_i32 : i32
        %30 = arith.cmpi eq, %29, %c0_i32 : i32
        scf.if %30 {
          %37 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
          %38 = "polygeist.memref2pointer"(%37) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
          %39 = llvm.mlir.addressof @str4 : !llvm.ptr
          %40 = llvm.getelementptr %39[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i8>
          %41 = llvm.call @fprintf(%38, %40) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
        }
        %31 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
        %32 = "polygeist.memref2pointer"(%31) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
        %33 = llvm.mlir.addressof @str5 : !llvm.ptr
        %34 = llvm.getelementptr %33[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x i8>
        %35 = memref.load %arg1[%arg2, %arg3] : memref<?x2000xf64>
        %36 = llvm.call @fprintf(%32, %34, %35) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
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
