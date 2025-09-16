/// 'scf.for' op different number of inits and region iter_args: 8 != 12

"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "main"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %1 = "arith.constant"() <{value = 0 : i64}> : () -> i64
    %2 = "arith.constant"() <{value = 10 : index}> : () -> index
    %3 = "arith.constant"() <{value = 9 : index}> : () -> index
    %4 = "arith.constant"() <{value = 8 : index}> : () -> index
    %5 = "arith.constant"() <{value = 7 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "arith.constant"() <{value = 5 : index}> : () -> index
    %8 = "arith.constant"() <{value = 4 : index}> : () -> index
    %9 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %10 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %11 = "arith.constant"() <{value = 3 : index}> : () -> index
    %12 = "arith.constant"() <{value = 2 : index}> : () -> index
    %13 = "arith.constant"() <{value = -1 : index}> : () -> index
    %14 = "arith.constant"() <{value = 1 : index}> : () -> index
    %15 = "arith.constant"() <{value = 0 : index}> : () -> index
    %16 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<13xindex>
    %17 = "memref.cast"(%16) : (memref<13xindex>) -> memref<*xindex>
    "func.call"(%10, %15, %13, %14, %13, %17, %9) <{callee = @read_input_sizes_2D_f64}> {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %18 = "memref.load"(%16, %15) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %19 = "memref.load"(%16, %14) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %20 = "memref.load"(%16, %12) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %21 = "memref.load"(%16, %11) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %22 = "memref.load"(%16, %8) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %23 = "memref.load"(%16, %7) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %24 = "memref.load"(%16, %6) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %25 = "memref.load"(%16, %5) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %26 = "memref.load"(%16, %4) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %27 = "memref.load"(%16, %3) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %28 = "memref.load"(%16, %2) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %29 = "memref.alloc"(%18) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %29) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg96: i64, %arg97: i64):
      "linalg.yield"(%arg96) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %30 = "memref.cast"(%29) : (memref<?xi64>) -> memref<*xi64>
    %31 = "memref.alloc"(%19) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %31) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg94: i64, %arg95: i64):
      "linalg.yield"(%arg94) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %32 = "memref.cast"(%31) : (memref<?xi64>) -> memref<*xi64>
    %33 = "memref.alloc"(%20) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %33) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg92: i64, %arg93: i64):
      "linalg.yield"(%arg92) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %34 = "memref.cast"(%33) : (memref<?xi64>) -> memref<*xi64>
    %35 = "memref.alloc"(%21) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %35) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg90: i64, %arg91: i64):
      "linalg.yield"(%arg90) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %36 = "memref.cast"(%35) : (memref<?xi64>) -> memref<*xi64>
    %37 = "memref.alloc"(%22) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %37) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg88: i64, %arg89: i64):
      "linalg.yield"(%arg88) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %38 = "memref.cast"(%37) : (memref<?xi64>) -> memref<*xi64>
    %39 = "memref.alloc"(%23) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %39) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg86: i64, %arg87: i64):
      "linalg.yield"(%arg86) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %40 = "memref.cast"(%39) : (memref<?xi64>) -> memref<*xi64>
    %41 = "memref.alloc"(%24) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %41) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg84: i64, %arg85: i64):
      "linalg.yield"(%arg84) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %42 = "memref.cast"(%41) : (memref<?xi64>) -> memref<*xi64>
    %43 = "memref.alloc"(%25) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %43) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg82: i64, %arg83: i64):
      "linalg.yield"(%arg82) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %44 = "memref.cast"(%43) : (memref<?xi64>) -> memref<*xi64>
    %45 = "memref.alloc"(%26) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xf64>
    "linalg.fill"(%0, %45) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg80: f64, %arg81: f64):
      "linalg.yield"(%arg80) : (f64) -> ()
    }) : (f64, memref<?xf64>) -> ()
    %46 = "memref.cast"(%45) : (memref<?xf64>) -> memref<*xf64>
    "func.call"(%10, %15, %13, %14, %13, %30, %32, %34, %36, %38, %40, %42, %44, %46, %9) <{callee = @read_input_2D_f64_i64}> {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %47 = "bufferization.to_tensor"(%29) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
    %48 = "bufferization.to_tensor"(%31) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
    %49 = "bufferization.to_tensor"(%33) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
    %50 = "bufferization.to_tensor"(%35) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
    %51 = "bufferization.to_tensor"(%37) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
    %52 = "bufferization.to_tensor"(%39) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
    %53 = "bufferization.to_tensor"(%41) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
    %54 = "bufferization.to_tensor"(%43) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
    %55 = "bufferization.to_tensor"(%45) <{restrict, writable}> : (memref<?xf64>) -> tensor<?xf64>
    %56 = "tensor.from_elements"(%27, %28) : (index, index) -> tensor<2xindex>
    %57 = "index.constant"() <{value = 0 : index}> : () -> index
    %58 = "index.constant"() <{value = 0 : index}> : () -> index
    %59 = "builtin.unrealized_conversion_cast"(%56, %57, %47, %58, %51, %52, %55) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %60 = "ta.spTensor_construct"(%56, %47, %51, %48, %52, %49, %53, %50, %54, %55) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %61 = "index.constant"() <{value = 0 : index}> : () -> index
    %62 = "tensor.extract"(%56, %61) : (tensor<2xindex>, index) -> index
    %63 = "ta.SpTensorGetDimSize"(%60) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
    %64 = "ta.SpTensorGetDimPos"(%60) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
    %65 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<13xindex>
    %66 = "memref.cast"(%65) : (memref<13xindex>) -> memref<*xindex>
    "func.call"(%9, %15, %13, %14, %13, %66, %9) <{callee = @read_input_sizes_2D_f64}> {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %67 = "memref.load"(%65, %15) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %68 = "memref.load"(%65, %14) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %69 = "memref.load"(%65, %12) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %70 = "memref.load"(%65, %11) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %71 = "memref.load"(%65, %8) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %72 = "memref.load"(%65, %7) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %73 = "memref.load"(%65, %6) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %74 = "memref.load"(%65, %5) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %75 = "memref.load"(%65, %4) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %76 = "memref.load"(%65, %3) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %77 = "memref.load"(%65, %2) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %78 = "memref.alloc"(%67) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %78) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg78: i64, %arg79: i64):
      "linalg.yield"(%arg78) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %79 = "memref.cast"(%78) : (memref<?xi64>) -> memref<*xi64>
    %80 = "memref.alloc"(%68) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %80) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg76: i64, %arg77: i64):
      "linalg.yield"(%arg76) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %81 = "memref.cast"(%80) : (memref<?xi64>) -> memref<*xi64>
    %82 = "memref.alloc"(%69) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %82) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg74: i64, %arg75: i64):
      "linalg.yield"(%arg74) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %83 = "memref.cast"(%82) : (memref<?xi64>) -> memref<*xi64>
    %84 = "memref.alloc"(%70) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %84) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg72: i64, %arg73: i64):
      "linalg.yield"(%arg72) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %85 = "memref.cast"(%84) : (memref<?xi64>) -> memref<*xi64>
    %86 = "memref.alloc"(%71) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %86) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg70: i64, %arg71: i64):
      "linalg.yield"(%arg70) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %87 = "memref.cast"(%86) : (memref<?xi64>) -> memref<*xi64>
    %88 = "memref.alloc"(%72) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %88) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg68: i64, %arg69: i64):
      "linalg.yield"(%arg68) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %89 = "memref.cast"(%88) : (memref<?xi64>) -> memref<*xi64>
    %90 = "memref.alloc"(%73) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %90) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg66: i64, %arg67: i64):
      "linalg.yield"(%arg66) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %91 = "memref.cast"(%90) : (memref<?xi64>) -> memref<*xi64>
    %92 = "memref.alloc"(%74) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %92) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg64: i64, %arg65: i64):
      "linalg.yield"(%arg64) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %93 = "memref.cast"(%92) : (memref<?xi64>) -> memref<*xi64>
    %94 = "memref.alloc"(%75) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xf64>
    "linalg.fill"(%0, %94) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg62: f64, %arg63: f64):
      "linalg.yield"(%arg62) : (f64) -> ()
    }) : (f64, memref<?xf64>) -> ()
    %95 = "memref.cast"(%94) : (memref<?xf64>) -> memref<*xf64>
    "func.call"(%9, %15, %13, %14, %13, %79, %81, %83, %85, %87, %89, %91, %93, %95, %9) <{callee = @read_input_2D_f64_i64}> {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %96 = "bufferization.to_tensor"(%78) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
    %97 = "bufferization.to_tensor"(%80) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
    %98 = "bufferization.to_tensor"(%82) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
    %99 = "bufferization.to_tensor"(%84) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
    %100 = "bufferization.to_tensor"(%86) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
    %101 = "bufferization.to_tensor"(%88) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
    %102 = "bufferization.to_tensor"(%90) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
    %103 = "bufferization.to_tensor"(%92) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
    %104 = "bufferization.to_tensor"(%94) <{restrict, writable}> : (memref<?xf64>) -> tensor<?xf64>
    %105 = "tensor.from_elements"(%76, %77) : (index, index) -> tensor<2xindex>
    %106 = "index.constant"() <{value = 0 : index}> : () -> index
    %107 = "index.constant"() <{value = 0 : index}> : () -> index
    %108 = "builtin.unrealized_conversion_cast"(%105, %106, %96, %107, %100, %101, %104) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %109 = "ta.spTensor_construct"(%105, %96, %100, %97, %101, %98, %102, %99, %103, %104) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %110 = "ta.SpTensorGetDimPos"(%109) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
    %111 = "index.constant"() <{value = 1 : index}> : () -> index
    %112 = "tensor.extract"(%105, %111) : (tensor<2xindex>, index) -> index
    %113 = "ta.SpTensorGetDimSize"(%109) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
    %114 = "it.DenseDomainOp"(%63, %60) <{dims = [0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %115 = "index.constant"() <{value = 0 : index}> : () -> index
    %116 = "index.constant"() <{value = 1 : index}> : () -> index
    %117 = "index.add"(%63, %116) : (index, index) -> index
    %118 = "tensor.empty"(%117) : (index) -> tensor<?xi64>
    %119 = "arith.constant"() <{value = 0 : i64}> : () -> i64
    %120 = "tensor.insert"(%119, %118, %115) : (i64, tensor<?xi64>, index) -> tensor<?xi64>
    %121 = "tensor.empty"(%113) : (index) -> tensor<?xi64>
    %122 = "builtin.unrealized_conversion_cast"(%115, %117, %115, %113, %118, %121) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> !it.symbolic_domain<64>
    %123:6 = "it.itree"(%115, %117, %115, %113, %118, %121) <{operandSegmentSizes = array<i32: 6, 0>}> ({
    ^bb0(%arg37: index, %arg38: index, %arg39: index, %arg40: index, %arg41: tensor<?xi64>, %arg42: tensor<?xi64>):
      %223 = "builtin.unrealized_conversion_cast"(%arg37, %arg38, %arg39, %arg40, %arg41, %arg42) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> !it.symbolic_domain<64>
      %224:6 = "builtin.unrealized_conversion_cast"(%223) : (!it.symbolic_domain<64>) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>)
      %225 = "scf.forall"(%63, %224#4) <{operandSegmentSizes = array<i32: 0, 1, 0, 1>, staticLowerBound = array<i64: 0>, staticStep = array<i64: 1>, staticUpperBound = array<i64: -9223372036854775808>}> ({
      ^bb0(%arg46: index, %arg47: tensor<?xi64>):
        %233 = "builtin.unrealized_conversion_cast"(%arg46, %224#1, %15, %224#3, %arg47, %224#5) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> !it.symbolic_domain<64>
        %234 = "arith.addi"(%arg46, %14) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        %235 = "tensor.extract"(%64, %arg46) : (tensor<?xi64>, index) -> i64
        %236 = "arith.index_cast"(%235) : (i64) -> index
        %237 = "tensor.extract"(%64, %234) : (tensor<?xi64>, index) -> i64
        %238 = "arith.index_cast"(%237) : (i64) -> index
        %239:6 = "scf.for"(%236, %238, %14, %arg46, %224#1, %15, %224#3, %arg47, %224#5) ({
        ^bb0(%arg48: index, %arg49: index, %arg50: index, %arg51: index, %arg52: index, %arg53: tensor<?xi64>, %arg54: tensor<?xi64>):
          %248 = "tensor.extract"(%52, %arg48) : (tensor<?xi64>, index) -> i64
          %249 = "ta.SpTensorGetCrd"(%60, %arg48) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %250 = "arith.index_cast"(%249) : (i64) -> index
          %251 = "arith.addi"(%250, %14) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
          %252 = "tensor.extract"(%110, %250) : (tensor<?xi64>, index) -> i64
          %253 = "arith.index_cast"(%252) : (i64) -> index
          %254 = "tensor.extract"(%110, %251) : (tensor<?xi64>, index) -> i64
          %255 = "arith.index_cast"(%254) : (i64) -> index
          %256:6 = "scf.for"(%253, %255, %14, %arg49, %arg50, %arg51, %arg52, %arg53, %arg54) ({
          ^bb0(%arg55: index, %arg56: index, %arg57: index, %arg58: index, %arg59: index, %arg60: tensor<?xi64>, %arg61: tensor<?xi64>):
            %258 = "tensor.extract"(%101, %arg55) : (tensor<?xi64>, index) -> i64
            %259 = "ta.SpTensorGetCrd"(%109, %arg55) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
            %260 = "arith.index_cast"(%259) : (i64) -> index
            %261 = "index.constant"() <{value = 1 : index}> : () -> index
            %262 = "index.add"(%arg56, %261) : (index, index) -> index
            %263 = "arith.index_cast"(%262) : (index) -> i64
            %264 = "tensor.extract"(%arg61, %260) : (tensor<?xi64>, index) -> i64
            %265 = "arith.cmpi"(%263, %264) <{predicate = 0 : i64}> : (i64, i64) -> i1
            %266:2 = "scf.if"(%265) ({
              "scf.yield"(%arg58, %arg61) : (index, tensor<?xi64>) -> ()
            }, {
              %268 = "tensor.insert"(%263, %arg61, %260) : (i64, tensor<?xi64>, index) -> tensor<?xi64>
              %269 = "index.add"(%arg58, %261) : (index, index) -> index
              "scf.yield"(%269, %268) : (index, tensor<?xi64>) -> ()
            }) : (i1) -> (index, tensor<?xi64>)
            %267 = "builtin.unrealized_conversion_cast"(%arg56, %arg57, %266#0, %arg59, %arg60, %266#1) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> !it.symbolic_domain<64>
            "scf.yield"(%arg56, %arg57, %266#0, %arg59, %arg60, %266#1) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> ()
          }) : (index, index, index, index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>)
          %257 = "builtin.unrealized_conversion_cast"(%256#0, %256#1, %256#2, %256#3, %256#4, %256#5) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> !it.symbolic_domain<64>
          "scf.yield"(%256#0, %256#1, %256#2, %256#3, %256#4, %256#5) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> ()
        }) : (index, index, index, index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>)
        %240 = "builtin.unrealized_conversion_cast"(%239#0, %239#1, %239#2, %239#3, %239#4, %239#5) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> !it.symbolic_domain<64>
        %241 = "index.constant"() <{value = 1 : index}> : () -> index
        %242 = "index.add"(%239#0, %241) : (index, index) -> index
        %243 = "arith.index_cast"(%239#2) : (index) -> i64
        %244 = "tensor.insert"(%243, %239#4, %242) : (i64, tensor<?xi64>, index) -> tensor<?xi64>
        %245 = "builtin.unrealized_conversion_cast"(%242, %239#1, %239#2, %239#3, %244, %239#5) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> !it.symbolic_domain<64>
        %246:6 = "builtin.unrealized_conversion_cast"(%245) : (!it.symbolic_domain<64>) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>)
        %247 = "tensor.extract_slice"(%246#4, %246#0) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 1>, static_strides = array<i64: 1>}> : (tensor<?xi64>, index) -> tensor<1xi64>
        "scf.forall.in_parallel"() ({
          "tensor.parallel_insert_slice"(%247, %arg47, %246#0) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 1>, static_strides = array<i64: 1>}> : (tensor<1xi64>, tensor<?xi64>, index) -> ()
        }) : () -> ()
      }) : (index, tensor<?xi64>) -> tensor<?xi64>
      %226 = "arith.addi"(%63, %14) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
      %227:2 = "scf.for"(%14, %226, %14, %1, %225) ({
      ^bb0(%arg43: index, %arg44: i64, %arg45: tensor<?xi64>):
        %230 = "tensor.extract"(%arg45, %arg43) : (tensor<?xi64>, index) -> i64
        %231 = "arith.addi"(%230, %arg44) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
        %232 = "tensor.insert"(%231, %arg45, %arg43) : (i64, tensor<?xi64>, index) -> tensor<?xi64>
        "scf.yield"(%231, %232) : (i64, tensor<?xi64>) -> ()
      }) : (index, index, index, i64, tensor<?xi64>) -> (i64, tensor<?xi64>)
      %228 = "arith.index_cast"(%227#0) : (i64) -> index
      %229 = "builtin.unrealized_conversion_cast"(%63, %224#1, %228, %224#3, %227#1, %224#5) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> !it.symbolic_domain<64>
      "it.yield"(%63, %224#1, %228, %224#3, %227#1, %224#5) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> ()
    }) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>)
    %124 = "builtin.unrealized_conversion_cast"(%123#0, %123#1, %123#2, %123#3, %123#4, %123#5) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> !it.symbolic_domain<64>
    %125 = "index.constant"() <{value = 0 : index}> : () -> index
    %126 = "index.constant"() <{value = 1 : index}> : () -> index
    %127 = "arith.index_cast"(%63) : (index) -> i64
    %128 = "index.constant"() <{value = 1 : index}> : () -> index
    %129 = "tensor.empty"(%128) : (index) -> tensor<?xi64>
    %130 = "tensor.insert"(%127, %129, %125) : (i64, tensor<?xi64>, index) -> tensor<?xi64>
    %131 = "tensor.empty"() : () -> tensor<0xi64>
    %132 = "tensor.empty"() : () -> tensor<0xi64>
    %133 = "tensor.empty"() : () -> tensor<0xi64>
    %134 = "index.mul"(%126, %63) : (index, index) -> index
    %135 = "tensor.empty"(%123#2) : (index) -> tensor<?xi64>
    %136 = "tensor.empty"() : () -> tensor<0xi64>
    %137 = "tensor.empty"() : () -> tensor<0xi64>
    %138 = "tensor.empty"(%123#2) : (index) -> tensor<?xf64>
    %139 = "arith.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    "scf.for"(%125, %123#2, %126) ({
    ^bb0(%arg36: index):
      %222 = "tensor.insert"(%139, %138, %arg36) : (f64, tensor<?xf64>, index) -> tensor<?xf64>
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    %140 = "tensor.from_elements"(%63, %123#3) : (index, index) -> tensor<2xindex>
    %141 = "index.constant"() <{value = 0 : index}> : () -> index
    %142 = "index.constant"() <{value = 0 : index}> : () -> index
    %143 = "builtin.unrealized_conversion_cast"(%140, %141, %130, %142, %123#4, %135, %138) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %144 = "ta.spTensor_construct"(%140, %130, %123#4, %131, %135, %132, %136, %133, %137, %138) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<0xi64>, tensor<?xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<0xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %145 = "index.constant"() <{value = 1 : index}> : () -> index
    %146 = "tensor.extract"(%140, %145) : (tensor<2xindex>, index) -> index
    %147 = "ta.SpTensorGetDimSize"(%144) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
    %148 = "bufferization.alloc_tensor"(%147) <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (index) -> tensor<?xf64>
    %149 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %150 = "bufferization.alloc_tensor"(%147) <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (index) -> tensor<?xi32>
    %151 = "index.constant"() <{value = 0 : index}> : () -> index
    %152 = "bufferization.alloc_tensor"(%147) <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (index) -> tensor<?xi64>
    %153 = "builtin.unrealized_conversion_cast"(%148, %149, %150, %151, %152) : (tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) -> !ta.workspace<f64, i64, ?>
    %154 = "ta.AllocWorkspace"(%144) <{dims = [1 : i32]}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.workspace<f64, i64, ?>
    %155:12 = "it.itree"(%140, %141, %130, %142, %123#4, %135, %138, %148, %149, %150, %151, %152) <{operandSegmentSizes = array<i32: 7, 5>}> ({
    ^bb0(%arg1: tensor<2xindex>, %arg2: index, %arg3: tensor<?xi64>, %arg4: index, %arg5: tensor<?xi64>, %arg6: tensor<?xi64>, %arg7: tensor<?xf64>, %arg8: tensor<?xf64>, %arg9: i32, %arg10: tensor<?xi32>, %arg11: index, %arg12: tensor<?xi64>):
      %166 = "builtin.unrealized_conversion_cast"(%arg8, %arg9, %arg10, %arg11, %arg12) : (tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) -> !ta.workspace<f64, i64, ?>
      %167 = "builtin.unrealized_conversion_cast"(%arg1, %arg2, %arg3, %arg4, %arg5, %arg6, %arg7) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      %168:3 = "builtin.unrealized_conversion_cast"(<<UNKNOWN SSA VALUE>>) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> (tensor<?xi64>, tensor<?xi64>, tensor<?xf64>)
      %169:2 = "scf.forall"(%63, %168#1, %168#2) <{operandSegmentSizes = array<i32: 0, 1, 0, 2>, staticLowerBound = array<i64: 0>, staticStep = array<i64: 1>, staticUpperBound = array<i64: -9223372036854775808>}> ({
      ^bb0(%arg13: index, %arg14: tensor<?xi64>, %arg15: tensor<?xf64>):
        %171 = "tensor.extract"(%168#0, %arg13) : (tensor<?xi64>, index) -> i64
        %172 = "arith.index_cast"(%171) : (i64) -> index
        %173 = "arith.addi"(%arg13, %14) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        %174 = "tensor.extract"(%168#0, %173) : (tensor<?xi64>, index) -> i64
        %175 = "arith.index_cast"(%174) : (i64) -> index
        %176 = "arith.subi"(%175, %172) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        %177 = "tensor.extract_slice"(%arg14, %172, %176) <{operandSegmentSizes = array<i32: 1, 1, 1, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (tensor<?xi64>, index, index) -> tensor<?xi64>
        %178 = "tensor.extract_slice"(%arg15, %172, %176) <{operandSegmentSizes = array<i32: 1, 1, 1, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (tensor<?xf64>, index, index) -> tensor<?xf64>
        %179 = "builtin.unrealized_conversion_cast"(%168#0, %177, %178) : (tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %180 = "arith.constant"() <{value = 1 : i32}> : () -> i32
        %181 = "arith.addi"(%arg9, %180) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
        %182 = "index.constant"() <{value = 0 : index}> : () -> index
        %183 = "builtin.unrealized_conversion_cast"(%arg8, %181, %arg10, %182, %arg12) : (tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) -> !ta.workspace<f64, i64, ?>
        %184 = "ta.WorkspaceClear"(<<UNKNOWN SSA VALUE>>) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
        %185 = "arith.addi"(%arg13, %14) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        %186 = "tensor.extract"(%64, %arg13) : (tensor<?xi64>, index) -> i64
        %187 = "arith.index_cast"(%186) : (i64) -> index
        %188 = "tensor.extract"(%64, %185) : (tensor<?xi64>, index) -> i64
        %189 = "arith.index_cast"(%188) : (i64) -> index
        %190:8 = "scf.for"(%187, %189, %14, %168#0, %177, %178, %arg8, %181, %arg10, %182, %arg12) ({
        ^bb0(%arg20: index, %arg21: tensor<2xindex>, %arg22: index, %arg23: tensor<?xi64>, %arg24: index, %arg25: tensor<?xi64>, %arg26: tensor<?xi64>, %arg27: tensor<?xf64>, %arg28: tensor<?xf64>, %arg29: i32, %arg30: tensor<?xi32>, %arg31: index, %arg32: tensor<?xi64>):
          %202 = "builtin.unrealized_conversion_cast"(%arg28, %arg29, %arg30, %arg31, %arg32) : (tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) -> !ta.workspace<f64, i64, ?>
          %203 = "builtin.unrealized_conversion_cast"(%arg21, %arg22, %arg23, %arg24, %arg25, %arg26, %arg27) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
          %204 = "ta.SpTensorGetCrd"(%60, <<UNKNOWN SSA VALUE>>) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %205 = "arith.index_cast"(%204) : (i64) -> index
          %206 = "arith.addi"(%205, %14) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
          %207 = "tensor.extract"(%110, %205) : (tensor<?xi64>, index) -> i64
          %208 = "arith.index_cast"(%207) : (i64) -> index
          %209 = "tensor.extract"(%110, %206) : (tensor<?xi64>, index) -> i64
          %210 = "arith.index_cast"(%209) : (i64) -> index
          %211:2 = "scf.for"(%208, %210, %14, <<UNKNOWN SSA VALUE>>, <<UNKNOWN SSA VALUE>>) ({
          ^bb0(%arg33: index, %arg34: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg35: !ta.workspace<f64, i64, ?>):
            %212 = "ta.SpTensorGetCrd"(%60, <<UNKNOWN SSA VALUE>>) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
            %213 = "arith.index_cast"(%212) : (i64) -> index
            %214 = "ta.SpTensorGetCrd"(%109, %arg33) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
            %215 = "arith.index_cast"(%214) : (i64) -> index
            %216 = "ta.SpTensorGetCrd"(%109, %arg33) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
            %217 = "arith.index_cast"(%216) : (i64) -> index
            %218 = "ta.TAExtractOp"(%60, <<UNKNOWN SSA VALUE>>, %arg13, %213) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
            %219 = "ta.TAExtractOp"(%109, %arg33, %205, %215) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
            %220 = "arith.mulf"(%218, %219) <{fastmath = #arith.fastmath<none>}> : (f64, f64) -> f64
            %221 = "ta.WorkspaceAccumulateOp"(%arg35, %217, %217, %220) : (!ta.workspace<f64, i64, ?>, index, index, f64) -> !ta.workspace<f64, i64, ?>
            "scf.yield"(%arg34, %221) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> ()
          }) : (index, index, index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
          "scf.yield"(%211#0, %211#1) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> ()
        }) : (index, index, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) -> (tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>)
        %191 = "builtin.unrealized_conversion_cast"(%190#0, %190#1, %190#2, %190#3, %190#4, %190#5, %190#6) : (tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %192:2 = "scf.for"(%187, %189, %14, %179, %184) ({
        }) : (index, index, index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
        %193 = "ta.SortCrdOp"(%192#1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
        %194 = "ta.SpTensorGetNNZ"(%193) : (!ta.workspace<f64, i64, ?>) -> index
        %195:3 = "builtin.unrealized_conversion_cast"(%192#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> (tensor<?xi64>, tensor<?xi64>, tensor<?xf64>)
        %196:3 = "scf.for"(%15, %194, %14, %195#1, %195#2, %192#1) ({
        ^bb0(%arg16: index, %arg17: tensor<?xi64>, %arg18: tensor<?xf64>, %arg19: !ta.workspace<f64, i64, ?>):
          %197 = "ta.SpTensorGetCrd"(%arg19, %arg16) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>, index) -> i64
          %198 = "arith.index_cast"(%197) : (i64) -> index
          %199 = "ta.WorkspaceReadOp"(%arg19, %arg16, %198) : (!ta.workspace<f64, i64, ?>, index, index) -> f64
          %200 = "tensor.insert"(%197, %arg17, %arg16) : (i64, tensor<?xi64>, index) -> tensor<?xi64>
          %201 = "tensor.insert"(%199, %arg18, %arg16) : (f64, tensor<?xf64>, index) -> tensor<?xf64>
          "scf.yield"(%200, %201, %arg19) : (tensor<?xi64>, tensor<?xf64>, !ta.workspace<f64, i64, ?>) -> ()
        }) : (index, index, index, tensor<?xi64>, tensor<?xf64>, !ta.workspace<f64, i64, ?>) -> (tensor<?xi64>, tensor<?xf64>, !ta.workspace<f64, i64, ?>)
        "scf.forall.in_parallel"() ({
          "tensor.parallel_insert_slice"(%196#0, %arg14, %172, %176) <{operandSegmentSizes = array<i32: 1, 1, 1, 1, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (tensor<?xi64>, tensor<?xi64>, index, index) -> ()
          "tensor.parallel_insert_slice"(%196#1, %arg15, %172, %176) <{operandSegmentSizes = array<i32: 1, 1, 1, 1, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (tensor<?xf64>, tensor<?xf64>, index, index) -> ()
        }) : () -> ()
      }) : (index, tensor<?xi64>, tensor<?xf64>) -> (tensor<?xi64>, tensor<?xf64>)
      %170 = "builtin.unrealized_conversion_cast"(%168#0, %169#0, %169#1) : (tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      "it.yield"(%170, <<UNKNOWN SSA VALUE>>) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> ()
    }) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>, tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>)
    %156 = "builtin.unrealized_conversion_cast"(%155#0, %155#1, %155#2, %155#3, %155#4, %155#5, %155#6) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %157 = "builtin.unrealized_conversion_cast"(%155#7, %155#8, %155#9, %155#10, %155#11) : (tensor<?xf64>, i32, tensor<?xi32>, index, tensor<?xi64>) -> !ta.workspace<f64, i64, ?>
    %158:2 = "it.itree"(%144, %154) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.workspace<f64, i64, ?>)
    "ta.print"(%158#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    %159 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1xf64>
    "memref.store"(%0, %159, %15) <{nontemporal = false}> : (f64, memref<1xf64>, index) -> ()
    %160 = "ta.SpTensorGetVals"(%158#0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xf64>
    %161 = "tensor.dim"(%160, %15) : (tensor<?xf64>, index) -> index
    "scf.for"(%15, %161, %14) ({
    ^bb0(%arg0: index):
      %163 = "tensor.extract"(%160, %arg0) : (tensor<?xf64>, index) -> f64
      %164 = "memref.load"(%159, %15) <{nontemporal = false}> : (memref<1xf64>, index) -> f64
      %165 = "arith.addf"(%163, %164) <{fastmath = #arith.fastmath<none>}> : (f64, f64) -> f64
      "memref.store"(%165, %159, %15) <{nontemporal = false}> : (f64, memref<1xf64>, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    %162 = "memref.load"(%159, %15) <{nontemporal = false}> : (memref<1xf64>, index) -> f64
    "ta.print"(%162) : (f64) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> (), sym_name = "read_input_2D_f64_i64", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (i32, index, index, index, index, memref<*xindex>, i32) -> (), sym_name = "read_input_sizes_2D_f64", sym_visibility = "private"}> ({
  }) : () -> ()
}) : () -> ()

/// Assertion failed: (n + m <= size() && "invalid size specifiers"), function slice, file STLExtras.h, line 1293.