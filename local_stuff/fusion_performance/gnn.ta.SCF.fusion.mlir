module {
  func.func @main() {
    %c16 = arith.constant 16 : index
    %cst = arith.constant 3.400000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
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
    %idx16 = index.constant 16
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
    %alloc_2 = memref.alloc(%0) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_2 : memref<?xi64>)
    %cast_3 = memref.cast %alloc_2 : memref<?xi64> to memref<*xi64>
    %alloc_4 = memref.alloc(%1) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_4 : memref<?xi64>)
    %cast_5 = memref.cast %alloc_4 : memref<?xi64> to memref<*xi64>
    %alloc_6 = memref.alloc(%2) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_6 : memref<?xi64>)
    %cast_7 = memref.cast %alloc_6 : memref<?xi64> to memref<*xi64>
    %alloc_8 = memref.alloc(%3) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_8 : memref<?xi64>)
    %cast_9 = memref.cast %alloc_8 : memref<?xi64> to memref<*xi64>
    %alloc_10 = memref.alloc(%4) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_10 : memref<?xi64>)
    %cast_11 = memref.cast %alloc_10 : memref<?xi64> to memref<*xi64>
    %alloc_12 = memref.alloc(%5) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_12 : memref<?xi64>)
    %cast_13 = memref.cast %alloc_12 : memref<?xi64> to memref<*xi64>
    %alloc_14 = memref.alloc(%6) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_14 : memref<?xi64>)
    %cast_15 = memref.cast %alloc_14 : memref<?xi64> to memref<*xi64>
    %alloc_16 = memref.alloc(%7) : memref<?xi64>
    linalg.fill ins(%c0_i64 : i64) outs(%alloc_16 : memref<?xi64>)
    %cast_17 = memref.cast %alloc_16 : memref<?xi64> to memref<*xi64>
    %alloc_18 = memref.alloc(%8) : memref<?xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_18 : memref<?xf64>)
    %cast_19 = memref.cast %alloc_18 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64_i64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_3, %cast_5, %cast_7, %cast_9, %cast_11, %cast_13, %cast_15, %cast_17, %cast_19, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32) -> ()
    %alloc_20 = memref.alloc(%10) {alignment = 32 : i64} : memref<?x16xf64>
    linalg.fill ins(%cst_0 : f64) outs(%alloc_20 : memref<?x16xf64>)
    %alloc_21 = memref.alloc() {alignment = 32 : i64} : memref<16x16xf64>
    linalg.fill ins(%cst : f64) outs(%alloc_21 : memref<16x16xf64>)
    %alloc_22 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_22 : memref<?x16xf64>)
    %alloc_23 = memref.alloc() {alignment = 32 : i64} : memref<16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_23 : memref<16xf64>)
    %alloc_24 = memref.alloc(%9) {alignment = 32 : i64} : memref<?x16xf64>
    linalg.fill ins(%cst_1 : f64) outs(%alloc_24 : memref<?x16xf64>)
    %11 = call @getTime() : () -> f64
    scf.for %arg0 = %c0 to %9 step %c1 {
      %14 = arith.addi %arg0, %c1 : index
      %15 = memref.load %alloc_10[%arg0] : memref<?xi64>
      %16 = arith.index_cast %15 : i64 to index
      %17 = memref.load %alloc_10[%14] : memref<?xi64>
      %18 = arith.index_cast %17 : i64 to index
      scf.for %arg1 = %16 to %18 step %c1 {
        %19 = memref.load %alloc_12[%arg1] : memref<?xi64>
        %20 = arith.index_cast %19 : i64 to index
        %21 = memref.load %alloc_18[%arg1] : memref<?xf64>
        scf.for %arg2 = %c0 to %idx16 step %c1 {
          %22 = memref.load %alloc_20[%20, %arg2] : memref<?x16xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = memref.load %alloc_23[%arg2] : memref<16xf64>
          %25 = arith.addf %24, %23 : f64
          memref.store %25, %alloc_23[%arg2] : memref<16xf64>
        }
      }
      scf.for %arg1 = %c0 to %idx16 step %c1 {
        %19 = memref.load %alloc_23[%arg1] : memref<16xf64>
        scf.for %arg2 = %c0 to %idx16 step %c1 {
          %20 = memref.load %alloc_21[%arg1, %arg2] : memref<16x16xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = memref.load %alloc_22[%arg0, %arg2] : memref<?x16xf64>
          %23 = arith.addf %22, %21 : f64
          memref.store %23, %alloc_22[%arg0, %arg2] : memref<?x16xf64>
        }
      }
      scf.for %arg1 = %c0 to %idx16 step %c1 {
        memref.store %cst_1, %alloc_23[%arg1] : memref<16xf64>
      }
    }
    %12 = call @getTime() : () -> f64
    %alloc_25 = memref.alloc() : memref<1xf64>
    memref.store %cst_1, %alloc_25[%c0] : memref<1xf64>
    scf.for %arg0 = %c0 to %9 step %c1 {
      scf.for %arg1 = %c0 to %c16 step %c1 {
        %14 = memref.load %alloc_22[%arg0, %arg1] : memref<?x16xf64>
        %15 = memref.load %alloc_25[%c0] : memref<1xf64>
        %16 = arith.addf %14, %15 : f64
        memref.store %16, %alloc_25[%c0] : memref<1xf64>
      }
    }
    %13 = memref.load %alloc_25[%c0] : memref<1xf64>
    call @printF64(%13) : (f64) -> ()
    call @printNewline() : () -> ()
    call @printElapsedTime(%11, %12) : (f64, f64) -> ()
    return
  }
  func.func private @read_input_2D_f64_i64(i32, index, index, index, index, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xi64>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
  func.func private @printF64(f64)
  func.func private @printNewline()
}
