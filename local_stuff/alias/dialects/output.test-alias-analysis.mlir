Testing : "simple"
alloca_1#0 <-> alloca_2#0: NoAlias
alloca_1#0 <-> alloc_1#0: NoAlias
alloca_2#0 <-> alloc_1#0: NoAlias
alloca_1#0 <-> alloc_2#0: NoAlias
alloca_2#0 <-> alloc_2#0: NoAlias
alloc_1#0 <-> alloc_2#0: NoAlias
alloca_1#0 <-> func.region0#0: NoAlias
alloca_2#0 <-> func.region0#0: NoAlias
alloc_1#0 <-> func.region0#0: NoAlias
alloc_2#0 <-> func.region0#0: NoAlias
alloca_1#0 <-> func.region0#1: NoAlias
alloca_2#0 <-> func.region0#1: NoAlias
alloc_1#0 <-> func.region0#1: NoAlias
alloc_2#0 <-> func.region0#1: NoAlias
func.region0#0 <-> func.region0#1: MayAlias
Testing : "control_flow"
alloca_1#0 <-> alloca_2#0: NoAlias
alloca_1#0 <-> alloc_1#0: NoAlias
alloca_2#0 <-> alloc_1#0: NoAlias
alloca_1#0 <-> func.region0#0: NoAlias
alloca_2#0 <-> func.region0#0: NoAlias
alloc_1#0 <-> func.region0#0: NoAlias
alloca_1#0 <-> func.region0#1: NoAlias
alloca_2#0 <-> func.region0#1: NoAlias
alloc_1#0 <-> func.region0#1: NoAlias
func.region0#0 <-> func.region0#1: MayAlias
alloca_1#0 <-> func.region0.block1#0: MustAlias
alloca_2#0 <-> func.region0.block1#0: NoAlias
alloc_1#0 <-> func.region0.block1#0: NoAlias
func.region0#0 <-> func.region0.block1#0: NoAlias
func.region0#1 <-> func.region0.block1#0: NoAlias
alloca_1#0 <-> func.region0.block2#0: MustAlias
alloca_2#0 <-> func.region0.block2#0: NoAlias
alloc_1#0 <-> func.region0.block2#0: NoAlias
func.region0#0 <-> func.region0.block2#0: NoAlias
func.region0#1 <-> func.region0.block2#0: NoAlias
func.region0.block1#0 <-> func.region0.block2#0: MustAlias
module {
  func.func @simple(%arg0: memref<2xf32>, %arg1: memref<2xf32>) attributes {test.ptr = "func"} {
    %alloca = memref.alloca() {test.ptr = "alloca_1"} : memref<8x64xf32>
    %alloca_0 = memref.alloca() {test.ptr = "alloca_2"} : memref<8x64xf32>
    %alloc = memref.alloc() {test.ptr = "alloc_1"} : memref<8x64xf32>
    %alloc_1 = memref.alloc() {test.ptr = "alloc_2"} : memref<8x64xf32>
    return
  }
}


// -----
module {
  func.func @control_flow(%arg0: memref<2xf32>, %arg1: i1) attributes {test.ptr = "func"} {
    %alloca = memref.alloca() {test.ptr = "alloca_1"} : memref<8x64xf32>
    %alloca_0 = memref.alloca() {test.ptr = "alloca_2"} : memref<8x64xf32>
    %alloc = memref.alloc() {test.ptr = "alloc_1"} : memref<8x64xf32>
    cf.cond_br %arg1, ^bb1(%alloca : memref<8x64xf32>), ^bb2(%alloca : memref<8x64xf32>)
  ^bb1(%0: memref<8x64xf32>):  // pred: ^bb0
    cf.br ^bb2(%0 : memref<8x64xf32>)
  ^bb2(%1: memref<8x64xf32>):  // 2 preds: ^bb0, ^bb1
    return
  }
}


