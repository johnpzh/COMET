####====---------------------------------====####

memory object: `%alloc = memref.alloc() : memref<4096x2160xf32>`
object name: %alloc
read time-complexity: O(26542080)
write time-complexity: O(8847360)

memory object: `%alloc_6 = memref.alloc() : memref<4096x2160xf32>`
object name: %alloc_6
read time-complexity: O(26542080)
write time-complexity: O(17694720)

memory object: `%alloc_7 = memref.alloc() : memref<4096x2160xf32>`
object name: %alloc_7
read time-complexity: O(35389440)
write time-complexity: O(17694720)

memory object: `%alloc_8 = memref.alloc() : memref<4096x2160xf32>`
object name: %alloc_8
read time-complexity: O(35389440)
write time-complexity: O(17694720)

Read Time Complexity:
O(35389440)	|	%alloc_8
O(35389440)	|	%alloc_7
O(26542080)	|	%alloc_6
O(26542080)	|	%alloc

Write Time Complexity:
O(17694720)	|	%alloc_8
O(17694720)	|	%alloc_7
O(17694720)	|	%alloc_6
O(8847360)	|	%alloc
####====---------------------------------====####
module {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%0.2f \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("imgOut\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main() attributes {llvm.linkage = #llvm.linkage<external>} {
    %c4095 = arith.constant 4095 : index
    %c2159 = arith.constant 2159 : index
    %c2160 = arith.constant 2160 : index
    %c4096 = arith.constant 4096 : index
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant -2.000000e+00 : f32
    %cst_1 = arith.constant 2.000000e+00 : f32
    %cst_2 = arith.constant 1.000000e+00 : f32
    %cst_3 = arith.constant 2.500000e-01 : f32
    %c313_i32 = arith.constant 313 : i32
    %c991_i32 = arith.constant 991 : i32
    %c65536_i32 = arith.constant 65536 : i32
    %cst_4 = arith.constant 6.553500e+04 : f32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloca = memref.alloca() : memref<1xf32>
    %0 = llvm.mlir.undef : f32
    memref.store %0, %alloca[%c0] : memref<1xf32>
    %alloc = memref.alloc() : memref<4096x2160xf32>
    %alloc_5 = memref.alloc() : memref<4096x2160xf32>
    %alloc_6 = memref.alloc() : memref<4096x2160xf32>
    %alloc_7 = memref.alloc() : memref<4096x2160xf32>
    memref.store %cst_3, %alloca[%c0] : memref<1xf32>
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      %23 = arith.index_cast %arg0 : index to i32
      scf.for %arg1 = %c0 to %c2160 step %c1 {
        %24 = arith.index_cast %arg1 : index to i32
        %25 = arith.muli %23, %c313_i32 : i32
        %26 = arith.muli %24, %c991_i32 : i32
        %27 = arith.addi %25, %26 : i32
        %28 = arith.remsi %27, %c65536_i32 : i32
        %29 = arith.sitofp %28 : i32 to f32
        %30 = arith.divf %29, %cst_4 : f32
        memref.store %30, %alloc[%arg0, %arg1] : memref<4096x2160xf32>
      }
    }
    %1 = memref.load %alloca[%c0] : memref<1xf32>
    %alloca_8 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_8[] : memref<f32>
    %alloca_9 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_9[] : memref<f32>
    %alloca_10 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_10[] : memref<f32>
    %alloca_11 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_11[] : memref<f32>
    %alloca_12 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_12[] : memref<f32>
    %alloca_13 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_13[] : memref<f32>
    %alloca_14 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_14[] : memref<f32>
    %alloca_15 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_15[] : memref<f32>
    %alloca_16 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_16[] : memref<f32>
    %alloca_17 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_17[] : memref<f32>
    %2 = arith.negf %1 : f32
    %3 = math.exp %2 : f32
    %4 = arith.subf %cst_2, %3 : f32
    %5 = arith.mulf %4, %4 : f32
    %6 = arith.mulf %1, %cst_1 : f32
    %7 = arith.mulf %6, %3 : f32
    %8 = arith.addf %7, %cst_2 : f32
    %9 = math.exp %6 : f32
    %10 = arith.subf %8, %9 : f32
    %11 = arith.divf %5, %10 : f32
    %12 = arith.mulf %11, %3 : f32
    %13 = arith.subf %1, %cst_2 : f32
    %14 = arith.mulf %12, %13 : f32
    %15 = arith.addf %1, %cst_2 : f32
    %16 = arith.mulf %12, %15 : f32
    %17 = arith.negf %11 : f32
    %18 = arith.mulf %1, %cst_0 : f32
    %19 = math.exp %18 : f32
    %20 = arith.mulf %17, %19 : f32
    %21 = math.powf %cst_1, %2 : f32
    %22 = arith.negf %19 : f32
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      memref.store %cst, %alloca_15[] : memref<f32>
      memref.store %cst, %alloca_14[] : memref<f32>
      memref.store %cst, %alloca_17[] : memref<f32>
      scf.for %arg1 = %c0 to %c2160 step %c1 {
        %23 = memref.load %alloc[%arg0, %arg1] : memref<4096x2160xf32>
        %24 = arith.mulf %11, %23 : f32
        %25 = memref.load %alloca_17[] : memref<f32>
        %26 = arith.mulf %14, %25 : f32
        %27 = arith.addf %24, %26 : f32
        %28 = memref.load %alloca_15[] : memref<f32>
        %29 = arith.mulf %21, %28 : f32
        %30 = arith.addf %27, %29 : f32
        %31 = memref.load %alloca_14[] : memref<f32>
        %32 = arith.mulf %22, %31 : f32
        %33 = arith.addf %30, %32 : f32
        memref.store %33, %alloc_6[%arg0, %arg1] : memref<4096x2160xf32>
        %34 = memref.load %alloc[%arg0, %arg1] : memref<4096x2160xf32>
        memref.store %34, %alloca_17[] : memref<f32>
        memref.store %28, %alloca_14[] : memref<f32>
        %35 = memref.load %alloc_6[%arg0, %arg1] : memref<4096x2160xf32>
        memref.store %35, %alloca_15[] : memref<f32>
      }
    }
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      memref.store %cst, %alloca_9[] : memref<f32>
      memref.store %cst, %alloca_8[] : memref<f32>
      memref.store %cst, %alloca_13[] : memref<f32>
      memref.store %cst, %alloca_12[] : memref<f32>
      scf.for %arg1 = %c0 to %c2160 step %c1 {
        %23 = memref.load %alloca_13[] : memref<f32>
        %24 = arith.mulf %16, %23 : f32
        %25 = memref.load %alloca_12[] : memref<f32>
        %26 = arith.mulf %20, %25 : f32
        %27 = arith.addf %24, %26 : f32
        %28 = memref.load %alloca_9[] : memref<f32>
        %29 = arith.mulf %21, %28 : f32
        %30 = arith.addf %27, %29 : f32
        %31 = memref.load %alloca_8[] : memref<f32>
        %32 = arith.mulf %22, %31 : f32
        %33 = arith.addf %30, %32 : f32
        %34 = arith.subi %c2159, %arg1 : index
        memref.store %33, %alloc_7[%arg0, %34] : memref<4096x2160xf32>
        memref.store %23, %alloca_12[] : memref<f32>
        %35 = memref.load %alloc[%arg0, %34] : memref<4096x2160xf32>
        memref.store %35, %alloca_13[] : memref<f32>
        memref.store %28, %alloca_8[] : memref<f32>
        %36 = memref.load %alloc_7[%arg0, %34] : memref<4096x2160xf32>
        memref.store %36, %alloca_9[] : memref<f32>
      }
    }
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c2160 step %c1 {
        %23 = memref.load %alloc_6[%arg0, %arg1] : memref<4096x2160xf32>
        %24 = memref.load %alloc_7[%arg0, %arg1] : memref<4096x2160xf32>
        %25 = arith.addf %23, %24 : f32
        memref.store %25, %alloc_5[%arg0, %arg1] : memref<4096x2160xf32>
      }
    }
    scf.for %arg0 = %c0 to %c2160 step %c1 {
      memref.store %cst, %alloca_16[] : memref<f32>
      memref.store %cst, %alloca_15[] : memref<f32>
      memref.store %cst, %alloca_14[] : memref<f32>
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        %23 = memref.load %alloc_5[%arg1, %arg0] : memref<4096x2160xf32>
        %24 = arith.mulf %11, %23 : f32
        %25 = memref.load %alloca_16[] : memref<f32>
        %26 = arith.mulf %14, %25 : f32
        %27 = arith.addf %24, %26 : f32
        %28 = memref.load %alloca_15[] : memref<f32>
        %29 = arith.mulf %21, %28 : f32
        %30 = arith.addf %27, %29 : f32
        %31 = memref.load %alloca_14[] : memref<f32>
        %32 = arith.mulf %22, %31 : f32
        %33 = arith.addf %30, %32 : f32
        memref.store %33, %alloc_6[%arg1, %arg0] : memref<4096x2160xf32>
        %34 = memref.load %alloc_5[%arg1, %arg0] : memref<4096x2160xf32>
        memref.store %34, %alloca_16[] : memref<f32>
        memref.store %28, %alloca_14[] : memref<f32>
        %35 = memref.load %alloc_6[%arg1, %arg0] : memref<4096x2160xf32>
        memref.store %35, %alloca_15[] : memref<f32>
      }
    }
    scf.for %arg0 = %c0 to %c2160 step %c1 {
      memref.store %cst, %alloca_11[] : memref<f32>
      memref.store %cst, %alloca_10[] : memref<f32>
      memref.store %cst, %alloca_9[] : memref<f32>
      memref.store %cst, %alloca_8[] : memref<f32>
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        %23 = memref.load %alloca_11[] : memref<f32>
        %24 = arith.mulf %16, %23 : f32
        %25 = memref.load %alloca_10[] : memref<f32>
        %26 = arith.mulf %20, %25 : f32
        %27 = arith.addf %24, %26 : f32
        %28 = memref.load %alloca_9[] : memref<f32>
        %29 = arith.mulf %21, %28 : f32
        %30 = arith.addf %27, %29 : f32
        %31 = memref.load %alloca_8[] : memref<f32>
        %32 = arith.mulf %22, %31 : f32
        %33 = arith.addf %30, %32 : f32
        %34 = arith.subi %c4095, %arg1 : index
        memref.store %33, %alloc_7[%34, %arg0] : memref<4096x2160xf32>
        memref.store %23, %alloca_10[] : memref<f32>
        %35 = memref.load %alloc_5[%34, %arg0] : memref<4096x2160xf32>
        memref.store %35, %alloca_11[] : memref<f32>
        memref.store %28, %alloca_8[] : memref<f32>
        %36 = memref.load %alloc_7[%34, %arg0] : memref<4096x2160xf32>
        memref.store %36, %alloca_9[] : memref<f32>
      }
    }
    scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c2160 step %c1 {
        %23 = memref.load %alloc_6[%arg0, %arg1] : memref<4096x2160xf32>
        %24 = memref.load %alloc_7[%arg0, %arg1] : memref<4096x2160xf32>
        %25 = arith.addf %23, %24 : f32
        memref.store %25, %alloc_5[%arg0, %arg1] : memref<4096x2160xf32>
      }
    }
    memref.dealloc %alloc : memref<4096x2160xf32>
    memref.dealloc %alloc_5 : memref<4096x2160xf32>
    memref.dealloc %alloc_6 : memref<4096x2160xf32>
    memref.dealloc %alloc_7 : memref<4096x2160xf32>
    return
  }
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}
