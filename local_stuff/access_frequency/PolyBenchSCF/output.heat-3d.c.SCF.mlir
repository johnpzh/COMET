#map = affine_map<()[s0] -> (s0 - 1)>
module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
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
    %c120_i32 = arith.constant 120 : i32
    %alloc = memref.alloc() : memref<120x120x120xf64>
    %alloc_0 = memref.alloc() : memref<120x120x120xf64>
    %cast = memref.cast %alloc : memref<120x120x120xf64> to memref<?x120x120xf64>
    %cast_1 = memref.cast %alloc_0 : memref<120x120x120xf64> to memref<?x120x120xf64>
    call @init_array(%c120_i32, %cast, %cast_1) : (i32, memref<?x120x120xf64>, memref<?x120x120xf64>) -> ()
    %cast_2 = memref.cast %alloc : memref<120x120x120xf64> to memref<?x120x120xf64>
    %cast_3 = memref.cast %alloc_0 : memref<120x120x120xf64> to memref<?x120x120xf64>
    call @kernel_heat_3d(%c500_i32, %c120_i32, %cast_2, %cast_3) : (i32, i32, memref<?x120x120xf64>, memref<?x120x120xf64>) -> ()
    %0 = arith.cmpi sgt, %arg0, %c42_i32 : i32
    scf.if %0 {
      %1 = affine.load %arg1[0] : memref<?xmemref<?xi8>>
      %2 = llvm.mlir.addressof @str0 : !llvm.ptr
      %3 = "polygeist.pointer2memref"(%2) : (!llvm.ptr) -> memref<?xi8>
      %4 = func.call @strcmp(%1, %3) : (memref<?xi8>, memref<?xi8>) -> i32
      %5 = arith.cmpi eq, %4, %c0_i32 : i32
      scf.if %5 {
        %cast_4 = memref.cast %alloc : memref<120x120x120xf64> to memref<?x120x120xf64>
        func.call @print_array(%c120_i32, %cast_4) : (i32, memref<?x120x120xf64>) -> ()
      }
    }
    memref.dealloc %alloc : memref<120x120x120xf64>
    return %c0_i32 : i32
  }
  func.func private @init_array(%arg0: i32, %arg1: memref<?x120x120xf64>, %arg2: memref<?x120x120xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 1.000000e+01 : f64
    %0 = arith.index_cast %arg0 : i32 to index
    scf.for %arg3 = %c0 to %0 step %c1 {
      %1 = arith.index_cast %arg3 : index to i32
      %2 = arith.index_cast %arg0 : i32 to index
      scf.for %arg4 = %c0 to %2 step %c1 {
        %3 = arith.index_cast %arg4 : index to i32
        %4 = arith.index_cast %arg0 : i32 to index
        scf.for %arg5 = %c0 to %4 step %c1 {
          %5 = arith.index_cast %arg5 : index to i32
          %6 = arith.addi %1, %3 : i32
          %7 = arith.subi %arg0, %5 : i32
          %8 = arith.addi %6, %7 : i32
          %9 = arith.sitofp %8 : i32 to f64
          %10 = arith.mulf %9, %cst : f64
          %11 = arith.sitofp %arg0 : i32 to f64
          %12 = arith.divf %10, %11 : f64
          memref.store %12, %arg2[%arg3, %arg4, %arg5] : memref<?x120x120xf64>
          %13 = memref.load %arg2[%arg3, %arg4, %arg5] : memref<?x120x120xf64>
          memref.store %13, %arg1[%arg3, %arg4, %arg5] : memref<?x120x120xf64>
        }
      }
    }
    return
  }
  func.func private @kernel_heat_3d(%arg0: i32, %arg1: i32, %arg2: memref<?x120x120xf64>, %arg3: memref<?x120x120xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %cst = arith.constant 1.250000e-01 : f64
    %cst_0 = arith.constant 2.000000e+00 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg1 : i32 to index
    %2 = arith.index_cast %arg1 : i32 to index
    %3 = arith.index_cast %arg1 : i32 to index
    %4 = arith.index_cast %arg1 : i32 to index
    %5 = arith.index_cast %arg1 : i32 to index
    affine.for %arg4 = 1 to 501 {
      affine.for %arg5 = 1 to #map()[%0] {
        affine.for %arg6 = 1 to #map()[%1] {
          affine.for %arg7 = 1 to #map()[%2] {
            %6 = affine.load %arg2[%arg5 + 1, %arg6, %arg7] : memref<?x120x120xf64>
            %7 = affine.load %arg2[%arg5, %arg6, %arg7] : memref<?x120x120xf64>
            %8 = arith.mulf %7, %cst_0 : f64
            %9 = arith.subf %6, %8 : f64
            %10 = affine.load %arg2[%arg5 - 1, %arg6, %arg7] : memref<?x120x120xf64>
            %11 = arith.addf %9, %10 : f64
            %12 = arith.mulf %11, %cst : f64
            %13 = affine.load %arg2[%arg5, %arg6 + 1, %arg7] : memref<?x120x120xf64>
            %14 = arith.subf %13, %8 : f64
            %15 = affine.load %arg2[%arg5, %arg6 - 1, %arg7] : memref<?x120x120xf64>
            %16 = arith.addf %14, %15 : f64
            %17 = arith.mulf %16, %cst : f64
            %18 = arith.addf %12, %17 : f64
            %19 = affine.load %arg2[%arg5, %arg6, %arg7 + 1] : memref<?x120x120xf64>
            %20 = arith.subf %19, %8 : f64
            %21 = affine.load %arg2[%arg5, %arg6, %arg7 - 1] : memref<?x120x120xf64>
            %22 = arith.addf %20, %21 : f64
            %23 = arith.mulf %22, %cst : f64
            %24 = arith.addf %18, %23 : f64
            %25 = arith.addf %24, %7 : f64
            affine.store %25, %arg3[%arg5, %arg6, %arg7] : memref<?x120x120xf64>
          }
        }
      }
      affine.for %arg5 = 1 to #map()[%3] {
        affine.for %arg6 = 1 to #map()[%4] {
          affine.for %arg7 = 1 to #map()[%5] {
            %6 = affine.load %arg3[%arg5 + 1, %arg6, %arg7] : memref<?x120x120xf64>
            %7 = affine.load %arg3[%arg5, %arg6, %arg7] : memref<?x120x120xf64>
            %8 = arith.mulf %7, %cst_0 : f64
            %9 = arith.subf %6, %8 : f64
            %10 = affine.load %arg3[%arg5 - 1, %arg6, %arg7] : memref<?x120x120xf64>
            %11 = arith.addf %9, %10 : f64
            %12 = arith.mulf %11, %cst : f64
            %13 = affine.load %arg3[%arg5, %arg6 + 1, %arg7] : memref<?x120x120xf64>
            %14 = arith.subf %13, %8 : f64
            %15 = affine.load %arg3[%arg5, %arg6 - 1, %arg7] : memref<?x120x120xf64>
            %16 = arith.addf %14, %15 : f64
            %17 = arith.mulf %16, %cst : f64
            %18 = arith.addf %12, %17 : f64
            %19 = affine.load %arg3[%arg5, %arg6, %arg7 + 1] : memref<?x120x120xf64>
            %20 = arith.subf %19, %8 : f64
            %21 = affine.load %arg3[%arg5, %arg6, %arg7 - 1] : memref<?x120x120xf64>
            %22 = arith.addf %20, %21 : f64
            %23 = arith.mulf %22, %cst : f64
            %24 = arith.addf %18, %23 : f64
            %25 = arith.addf %24, %7 : f64
            affine.store %25, %arg2[%arg5, %arg6, %arg7] : memref<?x120x120xf64>
          }
        }
      }
    }
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @print_array(%arg0: i32, %arg1: memref<?x120x120xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
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
        %27 = arith.index_cast %arg0 : i32 to index
        scf.for %arg4 = %c0 to %27 step %c1 {
          %28 = arith.index_cast %arg4 : index to i32
          %29 = arith.muli %24, %arg0 : i32
          %30 = arith.muli %29, %arg0 : i32
          %31 = arith.muli %26, %arg0 : i32
          %32 = arith.addi %30, %31 : i32
          %33 = arith.addi %32, %28 : i32
          %34 = arith.remsi %33, %c20_i32 : i32
          %35 = arith.cmpi eq, %34, %c0_i32 : i32
          scf.if %35 {
            %42 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
            %43 = "polygeist.memref2pointer"(%42) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
            %44 = llvm.mlir.addressof @str4 : !llvm.ptr
            %45 = llvm.getelementptr %44[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i8>
            %46 = llvm.call @fprintf(%43, %45) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
          }
          %36 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
          %37 = "polygeist.memref2pointer"(%36) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
          %38 = llvm.mlir.addressof @str5 : !llvm.ptr
          %39 = llvm.getelementptr %38[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x i8>
          %40 = memref.load %arg1[%arg2, %arg3, %arg4] : memref<?x120x120xf64>
          %41 = llvm.call @fprintf(%37, %39, %40) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
        }
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
