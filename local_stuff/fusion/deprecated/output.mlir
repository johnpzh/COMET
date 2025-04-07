++ ../../cmake-build-debug/bin/comet-opt --convert-ta-to-it dialects/fusion.ta
module {
  func.func @main() {
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %0 = memref.load %alloc[%c0] : memref<13xindex>
    %1 = memref.load %alloc[%c1] : memref<13xindex>
    %2 = memref.load %alloc[%c2] : memref<13xindex>
    %3 = memref.load %alloc[%c3] : memref<13xindex>
    %4 = memref.load %alloc[%c4] : memref<13xindex>
    %5 = memref.load %alloc[%c5] : memref<13xindex>
    %6 = memref.load %alloc[%c6] : memref<13xindex>
    %7 = memref.load %alloc[%c7] : memref<13xindex>
    %8 = memref.load %alloc[%c8] : memref<13xindex>
    %9 = memref.load %alloc[%c9] : memref<13xindex>
    %10 = memref.load %alloc[%c10] : memref<13xindex>
    %alloc_2 = memref.alloc(%0) : memref<?xindex>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0, %alloc_2[%arg0] : memref<?xindex>
    }
    %cast_3 = memref.cast %alloc_2 : memref<?xindex> to memref<*xindex>
    %alloc_4 = memref.alloc(%1) : memref<?xindex>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0, %alloc_4[%arg0] : memref<?xindex>
    }
    %cast_5 = memref.cast %alloc_4 : memref<?xindex> to memref<*xindex>
    %alloc_6 = memref.alloc(%2) : memref<?xindex>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0, %alloc_6[%arg0] : memref<?xindex>
    }
    %cast_7 = memref.cast %alloc_6 : memref<?xindex> to memref<*xindex>
    %alloc_8 = memref.alloc(%3) : memref<?xindex>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0, %alloc_8[%arg0] : memref<?xindex>
    }
    %cast_9 = memref.cast %alloc_8 : memref<?xindex> to memref<*xindex>
    %alloc_10 = memref.alloc(%4) : memref<?xindex>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0, %alloc_10[%arg0] : memref<?xindex>
    }
    %cast_11 = memref.cast %alloc_10 : memref<?xindex> to memref<*xindex>
    %alloc_12 = memref.alloc(%5) : memref<?xindex>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0, %alloc_12[%arg0] : memref<?xindex>
    }
    %cast_13 = memref.cast %alloc_12 : memref<?xindex> to memref<*xindex>
    %alloc_14 = memref.alloc(%6) : memref<?xindex>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0, %alloc_14[%arg0] : memref<?xindex>
    }
    %cast_15 = memref.cast %alloc_14 : memref<?xindex> to memref<*xindex>
    %alloc_16 = memref.alloc(%7) : memref<?xindex>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0, %alloc_16[%arg0] : memref<?xindex>
    }
    %cast_17 = memref.cast %alloc_16 : memref<?xindex> to memref<*xindex>
    %alloc_18 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_1, %alloc_18[%arg0] : memref<?xf64>
    }
    %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
    %11 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xindex>
    %12 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xindex>
    %13 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xindex>
    %14 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xindex>
    %15 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xindex>
    %16 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xindex>
    %17 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xindex>
    %18 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xindex>
    %19 = bufferization.to_tensor %alloc_18 restrict writable : memref<?xf64>
    %20 = ta.spTensor_construct(%11, %12, %13, %14, %15, %16, %17, %18, %19, %0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10) {dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32} : (tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index) -> (!ta.sparse_tensor<f64, -9223372036854775808, -9223372036854775808, 1, 0, 2, 0>)
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %21 = bufferization.to_tensor %alloc_20 restrict writable : memref<?x4xf64>
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<4x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<4x4xf64>)
    %22 = bufferization.to_tensor %alloc_21 restrict writable : memref<4x4xf64>
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x4xf64>)
    %23 = bufferization.to_tensor %alloc_22 restrict writable : memref<?x4xf64>
    %alloc_23 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<?x4xf64>)
    %24 = bufferization.to_tensor %alloc_23 restrict writable : memref<?x4xf64>
    %25 = "it.itree"() ({
      %27 = "it.RootOp"() : () -> !it.index_tree
      %28 = "it.DomainOp"(%21) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
      %29 = "it.IndexOp"(%27, %28) : (!it.index_tree, !it.domain) -> !it.index
      %30 = "it.DomainOp"(%20) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, -9223372036854775808, -9223372036854775808, 1, 0, 2, 0>) -> !it.domain
      %31 = "it.IndexOp"(%29, %30) : (!it.index, !it.domain) -> !it.index
      %32 = "it.DomainOp"(%21) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
      %33 = "it.DomainOp"(%20) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, -9223372036854775808, -9223372036854775808, 1, 0, 2, 0>) -> !it.domain
      %34 = "it.DomainIntersectionOp"(%33, %32) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
      %35 = "it.IndexOp"(%31, %34) : (!it.index, !it.domain) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%24, %31) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_25, %pos_26 = "it.IndexToTensorDim"(%24, %29, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %36 = "it.LHSOperandOp"(%24, %pos, %pos_26, %crd, %crd_25) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %crd_27, %pos_28 = "it.IndexToTensorDim"(%20, %31) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, -9223372036854775808, -9223372036854775808, 1, 0, 2, 0>, !it.index) -> (index, index)
      %crd_29, %pos_30 = "it.IndexToTensorDim"(%20, %35, %pos_28) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, -9223372036854775808, -9223372036854775808, 1, 0, 2, 0>, !it.index, index) -> (index, index)
      %37 = "it.OperandOp"(%20, %pos_28, %pos_30, %crd_27, %crd_29) : (!ta.sparse_tensor<f64, -9223372036854775808, -9223372036854775808, 1, 0, 2, 0>, index, index, index, index) -> !it.operand
      %crd_31, %pos_32 = "it.IndexToTensorDim"(%21, %35) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_33, %pos_34 = "it.IndexToTensorDim"(%21, %29, %pos_32) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %38 = "it.OperandOp"(%21, %pos_32, %pos_34, %crd_31, %crd_33) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %39 = "it.ComputeOp"(%35, %36, %37, %38) <{semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
      it.yield %39 : tensor<?x4xf64>
    }) : () -> tensor<?x4xf64>
    "ta.set_op"(%25, %24) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    %26 = "it.itree"() ({
      %27 = "it.RootOp"() : () -> !it.index_tree
      %28 = "it.DomainOp"(%22) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
      %29 = "it.DomainOp"(%24) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
      %30 = "it.DomainIntersectionOp"(%29, %28) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
      %31 = "it.IndexOp"(%27, %30) : (!it.index_tree, !it.domain) -> !it.index
      %32 = "it.DomainOp"(%24) <{dim = 0 : ui32, format = 0 : i32}> : (tensor<?x4xf64>) -> !it.domain
      %33 = "it.IndexOp"(%31, %32) : (!it.index, !it.domain) -> !it.index
      %34 = "it.DomainOp"(%22) <{dim = 1 : ui32, format = 0 : i32}> : (tensor<4x4xf64>) -> !it.domain
      %35 = "it.IndexOp"(%33, %34) : (!it.index, !it.domain) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%23, %33) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_25, %pos_26 = "it.IndexToTensorDim"(%23, %35, %pos) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %36 = "it.LHSOperandOp"(%23, %pos, %pos_26, %crd, %crd_25) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %crd_27, %pos_28 = "it.IndexToTensorDim"(%24, %33) <{dim = 0 : ui32}> : (tensor<?x4xf64>, !it.index) -> (index, index)
      %crd_29, %pos_30 = "it.IndexToTensorDim"(%24, %31, %pos_28) <{dim = 1 : ui32}> : (tensor<?x4xf64>, !it.index, index) -> (index, index)
      %37 = "it.OperandOp"(%24, %pos_28, %pos_30, %crd_27, %crd_29) : (tensor<?x4xf64>, index, index, index, index) -> !it.operand
      %crd_31, %pos_32 = "it.IndexToTensorDim"(%22, %31) <{dim = 0 : ui32}> : (tensor<4x4xf64>, !it.index) -> (index, index)
      %crd_33, %pos_34 = "it.IndexToTensorDim"(%22, %35, %pos_32) <{dim = 1 : ui32}> : (tensor<4x4xf64>, !it.index, index) -> (index, index)
      %38 = "it.OperandOp"(%22, %pos_32, %pos_34, %crd_31, %crd_33) : (tensor<4x4xf64>, index, index, index, index) -> !it.operand
      %39 = "it.ComputeOp"(%35, %36, %37, %38) <{semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x4xf64>
      it.yield %39 : tensor<?x4xf64>
    }) : () -> tensor<?x4xf64>
    "ta.set_op"(%26, %23) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    %cast_24 = memref.cast %alloc_22 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_24) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64(i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @comet_print_memref_i64(memref<*xindex>)
}