// -----
module {
  func.func @control_flow_merge(%arg0: memref<2xf32>, %arg1: i1) attributes {test.ptr = "func"} {
    %alloca = memref.alloca() {test.ptr = "alloca_1"} : memref<8x64xf32>
    %alloca_0 = memref.alloca() {test.ptr = "alloca_2"} : memref<8x64xf32>
    %alloc = memref.alloc() {test.ptr = "alloc_1"} : memref<8x64xf32>
    cf.cond_br %arg1, ^bb1(%alloca : memref<8x64xf32>), ^bb2(%alloc : memref<8x64xf32>)
  ^bb1(%0: memref<8x64xf32>):  // pred: ^bb0
    cf.br ^bb2(%0 : memref<8x64xf32>)
  ^bb2(%1: memref<8x64xf32>):  // 2 preds: ^bb0, ^bb1
    return
  }
}


// -----
module {
  func.func @region_control_flow(%arg0: memref<2xf32>, %arg1: i1) attributes {test.ptr = "func"} {
    %alloca = memref.alloca() {test.ptr = "alloca_1"} : memref<8x64xf32>
    %alloca_0 = memref.alloca() {test.ptr = "alloca_2"} : memref<8x64xf32>
    %alloc = memref.alloc() {test.ptr = "alloc_1"} : memref<8x64xf32>
    %0 = scf.if %arg1 -> (memref<8x64xf32>) {
      scf.yield %alloca : memref<8x64xf32>
    } else {
      scf.yield %alloca : memref<8x64xf32>
    } {test.ptr = "if_alloca"}
    %1 = scf.if %arg1 -> (memref<8x64xf32>) {
      scf.yield %alloca : memref<8x64xf32>
Testing : "control_flow_merge"
alloca_1#0 <-> alloca_2#0: NoAlias
alloca_1#0 <-> alloc_1#0: NoAlias
alloca_2#0 <-> alloc_1#0: NoAlias
alloca_1#0 <-> func.region0#0: NoAlias
alloca_2#0 <-> func.region0#0: NoAlias
alloc_1#0 <-> func.region0#0: NoAlias
alloca_1#0 <-> func.region0#1: NoAlias
alloca_2#0 <-> func.region0#1: NoAlias
alloc_1#0 <-> func.region0#1: NoAlias
func.region0#0 <-> func.region0#1: MayAlias
alloca_1#0 <-> func.region0.block1#0: MustAlias
alloca_2#0 <-> func.region0.block1#0: NoAlias
alloc_1#0 <-> func.region0.block1#0: NoAlias
func.region0#0 <-> func.region0.block1#0: NoAlias
func.region0#1 <-> func.region0.block1#0: NoAlias
alloca_1#0 <-> func.region0.block2#0: MayAlias
alloca_2#0 <-> func.region0.block2#0: NoAlias
alloc_1#0 <-> func.region0.block2#0: MayAlias
func.region0#0 <-> func.region0.block2#0: NoAlias
func.region0#1 <-> func.region0.block2#0: NoAlias
func.region0.block1#0 <-> func.region0.block2#0: MayAlias
Testing : "region_control_flow"
alloca_1#0 <-> alloca_2#0: NoAlias
alloca_1#0 <-> alloc_1#0: NoAlias
alloca_2#0 <-> alloc_1#0: NoAlias
alloca_1#0 <-> if_alloca#0: MustAlias
alloca_2#0 <-> if_alloca#0: NoAlias
alloc_1#0 <-> if_alloca#0: NoAlias
alloca_1#0 <-> if_alloca_merge#0: MayAlias
alloca_2#0 <-> if_alloca_merge#0: MayAlias
alloc_1#0 <-> if_alloca_merge#0: NoAlias
if_alloca#0 <-> if_alloca_merge#0: MayAlias
alloca_1#0 <-> if_alloc#0: NoAlias
alloca_2#0 <-> if_alloc#0: NoAlias
alloc_1#0 <-> if_alloc#0: MustAlias
if_alloca#0 <-> if_alloc#0: NoAlias
if_alloca_merge#0 <-> if_alloc#0: NoAlias
alloca_1#0 <-> func.region0#0: NoAlias
alloca_2#0 <-> func.region0#0: NoAlias
alloc_1#0 <-> func.region0#0: NoAlias
if_alloca#0 <-> func.region0#0: NoAlias
if_alloca_merge#0 <-> func.region0#0: NoAlias
if_alloc#0 <-> func.region0#0: NoAlias
alloca_1#0 <-> func.region0#1: NoAlias
alloca_2#0 <-> func.region0#1: NoAlias
alloc_1#0 <-> func.region0#1: NoAlias
if_alloca#0 <-> func.region0#1: NoAlias
if_alloca_merge#0 <-> func.region0#1: NoAlias
if_alloc#0 <-> func.region0#1: NoAlias
func.region0#0 <-> func.region0#1: MayAlias
Testing : "region_loop_control_flow"
alloca_1#0 <-> alloca_2#0: NoAlias
alloca_1#0 <-> alloc_1#0: NoAlias
alloca_2#0 <-> alloc_1#0: NoAlias
alloca_1#0 <-> for_alloca#0: MustAlias
alloca_2#0 <-> for_alloca#0: NoAlias
alloc_1#0 <-> for_alloca#0: NoAlias
alloca_1#0 <-> for_alloca.region0#0: MayAlias
alloca_2#0 <-> for_alloca.region0#0: MayAlias
alloc_1#0 <-> for_alloca.region0#0: MayAlias
for_alloca#0 <-> for_alloca.region0#0: MayAlias
alloca_1#0 <-> for_alloca.region0#1: MustAlias
alloca_2#0 <-> for_alloca.region0#1: NoAlias
alloc_1#0 <-> for_alloca.region0#1: NoAlias
for_alloca#0 <-> for_alloca.region0#1: MustAlias
for_alloca.region0#0 <-> for_alloca.region0#1: MayAlias
alloca_1#0 <-> func.region0#0: NoAlias
alloca_2#0 <-> func.region0#0: NoAlias
alloc_1#0 <-> func.region0#0: NoAlias
for_alloca#0 <-> func.region0#0: NoAlias
for_alloca.region0#0 <-> func.region0#0: MayAlias
for_alloca.region0#1 <-> func.region0#0: NoAlias
alloca_1#0 <-> func.region0#1: NoAlias
alloca_2#0 <-> func.region0#1: NoAlias
alloc_1#0 <-> func.region0#1: NoAlias
for_alloca#0 <-> func.region0#1: NoAlias
for_alloca.region0#0 <-> func.region0#1: MayAlias
for_alloca.region0#1 <-> func.region0#1: NoAlias
func.region0#0 <-> func.region0#1: MayAlias
alloca_1#0 <-> func.region0#2: NoAlias
alloca_2#0 <-> func.region0#2: NoAlias
alloc_1#0 <-> func.region0#2: NoAlias
for_alloca#0 <-> func.region0#2: NoAlias
for_alloca.region0#0 <-> func.region0#2: MayAlias
for_alloca.region0#1 <-> func.region0#2: NoAlias
func.region0#0 <-> func.region0#2: MayAlias
func.region0#1 <-> func.region0#2: MayAlias
alloca_1#0 <-> func.region0#3: NoAlias
alloca_2#0 <-> func.region0#3: NoAlias
alloc_1#0 <-> func.region0#3: NoAlias
for_alloca#0 <-> func.region0#3: NoAlias
for_alloca.region0#0 <-> func.region0#3: MayAlias
for_alloca.region0#1 <-> func.region0#3: NoAlias
func.region0#0 <-> func.region0#3: MayAlias
func.region0#1 <-> func.region0#3: MayAlias
func.region0#2 <-> func.region0#3: MayAlias
Testing : "region_loop_zero_trip_count"
    } else {
      scf.yield %alloca_0 : memref<8x64xf32>
    } {test.ptr = "if_alloca_merge"}
    %2 = scf.if %arg1 -> (memref<8x64xf32>) {
      scf.yield %alloc : memref<8x64xf32>
    } else {
      scf.yield %alloc : memref<8x64xf32>
    } {test.ptr = "if_alloc"}
    return
  }
}


