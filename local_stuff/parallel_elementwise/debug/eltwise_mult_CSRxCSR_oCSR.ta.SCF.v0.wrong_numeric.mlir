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
    ^bb0(%arg59: i64, %arg60: i64):
      "linalg.yield"(%arg59) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %30 = "memref.cast"(%29) : (memref<?xi64>) -> memref<*xi64>
    %31 = "memref.alloc"(%19) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %31) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg57: i64, %arg58: i64):
      "linalg.yield"(%arg57) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %32 = "memref.cast"(%31) : (memref<?xi64>) -> memref<*xi64>
    %33 = "memref.alloc"(%20) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %33) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg55: i64, %arg56: i64):
      "linalg.yield"(%arg55) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %34 = "memref.cast"(%33) : (memref<?xi64>) -> memref<*xi64>
    %35 = "memref.alloc"(%21) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %35) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg53: i64, %arg54: i64):
      "linalg.yield"(%arg53) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %36 = "memref.cast"(%35) : (memref<?xi64>) -> memref<*xi64>
    %37 = "memref.alloc"(%22) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %37) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg51: i64, %arg52: i64):
      "linalg.yield"(%arg51) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %38 = "memref.cast"(%37) : (memref<?xi64>) -> memref<*xi64>
    %39 = "memref.alloc"(%23) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %39) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg49: i64, %arg50: i64):
      "linalg.yield"(%arg49) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %40 = "memref.cast"(%39) : (memref<?xi64>) -> memref<*xi64>
    %41 = "memref.alloc"(%24) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %41) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg47: i64, %arg48: i64):
      "linalg.yield"(%arg47) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %42 = "memref.cast"(%41) : (memref<?xi64>) -> memref<*xi64>
    %43 = "memref.alloc"(%25) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %43) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg45: i64, %arg46: i64):
      "linalg.yield"(%arg45) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %44 = "memref.cast"(%43) : (memref<?xi64>) -> memref<*xi64>
    %45 = "memref.alloc"(%26) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xf64>
    "linalg.fill"(%0, %45) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg43: f64, %arg44: f64):
      "linalg.yield"(%arg43) : (f64) -> ()
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
    ^bb0(%arg41: i64, %arg42: i64):
      "linalg.yield"(%arg41) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %78 = "memref.cast"(%77) : (memref<?xi64>) -> memref<*xi64>
    %79 = "memref.alloc"(%67) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %79) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg39: i64, %arg40: i64):
      "linalg.yield"(%arg39) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %80 = "memref.cast"(%79) : (memref<?xi64>) -> memref<*xi64>
    %81 = "memref.alloc"(%68) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %81) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg37: i64, %arg38: i64):
      "linalg.yield"(%arg37) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %82 = "memref.cast"(%81) : (memref<?xi64>) -> memref<*xi64>
    %83 = "memref.alloc"(%69) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %83) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg35: i64, %arg36: i64):
      "linalg.yield"(%arg35) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %84 = "memref.cast"(%83) : (memref<?xi64>) -> memref<*xi64>
    %85 = "memref.alloc"(%70) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %85) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg33: i64, %arg34: i64):
      "linalg.yield"(%arg33) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %86 = "memref.cast"(%85) : (memref<?xi64>) -> memref<*xi64>
    %87 = "memref.alloc"(%71) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %87) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg31: i64, %arg32: i64):
      "linalg.yield"(%arg31) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %88 = "memref.cast"(%87) : (memref<?xi64>) -> memref<*xi64>
    %89 = "memref.alloc"(%72) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %89) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg29: i64, %arg30: i64):
      "linalg.yield"(%arg29) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %90 = "memref.cast"(%89) : (memref<?xi64>) -> memref<*xi64>
    %91 = "memref.alloc"(%73) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    "linalg.fill"(%1, %91) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg27: i64, %arg28: i64):
      "linalg.yield"(%arg27) : (i64) -> ()
    }) : (i64, memref<?xi64>) -> ()
    %92 = "memref.cast"(%91) : (memref<?xi64>) -> memref<*xi64>
    %93 = "memref.alloc"(%74) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xf64>
    "linalg.fill"(%0, %93) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg25: f64, %arg26: f64):
      "linalg.yield"(%arg25) : (f64) -> ()
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
    ^bb0(%arg11: !it.symbolic_domain<64>):
      %156:6 = "builtin.unrealized_conversion_cast"(%arg11) : (!it.symbolic_domain<64>) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>)
      %157 = "scf.forall"(%58, %156#4) <{operandSegmentSizes = array<i32: 0, 1, 0, 1>, staticLowerBound = array<i64: 0>, staticStep = array<i64: 1>, staticUpperBound = array<i64: -9223372036854775808>}> ({
      ^bb0(%arg15: index, %arg16: tensor<?xi64>):
        %167 = "arith.constant"() <{value = 0 : index}> : () -> index
        %168 = "builtin.unrealized_conversion_cast"(%arg15, %156#1, %167, %156#3, %arg16, %156#5) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> !it.symbolic_domain<64>
        %169 = "arith.constant"() <{value = 1 : index}> : () -> index
        %170 = "index.constant"() <{value = 0 : index}> : () -> index
        %171 = "arith.addi"(%arg15, %169) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        %172 = "tensor.extract"(%59, %arg15) : (tensor<?xi64>, index) -> i64
        %173 = "arith.index_cast"(%172) : (i64) -> index
        %174 = "tensor.extract"(%59, %171) : (tensor<?xi64>, index) -> i64
        %175 = "arith.index_cast"(%174) : (i64) -> index
        %176 = "arith.addi"(%arg15, %169) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        %177 = "tensor.extract"(%106, %arg15) : (tensor<?xi64>, index) -> i64
        %178 = "arith.index_cast"(%177) : (i64) -> index
        %179 = "tensor.extract"(%106, %176) : (tensor<?xi64>, index) -> i64
        %180 = "arith.index_cast"(%179) : (i64) -> index
        %181:4 = "scf.while"(%168, %170, %173, %178) ({
        ^bb0(%arg21: !it.symbolic_domain<64>, %arg22: index, %arg23: index, %arg24: index):
          %201 = "arith.cmpi"(%arg24, %180) <{predicate = 6 : i64}> : (index, index) -> i1
          %202 = "arith.cmpi"(%arg23, %175) <{predicate = 6 : i64}> : (index, index) -> i1
          %203 = "arith.andi"(%202, %201) : (i1, i1) -> i1
          "scf.condition"(%203, %arg21, %arg22, %arg23, %arg24) : (i1, !it.symbolic_domain<64>, index, index, index) -> ()
        }, {
        ^bb0(%arg17: !it.symbolic_domain<64>, %arg18: index, %arg19: index, %arg20: index):
          %185 = "ta.SpTensorGetCrd"(%105, %arg20) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %186 = "arith.index_cast"(%185) : (i64) -> index
          %187 = "ta.SpTensorGetCrd"(%57, %arg19) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %188 = "arith.index_cast"(%187) : (i64) -> index
          %189 = "arith.minui"(%188, %186) : (index, index) -> index
          %190 = "arith.cmpi"(%189, %188) <{predicate = 0 : i64}> : (index, index) -> i1
          %191 = "arith.cmpi"(%189, %186) <{predicate = 0 : i64}> : (index, index) -> i1
          %192 = "arith.andi"(%190, %191) : (i1, i1) -> i1
          %193:2 = "scf.if"(%192) ({
            %198 = "index.constant"() <{value = 1 : index}> : () -> index
            %199 = "it.SymbolicDomainInsertOp"(%arg17, %189) <{is_unique = true}> : (!it.symbolic_domain<64>, index) -> !it.symbolic_domain<64>
            %200 = "index.add"(%arg18, %198) : (index, index) -> index
            "scf.yield"(%199, %200) : (!it.symbolic_domain<64>, index) -> ()
          }, {
            "scf.yield"(%arg17, %arg18) : (!it.symbolic_domain<64>, index) -> ()
          }) : (i1) -> (!it.symbolic_domain<64>, index)
          %194 = "index.castu"(%190) : (i1) -> index
          %195 = "index.add"(%arg19, %194) : (index, index) -> index
          %196 = "index.castu"(%191) : (i1) -> index
          %197 = "index.add"(%arg20, %196) : (index, index) -> index
          "scf.yield"(%193#0, %193#1, %195, %197) : (!it.symbolic_domain<64>, index, index, index) -> ()
        }) : (!it.symbolic_domain<64>, index, index, index) -> (!it.symbolic_domain<64>, index, index, index)
        %182 = "it.SymbolicDomainEndRowOp"(%181#0) <{needs_mark = false}> : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
        %183:6 = "builtin.unrealized_conversion_cast"(%182) : (!it.symbolic_domain<64>) -> (index, index, index, index, tensor<?xi64>, tensor<?xi64>)
        %184 = "tensor.extract_slice"(%183#4, %183#0) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 1>, static_strides = array<i64: 1>}> : (tensor<?xi64>, index) -> tensor<1xi64>
        "scf.forall.in_parallel"() ({
          "tensor.parallel_insert_slice"(%184, %arg16, %183#0) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 1>, static_strides = array<i64: 1>}> : (tensor<1xi64>, tensor<?xi64>, index) -> ()
        }) : () -> ()
      }) : (index, tensor<?xi64>) -> tensor<?xi64>
      %158 = "arith.constant"() <{value = 0 : i64}> : () -> i64
      %159 = "arith.constant"() <{value = 1 : index}> : () -> index
      %160 = "arith.addi"(%58, %159) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
      %161:2 = "scf.for"(%159, %160, %159, %158, %157) ({
      ^bb0(%arg12: index, %arg13: i64, %arg14: tensor<?xi64>):
        %164 = "tensor.extract"(%arg14, %arg12) : (tensor<?xi64>, index) -> i64
        %165 = "arith.addi"(%164, %arg13) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
        %166 = "tensor.insert"(%165, %arg14, %arg12) : (i64, tensor<?xi64>, index) -> tensor<?xi64>
        "scf.yield"(%165, %166) : (i64, tensor<?xi64>) -> ()
      }) : (index, index, index, i64, tensor<?xi64>) -> (i64, tensor<?xi64>)
      %162 = "arith.index_cast"(%161#0) : (i64) -> index
      %163 = "builtin.unrealized_conversion_cast"(%58, %156#1, %162, %156#3, %161#1, %156#5) : (index, index, index, index, tensor<?xi64>, tensor<?xi64>) -> !it.symbolic_domain<64>
      "it.yield"(%163) : (!it.symbolic_domain<64>) -> ()
    }) : (!it.symbolic_domain<64>) -> !it.symbolic_domain<64>
    %114 = "it.IndexTreeSparseTensorOp"(%111, %113) : (!it.domain, !it.symbolic_domain<64>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    %115 = "it.itree"(%114) <{operandSegmentSizes = array<i32: 1, 0>}> ({
    ^bb0(%arg0: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
      %116 = "scf.forall"(%58, %arg0) <{operandSegmentSizes = array<i32: 0, 1, 0, 1>, staticLowerBound = array<i64: 0>, staticStep = array<i64: 1>, staticUpperBound = array<i64: -9223372036854775808>}> ({
      ^bb0(%arg1: index, %arg2: !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>):
        %117 = "tensor.extract_slice"(%arg2, %arg1) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 1>, static_strides = array<i64: 1>}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> tensor<1xi64>
        %118 = "arith.constant"() <{value = 1 : index}> : () -> index
        %119 = "index.constant"() <{value = 0 : index}> : () -> index
        %120 = "arith.addi"(%arg1, %118) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        %121 = "tensor.extract"(%59, %arg1) : (tensor<?xi64>, index) -> i64
        %122 = "arith.index_cast"(%121) : (i64) -> index
        %123 = "tensor.extract"(%59, %120) : (tensor<?xi64>, index) -> i64
        %124 = "arith.index_cast"(%123) : (i64) -> index
        %125 = "arith.addi"(%arg1, %118) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        %126 = "tensor.extract"(%106, %arg1) : (tensor<?xi64>, index) -> i64
        %127 = "arith.index_cast"(%126) : (i64) -> index
        %128 = "tensor.extract"(%106, %125) : (tensor<?xi64>, index) -> i64
        %129 = "arith.index_cast"(%128) : (i64) -> index
        %130:4 = "scf.while"(%117, %119, %122, %127) ({
        ^bb0(%arg7: tensor<1xi64>, %arg8: index, %arg9: index, %arg10: index):
          %153 = "arith.cmpi"(%arg10, %129) <{predicate = 6 : i64}> : (index, index) -> i1
          %154 = "arith.cmpi"(%arg9, %124) <{predicate = 6 : i64}> : (index, index) -> i1
          %155 = "arith.andi"(%154, %153) : (i1, i1) -> i1
          "scf.condition"(%155, %arg7, %arg8, %arg9, %arg10) : (i1, tensor<1xi64>, index, index, index) -> ()
        }, {
        ^bb0(%arg3: tensor<1xi64>, %arg4: index, %arg5: index, %arg6: index):
          %131 = "ta.SpTensorGetCrd"(%105, %arg6) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %132 = "arith.index_cast"(%131) : (i64) -> index
          %133 = "ta.SpTensorGetCrd"(%57, %arg5) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
          %134 = "arith.index_cast"(%133) : (i64) -> index
          %135 = "arith.minui"(%134, %132) : (index, index) -> index
          %136 = "arith.cmpi"(%135, %134) <{predicate = 0 : i64}> : (index, index) -> i1
          %137 = "arith.cmpi"(%135, %132) <{predicate = 0 : i64}> : (index, index) -> i1
          %138 = "arith.andi"(%136, %137) : (i1, i1) -> i1
          %139:2 = "scf.if"(%138) ({
            %144 = "index.constant"() <{value = 1 : index}> : () -> index
            %145 = "index.constant"() <{value = 0 : index}> : () -> index
            %146 = "ta.TensorFindPos"(%arg3, %135) <{dim = 1 : i32, is_linear = true}> : (tensor<1xi64>, index) -> index
            %147 = "ta.TAExtractOp"(%57, %arg5, %arg1, %135) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
            %148 = "ta.TAExtractOp"(%105, %arg6, %arg1, %135) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
            %149 = "arith.mulf"(%147, %148) <{fastmath = #arith.fastmath<none>}> : (f64, f64) -> f64
            %150 = "tensor.extract"(%arg3, %145, %146) : (tensor<1xi64>, index, index) -> i64
            %151 = "tensor.insert"(%149, %arg3, %145, %146) : (f64, tensor<1xi64>, index, index) -> tensor<1xi64>
            %152 = "index.add"(%arg4, %144) : (index, index) -> index
            "scf.yield"(%151, %152) : (tensor<1xi64>, index) -> ()
          }, {
            "scf.yield"(%arg3, %arg4) : (tensor<1xi64>, index) -> ()
          }) : (i1) -> (tensor<1xi64>, index)
          %140 = "index.castu"(%136) : (i1) -> index
          %141 = "index.add"(%arg5, %140) : (index, index) -> index
          %142 = "index.castu"(%137) : (i1) -> index
          %143 = "index.add"(%arg6, %142) : (index, index) -> index
          "scf.yield"(%139#0, %139#1, %141, %143) : (tensor<1xi64>, index, index, index) -> ()
        }) : (tensor<1xi64>, index, index, index) -> (tensor<1xi64>, index, index, index)
        "scf.forall.in_parallel"() ({
          "tensor.parallel_insert_slice"(%130#0, %arg2, %arg1) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 1>, static_strides = array<i64: 1>}> : (tensor<1xi64>, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> ()
        }) : () -> ()
      }) : (index, !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
      "it.yield"(%116) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    }) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> !ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>
    "ta.print"(%115) : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> (), sym_name = "read_input_2D_f64_i64", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (i32, index, index, index, index, memref<*xindex>, i32) -> (), sym_name = "read_input_sizes_2D_f64", sym_visibility = "private"}> ({
  }) : () -> ()
}) : () -> ()
