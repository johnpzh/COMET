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
    ^bb0(%arg60: i64, %arg61: i64):
      "linalg.yield"(%arg60) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %30 = "memref.cast"(%29) : (memref<?xi64>) -> memref<*xi64>
    %31 = "memref.alloc"(%19) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %31) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg58: i64, %arg59: i64):
      "linalg.yield"(%arg58) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %32 = "memref.cast"(%31) : (memref<?xi64>) -> memref<*xi64>
    %33 = "memref.alloc"(%20) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %33) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg56: i64, %arg57: i64):
      "linalg.yield"(%arg56) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %34 = "memref.cast"(%33) : (memref<?xi64>) -> memref<*xi64>
    %35 = "memref.alloc"(%21) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %35) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg54: i64, %arg55: i64):
      "linalg.yield"(%arg54) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %36 = "memref.cast"(%35) : (memref<?xi64>) -> memref<*xi64>
    %37 = "memref.alloc"(%22) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %37) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg52: i64, %arg53: i64):
      "linalg.yield"(%arg52) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %38 = "memref.cast"(%37) : (memref<?xi64>) -> memref<*xi64>
    %39 = "memref.alloc"(%23) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %39) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg50: i64, %arg51: i64):
      "linalg.yield"(%arg50) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %40 = "memref.cast"(%39) : (memref<?xi64>) -> memref<*xi64>
    %41 = "memref.alloc"(%24) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %41) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg48: i64, %arg49: i64):
      "linalg.yield"(%arg48) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %42 = "memref.cast"(%41) : (memref<?xi64>) -> memref<*xi64>
    %43 = "memref.alloc"(%25) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %43) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg46: i64, %arg47: i64):
      "linalg.yield"(%arg46) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %44 = "memref.cast"(%43) : (memref<?xi64>) -> memref<*xi64>
    %45 = "memref.alloc"(%26) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xf64>
    "linalg.fill"(%0, %45) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg44: f64, %arg45: f64):
      "linalg.yield"(%arg44) : (f64) -> ()
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
    %57 = "ta.spTensor_construct"(%56, %47, %51, %48, %52, %49, %53, %50, %54, %55) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %58 = "ta.SpTensorGetDimSize"(%57) <{dim = 0 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
    %59 = "ta.SpTensorGetDimPos"(%57) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
    %60 = "ta.SpTensorGetDimCrd"(%57) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
    %61 = "tensor.dim"(%59, %15) : (tensor<?xi64>, index) -> index
    %62 = "tensor.dim"(%60, %15) : (tensor<?xi64>, index) -> index
    %63 = "ta.SpTensorGetDimSize"(%57) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
    %64 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<13xindex>
    %65 = "memref.cast"(%64) : (memref<13xindex>) -> memref<*xindex>
    "func.call"(%10, %15, %13, %14, %13, %65, %9) <{callee = @read_input_sizes_2D_f64}> {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %66 = "memref.load"(%64, %15) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %67 = "memref.load"(%64, %14) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %68 = "memref.load"(%64, %12) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %69 = "memref.load"(%64, %11) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %70 = "memref.load"(%64, %8) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %71 = "memref.load"(%64, %7) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %72 = "memref.load"(%64, %6) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %73 = "memref.load"(%64, %5) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %74 = "memref.load"(%64, %4) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %75 = "memref.load"(%64, %3) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %76 = "memref.load"(%64, %2) <{nontemporal = false}> : (memref<13xindex>, index) -> index
    %77 = "memref.alloc"(%66) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %77) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg42: i64, %arg43: i64):
      "linalg.yield"(%arg42) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %78 = "memref.cast"(%77) : (memref<?xi64>) -> memref<*xi64>
    %79 = "memref.alloc"(%67) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %79) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg40: i64, %arg41: i64):
      "linalg.yield"(%arg40) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %80 = "memref.cast"(%79) : (memref<?xi64>) -> memref<*xi64>
    %81 = "memref.alloc"(%68) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %81) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg38: i64, %arg39: i64):
      "linalg.yield"(%arg38) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %82 = "memref.cast"(%81) : (memref<?xi64>) -> memref<*xi64>
    %83 = "memref.alloc"(%69) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %83) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg36: i64, %arg37: i64):
      "linalg.yield"(%arg36) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %84 = "memref.cast"(%83) : (memref<?xi64>) -> memref<*xi64>
    %85 = "memref.alloc"(%70) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %85) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg34: i64, %arg35: i64):
      "linalg.yield"(%arg34) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %86 = "memref.cast"(%85) : (memref<?xi64>) -> memref<*xi64>
    %87 = "memref.alloc"(%71) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %87) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg32: i64, %arg33: i64):
      "linalg.yield"(%arg32) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %88 = "memref.cast"(%87) : (memref<?xi64>) -> memref<*xi64>
    %89 = "memref.alloc"(%72) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %89) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg30: i64, %arg31: i64):
      "linalg.yield"(%arg30) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %90 = "memref.cast"(%89) : (memref<?xi64>) -> memref<*xi64>
    %91 = "memref.alloc"(%73) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %91) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg28: i64, %arg29: i64):
      "linalg.yield"(%arg28) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %92 = "memref.cast"(%91) : (memref<?xi64>) -> memref<*xi64>
    %93 = "memref.alloc"(%74) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xf64>
    "linalg.fill"(%0, %93) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg26: f64, %arg27: f64):
      "linalg.yield"(%arg26) : (f64) -> ()
    }) : (f64, memref<?xf64>) -> ()
    %94 = "memref.cast"(%93) : (memref<?xf64>) -> memref<*xf64>
    "func.call"(%10, %15, %13, %14, %13, %78, %80, %82, %84, %86, %88, %90, %92, %94, %9) <{callee = @read_input_2D_f64_i64}> {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %95 = "bufferization.to_tensor"(%77) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
    %96 = "bufferization.to_tensor"(%79) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
    %97 = "bufferization.to_tensor"(%81) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
    %98 = "bufferization.to_tensor"(%83) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
    %99 = "bufferization.to_tensor"(%85) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
    %100 = "bufferization.to_tensor"(%87) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
    %101 = "bufferization.to_tensor"(%89) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
    %102 = "bufferization.to_tensor"(%91) <{restrict, writable}> : (memref<?xi64>) -> tensor<?xi64>
    %103 = "bufferization.to_tensor"(%93) <{restrict, writable}> : (memref<?xf64>) -> tensor<?xf64>
    %104 = "tensor.from_elements"(%75, %76) : (index, index) -> tensor<2xindex>
    %105 = "ta.spTensor_construct"(%104, %95, %99, %96, %100, %97, %101, %98, %102, %103) <{dimension_formats = [1 : i32, 0 : i32, 2 : i32, 0 : i32], tensor_rank = 2 : i32}> : (tensor<2xindex>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %106 = "ta.SpTensorGetDimPos"(%105) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
    %107 = "ta.SpTensorGetDimCrd"(%105) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> tensor<?xi64>
    %108 = "tensor.dim"(%106, %15) : (tensor<?xi64>, index) -> index
    %109 = "tensor.dim"(%107, %15) : (tensor<?xi64>, index) -> index
    %110 = "ta.SpTensorGetDimSize"(%105) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> index
    %111 = "it.DenseDomainOp"(%58, %57, %105) <{dims = [0 : i32, 0 : i32]}> : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !it.domain
    %112 = "it.DeclDomainOp"(%63, %58) <{indices_bitwidth = 64 : i32, is_dynamic = false}> : (index, index) -> !it.symbolic_domain<64>
    %113 = "it.itree"(%112) <{operandSegmentSizes = array<i32: 1, 0>}> ({
    ^bb0(%arg12: !it.symbolic_domain<64>):
      %167:6 = "builtin.unrealized_conversion_cast"(%arg12) : (!it.symbolic_domain<64>) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>)
      %168 = "scf.forall"(%58, %167#4) <{operandSegmentSizes = array<i32: 0, 1, 0, 1>, staticLowerBound = array<i64: 0>, staticStep = array<i64: 1>, staticUpperBound = array<i64: -9223372036854775808>}> ({
      ^bb0(%arg16: index, %arg17: tensor<?xi64>):
        %178 = "arith.constant"() <{value = 0 : index}> : () -> index
        %179 = "builtin.unrealized_conversion_cast"(%arg16, %167#1, %178, %167#3, %arg17, %167#5) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> !it.symbolic_domain<64>
        %180 = "arith.constant"() <{value = 1 : index}> : () -> index
        %181 = "index.constant"() <{value = 0 : index}> : () -> index
        %182 = "arith.addi"(%arg16, %180) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        %183 = "tensor.extract"(%59, %arg16) : (tensor<?xi64>, index) -> i64
        %184 = "arith.index_cast"(%183) : (i64) -> index
        %185 = "tensor.extract"(%59, %182) : (tensor<?xi64>, index) -> i64
        %186 = "arith.index_cast"(%185) : (i64) -> index
        %187 = "arith.addi"(%arg16, %180) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        %188 = "tensor.extract"(%106, %arg16) : (tensor<?xi64>, index) -> i64
        %189 = "arith.index_cast"(%188) : (i64) -> index
        %190 = "tensor.extract"(%106, %187) : (tensor<?xi64>, index) -> i64
        %191 = "arith.index_cast"(%190) : (i64) -> index
        %192:4 = "scf.while"(%179, %181, %184, %189) ({
        ^bb0(%arg22: !it.symbolic_domain<64>, %arg23: index, %arg24: index, %arg25: index):
          %212 = "arith.cmpi"(%arg25, %191) <{predicate = 6 : i64}> : (index, index) -> i1
          %213 = "arith.cmpi"(%arg24, %186) <{predicate = 6 : i64}> : (index, index) -> i1
          %214 = "arith.andi"(%213, %212) : (i1, i1) -> i1
          "scf.condition"(%214, %arg22, %arg23, %arg24, %arg25) : (i1, !it.symbolic_domain<64>, index, index, index) -> ()
        }, {
        ^bb0(%arg18: !it.symbolic_domain<64>, %arg19: index, %arg20: index, %arg21: index):
          %196 = "ta.SpTensorGetCrd"(%105, %arg21) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %197 = "arith.index_cast"(%196) : (i64) -> index
          %198 = "ta.SpTensorGetCrd"(%57, %arg20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %199 = "arith.index_cast"(%198) : (i64) -> index
          %200 = "arith.minui"(%199, %197) : (index, index) -> index
          %201 = "arith.cmpi"(%200, %199) <{predicate = 0 : i64}> : (index, index) -> i1
          %202 = "arith.cmpi"(%200, %197) <{predicate = 0 : i64}> : (index, index) -> i1
          %203 = "arith.andi"(%201, %202) : (i1, i1) -> i1
          %204:2 = "scf.if"(%203) ({
            %209 = "index.constant"() <{value = 1 : index}> : () -> index
            %210 = "it.SymbolicDomainInsertOp"(%arg18, %200) <{is_unique = true}> : (!it.symbolic_domain<64>, index) -> !it.symbolic_domain<64>
            %211 = "index.add"(%arg19, %209) : (index, index) -> index
            "scf.yield"(%210, %211) : (!it.symbolic_domain<64>, index) -> ()
          }, {
            "scf.yield"(%arg18, %arg19) : (!it.symbolic_domain<64>, index) -> ()
          }) : (i1) -> (!it.symbolic_domain<64>, index)
          %205 = "index.castu"(%201) : (i1) -> index
          %206 = "index.add"(%arg20, %205) : (index, index) -> index
          %207 = "index.castu"(%202) : (i1) -> index
          %208 = "index.add"(%arg21, %207) : (index, index) -> index
          "scf.yield"(%204#0, %204#1, %206, %208) : (!it.symbolic_domain<64>, index, index, index) -> ()
        }) : (!it.symbolic_domain<64>, index, index, index) -> (!it.symbolic_domain<64>, index, index, index)
        %193 = "it.SymbolicDomainEndRowOp"(%192#0) <{needs_mark = false}> : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
        %194:6 = "builtin.unrealized_conversion_cast"(%193) : (!it.symbolic_domain<64>) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>)
        %195 = "tensor.extract_slice"(%194#4, %194#0) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 1>, static_strides = array<i64: 1>}> : (tensor<?xi64>, index) -> tensor<1xi64>
        "scf.forall.in_parallel"() ({
          "tensor.parallel_insert_slice"(%195, %arg17, %194#0) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 1>, static_strides = array<i64: 1>}> : (tensor<1xi64>, tensor<?xi64>, index) -> ()
        }) : () -> ()
      }) : (index, tensor<?xi64>) -> tensor<?xi64>
      %169 = "arith.constant"() <{value = 0 : i64}> : () -> i64
      %170 = "arith.constant"() <{value = 1 : index}> : () -> index
      %171 = "arith.addi"(%58, %170) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
      %172:2 = "scf.for"(%170, %171, %170, %169, %168) ({
      ^bb0(%arg13: index, %arg14: i64, %arg15: tensor<?xi64>):
        %175 = "tensor.extract"(%arg15, %arg13) : (tensor<?xi64>, index) -> i64
        %176 = "arith.addi"(%175, %arg14) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
        %177 = "tensor.insert"(%176, %arg15, %arg13) : (i64, tensor<?xi64>, index) -> tensor<?xi64>
        "scf.yield"(%176, %177) : (i64, tensor<?xi64>) -> ()
      }) : (index, index, index, i64, tensor<?xi64>) -> (i64, tensor<?xi64>)
      %173 = "arith.index_cast"(%172#0) : (i64) -> index
      %174 = "builtin.unrealized_conversion_cast"(%58, %167#1, %173, %167#3, %172#1, %167#5) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> !it.symbolic_domain<64>
      "it.yield"(%174) : (!it.symbolic_domain<64>) -> ()
    }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
    %114 = "it.IndexTreeSparseTensorOp"(%111, %113) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %115 = "it.itree"(%114) <{operandSegmentSizes = array<i32: 1, 0>}> ({
    ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
      %116:7 = "builtin.unrealized_conversion_cast"(%arg0) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>)
      %117:2 = "scf.forall"(%58, %116#5, %116#6) <{operandSegmentSizes = array<i32: 0, 1, 0, 2>, staticLowerBound = array<i64: 0>, staticStep = array<i64: 1>, staticUpperBound = array<i64: -9223372036854775808>}> ({
      ^bb0(%arg1: index, %arg2: tensor<?xi64>, %arg3: tensor<?xf64>):
        %118 = "tensor.extract"(%116#4, %arg1) : (tensor<?xi64>, index) -> i64
        %119 = "arith.index_cast"(%118) : (i64) -> index
        %120 = "arith.constant"() <{value = 1 : index}> : () -> index
        %121 = "arith.addi"(%arg1, %120) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        %122 = "tensor.extract"(%116#4, %121) : (tensor<?xi64>, index) -> i64
        %123 = "arith.index_cast"(%122) : (i64) -> index
        %124 = "arith.subi"(%123, %119) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        %125 = "tensor.extract_slice"(%arg2, %119, %124) <{operandSegmentSizes = array<i32: 1, 1, 1, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (tensor<?xi64>, index, index) -> tensor<?xi64>
        %126 = "tensor.extract_slice"(%arg3, %119, %124) <{operandSegmentSizes = array<i32: 1, 1, 1, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (tensor<?xf64>, index, index) -> tensor<?xf64>
        %127 = "arith.constant"() <{value = 1 : index}> : () -> index
        %128 = "builtin.unrealized_conversion_cast"(%116#0, %116#1, %116#2, %127, %116#4, %125, %126) : (tensor<2xindex>, index, tensor<?xi64>, index, tensor<?xi64>, tensor<?xi64>, tensor<?xf64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
        %129 = "arith.constant"() <{value = 1 : index}> : () -> index
        %130 = "index.constant"() <{value = 0 : index}> : () -> index
        %131 = "arith.addi"(%arg1, %129) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        %132 = "tensor.extract"(%59, %arg1) : (tensor<?xi64>, index) -> i64
        %133 = "arith.index_cast"(%132) : (i64) -> index
        %134 = "tensor.extract"(%59, %131) : (tensor<?xi64>, index) -> i64
        %135 = "arith.index_cast"(%134) : (i64) -> index
        %136 = "arith.addi"(%arg1, %129) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        %137 = "tensor.extract"(%106, %arg1) : (tensor<?xi64>, index) -> i64
        %138 = "arith.index_cast"(%137) : (i64) -> index
        %139 = "tensor.extract"(%106, %136) : (tensor<?xi64>, index) -> i64
        %140 = "arith.index_cast"(%139) : (i64) -> index
        %141:4 = "scf.while"(%128, %130, %133, %138) ({
        ^bb0(%arg8: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg9: index, %arg10: index, %arg11: index):
          %164 = "arith.cmpi"(%arg11, %140) <{predicate = 6 : i64}> : (index, index) -> i1
          %165 = "arith.cmpi"(%arg10, %135) <{predicate = 6 : i64}> : (index, index) -> i1
          %166 = "arith.andi"(%165, %164) : (i1, i1) -> i1
          "scf.condition"(%166, %arg8, %arg9, %arg10, %arg11) : (i1, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> ()
        }, {
        ^bb0(%arg4: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, %arg5: index, %arg6: index, %arg7: index):
          %142 = "ta.SpTensorGetCrd"(%105, %arg7) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %143 = "arith.index_cast"(%142) : (i64) -> index
          %144 = "ta.SpTensorGetCrd"(%57, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %145 = "arith.index_cast"(%144) : (i64) -> index
          %146 = "arith.minui"(%145, %143) : (index, index) -> index
          %147 = "arith.cmpi"(%146, %145) <{predicate = 0 : i64}> : (index, index) -> i1
          %148 = "arith.cmpi"(%146, %143) <{predicate = 0 : i64}> : (index, index) -> i1
          %149 = "arith.andi"(%147, %148) : (i1, i1) -> i1
          %150:2 = "scf.if"(%149) ({
            %155 = "index.constant"() <{value = 1 : index}> : () -> index
            %156 = "index.constant"() <{value = 0 : index}> : () -> index
            %157 = "ta.TensorFindPos"(%arg4, %146) <{dim = 1 : i32, is_linear = true}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> index
            %158 = "ta.TAExtractOp"(%57, %arg6, %arg1, %146) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
            %159 = "ta.TAExtractOp"(%105, %arg7, %arg1, %146) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
            %160 = "arith.mulf"(%158, %159) <{fastmath = #arith.fastmath<none>}> : (f64, f64) -> f64
            %161 = "tensor.extract"(%arg4, %156, %157) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index) -> i64
            %162 = "tensor.insert"(%160, %arg4, %156, %157) : (f64, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index) -> tensor<1xi64>
            %163 = "index.add"(%arg5, %155) : (index, index) -> index
            "scf.yield"(%162, %163) : (tensor<1xi64>, index) -> ()
          }, {
            "scf.yield"(%arg4, %arg5) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> ()
          }) : (i1) -> (tensor<1xi64>, index)
          %151 = "index.castu"(%147) : (i1) -> index
          %152 = "index.add"(%arg6, %151) : (index, index) -> index
          %153 = "index.castu"(%148) : (i1) -> index
          %154 = "index.add"(%arg7, %153) : (index, index) -> index
          "scf.yield"(%150#0, %150#1, %152, %154) : (tensor<1xi64>, index, index, index) -> ()
        }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index)
        "scf.forall.in_parallel"() ({
          "tensor.parallel_insert_slice"(%141#0, %arg3, %arg1) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 1>, static_strides = array<i64: 1>}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, tensor<?xf64>, index) -> ()
        }) : () -> ()
      }) : (index, tensor<?xi64>, tensor<?xf64>) -> (tensor<?xi64>, tensor<?xf64>)
      "it.yield"(%117#1) : (tensor<?xf64>) -> ()
    }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    "ta.print"(%115) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> (), sym_name = "read_input_2D_f64_i64", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (i32, index, index, index, index, memref<*xindex>, i32) -> (), sym_name = "read_input_sizes_2D_f64", sym_visibility = "private"}> ({
  }) : () -> ()
}) : () -> ()