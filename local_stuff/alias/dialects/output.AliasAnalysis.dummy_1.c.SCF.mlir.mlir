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
alloca#0 <-> for_loop.region0#0: MayAlias
alloca_0#0 <-> for_loop.region0#0: MayAlias
v_0#0 <-> for_loop.region0#0: MayAlias
v_1#0 <-> for_loop.region0#0: MayAlias
v_2#0 <-> for_loop.region0#0: MayAlias
v_3#0 <-> for_loop.region0#0: MayAlias
v_4#0 <-> for_loop.region0#0: MayAlias
v_5#0 <-> for_loop.region0#0: MayAlias
v_6#0 <-> for_loop.region0#0: MayAlias
v_7#0 <-> for_loop.region0#0: MayAlias
v_8#0 <-> for_loop.region0#0: MayAlias
module {
  func.func @dummy_1() {
    %c10 = arith.constant 10 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c9_i32 = arith.constant 9 : i32
    %alloca = memref.alloca() {test.ptr = "alloca"} : memref<10xi8>
    %alloca_0 = memref.alloca() {test.ptr = "alloca_0"} : memref<2xi8>
    scf.for %arg0 = %c0 to %c10 step %c1 {
      %0 = arith.index_cast %arg0 {test.ptr = "v_0"} : index to i32
      %1 = memref.load %alloca[%arg0] {test.ptr = "v_1"} : memref<10xi8>
      %2 = affine.load %alloca_0[0] {test.ptr = "v_2"} : memref<2xi8>
      %3 = arith.addi %2, %1 {test.ptr = "v_3"} : i8
      affine.store %3, %alloca_0[0] : memref<2xi8>
      %4 = arith.subi %c9_i32, %0 {test.ptr = "v_4"} : i32
      %5 = arith.index_cast %4 {test.ptr = "v_5"} : i32 to index
      %6 = memref.load %alloca[%5] {test.ptr = "v_6"} : memref<10xi8>
      %7 = affine.load %alloca_0[1] {test.ptr = "v_7"} : memref<2xi8>
      %8 = arith.addi %7, %6 {test.ptr = "v_8"} : i8
      affine.store %8, %alloca_0[1] : memref<2xi8>
    } {test.ptr = "for_loop"}
    return
  }
}

