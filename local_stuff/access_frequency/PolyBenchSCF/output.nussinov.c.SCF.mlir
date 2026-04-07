#map = affine_map<(d0)[s0] -> (-d0 + s0)>
#map1 = affine_map<(d0) -> (d0)>
#set = affine_set<(d0) : (d0 - 1 >= 0)>
#set1 = affine_set<(d0, d1) : (d0 - 1 >= 0, d1 - 1 >= 0)>
#set2 = affine_set<(d0, d1)[s0] : (d0 + d1 - s0 - 1 >= 0)>
module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%d \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("table\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @stderr() {addr_space = 0 : i32} : memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main(%arg0: i32, %arg1: memref<?xmemref<?xi8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0_i32 = arith.constant 0 : i32
    %c42_i32 = arith.constant 42 : i32
    %c2500_i32 = arith.constant 2500 : i32
    %alloc = memref.alloc() : memref<2500xi8>
    %alloc_0 = memref.alloc() : memref<2500x2500xi32>
    %cast = memref.cast %alloc : memref<2500xi8> to memref<?xi8>
    %cast_1 = memref.cast %alloc_0 : memref<2500x2500xi32> to memref<?x2500xi32>
    call @init_array(%c2500_i32, %cast, %cast_1) : (i32, memref<?xi8>, memref<?x2500xi32>) -> ()
    %cast_2 = memref.cast %alloc : memref<2500xi8> to memref<?xi8>
    %cast_3 = memref.cast %alloc_0 : memref<2500x2500xi32> to memref<?x2500xi32>
    call @kernel_nussinov(%c2500_i32, %cast_2, %cast_3) : (i32, memref<?xi8>, memref<?x2500xi32>) -> ()
    %0 = arith.cmpi sgt, %arg0, %c42_i32 : i32
    scf.if %0 {
      %1 = affine.load %arg1[0] : memref<?xmemref<?xi8>>
      %2 = llvm.mlir.addressof @str0 : !llvm.ptr
      %3 = "polygeist.pointer2memref"(%2) : (!llvm.ptr) -> memref<?xi8>
      %4 = func.call @strcmp(%1, %3) : (memref<?xi8>, memref<?xi8>) -> i32
      %5 = arith.cmpi eq, %4, %c0_i32 : i32
      scf.if %5 {
        %cast_4 = memref.cast %alloc_0 : memref<2500x2500xi32> to memref<?x2500xi32>
        func.call @print_array(%c2500_i32, %cast_4) : (i32, memref<?x2500xi32>) -> ()
      }
    }
    memref.dealloc %alloc : memref<2500xi8>
    memref.dealloc %alloc_0 : memref<2500x2500xi32>
    return %c0_i32 : i32
  }
  func.func private @init_array(%arg0: i32, %arg1: memref<?xi8>, %arg2: memref<?x2500xi32>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c4_i32 = arith.constant 4 : i32
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %0 = arith.index_cast %arg0 : i32 to index
    scf.for %arg3 = %c0 to %0 step %c1 {
      %2 = arith.index_cast %arg3 : index to i32
      %3 = arith.addi %2, %c1_i32 : i32
      %4 = arith.remsi %3, %c4_i32 : i32
      %5 = arith.trunci %4 : i32 to i8
      memref.store %5, %arg1[%arg3] : memref<?xi8>
    }
    %1 = arith.index_cast %arg0 : i32 to index
    scf.for %arg3 = %c0 to %1 step %c1 {
      %2 = arith.index_cast %arg0 : i32 to index
      scf.for %arg4 = %c0 to %2 step %c1 {
        memref.store %c0_i32, %arg2[%arg3, %arg4] : memref<?x2500xi32>
      }
    }
    return
  }
  func.func private @kernel_nussinov(%arg0: i32, %arg1: memref<?xi8>, %arg2: memref<?x2500xi32>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c3_i32 = arith.constant 3 : i32
    %0 = arith.index_cast %arg0 : i32 to index
    %1 = arith.index_cast %arg0 : i32 to index
    %2 = arith.index_cast %arg0 : i32 to index
    %3 = arith.index_cast %arg0 : i32 to index
    %4 = arith.index_cast %arg0 : i32 to index
    %5 = arith.index_cast %arg0 : i32 to index
    %6 = arith.index_cast %arg0 : i32 to index
    %7 = arith.index_cast %arg0 : i32 to index
    %8 = arith.index_cast %arg0 : i32 to index
    %9 = arith.index_cast %arg0 : i32 to index
    %10 = arith.index_cast %arg0 : i32 to index
    %11 = arith.index_cast %arg0 : i32 to index
    %12 = arith.index_cast %arg0 : i32 to index
    %13 = arith.index_cast %arg0 : i32 to index
    %14 = arith.index_cast %arg0 : i32 to index
    %15 = arith.index_cast %arg0 : i32 to index
    %16 = arith.index_cast %arg0 : i32 to index
    %17 = arith.index_cast %arg0 : i32 to index
    %18 = arith.index_cast %arg0 : i32 to index
    %19 = arith.index_cast %arg0 : i32 to index
    %20 = arith.index_cast %arg0 : i32 to index
    %21 = arith.index_cast %arg0 : i32 to index
    %22 = arith.index_cast %arg0 : i32 to index
    %23 = arith.index_cast %arg0 : i32 to index
    %24 = arith.index_cast %arg0 : i32 to index
    %25 = arith.index_cast %arg0 : i32 to index
    %26 = arith.index_cast %arg0 : i32 to index
    %27 = arith.index_cast %arg0 : i32 to index
    %28 = arith.index_cast %arg0 : i32 to index
    %29 = arith.index_cast %arg0 : i32 to index
    %30 = arith.index_cast %arg0 : i32 to index
    affine.for %arg3 = 0 to %0 {
      affine.for %arg4 = #map(%arg3)[%1] to %1 {
        affine.if #set(%arg4) {
          %31 = affine.load %arg2[-%arg3 + symbol(%2) - 1, %arg4] : memref<?x2500xi32>
          %32 = affine.load %arg2[-%arg3 + symbol(%3) - 1, %arg4 - 1] : memref<?x2500xi32>
          %33 = arith.cmpi sge, %31, %32 : i32
          %34 = scf.if %33 -> (i32) {
            %35 = affine.load %arg2[-%arg3 + symbol(%4) - 1, %arg4] : memref<?x2500xi32>
            scf.yield %35 : i32
          } else {
            %35 = affine.load %arg2[-%arg3 + symbol(%5) - 1, %arg4 - 1] : memref<?x2500xi32>
            scf.yield %35 : i32
          }
          affine.store %34, %arg2[-%arg3 + symbol(%6) - 1, %arg4] : memref<?x2500xi32>
        }
        affine.if #set(%arg3) {
          %31 = affine.load %arg2[-%arg3 + symbol(%7) - 1, %arg4] : memref<?x2500xi32>
          %32 = affine.load %arg2[-%arg3 + symbol(%8), %arg4] : memref<?x2500xi32>
          %33 = arith.cmpi sge, %31, %32 : i32
          %34 = scf.if %33 -> (i32) {
            %35 = affine.load %arg2[-%arg3 + symbol(%9) - 1, %arg4] : memref<?x2500xi32>
            scf.yield %35 : i32
          } else {
            %35 = affine.load %arg2[-%arg3 + symbol(%10), %arg4] : memref<?x2500xi32>
            scf.yield %35 : i32
          }
          affine.store %34, %arg2[-%arg3 + symbol(%11) - 1, %arg4] : memref<?x2500xi32>
        }
        affine.if #set1(%arg4, %arg3) {
          affine.if #set2(%arg3, %arg4)[%13] {
            %31 = affine.load %arg2[-%arg3 + symbol(%12) - 1, %arg4] : memref<?x2500xi32>
            %32 = affine.load %arg2[-%arg3 + symbol(%14), %arg4 - 1] : memref<?x2500xi32>
            %33 = affine.load %arg1[-%arg3 + symbol(%15) - 1] : memref<?xi8>
            %34 = arith.extsi %33 : i8 to i32
            %35 = affine.load %arg1[%arg4] : memref<?xi8>
            %36 = arith.extsi %35 : i8 to i32
            %37 = arith.addi %34, %36 : i32
            %38 = arith.cmpi eq, %37, %c3_i32 : i32
            %39 = arith.extui %38 : i1 to i32
            %40 = arith.addi %32, %39 : i32
            %41 = arith.cmpi sge, %31, %40 : i32
            %42 = scf.if %41 -> (i32) {
              %43 = affine.load %arg2[-%arg3 + symbol(%16) - 1, %arg4] : memref<?x2500xi32>
              scf.yield %43 : i32
            } else {
              %43 = affine.load %arg2[-%arg3 + symbol(%17), %arg4 - 1] : memref<?x2500xi32>
              %44 = affine.load %arg1[-%arg3 + symbol(%18) - 1] : memref<?xi8>
              %45 = arith.extsi %44 : i8 to i32
              %46 = arith.extsi %35 : i8 to i32
              %47 = arith.addi %45, %46 : i32
              %48 = arith.cmpi eq, %47, %c3_i32 : i32
              %49 = arith.extui %48 : i1 to i32
              %50 = arith.addi %43, %49 : i32
              scf.yield %50 : i32
            }
            affine.store %42, %arg2[-%arg3 + symbol(%19) - 1, %arg4] : memref<?x2500xi32>
          } else {
            %31 = affine.load %arg2[-%arg3 + symbol(%20) - 1, %arg4] : memref<?x2500xi32>
            %32 = affine.load %arg2[-%arg3 + symbol(%21), %arg4 - 1] : memref<?x2500xi32>
            %33 = arith.cmpi sge, %31, %32 : i32
            %34 = scf.if %33 -> (i32) {
              %35 = affine.load %arg2[-%arg3 + symbol(%22) - 1, %arg4] : memref<?x2500xi32>
              scf.yield %35 : i32
            } else {
              %35 = affine.load %arg2[-%arg3 + symbol(%23), %arg4 - 1] : memref<?x2500xi32>
              scf.yield %35 : i32
            }
            affine.store %34, %arg2[-%arg3 + symbol(%24) - 1, %arg4] : memref<?x2500xi32>
          }
        }
        affine.for %arg5 = #map(%arg3)[%25] to #map1(%arg4) {
          %31 = affine.load %arg2[-%arg3 + symbol(%26) - 1, %arg4] : memref<?x2500xi32>
          %32 = affine.load %arg2[-%arg3 + symbol(%27) - 1, %arg5] : memref<?x2500xi32>
          %33 = affine.load %arg2[%arg5 + 1, %arg4] : memref<?x2500xi32>
          %34 = arith.addi %32, %33 : i32
          %35 = arith.cmpi sge, %31, %34 : i32
          %36 = scf.if %35 -> (i32) {
            %37 = affine.load %arg2[-%arg3 + symbol(%28) - 1, %arg4] : memref<?x2500xi32>
            scf.yield %37 : i32
          } else {
            %37 = affine.load %arg2[-%arg3 + symbol(%29) - 1, %arg5] : memref<?x2500xi32>
            %38 = arith.addi %37, %33 : i32
            scf.yield %38 : i32
          }
          affine.store %36, %arg2[-%arg3 + symbol(%30) - 1, %arg4] : memref<?x2500xi32>
        }
      }
    }
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @print_array(%arg0: i32, %arg1: memref<?x2500xi32>) attributes {llvm.linkage = #llvm.linkage<internal>} {
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
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<6 x i8>
    %12 = llvm.call @fprintf(%7, %9, %11) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %13 = arith.index_cast %arg0 : i32 to index
    %14 = scf.for %arg2 = %c0 to %13 step %c1 iter_args(%arg3 = %c0_i32) -> (i32) {
      %25 = arith.index_cast %arg0 : i32 to index
      %26 = arith.subi %25, %arg2 : index
      %27 = arith.index_cast %arg3 : i32 to index
      %28 = arith.addi %27, %26 : index
      %29 = arith.index_cast %28 : index to i32
      scf.for %arg4 = %arg2 to %25 step %c1 {
        %30 = arith.subi %arg4, %arg2 : index
        %31 = arith.index_cast %arg3 : i32 to index
        %32 = arith.addi %31, %30 : index
        %33 = arith.index_cast %32 : index to i32
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
        %39 = llvm.getelementptr %38[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4 x i8>
        %40 = memref.load %arg1[%arg2, %arg4] : memref<?x2500xi32>
        %41 = llvm.call @fprintf(%37, %39, %40) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, i32) -> i32
      }
      scf.yield %29 : i32
    }
    %15 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
    %16 = "polygeist.memref2pointer"(%15) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %17 = llvm.mlir.addressof @str6 : !llvm.ptr
    %18 = llvm.getelementptr %17[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<17 x i8>
    %19 = llvm.call @fprintf(%16, %18, %11) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %20 = llvm.load %0 : !llvm.ptr -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
    %21 = "polygeist.memref2pointer"(%20) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %22 = llvm.mlir.addressof @str7 : !llvm.ptr
    %23 = llvm.getelementptr %22[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<23 x i8>
    %24 = llvm.call @fprintf(%21, %23) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
    return
  }
}