// -----
module {
  func.func @region_loop_control_flow(%arg0: memref<2xf32>, %arg1: index, %arg2: index, %arg3: index) attributes {test.ptr = "func"} {
    %alloca = memref.alloca() {test.ptr = "alloca_1"} : memref<8x64xf32>
    %alloca_0 = memref.alloca() {test.ptr = "alloca_2"} : memref<8x64xf32>
    %alloc = memref.alloc() {test.ptr = "alloc_1"} : memref<8x64xf32>
    %0 = scf.for %arg4 = %arg1 to %arg2 step %arg3 iter_args(%arg5 = %alloca) -> (memref<8x64xf32>) {
      scf.yield %arg5 : memref<8x64xf32>
    } {test.ptr = "for_alloca"}
    return
  }
}


// -----
module {
  func.func @region_loop_zero_trip_count() attributes {test.ptr = "func"} {
    %alloca = memref.alloca() {test.ptr = "alloca_1"} : memref<i32>
    %alloca_0 = memref.alloca() {test.ptr = "alloca_2"} : memref<i32>
    %0 = affine.for %arg0 = 0 to 0 iter_args(%arg1 = %alloca) -> (memref<i32>) {
      affine.yield %arg1 : memref<i32>
    } {test.ptr = "for_alloca"}
    return
  }
}


