// RUN: mlir-opt %s -pass-pipeline='builtin.module(func.func(test-alias-analysis))' -split-input-file -allow-unregistered-dialect 2>&1 | FileCheck %s

// CHECK-LABEL: Testing : "region_loop_zero_trip_count"
// CHECK-DAG: alloca_1#0 <-> alloca_2#0: NoAlias
// CHECK-DAG: alloca_1#0 <-> for_alloca#0: MustAlias
// CHECK-DAG: alloca_1#0 <-> for_alloca.region0#0: MayAlias
// CHECK-DAG: alloca_1#0 <-> for_alloca.region0#1: MayAlias

// CHECK-DAG: alloca_2#0 <-> for_alloca#0: NoAlias
// CHECK-DAG: alloca_2#0 <-> for_alloca.region0#0: MayAlias
// CHECK-DAG: alloca_2#0 <-> for_alloca.region0#1: MayAlias

// CHECK-DAG: for_alloca#0 <-> for_alloca.region0#0: MayAlias
// CHECK-DAG: for_alloca#0 <-> for_alloca.region0#1: MayAlias

// CHECK-DAG: for_alloca.region0#0 <-> for_alloca.region0#1: MayAlias

module {

func.func @region_loop_zero_trip_count() attributes {test.ptr = "func"} {
  %0 = memref.alloca() {test.ptr = "alloca_1"} : memref<i32>
  %1 = memref.alloca() {test.ptr = "alloca_2"} : memref<i32>
  %result = affine.for %i = 0 to 0 iter_args(%si = %0) -> (memref<i32>) {
    affine.yield %si : memref<i32>
  } {test.ptr = "for_alloca"}
  return
}

}
