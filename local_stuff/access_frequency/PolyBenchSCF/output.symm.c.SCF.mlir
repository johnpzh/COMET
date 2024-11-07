#map = affine_map<(d0) -> (d0)>
module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2lf \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("C\00") {addr_space = 0 : i32}
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
    %alloca = memref.alloca() : memref<1xf64>
    %0 = llvm.mlir.undef : f64
    affine.store %0, %alloca[0] : memref<1xf64>
    %alloca_0 = memref.alloca() : memref<1xf64>
    affine.store %0, %alloca_0[0] : memref<1xf64>
    %alloc = memref.alloc() : memref<1000x1200xf64>
    %alloc_1 = memref.alloc() : memref<1000x1000xf64>
    %alloc_2 = memref.alloc() : memref<1000x1200xf64>
    %cast = memref.cast %alloca_0 : memref<1xf64> to memref<?xf64>
    %cast_3 = memref.cast %alloca : memref<1xf64> to memref<?xf64>
    %cast_4 = memref.cast %alloc : memref<1000x1200xf64> to memref<?x1200xf64>
    %cast_5 = memref.cast %alloc_1 : memref<1000x1000xf64> to memref<?x1000xf64>
    %cast_6 = memref.cast %alloc_2 : memref<1000x1200xf64> to memref<?x1200xf64>
    call @init_array(%c1000_i32, %c1200_i32, %cast, %cast_3, %cast_4, %cast_5, %cast_6) : (i32, i32, memref<?xf64>, memref<?xf64>, memref<?x1200xf64>, memref<?x1000xf64>, memref<?x1200xf64>) -> ()
    %1 = affine.load %alloca_0[0] : memref<1xf64>
    %2 = affine.load %alloca[0] : memref<1xf64>
    %cast_7 = memref.cast %alloc : memref<1000x1200xf64> to memref<?x1200xf64>
    %cast_8 = memref.cast %alloc_1 : memref<1000x1000xf64> to memref<?x1000xf64>
    %cast_9 = memref.cast %alloc_2 : memref<1000x1200xf64> to memref<?x1200xf64>
    call @kernel_symm(%c1000_i32, %c1200_i32, %1, %2, %cast_7, %cast_8, %cast_9) : (i32, i32, f64, f64, memref<?x1200xf64>, memref<?x1000xf64>, memref<?x1200xf64>) -> ()
    %3 = arith.cmpi sgt, %arg0, %c42_i32 : i32
    scf.if %3 {
      %4 = affine.load %arg1[0] : memref<?xmemref<?xi8>>
      %5 = llvm.mlir.addressof @str0 : !llvm.ptr
      %6 = "polygeist.pointer2memref"(%5) : (!llvm.ptr) -> memref<?xi8>
      %7 = func.call @strcmp(%4, %6) : (memref<?xi8>, memref<?xi8>) -> i32
      %8 = arith.cmpi eq, %7, %c0_i32 : i32
      scf.if %8 {
        %cast_10 = memref.cast %alloc : memref<1000x1200xf64> to memref<?x1200xf64>
        func.call @print_array(%c1000_i32, %c1200_i32, %cast_10) : (i32, i32, memref<?x1200xf64>) -> ()
      }
    }
    memref.dealloc %alloc : memref<1000x1200xf64>
    memref.dealloc %alloc_1 : memref<1000x1000xf64>
    memref.dealloc %alloc_2 : memref<1000x1200xf64>
    return %c0_i32 : i32
  }
  func.func private @init_array(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?x1200xf64>, %arg5: memref<?x1000xf64>, %arg6: memref<?x1200xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant -9.990000e+02 : f64
    %c1_i32 = arith.constant 1 : i32
    %c100_i32 = arith.constant 100 : i32
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 1.500000e+00 : f64
    affine.store %cst_1, %arg2[0] : memref<?xf64>
    affine.store %cst_0, %arg3[0] : memref<?xf64>
    %0 = arith.index_cast %arg0 : i32 to index
    scf.for %arg7 = %c0 to %0 step %c1 {
      %2 = arith.index_cast %arg7 : index to i32
      %3 = arith.index_cast %arg1 : i32 to index
      scf.for %arg8 = %c0 to %3 step %c1 {
        %4 = arith.index_cast %arg8 : index to i32
        %5 = arith.addi %2, %4 : i32
        %6 = arith.remsi %5, %c100_i32 : i32
        %7 = arith.sitofp %6 : i32 to f64
        %8 = arith.sitofp %arg0 : i32 to f64
        %9 = arith.divf %7, %8 : f64
        memref.store %9, %arg4[%arg7, %arg8] : memref<?x1200xf64>
        %10 = arith.addi %arg1, %2 : i32
        %11 = arith.subi %10, %4 : i32
        %12 = arith.remsi %11, %c100_i32 : i32
        %13 = arith.sitofp %12 : i32 to f64
        %14 = arith.divf %13, %8 : f64
        memref.store %14, %arg6[%arg7, %arg8] : memref<?x1200xf64>
      }
    }
    %1 = arith.index_cast %arg0 : i32 to index
    scf.for %arg7 = %c0 to %1 step %c1 {
      %2 = arith.index_cast %arg7 : index to i32
      %3 = arith.addi %2, %c1_i32 : i32
      %4 = arith.index_cast %3 : i32 to index
      scf.for %arg8 = %c0 to %4 step %c1 {
        %8 = arith.index_cast %arg8 : index to i32
        %9 = arith.addi %2, %8 : i32
        %10 = arith.remsi %9, %c100_i32 : i32
        %11 = arith.sitofp %10 : i32 to f64
        %12 = arith.sitofp %arg0 : i32 to f64
        %13 = arith.divf %11, %12 : f64
        memref.store %13, %arg5[%arg7, %arg8] : memref<?x1000xf64>
      }
      %5 = arith.addi %2, %c1_i32 : i32
      %6 = arith.index_cast %arg0 : i32 to index
      %7 = arith.index_cast %5 : i32 to index
      scf.for %arg8 = %7 to %6 step %c1 {
        %8 = arith.subi %arg8, %7 : index
        %9 = arith.index_cast %5 : i32 to index
        %10 = arith.addi %9, %8 : index
        memref.store %cst, %arg5[%arg7, %10] : memref<?x1000xf64>
      }
    }
    return
  }
  func.func private @kernel_symm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x1200xf64>, %arg5: memref<?x1000xf64>, %arg6: memref<?x1200xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %alloca = memref.alloca() : memref<f64>
    %1 = llvm.mlir.undef : f64
    affine.store %1, %alloca[] : memref<f64>
    %2 = arith.index_cast %arg0 : i32 to index
    affine.for %arg7 = 0 to %2 {
      affine.for %arg8 = 0 to %0 {
        affine.store %cst, %alloca[] : memref<f64>
        affine.for %arg9 = 0 to #map(%arg7) {
          %13 = affine.load %arg6[%arg7, %arg8] : memref<?x1200xf64>
          %14 = arith.mulf %arg2, %13 : f64
          %15 = affine.load %arg5[%arg7, %arg9] : memref<?x1000xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = affine.load %arg4[%arg9, %arg8] : memref<?x1200xf64>
          %18 = arith.addf %17, %16 : f64
          affine.store %18, %arg4[%arg9, %arg8] : memref<?x1200xf64>
          %19 = affine.load %arg6[%arg9, %arg8] : memref<?x1200xf64>
          %20 = affine.load %arg5[%arg7, %arg9] : memref<?x1000xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = affine.load %alloca[] : memref<f64>
          %23 = arith.addf %22, %21 : f64
          affine.store %23, %alloca[] : memref<f64>
        }
        %3 = affine.load %arg4[%arg7, %arg8] : memref<?x1200xf64>
        %4 = arith.mulf %arg3, %3 : f64
        %5 = affine.load %arg6[%arg7, %arg8] : memref<?x1200xf64>
        %6 = arith.mulf %arg2, %5 : f64
        %7 = affine.load %arg5[%arg7, %arg7] : memref<?x1000xf64>
        %8 = arith.mulf %6, %7 : f64
        %9 = arith.addf %4, %8 : f64
        %10 = affine.load %alloca[] : memref<f64>
        %11 = arith.mulf %arg2, %10 : f64
        %12 = arith.addf %9, %11 : f64
        affine.store %12, %arg4[%arg7, %arg8] : memref<?x1200xf64>
      }
    }
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @print_array(%arg0: i32, %arg1: i32, %arg2: memref<?x1200xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
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
    scf.for %arg3 = %c0 to %13 step %c1 {
      %24 = arith.index_cast %arg3 : index to i32
      %25 = arith.index_cast %arg1 : i32 to index
      scf.for %arg4 = %c0 to %25 step %c1 {
        %26 = arith.index_cast %arg4 : index to i32
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
        %35 = memref.load %arg2[%arg3, %arg4] : memref<?x1200xf64>
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
