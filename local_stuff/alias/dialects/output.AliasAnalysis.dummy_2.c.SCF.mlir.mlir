Testing : <<NULL ATTRIBUTE>>
alloca#0 <-> alloca_0#0: NoAlias
alloca#0 <-> v_0#0: MayAlias
alloca_0#0 <-> v_0#0: MayAlias
alloca#0 <-> v_1#0: MayAlias
alloca_0#0 <-> v_1#0: MayAlias
v_0#0 <-> v_1#0: MayAlias
alloca#0 <-> v_2#0: MayAlias
alloca_0#0 <-> v_2#0: MayAlias
v_0#0 <-> v_2#0: MayAlias
v_1#0 <-> v_2#0: MayAlias
alloca#0 <-> v_3#0: MayAlias
alloca_0#0 <-> v_3#0: MayAlias
v_0#0 <-> v_3#0: MayAlias
v_1#0 <-> v_3#0: MayAlias
v_2#0 <-> v_3#0: MayAlias
alloca#0 <-> v_4#0: MayAlias
alloca_0#0 <-> v_4#0: MayAlias
v_0#0 <-> v_4#0: MayAlias
v_1#0 <-> v_4#0: MayAlias
v_2#0 <-> v_4#0: MayAlias
v_3#0 <-> v_4#0: MayAlias
alloca#0 <-> v_5#0: MayAlias
alloca_0#0 <-> v_5#0: MayAlias
v_0#0 <-> v_5#0: MayAlias
v_1#0 <-> v_5#0: MayAlias
v_2#0 <-> v_5#0: MayAlias
v_3#0 <-> v_5#0: MayAlias
v_4#0 <-> v_5#0: MayAlias
alloca#0 <-> v_6#0: MayAlias
alloca_0#0 <-> v_6#0: MayAlias
v_0#0 <-> v_6#0: MayAlias
v_1#0 <-> v_6#0: MayAlias
v_2#0 <-> v_6#0: MayAlias
v_3#0 <-> v_6#0: MayAlias
v_4#0 <-> v_6#0: MayAlias
v_5#0 <-> v_6#0: MayAlias
alloca#0 <-> v_7#0: MayAlias
alloca_0#0 <-> v_7#0: MayAlias
v_0#0 <-> v_7#0: MayAlias
v_1#0 <-> v_7#0: MayAlias
v_2#0 <-> v_7#0: MayAlias
v_3#0 <-> v_7#0: MayAlias
v_4#0 <-> v_7#0: MayAlias
v_5#0 <-> v_7#0: MayAlias
v_6#0 <-> v_7#0: MayAlias
alloca#0 <-> v_8#0: MayAlias
alloca_0#0 <-> v_8#0: MayAlias
v_0#0 <-> v_8#0: MayAlias
v_1#0 <-> v_8#0: MayAlias
v_2#0 <-> v_8#0: MayAlias
v_3#0 <-> v_8#0: MayAlias
v_4#0 <-> v_8#0: MayAlias
v_5#0 <-> v_8#0: MayAlias
v_6#0 <-> v_8#0: MayAlias
v_7#0 <-> v_8#0: MayAlias
alloca#0 <-> v_9#0: MayAlias
alloca_0#0 <-> v_9#0: MayAlias
v_0#0 <-> v_9#0: MayAlias
v_1#0 <-> v_9#0: MayAlias
v_2#0 <-> v_9#0: MayAlias
v_3#0 <-> v_9#0: MayAlias
v_4#0 <-> v_9#0: MayAlias
v_5#0 <-> v_9#0: MayAlias
v_6#0 <-> v_9#0: MayAlias
v_7#0 <-> v_9#0: MayAlias
v_8#0 <-> v_9#0: MayAlias
module {
  func.func @dummy_2() {
    %c10 = arith.constant 10 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c9_i32 = arith.constant 9 : i32
    %alloca = memref.alloca() {test.ptr = "alloca"} : memref<10xi8>
    %alloca_0 = memref.alloca() {test.ptr = "alloca_0"} : memref<2xi8>
    %0 = "polygeist.memref2pointer"(%alloca_0) {test.ptr = "v_0"} : (memref<2xi8>) -> !llvm.ptr
    scf.for %arg0 = %c0 to %c10 step %c1 {
      %1 = arith.index_cast %arg0 {test.ptr = "v_1"} : index to i32
      %2 = memref.load %alloca[%arg0] {test.ptr = "v_2"} : memref<10xi8>
      %3 = arith.extsi %2 {test.ptr = "v_3"} : i8 to i32
      %4 = llvm.load %0 {test.ptr = "v_4"} : !llvm.ptr -> i16
      %5 = arith.trunci %3 {test.ptr = "v_5"} : i32 to i16
      %6 = arith.addi %4, %5 {test.ptr = "v_6"} : i16
      llvm.store %6, %0 : i16, !llvm.ptr
      %7 = arith.subi %c9_i32, %1 {test.ptr = "v_7"} : i32
      %8 = arith.index_cast %7 {test.ptr = "v_8"} : i32 to index
      %9 = memref.load %alloca[%8] {test.ptr = "v_9"} : memref<10xi8>
      affine.store %9, %alloca_0[1] : memref<2xi8>
    }
    return
  }
}

