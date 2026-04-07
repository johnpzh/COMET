// -----// IR Dump After (anonymous namespace)::FuncOpLoweringPass () //----- //
#map = affine_map<(d0, d1, d2) -> (d0, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.indexlabel
    %1 = "ta.index_label"() : () -> !ta.indexlabel
    %2 = "ta.index_label"() : () -> !ta.indexlabel
    %3 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> tensor<?x?xf64>
    %c0 = arith.constant 0 : index
    %4 = "ta.dim"(%3, %c0) : (tensor<?x?xf64>, index) -> index
    %c1 = arith.constant 1 : index
    %5 = "ta.dim"(%3, %c1) : (tensor<?x?xf64>, index) -> index
    %6 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    %7 = "ta.dense_tensor_decl"(%4) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
    "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (tensor<?x?xf64>) -> ()
    "ta.fill"(%6) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
    %8 = "ta.mul"(%3, %6, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["CSR", "Dense", "Dense"], indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x4xf64>, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel) -> tensor<?x4xf64>
    "ta.set_op"(%8, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
    "ta.print"(%7) : (tensor<?x4xf64>) -> ()
    return
  }
}


// -----// IR Dump After (anonymous namespace)::TensorAlgebraCheckImplicitTensorDeclPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %3 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> tensor<?x?xf64>
  %c0 = arith.constant 0 : index
  %4 = "ta.dim"(%3, %c0) : (tensor<?x?xf64>, index) -> index
  %c1 = arith.constant 1 : index
  %5 = "ta.dim"(%3, %c1) : (tensor<?x?xf64>, index) -> index
  %6 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %7 = "ta.dense_tensor_decl"(%4) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (tensor<?x?xf64>) -> ()
  "ta.fill"(%6) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %8 = "ta.mul"(%3, %6, %0, %1, %1, %2, %0, %2) <{MaskType = "none", formats = ["CSR", "Dense", "Dense"], indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>], operandSegmentSizes = array<i32: 1, 1, 6, 0>, semiring = "plusxy_times"}> {__alpha__ = 1.000000e+00 : f64, __beta__ = 0.000000e+00 : f64} : (tensor<?x?xf64>, tensor<?x4xf64>, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel, !ta.indexlabel) -> tensor<?x4xf64>
  "ta.set_op"(%8, %7) {__beta__ = 0.000000e+00 : f64} : (tensor<?x4xf64>, tensor<?x4xf64>) -> ()
  "ta.print"(%7) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToIndexTreePass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %3 = "ta.spTensor_decl"() <{format = "CSR", temporal_tensor = false}> : () -> tensor<?x?xf64>
  %c0 = arith.constant 0 : index
  %4 = "ta.dim"(%3, %c0) : (tensor<?x?xf64>, index) -> index
  %c1 = arith.constant 1 : index
  %5 = "ta.dim"(%3, %c1) : (tensor<?x?xf64>, index) -> index
  %6 = "ta.dense_tensor_decl"(%5) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %7 = "ta.dense_tensor_decl"(%4) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  "ta.fill_from_file"(%3) <{filename = "SPARSE_FILE_NAME0", readMode = 1 : i32}> : (tensor<?x?xf64>) -> ()
  "ta.fill"(%6) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%7) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %8 = "it.ComputeRHS"(%3, %6) <{allFormats = [["D", "CU"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (tensor<?x?xf64>, tensor<?x4xf64>) -> tensor<*xf64>
  %9 = "it.ComputeLHS"(%7) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<?x4xf64>) -> tensor<*xf64>
  %10 = "it.Compute"(%8, %9) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
  %11 = "it.Indices"(%10) <{indices = [2]}> : (i64) -> i64
  %12 = "it.Indices"(%11) <{indices = [1]}> : (i64) -> i64
  %13 = "it.Indices"(%12) <{indices = [0]}> : (i64) -> i64
  %14 = "it.itree"(%13) : (i64) -> i64
  "ta.print"(%7) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_0 = arith.constant 0 : index
  %3 = memref.load %alloc[%c0_0] : memref<13xindex>
  %c1_1 = arith.constant 1 : index
  %4 = memref.load %alloc[%c1_1] : memref<13xindex>
  %c2_2 = arith.constant 2 : index
  %5 = memref.load %alloc[%c2_2] : memref<13xindex>
  %c3_3 = arith.constant 3 : index
  %6 = memref.load %alloc[%c3_3] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %7 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %8 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %9 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %10 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %11 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %12 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %13 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %14 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %15 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_4 = memref.alloc(%3) : memref<?xindex>
  %c0_5 = arith.constant 0 : index
  %c0_6 = arith.constant 0 : index
  %c1_7 = arith.constant 1 : index
  scf.for %arg0 = %c0_6 to %3 step %c1_7 {
    memref.store %c0_5, %alloc_4[%arg0] : memref<?xindex>
  }
  %cast_8 = memref.cast %alloc_4 : memref<?xindex> to memref<*xindex>
  %alloc_9 = memref.alloc(%4) : memref<?xindex>
  %c0_10 = arith.constant 0 : index
  %c0_11 = arith.constant 0 : index
  %c1_12 = arith.constant 1 : index
  scf.for %arg0 = %c0_11 to %4 step %c1_12 {
    memref.store %c0_10, %alloc_9[%arg0] : memref<?xindex>
  }
  %cast_13 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
  %alloc_14 = memref.alloc(%5) : memref<?xindex>
  %c0_15 = arith.constant 0 : index
  %c0_16 = arith.constant 0 : index
  %c1_17 = arith.constant 1 : index
  scf.for %arg0 = %c0_16 to %5 step %c1_17 {
    memref.store %c0_15, %alloc_14[%arg0] : memref<?xindex>
  }
  %cast_18 = memref.cast %alloc_14 : memref<?xindex> to memref<*xindex>
  %alloc_19 = memref.alloc(%6) : memref<?xindex>
  %c0_20 = arith.constant 0 : index
  %c0_21 = arith.constant 0 : index
  %c1_22 = arith.constant 1 : index
  scf.for %arg0 = %c0_21 to %6 step %c1_22 {
    memref.store %c0_20, %alloc_19[%arg0] : memref<?xindex>
  }
  %cast_23 = memref.cast %alloc_19 : memref<?xindex> to memref<*xindex>
  %alloc_24 = memref.alloc(%7) : memref<?xindex>
  %c0_25 = arith.constant 0 : index
  %c0_26 = arith.constant 0 : index
  %c1_27 = arith.constant 1 : index
  scf.for %arg0 = %c0_26 to %7 step %c1_27 {
    memref.store %c0_25, %alloc_24[%arg0] : memref<?xindex>
  }
  %cast_28 = memref.cast %alloc_24 : memref<?xindex> to memref<*xindex>
  %alloc_29 = memref.alloc(%8) : memref<?xindex>
  %c0_30 = arith.constant 0 : index
  %c0_31 = arith.constant 0 : index
  %c1_32 = arith.constant 1 : index
  scf.for %arg0 = %c0_31 to %8 step %c1_32 {
    memref.store %c0_30, %alloc_29[%arg0] : memref<?xindex>
  }
  %cast_33 = memref.cast %alloc_29 : memref<?xindex> to memref<*xindex>
  %alloc_34 = memref.alloc(%9) : memref<?xindex>
  %c0_35 = arith.constant 0 : index
  %c0_36 = arith.constant 0 : index
  %c1_37 = arith.constant 1 : index
  scf.for %arg0 = %c0_36 to %9 step %c1_37 {
    memref.store %c0_35, %alloc_34[%arg0] : memref<?xindex>
  }
  %cast_38 = memref.cast %alloc_34 : memref<?xindex> to memref<*xindex>
  %alloc_39 = memref.alloc(%10) : memref<?xindex>
  %c0_40 = arith.constant 0 : index
  %c0_41 = arith.constant 0 : index
  %c1_42 = arith.constant 1 : index
  scf.for %arg0 = %c0_41 to %10 step %c1_42 {
    memref.store %c0_40, %alloc_39[%arg0] : memref<?xindex>
  }
  %cast_43 = memref.cast %alloc_39 : memref<?xindex> to memref<*xindex>
  %alloc_44 = memref.alloc(%11) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  %c0_45 = arith.constant 0 : index
  %c1_46 = arith.constant 1 : index
  scf.for %arg0 = %c0_45 to %11 step %c1_46 {
    memref.store %cst, %alloc_44[%arg0] : memref<?xf64>
  }
  %cast_47 = memref.cast %alloc_44 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_8, %cast_13, %cast_18, %cast_23, %cast_28, %cast_33, %cast_38, %cast_43, %cast_47, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
  %16 = bufferization.to_tensor %alloc_4 : memref<?xindex>
  %17 = bufferization.to_tensor %alloc_9 : memref<?xindex>
  %18 = bufferization.to_tensor %alloc_14 : memref<?xindex>
  %19 = bufferization.to_tensor %alloc_19 : memref<?xindex>
  %20 = bufferization.to_tensor %alloc_24 : memref<?xindex>
  %21 = bufferization.to_tensor %alloc_29 : memref<?xindex>
  %22 = bufferization.to_tensor %alloc_34 : memref<?xindex>
  %23 = bufferization.to_tensor %alloc_39 : memref<?xindex>
  %24 = bufferization.to_tensor %alloc_44 : memref<?xf64>
  %25 = ta.spTensor_construct(%16, %17, %18, %19, %20, %21, %22, %23, %24, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) {tensor_rank = 2 : i32} : (tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index) -> (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>)
  %c0_48 = arith.constant 0 : index
  %26 = "ta.dim"(%25, %c0_48) : (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, index) -> index
  %c1_49 = arith.constant 1 : index
  %27 = "ta.dim"(%25, %c1_49) : (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, index) -> index
  %28 = "ta.dense_tensor_decl"(%27) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  %29 = "ta.dense_tensor_decl"(%26) <{format = "Dense"}> : (index) -> tensor<?x4xf64>
  "ta.fill"(%28) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%29) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %30 = "it.ComputeRHS"(%25, %28) <{allFormats = [["D", "CU"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, tensor<?x4xf64>) -> tensor<*xf64>
  %31 = "it.ComputeLHS"(%29) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<?x4xf64>) -> tensor<*xf64>
  %32 = "it.Compute"(%30, %31) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
  %33 = "it.Indices"(%32) <{indices = [2]}> : (i64) -> i64
  %34 = "it.Indices"(%33) <{indices = [1]}> : (i64) -> i64
  %35 = "it.Indices"(%34) <{indices = [0]}> : (i64) -> i64
  %36 = "it.itree"(%35) : (i64) -> i64
  "ta.print"(%29) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_0 = arith.constant 0 : index
  %3 = memref.load %alloc[%c0_0] : memref<13xindex>
  %c1_1 = arith.constant 1 : index
  %4 = memref.load %alloc[%c1_1] : memref<13xindex>
  %c2_2 = arith.constant 2 : index
  %5 = memref.load %alloc[%c2_2] : memref<13xindex>
  %c3_3 = arith.constant 3 : index
  %6 = memref.load %alloc[%c3_3] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %7 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %8 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %9 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %10 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %11 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %12 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %13 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %14 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %15 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_4 = memref.alloc(%3) : memref<?xindex>
  %c0_5 = arith.constant 0 : index
  %c0_6 = arith.constant 0 : index
  %c1_7 = arith.constant 1 : index
  scf.for %arg0 = %c0_6 to %3 step %c1_7 {
    memref.store %c0_5, %alloc_4[%arg0] : memref<?xindex>
  }
  %cast_8 = memref.cast %alloc_4 : memref<?xindex> to memref<*xindex>
  %alloc_9 = memref.alloc(%4) : memref<?xindex>
  %c0_10 = arith.constant 0 : index
  %c0_11 = arith.constant 0 : index
  %c1_12 = arith.constant 1 : index
  scf.for %arg0 = %c0_11 to %4 step %c1_12 {
    memref.store %c0_10, %alloc_9[%arg0] : memref<?xindex>
  }
  %cast_13 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
  %alloc_14 = memref.alloc(%5) : memref<?xindex>
  %c0_15 = arith.constant 0 : index
  %c0_16 = arith.constant 0 : index
  %c1_17 = arith.constant 1 : index
  scf.for %arg0 = %c0_16 to %5 step %c1_17 {
    memref.store %c0_15, %alloc_14[%arg0] : memref<?xindex>
  }
  %cast_18 = memref.cast %alloc_14 : memref<?xindex> to memref<*xindex>
  %alloc_19 = memref.alloc(%6) : memref<?xindex>
  %c0_20 = arith.constant 0 : index
  %c0_21 = arith.constant 0 : index
  %c1_22 = arith.constant 1 : index
  scf.for %arg0 = %c0_21 to %6 step %c1_22 {
    memref.store %c0_20, %alloc_19[%arg0] : memref<?xindex>
  }
  %cast_23 = memref.cast %alloc_19 : memref<?xindex> to memref<*xindex>
  %alloc_24 = memref.alloc(%7) : memref<?xindex>
  %c0_25 = arith.constant 0 : index
  %c0_26 = arith.constant 0 : index
  %c1_27 = arith.constant 1 : index
  scf.for %arg0 = %c0_26 to %7 step %c1_27 {
    memref.store %c0_25, %alloc_24[%arg0] : memref<?xindex>
  }
  %cast_28 = memref.cast %alloc_24 : memref<?xindex> to memref<*xindex>
  %alloc_29 = memref.alloc(%8) : memref<?xindex>
  %c0_30 = arith.constant 0 : index
  %c0_31 = arith.constant 0 : index
  %c1_32 = arith.constant 1 : index
  scf.for %arg0 = %c0_31 to %8 step %c1_32 {
    memref.store %c0_30, %alloc_29[%arg0] : memref<?xindex>
  }
  %cast_33 = memref.cast %alloc_29 : memref<?xindex> to memref<*xindex>
  %alloc_34 = memref.alloc(%9) : memref<?xindex>
  %c0_35 = arith.constant 0 : index
  %c0_36 = arith.constant 0 : index
  %c1_37 = arith.constant 1 : index
  scf.for %arg0 = %c0_36 to %9 step %c1_37 {
    memref.store %c0_35, %alloc_34[%arg0] : memref<?xindex>
  }
  %cast_38 = memref.cast %alloc_34 : memref<?xindex> to memref<*xindex>
  %alloc_39 = memref.alloc(%10) : memref<?xindex>
  %c0_40 = arith.constant 0 : index
  %c0_41 = arith.constant 0 : index
  %c1_42 = arith.constant 1 : index
  scf.for %arg0 = %c0_41 to %10 step %c1_42 {
    memref.store %c0_40, %alloc_39[%arg0] : memref<?xindex>
  }
  %cast_43 = memref.cast %alloc_39 : memref<?xindex> to memref<*xindex>
  %alloc_44 = memref.alloc(%11) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  %c0_45 = arith.constant 0 : index
  %c1_46 = arith.constant 1 : index
  scf.for %arg0 = %c0_45 to %11 step %c1_46 {
    memref.store %cst, %alloc_44[%arg0] : memref<?xf64>
  }
  %cast_47 = memref.cast %alloc_44 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_8, %cast_13, %cast_18, %cast_23, %cast_28, %cast_33, %cast_38, %cast_43, %cast_47, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
  %16 = bufferization.to_tensor %alloc_4 : memref<?xindex>
  %17 = bufferization.to_tensor %alloc_9 : memref<?xindex>
  %18 = bufferization.to_tensor %alloc_14 : memref<?xindex>
  %19 = bufferization.to_tensor %alloc_19 : memref<?xindex>
  %20 = bufferization.to_tensor %alloc_24 : memref<?xindex>
  %21 = bufferization.to_tensor %alloc_29 : memref<?xindex>
  %22 = bufferization.to_tensor %alloc_34 : memref<?xindex>
  %23 = bufferization.to_tensor %alloc_39 : memref<?xindex>
  %24 = bufferization.to_tensor %alloc_44 : memref<?xf64>
  %25 = ta.spTensor_construct(%16, %17, %18, %19, %20, %21, %22, %23, %24, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) {tensor_rank = 2 : i32} : (tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index) -> (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>)
  %c0_48 = arith.constant 0 : index
  %26 = "ta.dim"(%25, %c0_48) : (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, index) -> index
  %c1_49 = arith.constant 1 : index
  %27 = "ta.dim"(%25, %c1_49) : (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, index) -> index
  %alloc_50 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x4xf64>
  %28 = bufferization.to_tensor %alloc_50 : memref<?x4xf64>
  %alloc_51 = memref.alloc(%26) {alignment = 32 : i64} : memref<?x4xf64>
  %29 = bufferization.to_tensor %alloc_51 : memref<?x4xf64>
  "ta.fill"(%28) <{value = 1.700000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  "ta.fill"(%29) <{value = 0.000000e+00 : f64}> : (tensor<?x4xf64>) -> ()
  %30 = "it.ComputeRHS"(%25, %28) <{allFormats = [["D", "CU"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, tensor<?x4xf64>) -> tensor<*xf64>
  %31 = "it.ComputeLHS"(%29) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<?x4xf64>) -> tensor<*xf64>
  %32 = "it.Compute"(%30, %31) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
  %33 = "it.Indices"(%32) <{indices = [2]}> : (i64) -> i64
  %34 = "it.Indices"(%33) <{indices = [1]}> : (i64) -> i64
  %35 = "it.Indices"(%34) <{indices = [0]}> : (i64) -> i64
  %36 = "it.itree"(%35) : (i64) -> i64
  "ta.print"(%29) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_0 = arith.constant 0 : index
  %3 = memref.load %alloc[%c0_0] : memref<13xindex>
  %c1_1 = arith.constant 1 : index
  %4 = memref.load %alloc[%c1_1] : memref<13xindex>
  %c2_2 = arith.constant 2 : index
  %5 = memref.load %alloc[%c2_2] : memref<13xindex>
  %c3_3 = arith.constant 3 : index
  %6 = memref.load %alloc[%c3_3] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %7 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %8 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %9 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %10 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %11 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %12 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %13 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %14 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %15 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_4 = memref.alloc(%3) : memref<?xindex>
  %c0_5 = arith.constant 0 : index
  %c0_6 = arith.constant 0 : index
  %c1_7 = arith.constant 1 : index
  scf.for %arg0 = %c0_6 to %3 step %c1_7 {
    memref.store %c0_5, %alloc_4[%arg0] : memref<?xindex>
  }
  %cast_8 = memref.cast %alloc_4 : memref<?xindex> to memref<*xindex>
  %alloc_9 = memref.alloc(%4) : memref<?xindex>
  %c0_10 = arith.constant 0 : index
  %c0_11 = arith.constant 0 : index
  %c1_12 = arith.constant 1 : index
  scf.for %arg0 = %c0_11 to %4 step %c1_12 {
    memref.store %c0_10, %alloc_9[%arg0] : memref<?xindex>
  }
  %cast_13 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
  %alloc_14 = memref.alloc(%5) : memref<?xindex>
  %c0_15 = arith.constant 0 : index
  %c0_16 = arith.constant 0 : index
  %c1_17 = arith.constant 1 : index
  scf.for %arg0 = %c0_16 to %5 step %c1_17 {
    memref.store %c0_15, %alloc_14[%arg0] : memref<?xindex>
  }
  %cast_18 = memref.cast %alloc_14 : memref<?xindex> to memref<*xindex>
  %alloc_19 = memref.alloc(%6) : memref<?xindex>
  %c0_20 = arith.constant 0 : index
  %c0_21 = arith.constant 0 : index
  %c1_22 = arith.constant 1 : index
  scf.for %arg0 = %c0_21 to %6 step %c1_22 {
    memref.store %c0_20, %alloc_19[%arg0] : memref<?xindex>
  }
  %cast_23 = memref.cast %alloc_19 : memref<?xindex> to memref<*xindex>
  %alloc_24 = memref.alloc(%7) : memref<?xindex>
  %c0_25 = arith.constant 0 : index
  %c0_26 = arith.constant 0 : index
  %c1_27 = arith.constant 1 : index
  scf.for %arg0 = %c0_26 to %7 step %c1_27 {
    memref.store %c0_25, %alloc_24[%arg0] : memref<?xindex>
  }
  %cast_28 = memref.cast %alloc_24 : memref<?xindex> to memref<*xindex>
  %alloc_29 = memref.alloc(%8) : memref<?xindex>
  %c0_30 = arith.constant 0 : index
  %c0_31 = arith.constant 0 : index
  %c1_32 = arith.constant 1 : index
  scf.for %arg0 = %c0_31 to %8 step %c1_32 {
    memref.store %c0_30, %alloc_29[%arg0] : memref<?xindex>
  }
  %cast_33 = memref.cast %alloc_29 : memref<?xindex> to memref<*xindex>
  %alloc_34 = memref.alloc(%9) : memref<?xindex>
  %c0_35 = arith.constant 0 : index
  %c0_36 = arith.constant 0 : index
  %c1_37 = arith.constant 1 : index
  scf.for %arg0 = %c0_36 to %9 step %c1_37 {
    memref.store %c0_35, %alloc_34[%arg0] : memref<?xindex>
  }
  %cast_38 = memref.cast %alloc_34 : memref<?xindex> to memref<*xindex>
  %alloc_39 = memref.alloc(%10) : memref<?xindex>
  %c0_40 = arith.constant 0 : index
  %c0_41 = arith.constant 0 : index
  %c1_42 = arith.constant 1 : index
  scf.for %arg0 = %c0_41 to %10 step %c1_42 {
    memref.store %c0_40, %alloc_39[%arg0] : memref<?xindex>
  }
  %cast_43 = memref.cast %alloc_39 : memref<?xindex> to memref<*xindex>
  %alloc_44 = memref.alloc(%11) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  %c0_45 = arith.constant 0 : index
  %c1_46 = arith.constant 1 : index
  scf.for %arg0 = %c0_45 to %11 step %c1_46 {
    memref.store %cst, %alloc_44[%arg0] : memref<?xf64>
  }
  %cast_47 = memref.cast %alloc_44 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_8, %cast_13, %cast_18, %cast_23, %cast_28, %cast_33, %cast_38, %cast_43, %cast_47, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
  %16 = bufferization.to_tensor %alloc_4 : memref<?xindex>
  %17 = bufferization.to_tensor %alloc_9 : memref<?xindex>
  %18 = bufferization.to_tensor %alloc_14 : memref<?xindex>
  %19 = bufferization.to_tensor %alloc_19 : memref<?xindex>
  %20 = bufferization.to_tensor %alloc_24 : memref<?xindex>
  %21 = bufferization.to_tensor %alloc_29 : memref<?xindex>
  %22 = bufferization.to_tensor %alloc_34 : memref<?xindex>
  %23 = bufferization.to_tensor %alloc_39 : memref<?xindex>
  %24 = bufferization.to_tensor %alloc_44 : memref<?xf64>
  %25 = ta.spTensor_construct(%16, %17, %18, %19, %20, %21, %22, %23, %24, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) {tensor_rank = 2 : i32} : (tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index) -> (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>)
  %c0_48 = arith.constant 0 : index
  %26 = "ta.dim"(%25, %c0_48) : (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, index) -> index
  %c1_49 = arith.constant 1 : index
  %27 = "ta.dim"(%25, %c1_49) : (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, index) -> index
  %alloc_50 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x4xf64>
  %28 = bufferization.to_tensor %alloc_50 : memref<?x4xf64>
  %alloc_51 = memref.alloc(%26) {alignment = 32 : i64} : memref<?x4xf64>
  %29 = bufferization.to_tensor %alloc_51 : memref<?x4xf64>
  %cst_52 = arith.constant 1.700000e+00 : f64
  linalg.fill ins(%cst_52 : f64) outs(%alloc_50 : memref<?x4xf64>)
  %cst_53 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_53 : f64) outs(%alloc_51 : memref<?x4xf64>)
  %30 = "it.ComputeRHS"(%25, %28) <{allFormats = [["D", "CU"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, tensor<?x4xf64>) -> tensor<*xf64>
  %31 = "it.ComputeLHS"(%29) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<?x4xf64>) -> tensor<*xf64>
  %32 = "it.Compute"(%30, %31) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
  %33 = "it.Indices"(%32) <{indices = [2]}> : (i64) -> i64
  %34 = "it.Indices"(%33) <{indices = [1]}> : (i64) -> i64
  %35 = "it.Indices"(%34) <{indices = [0]}> : (i64) -> i64
  %36 = "it.itree"(%35) : (i64) -> i64
  "ta.print"(%29) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_0 = arith.constant 0 : index
  %3 = memref.load %alloc[%c0_0] : memref<13xindex>
  %c1_1 = arith.constant 1 : index
  %4 = memref.load %alloc[%c1_1] : memref<13xindex>
  %c2_2 = arith.constant 2 : index
  %5 = memref.load %alloc[%c2_2] : memref<13xindex>
  %c3_3 = arith.constant 3 : index
  %6 = memref.load %alloc[%c3_3] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %7 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %8 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %9 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %10 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %11 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %12 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %13 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %14 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %15 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_4 = memref.alloc(%3) : memref<?xindex>
  %c0_5 = arith.constant 0 : index
  %c0_6 = arith.constant 0 : index
  %c1_7 = arith.constant 1 : index
  scf.for %arg0 = %c0_6 to %3 step %c1_7 {
    memref.store %c0_5, %alloc_4[%arg0] : memref<?xindex>
  }
  %cast_8 = memref.cast %alloc_4 : memref<?xindex> to memref<*xindex>
  %alloc_9 = memref.alloc(%4) : memref<?xindex>
  %c0_10 = arith.constant 0 : index
  %c0_11 = arith.constant 0 : index
  %c1_12 = arith.constant 1 : index
  scf.for %arg0 = %c0_11 to %4 step %c1_12 {
    memref.store %c0_10, %alloc_9[%arg0] : memref<?xindex>
  }
  %cast_13 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
  %alloc_14 = memref.alloc(%5) : memref<?xindex>
  %c0_15 = arith.constant 0 : index
  %c0_16 = arith.constant 0 : index
  %c1_17 = arith.constant 1 : index
  scf.for %arg0 = %c0_16 to %5 step %c1_17 {
    memref.store %c0_15, %alloc_14[%arg0] : memref<?xindex>
  }
  %cast_18 = memref.cast %alloc_14 : memref<?xindex> to memref<*xindex>
  %alloc_19 = memref.alloc(%6) : memref<?xindex>
  %c0_20 = arith.constant 0 : index
  %c0_21 = arith.constant 0 : index
  %c1_22 = arith.constant 1 : index
  scf.for %arg0 = %c0_21 to %6 step %c1_22 {
    memref.store %c0_20, %alloc_19[%arg0] : memref<?xindex>
  }
  %cast_23 = memref.cast %alloc_19 : memref<?xindex> to memref<*xindex>
  %alloc_24 = memref.alloc(%7) : memref<?xindex>
  %c0_25 = arith.constant 0 : index
  %c0_26 = arith.constant 0 : index
  %c1_27 = arith.constant 1 : index
  scf.for %arg0 = %c0_26 to %7 step %c1_27 {
    memref.store %c0_25, %alloc_24[%arg0] : memref<?xindex>
  }
  %cast_28 = memref.cast %alloc_24 : memref<?xindex> to memref<*xindex>
  %alloc_29 = memref.alloc(%8) : memref<?xindex>
  %c0_30 = arith.constant 0 : index
  %c0_31 = arith.constant 0 : index
  %c1_32 = arith.constant 1 : index
  scf.for %arg0 = %c0_31 to %8 step %c1_32 {
    memref.store %c0_30, %alloc_29[%arg0] : memref<?xindex>
  }
  %cast_33 = memref.cast %alloc_29 : memref<?xindex> to memref<*xindex>
  %alloc_34 = memref.alloc(%9) : memref<?xindex>
  %c0_35 = arith.constant 0 : index
  %c0_36 = arith.constant 0 : index
  %c1_37 = arith.constant 1 : index
  scf.for %arg0 = %c0_36 to %9 step %c1_37 {
    memref.store %c0_35, %alloc_34[%arg0] : memref<?xindex>
  }
  %cast_38 = memref.cast %alloc_34 : memref<?xindex> to memref<*xindex>
  %alloc_39 = memref.alloc(%10) : memref<?xindex>
  %c0_40 = arith.constant 0 : index
  %c0_41 = arith.constant 0 : index
  %c1_42 = arith.constant 1 : index
  scf.for %arg0 = %c0_41 to %10 step %c1_42 {
    memref.store %c0_40, %alloc_39[%arg0] : memref<?xindex>
  }
  %cast_43 = memref.cast %alloc_39 : memref<?xindex> to memref<*xindex>
  %alloc_44 = memref.alloc(%11) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  %c0_45 = arith.constant 0 : index
  %c1_46 = arith.constant 1 : index
  scf.for %arg0 = %c0_45 to %11 step %c1_46 {
    memref.store %cst, %alloc_44[%arg0] : memref<?xf64>
  }
  %cast_47 = memref.cast %alloc_44 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_8, %cast_13, %cast_18, %cast_23, %cast_28, %cast_33, %cast_38, %cast_43, %cast_47, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
  %16 = bufferization.to_tensor %alloc_4 : memref<?xindex>
  %17 = bufferization.to_tensor %alloc_9 : memref<?xindex>
  %18 = bufferization.to_tensor %alloc_14 : memref<?xindex>
  %19 = bufferization.to_tensor %alloc_19 : memref<?xindex>
  %20 = bufferization.to_tensor %alloc_24 : memref<?xindex>
  %21 = bufferization.to_tensor %alloc_29 : memref<?xindex>
  %22 = bufferization.to_tensor %alloc_34 : memref<?xindex>
  %23 = bufferization.to_tensor %alloc_39 : memref<?xindex>
  %24 = bufferization.to_tensor %alloc_44 : memref<?xf64>
  %25 = ta.spTensor_construct(%16, %17, %18, %19, %20, %21, %22, %23, %24, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) {tensor_rank = 2 : i32} : (tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index) -> (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>)
  %c0_48 = arith.constant 0 : index
  %26 = "ta.dim"(%25, %c0_48) : (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, index) -> index
  %c1_49 = arith.constant 1 : index
  %27 = "ta.dim"(%25, %c1_49) : (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, index) -> index
  %alloc_50 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x4xf64>
  %28 = bufferization.to_tensor %alloc_50 : memref<?x4xf64>
  %alloc_51 = memref.alloc(%26) {alignment = 32 : i64} : memref<?x4xf64>
  %29 = bufferization.to_tensor %alloc_51 : memref<?x4xf64>
  %cst_52 = arith.constant 1.700000e+00 : f64
  linalg.fill ins(%cst_52 : f64) outs(%alloc_50 : memref<?x4xf64>)
  %cst_53 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_53 : f64) outs(%alloc_51 : memref<?x4xf64>)
  %30 = "it.ComputeRHS"(%25, %28) <{allFormats = [["D", "CU"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, tensor<?x4xf64>) -> tensor<*xf64>
  %31 = "it.ComputeLHS"(%29) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<?x4xf64>) -> tensor<*xf64>
  %32 = "it.Compute"(%30, %31) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
  %33 = "it.Indices"(%32) <{indices = [2]}> : (i64) -> i64
  %34 = "it.Indices"(%33) <{indices = [1]}> : (i64) -> i64
  %35 = "it.Indices"(%34) <{indices = [0]}> : (i64) -> i64
  %36 = "it.itree"(%35) : (i64) -> i64
  "ta.print"(%29) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseTempOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_0 = arith.constant 0 : index
  %3 = memref.load %alloc[%c0_0] : memref<13xindex>
  %c1_1 = arith.constant 1 : index
  %4 = memref.load %alloc[%c1_1] : memref<13xindex>
  %c2_2 = arith.constant 2 : index
  %5 = memref.load %alloc[%c2_2] : memref<13xindex>
  %c3_3 = arith.constant 3 : index
  %6 = memref.load %alloc[%c3_3] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %7 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %8 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %9 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %10 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %11 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %12 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %13 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %14 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %15 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_4 = memref.alloc(%3) : memref<?xindex>
  %c0_5 = arith.constant 0 : index
  %c0_6 = arith.constant 0 : index
  %c1_7 = arith.constant 1 : index
  scf.for %arg0 = %c0_6 to %3 step %c1_7 {
    memref.store %c0_5, %alloc_4[%arg0] : memref<?xindex>
  }
  %cast_8 = memref.cast %alloc_4 : memref<?xindex> to memref<*xindex>
  %alloc_9 = memref.alloc(%4) : memref<?xindex>
  %c0_10 = arith.constant 0 : index
  %c0_11 = arith.constant 0 : index
  %c1_12 = arith.constant 1 : index
  scf.for %arg0 = %c0_11 to %4 step %c1_12 {
    memref.store %c0_10, %alloc_9[%arg0] : memref<?xindex>
  }
  %cast_13 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
  %alloc_14 = memref.alloc(%5) : memref<?xindex>
  %c0_15 = arith.constant 0 : index
  %c0_16 = arith.constant 0 : index
  %c1_17 = arith.constant 1 : index
  scf.for %arg0 = %c0_16 to %5 step %c1_17 {
    memref.store %c0_15, %alloc_14[%arg0] : memref<?xindex>
  }
  %cast_18 = memref.cast %alloc_14 : memref<?xindex> to memref<*xindex>
  %alloc_19 = memref.alloc(%6) : memref<?xindex>
  %c0_20 = arith.constant 0 : index
  %c0_21 = arith.constant 0 : index
  %c1_22 = arith.constant 1 : index
  scf.for %arg0 = %c0_21 to %6 step %c1_22 {
    memref.store %c0_20, %alloc_19[%arg0] : memref<?xindex>
  }
  %cast_23 = memref.cast %alloc_19 : memref<?xindex> to memref<*xindex>
  %alloc_24 = memref.alloc(%7) : memref<?xindex>
  %c0_25 = arith.constant 0 : index
  %c0_26 = arith.constant 0 : index
  %c1_27 = arith.constant 1 : index
  scf.for %arg0 = %c0_26 to %7 step %c1_27 {
    memref.store %c0_25, %alloc_24[%arg0] : memref<?xindex>
  }
  %cast_28 = memref.cast %alloc_24 : memref<?xindex> to memref<*xindex>
  %alloc_29 = memref.alloc(%8) : memref<?xindex>
  %c0_30 = arith.constant 0 : index
  %c0_31 = arith.constant 0 : index
  %c1_32 = arith.constant 1 : index
  scf.for %arg0 = %c0_31 to %8 step %c1_32 {
    memref.store %c0_30, %alloc_29[%arg0] : memref<?xindex>
  }
  %cast_33 = memref.cast %alloc_29 : memref<?xindex> to memref<*xindex>
  %alloc_34 = memref.alloc(%9) : memref<?xindex>
  %c0_35 = arith.constant 0 : index
  %c0_36 = arith.constant 0 : index
  %c1_37 = arith.constant 1 : index
  scf.for %arg0 = %c0_36 to %9 step %c1_37 {
    memref.store %c0_35, %alloc_34[%arg0] : memref<?xindex>
  }
  %cast_38 = memref.cast %alloc_34 : memref<?xindex> to memref<*xindex>
  %alloc_39 = memref.alloc(%10) : memref<?xindex>
  %c0_40 = arith.constant 0 : index
  %c0_41 = arith.constant 0 : index
  %c1_42 = arith.constant 1 : index
  scf.for %arg0 = %c0_41 to %10 step %c1_42 {
    memref.store %c0_40, %alloc_39[%arg0] : memref<?xindex>
  }
  %cast_43 = memref.cast %alloc_39 : memref<?xindex> to memref<*xindex>
  %alloc_44 = memref.alloc(%11) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  %c0_45 = arith.constant 0 : index
  %c1_46 = arith.constant 1 : index
  scf.for %arg0 = %c0_45 to %11 step %c1_46 {
    memref.store %cst, %alloc_44[%arg0] : memref<?xf64>
  }
  %cast_47 = memref.cast %alloc_44 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_8, %cast_13, %cast_18, %cast_23, %cast_28, %cast_33, %cast_38, %cast_43, %cast_47, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
  %16 = bufferization.to_tensor %alloc_4 : memref<?xindex>
  %17 = bufferization.to_tensor %alloc_9 : memref<?xindex>
  %18 = bufferization.to_tensor %alloc_14 : memref<?xindex>
  %19 = bufferization.to_tensor %alloc_19 : memref<?xindex>
  %20 = bufferization.to_tensor %alloc_24 : memref<?xindex>
  %21 = bufferization.to_tensor %alloc_29 : memref<?xindex>
  %22 = bufferization.to_tensor %alloc_34 : memref<?xindex>
  %23 = bufferization.to_tensor %alloc_39 : memref<?xindex>
  %24 = bufferization.to_tensor %alloc_44 : memref<?xf64>
  %25 = ta.spTensor_construct(%16, %17, %18, %19, %20, %21, %22, %23, %24, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) {tensor_rank = 2 : i32} : (tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index) -> (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>)
  %c0_48 = arith.constant 0 : index
  %26 = "ta.dim"(%25, %c0_48) : (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, index) -> index
  %c1_49 = arith.constant 1 : index
  %27 = "ta.dim"(%25, %c1_49) : (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, index) -> index
  %alloc_50 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x4xf64>
  %28 = bufferization.to_tensor %alloc_50 : memref<?x4xf64>
  %alloc_51 = memref.alloc(%26) {alignment = 32 : i64} : memref<?x4xf64>
  %29 = bufferization.to_tensor %alloc_51 : memref<?x4xf64>
  %cst_52 = arith.constant 1.700000e+00 : f64
  linalg.fill ins(%cst_52 : f64) outs(%alloc_50 : memref<?x4xf64>)
  %cst_53 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_53 : f64) outs(%alloc_51 : memref<?x4xf64>)
  %30 = "it.ComputeRHS"(%25, %28) <{allFormats = [["D", "CU"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, tensor<?x4xf64>) -> tensor<*xf64>
  %31 = "it.ComputeLHS"(%29) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<?x4xf64>) -> tensor<*xf64>
  %32 = "it.Compute"(%30, %31) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
  %33 = "it.Indices"(%32) <{indices = [2]}> : (i64) -> i64
  %34 = "it.Indices"(%33) <{indices = [1]}> : (i64) -> i64
  %35 = "it.Indices"(%34) <{indices = [0]}> : (i64) -> i64
  %36 = "it.itree"(%35) : (i64) -> i64
  "ta.print"(%29) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::SparseOutputTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_0 = arith.constant 0 : index
  %3 = memref.load %alloc[%c0_0] : memref<13xindex>
  %c1_1 = arith.constant 1 : index
  %4 = memref.load %alloc[%c1_1] : memref<13xindex>
  %c2_2 = arith.constant 2 : index
  %5 = memref.load %alloc[%c2_2] : memref<13xindex>
  %c3_3 = arith.constant 3 : index
  %6 = memref.load %alloc[%c3_3] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %7 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %8 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %9 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %10 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %11 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %12 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %13 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %14 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %15 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_4 = memref.alloc(%3) : memref<?xindex>
  %c0_5 = arith.constant 0 : index
  %c0_6 = arith.constant 0 : index
  %c1_7 = arith.constant 1 : index
  scf.for %arg0 = %c0_6 to %3 step %c1_7 {
    memref.store %c0_5, %alloc_4[%arg0] : memref<?xindex>
  }
  %cast_8 = memref.cast %alloc_4 : memref<?xindex> to memref<*xindex>
  %alloc_9 = memref.alloc(%4) : memref<?xindex>
  %c0_10 = arith.constant 0 : index
  %c0_11 = arith.constant 0 : index
  %c1_12 = arith.constant 1 : index
  scf.for %arg0 = %c0_11 to %4 step %c1_12 {
    memref.store %c0_10, %alloc_9[%arg0] : memref<?xindex>
  }
  %cast_13 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
  %alloc_14 = memref.alloc(%5) : memref<?xindex>
  %c0_15 = arith.constant 0 : index
  %c0_16 = arith.constant 0 : index
  %c1_17 = arith.constant 1 : index
  scf.for %arg0 = %c0_16 to %5 step %c1_17 {
    memref.store %c0_15, %alloc_14[%arg0] : memref<?xindex>
  }
  %cast_18 = memref.cast %alloc_14 : memref<?xindex> to memref<*xindex>
  %alloc_19 = memref.alloc(%6) : memref<?xindex>
  %c0_20 = arith.constant 0 : index
  %c0_21 = arith.constant 0 : index
  %c1_22 = arith.constant 1 : index
  scf.for %arg0 = %c0_21 to %6 step %c1_22 {
    memref.store %c0_20, %alloc_19[%arg0] : memref<?xindex>
  }
  %cast_23 = memref.cast %alloc_19 : memref<?xindex> to memref<*xindex>
  %alloc_24 = memref.alloc(%7) : memref<?xindex>
  %c0_25 = arith.constant 0 : index
  %c0_26 = arith.constant 0 : index
  %c1_27 = arith.constant 1 : index
  scf.for %arg0 = %c0_26 to %7 step %c1_27 {
    memref.store %c0_25, %alloc_24[%arg0] : memref<?xindex>
  }
  %cast_28 = memref.cast %alloc_24 : memref<?xindex> to memref<*xindex>
  %alloc_29 = memref.alloc(%8) : memref<?xindex>
  %c0_30 = arith.constant 0 : index
  %c0_31 = arith.constant 0 : index
  %c1_32 = arith.constant 1 : index
  scf.for %arg0 = %c0_31 to %8 step %c1_32 {
    memref.store %c0_30, %alloc_29[%arg0] : memref<?xindex>
  }
  %cast_33 = memref.cast %alloc_29 : memref<?xindex> to memref<*xindex>
  %alloc_34 = memref.alloc(%9) : memref<?xindex>
  %c0_35 = arith.constant 0 : index
  %c0_36 = arith.constant 0 : index
  %c1_37 = arith.constant 1 : index
  scf.for %arg0 = %c0_36 to %9 step %c1_37 {
    memref.store %c0_35, %alloc_34[%arg0] : memref<?xindex>
  }
  %cast_38 = memref.cast %alloc_34 : memref<?xindex> to memref<*xindex>
  %alloc_39 = memref.alloc(%10) : memref<?xindex>
  %c0_40 = arith.constant 0 : index
  %c0_41 = arith.constant 0 : index
  %c1_42 = arith.constant 1 : index
  scf.for %arg0 = %c0_41 to %10 step %c1_42 {
    memref.store %c0_40, %alloc_39[%arg0] : memref<?xindex>
  }
  %cast_43 = memref.cast %alloc_39 : memref<?xindex> to memref<*xindex>
  %alloc_44 = memref.alloc(%11) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  %c0_45 = arith.constant 0 : index
  %c1_46 = arith.constant 1 : index
  scf.for %arg0 = %c0_45 to %11 step %c1_46 {
    memref.store %cst, %alloc_44[%arg0] : memref<?xf64>
  }
  %cast_47 = memref.cast %alloc_44 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_8, %cast_13, %cast_18, %cast_23, %cast_28, %cast_33, %cast_38, %cast_43, %cast_47, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
  %16 = bufferization.to_tensor %alloc_4 : memref<?xindex>
  %17 = bufferization.to_tensor %alloc_9 : memref<?xindex>
  %18 = bufferization.to_tensor %alloc_14 : memref<?xindex>
  %19 = bufferization.to_tensor %alloc_19 : memref<?xindex>
  %20 = bufferization.to_tensor %alloc_24 : memref<?xindex>
  %21 = bufferization.to_tensor %alloc_29 : memref<?xindex>
  %22 = bufferization.to_tensor %alloc_34 : memref<?xindex>
  %23 = bufferization.to_tensor %alloc_39 : memref<?xindex>
  %24 = bufferization.to_tensor %alloc_44 : memref<?xf64>
  %25 = ta.spTensor_construct(%16, %17, %18, %19, %20, %21, %22, %23, %24, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) {tensor_rank = 2 : i32} : (tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index) -> (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>)
  %c0_48 = arith.constant 0 : index
  %26 = "ta.dim"(%25, %c0_48) : (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, index) -> index
  %c1_49 = arith.constant 1 : index
  %27 = "ta.dim"(%25, %c1_49) : (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, index) -> index
  %alloc_50 = memref.alloc(%27) {alignment = 32 : i64} : memref<?x4xf64>
  %28 = bufferization.to_tensor %alloc_50 : memref<?x4xf64>
  %alloc_51 = memref.alloc(%26) {alignment = 32 : i64} : memref<?x4xf64>
  %29 = bufferization.to_tensor %alloc_51 : memref<?x4xf64>
  %cst_52 = arith.constant 1.700000e+00 : f64
  linalg.fill ins(%cst_52 : f64) outs(%alloc_50 : memref<?x4xf64>)
  %cst_53 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_53 : f64) outs(%alloc_51 : memref<?x4xf64>)
  %30 = "it.ComputeRHS"(%25, %28) <{allFormats = [["D", "CU"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, tensor<?x4xf64>) -> tensor<*xf64>
  %31 = "it.ComputeLHS"(%29) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<?x4xf64>) -> tensor<*xf64>
  %32 = "it.Compute"(%30, %31) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
  %33 = "it.Indices"(%32) <{indices = [2]}> : (i64) -> i64
  %34 = "it.Indices"(%33) <{indices = [1]}> : (i64) -> i64
  %35 = "it.Indices"(%34) <{indices = [0]}> : (i64) -> i64
  %36 = "it.itree"(%35) : (i64) -> i64
  "ta.print"(%29) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::DimOpLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_0 = arith.constant 0 : index
  %3 = memref.load %alloc[%c0_0] : memref<13xindex>
  %c1_1 = arith.constant 1 : index
  %4 = memref.load %alloc[%c1_1] : memref<13xindex>
  %c2_2 = arith.constant 2 : index
  %5 = memref.load %alloc[%c2_2] : memref<13xindex>
  %c3_3 = arith.constant 3 : index
  %6 = memref.load %alloc[%c3_3] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %7 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %8 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %9 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %10 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %11 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %12 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %13 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %14 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %15 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_4 = memref.alloc(%3) : memref<?xindex>
  %c0_5 = arith.constant 0 : index
  %c0_6 = arith.constant 0 : index
  %c1_7 = arith.constant 1 : index
  scf.for %arg0 = %c0_6 to %3 step %c1_7 {
    memref.store %c0_5, %alloc_4[%arg0] : memref<?xindex>
  }
  %cast_8 = memref.cast %alloc_4 : memref<?xindex> to memref<*xindex>
  %alloc_9 = memref.alloc(%4) : memref<?xindex>
  %c0_10 = arith.constant 0 : index
  %c0_11 = arith.constant 0 : index
  %c1_12 = arith.constant 1 : index
  scf.for %arg0 = %c0_11 to %4 step %c1_12 {
    memref.store %c0_10, %alloc_9[%arg0] : memref<?xindex>
  }
  %cast_13 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
  %alloc_14 = memref.alloc(%5) : memref<?xindex>
  %c0_15 = arith.constant 0 : index
  %c0_16 = arith.constant 0 : index
  %c1_17 = arith.constant 1 : index
  scf.for %arg0 = %c0_16 to %5 step %c1_17 {
    memref.store %c0_15, %alloc_14[%arg0] : memref<?xindex>
  }
  %cast_18 = memref.cast %alloc_14 : memref<?xindex> to memref<*xindex>
  %alloc_19 = memref.alloc(%6) : memref<?xindex>
  %c0_20 = arith.constant 0 : index
  %c0_21 = arith.constant 0 : index
  %c1_22 = arith.constant 1 : index
  scf.for %arg0 = %c0_21 to %6 step %c1_22 {
    memref.store %c0_20, %alloc_19[%arg0] : memref<?xindex>
  }
  %cast_23 = memref.cast %alloc_19 : memref<?xindex> to memref<*xindex>
  %alloc_24 = memref.alloc(%7) : memref<?xindex>
  %c0_25 = arith.constant 0 : index
  %c0_26 = arith.constant 0 : index
  %c1_27 = arith.constant 1 : index
  scf.for %arg0 = %c0_26 to %7 step %c1_27 {
    memref.store %c0_25, %alloc_24[%arg0] : memref<?xindex>
  }
  %cast_28 = memref.cast %alloc_24 : memref<?xindex> to memref<*xindex>
  %alloc_29 = memref.alloc(%8) : memref<?xindex>
  %c0_30 = arith.constant 0 : index
  %c0_31 = arith.constant 0 : index
  %c1_32 = arith.constant 1 : index
  scf.for %arg0 = %c0_31 to %8 step %c1_32 {
    memref.store %c0_30, %alloc_29[%arg0] : memref<?xindex>
  }
  %cast_33 = memref.cast %alloc_29 : memref<?xindex> to memref<*xindex>
  %alloc_34 = memref.alloc(%9) : memref<?xindex>
  %c0_35 = arith.constant 0 : index
  %c0_36 = arith.constant 0 : index
  %c1_37 = arith.constant 1 : index
  scf.for %arg0 = %c0_36 to %9 step %c1_37 {
    memref.store %c0_35, %alloc_34[%arg0] : memref<?xindex>
  }
  %cast_38 = memref.cast %alloc_34 : memref<?xindex> to memref<*xindex>
  %alloc_39 = memref.alloc(%10) : memref<?xindex>
  %c0_40 = arith.constant 0 : index
  %c0_41 = arith.constant 0 : index
  %c1_42 = arith.constant 1 : index
  scf.for %arg0 = %c0_41 to %10 step %c1_42 {
    memref.store %c0_40, %alloc_39[%arg0] : memref<?xindex>
  }
  %cast_43 = memref.cast %alloc_39 : memref<?xindex> to memref<*xindex>
  %alloc_44 = memref.alloc(%11) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  %c0_45 = arith.constant 0 : index
  %c1_46 = arith.constant 1 : index
  scf.for %arg0 = %c0_45 to %11 step %c1_46 {
    memref.store %cst, %alloc_44[%arg0] : memref<?xf64>
  }
  %cast_47 = memref.cast %alloc_44 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_8, %cast_13, %cast_18, %cast_23, %cast_28, %cast_33, %cast_38, %cast_43, %cast_47, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
  %16 = bufferization.to_tensor %alloc_4 : memref<?xindex>
  %17 = bufferization.to_tensor %alloc_9 : memref<?xindex>
  %18 = bufferization.to_tensor %alloc_14 : memref<?xindex>
  %19 = bufferization.to_tensor %alloc_19 : memref<?xindex>
  %20 = bufferization.to_tensor %alloc_24 : memref<?xindex>
  %21 = bufferization.to_tensor %alloc_29 : memref<?xindex>
  %22 = bufferization.to_tensor %alloc_34 : memref<?xindex>
  %23 = bufferization.to_tensor %alloc_39 : memref<?xindex>
  %24 = bufferization.to_tensor %alloc_44 : memref<?xf64>
  %25 = ta.spTensor_construct(%16, %17, %18, %19, %20, %21, %22, %23, %24, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) {tensor_rank = 2 : i32} : (tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index) -> (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>)
  %c0_48 = arith.constant 0 : index
  %c1_49 = arith.constant 1 : index
  %alloc_50 = memref.alloc(%13) {alignment = 32 : i64} : memref<?x4xf64>
  %26 = bufferization.to_tensor %alloc_50 : memref<?x4xf64>
  %alloc_51 = memref.alloc(%12) {alignment = 32 : i64} : memref<?x4xf64>
  %27 = bufferization.to_tensor %alloc_51 : memref<?x4xf64>
  %cst_52 = arith.constant 1.700000e+00 : f64
  linalg.fill ins(%cst_52 : f64) outs(%alloc_50 : memref<?x4xf64>)
  %cst_53 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_53 : f64) outs(%alloc_51 : memref<?x4xf64>)
  %28 = "it.ComputeRHS"(%25, %26) <{allFormats = [["D", "CU"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, tensor<?x4xf64>) -> tensor<*xf64>
  %29 = "it.ComputeLHS"(%27) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<?x4xf64>) -> tensor<*xf64>
  %30 = "it.Compute"(%28, %29) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
  %31 = "it.Indices"(%30) <{indices = [2]}> : (i64) -> i64
  %32 = "it.Indices"(%31) <{indices = [1]}> : (i64) -> i64
  %33 = "it.Indices"(%32) <{indices = [0]}> : (i64) -> i64
  %34 = "it.itree"(%33) : (i64) -> i64
  "ta.print"(%27) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::TensorFillLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_0 = arith.constant 0 : index
  %3 = memref.load %alloc[%c0_0] : memref<13xindex>
  %c1_1 = arith.constant 1 : index
  %4 = memref.load %alloc[%c1_1] : memref<13xindex>
  %c2_2 = arith.constant 2 : index
  %5 = memref.load %alloc[%c2_2] : memref<13xindex>
  %c3_3 = arith.constant 3 : index
  %6 = memref.load %alloc[%c3_3] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %7 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %8 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %9 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %10 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %11 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %12 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %13 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %14 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %15 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_4 = memref.alloc(%3) : memref<?xindex>
  %c0_5 = arith.constant 0 : index
  %c0_6 = arith.constant 0 : index
  %c1_7 = arith.constant 1 : index
  scf.for %arg0 = %c0_6 to %3 step %c1_7 {
    memref.store %c0_5, %alloc_4[%arg0] : memref<?xindex>
  }
  %cast_8 = memref.cast %alloc_4 : memref<?xindex> to memref<*xindex>
  %alloc_9 = memref.alloc(%4) : memref<?xindex>
  %c0_10 = arith.constant 0 : index
  %c0_11 = arith.constant 0 : index
  %c1_12 = arith.constant 1 : index
  scf.for %arg0 = %c0_11 to %4 step %c1_12 {
    memref.store %c0_10, %alloc_9[%arg0] : memref<?xindex>
  }
  %cast_13 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
  %alloc_14 = memref.alloc(%5) : memref<?xindex>
  %c0_15 = arith.constant 0 : index
  %c0_16 = arith.constant 0 : index
  %c1_17 = arith.constant 1 : index
  scf.for %arg0 = %c0_16 to %5 step %c1_17 {
    memref.store %c0_15, %alloc_14[%arg0] : memref<?xindex>
  }
  %cast_18 = memref.cast %alloc_14 : memref<?xindex> to memref<*xindex>
  %alloc_19 = memref.alloc(%6) : memref<?xindex>
  %c0_20 = arith.constant 0 : index
  %c0_21 = arith.constant 0 : index
  %c1_22 = arith.constant 1 : index
  scf.for %arg0 = %c0_21 to %6 step %c1_22 {
    memref.store %c0_20, %alloc_19[%arg0] : memref<?xindex>
  }
  %cast_23 = memref.cast %alloc_19 : memref<?xindex> to memref<*xindex>
  %alloc_24 = memref.alloc(%7) : memref<?xindex>
  %c0_25 = arith.constant 0 : index
  %c0_26 = arith.constant 0 : index
  %c1_27 = arith.constant 1 : index
  scf.for %arg0 = %c0_26 to %7 step %c1_27 {
    memref.store %c0_25, %alloc_24[%arg0] : memref<?xindex>
  }
  %cast_28 = memref.cast %alloc_24 : memref<?xindex> to memref<*xindex>
  %alloc_29 = memref.alloc(%8) : memref<?xindex>
  %c0_30 = arith.constant 0 : index
  %c0_31 = arith.constant 0 : index
  %c1_32 = arith.constant 1 : index
  scf.for %arg0 = %c0_31 to %8 step %c1_32 {
    memref.store %c0_30, %alloc_29[%arg0] : memref<?xindex>
  }
  %cast_33 = memref.cast %alloc_29 : memref<?xindex> to memref<*xindex>
  %alloc_34 = memref.alloc(%9) : memref<?xindex>
  %c0_35 = arith.constant 0 : index
  %c0_36 = arith.constant 0 : index
  %c1_37 = arith.constant 1 : index
  scf.for %arg0 = %c0_36 to %9 step %c1_37 {
    memref.store %c0_35, %alloc_34[%arg0] : memref<?xindex>
  }
  %cast_38 = memref.cast %alloc_34 : memref<?xindex> to memref<*xindex>
  %alloc_39 = memref.alloc(%10) : memref<?xindex>
  %c0_40 = arith.constant 0 : index
  %c0_41 = arith.constant 0 : index
  %c1_42 = arith.constant 1 : index
  scf.for %arg0 = %c0_41 to %10 step %c1_42 {
    memref.store %c0_40, %alloc_39[%arg0] : memref<?xindex>
  }
  %cast_43 = memref.cast %alloc_39 : memref<?xindex> to memref<*xindex>
  %alloc_44 = memref.alloc(%11) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  %c0_45 = arith.constant 0 : index
  %c1_46 = arith.constant 1 : index
  scf.for %arg0 = %c0_45 to %11 step %c1_46 {
    memref.store %cst, %alloc_44[%arg0] : memref<?xf64>
  }
  %cast_47 = memref.cast %alloc_44 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_8, %cast_13, %cast_18, %cast_23, %cast_28, %cast_33, %cast_38, %cast_43, %cast_47, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
  %16 = bufferization.to_tensor %alloc_4 : memref<?xindex>
  %17 = bufferization.to_tensor %alloc_9 : memref<?xindex>
  %18 = bufferization.to_tensor %alloc_14 : memref<?xindex>
  %19 = bufferization.to_tensor %alloc_19 : memref<?xindex>
  %20 = bufferization.to_tensor %alloc_24 : memref<?xindex>
  %21 = bufferization.to_tensor %alloc_29 : memref<?xindex>
  %22 = bufferization.to_tensor %alloc_34 : memref<?xindex>
  %23 = bufferization.to_tensor %alloc_39 : memref<?xindex>
  %24 = bufferization.to_tensor %alloc_44 : memref<?xf64>
  %25 = ta.spTensor_construct(%16, %17, %18, %19, %20, %21, %22, %23, %24, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) {tensor_rank = 2 : i32} : (tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index) -> (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>)
  %c0_48 = arith.constant 0 : index
  %c1_49 = arith.constant 1 : index
  %alloc_50 = memref.alloc(%13) {alignment = 32 : i64} : memref<?x4xf64>
  %26 = bufferization.to_tensor %alloc_50 : memref<?x4xf64>
  %alloc_51 = memref.alloc(%12) {alignment = 32 : i64} : memref<?x4xf64>
  %27 = bufferization.to_tensor %alloc_51 : memref<?x4xf64>
  %cst_52 = arith.constant 1.700000e+00 : f64
  linalg.fill ins(%cst_52 : f64) outs(%alloc_50 : memref<?x4xf64>)
  %cst_53 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_53 : f64) outs(%alloc_51 : memref<?x4xf64>)
  %28 = "it.ComputeRHS"(%25, %26) <{allFormats = [["D", "CU"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, tensor<?x4xf64>) -> tensor<*xf64>
  %29 = "it.ComputeLHS"(%27) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<?x4xf64>) -> tensor<*xf64>
  %30 = "it.Compute"(%28, %29) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
  %31 = "it.Indices"(%30) <{indices = [2]}> : (i64) -> i64
  %32 = "it.Indices"(%31) <{indices = [1]}> : (i64) -> i64
  %33 = "it.Indices"(%32) <{indices = [0]}> : (i64) -> i64
  %34 = "it.itree"(%33) : (i64) -> i64
  "ta.print"(%27) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::PCToLoopsLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_0 = arith.constant 0 : index
  %3 = memref.load %alloc[%c0_0] : memref<13xindex>
  %c1_1 = arith.constant 1 : index
  %4 = memref.load %alloc[%c1_1] : memref<13xindex>
  %c2_2 = arith.constant 2 : index
  %5 = memref.load %alloc[%c2_2] : memref<13xindex>
  %c3_3 = arith.constant 3 : index
  %6 = memref.load %alloc[%c3_3] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %7 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %8 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %9 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %10 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %11 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %12 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %13 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %14 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %15 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_4 = memref.alloc(%3) : memref<?xindex>
  %c0_5 = arith.constant 0 : index
  %c0_6 = arith.constant 0 : index
  %c1_7 = arith.constant 1 : index
  scf.for %arg0 = %c0_6 to %3 step %c1_7 {
    memref.store %c0_5, %alloc_4[%arg0] : memref<?xindex>
  }
  %cast_8 = memref.cast %alloc_4 : memref<?xindex> to memref<*xindex>
  %alloc_9 = memref.alloc(%4) : memref<?xindex>
  %c0_10 = arith.constant 0 : index
  %c0_11 = arith.constant 0 : index
  %c1_12 = arith.constant 1 : index
  scf.for %arg0 = %c0_11 to %4 step %c1_12 {
    memref.store %c0_10, %alloc_9[%arg0] : memref<?xindex>
  }
  %cast_13 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
  %alloc_14 = memref.alloc(%5) : memref<?xindex>
  %c0_15 = arith.constant 0 : index
  %c0_16 = arith.constant 0 : index
  %c1_17 = arith.constant 1 : index
  scf.for %arg0 = %c0_16 to %5 step %c1_17 {
    memref.store %c0_15, %alloc_14[%arg0] : memref<?xindex>
  }
  %cast_18 = memref.cast %alloc_14 : memref<?xindex> to memref<*xindex>
  %alloc_19 = memref.alloc(%6) : memref<?xindex>
  %c0_20 = arith.constant 0 : index
  %c0_21 = arith.constant 0 : index
  %c1_22 = arith.constant 1 : index
  scf.for %arg0 = %c0_21 to %6 step %c1_22 {
    memref.store %c0_20, %alloc_19[%arg0] : memref<?xindex>
  }
  %cast_23 = memref.cast %alloc_19 : memref<?xindex> to memref<*xindex>
  %alloc_24 = memref.alloc(%7) : memref<?xindex>
  %c0_25 = arith.constant 0 : index
  %c0_26 = arith.constant 0 : index
  %c1_27 = arith.constant 1 : index
  scf.for %arg0 = %c0_26 to %7 step %c1_27 {
    memref.store %c0_25, %alloc_24[%arg0] : memref<?xindex>
  }
  %cast_28 = memref.cast %alloc_24 : memref<?xindex> to memref<*xindex>
  %alloc_29 = memref.alloc(%8) : memref<?xindex>
  %c0_30 = arith.constant 0 : index
  %c0_31 = arith.constant 0 : index
  %c1_32 = arith.constant 1 : index
  scf.for %arg0 = %c0_31 to %8 step %c1_32 {
    memref.store %c0_30, %alloc_29[%arg0] : memref<?xindex>
  }
  %cast_33 = memref.cast %alloc_29 : memref<?xindex> to memref<*xindex>
  %alloc_34 = memref.alloc(%9) : memref<?xindex>
  %c0_35 = arith.constant 0 : index
  %c0_36 = arith.constant 0 : index
  %c1_37 = arith.constant 1 : index
  scf.for %arg0 = %c0_36 to %9 step %c1_37 {
    memref.store %c0_35, %alloc_34[%arg0] : memref<?xindex>
  }
  %cast_38 = memref.cast %alloc_34 : memref<?xindex> to memref<*xindex>
  %alloc_39 = memref.alloc(%10) : memref<?xindex>
  %c0_40 = arith.constant 0 : index
  %c0_41 = arith.constant 0 : index
  %c1_42 = arith.constant 1 : index
  scf.for %arg0 = %c0_41 to %10 step %c1_42 {
    memref.store %c0_40, %alloc_39[%arg0] : memref<?xindex>
  }
  %cast_43 = memref.cast %alloc_39 : memref<?xindex> to memref<*xindex>
  %alloc_44 = memref.alloc(%11) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  %c0_45 = arith.constant 0 : index
  %c1_46 = arith.constant 1 : index
  scf.for %arg0 = %c0_45 to %11 step %c1_46 {
    memref.store %cst, %alloc_44[%arg0] : memref<?xf64>
  }
  %cast_47 = memref.cast %alloc_44 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_8, %cast_13, %cast_18, %cast_23, %cast_28, %cast_33, %cast_38, %cast_43, %cast_47, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
  %16 = bufferization.to_tensor %alloc_4 : memref<?xindex>
  %17 = bufferization.to_tensor %alloc_9 : memref<?xindex>
  %18 = bufferization.to_tensor %alloc_14 : memref<?xindex>
  %19 = bufferization.to_tensor %alloc_19 : memref<?xindex>
  %20 = bufferization.to_tensor %alloc_24 : memref<?xindex>
  %21 = bufferization.to_tensor %alloc_29 : memref<?xindex>
  %22 = bufferization.to_tensor %alloc_34 : memref<?xindex>
  %23 = bufferization.to_tensor %alloc_39 : memref<?xindex>
  %24 = bufferization.to_tensor %alloc_44 : memref<?xf64>
  %25 = ta.spTensor_construct(%16, %17, %18, %19, %20, %21, %22, %23, %24, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) {tensor_rank = 2 : i32} : (tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index) -> (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>)
  %c0_48 = arith.constant 0 : index
  %c1_49 = arith.constant 1 : index
  %alloc_50 = memref.alloc(%13) {alignment = 32 : i64} : memref<?x4xf64>
  %26 = bufferization.to_tensor %alloc_50 : memref<?x4xf64>
  %alloc_51 = memref.alloc(%12) {alignment = 32 : i64} : memref<?x4xf64>
  %27 = bufferization.to_tensor %alloc_51 : memref<?x4xf64>
  %cst_52 = arith.constant 1.700000e+00 : f64
  linalg.fill ins(%cst_52 : f64) outs(%alloc_50 : memref<?x4xf64>)
  %cst_53 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_53 : f64) outs(%alloc_51 : memref<?x4xf64>)
  %28 = "it.ComputeRHS"(%25, %26) <{allFormats = [["D", "CU"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, tensor<?x4xf64>) -> tensor<*xf64>
  %29 = "it.ComputeLHS"(%27) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<?x4xf64>) -> tensor<*xf64>
  %30 = "it.Compute"(%28, %29) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
  %31 = "it.Indices"(%30) <{indices = [2]}> : (i64) -> i64
  %32 = "it.Indices"(%31) <{indices = [1]}> : (i64) -> i64
  %33 = "it.Indices"(%32) <{indices = [0]}> : (i64) -> i64
  %34 = "it.itree"(%33) : (i64) -> i64
  "ta.print"(%27) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerTensorAlgebraToSCFPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_0 = arith.constant 0 : index
  %3 = memref.load %alloc[%c0_0] : memref<13xindex>
  %c1_1 = arith.constant 1 : index
  %4 = memref.load %alloc[%c1_1] : memref<13xindex>
  %c2_2 = arith.constant 2 : index
  %5 = memref.load %alloc[%c2_2] : memref<13xindex>
  %c3_3 = arith.constant 3 : index
  %6 = memref.load %alloc[%c3_3] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %7 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %8 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %9 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %10 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %11 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %12 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %13 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %14 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %15 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_4 = memref.alloc(%3) : memref<?xindex>
  %c0_5 = arith.constant 0 : index
  %c0_6 = arith.constant 0 : index
  %c1_7 = arith.constant 1 : index
  scf.for %arg0 = %c0_6 to %3 step %c1_7 {
    memref.store %c0_5, %alloc_4[%arg0] : memref<?xindex>
  }
  %cast_8 = memref.cast %alloc_4 : memref<?xindex> to memref<*xindex>
  %alloc_9 = memref.alloc(%4) : memref<?xindex>
  %c0_10 = arith.constant 0 : index
  %c0_11 = arith.constant 0 : index
  %c1_12 = arith.constant 1 : index
  scf.for %arg0 = %c0_11 to %4 step %c1_12 {
    memref.store %c0_10, %alloc_9[%arg0] : memref<?xindex>
  }
  %cast_13 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
  %alloc_14 = memref.alloc(%5) : memref<?xindex>
  %c0_15 = arith.constant 0 : index
  %c0_16 = arith.constant 0 : index
  %c1_17 = arith.constant 1 : index
  scf.for %arg0 = %c0_16 to %5 step %c1_17 {
    memref.store %c0_15, %alloc_14[%arg0] : memref<?xindex>
  }
  %cast_18 = memref.cast %alloc_14 : memref<?xindex> to memref<*xindex>
  %alloc_19 = memref.alloc(%6) : memref<?xindex>
  %c0_20 = arith.constant 0 : index
  %c0_21 = arith.constant 0 : index
  %c1_22 = arith.constant 1 : index
  scf.for %arg0 = %c0_21 to %6 step %c1_22 {
    memref.store %c0_20, %alloc_19[%arg0] : memref<?xindex>
  }
  %cast_23 = memref.cast %alloc_19 : memref<?xindex> to memref<*xindex>
  %alloc_24 = memref.alloc(%7) : memref<?xindex>
  %c0_25 = arith.constant 0 : index
  %c0_26 = arith.constant 0 : index
  %c1_27 = arith.constant 1 : index
  scf.for %arg0 = %c0_26 to %7 step %c1_27 {
    memref.store %c0_25, %alloc_24[%arg0] : memref<?xindex>
  }
  %cast_28 = memref.cast %alloc_24 : memref<?xindex> to memref<*xindex>
  %alloc_29 = memref.alloc(%8) : memref<?xindex>
  %c0_30 = arith.constant 0 : index
  %c0_31 = arith.constant 0 : index
  %c1_32 = arith.constant 1 : index
  scf.for %arg0 = %c0_31 to %8 step %c1_32 {
    memref.store %c0_30, %alloc_29[%arg0] : memref<?xindex>
  }
  %cast_33 = memref.cast %alloc_29 : memref<?xindex> to memref<*xindex>
  %alloc_34 = memref.alloc(%9) : memref<?xindex>
  %c0_35 = arith.constant 0 : index
  %c0_36 = arith.constant 0 : index
  %c1_37 = arith.constant 1 : index
  scf.for %arg0 = %c0_36 to %9 step %c1_37 {
    memref.store %c0_35, %alloc_34[%arg0] : memref<?xindex>
  }
  %cast_38 = memref.cast %alloc_34 : memref<?xindex> to memref<*xindex>
  %alloc_39 = memref.alloc(%10) : memref<?xindex>
  %c0_40 = arith.constant 0 : index
  %c0_41 = arith.constant 0 : index
  %c1_42 = arith.constant 1 : index
  scf.for %arg0 = %c0_41 to %10 step %c1_42 {
    memref.store %c0_40, %alloc_39[%arg0] : memref<?xindex>
  }
  %cast_43 = memref.cast %alloc_39 : memref<?xindex> to memref<*xindex>
  %alloc_44 = memref.alloc(%11) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  %c0_45 = arith.constant 0 : index
  %c1_46 = arith.constant 1 : index
  scf.for %arg0 = %c0_45 to %11 step %c1_46 {
    memref.store %cst, %alloc_44[%arg0] : memref<?xf64>
  }
  %cast_47 = memref.cast %alloc_44 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_8, %cast_13, %cast_18, %cast_23, %cast_28, %cast_33, %cast_38, %cast_43, %cast_47, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
  %16 = bufferization.to_tensor %alloc_4 : memref<?xindex>
  %17 = bufferization.to_tensor %alloc_9 : memref<?xindex>
  %18 = bufferization.to_tensor %alloc_14 : memref<?xindex>
  %19 = bufferization.to_tensor %alloc_19 : memref<?xindex>
  %20 = bufferization.to_tensor %alloc_24 : memref<?xindex>
  %21 = bufferization.to_tensor %alloc_29 : memref<?xindex>
  %22 = bufferization.to_tensor %alloc_34 : memref<?xindex>
  %23 = bufferization.to_tensor %alloc_39 : memref<?xindex>
  %24 = bufferization.to_tensor %alloc_44 : memref<?xf64>
  %25 = ta.spTensor_construct(%16, %17, %18, %19, %20, %21, %22, %23, %24, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) {tensor_rank = 2 : i32} : (tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index) -> (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>)
  %c0_48 = arith.constant 0 : index
  %c1_49 = arith.constant 1 : index
  %alloc_50 = memref.alloc(%13) {alignment = 32 : i64} : memref<?x4xf64>
  %26 = bufferization.to_tensor %alloc_50 : memref<?x4xf64>
  %alloc_51 = memref.alloc(%12) {alignment = 32 : i64} : memref<?x4xf64>
  %27 = bufferization.to_tensor %alloc_51 : memref<?x4xf64>
  %cst_52 = arith.constant 1.700000e+00 : f64
  linalg.fill ins(%cst_52 : f64) outs(%alloc_50 : memref<?x4xf64>)
  %cst_53 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_53 : f64) outs(%alloc_51 : memref<?x4xf64>)
  %28 = "it.ComputeRHS"(%25, %26) <{allFormats = [["D", "CU"], ["D", "D"]], allPerms = [[0, 1], [1, 2]]}> : (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, tensor<?x4xf64>) -> tensor<*xf64>
  %29 = "it.ComputeLHS"(%27) <{allFormats = [["D", "D"]], allPerms = [[0, 2]]}> : (tensor<?x4xf64>) -> tensor<*xf64>
  %30 = "it.Compute"(%28, %29) <{MaskType = "none", comp_worksp_opt = false, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
  %31 = "it.Indices"(%30) <{indices = [2]}> : (i64) -> i64
  %32 = "it.Indices"(%31) <{indices = [1]}> : (i64) -> i64
  %33 = "it.Indices"(%32) <{indices = [0]}> : (i64) -> i64
  %34 = "it.itree"(%33) : (i64) -> i64
  "ta.print"(%27) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LowerIndexTreeToSCFPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_0 = arith.constant 0 : index
  %3 = memref.load %alloc[%c0_0] : memref<13xindex>
  %c1_1 = arith.constant 1 : index
  %4 = memref.load %alloc[%c1_1] : memref<13xindex>
  %c2_2 = arith.constant 2 : index
  %5 = memref.load %alloc[%c2_2] : memref<13xindex>
  %c3_3 = arith.constant 3 : index
  %6 = memref.load %alloc[%c3_3] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %7 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %8 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %9 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %10 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %11 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %12 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %13 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %14 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %15 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_4 = memref.alloc(%3) : memref<?xindex>
  %c0_5 = arith.constant 0 : index
  %c0_6 = arith.constant 0 : index
  %c1_7 = arith.constant 1 : index
  scf.for %arg0 = %c0_6 to %3 step %c1_7 {
    memref.store %c0_5, %alloc_4[%arg0] : memref<?xindex>
  }
  %cast_8 = memref.cast %alloc_4 : memref<?xindex> to memref<*xindex>
  %alloc_9 = memref.alloc(%4) : memref<?xindex>
  %c0_10 = arith.constant 0 : index
  %c0_11 = arith.constant 0 : index
  %c1_12 = arith.constant 1 : index
  scf.for %arg0 = %c0_11 to %4 step %c1_12 {
    memref.store %c0_10, %alloc_9[%arg0] : memref<?xindex>
  }
  %cast_13 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
  %alloc_14 = memref.alloc(%5) : memref<?xindex>
  %c0_15 = arith.constant 0 : index
  %c0_16 = arith.constant 0 : index
  %c1_17 = arith.constant 1 : index
  scf.for %arg0 = %c0_16 to %5 step %c1_17 {
    memref.store %c0_15, %alloc_14[%arg0] : memref<?xindex>
  }
  %cast_18 = memref.cast %alloc_14 : memref<?xindex> to memref<*xindex>
  %alloc_19 = memref.alloc(%6) : memref<?xindex>
  %c0_20 = arith.constant 0 : index
  %c0_21 = arith.constant 0 : index
  %c1_22 = arith.constant 1 : index
  scf.for %arg0 = %c0_21 to %6 step %c1_22 {
    memref.store %c0_20, %alloc_19[%arg0] : memref<?xindex>
  }
  %cast_23 = memref.cast %alloc_19 : memref<?xindex> to memref<*xindex>
  %alloc_24 = memref.alloc(%7) : memref<?xindex>
  %c0_25 = arith.constant 0 : index
  %c0_26 = arith.constant 0 : index
  %c1_27 = arith.constant 1 : index
  scf.for %arg0 = %c0_26 to %7 step %c1_27 {
    memref.store %c0_25, %alloc_24[%arg0] : memref<?xindex>
  }
  %cast_28 = memref.cast %alloc_24 : memref<?xindex> to memref<*xindex>
  %alloc_29 = memref.alloc(%8) : memref<?xindex>
  %c0_30 = arith.constant 0 : index
  %c0_31 = arith.constant 0 : index
  %c1_32 = arith.constant 1 : index
  scf.for %arg0 = %c0_31 to %8 step %c1_32 {
    memref.store %c0_30, %alloc_29[%arg0] : memref<?xindex>
  }
  %cast_33 = memref.cast %alloc_29 : memref<?xindex> to memref<*xindex>
  %alloc_34 = memref.alloc(%9) : memref<?xindex>
  %c0_35 = arith.constant 0 : index
  %c0_36 = arith.constant 0 : index
  %c1_37 = arith.constant 1 : index
  scf.for %arg0 = %c0_36 to %9 step %c1_37 {
    memref.store %c0_35, %alloc_34[%arg0] : memref<?xindex>
  }
  %cast_38 = memref.cast %alloc_34 : memref<?xindex> to memref<*xindex>
  %alloc_39 = memref.alloc(%10) : memref<?xindex>
  %c0_40 = arith.constant 0 : index
  %c0_41 = arith.constant 0 : index
  %c1_42 = arith.constant 1 : index
  scf.for %arg0 = %c0_41 to %10 step %c1_42 {
    memref.store %c0_40, %alloc_39[%arg0] : memref<?xindex>
  }
  %cast_43 = memref.cast %alloc_39 : memref<?xindex> to memref<*xindex>
  %alloc_44 = memref.alloc(%11) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  %c0_45 = arith.constant 0 : index
  %c1_46 = arith.constant 1 : index
  scf.for %arg0 = %c0_45 to %11 step %c1_46 {
    memref.store %cst, %alloc_44[%arg0] : memref<?xf64>
  }
  %cast_47 = memref.cast %alloc_44 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_8, %cast_13, %cast_18, %cast_23, %cast_28, %cast_33, %cast_38, %cast_43, %cast_47, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
  %16 = bufferization.to_tensor %alloc_4 : memref<?xindex>
  %17 = bufferization.to_tensor %alloc_9 : memref<?xindex>
  %18 = bufferization.to_tensor %alloc_14 : memref<?xindex>
  %19 = bufferization.to_tensor %alloc_19 : memref<?xindex>
  %20 = bufferization.to_tensor %alloc_24 : memref<?xindex>
  %21 = bufferization.to_tensor %alloc_29 : memref<?xindex>
  %22 = bufferization.to_tensor %alloc_34 : memref<?xindex>
  %23 = bufferization.to_tensor %alloc_39 : memref<?xindex>
  %24 = bufferization.to_tensor %alloc_44 : memref<?xf64>
  %25 = ta.spTensor_construct(%16, %17, %18, %19, %20, %21, %22, %23, %24, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) {tensor_rank = 2 : i32} : (tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index) -> (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>)
  %c0_48 = arith.constant 0 : index
  %c1_49 = arith.constant 1 : index
  %alloc_50 = memref.alloc(%13) {alignment = 32 : i64} : memref<?x4xf64>
  %26 = bufferization.to_tensor %alloc_50 : memref<?x4xf64>
  %alloc_51 = memref.alloc(%12) {alignment = 32 : i64} : memref<?x4xf64>
  %27 = bufferization.to_tensor %alloc_51 : memref<?x4xf64>
  %cst_52 = arith.constant 1.700000e+00 : f64
  linalg.fill ins(%cst_52 : f64) outs(%alloc_50 : memref<?x4xf64>)
  %cst_53 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_53 : f64) outs(%alloc_51 : memref<?x4xf64>)
  %c0_54 = arith.constant 0 : index
  %c1_55 = arith.constant 1 : index
  %c0_56 = arith.constant 0 : index
  %28 = memref.load %alloc_4[%c0_56] : memref<?xindex>
  scf.for %arg0 = %c0_54 to %28 step %c1_55 {
    %c1_57 = arith.constant 1 : index
    %29 = arith.addi %arg0, %c1_57 : index
    %30 = memref.load %alloc_24[%arg0] : memref<?xindex>
    %31 = memref.load %alloc_24[%29] : memref<?xindex>
    %c1_58 = arith.constant 1 : index
    scf.for %arg1 = %30 to %31 step %c1_58 {
      %32 = memref.load %alloc_29[%arg1] : memref<?xindex>
      %c0_59 = arith.constant 0 : index
      %c1_60 = arith.constant 1 : index
      %c1_61 = arith.constant 1 : index
      %dim = tensor.dim %26, %c1_61 : tensor<?x4xf64>
      scf.for %arg2 = %c0_59 to %dim step %c1_60 {
        %cst_62 = arith.constant 0.000000e+00 : f64
        %33 = memref.load %alloc_44[%arg1] : memref<?xf64>
        %34 = memref.load %alloc_50[%32, %arg2] : memref<?x4xf64>
        %35 = memref.load %alloc_51[%arg0, %arg2] : memref<?x4xf64>
        %36 = arith.mulf %33, %34 : f64
        %37 = arith.addf %35, %36 : f64
        memref.store %37, %alloc_51[%arg0, %arg2] : memref<?x4xf64>
      }
    }
  }
  "ta.print"(%27) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After TensorBufferize (tensor-bufferize) //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_0 = arith.constant 0 : index
  %3 = memref.load %alloc[%c0_0] : memref<13xindex>
  %c1_1 = arith.constant 1 : index
  %4 = memref.load %alloc[%c1_1] : memref<13xindex>
  %c2_2 = arith.constant 2 : index
  %5 = memref.load %alloc[%c2_2] : memref<13xindex>
  %c3_3 = arith.constant 3 : index
  %6 = memref.load %alloc[%c3_3] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %7 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %8 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %9 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %10 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %11 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %12 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %13 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %14 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %15 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_4 = memref.alloc(%3) : memref<?xindex>
  %c0_5 = arith.constant 0 : index
  %c0_6 = arith.constant 0 : index
  %c1_7 = arith.constant 1 : index
  scf.for %arg0 = %c0_6 to %3 step %c1_7 {
    memref.store %c0_5, %alloc_4[%arg0] : memref<?xindex>
  }
  %cast_8 = memref.cast %alloc_4 : memref<?xindex> to memref<*xindex>
  %alloc_9 = memref.alloc(%4) : memref<?xindex>
  %c0_10 = arith.constant 0 : index
  %c0_11 = arith.constant 0 : index
  %c1_12 = arith.constant 1 : index
  scf.for %arg0 = %c0_11 to %4 step %c1_12 {
    memref.store %c0_10, %alloc_9[%arg0] : memref<?xindex>
  }
  %cast_13 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
  %alloc_14 = memref.alloc(%5) : memref<?xindex>
  %c0_15 = arith.constant 0 : index
  %c0_16 = arith.constant 0 : index
  %c1_17 = arith.constant 1 : index
  scf.for %arg0 = %c0_16 to %5 step %c1_17 {
    memref.store %c0_15, %alloc_14[%arg0] : memref<?xindex>
  }
  %cast_18 = memref.cast %alloc_14 : memref<?xindex> to memref<*xindex>
  %alloc_19 = memref.alloc(%6) : memref<?xindex>
  %c0_20 = arith.constant 0 : index
  %c0_21 = arith.constant 0 : index
  %c1_22 = arith.constant 1 : index
  scf.for %arg0 = %c0_21 to %6 step %c1_22 {
    memref.store %c0_20, %alloc_19[%arg0] : memref<?xindex>
  }
  %cast_23 = memref.cast %alloc_19 : memref<?xindex> to memref<*xindex>
  %alloc_24 = memref.alloc(%7) : memref<?xindex>
  %c0_25 = arith.constant 0 : index
  %c0_26 = arith.constant 0 : index
  %c1_27 = arith.constant 1 : index
  scf.for %arg0 = %c0_26 to %7 step %c1_27 {
    memref.store %c0_25, %alloc_24[%arg0] : memref<?xindex>
  }
  %cast_28 = memref.cast %alloc_24 : memref<?xindex> to memref<*xindex>
  %alloc_29 = memref.alloc(%8) : memref<?xindex>
  %c0_30 = arith.constant 0 : index
  %c0_31 = arith.constant 0 : index
  %c1_32 = arith.constant 1 : index
  scf.for %arg0 = %c0_31 to %8 step %c1_32 {
    memref.store %c0_30, %alloc_29[%arg0] : memref<?xindex>
  }
  %cast_33 = memref.cast %alloc_29 : memref<?xindex> to memref<*xindex>
  %alloc_34 = memref.alloc(%9) : memref<?xindex>
  %c0_35 = arith.constant 0 : index
  %c0_36 = arith.constant 0 : index
  %c1_37 = arith.constant 1 : index
  scf.for %arg0 = %c0_36 to %9 step %c1_37 {
    memref.store %c0_35, %alloc_34[%arg0] : memref<?xindex>
  }
  %cast_38 = memref.cast %alloc_34 : memref<?xindex> to memref<*xindex>
  %alloc_39 = memref.alloc(%10) : memref<?xindex>
  %c0_40 = arith.constant 0 : index
  %c0_41 = arith.constant 0 : index
  %c1_42 = arith.constant 1 : index
  scf.for %arg0 = %c0_41 to %10 step %c1_42 {
    memref.store %c0_40, %alloc_39[%arg0] : memref<?xindex>
  }
  %cast_43 = memref.cast %alloc_39 : memref<?xindex> to memref<*xindex>
  %alloc_44 = memref.alloc(%11) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  %c0_45 = arith.constant 0 : index
  %c1_46 = arith.constant 1 : index
  scf.for %arg0 = %c0_45 to %11 step %c1_46 {
    memref.store %cst, %alloc_44[%arg0] : memref<?xf64>
  }
  %cast_47 = memref.cast %alloc_44 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_8, %cast_13, %cast_18, %cast_23, %cast_28, %cast_33, %cast_38, %cast_43, %cast_47, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
  %16 = bufferization.to_tensor %alloc_4 : memref<?xindex>
  %17 = bufferization.to_tensor %alloc_9 : memref<?xindex>
  %18 = bufferization.to_tensor %alloc_14 : memref<?xindex>
  %19 = bufferization.to_tensor %alloc_19 : memref<?xindex>
  %20 = bufferization.to_tensor %alloc_24 : memref<?xindex>
  %21 = bufferization.to_tensor %alloc_29 : memref<?xindex>
  %22 = bufferization.to_tensor %alloc_34 : memref<?xindex>
  %23 = bufferization.to_tensor %alloc_39 : memref<?xindex>
  %24 = bufferization.to_tensor %alloc_44 : memref<?xf64>
  %25 = ta.spTensor_construct(%16, %17, %18, %19, %20, %21, %22, %23, %24, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) {tensor_rank = 2 : i32} : (tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index) -> (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>)
  %c0_48 = arith.constant 0 : index
  %c1_49 = arith.constant 1 : index
  %alloc_50 = memref.alloc(%13) {alignment = 32 : i64} : memref<?x4xf64>
  %alloc_51 = memref.alloc(%12) {alignment = 32 : i64} : memref<?x4xf64>
  %26 = bufferization.to_tensor %alloc_51 : memref<?x4xf64>
  %cst_52 = arith.constant 1.700000e+00 : f64
  linalg.fill ins(%cst_52 : f64) outs(%alloc_50 : memref<?x4xf64>)
  %cst_53 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_53 : f64) outs(%alloc_51 : memref<?x4xf64>)
  %c0_54 = arith.constant 0 : index
  %c1_55 = arith.constant 1 : index
  %c0_56 = arith.constant 0 : index
  %27 = memref.load %alloc_4[%c0_56] : memref<?xindex>
  scf.for %arg0 = %c0_54 to %27 step %c1_55 {
    %c1_57 = arith.constant 1 : index
    %28 = arith.addi %arg0, %c1_57 : index
    %29 = memref.load %alloc_24[%arg0] : memref<?xindex>
    %30 = memref.load %alloc_24[%28] : memref<?xindex>
    %c1_58 = arith.constant 1 : index
    scf.for %arg1 = %29 to %30 step %c1_58 {
      %31 = memref.load %alloc_29[%arg1] : memref<?xindex>
      %c0_59 = arith.constant 0 : index
      %c1_60 = arith.constant 1 : index
      %c1_61 = arith.constant 1 : index
      %dim = memref.dim %alloc_50, %c1_61 : memref<?x4xf64>
      scf.for %arg2 = %c0_59 to %dim step %c1_60 {
        %cst_62 = arith.constant 0.000000e+00 : f64
        %32 = memref.load %alloc_44[%arg1] : memref<?xf64>
        %33 = memref.load %alloc_50[%31, %arg2] : memref<?x4xf64>
        %34 = memref.load %alloc_51[%arg0, %arg2] : memref<?x4xf64>
        %35 = arith.mulf %32, %33 : f64
        %36 = arith.addf %34, %35 : f64
        memref.store %36, %alloc_51[%arg0, %arg2] : memref<?x4xf64>
      }
    }
  }
  "ta.print"(%26) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::STCRemoveDeadOpsPass () //----- //
func.func @main() {
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_0 = arith.constant 0 : index
  %0 = memref.load %alloc[%c0_0] : memref<13xindex>
  %c1_1 = arith.constant 1 : index
  %1 = memref.load %alloc[%c1_1] : memref<13xindex>
  %c2_2 = arith.constant 2 : index
  %2 = memref.load %alloc[%c2_2] : memref<13xindex>
  %c3_3 = arith.constant 3 : index
  %3 = memref.load %alloc[%c3_3] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %11 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %12 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_4 = memref.alloc(%0) : memref<?xindex>
  %c0_5 = arith.constant 0 : index
  %c0_6 = arith.constant 0 : index
  %c1_7 = arith.constant 1 : index
  scf.for %arg0 = %c0_6 to %0 step %c1_7 {
    memref.store %c0_5, %alloc_4[%arg0] : memref<?xindex>
  }
  %cast_8 = memref.cast %alloc_4 : memref<?xindex> to memref<*xindex>
  %alloc_9 = memref.alloc(%1) : memref<?xindex>
  %c0_10 = arith.constant 0 : index
  %c0_11 = arith.constant 0 : index
  %c1_12 = arith.constant 1 : index
  scf.for %arg0 = %c0_11 to %1 step %c1_12 {
    memref.store %c0_10, %alloc_9[%arg0] : memref<?xindex>
  }
  %cast_13 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
  %alloc_14 = memref.alloc(%2) : memref<?xindex>
  %c0_15 = arith.constant 0 : index
  %c0_16 = arith.constant 0 : index
  %c1_17 = arith.constant 1 : index
  scf.for %arg0 = %c0_16 to %2 step %c1_17 {
    memref.store %c0_15, %alloc_14[%arg0] : memref<?xindex>
  }
  %cast_18 = memref.cast %alloc_14 : memref<?xindex> to memref<*xindex>
  %alloc_19 = memref.alloc(%3) : memref<?xindex>
  %c0_20 = arith.constant 0 : index
  %c0_21 = arith.constant 0 : index
  %c1_22 = arith.constant 1 : index
  scf.for %arg0 = %c0_21 to %3 step %c1_22 {
    memref.store %c0_20, %alloc_19[%arg0] : memref<?xindex>
  }
  %cast_23 = memref.cast %alloc_19 : memref<?xindex> to memref<*xindex>
  %alloc_24 = memref.alloc(%4) : memref<?xindex>
  %c0_25 = arith.constant 0 : index
  %c0_26 = arith.constant 0 : index
  %c1_27 = arith.constant 1 : index
  scf.for %arg0 = %c0_26 to %4 step %c1_27 {
    memref.store %c0_25, %alloc_24[%arg0] : memref<?xindex>
  }
  %cast_28 = memref.cast %alloc_24 : memref<?xindex> to memref<*xindex>
  %alloc_29 = memref.alloc(%5) : memref<?xindex>
  %c0_30 = arith.constant 0 : index
  %c0_31 = arith.constant 0 : index
  %c1_32 = arith.constant 1 : index
  scf.for %arg0 = %c0_31 to %5 step %c1_32 {
    memref.store %c0_30, %alloc_29[%arg0] : memref<?xindex>
  }
  %cast_33 = memref.cast %alloc_29 : memref<?xindex> to memref<*xindex>
  %alloc_34 = memref.alloc(%6) : memref<?xindex>
  %c0_35 = arith.constant 0 : index
  %c0_36 = arith.constant 0 : index
  %c1_37 = arith.constant 1 : index
  scf.for %arg0 = %c0_36 to %6 step %c1_37 {
    memref.store %c0_35, %alloc_34[%arg0] : memref<?xindex>
  }
  %cast_38 = memref.cast %alloc_34 : memref<?xindex> to memref<*xindex>
  %alloc_39 = memref.alloc(%7) : memref<?xindex>
  %c0_40 = arith.constant 0 : index
  %c0_41 = arith.constant 0 : index
  %c1_42 = arith.constant 1 : index
  scf.for %arg0 = %c0_41 to %7 step %c1_42 {
    memref.store %c0_40, %alloc_39[%arg0] : memref<?xindex>
  }
  %cast_43 = memref.cast %alloc_39 : memref<?xindex> to memref<*xindex>
  %alloc_44 = memref.alloc(%8) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  %c0_45 = arith.constant 0 : index
  %c1_46 = arith.constant 1 : index
  scf.for %arg0 = %c0_45 to %8 step %c1_46 {
    memref.store %cst, %alloc_44[%arg0] : memref<?xf64>
  }
  %cast_47 = memref.cast %alloc_44 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_8, %cast_13, %cast_18, %cast_23, %cast_28, %cast_33, %cast_38, %cast_43, %cast_47, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
  %13 = bufferization.to_tensor %alloc_4 : memref<?xindex>
  %14 = bufferization.to_tensor %alloc_9 : memref<?xindex>
  %15 = bufferization.to_tensor %alloc_14 : memref<?xindex>
  %16 = bufferization.to_tensor %alloc_19 : memref<?xindex>
  %17 = bufferization.to_tensor %alloc_24 : memref<?xindex>
  %18 = bufferization.to_tensor %alloc_29 : memref<?xindex>
  %19 = bufferization.to_tensor %alloc_34 : memref<?xindex>
  %20 = bufferization.to_tensor %alloc_39 : memref<?xindex>
  %21 = bufferization.to_tensor %alloc_44 : memref<?xf64>
  %22 = ta.spTensor_construct(%13, %14, %15, %16, %17, %18, %19, %20, %21, %0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10) {tensor_rank = 2 : i32} : (tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index) -> (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>)
  %c0_48 = arith.constant 0 : index
  %c1_49 = arith.constant 1 : index
  %alloc_50 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  %alloc_51 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  %23 = bufferization.to_tensor %alloc_51 : memref<?x4xf64>
  %cst_52 = arith.constant 1.700000e+00 : f64
  linalg.fill ins(%cst_52 : f64) outs(%alloc_50 : memref<?x4xf64>)
  %cst_53 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_53 : f64) outs(%alloc_51 : memref<?x4xf64>)
  %c0_54 = arith.constant 0 : index
  %c1_55 = arith.constant 1 : index
  %c0_56 = arith.constant 0 : index
  %24 = memref.load %alloc_4[%c0_56] : memref<?xindex>
  scf.for %arg0 = %c0_54 to %24 step %c1_55 {
    %c1_57 = arith.constant 1 : index
    %25 = arith.addi %arg0, %c1_57 : index
    %26 = memref.load %alloc_24[%arg0] : memref<?xindex>
    %27 = memref.load %alloc_24[%25] : memref<?xindex>
    %c1_58 = arith.constant 1 : index
    scf.for %arg1 = %26 to %27 step %c1_58 {
      %28 = memref.load %alloc_29[%arg1] : memref<?xindex>
      %c0_59 = arith.constant 0 : index
      %c1_60 = arith.constant 1 : index
      %c1_61 = arith.constant 1 : index
      %dim = memref.dim %alloc_50, %c1_61 : memref<?x4xf64>
      scf.for %arg2 = %c0_59 to %dim step %c1_60 {
        %cst_62 = arith.constant 0.000000e+00 : f64
        %29 = memref.load %alloc_44[%arg1] : memref<?xf64>
        %30 = memref.load %alloc_50[%28, %arg2] : memref<?x4xf64>
        %31 = memref.load %alloc_51[%arg0, %arg2] : memref<?x4xf64>
        %32 = arith.mulf %29, %30 : f64
        %33 = arith.addf %31, %32 : f64
        memref.store %33, %alloc_51[%arg0, %arg2] : memref<?x4xf64>
      }
    }
  }
  "ta.print"(%23) : (tensor<?x4xf64>) -> ()
  return
}

// -----// IR Dump After (anonymous namespace)::LateLoweringPass () //----- //
func.func @main() {
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %c0_0 = arith.constant 0 : index
  %0 = memref.load %alloc[%c0_0] : memref<13xindex>
  %c1_1 = arith.constant 1 : index
  %1 = memref.load %alloc[%c1_1] : memref<13xindex>
  %c2_2 = arith.constant 2 : index
  %2 = memref.load %alloc[%c2_2] : memref<13xindex>
  %c3_3 = arith.constant 3 : index
  %3 = memref.load %alloc[%c3_3] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %11 = memref.load %alloc[%c11] : memref<13xindex>
  %c12 = arith.constant 12 : index
  %12 = memref.load %alloc[%c12] : memref<13xindex>
  %alloc_4 = memref.alloc(%0) : memref<?xindex>
  %c0_5 = arith.constant 0 : index
  %c0_6 = arith.constant 0 : index
  %c1_7 = arith.constant 1 : index
  scf.for %arg0 = %c0_6 to %0 step %c1_7 {
    memref.store %c0_5, %alloc_4[%arg0] : memref<?xindex>
  }
  %cast_8 = memref.cast %alloc_4 : memref<?xindex> to memref<*xindex>
  %alloc_9 = memref.alloc(%1) : memref<?xindex>
  %c0_10 = arith.constant 0 : index
  %c0_11 = arith.constant 0 : index
  %c1_12 = arith.constant 1 : index
  scf.for %arg0 = %c0_11 to %1 step %c1_12 {
    memref.store %c0_10, %alloc_9[%arg0] : memref<?xindex>
  }
  %cast_13 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
  %alloc_14 = memref.alloc(%2) : memref<?xindex>
  %c0_15 = arith.constant 0 : index
  %c0_16 = arith.constant 0 : index
  %c1_17 = arith.constant 1 : index
  scf.for %arg0 = %c0_16 to %2 step %c1_17 {
    memref.store %c0_15, %alloc_14[%arg0] : memref<?xindex>
  }
  %cast_18 = memref.cast %alloc_14 : memref<?xindex> to memref<*xindex>
  %alloc_19 = memref.alloc(%3) : memref<?xindex>
  %c0_20 = arith.constant 0 : index
  %c0_21 = arith.constant 0 : index
  %c1_22 = arith.constant 1 : index
  scf.for %arg0 = %c0_21 to %3 step %c1_22 {
    memref.store %c0_20, %alloc_19[%arg0] : memref<?xindex>
  }
  %cast_23 = memref.cast %alloc_19 : memref<?xindex> to memref<*xindex>
  %alloc_24 = memref.alloc(%4) : memref<?xindex>
  %c0_25 = arith.constant 0 : index
  %c0_26 = arith.constant 0 : index
  %c1_27 = arith.constant 1 : index
  scf.for %arg0 = %c0_26 to %4 step %c1_27 {
    memref.store %c0_25, %alloc_24[%arg0] : memref<?xindex>
  }
  %cast_28 = memref.cast %alloc_24 : memref<?xindex> to memref<*xindex>
  %alloc_29 = memref.alloc(%5) : memref<?xindex>
  %c0_30 = arith.constant 0 : index
  %c0_31 = arith.constant 0 : index
  %c1_32 = arith.constant 1 : index
  scf.for %arg0 = %c0_31 to %5 step %c1_32 {
    memref.store %c0_30, %alloc_29[%arg0] : memref<?xindex>
  }
  %cast_33 = memref.cast %alloc_29 : memref<?xindex> to memref<*xindex>
  %alloc_34 = memref.alloc(%6) : memref<?xindex>
  %c0_35 = arith.constant 0 : index
  %c0_36 = arith.constant 0 : index
  %c1_37 = arith.constant 1 : index
  scf.for %arg0 = %c0_36 to %6 step %c1_37 {
    memref.store %c0_35, %alloc_34[%arg0] : memref<?xindex>
  }
  %cast_38 = memref.cast %alloc_34 : memref<?xindex> to memref<*xindex>
  %alloc_39 = memref.alloc(%7) : memref<?xindex>
  %c0_40 = arith.constant 0 : index
  %c0_41 = arith.constant 0 : index
  %c1_42 = arith.constant 1 : index
  scf.for %arg0 = %c0_41 to %7 step %c1_42 {
    memref.store %c0_40, %alloc_39[%arg0] : memref<?xindex>
  }
  %cast_43 = memref.cast %alloc_39 : memref<?xindex> to memref<*xindex>
  %alloc_44 = memref.alloc(%8) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  %c0_45 = arith.constant 0 : index
  %c1_46 = arith.constant 1 : index
  scf.for %arg0 = %c0_45 to %8 step %c1_46 {
    memref.store %cst, %alloc_44[%arg0] : memref<?xf64>
  }
  %cast_47 = memref.cast %alloc_44 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_8, %cast_13, %cast_18, %cast_23, %cast_28, %cast_33, %cast_38, %cast_43, %cast_47, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
  %13 = bufferization.to_tensor %alloc_4 : memref<?xindex>
  %14 = bufferization.to_tensor %alloc_9 : memref<?xindex>
  %15 = bufferization.to_tensor %alloc_14 : memref<?xindex>
  %16 = bufferization.to_tensor %alloc_19 : memref<?xindex>
  %17 = bufferization.to_tensor %alloc_24 : memref<?xindex>
  %18 = bufferization.to_tensor %alloc_29 : memref<?xindex>
  %19 = bufferization.to_tensor %alloc_34 : memref<?xindex>
  %20 = bufferization.to_tensor %alloc_39 : memref<?xindex>
  %21 = bufferization.to_tensor %alloc_44 : memref<?xf64>
  %22 = ta.spTensor_construct(%13, %14, %15, %16, %17, %18, %19, %20, %21, %0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10) {tensor_rank = 2 : i32} : (tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index) -> (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>)
  %c0_48 = arith.constant 0 : index
  %c1_49 = arith.constant 1 : index
  %alloc_50 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  %alloc_51 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  %23 = bufferization.to_tensor %alloc_51 : memref<?x4xf64>
  %cst_52 = arith.constant 1.700000e+00 : f64
  linalg.fill ins(%cst_52 : f64) outs(%alloc_50 : memref<?x4xf64>)
  %cst_53 = arith.constant 0.000000e+00 : f64
  linalg.fill ins(%cst_53 : f64) outs(%alloc_51 : memref<?x4xf64>)
  %c0_54 = arith.constant 0 : index
  %c1_55 = arith.constant 1 : index
  %c0_56 = arith.constant 0 : index
  %24 = memref.load %alloc_4[%c0_56] : memref<?xindex>
  scf.for %arg0 = %c0_54 to %24 step %c1_55 {
    %c1_58 = arith.constant 1 : index
    %25 = arith.addi %arg0, %c1_58 : index
    %26 = memref.load %alloc_24[%arg0] : memref<?xindex>
    %27 = memref.load %alloc_24[%25] : memref<?xindex>
    %c1_59 = arith.constant 1 : index
    scf.for %arg1 = %26 to %27 step %c1_59 {
      %28 = memref.load %alloc_29[%arg1] : memref<?xindex>
      %c0_60 = arith.constant 0 : index
      %c1_61 = arith.constant 1 : index
      %c1_62 = arith.constant 1 : index
      %dim = memref.dim %alloc_50, %c1_62 : memref<?x4xf64>
      scf.for %arg2 = %c0_60 to %dim step %c1_61 {
        %cst_63 = arith.constant 0.000000e+00 : f64
        %29 = memref.load %alloc_44[%arg1] : memref<?xf64>
        %30 = memref.load %alloc_50[%28, %arg2] : memref<?x4xf64>
        %31 = memref.load %alloc_51[%arg0, %arg2] : memref<?x4xf64>
        %32 = arith.mulf %29, %30 : f64
        %33 = arith.addf %31, %32 : f64
        memref.store %33, %alloc_51[%arg0, %arg2] : memref<?x4xf64>
      }
    }
  }
  %cast_57 = memref.cast %alloc_51 : memref<?x4xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_57) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After CSE (cse) //----- //
func.func @main() {
  %alloc = memref.alloc() : memref<13xindex>
  %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
  %c-1 = arith.constant -1 : index
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c0_i32 = arith.constant 0 : i32
  %c1_i32 = arith.constant 1 : i32
  call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
  %0 = memref.load %alloc[%c0] : memref<13xindex>
  %1 = memref.load %alloc[%c1] : memref<13xindex>
  %c2 = arith.constant 2 : index
  %2 = memref.load %alloc[%c2] : memref<13xindex>
  %c3 = arith.constant 3 : index
  %3 = memref.load %alloc[%c3] : memref<13xindex>
  %c4 = arith.constant 4 : index
  %4 = memref.load %alloc[%c4] : memref<13xindex>
  %c5 = arith.constant 5 : index
  %5 = memref.load %alloc[%c5] : memref<13xindex>
  %c6 = arith.constant 6 : index
  %6 = memref.load %alloc[%c6] : memref<13xindex>
  %c7 = arith.constant 7 : index
  %7 = memref.load %alloc[%c7] : memref<13xindex>
  %c8 = arith.constant 8 : index
  %8 = memref.load %alloc[%c8] : memref<13xindex>
  %c9 = arith.constant 9 : index
  %9 = memref.load %alloc[%c9] : memref<13xindex>
  %c10 = arith.constant 10 : index
  %10 = memref.load %alloc[%c10] : memref<13xindex>
  %c11 = arith.constant 11 : index
  %c12 = arith.constant 12 : index
  %alloc_0 = memref.alloc(%0) : memref<?xindex>
  scf.for %arg0 = %c0 to %0 step %c1 {
    memref.store %c0, %alloc_0[%arg0] : memref<?xindex>
  }
  %cast_1 = memref.cast %alloc_0 : memref<?xindex> to memref<*xindex>
  %alloc_2 = memref.alloc(%1) : memref<?xindex>
  scf.for %arg0 = %c0 to %1 step %c1 {
    memref.store %c0, %alloc_2[%arg0] : memref<?xindex>
  }
  %cast_3 = memref.cast %alloc_2 : memref<?xindex> to memref<*xindex>
  %alloc_4 = memref.alloc(%2) : memref<?xindex>
  scf.for %arg0 = %c0 to %2 step %c1 {
    memref.store %c0, %alloc_4[%arg0] : memref<?xindex>
  }
  %cast_5 = memref.cast %alloc_4 : memref<?xindex> to memref<*xindex>
  %alloc_6 = memref.alloc(%3) : memref<?xindex>
  scf.for %arg0 = %c0 to %3 step %c1 {
    memref.store %c0, %alloc_6[%arg0] : memref<?xindex>
  }
  %cast_7 = memref.cast %alloc_6 : memref<?xindex> to memref<*xindex>
  %alloc_8 = memref.alloc(%4) : memref<?xindex>
  scf.for %arg0 = %c0 to %4 step %c1 {
    memref.store %c0, %alloc_8[%arg0] : memref<?xindex>
  }
  %cast_9 = memref.cast %alloc_8 : memref<?xindex> to memref<*xindex>
  %alloc_10 = memref.alloc(%5) : memref<?xindex>
  scf.for %arg0 = %c0 to %5 step %c1 {
    memref.store %c0, %alloc_10[%arg0] : memref<?xindex>
  }
  %cast_11 = memref.cast %alloc_10 : memref<?xindex> to memref<*xindex>
  %alloc_12 = memref.alloc(%6) : memref<?xindex>
  scf.for %arg0 = %c0 to %6 step %c1 {
    memref.store %c0, %alloc_12[%arg0] : memref<?xindex>
  }
  %cast_13 = memref.cast %alloc_12 : memref<?xindex> to memref<*xindex>
  %alloc_14 = memref.alloc(%7) : memref<?xindex>
  scf.for %arg0 = %c0 to %7 step %c1 {
    memref.store %c0, %alloc_14[%arg0] : memref<?xindex>
  }
  %cast_15 = memref.cast %alloc_14 : memref<?xindex> to memref<*xindex>
  %alloc_16 = memref.alloc(%8) : memref<?xf64>
  %cst = arith.constant 0.000000e+00 : f64
  scf.for %arg0 = %c0 to %8 step %c1 {
    memref.store %cst, %alloc_16[%arg0] : memref<?xf64>
  }
  %cast_17 = memref.cast %alloc_16 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
  %11 = bufferization.to_tensor %alloc_0 : memref<?xindex>
  %12 = bufferization.to_tensor %alloc_2 : memref<?xindex>
  %13 = bufferization.to_tensor %alloc_4 : memref<?xindex>
  %14 = bufferization.to_tensor %alloc_6 : memref<?xindex>
  %15 = bufferization.to_tensor %alloc_8 : memref<?xindex>
  %16 = bufferization.to_tensor %alloc_10 : memref<?xindex>
  %17 = bufferization.to_tensor %alloc_12 : memref<?xindex>
  %18 = bufferization.to_tensor %alloc_14 : memref<?xindex>
  %19 = bufferization.to_tensor %alloc_16 : memref<?xf64>
  %alloc_18 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  %alloc_19 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  %cst_20 = arith.constant 1.700000e+00 : f64
  linalg.fill ins(%cst_20 : f64) outs(%alloc_18 : memref<?x4xf64>)
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
  %20 = memref.load %alloc_0[%c0] : memref<?xindex>
  scf.for %arg0 = %c0 to %20 step %c1 {
    %21 = arith.addi %arg0, %c1 : index
    %22 = memref.load %alloc_8[%arg0] : memref<?xindex>
    %23 = memref.load %alloc_8[%21] : memref<?xindex>
    scf.for %arg1 = %22 to %23 step %c1 {
      %24 = memref.load %alloc_10[%arg1] : memref<?xindex>
      %dim = memref.dim %alloc_18, %c1 : memref<?x4xf64>
      scf.for %arg2 = %c0 to %dim step %c1 {
        %25 = memref.load %alloc_16[%arg1] : memref<?xf64>
        %26 = memref.load %alloc_18[%24, %arg2] : memref<?x4xf64>
        %27 = memref.load %alloc_19[%arg0, %arg2] : memref<?x4xf64>
        %28 = arith.mulf %25, %26 : f64
        %29 = arith.addf %27, %28 : f64
        memref.store %29, %alloc_19[%arg0, %arg2] : memref<?x4xf64>
      }
    }
  }
  %cast_21 = memref.cast %alloc_19 : memref<?x4xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c7 = arith.constant 7 : index
  %c6 = arith.constant 6 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %c-1 = arith.constant -1 : index
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
  %alloc_1 = memref.alloc(%0) : memref<?xindex>
  scf.for %arg0 = %c0 to %0 step %c1 {
    memref.store %c0, %alloc_1[%arg0] : memref<?xindex>
  }
  %cast_2 = memref.cast %alloc_1 : memref<?xindex> to memref<*xindex>
  %alloc_3 = memref.alloc(%1) : memref<?xindex>
  scf.for %arg0 = %c0 to %1 step %c1 {
    memref.store %c0, %alloc_3[%arg0] : memref<?xindex>
  }
  %cast_4 = memref.cast %alloc_3 : memref<?xindex> to memref<*xindex>
  %alloc_5 = memref.alloc(%2) : memref<?xindex>
  scf.for %arg0 = %c0 to %2 step %c1 {
    memref.store %c0, %alloc_5[%arg0] : memref<?xindex>
  }
  %cast_6 = memref.cast %alloc_5 : memref<?xindex> to memref<*xindex>
  %alloc_7 = memref.alloc(%3) : memref<?xindex>
  scf.for %arg0 = %c0 to %3 step %c1 {
    memref.store %c0, %alloc_7[%arg0] : memref<?xindex>
  }
  %cast_8 = memref.cast %alloc_7 : memref<?xindex> to memref<*xindex>
  %alloc_9 = memref.alloc(%4) : memref<?xindex>
  scf.for %arg0 = %c0 to %4 step %c1 {
    memref.store %c0, %alloc_9[%arg0] : memref<?xindex>
  }
  %cast_10 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
  %alloc_11 = memref.alloc(%5) : memref<?xindex>
  scf.for %arg0 = %c0 to %5 step %c1 {
    memref.store %c0, %alloc_11[%arg0] : memref<?xindex>
  }
  %cast_12 = memref.cast %alloc_11 : memref<?xindex> to memref<*xindex>
  %alloc_13 = memref.alloc(%6) : memref<?xindex>
  scf.for %arg0 = %c0 to %6 step %c1 {
    memref.store %c0, %alloc_13[%arg0] : memref<?xindex>
  }
  %cast_14 = memref.cast %alloc_13 : memref<?xindex> to memref<*xindex>
  %alloc_15 = memref.alloc(%7) : memref<?xindex>
  scf.for %arg0 = %c0 to %7 step %c1 {
    memref.store %c0, %alloc_15[%arg0] : memref<?xindex>
  }
  %cast_16 = memref.cast %alloc_15 : memref<?xindex> to memref<*xindex>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  scf.for %arg0 = %c0 to %8 step %c1 {
    memref.store %cst_0, %alloc_17[%arg0] : memref<?xf64>
  }
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %11 = memref.load %alloc_1[%c0] : memref<?xindex>
  scf.for %arg0 = %c0 to %11 step %c1 {
    %12 = arith.addi %arg0, %c1 : index
    %13 = memref.load %alloc_9[%arg0] : memref<?xindex>
    %14 = memref.load %alloc_9[%12] : memref<?xindex>
    scf.for %arg1 = %13 to %14 step %c1 {
      %15 = memref.load %alloc_11[%arg1] : memref<?xindex>
      scf.for %arg2 = %c0 to %c4 step %c1 {
        %16 = memref.load %alloc_17[%arg1] : memref<?xf64>
        %17 = memref.load %alloc_19[%15, %arg2] : memref<?x4xf64>
        %18 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
        %19 = arith.mulf %16, %17 : f64
        %20 = arith.addf %18, %19 : f64
        memref.store %20, %alloc_20[%arg0, %arg2] : memref<?x4xf64>
      }
    }
  }
  %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After FuncBufferize (func-bufferize) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c-1 = arith.constant -1 : index
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
    %alloc_1 = memref.alloc(%0) : memref<?xindex>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0, %alloc_1[%arg0] : memref<?xindex>
    }
    %cast_2 = memref.cast %alloc_1 : memref<?xindex> to memref<*xindex>
    %alloc_3 = memref.alloc(%1) : memref<?xindex>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0, %alloc_3[%arg0] : memref<?xindex>
    }
    %cast_4 = memref.cast %alloc_3 : memref<?xindex> to memref<*xindex>
    %alloc_5 = memref.alloc(%2) : memref<?xindex>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0, %alloc_5[%arg0] : memref<?xindex>
    }
    %cast_6 = memref.cast %alloc_5 : memref<?xindex> to memref<*xindex>
    %alloc_7 = memref.alloc(%3) : memref<?xindex>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0, %alloc_7[%arg0] : memref<?xindex>
    }
    %cast_8 = memref.cast %alloc_7 : memref<?xindex> to memref<*xindex>
    %alloc_9 = memref.alloc(%4) : memref<?xindex>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0, %alloc_9[%arg0] : memref<?xindex>
    }
    %cast_10 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
    %alloc_11 = memref.alloc(%5) : memref<?xindex>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0, %alloc_11[%arg0] : memref<?xindex>
    }
    %cast_12 = memref.cast %alloc_11 : memref<?xindex> to memref<*xindex>
    %alloc_13 = memref.alloc(%6) : memref<?xindex>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0, %alloc_13[%arg0] : memref<?xindex>
    }
    %cast_14 = memref.cast %alloc_13 : memref<?xindex> to memref<*xindex>
    %alloc_15 = memref.alloc(%7) : memref<?xindex>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0, %alloc_15[%arg0] : memref<?xindex>
    }
    %cast_16 = memref.cast %alloc_15 : memref<?xindex> to memref<*xindex>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_0, %alloc_17[%arg0] : memref<?xf64>
    }
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %11 = memref.load %alloc_1[%c0] : memref<?xindex>
    scf.for %arg0 = %c0 to %11 step %c1 {
      %12 = arith.addi %arg0, %c1 : index
      %13 = memref.load %alloc_9[%arg0] : memref<?xindex>
      %14 = memref.load %alloc_9[%12] : memref<?xindex>
      scf.for %arg1 = %13 to %14 step %c1 {
        %15 = memref.load %alloc_11[%arg1] : memref<?xindex>
        scf.for %arg2 = %c0 to %c4 step %c1 {
          %16 = memref.load %alloc_17[%arg1] : memref<?xf64>
          %17 = memref.load %alloc_19[%15, %arg2] : memref<?x4xf64>
          %18 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
          %19 = arith.mulf %16, %17 : f64
          %20 = arith.addf %18, %19 : f64
          memref.store %20, %alloc_20[%arg0, %arg2] : memref<?x4xf64>
        }
      }
    }
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64(i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort_index(memref<*xindex>, index, index)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c-1 = arith.constant -1 : index
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
    %alloc_1 = memref.alloc(%0) : memref<?xindex>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0, %alloc_1[%arg0] : memref<?xindex>
    }
    %cast_2 = memref.cast %alloc_1 : memref<?xindex> to memref<*xindex>
    %alloc_3 = memref.alloc(%1) : memref<?xindex>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0, %alloc_3[%arg0] : memref<?xindex>
    }
    %cast_4 = memref.cast %alloc_3 : memref<?xindex> to memref<*xindex>
    %alloc_5 = memref.alloc(%2) : memref<?xindex>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0, %alloc_5[%arg0] : memref<?xindex>
    }
    %cast_6 = memref.cast %alloc_5 : memref<?xindex> to memref<*xindex>
    %alloc_7 = memref.alloc(%3) : memref<?xindex>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0, %alloc_7[%arg0] : memref<?xindex>
    }
    %cast_8 = memref.cast %alloc_7 : memref<?xindex> to memref<*xindex>
    %alloc_9 = memref.alloc(%4) : memref<?xindex>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0, %alloc_9[%arg0] : memref<?xindex>
    }
    %cast_10 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
    %alloc_11 = memref.alloc(%5) : memref<?xindex>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0, %alloc_11[%arg0] : memref<?xindex>
    }
    %cast_12 = memref.cast %alloc_11 : memref<?xindex> to memref<*xindex>
    %alloc_13 = memref.alloc(%6) : memref<?xindex>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0, %alloc_13[%arg0] : memref<?xindex>
    }
    %cast_14 = memref.cast %alloc_13 : memref<?xindex> to memref<*xindex>
    %alloc_15 = memref.alloc(%7) : memref<?xindex>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0, %alloc_15[%arg0] : memref<?xindex>
    }
    %cast_16 = memref.cast %alloc_15 : memref<?xindex> to memref<*xindex>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_0, %alloc_17[%arg0] : memref<?xf64>
    }
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
    %11 = memref.load %alloc_1[%c0] : memref<?xindex>
    scf.for %arg0 = %c0 to %11 step %c1 {
      %12 = arith.addi %arg0, %c1 : index
      %13 = memref.load %alloc_9[%arg0] : memref<?xindex>
      %14 = memref.load %alloc_9[%12] : memref<?xindex>
      scf.for %arg1 = %13 to %14 step %c1 {
        %15 = memref.load %alloc_11[%arg1] : memref<?xindex>
        scf.for %arg2 = %c0 to %c4 step %c1 {
          %16 = memref.load %alloc_17[%arg1] : memref<?xf64>
          %17 = memref.load %alloc_19[%15, %arg2] : memref<?x4xf64>
          %18 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
          %19 = arith.mulf %16, %17 : f64
          %20 = arith.addf %18, %19 : f64
          memref.store %20, %alloc_20[%arg0, %arg2] : memref<?x4xf64>
        }
      }
    }
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64(i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort_index(memref<*xindex>, index, index)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_sort_index(memref<*xindex>, index, index)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_2D_f64(i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
func.func private @comet_sort_index(memref<*xindex>, index, index)

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
func.func private @read_input_2D_f64(i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32)

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertVectorToSCF (convert-vector-to-scf) //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c7 = arith.constant 7 : index
  %c6 = arith.constant 6 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %c-1 = arith.constant -1 : index
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
  %alloc_1 = memref.alloc(%0) : memref<?xindex>
  scf.for %arg0 = %c0 to %0 step %c1 {
    memref.store %c0, %alloc_1[%arg0] : memref<?xindex>
  }
  %cast_2 = memref.cast %alloc_1 : memref<?xindex> to memref<*xindex>
  %alloc_3 = memref.alloc(%1) : memref<?xindex>
  scf.for %arg0 = %c0 to %1 step %c1 {
    memref.store %c0, %alloc_3[%arg0] : memref<?xindex>
  }
  %cast_4 = memref.cast %alloc_3 : memref<?xindex> to memref<*xindex>
  %alloc_5 = memref.alloc(%2) : memref<?xindex>
  scf.for %arg0 = %c0 to %2 step %c1 {
    memref.store %c0, %alloc_5[%arg0] : memref<?xindex>
  }
  %cast_6 = memref.cast %alloc_5 : memref<?xindex> to memref<*xindex>
  %alloc_7 = memref.alloc(%3) : memref<?xindex>
  scf.for %arg0 = %c0 to %3 step %c1 {
    memref.store %c0, %alloc_7[%arg0] : memref<?xindex>
  }
  %cast_8 = memref.cast %alloc_7 : memref<?xindex> to memref<*xindex>
  %alloc_9 = memref.alloc(%4) : memref<?xindex>
  scf.for %arg0 = %c0 to %4 step %c1 {
    memref.store %c0, %alloc_9[%arg0] : memref<?xindex>
  }
  %cast_10 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
  %alloc_11 = memref.alloc(%5) : memref<?xindex>
  scf.for %arg0 = %c0 to %5 step %c1 {
    memref.store %c0, %alloc_11[%arg0] : memref<?xindex>
  }
  %cast_12 = memref.cast %alloc_11 : memref<?xindex> to memref<*xindex>
  %alloc_13 = memref.alloc(%6) : memref<?xindex>
  scf.for %arg0 = %c0 to %6 step %c1 {
    memref.store %c0, %alloc_13[%arg0] : memref<?xindex>
  }
  %cast_14 = memref.cast %alloc_13 : memref<?xindex> to memref<*xindex>
  %alloc_15 = memref.alloc(%7) : memref<?xindex>
  scf.for %arg0 = %c0 to %7 step %c1 {
    memref.store %c0, %alloc_15[%arg0] : memref<?xindex>
  }
  %cast_16 = memref.cast %alloc_15 : memref<?xindex> to memref<*xindex>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  scf.for %arg0 = %c0 to %8 step %c1 {
    memref.store %cst_0, %alloc_17[%arg0] : memref<?xf64>
  }
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  linalg.fill ins(%cst : f64) outs(%alloc_19 : memref<?x4xf64>)
  linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x4xf64>)
  %11 = memref.load %alloc_1[%c0] : memref<?xindex>
  scf.for %arg0 = %c0 to %11 step %c1 {
    %12 = arith.addi %arg0, %c1 : index
    %13 = memref.load %alloc_9[%arg0] : memref<?xindex>
    %14 = memref.load %alloc_9[%12] : memref<?xindex>
    scf.for %arg1 = %13 to %14 step %c1 {
      %15 = memref.load %alloc_11[%arg1] : memref<?xindex>
      scf.for %arg2 = %c0 to %c4 step %c1 {
        %16 = memref.load %alloc_17[%arg1] : memref<?xf64>
        %17 = memref.load %alloc_19[%15, %arg2] : memref<?x4xf64>
        %18 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
        %19 = arith.mulf %16, %17 : f64
        %20 = arith.addf %18, %19 : f64
        memref.store %20, %alloc_20[%arg0, %arg2] : memref<?x4xf64>
      }
    }
  }
  %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After LinalgLowerToLoops (convert-linalg-to-loops) //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c7 = arith.constant 7 : index
  %c6 = arith.constant 6 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %c-1 = arith.constant -1 : index
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
  %alloc_1 = memref.alloc(%0) : memref<?xindex>
  scf.for %arg0 = %c0 to %0 step %c1 {
    memref.store %c0, %alloc_1[%arg0] : memref<?xindex>
  }
  %cast_2 = memref.cast %alloc_1 : memref<?xindex> to memref<*xindex>
  %alloc_3 = memref.alloc(%1) : memref<?xindex>
  scf.for %arg0 = %c0 to %1 step %c1 {
    memref.store %c0, %alloc_3[%arg0] : memref<?xindex>
  }
  %cast_4 = memref.cast %alloc_3 : memref<?xindex> to memref<*xindex>
  %alloc_5 = memref.alloc(%2) : memref<?xindex>
  scf.for %arg0 = %c0 to %2 step %c1 {
    memref.store %c0, %alloc_5[%arg0] : memref<?xindex>
  }
  %cast_6 = memref.cast %alloc_5 : memref<?xindex> to memref<*xindex>
  %alloc_7 = memref.alloc(%3) : memref<?xindex>
  scf.for %arg0 = %c0 to %3 step %c1 {
    memref.store %c0, %alloc_7[%arg0] : memref<?xindex>
  }
  %cast_8 = memref.cast %alloc_7 : memref<?xindex> to memref<*xindex>
  %alloc_9 = memref.alloc(%4) : memref<?xindex>
  scf.for %arg0 = %c0 to %4 step %c1 {
    memref.store %c0, %alloc_9[%arg0] : memref<?xindex>
  }
  %cast_10 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
  %alloc_11 = memref.alloc(%5) : memref<?xindex>
  scf.for %arg0 = %c0 to %5 step %c1 {
    memref.store %c0, %alloc_11[%arg0] : memref<?xindex>
  }
  %cast_12 = memref.cast %alloc_11 : memref<?xindex> to memref<*xindex>
  %alloc_13 = memref.alloc(%6) : memref<?xindex>
  scf.for %arg0 = %c0 to %6 step %c1 {
    memref.store %c0, %alloc_13[%arg0] : memref<?xindex>
  }
  %cast_14 = memref.cast %alloc_13 : memref<?xindex> to memref<*xindex>
  %alloc_15 = memref.alloc(%7) : memref<?xindex>
  scf.for %arg0 = %c0 to %7 step %c1 {
    memref.store %c0, %alloc_15[%arg0] : memref<?xindex>
  }
  %cast_16 = memref.cast %alloc_15 : memref<?xindex> to memref<*xindex>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  scf.for %arg0 = %c0 to %8 step %c1 {
    memref.store %cst_0, %alloc_17[%arg0] : memref<?xf64>
  }
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  scf.for %arg0 = %c0 to %10 step %c1 {
    scf.for %arg1 = %c0 to %c4 step %c1 {
      memref.store %cst, %alloc_19[%arg0, %arg1] : memref<?x4xf64>
    }
  }
  scf.for %arg0 = %c0 to %9 step %c1 {
    scf.for %arg1 = %c0 to %c4 step %c1 {
      memref.store %cst_0, %alloc_20[%arg0, %arg1] : memref<?x4xf64>
    }
  }
  %11 = memref.load %alloc_1[%c0] : memref<?xindex>
  scf.for %arg0 = %c0 to %11 step %c1 {
    %12 = arith.addi %arg0, %c1 : index
    %13 = memref.load %alloc_9[%arg0] : memref<?xindex>
    %14 = memref.load %alloc_9[%12] : memref<?xindex>
    scf.for %arg1 = %13 to %14 step %c1 {
      %15 = memref.load %alloc_11[%arg1] : memref<?xindex>
      scf.for %arg2 = %c0 to %c4 step %c1 {
        %16 = memref.load %alloc_17[%arg1] : memref<?xf64>
        %17 = memref.load %alloc_19[%15, %arg2] : memref<?x4xf64>
        %18 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
        %19 = arith.mulf %16, %17 : f64
        %20 = arith.addf %18, %19 : f64
        memref.store %20, %alloc_20[%arg0, %arg2] : memref<?x4xf64>
      }
    }
  }
  %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c-1 = arith.constant -1 : index
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
    %alloc_1 = memref.alloc(%0) : memref<?xindex>
    scf.for %arg0 = %c0 to %0 step %c1 {
      memref.store %c0, %alloc_1[%arg0] : memref<?xindex>
    }
    %cast_2 = memref.cast %alloc_1 : memref<?xindex> to memref<*xindex>
    %alloc_3 = memref.alloc(%1) : memref<?xindex>
    scf.for %arg0 = %c0 to %1 step %c1 {
      memref.store %c0, %alloc_3[%arg0] : memref<?xindex>
    }
    %cast_4 = memref.cast %alloc_3 : memref<?xindex> to memref<*xindex>
    %alloc_5 = memref.alloc(%2) : memref<?xindex>
    scf.for %arg0 = %c0 to %2 step %c1 {
      memref.store %c0, %alloc_5[%arg0] : memref<?xindex>
    }
    %cast_6 = memref.cast %alloc_5 : memref<?xindex> to memref<*xindex>
    %alloc_7 = memref.alloc(%3) : memref<?xindex>
    scf.for %arg0 = %c0 to %3 step %c1 {
      memref.store %c0, %alloc_7[%arg0] : memref<?xindex>
    }
    %cast_8 = memref.cast %alloc_7 : memref<?xindex> to memref<*xindex>
    %alloc_9 = memref.alloc(%4) : memref<?xindex>
    scf.for %arg0 = %c0 to %4 step %c1 {
      memref.store %c0, %alloc_9[%arg0] : memref<?xindex>
    }
    %cast_10 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
    %alloc_11 = memref.alloc(%5) : memref<?xindex>
    scf.for %arg0 = %c0 to %5 step %c1 {
      memref.store %c0, %alloc_11[%arg0] : memref<?xindex>
    }
    %cast_12 = memref.cast %alloc_11 : memref<?xindex> to memref<*xindex>
    %alloc_13 = memref.alloc(%6) : memref<?xindex>
    scf.for %arg0 = %c0 to %6 step %c1 {
      memref.store %c0, %alloc_13[%arg0] : memref<?xindex>
    }
    %cast_14 = memref.cast %alloc_13 : memref<?xindex> to memref<*xindex>
    %alloc_15 = memref.alloc(%7) : memref<?xindex>
    scf.for %arg0 = %c0 to %7 step %c1 {
      memref.store %c0, %alloc_15[%arg0] : memref<?xindex>
    }
    %cast_16 = memref.cast %alloc_15 : memref<?xindex> to memref<*xindex>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    scf.for %arg0 = %c0 to %8 step %c1 {
      memref.store %cst_0, %alloc_17[%arg0] : memref<?xf64>
    }
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    scf.for %arg0 = %c0 to %10 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst, %alloc_19[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c4 step %c1 {
        memref.store %cst_0, %alloc_20[%arg0, %arg1] : memref<?x4xf64>
      }
    }
    %11 = memref.load %alloc_1[%c0] : memref<?xindex>
    scf.for %arg0 = %c0 to %11 step %c1 {
      %12 = arith.addi %arg0, %c1 : index
      %13 = memref.load %alloc_9[%arg0] : memref<?xindex>
      %14 = memref.load %alloc_9[%12] : memref<?xindex>
      scf.for %arg1 = %13 to %14 step %c1 {
        %15 = memref.load %alloc_11[%arg1] : memref<?xindex>
        scf.for %arg2 = %c0 to %c4 step %c1 {
          %16 = memref.load %alloc_17[%arg1] : memref<?xf64>
          %17 = memref.load %alloc_19[%15, %arg2] : memref<?x4xf64>
          %18 = memref.load %alloc_20[%arg0, %arg2] : memref<?x4xf64>
          %19 = arith.mulf %16, %17 : f64
          %20 = arith.addf %18, %19 : f64
          memref.store %20, %alloc_20[%arg0, %arg2] : memref<?x4xf64>
        }
      }
    }
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64(i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort_index(memref<*xindex>, index, index)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After SCFToControlFlow (convert-scf-to-cf) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c-1 = arith.constant -1 : index
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
    %alloc_1 = memref.alloc(%0) : memref<?xindex>
    cf.br ^bb1(%c0 : index)
  ^bb1(%11: index):  // 2 preds: ^bb0, ^bb2
    %12 = arith.cmpi slt, %11, %0 : index
    cf.cond_br %12, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    memref.store %c0, %alloc_1[%11] : memref<?xindex>
    %13 = arith.addi %11, %c1 : index
    cf.br ^bb1(%13 : index)
  ^bb3:  // pred: ^bb1
    %cast_2 = memref.cast %alloc_1 : memref<?xindex> to memref<*xindex>
    %alloc_3 = memref.alloc(%1) : memref<?xindex>
    cf.br ^bb4(%c0 : index)
  ^bb4(%14: index):  // 2 preds: ^bb3, ^bb5
    %15 = arith.cmpi slt, %14, %1 : index
    cf.cond_br %15, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %c0, %alloc_3[%14] : memref<?xindex>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb4(%16 : index)
  ^bb6:  // pred: ^bb4
    %cast_4 = memref.cast %alloc_3 : memref<?xindex> to memref<*xindex>
    %alloc_5 = memref.alloc(%2) : memref<?xindex>
    cf.br ^bb7(%c0 : index)
  ^bb7(%17: index):  // 2 preds: ^bb6, ^bb8
    %18 = arith.cmpi slt, %17, %2 : index
    cf.cond_br %18, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %c0, %alloc_5[%17] : memref<?xindex>
    %19 = arith.addi %17, %c1 : index
    cf.br ^bb7(%19 : index)
  ^bb9:  // pred: ^bb7
    %cast_6 = memref.cast %alloc_5 : memref<?xindex> to memref<*xindex>
    %alloc_7 = memref.alloc(%3) : memref<?xindex>
    cf.br ^bb10(%c0 : index)
  ^bb10(%20: index):  // 2 preds: ^bb9, ^bb11
    %21 = arith.cmpi slt, %20, %3 : index
    cf.cond_br %21, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %c0, %alloc_7[%20] : memref<?xindex>
    %22 = arith.addi %20, %c1 : index
    cf.br ^bb10(%22 : index)
  ^bb12:  // pred: ^bb10
    %cast_8 = memref.cast %alloc_7 : memref<?xindex> to memref<*xindex>
    %alloc_9 = memref.alloc(%4) : memref<?xindex>
    cf.br ^bb13(%c0 : index)
  ^bb13(%23: index):  // 2 preds: ^bb12, ^bb14
    %24 = arith.cmpi slt, %23, %4 : index
    cf.cond_br %24, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %c0, %alloc_9[%23] : memref<?xindex>
    %25 = arith.addi %23, %c1 : index
    cf.br ^bb13(%25 : index)
  ^bb15:  // pred: ^bb13
    %cast_10 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
    %alloc_11 = memref.alloc(%5) : memref<?xindex>
    cf.br ^bb16(%c0 : index)
  ^bb16(%26: index):  // 2 preds: ^bb15, ^bb17
    %27 = arith.cmpi slt, %26, %5 : index
    cf.cond_br %27, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    memref.store %c0, %alloc_11[%26] : memref<?xindex>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb16(%28 : index)
  ^bb18:  // pred: ^bb16
    %cast_12 = memref.cast %alloc_11 : memref<?xindex> to memref<*xindex>
    %alloc_13 = memref.alloc(%6) : memref<?xindex>
    cf.br ^bb19(%c0 : index)
  ^bb19(%29: index):  // 2 preds: ^bb18, ^bb20
    %30 = arith.cmpi slt, %29, %6 : index
    cf.cond_br %30, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %c0, %alloc_13[%29] : memref<?xindex>
    %31 = arith.addi %29, %c1 : index
    cf.br ^bb19(%31 : index)
  ^bb21:  // pred: ^bb19
    %cast_14 = memref.cast %alloc_13 : memref<?xindex> to memref<*xindex>
    %alloc_15 = memref.alloc(%7) : memref<?xindex>
    cf.br ^bb22(%c0 : index)
  ^bb22(%32: index):  // 2 preds: ^bb21, ^bb23
    %33 = arith.cmpi slt, %32, %7 : index
    cf.cond_br %33, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    memref.store %c0, %alloc_15[%32] : memref<?xindex>
    %34 = arith.addi %32, %c1 : index
    cf.br ^bb22(%34 : index)
  ^bb24:  // pred: ^bb22
    %cast_16 = memref.cast %alloc_15 : memref<?xindex> to memref<*xindex>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%35: index):  // 2 preds: ^bb24, ^bb26
    %36 = arith.cmpi slt, %35, %8 : index
    cf.cond_br %36, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    memref.store %cst_0, %alloc_17[%35] : memref<?xf64>
    %37 = arith.addi %35, %c1 : index
    cf.br ^bb25(%37 : index)
  ^bb27:  // pred: ^bb25
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%38: index):  // 2 preds: ^bb27, ^bb32
    %39 = arith.cmpi slt, %38, %10 : index
    cf.cond_br %39, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    cf.br ^bb30(%c0 : index)
  ^bb30(%40: index):  // 2 preds: ^bb29, ^bb31
    %41 = arith.cmpi slt, %40, %c4 : index
    cf.cond_br %41, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    memref.store %cst, %alloc_19[%38, %40] : memref<?x4xf64>
    %42 = arith.addi %40, %c1 : index
    cf.br ^bb30(%42 : index)
  ^bb32:  // pred: ^bb30
    %43 = arith.addi %38, %c1 : index
    cf.br ^bb28(%43 : index)
  ^bb33:  // pred: ^bb28
    cf.br ^bb34(%c0 : index)
  ^bb34(%44: index):  // 2 preds: ^bb33, ^bb38
    %45 = arith.cmpi slt, %44, %9 : index
    cf.cond_br %45, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    cf.br ^bb36(%c0 : index)
  ^bb36(%46: index):  // 2 preds: ^bb35, ^bb37
    %47 = arith.cmpi slt, %46, %c4 : index
    cf.cond_br %47, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    memref.store %cst_0, %alloc_20[%44, %46] : memref<?x4xf64>
    %48 = arith.addi %46, %c1 : index
    cf.br ^bb36(%48 : index)
  ^bb38:  // pred: ^bb36
    %49 = arith.addi %44, %c1 : index
    cf.br ^bb34(%49 : index)
  ^bb39:  // pred: ^bb34
    %50 = memref.load %alloc_1[%c0] : memref<?xindex>
    cf.br ^bb40(%c0 : index)
  ^bb40(%51: index):  // 2 preds: ^bb39, ^bb47
    %52 = arith.cmpi slt, %51, %50 : index
    cf.cond_br %52, ^bb41, ^bb48
  ^bb41:  // pred: ^bb40
    %53 = arith.addi %51, %c1 : index
    %54 = memref.load %alloc_9[%51] : memref<?xindex>
    %55 = memref.load %alloc_9[%53] : memref<?xindex>
    cf.br ^bb42(%54 : index)
  ^bb42(%56: index):  // 2 preds: ^bb41, ^bb46
    %57 = arith.cmpi slt, %56, %55 : index
    cf.cond_br %57, ^bb43, ^bb47
  ^bb43:  // pred: ^bb42
    %58 = memref.load %alloc_11[%56] : memref<?xindex>
    cf.br ^bb44(%c0 : index)
  ^bb44(%59: index):  // 2 preds: ^bb43, ^bb45
    %60 = arith.cmpi slt, %59, %c4 : index
    cf.cond_br %60, ^bb45, ^bb46
  ^bb45:  // pred: ^bb44
    %61 = memref.load %alloc_17[%56] : memref<?xf64>
    %62 = memref.load %alloc_19[%58, %59] : memref<?x4xf64>
    %63 = memref.load %alloc_20[%51, %59] : memref<?x4xf64>
    %64 = arith.mulf %61, %62 : f64
    %65 = arith.addf %63, %64 : f64
    memref.store %65, %alloc_20[%51, %59] : memref<?x4xf64>
    %66 = arith.addi %59, %c1 : index
    cf.br ^bb44(%66 : index)
  ^bb46:  // pred: ^bb44
    %67 = arith.addi %56, %c1 : index
    cf.br ^bb42(%67 : index)
  ^bb47:  // pred: ^bb42
    %68 = arith.addi %51, %c1 : index
    cf.br ^bb40(%68 : index)
  ^bb48:  // pred: ^bb40
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64(i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort_index(memref<*xindex>, index, index)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c-1 = arith.constant -1 : index
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
    %alloc_1 = memref.alloc(%0) : memref<?xindex>
    cf.br ^bb1(%c0 : index)
  ^bb1(%11: index):  // 2 preds: ^bb0, ^bb2
    %12 = arith.cmpi slt, %11, %0 : index
    cf.cond_br %12, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    memref.store %c0, %alloc_1[%11] : memref<?xindex>
    %13 = arith.addi %11, %c1 : index
    cf.br ^bb1(%13 : index)
  ^bb3:  // pred: ^bb1
    %cast_2 = memref.cast %alloc_1 : memref<?xindex> to memref<*xindex>
    %alloc_3 = memref.alloc(%1) : memref<?xindex>
    cf.br ^bb4(%c0 : index)
  ^bb4(%14: index):  // 2 preds: ^bb3, ^bb5
    %15 = arith.cmpi slt, %14, %1 : index
    cf.cond_br %15, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %c0, %alloc_3[%14] : memref<?xindex>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb4(%16 : index)
  ^bb6:  // pred: ^bb4
    %cast_4 = memref.cast %alloc_3 : memref<?xindex> to memref<*xindex>
    %alloc_5 = memref.alloc(%2) : memref<?xindex>
    cf.br ^bb7(%c0 : index)
  ^bb7(%17: index):  // 2 preds: ^bb6, ^bb8
    %18 = arith.cmpi slt, %17, %2 : index
    cf.cond_br %18, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %c0, %alloc_5[%17] : memref<?xindex>
    %19 = arith.addi %17, %c1 : index
    cf.br ^bb7(%19 : index)
  ^bb9:  // pred: ^bb7
    %cast_6 = memref.cast %alloc_5 : memref<?xindex> to memref<*xindex>
    %alloc_7 = memref.alloc(%3) : memref<?xindex>
    cf.br ^bb10(%c0 : index)
  ^bb10(%20: index):  // 2 preds: ^bb9, ^bb11
    %21 = arith.cmpi slt, %20, %3 : index
    cf.cond_br %21, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %c0, %alloc_7[%20] : memref<?xindex>
    %22 = arith.addi %20, %c1 : index
    cf.br ^bb10(%22 : index)
  ^bb12:  // pred: ^bb10
    %cast_8 = memref.cast %alloc_7 : memref<?xindex> to memref<*xindex>
    %alloc_9 = memref.alloc(%4) : memref<?xindex>
    cf.br ^bb13(%c0 : index)
  ^bb13(%23: index):  // 2 preds: ^bb12, ^bb14
    %24 = arith.cmpi slt, %23, %4 : index
    cf.cond_br %24, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %c0, %alloc_9[%23] : memref<?xindex>
    %25 = arith.addi %23, %c1 : index
    cf.br ^bb13(%25 : index)
  ^bb15:  // pred: ^bb13
    %cast_10 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
    %alloc_11 = memref.alloc(%5) : memref<?xindex>
    cf.br ^bb16(%c0 : index)
  ^bb16(%26: index):  // 2 preds: ^bb15, ^bb17
    %27 = arith.cmpi slt, %26, %5 : index
    cf.cond_br %27, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    memref.store %c0, %alloc_11[%26] : memref<?xindex>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb16(%28 : index)
  ^bb18:  // pred: ^bb16
    %cast_12 = memref.cast %alloc_11 : memref<?xindex> to memref<*xindex>
    %alloc_13 = memref.alloc(%6) : memref<?xindex>
    cf.br ^bb19(%c0 : index)
  ^bb19(%29: index):  // 2 preds: ^bb18, ^bb20
    %30 = arith.cmpi slt, %29, %6 : index
    cf.cond_br %30, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %c0, %alloc_13[%29] : memref<?xindex>
    %31 = arith.addi %29, %c1 : index
    cf.br ^bb19(%31 : index)
  ^bb21:  // pred: ^bb19
    %cast_14 = memref.cast %alloc_13 : memref<?xindex> to memref<*xindex>
    %alloc_15 = memref.alloc(%7) : memref<?xindex>
    cf.br ^bb22(%c0 : index)
  ^bb22(%32: index):  // 2 preds: ^bb21, ^bb23
    %33 = arith.cmpi slt, %32, %7 : index
    cf.cond_br %33, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    memref.store %c0, %alloc_15[%32] : memref<?xindex>
    %34 = arith.addi %32, %c1 : index
    cf.br ^bb22(%34 : index)
  ^bb24:  // pred: ^bb22
    %cast_16 = memref.cast %alloc_15 : memref<?xindex> to memref<*xindex>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%35: index):  // 2 preds: ^bb24, ^bb26
    %36 = arith.cmpi slt, %35, %8 : index
    cf.cond_br %36, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    memref.store %cst_0, %alloc_17[%35] : memref<?xf64>
    %37 = arith.addi %35, %c1 : index
    cf.br ^bb25(%37 : index)
  ^bb27:  // pred: ^bb25
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%38: index):  // 2 preds: ^bb27, ^bb31
    %39 = arith.cmpi slt, %38, %10 : index
    cf.cond_br %39, ^bb29(%c0 : index), ^bb32(%c0 : index)
  ^bb29(%40: index):  // 2 preds: ^bb28, ^bb30
    %41 = arith.cmpi slt, %40, %c4 : index
    cf.cond_br %41, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    memref.store %cst, %alloc_19[%38, %40] : memref<?x4xf64>
    %42 = arith.addi %40, %c1 : index
    cf.br ^bb29(%42 : index)
  ^bb31:  // pred: ^bb29
    %43 = arith.addi %38, %c1 : index
    cf.br ^bb28(%43 : index)
  ^bb32(%44: index):  // 2 preds: ^bb28, ^bb35
    %45 = arith.cmpi slt, %44, %9 : index
    cf.cond_br %45, ^bb33(%c0 : index), ^bb36
  ^bb33(%46: index):  // 2 preds: ^bb32, ^bb34
    %47 = arith.cmpi slt, %46, %c4 : index
    cf.cond_br %47, ^bb34, ^bb35
  ^bb34:  // pred: ^bb33
    memref.store %cst_0, %alloc_20[%44, %46] : memref<?x4xf64>
    %48 = arith.addi %46, %c1 : index
    cf.br ^bb33(%48 : index)
  ^bb35:  // pred: ^bb33
    %49 = arith.addi %44, %c1 : index
    cf.br ^bb32(%49 : index)
  ^bb36:  // pred: ^bb32
    %50 = memref.load %alloc_1[%c0] : memref<?xindex>
    cf.br ^bb37(%c0 : index)
  ^bb37(%51: index):  // 2 preds: ^bb36, ^bb44
    %52 = arith.cmpi slt, %51, %50 : index
    cf.cond_br %52, ^bb38, ^bb45
  ^bb38:  // pred: ^bb37
    %53 = arith.addi %51, %c1 : index
    %54 = memref.load %alloc_9[%51] : memref<?xindex>
    %55 = memref.load %alloc_9[%53] : memref<?xindex>
    cf.br ^bb39(%54 : index)
  ^bb39(%56: index):  // 2 preds: ^bb38, ^bb43
    %57 = arith.cmpi slt, %56, %55 : index
    cf.cond_br %57, ^bb40, ^bb44
  ^bb40:  // pred: ^bb39
    %58 = memref.load %alloc_11[%56] : memref<?xindex>
    cf.br ^bb41(%c0 : index)
  ^bb41(%59: index):  // 2 preds: ^bb40, ^bb42
    %60 = arith.cmpi slt, %59, %c4 : index
    cf.cond_br %60, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %61 = memref.load %alloc_17[%56] : memref<?xf64>
    %62 = memref.load %alloc_19[%58, %59] : memref<?x4xf64>
    %63 = memref.load %alloc_20[%51, %59] : memref<?x4xf64>
    %64 = arith.mulf %61, %62 : f64
    %65 = arith.addf %63, %64 : f64
    memref.store %65, %alloc_20[%51, %59] : memref<?x4xf64>
    %66 = arith.addi %59, %c1 : index
    cf.br ^bb41(%66 : index)
  ^bb43:  // pred: ^bb41
    %67 = arith.addi %56, %c1 : index
    cf.br ^bb39(%67 : index)
  ^bb44:  // pred: ^bb39
    %68 = arith.addi %51, %c1 : index
    cf.br ^bb37(%68 : index)
  ^bb45:  // pred: ^bb37
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64(i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort_index(memref<*xindex>, index, index)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After CSE (cse) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c-1 = arith.constant -1 : index
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
    %alloc_1 = memref.alloc(%0) : memref<?xindex>
    cf.br ^bb1(%c0 : index)
  ^bb1(%11: index):  // 2 preds: ^bb0, ^bb2
    %12 = arith.cmpi slt, %11, %0 : index
    cf.cond_br %12, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    memref.store %c0, %alloc_1[%11] : memref<?xindex>
    %13 = arith.addi %11, %c1 : index
    cf.br ^bb1(%13 : index)
  ^bb3:  // pred: ^bb1
    %cast_2 = memref.cast %alloc_1 : memref<?xindex> to memref<*xindex>
    %alloc_3 = memref.alloc(%1) : memref<?xindex>
    cf.br ^bb4(%c0 : index)
  ^bb4(%14: index):  // 2 preds: ^bb3, ^bb5
    %15 = arith.cmpi slt, %14, %1 : index
    cf.cond_br %15, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %c0, %alloc_3[%14] : memref<?xindex>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb4(%16 : index)
  ^bb6:  // pred: ^bb4
    %cast_4 = memref.cast %alloc_3 : memref<?xindex> to memref<*xindex>
    %alloc_5 = memref.alloc(%2) : memref<?xindex>
    cf.br ^bb7(%c0 : index)
  ^bb7(%17: index):  // 2 preds: ^bb6, ^bb8
    %18 = arith.cmpi slt, %17, %2 : index
    cf.cond_br %18, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %c0, %alloc_5[%17] : memref<?xindex>
    %19 = arith.addi %17, %c1 : index
    cf.br ^bb7(%19 : index)
  ^bb9:  // pred: ^bb7
    %cast_6 = memref.cast %alloc_5 : memref<?xindex> to memref<*xindex>
    %alloc_7 = memref.alloc(%3) : memref<?xindex>
    cf.br ^bb10(%c0 : index)
  ^bb10(%20: index):  // 2 preds: ^bb9, ^bb11
    %21 = arith.cmpi slt, %20, %3 : index
    cf.cond_br %21, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %c0, %alloc_7[%20] : memref<?xindex>
    %22 = arith.addi %20, %c1 : index
    cf.br ^bb10(%22 : index)
  ^bb12:  // pred: ^bb10
    %cast_8 = memref.cast %alloc_7 : memref<?xindex> to memref<*xindex>
    %alloc_9 = memref.alloc(%4) : memref<?xindex>
    cf.br ^bb13(%c0 : index)
  ^bb13(%23: index):  // 2 preds: ^bb12, ^bb14
    %24 = arith.cmpi slt, %23, %4 : index
    cf.cond_br %24, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %c0, %alloc_9[%23] : memref<?xindex>
    %25 = arith.addi %23, %c1 : index
    cf.br ^bb13(%25 : index)
  ^bb15:  // pred: ^bb13
    %cast_10 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
    %alloc_11 = memref.alloc(%5) : memref<?xindex>
    cf.br ^bb16(%c0 : index)
  ^bb16(%26: index):  // 2 preds: ^bb15, ^bb17
    %27 = arith.cmpi slt, %26, %5 : index
    cf.cond_br %27, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    memref.store %c0, %alloc_11[%26] : memref<?xindex>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb16(%28 : index)
  ^bb18:  // pred: ^bb16
    %cast_12 = memref.cast %alloc_11 : memref<?xindex> to memref<*xindex>
    %alloc_13 = memref.alloc(%6) : memref<?xindex>
    cf.br ^bb19(%c0 : index)
  ^bb19(%29: index):  // 2 preds: ^bb18, ^bb20
    %30 = arith.cmpi slt, %29, %6 : index
    cf.cond_br %30, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %c0, %alloc_13[%29] : memref<?xindex>
    %31 = arith.addi %29, %c1 : index
    cf.br ^bb19(%31 : index)
  ^bb21:  // pred: ^bb19
    %cast_14 = memref.cast %alloc_13 : memref<?xindex> to memref<*xindex>
    %alloc_15 = memref.alloc(%7) : memref<?xindex>
    cf.br ^bb22(%c0 : index)
  ^bb22(%32: index):  // 2 preds: ^bb21, ^bb23
    %33 = arith.cmpi slt, %32, %7 : index
    cf.cond_br %33, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    memref.store %c0, %alloc_15[%32] : memref<?xindex>
    %34 = arith.addi %32, %c1 : index
    cf.br ^bb22(%34 : index)
  ^bb24:  // pred: ^bb22
    %cast_16 = memref.cast %alloc_15 : memref<?xindex> to memref<*xindex>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%35: index):  // 2 preds: ^bb24, ^bb26
    %36 = arith.cmpi slt, %35, %8 : index
    cf.cond_br %36, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    memref.store %cst_0, %alloc_17[%35] : memref<?xf64>
    %37 = arith.addi %35, %c1 : index
    cf.br ^bb25(%37 : index)
  ^bb27:  // pred: ^bb25
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%38: index):  // 2 preds: ^bb27, ^bb31
    %39 = arith.cmpi slt, %38, %10 : index
    cf.cond_br %39, ^bb29(%c0 : index), ^bb32(%c0 : index)
  ^bb29(%40: index):  // 2 preds: ^bb28, ^bb30
    %41 = arith.cmpi slt, %40, %c4 : index
    cf.cond_br %41, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    memref.store %cst, %alloc_19[%38, %40] : memref<?x4xf64>
    %42 = arith.addi %40, %c1 : index
    cf.br ^bb29(%42 : index)
  ^bb31:  // pred: ^bb29
    %43 = arith.addi %38, %c1 : index
    cf.br ^bb28(%43 : index)
  ^bb32(%44: index):  // 2 preds: ^bb28, ^bb35
    %45 = arith.cmpi slt, %44, %9 : index
    cf.cond_br %45, ^bb33(%c0 : index), ^bb36
  ^bb33(%46: index):  // 2 preds: ^bb32, ^bb34
    %47 = arith.cmpi slt, %46, %c4 : index
    cf.cond_br %47, ^bb34, ^bb35
  ^bb34:  // pred: ^bb33
    memref.store %cst_0, %alloc_20[%44, %46] : memref<?x4xf64>
    %48 = arith.addi %46, %c1 : index
    cf.br ^bb33(%48 : index)
  ^bb35:  // pred: ^bb33
    %49 = arith.addi %44, %c1 : index
    cf.br ^bb32(%49 : index)
  ^bb36:  // pred: ^bb32
    %50 = memref.load %alloc_1[%c0] : memref<?xindex>
    cf.br ^bb37(%c0 : index)
  ^bb37(%51: index):  // 2 preds: ^bb36, ^bb44
    %52 = arith.cmpi slt, %51, %50 : index
    cf.cond_br %52, ^bb38, ^bb45
  ^bb38:  // pred: ^bb37
    %53 = arith.addi %51, %c1 : index
    %54 = memref.load %alloc_9[%51] : memref<?xindex>
    %55 = memref.load %alloc_9[%53] : memref<?xindex>
    cf.br ^bb39(%54 : index)
  ^bb39(%56: index):  // 2 preds: ^bb38, ^bb43
    %57 = arith.cmpi slt, %56, %55 : index
    cf.cond_br %57, ^bb40, ^bb44
  ^bb40:  // pred: ^bb39
    %58 = memref.load %alloc_11[%56] : memref<?xindex>
    cf.br ^bb41(%c0 : index)
  ^bb41(%59: index):  // 2 preds: ^bb40, ^bb42
    %60 = arith.cmpi slt, %59, %c4 : index
    cf.cond_br %60, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %61 = memref.load %alloc_17[%56] : memref<?xf64>
    %62 = memref.load %alloc_19[%58, %59] : memref<?x4xf64>
    %63 = memref.load %alloc_20[%51, %59] : memref<?x4xf64>
    %64 = arith.mulf %61, %62 : f64
    %65 = arith.addf %63, %64 : f64
    memref.store %65, %alloc_20[%51, %59] : memref<?x4xf64>
    %66 = arith.addi %59, %c1 : index
    cf.br ^bb41(%66 : index)
  ^bb43:  // pred: ^bb41
    %67 = arith.addi %56, %c1 : index
    cf.br ^bb39(%67 : index)
  ^bb44:  // pred: ^bb39
    cf.br ^bb37(%53 : index)
  ^bb45:  // pred: ^bb37
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64(i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort_index(memref<*xindex>, index, index)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertVectorToLLVMPass (convert-vector-to-llvm) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c-1 = arith.constant -1 : index
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
    %alloc_1 = memref.alloc(%0) : memref<?xindex>
    cf.br ^bb1(%c0 : index)
  ^bb1(%11: index):  // 2 preds: ^bb0, ^bb2
    %12 = arith.cmpi slt, %11, %0 : index
    cf.cond_br %12, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    memref.store %c0, %alloc_1[%11] : memref<?xindex>
    %13 = arith.addi %11, %c1 : index
    cf.br ^bb1(%13 : index)
  ^bb3:  // pred: ^bb1
    %cast_2 = memref.cast %alloc_1 : memref<?xindex> to memref<*xindex>
    %alloc_3 = memref.alloc(%1) : memref<?xindex>
    cf.br ^bb4(%c0 : index)
  ^bb4(%14: index):  // 2 preds: ^bb3, ^bb5
    %15 = arith.cmpi slt, %14, %1 : index
    cf.cond_br %15, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %c0, %alloc_3[%14] : memref<?xindex>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb4(%16 : index)
  ^bb6:  // pred: ^bb4
    %cast_4 = memref.cast %alloc_3 : memref<?xindex> to memref<*xindex>
    %alloc_5 = memref.alloc(%2) : memref<?xindex>
    cf.br ^bb7(%c0 : index)
  ^bb7(%17: index):  // 2 preds: ^bb6, ^bb8
    %18 = arith.cmpi slt, %17, %2 : index
    cf.cond_br %18, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %c0, %alloc_5[%17] : memref<?xindex>
    %19 = arith.addi %17, %c1 : index
    cf.br ^bb7(%19 : index)
  ^bb9:  // pred: ^bb7
    %cast_6 = memref.cast %alloc_5 : memref<?xindex> to memref<*xindex>
    %alloc_7 = memref.alloc(%3) : memref<?xindex>
    cf.br ^bb10(%c0 : index)
  ^bb10(%20: index):  // 2 preds: ^bb9, ^bb11
    %21 = arith.cmpi slt, %20, %3 : index
    cf.cond_br %21, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %c0, %alloc_7[%20] : memref<?xindex>
    %22 = arith.addi %20, %c1 : index
    cf.br ^bb10(%22 : index)
  ^bb12:  // pred: ^bb10
    %cast_8 = memref.cast %alloc_7 : memref<?xindex> to memref<*xindex>
    %alloc_9 = memref.alloc(%4) : memref<?xindex>
    cf.br ^bb13(%c0 : index)
  ^bb13(%23: index):  // 2 preds: ^bb12, ^bb14
    %24 = arith.cmpi slt, %23, %4 : index
    cf.cond_br %24, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %c0, %alloc_9[%23] : memref<?xindex>
    %25 = arith.addi %23, %c1 : index
    cf.br ^bb13(%25 : index)
  ^bb15:  // pred: ^bb13
    %cast_10 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
    %alloc_11 = memref.alloc(%5) : memref<?xindex>
    cf.br ^bb16(%c0 : index)
  ^bb16(%26: index):  // 2 preds: ^bb15, ^bb17
    %27 = arith.cmpi slt, %26, %5 : index
    cf.cond_br %27, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    memref.store %c0, %alloc_11[%26] : memref<?xindex>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb16(%28 : index)
  ^bb18:  // pred: ^bb16
    %cast_12 = memref.cast %alloc_11 : memref<?xindex> to memref<*xindex>
    %alloc_13 = memref.alloc(%6) : memref<?xindex>
    cf.br ^bb19(%c0 : index)
  ^bb19(%29: index):  // 2 preds: ^bb18, ^bb20
    %30 = arith.cmpi slt, %29, %6 : index
    cf.cond_br %30, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %c0, %alloc_13[%29] : memref<?xindex>
    %31 = arith.addi %29, %c1 : index
    cf.br ^bb19(%31 : index)
  ^bb21:  // pred: ^bb19
    %cast_14 = memref.cast %alloc_13 : memref<?xindex> to memref<*xindex>
    %alloc_15 = memref.alloc(%7) : memref<?xindex>
    cf.br ^bb22(%c0 : index)
  ^bb22(%32: index):  // 2 preds: ^bb21, ^bb23
    %33 = arith.cmpi slt, %32, %7 : index
    cf.cond_br %33, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    memref.store %c0, %alloc_15[%32] : memref<?xindex>
    %34 = arith.addi %32, %c1 : index
    cf.br ^bb22(%34 : index)
  ^bb24:  // pred: ^bb22
    %cast_16 = memref.cast %alloc_15 : memref<?xindex> to memref<*xindex>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%35: index):  // 2 preds: ^bb24, ^bb26
    %36 = arith.cmpi slt, %35, %8 : index
    cf.cond_br %36, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    memref.store %cst_0, %alloc_17[%35] : memref<?xf64>
    %37 = arith.addi %35, %c1 : index
    cf.br ^bb25(%37 : index)
  ^bb27:  // pred: ^bb25
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%38: index):  // 2 preds: ^bb27, ^bb31
    %39 = arith.cmpi slt, %38, %10 : index
    cf.cond_br %39, ^bb29(%c0 : index), ^bb32(%c0 : index)
  ^bb29(%40: index):  // 2 preds: ^bb28, ^bb30
    %41 = arith.cmpi slt, %40, %c4 : index
    cf.cond_br %41, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    memref.store %cst, %alloc_19[%38, %40] : memref<?x4xf64>
    %42 = arith.addi %40, %c1 : index
    cf.br ^bb29(%42 : index)
  ^bb31:  // pred: ^bb29
    %43 = arith.addi %38, %c1 : index
    cf.br ^bb28(%43 : index)
  ^bb32(%44: index):  // 2 preds: ^bb28, ^bb35
    %45 = arith.cmpi slt, %44, %9 : index
    cf.cond_br %45, ^bb33(%c0 : index), ^bb36
  ^bb33(%46: index):  // 2 preds: ^bb32, ^bb34
    %47 = arith.cmpi slt, %46, %c4 : index
    cf.cond_br %47, ^bb34, ^bb35
  ^bb34:  // pred: ^bb33
    memref.store %cst_0, %alloc_20[%44, %46] : memref<?x4xf64>
    %48 = arith.addi %46, %c1 : index
    cf.br ^bb33(%48 : index)
  ^bb35:  // pred: ^bb33
    %49 = arith.addi %44, %c1 : index
    cf.br ^bb32(%49 : index)
  ^bb36:  // pred: ^bb32
    %50 = memref.load %alloc_1[%c0] : memref<?xindex>
    cf.br ^bb37(%c0 : index)
  ^bb37(%51: index):  // 2 preds: ^bb36, ^bb44
    %52 = arith.cmpi slt, %51, %50 : index
    cf.cond_br %52, ^bb38, ^bb45
  ^bb38:  // pred: ^bb37
    %53 = arith.addi %51, %c1 : index
    %54 = memref.load %alloc_9[%51] : memref<?xindex>
    %55 = memref.load %alloc_9[%53] : memref<?xindex>
    cf.br ^bb39(%54 : index)
  ^bb39(%56: index):  // 2 preds: ^bb38, ^bb43
    %57 = arith.cmpi slt, %56, %55 : index
    cf.cond_br %57, ^bb40, ^bb44
  ^bb40:  // pred: ^bb39
    %58 = memref.load %alloc_11[%56] : memref<?xindex>
    cf.br ^bb41(%c0 : index)
  ^bb41(%59: index):  // 2 preds: ^bb40, ^bb42
    %60 = arith.cmpi slt, %59, %c4 : index
    cf.cond_br %60, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %61 = memref.load %alloc_17[%56] : memref<?xf64>
    %62 = memref.load %alloc_19[%58, %59] : memref<?x4xf64>
    %63 = memref.load %alloc_20[%51, %59] : memref<?x4xf64>
    %64 = arith.mulf %61, %62 : f64
    %65 = arith.addf %63, %64 : f64
    memref.store %65, %alloc_20[%51, %59] : memref<?x4xf64>
    %66 = arith.addi %59, %c1 : index
    cf.br ^bb41(%66 : index)
  ^bb43:  // pred: ^bb41
    %67 = arith.addi %56, %c1 : index
    cf.br ^bb39(%67 : index)
  ^bb44:  // pred: ^bb39
    cf.br ^bb37(%53 : index)
  ^bb45:  // pred: ^bb37
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64(i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort_index(memref<*xindex>, index, index)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @read_input_2D_f64(i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @comet_print_memref_f64(memref<*xf64>)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func private @comet_sort_index(memref<*xindex>, index, index)

// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
func.func @main() {
  %cst = arith.constant 1.700000e+00 : f64
  %cst_0 = arith.constant 0.000000e+00 : f64
  %c10 = arith.constant 10 : index
  %c9 = arith.constant 9 : index
  %c8 = arith.constant 8 : index
  %c7 = arith.constant 7 : index
  %c6 = arith.constant 6 : index
  %c5 = arith.constant 5 : index
  %c4 = arith.constant 4 : index
  %c3 = arith.constant 3 : index
  %c2 = arith.constant 2 : index
  %c1_i32 = arith.constant 1 : i32
  %c0_i32 = arith.constant 0 : i32
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  %c-1 = arith.constant -1 : index
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
  %alloc_1 = memref.alloc(%0) : memref<?xindex>
  cf.br ^bb1(%c0 : index)
^bb1(%11: index):  // 2 preds: ^bb0, ^bb2
  %12 = arith.cmpi slt, %11, %0 : index
  cf.cond_br %12, ^bb2, ^bb3
^bb2:  // pred: ^bb1
  memref.store %c0, %alloc_1[%11] : memref<?xindex>
  %13 = arith.addi %11, %c1 : index
  cf.br ^bb1(%13 : index)
^bb3:  // pred: ^bb1
  %cast_2 = memref.cast %alloc_1 : memref<?xindex> to memref<*xindex>
  %alloc_3 = memref.alloc(%1) : memref<?xindex>
  cf.br ^bb4(%c0 : index)
^bb4(%14: index):  // 2 preds: ^bb3, ^bb5
  %15 = arith.cmpi slt, %14, %1 : index
  cf.cond_br %15, ^bb5, ^bb6
^bb5:  // pred: ^bb4
  memref.store %c0, %alloc_3[%14] : memref<?xindex>
  %16 = arith.addi %14, %c1 : index
  cf.br ^bb4(%16 : index)
^bb6:  // pred: ^bb4
  %cast_4 = memref.cast %alloc_3 : memref<?xindex> to memref<*xindex>
  %alloc_5 = memref.alloc(%2) : memref<?xindex>
  cf.br ^bb7(%c0 : index)
^bb7(%17: index):  // 2 preds: ^bb6, ^bb8
  %18 = arith.cmpi slt, %17, %2 : index
  cf.cond_br %18, ^bb8, ^bb9
^bb8:  // pred: ^bb7
  memref.store %c0, %alloc_5[%17] : memref<?xindex>
  %19 = arith.addi %17, %c1 : index
  cf.br ^bb7(%19 : index)
^bb9:  // pred: ^bb7
  %cast_6 = memref.cast %alloc_5 : memref<?xindex> to memref<*xindex>
  %alloc_7 = memref.alloc(%3) : memref<?xindex>
  cf.br ^bb10(%c0 : index)
^bb10(%20: index):  // 2 preds: ^bb9, ^bb11
  %21 = arith.cmpi slt, %20, %3 : index
  cf.cond_br %21, ^bb11, ^bb12
^bb11:  // pred: ^bb10
  memref.store %c0, %alloc_7[%20] : memref<?xindex>
  %22 = arith.addi %20, %c1 : index
  cf.br ^bb10(%22 : index)
^bb12:  // pred: ^bb10
  %cast_8 = memref.cast %alloc_7 : memref<?xindex> to memref<*xindex>
  %alloc_9 = memref.alloc(%4) : memref<?xindex>
  cf.br ^bb13(%c0 : index)
^bb13(%23: index):  // 2 preds: ^bb12, ^bb14
  %24 = arith.cmpi slt, %23, %4 : index
  cf.cond_br %24, ^bb14, ^bb15
^bb14:  // pred: ^bb13
  memref.store %c0, %alloc_9[%23] : memref<?xindex>
  %25 = arith.addi %23, %c1 : index
  cf.br ^bb13(%25 : index)
^bb15:  // pred: ^bb13
  %cast_10 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
  %alloc_11 = memref.alloc(%5) : memref<?xindex>
  cf.br ^bb16(%c0 : index)
^bb16(%26: index):  // 2 preds: ^bb15, ^bb17
  %27 = arith.cmpi slt, %26, %5 : index
  cf.cond_br %27, ^bb17, ^bb18
^bb17:  // pred: ^bb16
  memref.store %c0, %alloc_11[%26] : memref<?xindex>
  %28 = arith.addi %26, %c1 : index
  cf.br ^bb16(%28 : index)
^bb18:  // pred: ^bb16
  %cast_12 = memref.cast %alloc_11 : memref<?xindex> to memref<*xindex>
  %alloc_13 = memref.alloc(%6) : memref<?xindex>
  cf.br ^bb19(%c0 : index)
^bb19(%29: index):  // 2 preds: ^bb18, ^bb20
  %30 = arith.cmpi slt, %29, %6 : index
  cf.cond_br %30, ^bb20, ^bb21
^bb20:  // pred: ^bb19
  memref.store %c0, %alloc_13[%29] : memref<?xindex>
  %31 = arith.addi %29, %c1 : index
  cf.br ^bb19(%31 : index)
^bb21:  // pred: ^bb19
  %cast_14 = memref.cast %alloc_13 : memref<?xindex> to memref<*xindex>
  %alloc_15 = memref.alloc(%7) : memref<?xindex>
  cf.br ^bb22(%c0 : index)
^bb22(%32: index):  // 2 preds: ^bb21, ^bb23
  %33 = arith.cmpi slt, %32, %7 : index
  cf.cond_br %33, ^bb23, ^bb24
^bb23:  // pred: ^bb22
  memref.store %c0, %alloc_15[%32] : memref<?xindex>
  %34 = arith.addi %32, %c1 : index
  cf.br ^bb22(%34 : index)
^bb24:  // pred: ^bb22
  %cast_16 = memref.cast %alloc_15 : memref<?xindex> to memref<*xindex>
  %alloc_17 = memref.alloc(%8) : memref<?xf64>
  cf.br ^bb25(%c0 : index)
^bb25(%35: index):  // 2 preds: ^bb24, ^bb26
  %36 = arith.cmpi slt, %35, %8 : index
  cf.cond_br %36, ^bb26, ^bb27
^bb26:  // pred: ^bb25
  memref.store %cst_0, %alloc_17[%35] : memref<?xf64>
  %37 = arith.addi %35, %c1 : index
  cf.br ^bb25(%37 : index)
^bb27:  // pred: ^bb25
  %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
  call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
  %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
  %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
  cf.br ^bb28(%c0 : index)
^bb28(%38: index):  // 2 preds: ^bb27, ^bb31
  %39 = arith.cmpi slt, %38, %10 : index
  cf.cond_br %39, ^bb29(%c0 : index), ^bb32(%c0 : index)
^bb29(%40: index):  // 2 preds: ^bb28, ^bb30
  %41 = arith.cmpi slt, %40, %c4 : index
  cf.cond_br %41, ^bb30, ^bb31
^bb30:  // pred: ^bb29
  memref.store %cst, %alloc_19[%38, %40] : memref<?x4xf64>
  %42 = arith.addi %40, %c1 : index
  cf.br ^bb29(%42 : index)
^bb31:  // pred: ^bb29
  %43 = arith.addi %38, %c1 : index
  cf.br ^bb28(%43 : index)
^bb32(%44: index):  // 2 preds: ^bb28, ^bb35
  %45 = arith.cmpi slt, %44, %9 : index
  cf.cond_br %45, ^bb33(%c0 : index), ^bb36
^bb33(%46: index):  // 2 preds: ^bb32, ^bb34
  %47 = arith.cmpi slt, %46, %c4 : index
  cf.cond_br %47, ^bb34, ^bb35
^bb34:  // pred: ^bb33
  memref.store %cst_0, %alloc_20[%44, %46] : memref<?x4xf64>
  %48 = arith.addi %46, %c1 : index
  cf.br ^bb33(%48 : index)
^bb35:  // pred: ^bb33
  %49 = arith.addi %44, %c1 : index
  cf.br ^bb32(%49 : index)
^bb36:  // pred: ^bb32
  %50 = memref.load %alloc_1[%c0] : memref<?xindex>
  cf.br ^bb37(%c0 : index)
^bb37(%51: index):  // 2 preds: ^bb36, ^bb44
  %52 = arith.cmpi slt, %51, %50 : index
  cf.cond_br %52, ^bb38, ^bb45
^bb38:  // pred: ^bb37
  %53 = arith.addi %51, %c1 : index
  %54 = memref.load %alloc_9[%51] : memref<?xindex>
  %55 = memref.load %alloc_9[%53] : memref<?xindex>
  cf.br ^bb39(%54 : index)
^bb39(%56: index):  // 2 preds: ^bb38, ^bb43
  %57 = arith.cmpi slt, %56, %55 : index
  cf.cond_br %57, ^bb40, ^bb44
^bb40:  // pred: ^bb39
  %58 = memref.load %alloc_11[%56] : memref<?xindex>
  cf.br ^bb41(%c0 : index)
^bb41(%59: index):  // 2 preds: ^bb40, ^bb42
  %60 = arith.cmpi slt, %59, %c4 : index
  cf.cond_br %60, ^bb42, ^bb43
^bb42:  // pred: ^bb41
  %61 = memref.load %alloc_17[%56] : memref<?xf64>
  %62 = memref.load %alloc_19[%58, %59] : memref<?x4xf64>
  %63 = memref.load %alloc_20[%51, %59] : memref<?x4xf64>
  %64 = arith.mulf %61, %62 : f64
  %65 = arith.addf %63, %64 : f64
  memref.store %65, %alloc_20[%51, %59] : memref<?x4xf64>
  %66 = arith.addi %59, %c1 : index
  cf.br ^bb41(%66 : index)
^bb43:  // pred: ^bb41
  %67 = arith.addi %56, %c1 : index
  cf.br ^bb39(%67 : index)
^bb44:  // pred: ^bb39
  cf.br ^bb37(%53 : index)
^bb45:  // pred: ^bb37
  %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
  call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
  return
}

// -----// IR Dump After ExpandStridedMetadata (expand-strided-metadata) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c-1 = arith.constant -1 : index
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
    %alloc_1 = memref.alloc(%0) : memref<?xindex>
    cf.br ^bb1(%c0 : index)
  ^bb1(%11: index):  // 2 preds: ^bb0, ^bb2
    %12 = arith.cmpi slt, %11, %0 : index
    cf.cond_br %12, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    memref.store %c0, %alloc_1[%11] : memref<?xindex>
    %13 = arith.addi %11, %c1 : index
    cf.br ^bb1(%13 : index)
  ^bb3:  // pred: ^bb1
    %cast_2 = memref.cast %alloc_1 : memref<?xindex> to memref<*xindex>
    %alloc_3 = memref.alloc(%1) : memref<?xindex>
    cf.br ^bb4(%c0 : index)
  ^bb4(%14: index):  // 2 preds: ^bb3, ^bb5
    %15 = arith.cmpi slt, %14, %1 : index
    cf.cond_br %15, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %c0, %alloc_3[%14] : memref<?xindex>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb4(%16 : index)
  ^bb6:  // pred: ^bb4
    %cast_4 = memref.cast %alloc_3 : memref<?xindex> to memref<*xindex>
    %alloc_5 = memref.alloc(%2) : memref<?xindex>
    cf.br ^bb7(%c0 : index)
  ^bb7(%17: index):  // 2 preds: ^bb6, ^bb8
    %18 = arith.cmpi slt, %17, %2 : index
    cf.cond_br %18, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %c0, %alloc_5[%17] : memref<?xindex>
    %19 = arith.addi %17, %c1 : index
    cf.br ^bb7(%19 : index)
  ^bb9:  // pred: ^bb7
    %cast_6 = memref.cast %alloc_5 : memref<?xindex> to memref<*xindex>
    %alloc_7 = memref.alloc(%3) : memref<?xindex>
    cf.br ^bb10(%c0 : index)
  ^bb10(%20: index):  // 2 preds: ^bb9, ^bb11
    %21 = arith.cmpi slt, %20, %3 : index
    cf.cond_br %21, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %c0, %alloc_7[%20] : memref<?xindex>
    %22 = arith.addi %20, %c1 : index
    cf.br ^bb10(%22 : index)
  ^bb12:  // pred: ^bb10
    %cast_8 = memref.cast %alloc_7 : memref<?xindex> to memref<*xindex>
    %alloc_9 = memref.alloc(%4) : memref<?xindex>
    cf.br ^bb13(%c0 : index)
  ^bb13(%23: index):  // 2 preds: ^bb12, ^bb14
    %24 = arith.cmpi slt, %23, %4 : index
    cf.cond_br %24, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %c0, %alloc_9[%23] : memref<?xindex>
    %25 = arith.addi %23, %c1 : index
    cf.br ^bb13(%25 : index)
  ^bb15:  // pred: ^bb13
    %cast_10 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
    %alloc_11 = memref.alloc(%5) : memref<?xindex>
    cf.br ^bb16(%c0 : index)
  ^bb16(%26: index):  // 2 preds: ^bb15, ^bb17
    %27 = arith.cmpi slt, %26, %5 : index
    cf.cond_br %27, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    memref.store %c0, %alloc_11[%26] : memref<?xindex>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb16(%28 : index)
  ^bb18:  // pred: ^bb16
    %cast_12 = memref.cast %alloc_11 : memref<?xindex> to memref<*xindex>
    %alloc_13 = memref.alloc(%6) : memref<?xindex>
    cf.br ^bb19(%c0 : index)
  ^bb19(%29: index):  // 2 preds: ^bb18, ^bb20
    %30 = arith.cmpi slt, %29, %6 : index
    cf.cond_br %30, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %c0, %alloc_13[%29] : memref<?xindex>
    %31 = arith.addi %29, %c1 : index
    cf.br ^bb19(%31 : index)
  ^bb21:  // pred: ^bb19
    %cast_14 = memref.cast %alloc_13 : memref<?xindex> to memref<*xindex>
    %alloc_15 = memref.alloc(%7) : memref<?xindex>
    cf.br ^bb22(%c0 : index)
  ^bb22(%32: index):  // 2 preds: ^bb21, ^bb23
    %33 = arith.cmpi slt, %32, %7 : index
    cf.cond_br %33, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    memref.store %c0, %alloc_15[%32] : memref<?xindex>
    %34 = arith.addi %32, %c1 : index
    cf.br ^bb22(%34 : index)
  ^bb24:  // pred: ^bb22
    %cast_16 = memref.cast %alloc_15 : memref<?xindex> to memref<*xindex>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%35: index):  // 2 preds: ^bb24, ^bb26
    %36 = arith.cmpi slt, %35, %8 : index
    cf.cond_br %36, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    memref.store %cst_0, %alloc_17[%35] : memref<?xf64>
    %37 = arith.addi %35, %c1 : index
    cf.br ^bb25(%37 : index)
  ^bb27:  // pred: ^bb25
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%38: index):  // 2 preds: ^bb27, ^bb31
    %39 = arith.cmpi slt, %38, %10 : index
    cf.cond_br %39, ^bb29(%c0 : index), ^bb32(%c0 : index)
  ^bb29(%40: index):  // 2 preds: ^bb28, ^bb30
    %41 = arith.cmpi slt, %40, %c4 : index
    cf.cond_br %41, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    memref.store %cst, %alloc_19[%38, %40] : memref<?x4xf64>
    %42 = arith.addi %40, %c1 : index
    cf.br ^bb29(%42 : index)
  ^bb31:  // pred: ^bb29
    %43 = arith.addi %38, %c1 : index
    cf.br ^bb28(%43 : index)
  ^bb32(%44: index):  // 2 preds: ^bb28, ^bb35
    %45 = arith.cmpi slt, %44, %9 : index
    cf.cond_br %45, ^bb33(%c0 : index), ^bb36
  ^bb33(%46: index):  // 2 preds: ^bb32, ^bb34
    %47 = arith.cmpi slt, %46, %c4 : index
    cf.cond_br %47, ^bb34, ^bb35
  ^bb34:  // pred: ^bb33
    memref.store %cst_0, %alloc_20[%44, %46] : memref<?x4xf64>
    %48 = arith.addi %46, %c1 : index
    cf.br ^bb33(%48 : index)
  ^bb35:  // pred: ^bb33
    %49 = arith.addi %44, %c1 : index
    cf.br ^bb32(%49 : index)
  ^bb36:  // pred: ^bb32
    %50 = memref.load %alloc_1[%c0] : memref<?xindex>
    cf.br ^bb37(%c0 : index)
  ^bb37(%51: index):  // 2 preds: ^bb36, ^bb44
    %52 = arith.cmpi slt, %51, %50 : index
    cf.cond_br %52, ^bb38, ^bb45
  ^bb38:  // pred: ^bb37
    %53 = arith.addi %51, %c1 : index
    %54 = memref.load %alloc_9[%51] : memref<?xindex>
    %55 = memref.load %alloc_9[%53] : memref<?xindex>
    cf.br ^bb39(%54 : index)
  ^bb39(%56: index):  // 2 preds: ^bb38, ^bb43
    %57 = arith.cmpi slt, %56, %55 : index
    cf.cond_br %57, ^bb40, ^bb44
  ^bb40:  // pred: ^bb39
    %58 = memref.load %alloc_11[%56] : memref<?xindex>
    cf.br ^bb41(%c0 : index)
  ^bb41(%59: index):  // 2 preds: ^bb40, ^bb42
    %60 = arith.cmpi slt, %59, %c4 : index
    cf.cond_br %60, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %61 = memref.load %alloc_17[%56] : memref<?xf64>
    %62 = memref.load %alloc_19[%58, %59] : memref<?x4xf64>
    %63 = memref.load %alloc_20[%51, %59] : memref<?x4xf64>
    %64 = arith.mulf %61, %62 : f64
    %65 = arith.addf %63, %64 : f64
    memref.store %65, %alloc_20[%51, %59] : memref<?x4xf64>
    %66 = arith.addi %59, %c1 : index
    cf.br ^bb41(%66 : index)
  ^bb43:  // pred: ^bb41
    %67 = arith.addi %56, %c1 : index
    cf.br ^bb39(%67 : index)
  ^bb44:  // pred: ^bb39
    cf.br ^bb37(%53 : index)
  ^bb45:  // pred: ^bb37
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64(i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort_index(memref<*xindex>, index, index)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c-1 = arith.constant -1 : index
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
    %alloc_1 = memref.alloc(%0) : memref<?xindex>
    cf.br ^bb1(%c0 : index)
  ^bb1(%11: index):  // 2 preds: ^bb0, ^bb2
    %12 = arith.cmpi slt, %11, %0 : index
    cf.cond_br %12, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    memref.store %c0, %alloc_1[%11] : memref<?xindex>
    %13 = arith.addi %11, %c1 : index
    cf.br ^bb1(%13 : index)
  ^bb3:  // pred: ^bb1
    %cast_2 = memref.cast %alloc_1 : memref<?xindex> to memref<*xindex>
    %alloc_3 = memref.alloc(%1) : memref<?xindex>
    cf.br ^bb4(%c0 : index)
  ^bb4(%14: index):  // 2 preds: ^bb3, ^bb5
    %15 = arith.cmpi slt, %14, %1 : index
    cf.cond_br %15, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    memref.store %c0, %alloc_3[%14] : memref<?xindex>
    %16 = arith.addi %14, %c1 : index
    cf.br ^bb4(%16 : index)
  ^bb6:  // pred: ^bb4
    %cast_4 = memref.cast %alloc_3 : memref<?xindex> to memref<*xindex>
    %alloc_5 = memref.alloc(%2) : memref<?xindex>
    cf.br ^bb7(%c0 : index)
  ^bb7(%17: index):  // 2 preds: ^bb6, ^bb8
    %18 = arith.cmpi slt, %17, %2 : index
    cf.cond_br %18, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    memref.store %c0, %alloc_5[%17] : memref<?xindex>
    %19 = arith.addi %17, %c1 : index
    cf.br ^bb7(%19 : index)
  ^bb9:  // pred: ^bb7
    %cast_6 = memref.cast %alloc_5 : memref<?xindex> to memref<*xindex>
    %alloc_7 = memref.alloc(%3) : memref<?xindex>
    cf.br ^bb10(%c0 : index)
  ^bb10(%20: index):  // 2 preds: ^bb9, ^bb11
    %21 = arith.cmpi slt, %20, %3 : index
    cf.cond_br %21, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    memref.store %c0, %alloc_7[%20] : memref<?xindex>
    %22 = arith.addi %20, %c1 : index
    cf.br ^bb10(%22 : index)
  ^bb12:  // pred: ^bb10
    %cast_8 = memref.cast %alloc_7 : memref<?xindex> to memref<*xindex>
    %alloc_9 = memref.alloc(%4) : memref<?xindex>
    cf.br ^bb13(%c0 : index)
  ^bb13(%23: index):  // 2 preds: ^bb12, ^bb14
    %24 = arith.cmpi slt, %23, %4 : index
    cf.cond_br %24, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    memref.store %c0, %alloc_9[%23] : memref<?xindex>
    %25 = arith.addi %23, %c1 : index
    cf.br ^bb13(%25 : index)
  ^bb15:  // pred: ^bb13
    %cast_10 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
    %alloc_11 = memref.alloc(%5) : memref<?xindex>
    cf.br ^bb16(%c0 : index)
  ^bb16(%26: index):  // 2 preds: ^bb15, ^bb17
    %27 = arith.cmpi slt, %26, %5 : index
    cf.cond_br %27, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    memref.store %c0, %alloc_11[%26] : memref<?xindex>
    %28 = arith.addi %26, %c1 : index
    cf.br ^bb16(%28 : index)
  ^bb18:  // pred: ^bb16
    %cast_12 = memref.cast %alloc_11 : memref<?xindex> to memref<*xindex>
    %alloc_13 = memref.alloc(%6) : memref<?xindex>
    cf.br ^bb19(%c0 : index)
  ^bb19(%29: index):  // 2 preds: ^bb18, ^bb20
    %30 = arith.cmpi slt, %29, %6 : index
    cf.cond_br %30, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    memref.store %c0, %alloc_13[%29] : memref<?xindex>
    %31 = arith.addi %29, %c1 : index
    cf.br ^bb19(%31 : index)
  ^bb21:  // pred: ^bb19
    %cast_14 = memref.cast %alloc_13 : memref<?xindex> to memref<*xindex>
    %alloc_15 = memref.alloc(%7) : memref<?xindex>
    cf.br ^bb22(%c0 : index)
  ^bb22(%32: index):  // 2 preds: ^bb21, ^bb23
    %33 = arith.cmpi slt, %32, %7 : index
    cf.cond_br %33, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    memref.store %c0, %alloc_15[%32] : memref<?xindex>
    %34 = arith.addi %32, %c1 : index
    cf.br ^bb22(%34 : index)
  ^bb24:  // pred: ^bb22
    %cast_16 = memref.cast %alloc_15 : memref<?xindex> to memref<*xindex>
    %alloc_17 = memref.alloc(%8) : memref<?xf64>
    cf.br ^bb25(%c0 : index)
  ^bb25(%35: index):  // 2 preds: ^bb24, ^bb26
    %36 = arith.cmpi slt, %35, %8 : index
    cf.cond_br %36, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    memref.store %cst_0, %alloc_17[%35] : memref<?xf64>
    %37 = arith.addi %35, %c1 : index
    cf.br ^bb25(%37 : index)
  ^bb27:  // pred: ^bb25
    %cast_18 = memref.cast %alloc_17 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_2, %cast_4, %cast_6, %cast_8, %cast_10, %cast_12, %cast_14, %cast_16, %cast_18, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
    %alloc_19 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x4xf64>
    %alloc_20 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x4xf64>
    cf.br ^bb28(%c0 : index)
  ^bb28(%38: index):  // 2 preds: ^bb27, ^bb31
    %39 = arith.cmpi slt, %38, %10 : index
    cf.cond_br %39, ^bb29(%c0 : index), ^bb32(%c0 : index)
  ^bb29(%40: index):  // 2 preds: ^bb28, ^bb30
    %41 = arith.cmpi slt, %40, %c4 : index
    cf.cond_br %41, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    memref.store %cst, %alloc_19[%38, %40] : memref<?x4xf64>
    %42 = arith.addi %40, %c1 : index
    cf.br ^bb29(%42 : index)
  ^bb31:  // pred: ^bb29
    %43 = arith.addi %38, %c1 : index
    cf.br ^bb28(%43 : index)
  ^bb32(%44: index):  // 2 preds: ^bb28, ^bb35
    %45 = arith.cmpi slt, %44, %9 : index
    cf.cond_br %45, ^bb33(%c0 : index), ^bb36
  ^bb33(%46: index):  // 2 preds: ^bb32, ^bb34
    %47 = arith.cmpi slt, %46, %c4 : index
    cf.cond_br %47, ^bb34, ^bb35
  ^bb34:  // pred: ^bb33
    memref.store %cst_0, %alloc_20[%44, %46] : memref<?x4xf64>
    %48 = arith.addi %46, %c1 : index
    cf.br ^bb33(%48 : index)
  ^bb35:  // pred: ^bb33
    %49 = arith.addi %44, %c1 : index
    cf.br ^bb32(%49 : index)
  ^bb36:  // pred: ^bb32
    %50 = memref.load %alloc_1[%c0] : memref<?xindex>
    cf.br ^bb37(%c0 : index)
  ^bb37(%51: index):  // 2 preds: ^bb36, ^bb44
    %52 = arith.cmpi slt, %51, %50 : index
    cf.cond_br %52, ^bb38, ^bb45
  ^bb38:  // pred: ^bb37
    %53 = arith.addi %51, %c1 : index
    %54 = memref.load %alloc_9[%51] : memref<?xindex>
    %55 = memref.load %alloc_9[%53] : memref<?xindex>
    cf.br ^bb39(%54 : index)
  ^bb39(%56: index):  // 2 preds: ^bb38, ^bb43
    %57 = arith.cmpi slt, %56, %55 : index
    cf.cond_br %57, ^bb40, ^bb44
  ^bb40:  // pred: ^bb39
    %58 = memref.load %alloc_11[%56] : memref<?xindex>
    cf.br ^bb41(%c0 : index)
  ^bb41(%59: index):  // 2 preds: ^bb40, ^bb42
    %60 = arith.cmpi slt, %59, %c4 : index
    cf.cond_br %60, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %61 = memref.load %alloc_17[%56] : memref<?xf64>
    %62 = memref.load %alloc_19[%58, %59] : memref<?x4xf64>
    %63 = memref.load %alloc_20[%51, %59] : memref<?x4xf64>
    %64 = arith.mulf %61, %62 : f64
    %65 = arith.addf %63, %64 : f64
    memref.store %65, %alloc_20[%51, %59] : memref<?x4xf64>
    %66 = arith.addi %59, %c1 : index
    cf.br ^bb41(%66 : index)
  ^bb43:  // pred: ^bb41
    %67 = arith.addi %56, %c1 : index
    cf.br ^bb39(%67 : index)
  ^bb44:  // pred: ^bb39
    cf.br ^bb37(%53 : index)
  ^bb45:  // pred: ^bb37
    %cast_21 = memref.cast %alloc_20 : memref<?x4xf64> to memref<*xf64>
    call @comet_print_memref_f64(%cast_21) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64(i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort_index(memref<*xindex>, index, index)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After FinalizeMemRefToLLVMConversionPass (finalize-memref-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  func.func @main() {
    %cst = arith.constant 1.700000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c10 = arith.constant 10 : index
    %0 = builtin.unrealized_conversion_cast %c10 : index to i64
    %c9 = arith.constant 9 : index
    %1 = builtin.unrealized_conversion_cast %c9 : index to i64
    %c8 = arith.constant 8 : index
    %2 = builtin.unrealized_conversion_cast %c8 : index to i64
    %c7 = arith.constant 7 : index
    %3 = builtin.unrealized_conversion_cast %c7 : index to i64
    %c6 = arith.constant 6 : index
    %4 = builtin.unrealized_conversion_cast %c6 : index to i64
    %c5 = arith.constant 5 : index
    %5 = builtin.unrealized_conversion_cast %c5 : index to i64
    %c4 = arith.constant 4 : index
    %6 = builtin.unrealized_conversion_cast %c4 : index to i64
    %c3 = arith.constant 3 : index
    %7 = builtin.unrealized_conversion_cast %c3 : index to i64
    %c2 = arith.constant 2 : index
    %8 = builtin.unrealized_conversion_cast %c2 : index to i64
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1 = arith.constant 1 : index
    %9 = builtin.unrealized_conversion_cast %c1 : index to i64
    %c0 = arith.constant 0 : index
    %10 = builtin.unrealized_conversion_cast %c0 : index to i64
    %c-1 = arith.constant -1 : index
    %11 = llvm.mlir.constant(13 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.mlir.zero : !llvm.ptr
    %14 = llvm.getelementptr %13[%11] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %15 = llvm.ptrtoint %14 : !llvm.ptr to i64
    %16 = llvm.call @malloc(%15) : (i64) -> !llvm.ptr
    %17 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %18 = llvm.insertvalue %16, %17[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %16, %18[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.mlir.constant(0 : index) : i64
    %21 = llvm.insertvalue %20, %19[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.insertvalue %11, %21[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.insertvalue %12, %22[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.alloca %24 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %23, %25 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %28 = llvm.insertvalue %26, %27[0] : !llvm.struct<(i64, ptr)> 
    %29 = llvm.insertvalue %25, %28[1] : !llvm.struct<(i64, ptr)> 
    %30 = builtin.unrealized_conversion_cast %29 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %30, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %31 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.getelementptr %31[%10] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %33 = llvm.load %32 : !llvm.ptr -> i64
    %34 = builtin.unrealized_conversion_cast %33 : i64 to index
    %35 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.getelementptr %35[%9] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %37 = llvm.load %36 : !llvm.ptr -> i64
    %38 = builtin.unrealized_conversion_cast %37 : i64 to index
    %39 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.getelementptr %39[%8] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %41 = llvm.load %40 : !llvm.ptr -> i64
    %42 = builtin.unrealized_conversion_cast %41 : i64 to index
    %43 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.getelementptr %43[%7] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %45 = llvm.load %44 : !llvm.ptr -> i64
    %46 = builtin.unrealized_conversion_cast %45 : i64 to index
    %47 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.getelementptr %47[%6] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %49 = llvm.load %48 : !llvm.ptr -> i64
    %50 = builtin.unrealized_conversion_cast %49 : i64 to index
    %51 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.getelementptr %51[%5] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %53 = llvm.load %52 : !llvm.ptr -> i64
    %54 = builtin.unrealized_conversion_cast %53 : i64 to index
    %55 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.getelementptr %55[%4] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %57 = llvm.load %56 : !llvm.ptr -> i64
    %58 = builtin.unrealized_conversion_cast %57 : i64 to index
    %59 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.getelementptr %59[%3] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %61 = llvm.load %60 : !llvm.ptr -> i64
    %62 = builtin.unrealized_conversion_cast %61 : i64 to index
    %63 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.getelementptr %63[%2] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %65 = llvm.load %64 : !llvm.ptr -> i64
    %66 = builtin.unrealized_conversion_cast %65 : i64 to index
    %67 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.getelementptr %67[%1] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %69 = llvm.load %68 : !llvm.ptr -> i64
    %70 = builtin.unrealized_conversion_cast %69 : i64 to index
    %71 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.getelementptr %71[%0] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %73 = llvm.load %72 : !llvm.ptr -> i64
    %74 = builtin.unrealized_conversion_cast %73 : i64 to index
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.zero : !llvm.ptr
    %77 = llvm.getelementptr %76[%33] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %78 = llvm.ptrtoint %77 : !llvm.ptr to i64
    %79 = llvm.call @malloc(%78) : (i64) -> !llvm.ptr
    %80 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %81 = llvm.insertvalue %79, %80[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %82 = llvm.insertvalue %79, %81[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %83 = llvm.mlir.constant(0 : index) : i64
    %84 = llvm.insertvalue %83, %82[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %85 = llvm.insertvalue %33, %84[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.insertvalue %75, %85[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb1(%c0 : index)
  ^bb1(%87: index):  // 2 preds: ^bb0, ^bb2
    %88 = builtin.unrealized_conversion_cast %87 : index to i64
    %89 = arith.cmpi slt, %87, %34 : index
    cf.cond_br %89, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %90 = llvm.extractvalue %86[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %91 = llvm.getelementptr %90[%88] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %10, %91 : i64, !llvm.ptr
    %92 = arith.addi %87, %c1 : index
    cf.br ^bb1(%92 : index)
  ^bb3:  // pred: ^bb1
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.alloca %93 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %86, %94 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %97 = llvm.insertvalue %95, %96[0] : !llvm.struct<(i64, ptr)> 
    %98 = llvm.insertvalue %94, %97[1] : !llvm.struct<(i64, ptr)> 
    %99 = builtin.unrealized_conversion_cast %98 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.mlir.zero : !llvm.ptr
    %102 = llvm.getelementptr %101[%37] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %103 = llvm.ptrtoint %102 : !llvm.ptr to i64
    %104 = llvm.call @malloc(%103) : (i64) -> !llvm.ptr
    %105 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %106 = llvm.insertvalue %104, %105[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %107 = llvm.insertvalue %104, %106[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %108 = llvm.mlir.constant(0 : index) : i64
    %109 = llvm.insertvalue %108, %107[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.insertvalue %37, %109[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.insertvalue %100, %110[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb4(%c0 : index)
  ^bb4(%112: index):  // 2 preds: ^bb3, ^bb5
    %113 = builtin.unrealized_conversion_cast %112 : index to i64
    %114 = arith.cmpi slt, %112, %38 : index
    cf.cond_br %114, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %115 = llvm.extractvalue %111[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %116 = llvm.getelementptr %115[%113] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %10, %116 : i64, !llvm.ptr
    %117 = arith.addi %112, %c1 : index
    cf.br ^bb4(%117 : index)
  ^bb6:  // pred: ^bb4
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.alloca %118 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %111, %119 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %122 = llvm.insertvalue %120, %121[0] : !llvm.struct<(i64, ptr)> 
    %123 = llvm.insertvalue %119, %122[1] : !llvm.struct<(i64, ptr)> 
    %124 = builtin.unrealized_conversion_cast %123 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.mlir.zero : !llvm.ptr
    %127 = llvm.getelementptr %126[%41] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %128 = llvm.ptrtoint %127 : !llvm.ptr to i64
    %129 = llvm.call @malloc(%128) : (i64) -> !llvm.ptr
    %130 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %131 = llvm.insertvalue %129, %130[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.insertvalue %129, %131[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.mlir.constant(0 : index) : i64
    %134 = llvm.insertvalue %133, %132[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %135 = llvm.insertvalue %41, %134[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %136 = llvm.insertvalue %125, %135[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb7(%c0 : index)
  ^bb7(%137: index):  // 2 preds: ^bb6, ^bb8
    %138 = builtin.unrealized_conversion_cast %137 : index to i64
    %139 = arith.cmpi slt, %137, %42 : index
    cf.cond_br %139, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %140 = llvm.extractvalue %136[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %141 = llvm.getelementptr %140[%138] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %10, %141 : i64, !llvm.ptr
    %142 = arith.addi %137, %c1 : index
    cf.br ^bb7(%142 : index)
  ^bb9:  // pred: ^bb7
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.alloca %143 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %136, %144 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %147 = llvm.insertvalue %145, %146[0] : !llvm.struct<(i64, ptr)> 
    %148 = llvm.insertvalue %144, %147[1] : !llvm.struct<(i64, ptr)> 
    %149 = builtin.unrealized_conversion_cast %148 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %150 = llvm.mlir.constant(1 : index) : i64
    %151 = llvm.mlir.zero : !llvm.ptr
    %152 = llvm.getelementptr %151[%45] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %153 = llvm.ptrtoint %152 : !llvm.ptr to i64
    %154 = llvm.call @malloc(%153) : (i64) -> !llvm.ptr
    %155 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %156 = llvm.insertvalue %154, %155[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %157 = llvm.insertvalue %154, %156[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %158 = llvm.mlir.constant(0 : index) : i64
    %159 = llvm.insertvalue %158, %157[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %160 = llvm.insertvalue %45, %159[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %161 = llvm.insertvalue %150, %160[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb10(%c0 : index)
  ^bb10(%162: index):  // 2 preds: ^bb9, ^bb11
    %163 = builtin.unrealized_conversion_cast %162 : index to i64
    %164 = arith.cmpi slt, %162, %46 : index
    cf.cond_br %164, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %165 = llvm.extractvalue %161[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.getelementptr %165[%163] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %10, %166 : i64, !llvm.ptr
    %167 = arith.addi %162, %c1 : index
    cf.br ^bb10(%167 : index)
  ^bb12:  // pred: ^bb10
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.alloca %168 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %161, %169 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %172 = llvm.insertvalue %170, %171[0] : !llvm.struct<(i64, ptr)> 
    %173 = llvm.insertvalue %169, %172[1] : !llvm.struct<(i64, ptr)> 
    %174 = builtin.unrealized_conversion_cast %173 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.zero : !llvm.ptr
    %177 = llvm.getelementptr %176[%49] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %178 = llvm.ptrtoint %177 : !llvm.ptr to i64
    %179 = llvm.call @malloc(%178) : (i64) -> !llvm.ptr
    %180 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %181 = llvm.insertvalue %179, %180[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %182 = llvm.insertvalue %179, %181[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %183 = llvm.mlir.constant(0 : index) : i64
    %184 = llvm.insertvalue %183, %182[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %185 = llvm.insertvalue %49, %184[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %186 = llvm.insertvalue %175, %185[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb13(%c0 : index)
  ^bb13(%187: index):  // 2 preds: ^bb12, ^bb14
    %188 = builtin.unrealized_conversion_cast %187 : index to i64
    %189 = arith.cmpi slt, %187, %50 : index
    cf.cond_br %189, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %190 = llvm.extractvalue %186[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %191 = llvm.getelementptr %190[%188] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %10, %191 : i64, !llvm.ptr
    %192 = arith.addi %187, %c1 : index
    cf.br ^bb13(%192 : index)
  ^bb15:  // pred: ^bb13
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.alloca %193 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %186, %194 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %195 = llvm.mlir.constant(1 : index) : i64
    %196 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %197 = llvm.insertvalue %195, %196[0] : !llvm.struct<(i64, ptr)> 
    %198 = llvm.insertvalue %194, %197[1] : !llvm.struct<(i64, ptr)> 
    %199 = builtin.unrealized_conversion_cast %198 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.mlir.zero : !llvm.ptr
    %202 = llvm.getelementptr %201[%53] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %203 = llvm.ptrtoint %202 : !llvm.ptr to i64
    %204 = llvm.call @malloc(%203) : (i64) -> !llvm.ptr
    %205 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %206 = llvm.insertvalue %204, %205[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %207 = llvm.insertvalue %204, %206[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %208 = llvm.mlir.constant(0 : index) : i64
    %209 = llvm.insertvalue %208, %207[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %210 = llvm.insertvalue %53, %209[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %211 = llvm.insertvalue %200, %210[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb16(%c0 : index)
  ^bb16(%212: index):  // 2 preds: ^bb15, ^bb17
    %213 = builtin.unrealized_conversion_cast %212 : index to i64
    %214 = arith.cmpi slt, %212, %54 : index
    cf.cond_br %214, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %215 = llvm.extractvalue %211[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %216 = llvm.getelementptr %215[%213] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %10, %216 : i64, !llvm.ptr
    %217 = arith.addi %212, %c1 : index
    cf.br ^bb16(%217 : index)
  ^bb18:  // pred: ^bb16
    %218 = llvm.mlir.constant(1 : index) : i64
    %219 = llvm.alloca %218 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %211, %219 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %222 = llvm.insertvalue %220, %221[0] : !llvm.struct<(i64, ptr)> 
    %223 = llvm.insertvalue %219, %222[1] : !llvm.struct<(i64, ptr)> 
    %224 = builtin.unrealized_conversion_cast %223 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.mlir.zero : !llvm.ptr
    %227 = llvm.getelementptr %226[%57] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %228 = llvm.ptrtoint %227 : !llvm.ptr to i64
    %229 = llvm.call @malloc(%228) : (i64) -> !llvm.ptr
    %230 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %231 = llvm.insertvalue %229, %230[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %232 = llvm.insertvalue %229, %231[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.mlir.constant(0 : index) : i64
    %234 = llvm.insertvalue %233, %232[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %235 = llvm.insertvalue %57, %234[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %236 = llvm.insertvalue %225, %235[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb19(%c0 : index)
  ^bb19(%237: index):  // 2 preds: ^bb18, ^bb20
    %238 = builtin.unrealized_conversion_cast %237 : index to i64
    %239 = arith.cmpi slt, %237, %58 : index
    cf.cond_br %239, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %240 = llvm.extractvalue %236[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %241 = llvm.getelementptr %240[%238] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %10, %241 : i64, !llvm.ptr
    %242 = arith.addi %237, %c1 : index
    cf.br ^bb19(%242 : index)
  ^bb21:  // pred: ^bb19
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.alloca %243 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %236, %244 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %247 = llvm.insertvalue %245, %246[0] : !llvm.struct<(i64, ptr)> 
    %248 = llvm.insertvalue %244, %247[1] : !llvm.struct<(i64, ptr)> 
    %249 = builtin.unrealized_conversion_cast %248 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.mlir.zero : !llvm.ptr
    %252 = llvm.getelementptr %251[%61] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %253 = llvm.ptrtoint %252 : !llvm.ptr to i64
    %254 = llvm.call @malloc(%253) : (i64) -> !llvm.ptr
    %255 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %256 = llvm.insertvalue %254, %255[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %257 = llvm.insertvalue %254, %256[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %258 = llvm.mlir.constant(0 : index) : i64
    %259 = llvm.insertvalue %258, %257[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %260 = llvm.insertvalue %61, %259[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %261 = llvm.insertvalue %250, %260[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb22(%c0 : index)
  ^bb22(%262: index):  // 2 preds: ^bb21, ^bb23
    %263 = builtin.unrealized_conversion_cast %262 : index to i64
    %264 = arith.cmpi slt, %262, %62 : index
    cf.cond_br %264, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %265 = llvm.extractvalue %261[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %266 = llvm.getelementptr %265[%263] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %10, %266 : i64, !llvm.ptr
    %267 = arith.addi %262, %c1 : index
    cf.br ^bb22(%267 : index)
  ^bb24:  // pred: ^bb22
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.alloca %268 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %261, %269 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %272 = llvm.insertvalue %270, %271[0] : !llvm.struct<(i64, ptr)> 
    %273 = llvm.insertvalue %269, %272[1] : !llvm.struct<(i64, ptr)> 
    %274 = builtin.unrealized_conversion_cast %273 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.mlir.zero : !llvm.ptr
    %277 = llvm.getelementptr %276[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %278 = llvm.ptrtoint %277 : !llvm.ptr to i64
    %279 = llvm.call @malloc(%278) : (i64) -> !llvm.ptr
    %280 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %281 = llvm.insertvalue %279, %280[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %282 = llvm.insertvalue %279, %281[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.insertvalue %283, %282[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %285 = llvm.insertvalue %65, %284[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %286 = llvm.insertvalue %275, %285[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    cf.br ^bb25(%c0 : index)
  ^bb25(%287: index):  // 2 preds: ^bb24, ^bb26
    %288 = builtin.unrealized_conversion_cast %287 : index to i64
    %289 = arith.cmpi slt, %287, %66 : index
    cf.cond_br %289, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %290 = llvm.extractvalue %286[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %291 = llvm.getelementptr %290[%288] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst_0, %291 : f64, !llvm.ptr
    %292 = arith.addi %287, %c1 : index
    cf.br ^bb25(%292 : index)
  ^bb27:  // pred: ^bb25
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.alloca %293 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %286, %294 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %297 = llvm.insertvalue %295, %296[0] : !llvm.struct<(i64, ptr)> 
    %298 = llvm.insertvalue %294, %297[1] : !llvm.struct<(i64, ptr)> 
    %299 = builtin.unrealized_conversion_cast %298 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %99, %124, %149, %174, %199, %224, %249, %274, %299, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
    %300 = llvm.mlir.constant(4 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.mul %300, %73  : i64
    %303 = llvm.mlir.zero : !llvm.ptr
    %304 = llvm.getelementptr %303[%302] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %305 = llvm.ptrtoint %304 : !llvm.ptr to i64
    %306 = llvm.mlir.constant(32 : index) : i64
    %307 = llvm.add %305, %306  : i64
    %308 = llvm.call @malloc(%307) : (i64) -> !llvm.ptr
    %309 = llvm.ptrtoint %308 : !llvm.ptr to i64
    %310 = llvm.mlir.constant(1 : index) : i64
    %311 = llvm.sub %306, %310  : i64
    %312 = llvm.add %309, %311  : i64
    %313 = llvm.urem %312, %306  : i64
    %314 = llvm.sub %312, %313  : i64
    %315 = llvm.inttoptr %314 : i64 to !llvm.ptr
    %316 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %317 = llvm.insertvalue %308, %316[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %318 = llvm.insertvalue %315, %317[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.insertvalue %319, %318[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %321 = llvm.insertvalue %73, %320[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %322 = llvm.insertvalue %300, %321[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %323 = llvm.insertvalue %300, %322[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %324 = llvm.insertvalue %301, %323[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %325 = llvm.mlir.constant(4 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    %327 = llvm.mul %325, %69  : i64
    %328 = llvm.mlir.zero : !llvm.ptr
    %329 = llvm.getelementptr %328[%327] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %330 = llvm.ptrtoint %329 : !llvm.ptr to i64
    %331 = llvm.mlir.constant(32 : index) : i64
    %332 = llvm.add %330, %331  : i64
    %333 = llvm.call @malloc(%332) : (i64) -> !llvm.ptr
    %334 = llvm.ptrtoint %333 : !llvm.ptr to i64
    %335 = llvm.mlir.constant(1 : index) : i64
    %336 = llvm.sub %331, %335  : i64
    %337 = llvm.add %334, %336  : i64
    %338 = llvm.urem %337, %331  : i64
    %339 = llvm.sub %337, %338  : i64
    %340 = llvm.inttoptr %339 : i64 to !llvm.ptr
    %341 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %342 = llvm.insertvalue %333, %341[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %343 = llvm.insertvalue %340, %342[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %344 = llvm.mlir.constant(0 : index) : i64
    %345 = llvm.insertvalue %344, %343[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %346 = llvm.insertvalue %69, %345[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %347 = llvm.insertvalue %325, %346[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %348 = llvm.insertvalue %325, %347[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %349 = llvm.insertvalue %326, %348[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    cf.br ^bb28(%c0 : index)
  ^bb28(%350: index):  // 2 preds: ^bb27, ^bb31
    %351 = builtin.unrealized_conversion_cast %350 : index to i64
    %352 = arith.cmpi slt, %350, %74 : index
    cf.cond_br %352, ^bb29(%c0 : index), ^bb32(%c0 : index)
  ^bb29(%353: index):  // 2 preds: ^bb28, ^bb30
    %354 = builtin.unrealized_conversion_cast %353 : index to i64
    %355 = arith.cmpi slt, %353, %c4 : index
    cf.cond_br %355, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %356 = llvm.extractvalue %324[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %357 = llvm.mlir.constant(4 : index) : i64
    %358 = llvm.mul %351, %357  : i64
    %359 = llvm.add %358, %354  : i64
    %360 = llvm.getelementptr %356[%359] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst, %360 : f64, !llvm.ptr
    %361 = arith.addi %353, %c1 : index
    cf.br ^bb29(%361 : index)
  ^bb31:  // pred: ^bb29
    %362 = arith.addi %350, %c1 : index
    cf.br ^bb28(%362 : index)
  ^bb32(%363: index):  // 2 preds: ^bb28, ^bb35
    %364 = builtin.unrealized_conversion_cast %363 : index to i64
    %365 = arith.cmpi slt, %363, %70 : index
    cf.cond_br %365, ^bb33(%c0 : index), ^bb36
  ^bb33(%366: index):  // 2 preds: ^bb32, ^bb34
    %367 = builtin.unrealized_conversion_cast %366 : index to i64
    %368 = arith.cmpi slt, %366, %c4 : index
    cf.cond_br %368, ^bb34, ^bb35
  ^bb34:  // pred: ^bb33
    %369 = llvm.extractvalue %349[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %370 = llvm.mlir.constant(4 : index) : i64
    %371 = llvm.mul %364, %370  : i64
    %372 = llvm.add %371, %367  : i64
    %373 = llvm.getelementptr %369[%372] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %cst_0, %373 : f64, !llvm.ptr
    %374 = arith.addi %366, %c1 : index
    cf.br ^bb33(%374 : index)
  ^bb35:  // pred: ^bb33
    %375 = arith.addi %363, %c1 : index
    cf.br ^bb32(%375 : index)
  ^bb36:  // pred: ^bb32
    %376 = llvm.extractvalue %86[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %377 = llvm.getelementptr %376[%10] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %378 = llvm.load %377 : !llvm.ptr -> i64
    %379 = builtin.unrealized_conversion_cast %378 : i64 to index
    cf.br ^bb37(%c0 : index)
  ^bb37(%380: index):  // 2 preds: ^bb36, ^bb44
    %381 = builtin.unrealized_conversion_cast %380 : index to i64
    %382 = arith.cmpi slt, %380, %379 : index
    cf.cond_br %382, ^bb38, ^bb45
  ^bb38:  // pred: ^bb37
    %383 = arith.addi %380, %c1 : index
    %384 = builtin.unrealized_conversion_cast %383 : index to i64
    %385 = llvm.extractvalue %186[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %386 = llvm.getelementptr %385[%381] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %387 = llvm.load %386 : !llvm.ptr -> i64
    %388 = builtin.unrealized_conversion_cast %387 : i64 to index
    %389 = llvm.extractvalue %186[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %390 = llvm.getelementptr %389[%384] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %391 = llvm.load %390 : !llvm.ptr -> i64
    %392 = builtin.unrealized_conversion_cast %391 : i64 to index
    cf.br ^bb39(%388 : index)
  ^bb39(%393: index):  // 2 preds: ^bb38, ^bb43
    %394 = builtin.unrealized_conversion_cast %393 : index to i64
    %395 = arith.cmpi slt, %393, %392 : index
    cf.cond_br %395, ^bb40, ^bb44
  ^bb40:  // pred: ^bb39
    %396 = llvm.extractvalue %211[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %397 = llvm.getelementptr %396[%394] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %398 = llvm.load %397 : !llvm.ptr -> i64
    cf.br ^bb41(%c0 : index)
  ^bb41(%399: index):  // 2 preds: ^bb40, ^bb42
    %400 = builtin.unrealized_conversion_cast %399 : index to i64
    %401 = arith.cmpi slt, %399, %c4 : index
    cf.cond_br %401, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %402 = llvm.extractvalue %286[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %403 = llvm.getelementptr %402[%394] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %404 = llvm.load %403 : !llvm.ptr -> f64
    %405 = llvm.extractvalue %324[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %406 = llvm.mlir.constant(4 : index) : i64
    %407 = llvm.mul %398, %406  : i64
    %408 = llvm.add %407, %400  : i64
    %409 = llvm.getelementptr %405[%408] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %410 = llvm.load %409 : !llvm.ptr -> f64
    %411 = llvm.extractvalue %349[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %412 = llvm.mlir.constant(4 : index) : i64
    %413 = llvm.mul %381, %412  : i64
    %414 = llvm.add %413, %400  : i64
    %415 = llvm.getelementptr %411[%414] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %416 = llvm.load %415 : !llvm.ptr -> f64
    %417 = arith.mulf %404, %410 : f64
    %418 = arith.addf %416, %417 : f64
    %419 = llvm.extractvalue %349[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %420 = llvm.mlir.constant(4 : index) : i64
    %421 = llvm.mul %381, %420  : i64
    %422 = llvm.add %421, %400  : i64
    %423 = llvm.getelementptr %419[%422] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %418, %423 : f64, !llvm.ptr
    %424 = arith.addi %399, %c1 : index
    cf.br ^bb41(%424 : index)
  ^bb43:  // pred: ^bb41
    %425 = arith.addi %393, %c1 : index
    cf.br ^bb39(%425 : index)
  ^bb44:  // pred: ^bb39
    cf.br ^bb37(%383 : index)
  ^bb45:  // pred: ^bb37
    %426 = llvm.mlir.constant(1 : index) : i64
    %427 = llvm.alloca %426 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %349, %427 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %428 = llvm.mlir.constant(2 : index) : i64
    %429 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %430 = llvm.insertvalue %428, %429[0] : !llvm.struct<(i64, ptr)> 
    %431 = llvm.insertvalue %427, %430[1] : !llvm.struct<(i64, ptr)> 
    %432 = builtin.unrealized_conversion_cast %431 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    call @comet_print_memref_f64(%432) : (memref<*xf64>) -> ()
    return
  }
  func.func private @read_input_2D_f64(i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort_index(memref<*xindex>, index, index)
  func.func private @comet_print_memref_f64(memref<*xf64>)
}


// -----// IR Dump After ConvertFuncToLLVMPass (convert-func-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(1.700000e+00 : f64) : f64
    %1 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %2 = llvm.mlir.constant(10 : index) : i64
    %3 = builtin.unrealized_conversion_cast %2 : i64 to index
    %4 = builtin.unrealized_conversion_cast %3 : index to i64
    %5 = llvm.mlir.constant(9 : index) : i64
    %6 = builtin.unrealized_conversion_cast %5 : i64 to index
    %7 = builtin.unrealized_conversion_cast %6 : index to i64
    %8 = llvm.mlir.constant(8 : index) : i64
    %9 = builtin.unrealized_conversion_cast %8 : i64 to index
    %10 = builtin.unrealized_conversion_cast %9 : index to i64
    %11 = llvm.mlir.constant(7 : index) : i64
    %12 = builtin.unrealized_conversion_cast %11 : i64 to index
    %13 = builtin.unrealized_conversion_cast %12 : index to i64
    %14 = llvm.mlir.constant(6 : index) : i64
    %15 = builtin.unrealized_conversion_cast %14 : i64 to index
    %16 = builtin.unrealized_conversion_cast %15 : index to i64
    %17 = llvm.mlir.constant(5 : index) : i64
    %18 = builtin.unrealized_conversion_cast %17 : i64 to index
    %19 = builtin.unrealized_conversion_cast %18 : index to i64
    %20 = llvm.mlir.constant(4 : index) : i64
    %21 = builtin.unrealized_conversion_cast %20 : i64 to index
    %22 = builtin.unrealized_conversion_cast %21 : index to i64
    %23 = llvm.mlir.constant(3 : index) : i64
    %24 = builtin.unrealized_conversion_cast %23 : i64 to index
    %25 = builtin.unrealized_conversion_cast %24 : index to i64
    %26 = llvm.mlir.constant(2 : index) : i64
    %27 = builtin.unrealized_conversion_cast %26 : i64 to index
    %28 = builtin.unrealized_conversion_cast %27 : index to i64
    %29 = llvm.mlir.constant(1 : i32) : i32
    %30 = llvm.mlir.constant(0 : i32) : i32
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = builtin.unrealized_conversion_cast %31 : i64 to index
    %33 = builtin.unrealized_conversion_cast %32 : index to i64
    %34 = llvm.mlir.constant(0 : index) : i64
    %35 = builtin.unrealized_conversion_cast %34 : i64 to index
    %36 = builtin.unrealized_conversion_cast %35 : index to i64
    %37 = llvm.mlir.constant(-1 : index) : i64
    %38 = llvm.mlir.constant(13 : index) : i64
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.mlir.zero : !llvm.ptr
    %41 = llvm.getelementptr %40[%38] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %42 = llvm.ptrtoint %41 : !llvm.ptr to i64
    %43 = llvm.call @malloc(%42) : (i64) -> !llvm.ptr
    %44 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %45 = llvm.insertvalue %43, %44[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.insertvalue %43, %45[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.mlir.constant(0 : index) : i64
    %48 = llvm.insertvalue %47, %46[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.insertvalue %38, %48[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.insertvalue %39, %49[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.alloca %51 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %50, %52 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %55 = llvm.insertvalue %53, %54[0] : !llvm.struct<(i64, ptr)> 
    %56 = llvm.insertvalue %52, %55[1] : !llvm.struct<(i64, ptr)> 
    %57 = builtin.unrealized_conversion_cast %56 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %58 = llvm.extractvalue %56[0] : !llvm.struct<(i64, ptr)> 
    %59 = llvm.extractvalue %56[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%30, %34, %37, %31, %37, %58, %59, %29) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %60 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.getelementptr %60[%36] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %62 = llvm.load %61 : !llvm.ptr -> i64
    %63 = builtin.unrealized_conversion_cast %62 : i64 to index
    %64 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.getelementptr %64[%33] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %66 = llvm.load %65 : !llvm.ptr -> i64
    %67 = builtin.unrealized_conversion_cast %66 : i64 to index
    %68 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.getelementptr %68[%28] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %70 = llvm.load %69 : !llvm.ptr -> i64
    %71 = builtin.unrealized_conversion_cast %70 : i64 to index
    %72 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.getelementptr %72[%25] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %74 = llvm.load %73 : !llvm.ptr -> i64
    %75 = builtin.unrealized_conversion_cast %74 : i64 to index
    %76 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.getelementptr %76[%22] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %78 = llvm.load %77 : !llvm.ptr -> i64
    %79 = builtin.unrealized_conversion_cast %78 : i64 to index
    %80 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %81 = llvm.getelementptr %80[%19] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %82 = llvm.load %81 : !llvm.ptr -> i64
    %83 = builtin.unrealized_conversion_cast %82 : i64 to index
    %84 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %85 = llvm.getelementptr %84[%16] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %86 = llvm.load %85 : !llvm.ptr -> i64
    %87 = builtin.unrealized_conversion_cast %86 : i64 to index
    %88 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.getelementptr %88[%13] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %90 = llvm.load %89 : !llvm.ptr -> i64
    %91 = builtin.unrealized_conversion_cast %90 : i64 to index
    %92 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %93 = llvm.getelementptr %92[%10] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %94 = llvm.load %93 : !llvm.ptr -> i64
    %95 = builtin.unrealized_conversion_cast %94 : i64 to index
    %96 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.getelementptr %96[%7] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %98 = llvm.load %97 : !llvm.ptr -> i64
    %99 = builtin.unrealized_conversion_cast %98 : i64 to index
    %100 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %101 = llvm.getelementptr %100[%4] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %102 = llvm.load %101 : !llvm.ptr -> i64
    %103 = builtin.unrealized_conversion_cast %102 : i64 to index
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.mlir.zero : !llvm.ptr
    %106 = llvm.getelementptr %105[%62] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %107 = llvm.ptrtoint %106 : !llvm.ptr to i64
    %108 = llvm.call @malloc(%107) : (i64) -> !llvm.ptr
    %109 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %110 = llvm.insertvalue %108, %109[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.insertvalue %108, %110[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %112 = llvm.mlir.constant(0 : index) : i64
    %113 = llvm.insertvalue %112, %111[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %114 = llvm.insertvalue %62, %113[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %115 = llvm.insertvalue %104, %114[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%34 : i64)
  ^bb1(%116: i64):  // 2 preds: ^bb0, ^bb2
    %117 = builtin.unrealized_conversion_cast %116 : i64 to index
    %118 = builtin.unrealized_conversion_cast %117 : index to i64
    %119 = llvm.icmp "slt" %116, %62 : i64
    llvm.cond_br %119, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %120 = llvm.extractvalue %115[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %121 = llvm.getelementptr %120[%118] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %36, %121 : i64, !llvm.ptr
    %122 = llvm.add %116, %31  : i64
    llvm.br ^bb1(%122 : i64)
  ^bb3:  // pred: ^bb1
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.alloca %123 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %115, %124 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %127 = llvm.insertvalue %125, %126[0] : !llvm.struct<(i64, ptr)> 
    %128 = llvm.insertvalue %124, %127[1] : !llvm.struct<(i64, ptr)> 
    %129 = builtin.unrealized_conversion_cast %128 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.zero : !llvm.ptr
    %132 = llvm.getelementptr %131[%66] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %133 = llvm.ptrtoint %132 : !llvm.ptr to i64
    %134 = llvm.call @malloc(%133) : (i64) -> !llvm.ptr
    %135 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %136 = llvm.insertvalue %134, %135[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %137 = llvm.insertvalue %134, %136[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %138 = llvm.mlir.constant(0 : index) : i64
    %139 = llvm.insertvalue %138, %137[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %140 = llvm.insertvalue %66, %139[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %141 = llvm.insertvalue %130, %140[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%34 : i64)
  ^bb4(%142: i64):  // 2 preds: ^bb3, ^bb5
    %143 = builtin.unrealized_conversion_cast %142 : i64 to index
    %144 = builtin.unrealized_conversion_cast %143 : index to i64
    %145 = llvm.icmp "slt" %142, %66 : i64
    llvm.cond_br %145, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %146 = llvm.extractvalue %141[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %147 = llvm.getelementptr %146[%144] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %36, %147 : i64, !llvm.ptr
    %148 = llvm.add %142, %31  : i64
    llvm.br ^bb4(%148 : i64)
  ^bb6:  // pred: ^bb4
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.alloca %149 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %141, %150 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %153 = llvm.insertvalue %151, %152[0] : !llvm.struct<(i64, ptr)> 
    %154 = llvm.insertvalue %150, %153[1] : !llvm.struct<(i64, ptr)> 
    %155 = builtin.unrealized_conversion_cast %154 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.mlir.zero : !llvm.ptr
    %158 = llvm.getelementptr %157[%70] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %159 = llvm.ptrtoint %158 : !llvm.ptr to i64
    %160 = llvm.call @malloc(%159) : (i64) -> !llvm.ptr
    %161 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %162 = llvm.insertvalue %160, %161[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %163 = llvm.insertvalue %160, %162[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.insertvalue %164, %163[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.insertvalue %70, %165[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %167 = llvm.insertvalue %156, %166[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%34 : i64)
  ^bb7(%168: i64):  // 2 preds: ^bb6, ^bb8
    %169 = builtin.unrealized_conversion_cast %168 : i64 to index
    %170 = builtin.unrealized_conversion_cast %169 : index to i64
    %171 = llvm.icmp "slt" %168, %70 : i64
    llvm.cond_br %171, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %172 = llvm.extractvalue %167[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %173 = llvm.getelementptr %172[%170] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %36, %173 : i64, !llvm.ptr
    %174 = llvm.add %168, %31  : i64
    llvm.br ^bb7(%174 : i64)
  ^bb9:  // pred: ^bb7
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.alloca %175 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %167, %176 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %179 = llvm.insertvalue %177, %178[0] : !llvm.struct<(i64, ptr)> 
    %180 = llvm.insertvalue %176, %179[1] : !llvm.struct<(i64, ptr)> 
    %181 = builtin.unrealized_conversion_cast %180 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.mlir.zero : !llvm.ptr
    %184 = llvm.getelementptr %183[%74] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %185 = llvm.ptrtoint %184 : !llvm.ptr to i64
    %186 = llvm.call @malloc(%185) : (i64) -> !llvm.ptr
    %187 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %188 = llvm.insertvalue %186, %187[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %189 = llvm.insertvalue %186, %188[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.insertvalue %190, %189[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %192 = llvm.insertvalue %74, %191[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %193 = llvm.insertvalue %182, %192[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%34 : i64)
  ^bb10(%194: i64):  // 2 preds: ^bb9, ^bb11
    %195 = builtin.unrealized_conversion_cast %194 : i64 to index
    %196 = builtin.unrealized_conversion_cast %195 : index to i64
    %197 = llvm.icmp "slt" %194, %74 : i64
    llvm.cond_br %197, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %198 = llvm.extractvalue %193[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %199 = llvm.getelementptr %198[%196] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %36, %199 : i64, !llvm.ptr
    %200 = llvm.add %194, %31  : i64
    llvm.br ^bb10(%200 : i64)
  ^bb12:  // pred: ^bb10
    %201 = llvm.mlir.constant(1 : index) : i64
    %202 = llvm.alloca %201 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %193, %202 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %205 = llvm.insertvalue %203, %204[0] : !llvm.struct<(i64, ptr)> 
    %206 = llvm.insertvalue %202, %205[1] : !llvm.struct<(i64, ptr)> 
    %207 = builtin.unrealized_conversion_cast %206 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.zero : !llvm.ptr
    %210 = llvm.getelementptr %209[%78] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %211 = llvm.ptrtoint %210 : !llvm.ptr to i64
    %212 = llvm.call @malloc(%211) : (i64) -> !llvm.ptr
    %213 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %214 = llvm.insertvalue %212, %213[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %215 = llvm.insertvalue %212, %214[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %216 = llvm.mlir.constant(0 : index) : i64
    %217 = llvm.insertvalue %216, %215[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %218 = llvm.insertvalue %78, %217[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %219 = llvm.insertvalue %208, %218[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%34 : i64)
  ^bb13(%220: i64):  // 2 preds: ^bb12, ^bb14
    %221 = builtin.unrealized_conversion_cast %220 : i64 to index
    %222 = builtin.unrealized_conversion_cast %221 : index to i64
    %223 = llvm.icmp "slt" %220, %78 : i64
    llvm.cond_br %223, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %224 = llvm.extractvalue %219[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %225 = llvm.getelementptr %224[%222] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %36, %225 : i64, !llvm.ptr
    %226 = llvm.add %220, %31  : i64
    llvm.br ^bb13(%226 : i64)
  ^bb15:  // pred: ^bb13
    %227 = llvm.mlir.constant(1 : index) : i64
    %228 = llvm.alloca %227 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %219, %228 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %231 = llvm.insertvalue %229, %230[0] : !llvm.struct<(i64, ptr)> 
    %232 = llvm.insertvalue %228, %231[1] : !llvm.struct<(i64, ptr)> 
    %233 = builtin.unrealized_conversion_cast %232 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.mlir.zero : !llvm.ptr
    %236 = llvm.getelementptr %235[%82] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %237 = llvm.ptrtoint %236 : !llvm.ptr to i64
    %238 = llvm.call @malloc(%237) : (i64) -> !llvm.ptr
    %239 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %240 = llvm.insertvalue %238, %239[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %241 = llvm.insertvalue %238, %240[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.insertvalue %242, %241[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %244 = llvm.insertvalue %82, %243[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %245 = llvm.insertvalue %234, %244[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%34 : i64)
  ^bb16(%246: i64):  // 2 preds: ^bb15, ^bb17
    %247 = builtin.unrealized_conversion_cast %246 : i64 to index
    %248 = builtin.unrealized_conversion_cast %247 : index to i64
    %249 = llvm.icmp "slt" %246, %82 : i64
    llvm.cond_br %249, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %250 = llvm.extractvalue %245[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.getelementptr %250[%248] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %36, %251 : i64, !llvm.ptr
    %252 = llvm.add %246, %31  : i64
    llvm.br ^bb16(%252 : i64)
  ^bb18:  // pred: ^bb16
    %253 = llvm.mlir.constant(1 : index) : i64
    %254 = llvm.alloca %253 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %245, %254 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %257 = llvm.insertvalue %255, %256[0] : !llvm.struct<(i64, ptr)> 
    %258 = llvm.insertvalue %254, %257[1] : !llvm.struct<(i64, ptr)> 
    %259 = builtin.unrealized_conversion_cast %258 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %260 = llvm.mlir.constant(1 : index) : i64
    %261 = llvm.mlir.zero : !llvm.ptr
    %262 = llvm.getelementptr %261[%86] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %263 = llvm.ptrtoint %262 : !llvm.ptr to i64
    %264 = llvm.call @malloc(%263) : (i64) -> !llvm.ptr
    %265 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %266 = llvm.insertvalue %264, %265[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.insertvalue %264, %266[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %268 = llvm.mlir.constant(0 : index) : i64
    %269 = llvm.insertvalue %268, %267[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %270 = llvm.insertvalue %86, %269[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %271 = llvm.insertvalue %260, %270[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%34 : i64)
  ^bb19(%272: i64):  // 2 preds: ^bb18, ^bb20
    %273 = builtin.unrealized_conversion_cast %272 : i64 to index
    %274 = builtin.unrealized_conversion_cast %273 : index to i64
    %275 = llvm.icmp "slt" %272, %86 : i64
    llvm.cond_br %275, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %276 = llvm.extractvalue %271[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %277 = llvm.getelementptr %276[%274] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %36, %277 : i64, !llvm.ptr
    %278 = llvm.add %272, %31  : i64
    llvm.br ^bb19(%278 : i64)
  ^bb21:  // pred: ^bb19
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.alloca %279 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %271, %280 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %283 = llvm.insertvalue %281, %282[0] : !llvm.struct<(i64, ptr)> 
    %284 = llvm.insertvalue %280, %283[1] : !llvm.struct<(i64, ptr)> 
    %285 = builtin.unrealized_conversion_cast %284 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.mlir.zero : !llvm.ptr
    %288 = llvm.getelementptr %287[%90] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %289 = llvm.ptrtoint %288 : !llvm.ptr to i64
    %290 = llvm.call @malloc(%289) : (i64) -> !llvm.ptr
    %291 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %292 = llvm.insertvalue %290, %291[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %293 = llvm.insertvalue %290, %292[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %294 = llvm.mlir.constant(0 : index) : i64
    %295 = llvm.insertvalue %294, %293[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %296 = llvm.insertvalue %90, %295[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %297 = llvm.insertvalue %286, %296[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%34 : i64)
  ^bb22(%298: i64):  // 2 preds: ^bb21, ^bb23
    %299 = builtin.unrealized_conversion_cast %298 : i64 to index
    %300 = builtin.unrealized_conversion_cast %299 : index to i64
    %301 = llvm.icmp "slt" %298, %90 : i64
    llvm.cond_br %301, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %302 = llvm.extractvalue %297[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %303 = llvm.getelementptr %302[%300] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %36, %303 : i64, !llvm.ptr
    %304 = llvm.add %298, %31  : i64
    llvm.br ^bb22(%304 : i64)
  ^bb24:  // pred: ^bb22
    %305 = llvm.mlir.constant(1 : index) : i64
    %306 = llvm.alloca %305 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %297, %306 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %309 = llvm.insertvalue %307, %308[0] : !llvm.struct<(i64, ptr)> 
    %310 = llvm.insertvalue %306, %309[1] : !llvm.struct<(i64, ptr)> 
    %311 = builtin.unrealized_conversion_cast %310 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.mlir.zero : !llvm.ptr
    %314 = llvm.getelementptr %313[%94] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %315 = llvm.ptrtoint %314 : !llvm.ptr to i64
    %316 = llvm.call @malloc(%315) : (i64) -> !llvm.ptr
    %317 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %318 = llvm.insertvalue %316, %317[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %319 = llvm.insertvalue %316, %318[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %320 = llvm.mlir.constant(0 : index) : i64
    %321 = llvm.insertvalue %320, %319[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %322 = llvm.insertvalue %94, %321[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %323 = llvm.insertvalue %312, %322[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%34 : i64)
  ^bb25(%324: i64):  // 2 preds: ^bb24, ^bb26
    %325 = builtin.unrealized_conversion_cast %324 : i64 to index
    %326 = builtin.unrealized_conversion_cast %325 : index to i64
    %327 = llvm.icmp "slt" %324, %94 : i64
    llvm.cond_br %327, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %328 = llvm.extractvalue %323[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %329 = llvm.getelementptr %328[%326] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %329 : f64, !llvm.ptr
    %330 = llvm.add %324, %31  : i64
    llvm.br ^bb25(%330 : i64)
  ^bb27:  // pred: ^bb25
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.alloca %331 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %323, %332 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %335 = llvm.insertvalue %333, %334[0] : !llvm.struct<(i64, ptr)> 
    %336 = llvm.insertvalue %332, %335[1] : !llvm.struct<(i64, ptr)> 
    %337 = builtin.unrealized_conversion_cast %336 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    %338 = llvm.extractvalue %128[0] : !llvm.struct<(i64, ptr)> 
    %339 = llvm.extractvalue %128[1] : !llvm.struct<(i64, ptr)> 
    %340 = llvm.extractvalue %154[0] : !llvm.struct<(i64, ptr)> 
    %341 = llvm.extractvalue %154[1] : !llvm.struct<(i64, ptr)> 
    %342 = llvm.extractvalue %180[0] : !llvm.struct<(i64, ptr)> 
    %343 = llvm.extractvalue %180[1] : !llvm.struct<(i64, ptr)> 
    %344 = llvm.extractvalue %206[0] : !llvm.struct<(i64, ptr)> 
    %345 = llvm.extractvalue %206[1] : !llvm.struct<(i64, ptr)> 
    %346 = llvm.extractvalue %232[0] : !llvm.struct<(i64, ptr)> 
    %347 = llvm.extractvalue %232[1] : !llvm.struct<(i64, ptr)> 
    %348 = llvm.extractvalue %258[0] : !llvm.struct<(i64, ptr)> 
    %349 = llvm.extractvalue %258[1] : !llvm.struct<(i64, ptr)> 
    %350 = llvm.extractvalue %284[0] : !llvm.struct<(i64, ptr)> 
    %351 = llvm.extractvalue %284[1] : !llvm.struct<(i64, ptr)> 
    %352 = llvm.extractvalue %310[0] : !llvm.struct<(i64, ptr)> 
    %353 = llvm.extractvalue %310[1] : !llvm.struct<(i64, ptr)> 
    %354 = llvm.extractvalue %336[0] : !llvm.struct<(i64, ptr)> 
    %355 = llvm.extractvalue %336[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64(%30, %34, %37, %31, %37, %338, %339, %340, %341, %342, %343, %344, %345, %346, %347, %348, %349, %350, %351, %352, %353, %354, %355, %29) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %356 = llvm.mlir.constant(4 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    %358 = llvm.mul %356, %102  : i64
    %359 = llvm.mlir.zero : !llvm.ptr
    %360 = llvm.getelementptr %359[%358] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %361 = llvm.ptrtoint %360 : !llvm.ptr to i64
    %362 = llvm.mlir.constant(32 : index) : i64
    %363 = llvm.add %361, %362  : i64
    %364 = llvm.call @malloc(%363) : (i64) -> !llvm.ptr
    %365 = llvm.ptrtoint %364 : !llvm.ptr to i64
    %366 = llvm.mlir.constant(1 : index) : i64
    %367 = llvm.sub %362, %366  : i64
    %368 = llvm.add %365, %367  : i64
    %369 = llvm.urem %368, %362  : i64
    %370 = llvm.sub %368, %369  : i64
    %371 = llvm.inttoptr %370 : i64 to !llvm.ptr
    %372 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %373 = llvm.insertvalue %364, %372[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %374 = llvm.insertvalue %371, %373[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %375 = llvm.mlir.constant(0 : index) : i64
    %376 = llvm.insertvalue %375, %374[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %377 = llvm.insertvalue %102, %376[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %378 = llvm.insertvalue %356, %377[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %379 = llvm.insertvalue %356, %378[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %380 = llvm.insertvalue %357, %379[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %381 = llvm.mlir.constant(4 : index) : i64
    %382 = llvm.mlir.constant(1 : index) : i64
    %383 = llvm.mul %381, %98  : i64
    %384 = llvm.mlir.zero : !llvm.ptr
    %385 = llvm.getelementptr %384[%383] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %386 = llvm.ptrtoint %385 : !llvm.ptr to i64
    %387 = llvm.mlir.constant(32 : index) : i64
    %388 = llvm.add %386, %387  : i64
    %389 = llvm.call @malloc(%388) : (i64) -> !llvm.ptr
    %390 = llvm.ptrtoint %389 : !llvm.ptr to i64
    %391 = llvm.mlir.constant(1 : index) : i64
    %392 = llvm.sub %387, %391  : i64
    %393 = llvm.add %390, %392  : i64
    %394 = llvm.urem %393, %387  : i64
    %395 = llvm.sub %393, %394  : i64
    %396 = llvm.inttoptr %395 : i64 to !llvm.ptr
    %397 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %398 = llvm.insertvalue %389, %397[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %399 = llvm.insertvalue %396, %398[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %400 = llvm.mlir.constant(0 : index) : i64
    %401 = llvm.insertvalue %400, %399[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %402 = llvm.insertvalue %98, %401[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %403 = llvm.insertvalue %381, %402[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %404 = llvm.insertvalue %381, %403[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %405 = llvm.insertvalue %382, %404[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb28(%34 : i64)
  ^bb28(%406: i64):  // 2 preds: ^bb27, ^bb31
    %407 = builtin.unrealized_conversion_cast %406 : i64 to index
    %408 = builtin.unrealized_conversion_cast %407 : index to i64
    %409 = llvm.icmp "slt" %406, %102 : i64
    llvm.cond_br %409, ^bb29(%34 : i64), ^bb32(%34 : i64)
  ^bb29(%410: i64):  // 2 preds: ^bb28, ^bb30
    %411 = builtin.unrealized_conversion_cast %410 : i64 to index
    %412 = builtin.unrealized_conversion_cast %411 : index to i64
    %413 = llvm.icmp "slt" %410, %20 : i64
    llvm.cond_br %413, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %414 = llvm.extractvalue %380[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %415 = llvm.mlir.constant(4 : index) : i64
    %416 = llvm.mul %408, %415  : i64
    %417 = llvm.add %416, %412  : i64
    %418 = llvm.getelementptr %414[%417] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %0, %418 : f64, !llvm.ptr
    %419 = llvm.add %410, %31  : i64
    llvm.br ^bb29(%419 : i64)
  ^bb31:  // pred: ^bb29
    %420 = llvm.add %406, %31  : i64
    llvm.br ^bb28(%420 : i64)
  ^bb32(%421: i64):  // 2 preds: ^bb28, ^bb35
    %422 = builtin.unrealized_conversion_cast %421 : i64 to index
    %423 = builtin.unrealized_conversion_cast %422 : index to i64
    %424 = llvm.icmp "slt" %421, %98 : i64
    llvm.cond_br %424, ^bb33(%34 : i64), ^bb36
  ^bb33(%425: i64):  // 2 preds: ^bb32, ^bb34
    %426 = builtin.unrealized_conversion_cast %425 : i64 to index
    %427 = builtin.unrealized_conversion_cast %426 : index to i64
    %428 = llvm.icmp "slt" %425, %20 : i64
    llvm.cond_br %428, ^bb34, ^bb35
  ^bb34:  // pred: ^bb33
    %429 = llvm.extractvalue %405[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %430 = llvm.mlir.constant(4 : index) : i64
    %431 = llvm.mul %423, %430  : i64
    %432 = llvm.add %431, %427  : i64
    %433 = llvm.getelementptr %429[%432] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %433 : f64, !llvm.ptr
    %434 = llvm.add %425, %31  : i64
    llvm.br ^bb33(%434 : i64)
  ^bb35:  // pred: ^bb33
    %435 = llvm.add %421, %31  : i64
    llvm.br ^bb32(%435 : i64)
  ^bb36:  // pred: ^bb32
    %436 = llvm.extractvalue %115[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %437 = llvm.getelementptr %436[%36] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %438 = llvm.load %437 : !llvm.ptr -> i64
    %439 = builtin.unrealized_conversion_cast %438 : i64 to index
    llvm.br ^bb37(%34 : i64)
  ^bb37(%440: i64):  // 2 preds: ^bb36, ^bb44
    %441 = builtin.unrealized_conversion_cast %440 : i64 to index
    %442 = builtin.unrealized_conversion_cast %441 : index to i64
    %443 = llvm.icmp "slt" %440, %438 : i64
    llvm.cond_br %443, ^bb38, ^bb45
  ^bb38:  // pred: ^bb37
    %444 = llvm.add %440, %31  : i64
    %445 = builtin.unrealized_conversion_cast %444 : i64 to index
    %446 = builtin.unrealized_conversion_cast %445 : index to i64
    %447 = llvm.extractvalue %219[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %448 = llvm.getelementptr %447[%442] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %449 = llvm.load %448 : !llvm.ptr -> i64
    %450 = builtin.unrealized_conversion_cast %449 : i64 to index
    %451 = llvm.extractvalue %219[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %452 = llvm.getelementptr %451[%446] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %453 = llvm.load %452 : !llvm.ptr -> i64
    %454 = builtin.unrealized_conversion_cast %453 : i64 to index
    llvm.br ^bb39(%449 : i64)
  ^bb39(%455: i64):  // 2 preds: ^bb38, ^bb43
    %456 = builtin.unrealized_conversion_cast %455 : i64 to index
    %457 = builtin.unrealized_conversion_cast %456 : index to i64
    %458 = llvm.icmp "slt" %455, %453 : i64
    llvm.cond_br %458, ^bb40, ^bb44
  ^bb40:  // pred: ^bb39
    %459 = llvm.extractvalue %245[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %460 = llvm.getelementptr %459[%457] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %461 = llvm.load %460 : !llvm.ptr -> i64
    llvm.br ^bb41(%34 : i64)
  ^bb41(%462: i64):  // 2 preds: ^bb40, ^bb42
    %463 = builtin.unrealized_conversion_cast %462 : i64 to index
    %464 = builtin.unrealized_conversion_cast %463 : index to i64
    %465 = llvm.icmp "slt" %462, %20 : i64
    llvm.cond_br %465, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %466 = llvm.extractvalue %323[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %467 = llvm.getelementptr %466[%457] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %468 = llvm.load %467 : !llvm.ptr -> f64
    %469 = llvm.extractvalue %380[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %470 = llvm.mlir.constant(4 : index) : i64
    %471 = llvm.mul %461, %470  : i64
    %472 = llvm.add %471, %464  : i64
    %473 = llvm.getelementptr %469[%472] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %474 = llvm.load %473 : !llvm.ptr -> f64
    %475 = llvm.extractvalue %405[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %476 = llvm.mlir.constant(4 : index) : i64
    %477 = llvm.mul %442, %476  : i64
    %478 = llvm.add %477, %464  : i64
    %479 = llvm.getelementptr %475[%478] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %480 = llvm.load %479 : !llvm.ptr -> f64
    %481 = llvm.fmul %468, %474  : f64
    %482 = llvm.fadd %480, %481  : f64
    %483 = llvm.extractvalue %405[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %484 = llvm.mlir.constant(4 : index) : i64
    %485 = llvm.mul %442, %484  : i64
    %486 = llvm.add %485, %464  : i64
    %487 = llvm.getelementptr %483[%486] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %482, %487 : f64, !llvm.ptr
    %488 = llvm.add %462, %31  : i64
    llvm.br ^bb41(%488 : i64)
  ^bb43:  // pred: ^bb41
    %489 = llvm.add %455, %31  : i64
    llvm.br ^bb39(%489 : i64)
  ^bb44:  // pred: ^bb39
    llvm.br ^bb37(%444 : i64)
  ^bb45:  // pred: ^bb37
    %490 = llvm.mlir.constant(1 : index) : i64
    %491 = llvm.alloca %490 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %405, %491 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %492 = llvm.mlir.constant(2 : index) : i64
    %493 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %494 = llvm.insertvalue %492, %493[0] : !llvm.struct<(i64, ptr)> 
    %495 = llvm.insertvalue %491, %494[1] : !llvm.struct<(i64, ptr)> 
    %496 = builtin.unrealized_conversion_cast %495 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    %497 = llvm.extractvalue %495[0] : !llvm.struct<(i64, ptr)> 
    %498 = llvm.extractvalue %495[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%497, %498) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @read_input_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @read_input_sizes_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @comet_sort_index(i64, !llvm.ptr, i64, i64) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


// -----// IR Dump After ConvertIndexToLLVMPass (convert-index-to-llvm) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(1.700000e+00 : f64) : f64
    %1 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %2 = llvm.mlir.constant(10 : index) : i64
    %3 = builtin.unrealized_conversion_cast %2 : i64 to index
    %4 = llvm.mlir.constant(9 : index) : i64
    %5 = builtin.unrealized_conversion_cast %4 : i64 to index
    %6 = llvm.mlir.constant(8 : index) : i64
    %7 = builtin.unrealized_conversion_cast %6 : i64 to index
    %8 = llvm.mlir.constant(7 : index) : i64
    %9 = builtin.unrealized_conversion_cast %8 : i64 to index
    %10 = llvm.mlir.constant(6 : index) : i64
    %11 = builtin.unrealized_conversion_cast %10 : i64 to index
    %12 = llvm.mlir.constant(5 : index) : i64
    %13 = builtin.unrealized_conversion_cast %12 : i64 to index
    %14 = llvm.mlir.constant(4 : index) : i64
    %15 = builtin.unrealized_conversion_cast %14 : i64 to index
    %16 = llvm.mlir.constant(3 : index) : i64
    %17 = builtin.unrealized_conversion_cast %16 : i64 to index
    %18 = llvm.mlir.constant(2 : index) : i64
    %19 = builtin.unrealized_conversion_cast %18 : i64 to index
    %20 = llvm.mlir.constant(1 : i32) : i32
    %21 = llvm.mlir.constant(0 : i32) : i32
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = builtin.unrealized_conversion_cast %22 : i64 to index
    %24 = llvm.mlir.constant(0 : index) : i64
    %25 = builtin.unrealized_conversion_cast %24 : i64 to index
    %26 = llvm.mlir.constant(-1 : index) : i64
    %27 = llvm.mlir.constant(13 : index) : i64
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.mlir.zero : !llvm.ptr
    %30 = llvm.getelementptr %29[%27] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %31 = llvm.ptrtoint %30 : !llvm.ptr to i64
    %32 = llvm.call @malloc(%31) : (i64) -> !llvm.ptr
    %33 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %34 = llvm.insertvalue %32, %33[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.insertvalue %36, %35[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.insertvalue %27, %37[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.insertvalue %28, %38[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.alloca %40 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %39, %41 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %44 = llvm.insertvalue %42, %43[0] : !llvm.struct<(i64, ptr)> 
    %45 = llvm.insertvalue %41, %44[1] : !llvm.struct<(i64, ptr)> 
    %46 = builtin.unrealized_conversion_cast %45 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %47 = llvm.extractvalue %45[0] : !llvm.struct<(i64, ptr)> 
    %48 = llvm.extractvalue %45[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%21, %24, %26, %22, %26, %47, %48, %20) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %49 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.getelementptr %49[%24] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %51 = llvm.load %50 : !llvm.ptr -> i64
    %52 = builtin.unrealized_conversion_cast %51 : i64 to index
    %53 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.getelementptr %53[%22] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %55 = llvm.load %54 : !llvm.ptr -> i64
    %56 = builtin.unrealized_conversion_cast %55 : i64 to index
    %57 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.getelementptr %57[%18] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %59 = llvm.load %58 : !llvm.ptr -> i64
    %60 = builtin.unrealized_conversion_cast %59 : i64 to index
    %61 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.getelementptr %61[%16] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %63 = llvm.load %62 : !llvm.ptr -> i64
    %64 = builtin.unrealized_conversion_cast %63 : i64 to index
    %65 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.getelementptr %65[%14] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %67 = llvm.load %66 : !llvm.ptr -> i64
    %68 = builtin.unrealized_conversion_cast %67 : i64 to index
    %69 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.getelementptr %69[%12] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %71 = llvm.load %70 : !llvm.ptr -> i64
    %72 = builtin.unrealized_conversion_cast %71 : i64 to index
    %73 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %74 = llvm.getelementptr %73[%10] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %75 = llvm.load %74 : !llvm.ptr -> i64
    %76 = builtin.unrealized_conversion_cast %75 : i64 to index
    %77 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %78 = llvm.getelementptr %77[%8] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %79 = llvm.load %78 : !llvm.ptr -> i64
    %80 = builtin.unrealized_conversion_cast %79 : i64 to index
    %81 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %82 = llvm.getelementptr %81[%6] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %83 = llvm.load %82 : !llvm.ptr -> i64
    %84 = builtin.unrealized_conversion_cast %83 : i64 to index
    %85 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.getelementptr %85[%4] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %87 = llvm.load %86 : !llvm.ptr -> i64
    %88 = builtin.unrealized_conversion_cast %87 : i64 to index
    %89 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.getelementptr %89[%2] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %91 = llvm.load %90 : !llvm.ptr -> i64
    %92 = builtin.unrealized_conversion_cast %91 : i64 to index
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.mlir.zero : !llvm.ptr
    %95 = llvm.getelementptr %94[%51] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %96 = llvm.ptrtoint %95 : !llvm.ptr to i64
    %97 = llvm.call @malloc(%96) : (i64) -> !llvm.ptr
    %98 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %99 = llvm.insertvalue %97, %98[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %100 = llvm.insertvalue %97, %99[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %101 = llvm.mlir.constant(0 : index) : i64
    %102 = llvm.insertvalue %101, %100[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %103 = llvm.insertvalue %51, %102[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %104 = llvm.insertvalue %93, %103[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%24 : i64)
  ^bb1(%105: i64):  // 2 preds: ^bb0, ^bb2
    %106 = builtin.unrealized_conversion_cast %105 : i64 to index
    %107 = llvm.icmp "slt" %105, %51 : i64
    llvm.cond_br %107, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %108 = llvm.extractvalue %104[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %109 = llvm.getelementptr %108[%105] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %24, %109 : i64, !llvm.ptr
    %110 = llvm.add %105, %22  : i64
    llvm.br ^bb1(%110 : i64)
  ^bb3:  // pred: ^bb1
    %111 = llvm.mlir.constant(1 : index) : i64
    %112 = llvm.alloca %111 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %104, %112 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %113 = llvm.mlir.constant(1 : index) : i64
    %114 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %115 = llvm.insertvalue %113, %114[0] : !llvm.struct<(i64, ptr)> 
    %116 = llvm.insertvalue %112, %115[1] : !llvm.struct<(i64, ptr)> 
    %117 = builtin.unrealized_conversion_cast %116 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.zero : !llvm.ptr
    %120 = llvm.getelementptr %119[%55] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %121 = llvm.ptrtoint %120 : !llvm.ptr to i64
    %122 = llvm.call @malloc(%121) : (i64) -> !llvm.ptr
    %123 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %124 = llvm.insertvalue %122, %123[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %125 = llvm.insertvalue %122, %124[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %126 = llvm.mlir.constant(0 : index) : i64
    %127 = llvm.insertvalue %126, %125[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %128 = llvm.insertvalue %55, %127[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.insertvalue %118, %128[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%24 : i64)
  ^bb4(%130: i64):  // 2 preds: ^bb3, ^bb5
    %131 = builtin.unrealized_conversion_cast %130 : i64 to index
    %132 = llvm.icmp "slt" %130, %55 : i64
    llvm.cond_br %132, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %133 = llvm.extractvalue %129[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %134 = llvm.getelementptr %133[%130] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %24, %134 : i64, !llvm.ptr
    %135 = llvm.add %130, %22  : i64
    llvm.br ^bb4(%135 : i64)
  ^bb6:  // pred: ^bb4
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.alloca %136 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %129, %137 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %140 = llvm.insertvalue %138, %139[0] : !llvm.struct<(i64, ptr)> 
    %141 = llvm.insertvalue %137, %140[1] : !llvm.struct<(i64, ptr)> 
    %142 = builtin.unrealized_conversion_cast %141 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.zero : !llvm.ptr
    %145 = llvm.getelementptr %144[%59] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %146 = llvm.ptrtoint %145 : !llvm.ptr to i64
    %147 = llvm.call @malloc(%146) : (i64) -> !llvm.ptr
    %148 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %149 = llvm.insertvalue %147, %148[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %150 = llvm.insertvalue %147, %149[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %151 = llvm.mlir.constant(0 : index) : i64
    %152 = llvm.insertvalue %151, %150[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %153 = llvm.insertvalue %59, %152[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %154 = llvm.insertvalue %143, %153[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%24 : i64)
  ^bb7(%155: i64):  // 2 preds: ^bb6, ^bb8
    %156 = builtin.unrealized_conversion_cast %155 : i64 to index
    %157 = llvm.icmp "slt" %155, %59 : i64
    llvm.cond_br %157, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %158 = llvm.extractvalue %154[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %159 = llvm.getelementptr %158[%155] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %24, %159 : i64, !llvm.ptr
    %160 = llvm.add %155, %22  : i64
    llvm.br ^bb7(%160 : i64)
  ^bb9:  // pred: ^bb7
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.alloca %161 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %154, %162 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %165 = llvm.insertvalue %163, %164[0] : !llvm.struct<(i64, ptr)> 
    %166 = llvm.insertvalue %162, %165[1] : !llvm.struct<(i64, ptr)> 
    %167 = builtin.unrealized_conversion_cast %166 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.zero : !llvm.ptr
    %170 = llvm.getelementptr %169[%63] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %171 = llvm.ptrtoint %170 : !llvm.ptr to i64
    %172 = llvm.call @malloc(%171) : (i64) -> !llvm.ptr
    %173 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %174 = llvm.insertvalue %172, %173[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %175 = llvm.insertvalue %172, %174[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %176 = llvm.mlir.constant(0 : index) : i64
    %177 = llvm.insertvalue %176, %175[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %178 = llvm.insertvalue %63, %177[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %179 = llvm.insertvalue %168, %178[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%24 : i64)
  ^bb10(%180: i64):  // 2 preds: ^bb9, ^bb11
    %181 = builtin.unrealized_conversion_cast %180 : i64 to index
    %182 = llvm.icmp "slt" %180, %63 : i64
    llvm.cond_br %182, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %183 = llvm.extractvalue %179[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %184 = llvm.getelementptr %183[%180] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %24, %184 : i64, !llvm.ptr
    %185 = llvm.add %180, %22  : i64
    llvm.br ^bb10(%185 : i64)
  ^bb12:  // pred: ^bb10
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.alloca %186 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %179, %187 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %190 = llvm.insertvalue %188, %189[0] : !llvm.struct<(i64, ptr)> 
    %191 = llvm.insertvalue %187, %190[1] : !llvm.struct<(i64, ptr)> 
    %192 = builtin.unrealized_conversion_cast %191 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.mlir.zero : !llvm.ptr
    %195 = llvm.getelementptr %194[%67] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %196 = llvm.ptrtoint %195 : !llvm.ptr to i64
    %197 = llvm.call @malloc(%196) : (i64) -> !llvm.ptr
    %198 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %199 = llvm.insertvalue %197, %198[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.insertvalue %197, %199[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %201 = llvm.mlir.constant(0 : index) : i64
    %202 = llvm.insertvalue %201, %200[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %203 = llvm.insertvalue %67, %202[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %204 = llvm.insertvalue %193, %203[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%24 : i64)
  ^bb13(%205: i64):  // 2 preds: ^bb12, ^bb14
    %206 = builtin.unrealized_conversion_cast %205 : i64 to index
    %207 = llvm.icmp "slt" %205, %67 : i64
    llvm.cond_br %207, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %208 = llvm.extractvalue %204[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %209 = llvm.getelementptr %208[%205] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %24, %209 : i64, !llvm.ptr
    %210 = llvm.add %205, %22  : i64
    llvm.br ^bb13(%210 : i64)
  ^bb15:  // pred: ^bb13
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.alloca %211 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %204, %212 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %213 = llvm.mlir.constant(1 : index) : i64
    %214 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %215 = llvm.insertvalue %213, %214[0] : !llvm.struct<(i64, ptr)> 
    %216 = llvm.insertvalue %212, %215[1] : !llvm.struct<(i64, ptr)> 
    %217 = builtin.unrealized_conversion_cast %216 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %218 = llvm.mlir.constant(1 : index) : i64
    %219 = llvm.mlir.zero : !llvm.ptr
    %220 = llvm.getelementptr %219[%71] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %221 = llvm.ptrtoint %220 : !llvm.ptr to i64
    %222 = llvm.call @malloc(%221) : (i64) -> !llvm.ptr
    %223 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %224 = llvm.insertvalue %222, %223[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %225 = llvm.insertvalue %222, %224[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %226 = llvm.mlir.constant(0 : index) : i64
    %227 = llvm.insertvalue %226, %225[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %228 = llvm.insertvalue %71, %227[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %229 = llvm.insertvalue %218, %228[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%24 : i64)
  ^bb16(%230: i64):  // 2 preds: ^bb15, ^bb17
    %231 = builtin.unrealized_conversion_cast %230 : i64 to index
    %232 = llvm.icmp "slt" %230, %71 : i64
    llvm.cond_br %232, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %233 = llvm.extractvalue %229[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %234 = llvm.getelementptr %233[%230] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %24, %234 : i64, !llvm.ptr
    %235 = llvm.add %230, %22  : i64
    llvm.br ^bb16(%235 : i64)
  ^bb18:  // pred: ^bb16
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.alloca %236 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %229, %237 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %238 = llvm.mlir.constant(1 : index) : i64
    %239 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %240 = llvm.insertvalue %238, %239[0] : !llvm.struct<(i64, ptr)> 
    %241 = llvm.insertvalue %237, %240[1] : !llvm.struct<(i64, ptr)> 
    %242 = builtin.unrealized_conversion_cast %241 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.mlir.zero : !llvm.ptr
    %245 = llvm.getelementptr %244[%75] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %246 = llvm.ptrtoint %245 : !llvm.ptr to i64
    %247 = llvm.call @malloc(%246) : (i64) -> !llvm.ptr
    %248 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %249 = llvm.insertvalue %247, %248[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %250 = llvm.insertvalue %247, %249[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.mlir.constant(0 : index) : i64
    %252 = llvm.insertvalue %251, %250[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %253 = llvm.insertvalue %75, %252[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %254 = llvm.insertvalue %243, %253[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%24 : i64)
  ^bb19(%255: i64):  // 2 preds: ^bb18, ^bb20
    %256 = builtin.unrealized_conversion_cast %255 : i64 to index
    %257 = llvm.icmp "slt" %255, %75 : i64
    llvm.cond_br %257, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %258 = llvm.extractvalue %254[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %259 = llvm.getelementptr %258[%255] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %24, %259 : i64, !llvm.ptr
    %260 = llvm.add %255, %22  : i64
    llvm.br ^bb19(%260 : i64)
  ^bb21:  // pred: ^bb19
    %261 = llvm.mlir.constant(1 : index) : i64
    %262 = llvm.alloca %261 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %254, %262 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %263 = llvm.mlir.constant(1 : index) : i64
    %264 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %265 = llvm.insertvalue %263, %264[0] : !llvm.struct<(i64, ptr)> 
    %266 = llvm.insertvalue %262, %265[1] : !llvm.struct<(i64, ptr)> 
    %267 = builtin.unrealized_conversion_cast %266 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.mlir.zero : !llvm.ptr
    %270 = llvm.getelementptr %269[%79] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %271 = llvm.ptrtoint %270 : !llvm.ptr to i64
    %272 = llvm.call @malloc(%271) : (i64) -> !llvm.ptr
    %273 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %274 = llvm.insertvalue %272, %273[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %275 = llvm.insertvalue %272, %274[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %276 = llvm.mlir.constant(0 : index) : i64
    %277 = llvm.insertvalue %276, %275[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %278 = llvm.insertvalue %79, %277[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %279 = llvm.insertvalue %268, %278[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%24 : i64)
  ^bb22(%280: i64):  // 2 preds: ^bb21, ^bb23
    %281 = builtin.unrealized_conversion_cast %280 : i64 to index
    %282 = llvm.icmp "slt" %280, %79 : i64
    llvm.cond_br %282, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %283 = llvm.extractvalue %279[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %284 = llvm.getelementptr %283[%280] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %24, %284 : i64, !llvm.ptr
    %285 = llvm.add %280, %22  : i64
    llvm.br ^bb22(%285 : i64)
  ^bb24:  // pred: ^bb22
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.alloca %286 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %279, %287 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %288 = llvm.mlir.constant(1 : index) : i64
    %289 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %290 = llvm.insertvalue %288, %289[0] : !llvm.struct<(i64, ptr)> 
    %291 = llvm.insertvalue %287, %290[1] : !llvm.struct<(i64, ptr)> 
    %292 = builtin.unrealized_conversion_cast %291 : !llvm.struct<(i64, ptr)> to memref<*xindex>
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.mlir.zero : !llvm.ptr
    %295 = llvm.getelementptr %294[%83] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %296 = llvm.ptrtoint %295 : !llvm.ptr to i64
    %297 = llvm.call @malloc(%296) : (i64) -> !llvm.ptr
    %298 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %299 = llvm.insertvalue %297, %298[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %300 = llvm.insertvalue %297, %299[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %301 = llvm.mlir.constant(0 : index) : i64
    %302 = llvm.insertvalue %301, %300[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %303 = llvm.insertvalue %83, %302[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %304 = llvm.insertvalue %293, %303[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%24 : i64)
  ^bb25(%305: i64):  // 2 preds: ^bb24, ^bb26
    %306 = builtin.unrealized_conversion_cast %305 : i64 to index
    %307 = llvm.icmp "slt" %305, %83 : i64
    llvm.cond_br %307, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %308 = llvm.extractvalue %304[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %309 = llvm.getelementptr %308[%305] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %309 : f64, !llvm.ptr
    %310 = llvm.add %305, %22  : i64
    llvm.br ^bb25(%310 : i64)
  ^bb27:  // pred: ^bb25
    %311 = llvm.mlir.constant(1 : index) : i64
    %312 = llvm.alloca %311 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %304, %312 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %313 = llvm.mlir.constant(1 : index) : i64
    %314 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %315 = llvm.insertvalue %313, %314[0] : !llvm.struct<(i64, ptr)> 
    %316 = llvm.insertvalue %312, %315[1] : !llvm.struct<(i64, ptr)> 
    %317 = builtin.unrealized_conversion_cast %316 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    %318 = llvm.extractvalue %116[0] : !llvm.struct<(i64, ptr)> 
    %319 = llvm.extractvalue %116[1] : !llvm.struct<(i64, ptr)> 
    %320 = llvm.extractvalue %141[0] : !llvm.struct<(i64, ptr)> 
    %321 = llvm.extractvalue %141[1] : !llvm.struct<(i64, ptr)> 
    %322 = llvm.extractvalue %166[0] : !llvm.struct<(i64, ptr)> 
    %323 = llvm.extractvalue %166[1] : !llvm.struct<(i64, ptr)> 
    %324 = llvm.extractvalue %191[0] : !llvm.struct<(i64, ptr)> 
    %325 = llvm.extractvalue %191[1] : !llvm.struct<(i64, ptr)> 
    %326 = llvm.extractvalue %216[0] : !llvm.struct<(i64, ptr)> 
    %327 = llvm.extractvalue %216[1] : !llvm.struct<(i64, ptr)> 
    %328 = llvm.extractvalue %241[0] : !llvm.struct<(i64, ptr)> 
    %329 = llvm.extractvalue %241[1] : !llvm.struct<(i64, ptr)> 
    %330 = llvm.extractvalue %266[0] : !llvm.struct<(i64, ptr)> 
    %331 = llvm.extractvalue %266[1] : !llvm.struct<(i64, ptr)> 
    %332 = llvm.extractvalue %291[0] : !llvm.struct<(i64, ptr)> 
    %333 = llvm.extractvalue %291[1] : !llvm.struct<(i64, ptr)> 
    %334 = llvm.extractvalue %316[0] : !llvm.struct<(i64, ptr)> 
    %335 = llvm.extractvalue %316[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64(%21, %24, %26, %22, %26, %318, %319, %320, %321, %322, %323, %324, %325, %326, %327, %328, %329, %330, %331, %332, %333, %334, %335, %20) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %336 = llvm.mlir.constant(4 : index) : i64
    %337 = llvm.mlir.constant(1 : index) : i64
    %338 = llvm.mul %336, %91  : i64
    %339 = llvm.mlir.zero : !llvm.ptr
    %340 = llvm.getelementptr %339[%338] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %341 = llvm.ptrtoint %340 : !llvm.ptr to i64
    %342 = llvm.mlir.constant(32 : index) : i64
    %343 = llvm.add %341, %342  : i64
    %344 = llvm.call @malloc(%343) : (i64) -> !llvm.ptr
    %345 = llvm.ptrtoint %344 : !llvm.ptr to i64
    %346 = llvm.mlir.constant(1 : index) : i64
    %347 = llvm.sub %342, %346  : i64
    %348 = llvm.add %345, %347  : i64
    %349 = llvm.urem %348, %342  : i64
    %350 = llvm.sub %348, %349  : i64
    %351 = llvm.inttoptr %350 : i64 to !llvm.ptr
    %352 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %353 = llvm.insertvalue %344, %352[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %354 = llvm.insertvalue %351, %353[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %355 = llvm.mlir.constant(0 : index) : i64
    %356 = llvm.insertvalue %355, %354[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %357 = llvm.insertvalue %91, %356[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %358 = llvm.insertvalue %336, %357[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %359 = llvm.insertvalue %336, %358[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %360 = llvm.insertvalue %337, %359[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %361 = llvm.mlir.constant(4 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    %363 = llvm.mul %361, %87  : i64
    %364 = llvm.mlir.zero : !llvm.ptr
    %365 = llvm.getelementptr %364[%363] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %366 = llvm.ptrtoint %365 : !llvm.ptr to i64
    %367 = llvm.mlir.constant(32 : index) : i64
    %368 = llvm.add %366, %367  : i64
    %369 = llvm.call @malloc(%368) : (i64) -> !llvm.ptr
    %370 = llvm.ptrtoint %369 : !llvm.ptr to i64
    %371 = llvm.mlir.constant(1 : index) : i64
    %372 = llvm.sub %367, %371  : i64
    %373 = llvm.add %370, %372  : i64
    %374 = llvm.urem %373, %367  : i64
    %375 = llvm.sub %373, %374  : i64
    %376 = llvm.inttoptr %375 : i64 to !llvm.ptr
    %377 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %378 = llvm.insertvalue %369, %377[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %379 = llvm.insertvalue %376, %378[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %380 = llvm.mlir.constant(0 : index) : i64
    %381 = llvm.insertvalue %380, %379[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %382 = llvm.insertvalue %87, %381[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %383 = llvm.insertvalue %361, %382[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %384 = llvm.insertvalue %361, %383[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %385 = llvm.insertvalue %362, %384[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb28(%24 : i64)
  ^bb28(%386: i64):  // 2 preds: ^bb27, ^bb31
    %387 = builtin.unrealized_conversion_cast %386 : i64 to index
    %388 = llvm.icmp "slt" %386, %91 : i64
    llvm.cond_br %388, ^bb29(%24 : i64), ^bb32(%24 : i64)
  ^bb29(%389: i64):  // 2 preds: ^bb28, ^bb30
    %390 = builtin.unrealized_conversion_cast %389 : i64 to index
    %391 = llvm.icmp "slt" %389, %14 : i64
    llvm.cond_br %391, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %392 = llvm.extractvalue %360[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %393 = llvm.mlir.constant(4 : index) : i64
    %394 = llvm.mul %386, %393  : i64
    %395 = llvm.add %394, %389  : i64
    %396 = llvm.getelementptr %392[%395] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %0, %396 : f64, !llvm.ptr
    %397 = llvm.add %389, %22  : i64
    llvm.br ^bb29(%397 : i64)
  ^bb31:  // pred: ^bb29
    %398 = llvm.add %386, %22  : i64
    llvm.br ^bb28(%398 : i64)
  ^bb32(%399: i64):  // 2 preds: ^bb28, ^bb35
    %400 = builtin.unrealized_conversion_cast %399 : i64 to index
    %401 = llvm.icmp "slt" %399, %87 : i64
    llvm.cond_br %401, ^bb33(%24 : i64), ^bb36
  ^bb33(%402: i64):  // 2 preds: ^bb32, ^bb34
    %403 = builtin.unrealized_conversion_cast %402 : i64 to index
    %404 = llvm.icmp "slt" %402, %14 : i64
    llvm.cond_br %404, ^bb34, ^bb35
  ^bb34:  // pred: ^bb33
    %405 = llvm.extractvalue %385[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %406 = llvm.mlir.constant(4 : index) : i64
    %407 = llvm.mul %399, %406  : i64
    %408 = llvm.add %407, %402  : i64
    %409 = llvm.getelementptr %405[%408] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %409 : f64, !llvm.ptr
    %410 = llvm.add %402, %22  : i64
    llvm.br ^bb33(%410 : i64)
  ^bb35:  // pred: ^bb33
    %411 = llvm.add %399, %22  : i64
    llvm.br ^bb32(%411 : i64)
  ^bb36:  // pred: ^bb32
    %412 = llvm.extractvalue %104[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %413 = llvm.getelementptr %412[%24] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %414 = llvm.load %413 : !llvm.ptr -> i64
    %415 = builtin.unrealized_conversion_cast %414 : i64 to index
    llvm.br ^bb37(%24 : i64)
  ^bb37(%416: i64):  // 2 preds: ^bb36, ^bb44
    %417 = builtin.unrealized_conversion_cast %416 : i64 to index
    %418 = llvm.icmp "slt" %416, %414 : i64
    llvm.cond_br %418, ^bb38, ^bb45
  ^bb38:  // pred: ^bb37
    %419 = llvm.add %416, %22  : i64
    %420 = builtin.unrealized_conversion_cast %419 : i64 to index
    %421 = llvm.extractvalue %204[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %422 = llvm.getelementptr %421[%416] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %423 = llvm.load %422 : !llvm.ptr -> i64
    %424 = builtin.unrealized_conversion_cast %423 : i64 to index
    %425 = llvm.extractvalue %204[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %426 = llvm.getelementptr %425[%419] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %427 = llvm.load %426 : !llvm.ptr -> i64
    %428 = builtin.unrealized_conversion_cast %427 : i64 to index
    llvm.br ^bb39(%423 : i64)
  ^bb39(%429: i64):  // 2 preds: ^bb38, ^bb43
    %430 = builtin.unrealized_conversion_cast %429 : i64 to index
    %431 = llvm.icmp "slt" %429, %427 : i64
    llvm.cond_br %431, ^bb40, ^bb44
  ^bb40:  // pred: ^bb39
    %432 = llvm.extractvalue %229[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %433 = llvm.getelementptr %432[%429] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %434 = llvm.load %433 : !llvm.ptr -> i64
    llvm.br ^bb41(%24 : i64)
  ^bb41(%435: i64):  // 2 preds: ^bb40, ^bb42
    %436 = builtin.unrealized_conversion_cast %435 : i64 to index
    %437 = llvm.icmp "slt" %435, %14 : i64
    llvm.cond_br %437, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %438 = llvm.extractvalue %304[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %439 = llvm.getelementptr %438[%429] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %440 = llvm.load %439 : !llvm.ptr -> f64
    %441 = llvm.extractvalue %360[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %442 = llvm.mlir.constant(4 : index) : i64
    %443 = llvm.mul %434, %442  : i64
    %444 = llvm.add %443, %435  : i64
    %445 = llvm.getelementptr %441[%444] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %446 = llvm.load %445 : !llvm.ptr -> f64
    %447 = llvm.extractvalue %385[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %448 = llvm.mlir.constant(4 : index) : i64
    %449 = llvm.mul %416, %448  : i64
    %450 = llvm.add %449, %435  : i64
    %451 = llvm.getelementptr %447[%450] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %452 = llvm.load %451 : !llvm.ptr -> f64
    %453 = llvm.fmul %440, %446  : f64
    %454 = llvm.fadd %452, %453  : f64
    %455 = llvm.extractvalue %385[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %456 = llvm.mlir.constant(4 : index) : i64
    %457 = llvm.mul %416, %456  : i64
    %458 = llvm.add %457, %435  : i64
    %459 = llvm.getelementptr %455[%458] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %454, %459 : f64, !llvm.ptr
    %460 = llvm.add %435, %22  : i64
    llvm.br ^bb41(%460 : i64)
  ^bb43:  // pred: ^bb41
    %461 = llvm.add %429, %22  : i64
    llvm.br ^bb39(%461 : i64)
  ^bb44:  // pred: ^bb39
    llvm.br ^bb37(%419 : i64)
  ^bb45:  // pred: ^bb37
    %462 = llvm.mlir.constant(1 : index) : i64
    %463 = llvm.alloca %462 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %385, %463 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %464 = llvm.mlir.constant(2 : index) : i64
    %465 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %466 = llvm.insertvalue %464, %465[0] : !llvm.struct<(i64, ptr)> 
    %467 = llvm.insertvalue %463, %466[1] : !llvm.struct<(i64, ptr)> 
    %468 = builtin.unrealized_conversion_cast %467 : !llvm.struct<(i64, ptr)> to memref<*xf64>
    %469 = llvm.extractvalue %467[0] : !llvm.struct<(i64, ptr)> 
    %470 = llvm.extractvalue %467[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%469, %470) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @read_input_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @read_input_sizes_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @comet_sort_index(i64, !llvm.ptr, i64, i64) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


// -----// IR Dump After ReconcileUnrealizedCasts (reconcile-unrealized-casts) //----- //
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(1.700000e+00 : f64) : f64
    %1 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %2 = llvm.mlir.constant(10 : index) : i64
    %3 = llvm.mlir.constant(9 : index) : i64
    %4 = llvm.mlir.constant(8 : index) : i64
    %5 = llvm.mlir.constant(7 : index) : i64
    %6 = llvm.mlir.constant(6 : index) : i64
    %7 = llvm.mlir.constant(5 : index) : i64
    %8 = llvm.mlir.constant(4 : index) : i64
    %9 = llvm.mlir.constant(3 : index) : i64
    %10 = llvm.mlir.constant(2 : index) : i64
    %11 = llvm.mlir.constant(1 : i32) : i32
    %12 = llvm.mlir.constant(0 : i32) : i32
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(-1 : index) : i64
    %16 = llvm.mlir.constant(13 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.zero : !llvm.ptr
    %19 = llvm.getelementptr %18[13] : (!llvm.ptr) -> !llvm.ptr, i64
    %20 = llvm.ptrtoint %19 : !llvm.ptr to i64
    %21 = llvm.call @malloc(%20) : (i64) -> !llvm.ptr
    %22 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %23 = llvm.insertvalue %21, %22[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.insertvalue %21, %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.insertvalue %16, %26[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.insertvalue %17, %27[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.alloca %29 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %28, %30 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %33 = llvm.insertvalue %31, %32[0] : !llvm.struct<(i64, ptr)> 
    %34 = llvm.insertvalue %30, %33[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%12, %14, %15, %13, %15, %31, %30, %11) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %35 = llvm.load %21 : !llvm.ptr -> i64
    %36 = llvm.getelementptr %21[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %37 = llvm.load %36 : !llvm.ptr -> i64
    %38 = llvm.getelementptr %21[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %39 = llvm.load %38 : !llvm.ptr -> i64
    %40 = llvm.getelementptr %21[3] : (!llvm.ptr) -> !llvm.ptr, i64
    %41 = llvm.load %40 : !llvm.ptr -> i64
    %42 = llvm.getelementptr %21[4] : (!llvm.ptr) -> !llvm.ptr, i64
    %43 = llvm.load %42 : !llvm.ptr -> i64
    %44 = llvm.getelementptr %21[5] : (!llvm.ptr) -> !llvm.ptr, i64
    %45 = llvm.load %44 : !llvm.ptr -> i64
    %46 = llvm.getelementptr %21[6] : (!llvm.ptr) -> !llvm.ptr, i64
    %47 = llvm.load %46 : !llvm.ptr -> i64
    %48 = llvm.getelementptr %21[7] : (!llvm.ptr) -> !llvm.ptr, i64
    %49 = llvm.load %48 : !llvm.ptr -> i64
    %50 = llvm.getelementptr %21[8] : (!llvm.ptr) -> !llvm.ptr, i64
    %51 = llvm.load %50 : !llvm.ptr -> i64
    %52 = llvm.getelementptr %21[9] : (!llvm.ptr) -> !llvm.ptr, i64
    %53 = llvm.load %52 : !llvm.ptr -> i64
    %54 = llvm.getelementptr %21[10] : (!llvm.ptr) -> !llvm.ptr, i64
    %55 = llvm.load %54 : !llvm.ptr -> i64
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.mlir.zero : !llvm.ptr
    %58 = llvm.getelementptr %57[%35] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %59 = llvm.ptrtoint %58 : !llvm.ptr to i64
    %60 = llvm.call @malloc(%59) : (i64) -> !llvm.ptr
    %61 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %62 = llvm.insertvalue %60, %61[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.insertvalue %60, %62[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.insertvalue %64, %63[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.insertvalue %35, %65[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.insertvalue %56, %66[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%14 : i64)
  ^bb1(%68: i64):  // 2 preds: ^bb0, ^bb2
    %69 = llvm.icmp "slt" %68, %35 : i64
    llvm.cond_br %69, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %70 = llvm.getelementptr %60[%68] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %14, %70 : i64, !llvm.ptr
    %71 = llvm.add %68, %13  : i64
    llvm.br ^bb1(%71 : i64)
  ^bb3:  // pred: ^bb1
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.alloca %72 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %67, %73 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %76 = llvm.insertvalue %74, %75[0] : !llvm.struct<(i64, ptr)> 
    %77 = llvm.insertvalue %73, %76[1] : !llvm.struct<(i64, ptr)> 
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.mlir.zero : !llvm.ptr
    %80 = llvm.getelementptr %79[%37] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %81 = llvm.ptrtoint %80 : !llvm.ptr to i64
    %82 = llvm.call @malloc(%81) : (i64) -> !llvm.ptr
    %83 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %84 = llvm.insertvalue %82, %83[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %85 = llvm.insertvalue %82, %84[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.insertvalue %86, %85[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.insertvalue %37, %87[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.insertvalue %78, %88[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%14 : i64)
  ^bb4(%90: i64):  // 2 preds: ^bb3, ^bb5
    %91 = llvm.icmp "slt" %90, %37 : i64
    llvm.cond_br %91, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %92 = llvm.getelementptr %82[%90] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %14, %92 : i64, !llvm.ptr
    %93 = llvm.add %90, %13  : i64
    llvm.br ^bb4(%93 : i64)
  ^bb6:  // pred: ^bb4
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.alloca %94 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %89, %95 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %98 = llvm.insertvalue %96, %97[0] : !llvm.struct<(i64, ptr)> 
    %99 = llvm.insertvalue %95, %98[1] : !llvm.struct<(i64, ptr)> 
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.mlir.zero : !llvm.ptr
    %102 = llvm.getelementptr %101[%39] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %103 = llvm.ptrtoint %102 : !llvm.ptr to i64
    %104 = llvm.call @malloc(%103) : (i64) -> !llvm.ptr
    %105 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %106 = llvm.insertvalue %104, %105[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %107 = llvm.insertvalue %104, %106[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %108 = llvm.mlir.constant(0 : index) : i64
    %109 = llvm.insertvalue %108, %107[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.insertvalue %39, %109[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.insertvalue %100, %110[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%14 : i64)
  ^bb7(%112: i64):  // 2 preds: ^bb6, ^bb8
    %113 = llvm.icmp "slt" %112, %39 : i64
    llvm.cond_br %113, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %114 = llvm.getelementptr %104[%112] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %14, %114 : i64, !llvm.ptr
    %115 = llvm.add %112, %13  : i64
    llvm.br ^bb7(%115 : i64)
  ^bb9:  // pred: ^bb7
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.alloca %116 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %111, %117 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %120 = llvm.insertvalue %118, %119[0] : !llvm.struct<(i64, ptr)> 
    %121 = llvm.insertvalue %117, %120[1] : !llvm.struct<(i64, ptr)> 
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.mlir.zero : !llvm.ptr
    %124 = llvm.getelementptr %123[%41] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %125 = llvm.ptrtoint %124 : !llvm.ptr to i64
    %126 = llvm.call @malloc(%125) : (i64) -> !llvm.ptr
    %127 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %128 = llvm.insertvalue %126, %127[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.insertvalue %126, %128[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %130 = llvm.mlir.constant(0 : index) : i64
    %131 = llvm.insertvalue %130, %129[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.insertvalue %41, %131[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.insertvalue %122, %132[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%14 : i64)
  ^bb10(%134: i64):  // 2 preds: ^bb9, ^bb11
    %135 = llvm.icmp "slt" %134, %41 : i64
    llvm.cond_br %135, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %136 = llvm.getelementptr %126[%134] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %14, %136 : i64, !llvm.ptr
    %137 = llvm.add %134, %13  : i64
    llvm.br ^bb10(%137 : i64)
  ^bb12:  // pred: ^bb10
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.alloca %138 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %133, %139 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %142 = llvm.insertvalue %140, %141[0] : !llvm.struct<(i64, ptr)> 
    %143 = llvm.insertvalue %139, %142[1] : !llvm.struct<(i64, ptr)> 
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.mlir.zero : !llvm.ptr
    %146 = llvm.getelementptr %145[%43] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %147 = llvm.ptrtoint %146 : !llvm.ptr to i64
    %148 = llvm.call @malloc(%147) : (i64) -> !llvm.ptr
    %149 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %150 = llvm.insertvalue %148, %149[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %151 = llvm.insertvalue %148, %150[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.insertvalue %152, %151[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %154 = llvm.insertvalue %43, %153[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %155 = llvm.insertvalue %144, %154[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%14 : i64)
  ^bb13(%156: i64):  // 2 preds: ^bb12, ^bb14
    %157 = llvm.icmp "slt" %156, %43 : i64
    llvm.cond_br %157, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %158 = llvm.getelementptr %148[%156] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %14, %158 : i64, !llvm.ptr
    %159 = llvm.add %156, %13  : i64
    llvm.br ^bb13(%159 : i64)
  ^bb15:  // pred: ^bb13
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.alloca %160 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %155, %161 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %164 = llvm.insertvalue %162, %163[0] : !llvm.struct<(i64, ptr)> 
    %165 = llvm.insertvalue %161, %164[1] : !llvm.struct<(i64, ptr)> 
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.mlir.zero : !llvm.ptr
    %168 = llvm.getelementptr %167[%45] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %169 = llvm.ptrtoint %168 : !llvm.ptr to i64
    %170 = llvm.call @malloc(%169) : (i64) -> !llvm.ptr
    %171 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %172 = llvm.insertvalue %170, %171[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %173 = llvm.insertvalue %170, %172[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %174 = llvm.mlir.constant(0 : index) : i64
    %175 = llvm.insertvalue %174, %173[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %176 = llvm.insertvalue %45, %175[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %177 = llvm.insertvalue %166, %176[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%14 : i64)
  ^bb16(%178: i64):  // 2 preds: ^bb15, ^bb17
    %179 = llvm.icmp "slt" %178, %45 : i64
    llvm.cond_br %179, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %180 = llvm.getelementptr %170[%178] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %14, %180 : i64, !llvm.ptr
    %181 = llvm.add %178, %13  : i64
    llvm.br ^bb16(%181 : i64)
  ^bb18:  // pred: ^bb16
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.alloca %182 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %177, %183 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %186 = llvm.insertvalue %184, %185[0] : !llvm.struct<(i64, ptr)> 
    %187 = llvm.insertvalue %183, %186[1] : !llvm.struct<(i64, ptr)> 
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.zero : !llvm.ptr
    %190 = llvm.getelementptr %189[%47] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %191 = llvm.ptrtoint %190 : !llvm.ptr to i64
    %192 = llvm.call @malloc(%191) : (i64) -> !llvm.ptr
    %193 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %194 = llvm.insertvalue %192, %193[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %195 = llvm.insertvalue %192, %194[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %196 = llvm.mlir.constant(0 : index) : i64
    %197 = llvm.insertvalue %196, %195[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %198 = llvm.insertvalue %47, %197[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %199 = llvm.insertvalue %188, %198[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%14 : i64)
  ^bb19(%200: i64):  // 2 preds: ^bb18, ^bb20
    %201 = llvm.icmp "slt" %200, %47 : i64
    llvm.cond_br %201, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %202 = llvm.getelementptr %192[%200] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %14, %202 : i64, !llvm.ptr
    %203 = llvm.add %200, %13  : i64
    llvm.br ^bb19(%203 : i64)
  ^bb21:  // pred: ^bb19
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.alloca %204 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %199, %205 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %208 = llvm.insertvalue %206, %207[0] : !llvm.struct<(i64, ptr)> 
    %209 = llvm.insertvalue %205, %208[1] : !llvm.struct<(i64, ptr)> 
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.zero : !llvm.ptr
    %212 = llvm.getelementptr %211[%49] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %213 = llvm.ptrtoint %212 : !llvm.ptr to i64
    %214 = llvm.call @malloc(%213) : (i64) -> !llvm.ptr
    %215 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %216 = llvm.insertvalue %214, %215[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %217 = llvm.insertvalue %214, %216[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %218 = llvm.mlir.constant(0 : index) : i64
    %219 = llvm.insertvalue %218, %217[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %220 = llvm.insertvalue %49, %219[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %221 = llvm.insertvalue %210, %220[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%14 : i64)
  ^bb22(%222: i64):  // 2 preds: ^bb21, ^bb23
    %223 = llvm.icmp "slt" %222, %49 : i64
    llvm.cond_br %223, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %224 = llvm.getelementptr %214[%222] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %14, %224 : i64, !llvm.ptr
    %225 = llvm.add %222, %13  : i64
    llvm.br ^bb22(%225 : i64)
  ^bb24:  // pred: ^bb22
    %226 = llvm.mlir.constant(1 : index) : i64
    %227 = llvm.alloca %226 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %221, %227 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %228 = llvm.mlir.constant(1 : index) : i64
    %229 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %230 = llvm.insertvalue %228, %229[0] : !llvm.struct<(i64, ptr)> 
    %231 = llvm.insertvalue %227, %230[1] : !llvm.struct<(i64, ptr)> 
    %232 = llvm.mlir.constant(1 : index) : i64
    %233 = llvm.mlir.zero : !llvm.ptr
    %234 = llvm.getelementptr %233[%51] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %235 = llvm.ptrtoint %234 : !llvm.ptr to i64
    %236 = llvm.call @malloc(%235) : (i64) -> !llvm.ptr
    %237 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %238 = llvm.insertvalue %236, %237[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %239 = llvm.insertvalue %236, %238[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %240 = llvm.mlir.constant(0 : index) : i64
    %241 = llvm.insertvalue %240, %239[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %242 = llvm.insertvalue %51, %241[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %243 = llvm.insertvalue %232, %242[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%14 : i64)
  ^bb25(%244: i64):  // 2 preds: ^bb24, ^bb26
    %245 = llvm.icmp "slt" %244, %51 : i64
    llvm.cond_br %245, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %246 = llvm.getelementptr %236[%244] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %246 : f64, !llvm.ptr
    %247 = llvm.add %244, %13  : i64
    llvm.br ^bb25(%247 : i64)
  ^bb27:  // pred: ^bb25
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.alloca %248 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %243, %249 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %252 = llvm.insertvalue %250, %251[0] : !llvm.struct<(i64, ptr)> 
    %253 = llvm.insertvalue %249, %252[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64(%12, %14, %15, %13, %15, %74, %73, %96, %95, %118, %117, %140, %139, %162, %161, %184, %183, %206, %205, %228, %227, %250, %249, %11) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %254 = llvm.mlir.constant(4 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mul %55, %254  : i64
    %257 = llvm.mlir.zero : !llvm.ptr
    %258 = llvm.getelementptr %257[%256] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %259 = llvm.ptrtoint %258 : !llvm.ptr to i64
    %260 = llvm.mlir.constant(32 : index) : i64
    %261 = llvm.add %259, %260  : i64
    %262 = llvm.call @malloc(%261) : (i64) -> !llvm.ptr
    %263 = llvm.ptrtoint %262 : !llvm.ptr to i64
    %264 = llvm.mlir.constant(1 : index) : i64
    %265 = llvm.sub %260, %264  : i64
    %266 = llvm.add %263, %265  : i64
    %267 = llvm.urem %266, %260  : i64
    %268 = llvm.sub %266, %267  : i64
    %269 = llvm.inttoptr %268 : i64 to !llvm.ptr
    %270 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %271 = llvm.insertvalue %262, %270[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %272 = llvm.insertvalue %269, %271[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %273 = llvm.mlir.constant(0 : index) : i64
    %274 = llvm.insertvalue %273, %272[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %275 = llvm.insertvalue %55, %274[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %276 = llvm.insertvalue %254, %275[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %277 = llvm.insertvalue %254, %276[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %278 = llvm.insertvalue %255, %277[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %279 = llvm.mlir.constant(4 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.mul %53, %279  : i64
    %282 = llvm.mlir.zero : !llvm.ptr
    %283 = llvm.getelementptr %282[%281] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %284 = llvm.ptrtoint %283 : !llvm.ptr to i64
    %285 = llvm.mlir.constant(32 : index) : i64
    %286 = llvm.add %284, %285  : i64
    %287 = llvm.call @malloc(%286) : (i64) -> !llvm.ptr
    %288 = llvm.ptrtoint %287 : !llvm.ptr to i64
    %289 = llvm.mlir.constant(1 : index) : i64
    %290 = llvm.sub %285, %289  : i64
    %291 = llvm.add %288, %290  : i64
    %292 = llvm.urem %291, %285  : i64
    %293 = llvm.sub %291, %292  : i64
    %294 = llvm.inttoptr %293 : i64 to !llvm.ptr
    %295 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %296 = llvm.insertvalue %287, %295[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %297 = llvm.insertvalue %294, %296[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %298 = llvm.mlir.constant(0 : index) : i64
    %299 = llvm.insertvalue %298, %297[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %300 = llvm.insertvalue %53, %299[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %301 = llvm.insertvalue %279, %300[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %302 = llvm.insertvalue %279, %301[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %303 = llvm.insertvalue %280, %302[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb28(%14 : i64)
  ^bb28(%304: i64):  // 2 preds: ^bb27, ^bb31
    %305 = llvm.icmp "slt" %304, %55 : i64
    llvm.cond_br %305, ^bb29(%14 : i64), ^bb32(%14 : i64)
  ^bb29(%306: i64):  // 2 preds: ^bb28, ^bb30
    %307 = llvm.icmp "slt" %306, %8 : i64
    llvm.cond_br %307, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %308 = llvm.mlir.constant(4 : index) : i64
    %309 = llvm.mul %304, %308  : i64
    %310 = llvm.add %309, %306  : i64
    %311 = llvm.getelementptr %269[%310] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %0, %311 : f64, !llvm.ptr
    %312 = llvm.add %306, %13  : i64
    llvm.br ^bb29(%312 : i64)
  ^bb31:  // pred: ^bb29
    %313 = llvm.add %304, %13  : i64
    llvm.br ^bb28(%313 : i64)
  ^bb32(%314: i64):  // 2 preds: ^bb28, ^bb35
    %315 = llvm.icmp "slt" %314, %53 : i64
    llvm.cond_br %315, ^bb33(%14 : i64), ^bb36
  ^bb33(%316: i64):  // 2 preds: ^bb32, ^bb34
    %317 = llvm.icmp "slt" %316, %8 : i64
    llvm.cond_br %317, ^bb34, ^bb35
  ^bb34:  // pred: ^bb33
    %318 = llvm.mlir.constant(4 : index) : i64
    %319 = llvm.mul %314, %318  : i64
    %320 = llvm.add %319, %316  : i64
    %321 = llvm.getelementptr %294[%320] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %321 : f64, !llvm.ptr
    %322 = llvm.add %316, %13  : i64
    llvm.br ^bb33(%322 : i64)
  ^bb35:  // pred: ^bb33
    %323 = llvm.add %314, %13  : i64
    llvm.br ^bb32(%323 : i64)
  ^bb36:  // pred: ^bb32
    %324 = llvm.load %60 : !llvm.ptr -> i64
    llvm.br ^bb37(%14 : i64)
  ^bb37(%325: i64):  // 2 preds: ^bb36, ^bb44
    %326 = llvm.icmp "slt" %325, %324 : i64
    llvm.cond_br %326, ^bb38, ^bb45
  ^bb38:  // pred: ^bb37
    %327 = llvm.add %325, %13  : i64
    %328 = llvm.getelementptr %148[%325] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %329 = llvm.load %328 : !llvm.ptr -> i64
    %330 = llvm.getelementptr %148[%327] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %331 = llvm.load %330 : !llvm.ptr -> i64
    llvm.br ^bb39(%329 : i64)
  ^bb39(%332: i64):  // 2 preds: ^bb38, ^bb43
    %333 = llvm.icmp "slt" %332, %331 : i64
    llvm.cond_br %333, ^bb40, ^bb44
  ^bb40:  // pred: ^bb39
    %334 = llvm.getelementptr %170[%332] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %335 = llvm.load %334 : !llvm.ptr -> i64
    llvm.br ^bb41(%14 : i64)
  ^bb41(%336: i64):  // 2 preds: ^bb40, ^bb42
    %337 = llvm.icmp "slt" %336, %8 : i64
    llvm.cond_br %337, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %338 = llvm.getelementptr %236[%332] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %339 = llvm.load %338 : !llvm.ptr -> f64
    %340 = llvm.mlir.constant(4 : index) : i64
    %341 = llvm.mul %335, %340  : i64
    %342 = llvm.add %341, %336  : i64
    %343 = llvm.getelementptr %269[%342] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %344 = llvm.load %343 : !llvm.ptr -> f64
    %345 = llvm.mlir.constant(4 : index) : i64
    %346 = llvm.mul %325, %345  : i64
    %347 = llvm.add %346, %336  : i64
    %348 = llvm.getelementptr %294[%347] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %349 = llvm.load %348 : !llvm.ptr -> f64
    %350 = llvm.fmul %339, %344  : f64
    %351 = llvm.fadd %349, %350  : f64
    %352 = llvm.mlir.constant(4 : index) : i64
    %353 = llvm.mul %325, %352  : i64
    %354 = llvm.add %353, %336  : i64
    %355 = llvm.getelementptr %294[%354] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %351, %355 : f64, !llvm.ptr
    %356 = llvm.add %336, %13  : i64
    llvm.br ^bb41(%356 : i64)
  ^bb43:  // pred: ^bb41
    %357 = llvm.add %332, %13  : i64
    llvm.br ^bb39(%357 : i64)
  ^bb44:  // pred: ^bb39
    llvm.br ^bb37(%327 : i64)
  ^bb45:  // pred: ^bb37
    %358 = llvm.mlir.constant(1 : index) : i64
    %359 = llvm.alloca %358 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %303, %359 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %360 = llvm.mlir.constant(2 : index) : i64
    %361 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %362 = llvm.insertvalue %360, %361[0] : !llvm.struct<(i64, ptr)> 
    %363 = llvm.insertvalue %359, %362[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%360, %359) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @read_input_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @read_input_sizes_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @comet_sort_index(i64, !llvm.ptr, i64, i64) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}


module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(1.700000e+00 : f64) : f64
    %1 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %2 = llvm.mlir.constant(10 : index) : i64
    %3 = llvm.mlir.constant(9 : index) : i64
    %4 = llvm.mlir.constant(8 : index) : i64
    %5 = llvm.mlir.constant(7 : index) : i64
    %6 = llvm.mlir.constant(6 : index) : i64
    %7 = llvm.mlir.constant(5 : index) : i64
    %8 = llvm.mlir.constant(4 : index) : i64
    %9 = llvm.mlir.constant(3 : index) : i64
    %10 = llvm.mlir.constant(2 : index) : i64
    %11 = llvm.mlir.constant(1 : i32) : i32
    %12 = llvm.mlir.constant(0 : i32) : i32
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(-1 : index) : i64
    %16 = llvm.mlir.constant(13 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.zero : !llvm.ptr
    %19 = llvm.getelementptr %18[13] : (!llvm.ptr) -> !llvm.ptr, i64
    %20 = llvm.ptrtoint %19 : !llvm.ptr to i64
    %21 = llvm.call @malloc(%20) : (i64) -> !llvm.ptr
    %22 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %23 = llvm.insertvalue %21, %22[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.insertvalue %21, %23[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.insertvalue %16, %26[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.insertvalue %17, %27[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.alloca %29 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %28, %30 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %33 = llvm.insertvalue %31, %32[0] : !llvm.struct<(i64, ptr)> 
    %34 = llvm.insertvalue %30, %33[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%12, %14, %15, %13, %15, %31, %30, %11) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %35 = llvm.load %21 : !llvm.ptr -> i64
    %36 = llvm.getelementptr %21[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %37 = llvm.load %36 : !llvm.ptr -> i64
    %38 = llvm.getelementptr %21[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %39 = llvm.load %38 : !llvm.ptr -> i64
    %40 = llvm.getelementptr %21[3] : (!llvm.ptr) -> !llvm.ptr, i64
    %41 = llvm.load %40 : !llvm.ptr -> i64
    %42 = llvm.getelementptr %21[4] : (!llvm.ptr) -> !llvm.ptr, i64
    %43 = llvm.load %42 : !llvm.ptr -> i64
    %44 = llvm.getelementptr %21[5] : (!llvm.ptr) -> !llvm.ptr, i64
    %45 = llvm.load %44 : !llvm.ptr -> i64
    %46 = llvm.getelementptr %21[6] : (!llvm.ptr) -> !llvm.ptr, i64
    %47 = llvm.load %46 : !llvm.ptr -> i64
    %48 = llvm.getelementptr %21[7] : (!llvm.ptr) -> !llvm.ptr, i64
    %49 = llvm.load %48 : !llvm.ptr -> i64
    %50 = llvm.getelementptr %21[8] : (!llvm.ptr) -> !llvm.ptr, i64
    %51 = llvm.load %50 : !llvm.ptr -> i64
    %52 = llvm.getelementptr %21[9] : (!llvm.ptr) -> !llvm.ptr, i64
    %53 = llvm.load %52 : !llvm.ptr -> i64
    %54 = llvm.getelementptr %21[10] : (!llvm.ptr) -> !llvm.ptr, i64
    %55 = llvm.load %54 : !llvm.ptr -> i64
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.mlir.zero : !llvm.ptr
    %58 = llvm.getelementptr %57[%35] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %59 = llvm.ptrtoint %58 : !llvm.ptr to i64
    %60 = llvm.call @malloc(%59) : (i64) -> !llvm.ptr
    %61 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %62 = llvm.insertvalue %60, %61[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.insertvalue %60, %62[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.insertvalue %64, %63[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.insertvalue %35, %65[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.insertvalue %56, %66[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%14 : i64)
  ^bb1(%68: i64):  // 2 preds: ^bb0, ^bb2
    %69 = llvm.icmp "slt" %68, %35 : i64
    llvm.cond_br %69, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %70 = llvm.getelementptr %60[%68] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %14, %70 : i64, !llvm.ptr
    %71 = llvm.add %68, %13  : i64
    llvm.br ^bb1(%71 : i64)
  ^bb3:  // pred: ^bb1
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.alloca %72 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %67, %73 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %76 = llvm.insertvalue %74, %75[0] : !llvm.struct<(i64, ptr)> 
    %77 = llvm.insertvalue %73, %76[1] : !llvm.struct<(i64, ptr)> 
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.mlir.zero : !llvm.ptr
    %80 = llvm.getelementptr %79[%37] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %81 = llvm.ptrtoint %80 : !llvm.ptr to i64
    %82 = llvm.call @malloc(%81) : (i64) -> !llvm.ptr
    %83 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %84 = llvm.insertvalue %82, %83[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %85 = llvm.insertvalue %82, %84[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.insertvalue %86, %85[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.insertvalue %37, %87[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.insertvalue %78, %88[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%14 : i64)
  ^bb4(%90: i64):  // 2 preds: ^bb3, ^bb5
    %91 = llvm.icmp "slt" %90, %37 : i64
    llvm.cond_br %91, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %92 = llvm.getelementptr %82[%90] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %14, %92 : i64, !llvm.ptr
    %93 = llvm.add %90, %13  : i64
    llvm.br ^bb4(%93 : i64)
  ^bb6:  // pred: ^bb4
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.alloca %94 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %89, %95 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %98 = llvm.insertvalue %96, %97[0] : !llvm.struct<(i64, ptr)> 
    %99 = llvm.insertvalue %95, %98[1] : !llvm.struct<(i64, ptr)> 
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.mlir.zero : !llvm.ptr
    %102 = llvm.getelementptr %101[%39] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %103 = llvm.ptrtoint %102 : !llvm.ptr to i64
    %104 = llvm.call @malloc(%103) : (i64) -> !llvm.ptr
    %105 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %106 = llvm.insertvalue %104, %105[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %107 = llvm.insertvalue %104, %106[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %108 = llvm.mlir.constant(0 : index) : i64
    %109 = llvm.insertvalue %108, %107[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.insertvalue %39, %109[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.insertvalue %100, %110[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%14 : i64)
  ^bb7(%112: i64):  // 2 preds: ^bb6, ^bb8
    %113 = llvm.icmp "slt" %112, %39 : i64
    llvm.cond_br %113, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %114 = llvm.getelementptr %104[%112] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %14, %114 : i64, !llvm.ptr
    %115 = llvm.add %112, %13  : i64
    llvm.br ^bb7(%115 : i64)
  ^bb9:  // pred: ^bb7
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.alloca %116 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %111, %117 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %120 = llvm.insertvalue %118, %119[0] : !llvm.struct<(i64, ptr)> 
    %121 = llvm.insertvalue %117, %120[1] : !llvm.struct<(i64, ptr)> 
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.mlir.zero : !llvm.ptr
    %124 = llvm.getelementptr %123[%41] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %125 = llvm.ptrtoint %124 : !llvm.ptr to i64
    %126 = llvm.call @malloc(%125) : (i64) -> !llvm.ptr
    %127 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %128 = llvm.insertvalue %126, %127[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.insertvalue %126, %128[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %130 = llvm.mlir.constant(0 : index) : i64
    %131 = llvm.insertvalue %130, %129[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.insertvalue %41, %131[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.insertvalue %122, %132[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%14 : i64)
  ^bb10(%134: i64):  // 2 preds: ^bb9, ^bb11
    %135 = llvm.icmp "slt" %134, %41 : i64
    llvm.cond_br %135, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %136 = llvm.getelementptr %126[%134] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %14, %136 : i64, !llvm.ptr
    %137 = llvm.add %134, %13  : i64
    llvm.br ^bb10(%137 : i64)
  ^bb12:  // pred: ^bb10
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.alloca %138 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %133, %139 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %142 = llvm.insertvalue %140, %141[0] : !llvm.struct<(i64, ptr)> 
    %143 = llvm.insertvalue %139, %142[1] : !llvm.struct<(i64, ptr)> 
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.mlir.zero : !llvm.ptr
    %146 = llvm.getelementptr %145[%43] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %147 = llvm.ptrtoint %146 : !llvm.ptr to i64
    %148 = llvm.call @malloc(%147) : (i64) -> !llvm.ptr
    %149 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %150 = llvm.insertvalue %148, %149[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %151 = llvm.insertvalue %148, %150[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.insertvalue %152, %151[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %154 = llvm.insertvalue %43, %153[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %155 = llvm.insertvalue %144, %154[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%14 : i64)
  ^bb13(%156: i64):  // 2 preds: ^bb12, ^bb14
    %157 = llvm.icmp "slt" %156, %43 : i64
    llvm.cond_br %157, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %158 = llvm.getelementptr %148[%156] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %14, %158 : i64, !llvm.ptr
    %159 = llvm.add %156, %13  : i64
    llvm.br ^bb13(%159 : i64)
  ^bb15:  // pred: ^bb13
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.alloca %160 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %155, %161 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %164 = llvm.insertvalue %162, %163[0] : !llvm.struct<(i64, ptr)> 
    %165 = llvm.insertvalue %161, %164[1] : !llvm.struct<(i64, ptr)> 
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.mlir.zero : !llvm.ptr
    %168 = llvm.getelementptr %167[%45] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %169 = llvm.ptrtoint %168 : !llvm.ptr to i64
    %170 = llvm.call @malloc(%169) : (i64) -> !llvm.ptr
    %171 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %172 = llvm.insertvalue %170, %171[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %173 = llvm.insertvalue %170, %172[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %174 = llvm.mlir.constant(0 : index) : i64
    %175 = llvm.insertvalue %174, %173[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %176 = llvm.insertvalue %45, %175[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %177 = llvm.insertvalue %166, %176[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%14 : i64)
  ^bb16(%178: i64):  // 2 preds: ^bb15, ^bb17
    %179 = llvm.icmp "slt" %178, %45 : i64
    llvm.cond_br %179, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %180 = llvm.getelementptr %170[%178] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %14, %180 : i64, !llvm.ptr
    %181 = llvm.add %178, %13  : i64
    llvm.br ^bb16(%181 : i64)
  ^bb18:  // pred: ^bb16
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.alloca %182 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %177, %183 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %186 = llvm.insertvalue %184, %185[0] : !llvm.struct<(i64, ptr)> 
    %187 = llvm.insertvalue %183, %186[1] : !llvm.struct<(i64, ptr)> 
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.zero : !llvm.ptr
    %190 = llvm.getelementptr %189[%47] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %191 = llvm.ptrtoint %190 : !llvm.ptr to i64
    %192 = llvm.call @malloc(%191) : (i64) -> !llvm.ptr
    %193 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %194 = llvm.insertvalue %192, %193[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %195 = llvm.insertvalue %192, %194[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %196 = llvm.mlir.constant(0 : index) : i64
    %197 = llvm.insertvalue %196, %195[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %198 = llvm.insertvalue %47, %197[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %199 = llvm.insertvalue %188, %198[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%14 : i64)
  ^bb19(%200: i64):  // 2 preds: ^bb18, ^bb20
    %201 = llvm.icmp "slt" %200, %47 : i64
    llvm.cond_br %201, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %202 = llvm.getelementptr %192[%200] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %14, %202 : i64, !llvm.ptr
    %203 = llvm.add %200, %13  : i64
    llvm.br ^bb19(%203 : i64)
  ^bb21:  // pred: ^bb19
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.alloca %204 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %199, %205 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %208 = llvm.insertvalue %206, %207[0] : !llvm.struct<(i64, ptr)> 
    %209 = llvm.insertvalue %205, %208[1] : !llvm.struct<(i64, ptr)> 
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.zero : !llvm.ptr
    %212 = llvm.getelementptr %211[%49] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %213 = llvm.ptrtoint %212 : !llvm.ptr to i64
    %214 = llvm.call @malloc(%213) : (i64) -> !llvm.ptr
    %215 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %216 = llvm.insertvalue %214, %215[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %217 = llvm.insertvalue %214, %216[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %218 = llvm.mlir.constant(0 : index) : i64
    %219 = llvm.insertvalue %218, %217[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %220 = llvm.insertvalue %49, %219[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %221 = llvm.insertvalue %210, %220[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%14 : i64)
  ^bb22(%222: i64):  // 2 preds: ^bb21, ^bb23
    %223 = llvm.icmp "slt" %222, %49 : i64
    llvm.cond_br %223, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %224 = llvm.getelementptr %214[%222] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %14, %224 : i64, !llvm.ptr
    %225 = llvm.add %222, %13  : i64
    llvm.br ^bb22(%225 : i64)
  ^bb24:  // pred: ^bb22
    %226 = llvm.mlir.constant(1 : index) : i64
    %227 = llvm.alloca %226 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %221, %227 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %228 = llvm.mlir.constant(1 : index) : i64
    %229 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %230 = llvm.insertvalue %228, %229[0] : !llvm.struct<(i64, ptr)> 
    %231 = llvm.insertvalue %227, %230[1] : !llvm.struct<(i64, ptr)> 
    %232 = llvm.mlir.constant(1 : index) : i64
    %233 = llvm.mlir.zero : !llvm.ptr
    %234 = llvm.getelementptr %233[%51] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %235 = llvm.ptrtoint %234 : !llvm.ptr to i64
    %236 = llvm.call @malloc(%235) : (i64) -> !llvm.ptr
    %237 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %238 = llvm.insertvalue %236, %237[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %239 = llvm.insertvalue %236, %238[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %240 = llvm.mlir.constant(0 : index) : i64
    %241 = llvm.insertvalue %240, %239[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %242 = llvm.insertvalue %51, %241[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %243 = llvm.insertvalue %232, %242[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%14 : i64)
  ^bb25(%244: i64):  // 2 preds: ^bb24, ^bb26
    %245 = llvm.icmp "slt" %244, %51 : i64
    llvm.cond_br %245, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %246 = llvm.getelementptr %236[%244] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %246 : f64, !llvm.ptr
    %247 = llvm.add %244, %13  : i64
    llvm.br ^bb25(%247 : i64)
  ^bb27:  // pred: ^bb25
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.alloca %248 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %243, %249 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %252 = llvm.insertvalue %250, %251[0] : !llvm.struct<(i64, ptr)> 
    %253 = llvm.insertvalue %249, %252[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64(%12, %14, %15, %13, %15, %74, %73, %96, %95, %118, %117, %140, %139, %162, %161, %184, %183, %206, %205, %228, %227, %250, %249, %11) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %254 = llvm.mlir.constant(4 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mul %55, %254  : i64
    %257 = llvm.mlir.zero : !llvm.ptr
    %258 = llvm.getelementptr %257[%256] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %259 = llvm.ptrtoint %258 : !llvm.ptr to i64
    %260 = llvm.mlir.constant(32 : index) : i64
    %261 = llvm.add %259, %260  : i64
    %262 = llvm.call @malloc(%261) : (i64) -> !llvm.ptr
    %263 = llvm.ptrtoint %262 : !llvm.ptr to i64
    %264 = llvm.mlir.constant(1 : index) : i64
    %265 = llvm.sub %260, %264  : i64
    %266 = llvm.add %263, %265  : i64
    %267 = llvm.urem %266, %260  : i64
    %268 = llvm.sub %266, %267  : i64
    %269 = llvm.inttoptr %268 : i64 to !llvm.ptr
    %270 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %271 = llvm.insertvalue %262, %270[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %272 = llvm.insertvalue %269, %271[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %273 = llvm.mlir.constant(0 : index) : i64
    %274 = llvm.insertvalue %273, %272[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %275 = llvm.insertvalue %55, %274[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %276 = llvm.insertvalue %254, %275[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %277 = llvm.insertvalue %254, %276[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %278 = llvm.insertvalue %255, %277[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %279 = llvm.mlir.constant(4 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.mul %53, %279  : i64
    %282 = llvm.mlir.zero : !llvm.ptr
    %283 = llvm.getelementptr %282[%281] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %284 = llvm.ptrtoint %283 : !llvm.ptr to i64
    %285 = llvm.mlir.constant(32 : index) : i64
    %286 = llvm.add %284, %285  : i64
    %287 = llvm.call @malloc(%286) : (i64) -> !llvm.ptr
    %288 = llvm.ptrtoint %287 : !llvm.ptr to i64
    %289 = llvm.mlir.constant(1 : index) : i64
    %290 = llvm.sub %285, %289  : i64
    %291 = llvm.add %288, %290  : i64
    %292 = llvm.urem %291, %285  : i64
    %293 = llvm.sub %291, %292  : i64
    %294 = llvm.inttoptr %293 : i64 to !llvm.ptr
    %295 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %296 = llvm.insertvalue %287, %295[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %297 = llvm.insertvalue %294, %296[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %298 = llvm.mlir.constant(0 : index) : i64
    %299 = llvm.insertvalue %298, %297[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %300 = llvm.insertvalue %53, %299[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %301 = llvm.insertvalue %279, %300[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %302 = llvm.insertvalue %279, %301[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %303 = llvm.insertvalue %280, %302[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb28(%14 : i64)
  ^bb28(%304: i64):  // 2 preds: ^bb27, ^bb31
    %305 = llvm.icmp "slt" %304, %55 : i64
    llvm.cond_br %305, ^bb29(%14 : i64), ^bb32(%14 : i64)
  ^bb29(%306: i64):  // 2 preds: ^bb28, ^bb30
    %307 = llvm.icmp "slt" %306, %8 : i64
    llvm.cond_br %307, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %308 = llvm.mlir.constant(4 : index) : i64
    %309 = llvm.mul %304, %308  : i64
    %310 = llvm.add %309, %306  : i64
    %311 = llvm.getelementptr %269[%310] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %0, %311 : f64, !llvm.ptr
    %312 = llvm.add %306, %13  : i64
    llvm.br ^bb29(%312 : i64)
  ^bb31:  // pred: ^bb29
    %313 = llvm.add %304, %13  : i64
    llvm.br ^bb28(%313 : i64)
  ^bb32(%314: i64):  // 2 preds: ^bb28, ^bb35
    %315 = llvm.icmp "slt" %314, %53 : i64
    llvm.cond_br %315, ^bb33(%14 : i64), ^bb36
  ^bb33(%316: i64):  // 2 preds: ^bb32, ^bb34
    %317 = llvm.icmp "slt" %316, %8 : i64
    llvm.cond_br %317, ^bb34, ^bb35
  ^bb34:  // pred: ^bb33
    %318 = llvm.mlir.constant(4 : index) : i64
    %319 = llvm.mul %314, %318  : i64
    %320 = llvm.add %319, %316  : i64
    %321 = llvm.getelementptr %294[%320] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %1, %321 : f64, !llvm.ptr
    %322 = llvm.add %316, %13  : i64
    llvm.br ^bb33(%322 : i64)
  ^bb35:  // pred: ^bb33
    %323 = llvm.add %314, %13  : i64
    llvm.br ^bb32(%323 : i64)
  ^bb36:  // pred: ^bb32
    %324 = llvm.load %60 : !llvm.ptr -> i64
    llvm.br ^bb37(%14 : i64)
  ^bb37(%325: i64):  // 2 preds: ^bb36, ^bb44
    %326 = llvm.icmp "slt" %325, %324 : i64
    llvm.cond_br %326, ^bb38, ^bb45
  ^bb38:  // pred: ^bb37
    %327 = llvm.add %325, %13  : i64
    %328 = llvm.getelementptr %148[%325] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %329 = llvm.load %328 : !llvm.ptr -> i64
    %330 = llvm.getelementptr %148[%327] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %331 = llvm.load %330 : !llvm.ptr -> i64
    llvm.br ^bb39(%329 : i64)
  ^bb39(%332: i64):  // 2 preds: ^bb38, ^bb43
    %333 = llvm.icmp "slt" %332, %331 : i64
    llvm.cond_br %333, ^bb40, ^bb44
  ^bb40:  // pred: ^bb39
    %334 = llvm.getelementptr %170[%332] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %335 = llvm.load %334 : !llvm.ptr -> i64
    llvm.br ^bb41(%14 : i64)
  ^bb41(%336: i64):  // 2 preds: ^bb40, ^bb42
    %337 = llvm.icmp "slt" %336, %8 : i64
    llvm.cond_br %337, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %338 = llvm.getelementptr %236[%332] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %339 = llvm.load %338 : !llvm.ptr -> f64
    %340 = llvm.mlir.constant(4 : index) : i64
    %341 = llvm.mul %335, %340  : i64
    %342 = llvm.add %341, %336  : i64
    %343 = llvm.getelementptr %269[%342] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %344 = llvm.load %343 : !llvm.ptr -> f64
    %345 = llvm.mlir.constant(4 : index) : i64
    %346 = llvm.mul %325, %345  : i64
    %347 = llvm.add %346, %336  : i64
    %348 = llvm.getelementptr %294[%347] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %349 = llvm.load %348 : !llvm.ptr -> f64
    %350 = llvm.fmul %339, %344  : f64
    %351 = llvm.fadd %349, %350  : f64
    %352 = llvm.mlir.constant(4 : index) : i64
    %353 = llvm.mul %325, %352  : i64
    %354 = llvm.add %353, %336  : i64
    %355 = llvm.getelementptr %294[%354] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %351, %355 : f64, !llvm.ptr
    %356 = llvm.add %336, %13  : i64
    llvm.br ^bb41(%356 : i64)
  ^bb43:  // pred: ^bb41
    %357 = llvm.add %332, %13  : i64
    llvm.br ^bb39(%357 : i64)
  ^bb44:  // pred: ^bb39
    llvm.br ^bb37(%327 : i64)
  ^bb45:  // pred: ^bb37
    %358 = llvm.mlir.constant(1 : index) : i64
    %359 = llvm.alloca %358 x !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %303, %359 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    %360 = llvm.mlir.constant(2 : index) : i64
    %361 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %362 = llvm.insertvalue %360, %361[0] : !llvm.struct<(i64, ptr)> 
    %363 = llvm.insertvalue %359, %362[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @comet_print_memref_f64(%360, %359) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @read_input_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @read_input_sizes_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @comet_sort_index(i64, !llvm.ptr, i64, i64) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}
