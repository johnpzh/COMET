#map = affine_map<()[s0] -> (s0 + 1)>
#map1 = affine_map<()[s0] -> (s0 - 1)>
module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2lf \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("u\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @stderr() {addr_space = 0 : i32} : memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main(%arg0: i32, %arg1: memref<?xmemref<?xi8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0_i32 = arith.constant 0 : i32
    %c42_i32 = arith.constant 42 : i32
    %c500_i32 = arith.constant 500 : i32
    %c1000_i32 = arith.constant 1000 : i32
    %alloc = memref.alloc() : memref<1000x1000xf64>
    %alloc_0 = memref.alloc() : memref<1000x1000xf64>
    %alloc_1 = memref.alloc() : memref<1000x1000xf64>
    %alloc_2 = memref.alloc() : memref<1000x1000xf64>
    %cast = memref.cast %alloc : memref<1000x1000xf64> to memref<?x1000xf64>
    call @init_array(%c1000_i32, %cast) : (i32, memref<?x1000xf64>) -> ()
    %cast_3 = memref.cast %alloc : memref<1000x1000xf64> to memref<?x1000xf64>
    %cast_4 = memref.cast %alloc_0 : memref<1000x1000xf64> to memref<?x1000xf64>
    %cast_5 = memref.cast %alloc_1 : memref<1000x1000xf64> to memref<?x1000xf64>
    %cast_6 = memref.cast %alloc_2 : memref<1000x1000xf64> to memref<?x1000xf64>
    call @kernel_adi(%c500_i32, %c1000_i32, %cast_3, %cast_4, %cast_5, %cast_6) : (i32, i32, memref<?x1000xf64>, memref<?x1000xf64>, memref<?x1000xf64>, memref<?x1000xf64>) -> ()
    %0 = arith.cmpi sgt, %arg0, %c42_i32 : i32
    scf.if %0 {
      %1 = affine.load %arg1[0] : memref<?xmemref<?xi8>>
      %2 = llvm.mlir.addressof @str0 : !llvm.ptr
      %3 = "polygeist.pointer2memref"(%2) : (!llvm.ptr) -> memref<?xi8>
      %4 = func.call @strcmp(%1, %3) : (memref<?xi8>, memref<?xi8>) -> i32
      %5 = arith.cmpi eq, %4, %c0_i32 : i32
      scf.if %5 {
        %cast_7 = memref.cast %alloc : memref<1000x1000xf64> to memref<?x1000xf64>
        func.call @print_array(%c1000_i32, %cast_7) : (i32, memref<?x1000xf64>) -> ()
      }
    }
    memref.dealloc %alloc : memref<1000x1000xf64>
    memref.dealloc %alloc_0 : memref<1000x1000xf64>
    memref.dealloc %alloc_1 : memref<1000x1000xf64>
    memref.dealloc %alloc_2 : memref<1000x1000xf64>
    return %c0_i32 : i32
  }
  func.func private @init_array(%arg0: i32, %arg1: memref<?x1000xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = arith.index_cast %arg0 : i32 to index
    scf.for %arg2 = %c0 to %0 step %c1 {
      %1 = arith.index_cast %arg2 : index to i32
      %2 = arith.index_cast %arg0 : i32 to index
      scf.for %arg3 = %c0 to %2 step %c1 {
        %3 = arith.index_cast %arg3 : index to i32
        %4 = arith.addi %1, %arg0 : i32
        %5 = arith.subi %4, %3 : i32
        %6 = arith.sitofp %5 : i32 to f64
        %7 = arith.sitofp %arg0 : i32 to f64
        %8 = arith.divf %6, %7 : f64
        memref.store %8, %arg1[%arg2, %arg3] : memref<?x1000xf64>
      }
    }
    return
  }
  func.func private @kernel_adi(%arg0: i32, %arg1: i32, %arg2: memref<?x1000xf64>, %arg3: memref<?x1000xf64>, %arg4: memref<?x1000xf64>, %arg5: memref<?x1000xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 2.000000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg1 : i32 to index
    %2 = arith.index_cast %arg1 : i32 to index
    %3 = arith.index_cast %arg1 : i32 to index
    %4 = arith.index_cast %arg1 : i32 to index
    %5 = arith.index_cast %arg1 : i32 to index
    %6 = arith.index_cast %arg1 : i32 to index
    %7 = arith.index_cast %arg1 : i32 to index
    %8 = arith.index_cast %arg1 : i32 to index
    %9 = arith.index_cast %arg1 : i32 to index
    %10 = arith.index_cast %arg1 : i32 to index
    %11 = arith.index_cast %arg1 : i32 to index
    %12 = arith.index_cast %arg1 : i32 to index
    %13 = arith.index_cast %arg1 : i32 to index
    %14 = arith.index_cast %arg1 : i32 to index
    %15 = arith.index_cast %arg1 : i32 to index
    %16 = arith.sitofp %arg1 : i32 to f64
    %17 = arith.divf %cst, %16 : f64
    %18 = arith.sitofp %arg0 : i32 to f64
    %19 = arith.divf %cst, %18 : f64
    %20 = arith.mulf %19, %cst_0 : f64
    %21 = arith.mulf %17, %17 : f64
    %22 = arith.divf %20, %21 : f64
    %23 = arith.divf %19, %21 : f64
    %24 = arith.negf %22 : f64
    %25 = arith.divf %24, %cst_0 : f64
    %26 = arith.addf %22, %cst : f64
    %27 = arith.negf %23 : f64
    %28 = arith.divf %27, %cst_0 : f64
    %29 = arith.addf %23, %cst : f64
    %30 = arith.index_cast %arg0 : i32 to index
    %31 = arith.negf %25 : f64
    %32 = arith.negf %28 : f64
    %33 = arith.mulf %28, %cst_0 : f64
    %34 = arith.addf %33, %cst : f64
    %35 = arith.negf %28 : f64
    %36 = arith.negf %25 : f64
    %37 = arith.mulf %25, %cst_0 : f64
    %38 = arith.addf %37, %cst : f64
    affine.for %arg6 = 1 to #map()[%30] {
      affine.for %arg7 = 1 to #map1()[%0] {
        affine.store %cst, %arg3[0, %arg7] : memref<?x1000xf64>
        affine.store %cst_1, %arg4[%arg7, 0] : memref<?x1000xf64>
        %39 = affine.load %arg3[0, %arg7] : memref<?x1000xf64>
        affine.store %39, %arg5[%arg7, 0] : memref<?x1000xf64>
        affine.for %arg8 = 1 to #map1()[%1] {
          %40 = affine.load %arg4[%arg7, %arg8 - 1] : memref<?x1000xf64>
          %41 = arith.mulf %25, %40 : f64
          %42 = arith.addf %41, %26 : f64
          %43 = arith.divf %31, %42 : f64
          affine.store %43, %arg4[%arg7, %arg8] : memref<?x1000xf64>
          %44 = affine.load %arg2[%arg8, %arg7 - 1] : memref<?x1000xf64>
          %45 = arith.mulf %32, %44 : f64
          %46 = affine.load %arg2[%arg8, %arg7] : memref<?x1000xf64>
          %47 = arith.mulf %34, %46 : f64
          %48 = arith.addf %45, %47 : f64
          %49 = affine.load %arg2[%arg8, %arg7 + 1] : memref<?x1000xf64>
          %50 = arith.mulf %28, %49 : f64
          %51 = arith.subf %48, %50 : f64
          %52 = affine.load %arg5[%arg7, %arg8 - 1] : memref<?x1000xf64>
          %53 = arith.mulf %25, %52 : f64
          %54 = arith.subf %51, %53 : f64
          %55 = arith.mulf %25, %40 : f64
          %56 = arith.addf %55, %26 : f64
          %57 = arith.divf %54, %56 : f64
          affine.store %57, %arg5[%arg7, %arg8] : memref<?x1000xf64>
        }
        affine.store %cst, %arg3[symbol(%2) - 1, %arg7] : memref<?x1000xf64>
        affine.for %arg8 = 1 to #map1()[%3] {
          %40 = affine.load %arg4[%arg7, -%arg8 + symbol(%4) - 1] : memref<?x1000xf64>
          %41 = affine.load %arg3[-%arg8 + symbol(%5), %arg7] : memref<?x1000xf64>
          %42 = arith.mulf %40, %41 : f64
          %43 = affine.load %arg5[%arg7, -%arg8 + symbol(%6) - 1] : memref<?x1000xf64>
          %44 = arith.addf %42, %43 : f64
          affine.store %44, %arg3[-%arg8 + symbol(%7) - 1, %arg7] : memref<?x1000xf64>
        }
      }
      affine.for %arg7 = 1 to #map1()[%8] {
        affine.store %cst, %arg2[%arg7, 0] : memref<?x1000xf64>
        affine.store %cst_1, %arg4[%arg7, 0] : memref<?x1000xf64>
        %39 = affine.load %arg2[%arg7, 0] : memref<?x1000xf64>
        affine.store %39, %arg5[%arg7, 0] : memref<?x1000xf64>
        affine.for %arg8 = 1 to #map1()[%9] {
          %40 = affine.load %arg4[%arg7, %arg8 - 1] : memref<?x1000xf64>
          %41 = arith.mulf %28, %40 : f64
          %42 = arith.addf %41, %29 : f64
          %43 = arith.divf %35, %42 : f64
          affine.store %43, %arg4[%arg7, %arg8] : memref<?x1000xf64>
          %44 = affine.load %arg3[%arg7 - 1, %arg8] : memref<?x1000xf64>
          %45 = arith.mulf %36, %44 : f64
          %46 = affine.load %arg3[%arg7, %arg8] : memref<?x1000xf64>
          %47 = arith.mulf %38, %46 : f64
          %48 = arith.addf %45, %47 : f64
          %49 = affine.load %arg3[%arg7 + 1, %arg8] : memref<?x1000xf64>
          %50 = arith.mulf %25, %49 : f64
          %51 = arith.subf %48, %50 : f64
          %52 = affine.load %arg5[%arg7, %arg8 - 1] : memref<?x1000xf64>
          %53 = arith.mulf %28, %52 : f64
          %54 = arith.subf %51, %53 : f64
          %55 = arith.mulf %28, %40 : f64
          %56 = arith.addf %55, %29 : f64
          %57 = arith.divf %54, %56 : f64
          affine.store %57, %arg5[%arg7, %arg8] : memref<?x1000xf64>
        }
        affine.store %cst, %arg2[%arg7, symbol(%10) - 1] : memref<?x1000xf64>
        affine.for %arg8 = 1 to #map1()[%11] {
          %40 = affine.load %arg4[%arg7, -%arg8 + symbol(%12) - 1] : memref<?x1000xf64>
          %41 = affine.load %arg2[%arg7, -%arg8 + symbol(%13)] : memref<?x1000xf64>
          %42 = arith.mulf %40, %41 : f64
          %43 = affine.load %arg5[%arg7, -%arg8 + symbol(%14) - 1] : memref<?x1000xf64>
          %44 = arith.addf %42, %43 : f64
          affine.store %44, %arg2[%arg7, -%arg8 + symbol(%15) - 1] : memref<?x1000xf64>
        }
      }
    }
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @print_array(%arg0: i32, %arg1: memref<?x1000xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
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
        %35 = memref.load %arg1[%arg2, %arg3] : memref<?x1000xf64>
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
