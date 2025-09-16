
/// C[i,j] = A[i,k] * B[k,j]
void spgemm() {
  // {/// Symbolic phase
  // mark_array = vector(NJ);
  // mark = 0;  /// %arg1
  // rowptr = 0  /// %arg2
  // for (i = 0 to NI) {
  //   mark += 1;  // Update mark to "reset" mark_array
  //   for (k_loc = A.rowptr[i] to A.rowptr[i + 1]) {
  //     k = A.colid[k_loc];
  //     for (j_loc = B.rowptr[k] to B.rowptr[k + 1]) {
  //       j = B.colid[j_loc];
  //       if (mark_array[j] != mark) {  // C[i,j] is allowed by the mask and has not been seen yet
  //           mark_array[j] = mark;  // C[i, j] has been seen
  //           rowptr += 1;
  //       }
  //     }
  //   }
  //   C.rowptr[i] = rowptr;
  // }
  // }  /// End symbolic phase

  {/// Symbolic phase
  mark_array = vector(NJ);
  crd_size = 0;
  mark = 0;
  for (i = 0 to NI) {
    for (k_loc = A.rowptr[i] to A.rowptr[i + 1]) {
      k = A.colid[k_loc];
      for (j_loc = B.rowptr[k] to B.rowptr[k + 1]) {
        j = B.colid[j_loc];
        inside_mark = mark + 1;
        if (mark_array[j] != inside_mark) {  // C[i,j] is allowed by the mask and has not been seen yet
            mark_array[j] = inside_mark;  // C[i, j] has been seen
            crd_size += 1;
        }
      }
    }
    mark += 1;
    C.rowptr[mark] = crd_size;
  }
  }  /// End symbolic phase

  {/// Numeric phase
  mark_array = vector(NJ);
  rowptr = 0;  /// %arg1
  mark = 0;  /// %arg2
  colid_array = vector(NJ);
  for (i = 0 to NI) {
    mark += 1;  // Update mark to "reset" mark_array
    j_size = 0;
    for (k_loc = A.rowptr[i] to A.rowptr[i + 1]) {
      k = A.colid[k_loc];
      for (j_loc = B.rowptr[k] to B.rowptr[k + 1]) {
        j = B.colid[j_loc];
        val = A.val[k_loc] * B.val[j_loc];
        if (mark_array[j] != mark) {  // C[i,j] is allowed by the mask and has not been seen yet
            mark_array[j] = mark;  // C[i, j] has been seen
            colid_array[j_size++] = j;
            W_data[j] = val;  // Initialize C[i,j] in ws_data[j]
        } else {
            W_data[j] += val;  // Update C[i,j] in ws_data[j]
        }
      }
    }
    sort(colid_array, 0, j_size);
    for (j_loc = 0 to j_size) {
      j = colid_array[j_loc];
      val = W_data[j];
      C.colid[rowptr] = j;
      C.val[rowptr] = val;
      rowptr += 1;
    }
  }
  }  /// End numeric phase
}


/// C[i,j] = A[i,k] * B[k,j]
void spgemm_parallel() {
  {/// Symbolic phase
  forall (tid = 0 to num_threads) {
  mark_array = vector(NJ);
  mark = 0;  /// %arg1
  rowptr = 0  /// %arg2
  for (i = 0 to NI step num_threads) {
    mark += 1;  // Update mark to "reset" mark_array
    for (k_loc = A.rowptr[i] to A.rowptr[i + 1]) {
      k = A.colid[k_loc];
      for (j_loc = B.rowptr[k] to B.rowptr[k + 1]) {
        j = B.colid[j_loc];
        if (mark_array[j] != mark) {  // C[i,j] is allowed by the mask and has not been seen yet
            mark_array[j] = mark;  // C[i, j] has been seen
            rowptr += 1;
        }
      }
    }
    C.rowptr[i] = rowptr;
  }
  }  /// End parallel region
  reduce C.rowptr
  }  /// End symbolic phase

  {/// Numeric phase
  forall (tid = 0 to num_threads) {
  mark_array = vector(NJ);
  // rowptr = 0;  /// %arg1
  mark = 0;  /// %arg2
  colid_array = vector(NJ);
  for (i = 0 to NI step num_threads) {
    mark += 1;  // Update mark to "reset" mark_array
    j_size = 0;
    for (k_loc = A.rowptr[i] to A.rowptr[i + 1]) {
      k = A.colid[k_loc];
      for (j_loc = B.rowptr[k] to B.rowptr[k + 1]) {
        j = B.colid[j_loc];
        val = A.val[k_loc] * B.val[j_loc];
        if (mark_array[j] != mark) {  // C[i,j] is allowed by the mask and has not been seen yet
            mark_array[j] = mark;  // C[i, j] has been seen
            colid_array[j_size++] = j;
            W_data[j] = val;  // Initialize C[i,j] in ws_data[j]
        } else {
            W_data[j] += val;  // Update C[i,j] in ws_data[j]
        }
      }
    }
    sort(colid_array, 0, j_size);
    rowptr = C.rowptr[i];
    for (j_loc = 0 to j_size) {
      j = colid_array[j_loc];
      val = W_data[j];
      C.colid[rowptr + j_loc] = j;
      C.val[rowptr + j_loc] = val;
      rowptr += 1;
    }
  }
  }  /// End parallel region
  }  /// End numeric phase
}