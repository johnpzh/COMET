%125:2 = "scf.forall"(%58, %124#1, %124#2) <{operandSegmentSizes = array<i32: 0, 1, 0, 2>, staticLowerBound = array<i64: 0>, staticStep = array<i64: 1>, staticUpperBound = array<i64: -9223372036854775808>}> ({
^bb0(%arg3: index, %arg4: tensor<?xi64>, %arg5: tensor<?xf64>):
  %127 = "tensor.extract_slice"(%arg4, %arg3) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 1>, static_strides = array<i64: 1>}> : (tensor<?xi64>, index) -> tensor<1xi64>
  %128 = "tensor.extract_slice"(%arg5, %arg3) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 1>, static_strides = array<i64: 1>}> : (tensor<?xf64>, index) -> tensor<1xi64>
  %129 = "ta.WorkspaceClear"(%128) : (tensor<1xi64>) -> !ta.workspace<f64, i64, ?>
  %130 = "arith.constant"() <{value = 1 : index}> : () -> index
  %131 = "arith.addi"(%arg3, %130) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
  %132 = "tensor.extract"(%59, %arg3) : (tensor<?xi64>, index) -> i64
  %133 = "arith.index_cast"(%132) : (i64) -> index
  %134 = "tensor.extract"(%59, %131) : (tensor<?xi64>, index) -> i64
  %135 = "arith.index_cast"(%134) : (i64) -> index
  %136 = "arith.constant"() <{value = 1 : index}> : () -> index
  %137:2 = "scf.for"(%133, %135, %136, %127, %129) ({
  ^bb0(%arg9: index, %arg10: tensor<1xi64>, %arg11: !ta.workspace<f64, i64, ?>):
    %149 = "ta.SpTensorGetCrd"(%57, %arg9) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
    %150 = "arith.index_cast"(%149) : (i64) -> index
    %151 = "arith.constant"() <{value = 1 : index}> : () -> index
    %152 = "arith.addi"(%150, %151) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %153 = "tensor.extract"(%106, %150) : (tensor<?xi64>, index) -> i64
    %154 = "arith.index_cast"(%153) : (i64) -> index
    %155 = "tensor.extract"(%106, %152) : (tensor<?xi64>, index) -> i64
    %156 = "arith.index_cast"(%155) : (i64) -> index
    %157 = "arith.constant"() <{value = 1 : index}> : () -> index
    %158:2 = "scf.for"(%154, %156, %157, %arg10, %arg11) ({
    ^bb0(%arg12: index, %arg13: tensor<1xi64>, %arg14: !ta.workspace<f64, i64, ?>):
      %159 = "ta.SpTensorGetCrd"(%57, %arg9) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
      %160 = "arith.index_cast"(%159) : (i64) -> index
      %161 = "ta.SpTensorGetCrd"(%105, %arg12) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
      %162 = "arith.index_cast"(%161) : (i64) -> index
      %163 = "ta.SpTensorGetCrd"(%105, %arg12) <{dim = 1 : i32}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index) -> i64
      %164 = "arith.index_cast"(%163) : (i64) -> index
      %165 = "ta.TAExtractOp"(%57, %arg9, %arg3, %160) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
      %166 = "ta.TAExtractOp"(%105, %arg12, %150, %162) <{zero = 0.000000e+00 : f64}> : (!ta.sparse_tensor<f64, i64, ?x?, d, unk, cu, unk>, index, index, index) -> f64
      %167 = "arith.mulf"(%165, %166) <{fastmath = #arith.fastmath<none>}> : (f64, f64) -> f64
      %168 = "ta.TAExtractOp"(%arg14, %164, %164) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, ?>, index, index) -> f64
      %169 = "arith.addf"(%168, %167) <{fastmath = #arith.fastmath<none>}> : (f64, f64) -> f64
      %170 = "ta.TAInsertOp"(%arg14, %164, %164, %169) : (!ta.workspace<f64, i64, ?>, index, index, f64) -> !ta.workspace<f64, i64, ?>
      "scf.yield"(%arg13, %170) : (tensor<1xi64>, !ta.workspace<f64, i64, ?>) -> ()
    }) : (index, index, index, tensor<1xi64>, !ta.workspace<f64, i64, ?>) -> (tensor<1xi64>, !ta.workspace<f64, i64, ?>)
    "scf.yield"(%158#0, %158#1) : (tensor<1xi64>, !ta.workspace<f64, i64, ?>) -> ()
  }) : (index, index, index, tensor<1xi64>, !ta.workspace<f64, i64, ?>) -> (tensor<1xi64>, !ta.workspace<f64, i64, ?>)
  %138 = "ta.SortCrdOp"(%137#1) : (!ta.workspace<f64, i64, ?>) -> !ta.workspace<f64, i64, ?>
  %139 = "arith.constant"() <{value = 0 : index}> : () -> index
  %140 = "ta.SpTensorGetNNZ"(%138) : (!ta.workspace<f64, i64, ?>) -> index
  %141 = "arith.constant"() <{value = 1 : index}> : () -> index
  %142:2 = "scf.for"(%139, %140, %141, %137#0, %138) ({
  ^bb0(%arg6: index, %arg7: tensor<1xi64>, %arg8: !ta.workspace<f64, i64, ?>):
    %143 = "index.constant"() <{value = 0 : index}> : () -> index
    %144 = "ta.SpTensorGetCrd"(%arg8, %arg6) <{dim = 0 : i32}> : (!ta.workspace<f64, i64, ?>, index) -> i64
    %145 = "arith.index_cast"(%144) : (i64) -> index
    %146 = "ta.TAExtractOp"(%arg8, %arg6, %145) <{zero = 0.000000e+00 : f64}> : (!ta.workspace<f64, i64, ?>, index, index) -> f64
    %147 = "tensor.extract"(%arg7, %143, %arg6) : (tensor<1xi64>, index, index) -> i64
    %148 = "tensor.insert"(%146, %arg7, %143, %arg6) : (f64, tensor<1xi64>, index, index) -> tensor<1xi64>
    "scf.yield"(%148, %arg8) : (tensor<1xi64>, !ta.workspace<f64, i64, ?>) -> ()
  }) : (index, index, index, tensor<1xi64>, !ta.workspace<f64, i64, ?>) -> (tensor<1xi64>, !ta.workspace<f64, i64, ?>)
  "scf.forall.in_parallel"() ({
    "tensor.parallel_insert_slice"(%142#0, %arg4, %arg3) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 1>, static_strides = array<i64: 1>}> : (tensor<1xi64>, tensor<?xi64>, index) -> ()
    "tensor.parallel_insert_slice"(%142#1, %arg5, %arg3) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 1>, static_strides = array<i64: 1>}> : (!ta.workspace<f64, i64, ?>, tensor<?xf64>, index) -> ()
  }) : () -> ()
}) : (index, tensor<?xi64>, tensor<?xf64>) -> (tensor<?xi64>, tensor<?xf64>)