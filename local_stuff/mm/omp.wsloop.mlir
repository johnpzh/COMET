module {
  func.func @main() {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index

    %20 = func.call @getTime() : () -> f64
    /// 

    ////////////////////
    /// Symbolic phase
    ////////////////////
    %bound = arith.constant 44 : index
    // omp.parallel {

    scf.parallel (%arg0) = (%c0) to (%bound) step (%c1) {
      %aconst = arith.constant 17 : index
      func.call @printI64(%arg0) : (index) -> ()
      // omp.yield
    }  /// omp.wsloop

    // memref.dealloc %alloc_39 : memref<?xindex>  /// TODO: alloc_39 = mark_array
    // omp.terminator
    // }  /// omp.parallel

    %25 = func.call @getTime() : () -> f64
    func.call @printElapsedTime(%20, %25) : (f64, f64) -> ()

    return
  }
  func.func private @read_input_2D_f64(i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort_index(memref<*xindex>, index, index)
  func.func private @getTime() -> f64
  func.func private @printElapsedTime(f64, f64)
  func.func private @comet_print_memref_f64(memref<*xf64>)
  func.func private @comet_print_memref_i64(memref<*xindex>)
  func.func private @printI64(index)
}
