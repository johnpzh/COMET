// -----// mult_spmm_CSRxDense.ta //----- //
def main() {
	#IndexLabel Declarations
	IndexLabel [a] = [?];
	IndexLabel [b] = [?];
	IndexLabel [c] = [4];             

	#Tensor Declarations
	Tensor<double> A([a, b], {CSR});	  
	Tensor<double> B([b, c], {Dense});
	Tensor<double> C([a, c], {Dense});

    A[a, b] = comet_read(0);

	#Tensor Fill Operation
	B[b, c] = 1.7;
	C[a, c] = 0.0;

	C[a, c] = A[a, b] * B[b, c];
	print(C);
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


// -----// IR Dump After (anonymous namespace)::DenseTensorDeclLoweringPass () //----- //
func.func @main() {
  %0 = "ta.index_label"() : () -> !ta.indexlabel
  %1 = "ta.index_label"() : () -> !ta.indexlabel
  %2 = "ta.index_label"() : () -> !ta.indexlabel

  %fam = "rapidfam.initialize"() : () -> !rapidfam.handle

  // %alloc = memref.alloc() : memref<13xindex>
  %alloc = "rapidfam.malloc"(%fam) : (!rapidfam.handle) -> memref<13xindex>

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

  // %alloc_4 = memref.alloc(%3) : memref<?xindex>
  %alloc_4 = "rapidfam.malloc"(%fam, %3) : (!rapidfam.handle, index) -> memref<?xindex>

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


// -----// IR Dump After FinalizeMemRefToLLVMConversionPass (finalize-memref-to-llvm) //----- //
module {
  llvm.func @rapid_initialize() -> !llvm.ptr
  llvm.func @rapid_malloc(!llvm.ptr, i64) -> !llvm.ptr
  llvm.func @rapid_free(!llvm.ptr, !llvm.ptr) -> ()

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

    %fam = llvm.call @rapid_initialize() : () -> !llvm.ptr

    // %16 = llvm.call @malloc(%15) : (i64) -> !llvm.ptr
    %16 = llvm.call @rapid_malloc(%fam, %15) : (!llvm.ptr, i64) -> !llvm.ptr

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