module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2lf \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("G\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @stderr() {addr_space = 0 : i32} : memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main(%arg0: i32, %arg1: memref<?xmemref<?xi8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0_i32 = arith.constant 0 : i32
    %c42_i32 = arith.constant 42 : i32
    %c1200_i32 = arith.constant 1200 : i32
    %c1100_i32 = arith.constant 1100 : i32
    %c1000_i32 = arith.constant 1000 : i32
    %c900_i32 = arith.constant 900 : i32
    %c800_i32 = arith.constant 800 : i32
    %alloc = memref.alloc() : memref<800x900xf64>
    %alloc_0 = memref.alloc() : memref<800x1000xf64>
    %alloc_1 = memref.alloc() : memref<1000x900xf64>
    %alloc_2 = memref.alloc() : memref<900x1100xf64>
    %alloc_3 = memref.alloc() : memref<900x1200xf64>
    %alloc_4 = memref.alloc() : memref<1200x1100xf64>
    %alloc_5 = memref.alloc() : memref<800x1100xf64>
    %cast = memref.cast %alloc_0 : memref<800x1000xf64> to memref<?x1000xf64>
    %cast_6 = memref.cast %alloc_1 : memref<1000x900xf64> to memref<?x900xf64>
    %cast_7 = memref.cast %alloc_3 : memref<900x1200xf64> to memref<?x1200xf64>
    %cast_8 = memref.cast %alloc_4 : memref<1200x1100xf64> to memref<?x1100xf64>
    call @init_array(%c800_i32, %c900_i32, %c1000_i32, %c1100_i32, %c1200_i32, %cast, %cast_6, %cast_7, %cast_8) : (i32, i32, i32, i32, i32, memref<?x1000xf64>, memref<?x900xf64>, memref<?x1200xf64>, memref<?x1100xf64>) -> ()
    %cast_9 = memref.cast %alloc : memref<800x900xf64> to memref<?x900xf64>
    %cast_10 = memref.cast %alloc_0 : memref<800x1000xf64> to memref<?x1000xf64>
    %cast_11 = memref.cast %alloc_1 : memref<1000x900xf64> to memref<?x900xf64>
    %cast_12 = memref.cast %alloc_2 : memref<900x1100xf64> to memref<?x1100xf64>
    %cast_13 = memref.cast %alloc_3 : memref<900x1200xf64> to memref<?x1200xf64>
    %cast_14 = memref.cast %alloc_4 : memref<1200x1100xf64> to memref<?x1100xf64>
    %cast_15 = memref.cast %alloc_5 : memref<800x1100xf64> to memref<?x1100xf64>
    call @kernel_3mm(%c800_i32, %c900_i32, %c1000_i32, %c1100_i32, %c1200_i32, %cast_9, %cast_10, %cast_11, %cast_12, %cast_13, %cast_14, %cast_15) : (i32, i32, i32, i32, i32, memref<?x900xf64>, memref<?x1000xf64>, memref<?x900xf64>, memref<?x1100xf64>, memref<?x1200xf64>, memref<?x1100xf64>, memref<?x1100xf64>) -> ()
    %0 = arith.cmpi sgt, %arg0, %c42_i32 : i32
    scf.if %0 {
      %1 = affine.load %arg1[0] : memref<?xmemref<?xi8>>
      %2 = llvm.mlir.addressof @str0 : !llvm.ptr
      %3 = "polygeist.pointer2memref"(%2) : (!llvm.ptr) -> memref<?xi8>
      %4 = func.call @strcmp(%1, %3) : (memref<?xi8>, memref<?xi8>) -> i32
      %5 = arith.cmpi eq, %4, %c0_i32 : i32
      scf.if %5 {
        %cast_16 = memref.cast %alloc_5 : memref<800x1100xf64> to memref<?x1100xf64>
        func.call @print_array(%c800_i32, %c1100_i32, %cast_16) : (i32, i32, memref<?x1100xf64>) -> ()
      }
    }
    memref.dealloc %alloc : memref<800x900xf64>
    memref.dealloc %alloc_0 : memref<800x1000xf64>
    memref.dealloc %alloc_1 : memref<1000x900xf64>
    memref.dealloc %alloc_2 : memref<900x1100xf64>
    memref.dealloc %alloc_3 : memref<900x1200xf64>
    memref.dealloc %alloc_4 : memref<1200x1100xf64>
    memref.dealloc %alloc_5 : memref<800x1100xf64>
    return %c0_i32 : i32
  }
  func.func private @init_array(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x1000xf64>, %arg6: memref<?x900xf64>, %arg7: memref<?x1200xf64>, %arg8: memref<?x1100xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c3_i32 = arith.constant 3 : i32
    %c2_i32 = arith.constant 2 : i32
    %c5_i32 = arith.constant 5 : i32
    %c1_i32 = arith.constant 1 : i32
    %0 = arith.index_cast %arg0 : i32 to index
    scf.for %arg9 = %c0 to %0 step %c1 {
      %4 = arith.index_cast %arg9 : index to i32
      %5 = arith.index_cast %arg2 : i32 to index
      scf.for %arg10 = %c0 to %5 step %c1 {
        %6 = arith.index_cast %arg10 : index to i32
        %7 = arith.muli %4, %6 : i32
        %8 = arith.addi %7, %c1_i32 : i32
        %9 = arith.remsi %8, %arg0 : i32
        %10 = arith.sitofp %9 : i32 to f64
        %11 = arith.muli %arg0, %c5_i32 : i32
        %12 = arith.sitofp %11 : i32 to f64
        %13 = arith.divf %10, %12 : f64
        memref.store %13, %arg5[%arg9, %arg10] : memref<?x1000xf64>
      }
    }
    %1 = arith.index_cast %arg2 : i32 to index
    scf.for %arg9 = %c0 to %1 step %c1 {
      %4 = arith.index_cast %arg9 : index to i32
      %5 = arith.index_cast %arg1 : i32 to index
      scf.for %arg10 = %c0 to %5 step %c1 {
        %6 = arith.index_cast %arg10 : index to i32
        %7 = arith.addi %6, %c1_i32 : i32
        %8 = arith.muli %4, %7 : i32
        %9 = arith.addi %8, %c2_i32 : i32
        %10 = arith.remsi %9, %arg1 : i32
        %11 = arith.sitofp %10 : i32 to f64
        %12 = arith.muli %arg1, %c5_i32 : i32
        %13 = arith.sitofp %12 : i32 to f64
        %14 = arith.divf %11, %13 : f64
        memref.store %14, %arg6[%arg9, %arg10] : memref<?x900xf64>
      }
    }
    %2 = arith.index_cast %arg1 : i32 to index
    scf.for %arg9 = %c0 to %2 step %c1 {
      %4 = arith.index_cast %arg9 : index to i32
      %5 = arith.index_cast %arg4 : i32 to index
      scf.for %arg10 = %c0 to %5 step %c1 {
        %6 = arith.index_cast %arg10 : index to i32
        %7 = arith.addi %6, %c3_i32 : i32
        %8 = arith.muli %4, %7 : i32
        %9 = arith.remsi %8, %arg3 : i32
        %10 = arith.sitofp %9 : i32 to f64
        %11 = arith.muli %arg3, %c5_i32 : i32
        %12 = arith.sitofp %11 : i32 to f64
        %13 = arith.divf %10, %12 : f64
        memref.store %13, %arg7[%arg9, %arg10] : memref<?x1200xf64>
      }
    }
    %3 = arith.index_cast %arg4 : i32 to index
    scf.for %arg9 = %c0 to %3 step %c1 {
      %4 = arith.index_cast %arg9 : index to i32
      %5 = arith.index_cast %arg3 : i32 to index
      scf.for %arg10 = %c0 to %5 step %c1 {
        %6 = arith.index_cast %arg10 : index to i32
        %7 = arith.addi %6, %c2_i32 : i32
        %8 = arith.muli %4, %7 : i32
        %9 = arith.addi %8, %c2_i32 : i32
        %10 = arith.remsi %9, %arg2 : i32
        %11 = arith.sitofp %10 : i32 to f64
        %12 = arith.muli %arg2, %c5_i32 : i32
        %13 = arith.sitofp %12 : i32 to f64
        %14 = arith.divf %11, %13 : f64
        memref.store %14, %arg8[%arg9, %arg10] : memref<?x1100xf64>
      }
    }
    return
  }
  func.func private @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x900xf64>, %arg6: memref<?x1000xf64>, %arg7: memref<?x900xf64>, %arg8: memref<?x1100xf64>, %arg9: memref<?x1200xf64>, %arg10: memref<?x1100xf64>, %arg11: memref<?x1100xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg2 : i32 to index
    %2 = arith.index_cast %arg4 : i32 to index
    %3 = arith.index_cast %arg3 : i32 to index
    %4 = arith.index_cast %arg0 : i32 to index
    affine.for %arg12 = 0 to %4 {
      affine.for %arg13 = 0 to %0 {
        affine.store %cst, %arg5[%arg12, %arg13] : memref<?x900xf64>
        affine.for %arg14 = 0 to %1 {
          %6 = affine.load %arg6[%arg12, %arg14] : memref<?x1000xf64>
          %7 = affine.load %arg7[%arg14, %arg13] : memref<?x900xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = affine.load %arg5[%arg12, %arg13] : memref<?x900xf64>
          %10 = arith.addf %9, %8 : f64
          affine.store %10, %arg5[%arg12, %arg13] : memref<?x900xf64>
        }
      }
    }
    %5 = arith.index_cast %arg1 : i32 to index
    affine.for %arg12 = 0 to %5 {
      affine.for %arg13 = 0 to %3 {
        affine.store %cst, %arg8[%arg12, %arg13] : memref<?x1100xf64>
        affine.for %arg14 = 0 to %2 {
          %6 = affine.load %arg9[%arg12, %arg14] : memref<?x1200xf64>
          %7 = affine.load %arg10[%arg14, %arg13] : memref<?x1100xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = affine.load %arg8[%arg12, %arg13] : memref<?x1100xf64>
          %10 = arith.addf %9, %8 : f64
          affine.store %10, %arg8[%arg12, %arg13] : memref<?x1100xf64>
        }
      }
    }
    affine.for %arg12 = 0 to %4 {
      affine.for %arg13 = 0 to %3 {
        affine.store %cst, %arg11[%arg12, %arg13] : memref<?x1100xf64>
        affine.for %arg14 = 0 to %5 {
          %6 = affine.load %arg5[%arg12, %arg14] : memref<?x900xf64>
          %7 = affine.load %arg8[%arg14, %arg13] : memref<?x1100xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = affine.load %arg11[%arg12, %arg13] : memref<?x1100xf64>
          %10 = arith.addf %9, %8 : f64
          affine.store %10, %arg11[%arg12, %arg13] : memref<?x1100xf64>
        }
      }
    }
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @print_array(%arg0: i32, %arg1: i32, %arg2: memref<?x1100xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
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
        %35 = memref.load %arg2[%arg3, %arg4] : memref<?x1100xf64>
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
