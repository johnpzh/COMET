/Users/peng599/pppp/comet-twotruth-project/COMET-indextree-rewrite-fusion/lib/Conversion/TensorAlgebraToSCF/LateLowering.cpp 140Unknown Data type
module {
  func.func @main() {
    %cst = arith.constant 0.000000e+00 : f64
    %c0_i64 = arith.constant 0 : i64
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
    %alloc_0 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_0 : memref<?xi64>)
    %cast_1 = memref.cast %alloc_0 : memref<?xi64> to memref<*xi64>
    %alloc_2 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_16 : memref<?xf64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %11 = bufferization.to_tensor %alloc_0 restrict writable : memref<?xi64>
    %12 = bufferization.to_tensor %alloc_2 restrict writable : memref<?xi64>
    %13 = bufferization.to_tensor %alloc_4 restrict writable : memref<?xi64>
    %14 = bufferization.to_tensor %alloc_6 restrict writable : memref<?xi64>
    %15 = bufferization.to_tensor %alloc_8 restrict writable : memref<?xi64>
    %16 = bufferization.to_tensor %alloc_10 restrict writable : memref<?xi64>
    %17 = bufferization.to_tensor %alloc_12 restrict writable : memref<?xi64>
    %18 = bufferization.to_tensor %alloc_14 restrict writable : memref<?xi64>
    %19 = bufferization.to_tensor %alloc_16 restrict writable : memref<?xf64>
    %alloc_18 = memref.alloc() {alignment = 64 : i64} : memref<2xindex>
    memref.store %9, %alloc_18[%c0] : memref<2xindex>
    memref.store %10, %alloc_18[%c1] : memref<2xindex>
    %20 = bufferization.to_tensor %alloc_18 : memref<2xindex>
    %21 = "ta.spTensor_construct"(%20, %11, %15, %12, %16, %13, %17, %14, %18, %19) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %alloc_19 = memref.alloc() : memref<13xindex>
    %cast_20 = memref.cast %alloc_19 : memref<13xindex> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_20, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %22 = memref.load %alloc_19[%c0] : memref<13xindex>
    %23 = memref.load %alloc_19[%c1] : memref<13xindex>
    %24 = memref.load %alloc_19[%c2] : memref<13xindex>
    %25 = memref.load %alloc_19[%c3] : memref<13xindex>
    %26 = memref.load %alloc_19[%c4] : memref<13xindex>
    %27 = memref.load %alloc_19[%c5] : memref<13xindex>
    %28 = memref.load %alloc_19[%c6] : memref<13xindex>
    %29 = memref.load %alloc_19[%c7] : memref<13xindex>
    %30 = memref.load %alloc_19[%c8] : memref<13xindex>
    %31 = memref.load %alloc_19[%c9] : memref<13xindex>
    %32 = memref.load %alloc_19[%c10] : memref<13xindex>
    %alloc_21 = memref.alloc(%22) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_21 : memref<?xi64>)
    %cast_22 = memref.cast %alloc_21 : memref<?xi64> to memref<*xi64>
    %alloc_23 = memref.alloc(%23) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_23 : memref<?xi64>)
    %cast_24 = memref.cast %alloc_23 : memref<?xi64> to memref<*xi64>
    %alloc_25 = memref.alloc(%24) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_25 : memref<?xi64>)
    %cast_26 = memref.cast %alloc_25 : memref<?xi64> to memref<*xi64>
    %alloc_27 = memref.alloc(%25) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_27 : memref<?xi64>)
    %cast_28 = memref.cast %alloc_27 : memref<?xi64> to memref<*xi64>
    %alloc_29 = memref.alloc(%26) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_29 : memref<?xi64>)
    %cast_30 = memref.cast %alloc_29 : memref<?xi64> to memref<*xi64>
    %alloc_31 = memref.alloc(%27) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_31 : memref<?xi64>)
    %cast_32 = memref.cast %alloc_31 : memref<?xi64> to memref<*xi64>
    %alloc_33 = memref.alloc(%28) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_33 : memref<?xi64>)
    %cast_34 = memref.cast %alloc_33 : memref<?xi64> to memref<*xi64>
    %alloc_35 = memref.alloc(%29) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_35 : memref<?xi64>)
    %cast_36 = memref.cast %alloc_35 : memref<?xi64> to memref<*xi64>
    %alloc_37 = memref.alloc(%30) : memref<?xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_37 : memref<?xf64>)
    %cast_38 = memref.cast %alloc_37 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c1_i32, %c0, %c-1, %c1, %c-1, %cast_22, %cast_24, %cast_26, %cast_28, %cast_30, %cast_32, %cast_34, %cast_36, %cast_38, %c1_i32) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %33 = bufferization.to_tensor %alloc_21 restrict writable : memref<?xi64>
    %34 = bufferization.to_tensor %alloc_23 restrict writable : memref<?xi64>
    %35 = bufferization.to_tensor %alloc_25 restrict writable : memref<?xi64>
    %36 = bufferization.to_tensor %alloc_27 restrict writable : memref<?xi64>
    %37 = bufferization.to_tensor %alloc_29 restrict writable : memref<?xi64>
    %38 = bufferization.to_tensor %alloc_31 restrict writable : memref<?xi64>
    %39 = bufferization.to_tensor %alloc_33 restrict writable : memref<?xi64>
    %40 = bufferization.to_tensor %alloc_35 restrict writable : memref<?xi64>
    %41 = bufferization.to_tensor %alloc_37 restrict writable : memref<?xf64>
    %alloc_39 = memref.alloc() {alignment = 64 : i64} : memref<2xindex>
    memref.store %31, %alloc_39[%c0] : memref<2xindex>
    memref.store %32, %alloc_39[%c1] : memref<2xindex>
    %42 = bufferization.to_tensor %alloc_39 : memref<2xindex>
    %43 = "ta.spTensor_construct"(%42, %33, %37, %34, %38, %35, %39, %36, %40, %41) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %44 = "it.EmptyDomain"() : () -> !it.domain
    %45 = "it.IndexTreeSparseTensorOp"(%44, %44) : (!it.domain, !it.domain) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %46 = "it.itree"(%45) ({
      %47 = "it.RootOp"() : () -> !it.index_tree
      %48 = "it.DomainOp"(%21) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
      %49 = "it.IndexOp"(%47, %48) : (!it.index_tree, !it.domain) -> !it.index
      %50 = "it.DomainOp"(%43) <{dim = 0 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
      %51 = "it.DomainOp"(%21) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
      %52 = "it.DomainIntersectionOp"(%51, %50) <{operandSegmentSizes = array<i32: 2, 0>}> : (!it.domain, !it.domain) -> !it.domain
      %53 = "it.IndexOp"(%49, %52) : (!it.index, !it.domain) -> !it.index
      %54 = "it.DomainOp"(%43) <{dim = 1 : ui32, format = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
      %55 = "it.IndexOp"(%53, %54) : (!it.index, !it.domain) -> !it.index
      %crd, %pos = "it.IndexToTensorDim"(%45, %49) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %crd_40, %pos_41 = "it.IndexToTensorDim"(%45, %55, %pos) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %56 = "it.LHSOperandOp"(%45, %pos, %pos_41, %crd, %crd_40) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_42, %pos_43 = "it.IndexToTensorDim"(%21, %49) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %crd_44, %pos_45 = "it.IndexToTensorDim"(%21, %53, %pos_43) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %57 = "it.OperandOp"(%21, %pos_43, %pos_45, %crd_42, %crd_44) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %crd_46, %pos_47 = "it.IndexToTensorDim"(%43, %53) <{dim = 0 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index) -> (index, index)
      %crd_48, %pos_49 = "it.IndexToTensorDim"(%43, %55, %pos_47) <{dim = 1 : ui32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !it.index, index) -> (index, index)
      %58 = "it.OperandOp"(%43, %pos_47, %pos_49, %crd_46, %crd_48) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index, index) -> !it.operand
      %59 = "it.ComputeOp"(%55, %56, %57, %58) <{compute_missing = false, operandSegmentSizes = array<i32: 1, 1, 2, 0>, semiring = "plusxy_times"}> : (!it.index, !it.operand, !it.operand, !it.operand) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      it.yield %59 : !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    "ta.set_op"(%46, %45) {__beta__ = 0.000000e+00 : f64} : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}
