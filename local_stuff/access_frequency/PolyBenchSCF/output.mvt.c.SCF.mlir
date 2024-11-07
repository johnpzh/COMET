module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str8("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str7("x2\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2lf \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("x1\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @stderr() {addr_space = 0 : i32} : memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main(%arg0: i32, %arg1: memref<?xmemref<?xi8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0_i32 = arith.constant 0 : i32
    %c42_i32 = arith.constant 42 : i32
    %c2000_i32 = arith.constant 2000 : i32
    %alloc = memref.alloc() : memref<2000x2000xf64>
    %alloc_0 = memref.alloc() : memref<2000xf64>
    %alloc_1 = memref.alloc() : memref<2000xf64>
    %alloc_2 = memref.alloc() : memref<2000xf64>
    %alloc_3 = memref.alloc() : memref<2000xf64>
    %cast = memref.cast %alloc_0 : memref<2000xf64> to memref<?xf64>
    %cast_4 = memref.cast %alloc_1 : memref<2000xf64> to memref<?xf64>
    %cast_5 = memref.cast %alloc_2 : memref<2000xf64> to memref<?xf64>
    %cast_6 = memref.cast %alloc_3 : memref<2000xf64> to memref<?xf64>
    %cast_7 = memref.cast %alloc : memref<2000x2000xf64> to memref<?x2000xf64>
    call @init_array(%c2000_i32, %cast, %cast_4, %cast_5, %cast_6, %cast_7) : (i32, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?x2000xf64>) -> ()
    %cast_8 = memref.cast %alloc_0 : memref<2000xf64> to memref<?xf64>
    %cast_9 = memref.cast %alloc_1 : memref<2000xf64> to memref<?xf64>
    %cast_10 = memref.cast %alloc_2 : memref<2000xf64> to memref<?xf64>
    %cast_11 = memref.cast %alloc_3 : memref<2000xf64> to memref<?xf64>
    %cast_12 = memref.cast %alloc : memref<2000x2000xf64> to memref<?x2000xf64>
    call @kernel_mvt(%c2000_i32, %cast_8, %cast_9, %cast_10, %cast_11, %cast_12) : (i32, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?x2000xf64>) -> ()
    %0 = arith.cmpi sgt, %arg0, %c42_i32 : i32
    scf.if %0 {
      %1 = affine.load %arg1[0] : memref<?xmemref<?xi8>>
      %2 = llvm.mlir.addressof @str0 : !llvm.ptr
      %3 = "polygeist.pointer2memref"(%2) : (!llvm.ptr) -> memref<?xi8>
      %4 = func.call @strcmp(%1, %3) : (memref<?xi8>, memref<?xi8>) -> i32
      %5 = arith.cmpi eq, %4, %c0_i32 : i32
      scf.if %5 {
        %cast_13 = memref.cast %alloc_0 : memref<2000xf64> to memref<?xf64>
        %cast_14 = memref.cast %alloc_1 : memref<2000xf64> to memref<?xf64>
        func.call @print_array(%c2000_i32, %cast_13, %cast_14) : (i32, memref<?xf64>, memref<?xf64>) -> ()
      }
    }
    memref.dealloc %alloc : memref<2000x2000xf64>
    memref.dealloc %alloc_0 : memref<2000xf64>
    memref.dealloc %alloc_1 : memref<2000xf64>
    memref.dealloc %alloc_2 : memref<2000xf64>
    memref.dealloc %alloc_3 : memref<2000xf64>
    return %c0_i32 : i32
  }
  func.func private @init_array(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x2000xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c4_i32 = arith.constant 4 : i32
    %c3_i32 = arith.constant 3 : i32
    %c1_i32 = arith.constant 1 : i32
    %0 = arith.index_cast %arg0 : i32 to index
    scf.for %arg6 = %c0 to %0 step %c1 {
      %1 = arith.index_cast %arg6 : index to i32
      %2 = arith.remsi %1, %arg0 : i32
      %3 = arith.sitofp %2 : i32 to f64
      %4 = arith.sitofp %arg0 : i32 to f64
      %5 = arith.divf %3, %4 : f64
      memref.store %5, %arg1[%arg6] : memref<?xf64>
      %6 = arith.addi %1, %c1_i32 : i32
      %7 = arith.remsi %6, %arg0 : i32
      %8 = arith.sitofp %7 : i32 to f64
      %9 = arith.divf %8, %4 : f64
      memref.store %9, %arg2[%arg6] : memref<?xf64>
      %10 = arith.addi %1, %c3_i32 : i32
      %11 = arith.remsi %10, %arg0 : i32
      %12 = arith.sitofp %11 : i32 to f64
      %13 = arith.divf %12, %4 : f64
      memref.store %13, %arg3[%arg6] : memref<?xf64>
      %14 = arith.addi %1, %c4_i32 : i32
      %15 = arith.remsi %14, %arg0 : i32
      %16 = arith.sitofp %15 : i32 to f64
      %17 = arith.divf %16, %4 : f64
      memref.store %17, %arg4[%arg6] : memref<?xf64>
      %18 = arith.index_cast %arg0 : i32 to index
      scf.for %arg7 = %c0 to %18 step %c1 {
        %19 = arith.index_cast %arg7 : index to i32
        %20 = arith.muli %1, %19 : i32
        %21 = arith.remsi %20, %arg0 : i32
        %22 = arith.sitofp %21 : i32 to f64
        %23 = arith.divf %22, %4 : f64
        memref.store %23, %arg5[%arg6, %arg7] : memref<?x2000xf64>
      }
    }
    return
  }
  func.func private @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x2000xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %0 = arith.index_cast %arg0 : i32 to index
    affine.for %arg6 = 0 to %0 {
      affine.for %arg7 = 0 to %0 {
        %1 = affine.load %arg1[%arg6] : memref<?xf64>
        %2 = affine.load %arg5[%arg6, %arg7] : memref<?x2000xf64>
        %3 = affine.load %arg3[%arg7] : memref<?xf64>
        %4 = arith.mulf %2, %3 : f64
        %5 = arith.addf %1, %4 : f64
        affine.store %5, %arg1[%arg6] : memref<?xf64>
      }
    }
    affine.for %arg6 = 0 to %0 {
      affine.for %arg7 = 0 to %0 {
        %1 = affine.load %arg2[%arg6] : memref<?xf64>
        %2 = affine.load %arg5[%arg7, %arg6] : memref<?x2000xf64>
        %3 = affine.load %arg4[%arg7] : memref<?xf64>
        %4 = arith.mulf %2, %3 : f64
        %5 = arith.addf %1, %4 : f64
        affine.store %5, %arg2[%arg6] : memref<?xf64>
      }
    }
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @print_array(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
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
    scf.for %arg3 = %c0 to %13 step %c1 {
      %37 = arith.index_cast %arg3 : index to i32
      %38 = arith.remsi %37, %c20_i32 : i32
      %39 = arith.cmpi eq, %38, %c0_i32 : i32
      scf.if %39 {
        %46 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
        %47 = "polygeist.memref2pointer"(%46) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
        %48 = llvm.mlir.addressof @str4 : !llvm.ptr
        %49 = llvm.getelementptr %48[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i8>
        %50 = llvm.call @fprintf(%47, %49) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
      }
      %40 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
      %41 = "polygeist.memref2pointer"(%40) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
      %42 = llvm.mlir.addressof @str5 : !llvm.ptr
      %43 = llvm.getelementptr %42[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x i8>
      %44 = memref.load %arg1[%arg3] : memref<?xf64>
      %45 = llvm.call @fprintf(%41, %43, %44) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
    }
    %14 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
    %15 = "polygeist.memref2pointer"(%14) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %16 = llvm.mlir.addressof @str6 : !llvm.ptr
    %17 = llvm.getelementptr %16[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<17 x i8>
    %18 = llvm.call @fprintf(%15, %17, %11) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %19 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
    %20 = "polygeist.memref2pointer"(%19) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %21 = llvm.mlir.addressof @str7 : !llvm.ptr
    %22 = llvm.getelementptr %21[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<3 x i8>
    %23 = llvm.call @fprintf(%20, %9, %22) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %24 = arith.index_cast %arg0 : i32 to index
    scf.for %arg3 = %c0 to %24 step %c1 {
      %37 = arith.index_cast %arg3 : index to i32
      %38 = arith.remsi %37, %c20_i32 : i32
      %39 = arith.cmpi eq, %38, %c0_i32 : i32
      scf.if %39 {
        %46 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
        %47 = "polygeist.memref2pointer"(%46) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
        %48 = llvm.mlir.addressof @str4 : !llvm.ptr
        %49 = llvm.getelementptr %48[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i8>
        %50 = llvm.call @fprintf(%47, %49) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
      }
      %40 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
      %41 = "polygeist.memref2pointer"(%40) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
      %42 = llvm.mlir.addressof @str5 : !llvm.ptr
      %43 = llvm.getelementptr %42[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x i8>
      %44 = memref.load %arg2[%arg3] : memref<?xf64>
      %45 = llvm.call @fprintf(%41, %43, %44) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
    }
    %25 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
    %26 = "polygeist.memref2pointer"(%25) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %27 = llvm.mlir.addressof @str6 : !llvm.ptr
    %28 = llvm.getelementptr %27[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<17 x i8>
    %29 = llvm.mlir.addressof @str7 : !llvm.ptr
    %30 = llvm.getelementptr %29[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<3 x i8>
    %31 = llvm.call @fprintf(%26, %28, %30) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %32 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
    %33 = "polygeist.memref2pointer"(%32) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %34 = llvm.mlir.addressof @str8 : !llvm.ptr
    %35 = llvm.getelementptr %34[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<23 x i8>
    %36 = llvm.call @fprintf(%33, %35) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
    return
  }
}