// -----
module {
  func.func @view_like(%arg0: memref<2xf32>, %arg1: index) attributes {test.ptr = "func"} {
    %alloc = memref.alloc() {test.ptr = "alloc_1"} : memref<8x64xf32>
    %c0 = arith.constant 0 : index
    %alloca = memref.alloca(%arg1) {test.ptr = "alloca_1"} : memref<?xi8>
    %view = memref.view %alloca[%c0][] {test.ptr = "view"} : memref<?xi8> to memref<8x64xf32>
    return
  }
}


// -----
alloca_1#0 <-> alloca_2#0: NoAlias
alloca_1#0 <-> for_alloca#0: MustAlias
alloca_2#0 <-> for_alloca#0: NoAlias
alloca_1#0 <-> for_alloca.region0#0: MayAlias
alloca_2#0 <-> for_alloca.region0#0: MayAlias
for_alloca#0 <-> for_alloca.region0#0: MayAlias
alloca_1#0 <-> for_alloca.region0#1: MayAlias
alloca_2#0 <-> for_alloca.region0#1: MayAlias
for_alloca#0 <-> for_alloca.region0#1: MayAlias
for_alloca.region0#0 <-> for_alloca.region0#1: MayAlias
Testing : "view_like"
alloc_1#0 <-> alloca_1#0: NoAlias
alloc_1#0 <-> view#0: NoAlias
alloca_1#0 <-> view#0: MustAlias
alloc_1#0 <-> func.region0#0: NoAlias
alloca_1#0 <-> func.region0#0: NoAlias
view#0 <-> func.region0#0: NoAlias
alloc_1#0 <-> func.region0#1: NoAlias
alloca_1#0 <-> func.region0#1: NoAlias
view#0 <-> func.region0#1: NoAlias
func.region0#0 <-> func.region0#1: MayAlias
Testing : "constants"
alloc_1#0 <-> constant_1#0: NoAlias
alloc_1#0 <-> constant_2#0: NoAlias
constant_1#0 <-> constant_2#0: MayAlias
alloc_1#0 <-> constant_3#0: NoAlias
constant_1#0 <-> constant_3#0: MayAlias
constant_2#0 <-> constant_3#0: MayAlias
alloc_1#0 <-> func.region0#0: NoAlias
constant_1#0 <-> func.region0#0: MayAlias
constant_2#0 <-> func.region0#0: MayAlias
constant_3#0 <-> func.region0#0: MayAlias
module {
  func.func @constants(%arg0: memref<2xf32>) attributes {test.ptr = "func"} {
    %alloc = memref.alloc() {test.ptr = "alloc_1"} : memref<8x64xf32>
    %c0 = arith.constant {test.ptr = "constant_1"} 0 : index
    %c0_0 = arith.constant {test.ptr = "constant_2"} 0 : index
    %c1 = arith.constant {test.ptr = "constant_3"} 1 : index
    return
  }
}


Process finished with exit code 0