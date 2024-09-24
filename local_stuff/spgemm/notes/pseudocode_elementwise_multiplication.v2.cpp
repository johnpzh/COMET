class Matrix {};
int M;
int N;

/// Elementwise multiplication, in for-loop.
/// C = A .* B
void numeric_eltwise(Matrix A[M,N],
             Matrix B[M,N],
             Matrix C[M,N] /* output */) {
    
  for (int i_idx = 0; i_idx < M; ++i_idx) {
    int rowptr = C.rowptr[i_idx];
    int jA_loc = A.rowptr[i_idx];
    int jB_loc = B.rowptr[i_idx];
    int jA_loc_bound = A.rowptr[i_idx + 1];
    int jB_loc_bound = B.rowptr[i_idx + 1];
    int bound = (jA_loc_bound - jA_loc) + 
                (jB_loc_bound - jB_loc);
    /// Another option for bound
    ///   int bound = max(jA_loc_bound - jA_loc, jB_loc_bound - jB_loc);
    for (int j = 0; j < bound; ++j) {
      if (jA_loc < jA_loc_bound && jB_loc < jB_loc_bound) {
        int jA_idx = A.col[jA_loc];
        int jB_idx = B.col[jB_loc];
        if (jA_idx == jB_idx) {
          C.col[rowptr] = jA_idx;
          C.val[rowptr] = A.val[jA_loc] * B.val[jB_loc];
          ++rowptr;
          ++jA_loc;
          ++jB_loc;
        } else if (jA_idx < jB_idx) {
          ++jA_loc;
        } else { // jA_idx > jB_idx
          ++jB_loc;
        }
      }
    }
  }
}


/// Elementwise multiplication (numeric phase), in while-loop.
/// C = A .* B
void numeric_eltwise(Matrix A[M,N],
             Matrix B[M,N],
             Matrix C[M,N] /* output */) {
  // int rowptr = 0; // sequential version

  for (int i_idx = 0; i_idx < M; ++i_idx) {
    int rowptr = C.rowptr[i_idx];  // C.rowptr is ready by symbolic phase.
    int jA_loc = A.rowptr[i_idx];
    int jB_loc = B.rowptr[i_idx];

    while (jA_loc < A.rowptr[i_idx + 1] && 
           jB_loc < B.rowptr[i_idx + 1]) {
      int jA_idx = A.col[jA_loc];
      int jB_idx = B.col[jB_loc];

      if (jA_idx == jB_idx) {
        C.col[rowptr] = jA_idx;
        C.val[rowptr] = A.val[jA_loc] * B.val[jB_loc];
        ++rowptr;
        ++jA_loc;
        ++jB_loc;
      } else if (jA_idx < jB_idx) {
        ++jA_loc;
      } else { // jA_idx > jB_idx
        ++jB_loc;
      }
    }
  }
}

/// Elementwise algorithm in current IndexTreeToSCF.cpp implementation (modified by removing soring and W_data)
/// C = A .* B
void eltwise(Matrix A[M,N],
             Matrix B[M,N],
             Matrix C[M,N] /* output */) {
  
  int rowptr = 0;
  for (int i_idx = 0; i_idx < M; ++i_idx) {
    // int rowptr = C.rowptr[i_idx];  // C.rowptr can be gotten from symbolic phase
    int W_id_list_size = 0;
    double V[N] = {0}; /// dense vector V;

    /// Copy A[i,] to V
    for (int j_loc = A.rowptr[i_idx]; j_loc < A.rowptr[i_idx + 1]; ++j_loc) {
      int jA_idx = A.col[j_loc];
      V[jA_idx] = A.val[j_loc];
    }

    for (int j_loc = B.rowptr[i_idx]; j_loc < B.rowptr[i_idx + 1]; ++j_loc) {
      int j_idx = B.col[j_loc];
      // if (!is_visited[j_idx]) {
      A_val = V[j_idx];
      if ( A_val == 0 ) continue;
      B_val = B.val[j_loc];
      val = A_val * B_val;
      C.val[rowptr] = val;
      C.col[rowptr] = j_idx;
      ++rowptr;
      // W_data[j_idx] = val;
      // is_visited[j_idx] = true;
      // W_id_list[W_id_list_size] = j_idx;
      // W_id_list_size += 1;
      // } else {
      //   A_val = A[j_idx];
      //   B_val = B.val[j_loc];
      //   val = A_val * B_val;
      //   W_data[j_idx] = val;
      // }
    }
  }

  // sort(W_id_list);

  // for (int loc = 0; loc < W_id_list_size; ++loc) {
  //   j_idx = W_id_list[loc];
  //   C_val = W_data[j_idx];
  //   C.val[rowptr] = C_val;
  //   is_visited[j_idx] = false;
  //   C.col[rowptr] = j_idx;
  //   rowptr += 1;
  // }
  // C.rowptr[i_idx + 1] = rowptr;
}

