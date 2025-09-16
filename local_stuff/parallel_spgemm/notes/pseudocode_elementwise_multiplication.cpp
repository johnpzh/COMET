class Matrix {};
int M;
int N;


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

/// Elementwise symbolic using linear merge, in while-loop.
/// C = A .* B
void symbolic_eltwise(Matrix A[M,N],
             Matrix B[M,N],
             Matrix C[M,N] /* output */) {

  for (int i_idx = 0; i_idx < M; ++i_idx) {
    int rowptr = 0;
    int jA_loc = A.rowptr[i_idx];
    int jB_loc = B.rowptr[i_idx];

    while (jA_loc < A.rowptr[i_idx + 1] && 
           jB_loc < B.rowptr[i_idx + 1]) {
      int jA_idx = A.col[jA_loc];
      int jB_idx = B.col[jB_loc];

      if (jA_idx == jB_idx) {
        // C.col[rowptr] = jA_idx;
        // C.val[rowptr] = A.val[jA_loc] * B.val[jB_loc];
        ++rowptr;
        ++jA_loc;
        ++jB_loc;
      } else if (jA_idx < jB_idx) {
        ++jA_loc;
      } else { // jA_idx > jB_idx
        ++jB_loc;
      }
    }

    C.rowptr[i_idx] = rowptr;
  } 

  /// Reduce C.rowtpr
  C.rowptr[M] = 0;
  int C_val_size = 0;
  for (int i_idx = 0; i_idx < M + 1; ++i_idx) {
    int curr = C.rowptr[i_idx];
    C.rowptr[i_idx] = C_val_size;
    C_val_size += curr;
  }
}

/// Elementwise numeric using linear merge, in while-loop.
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



/// @brief Elementwise symbolic using linear merge, in for-loop.
/// C = A .* B
/// @param A 
/// @param B 
void symbolic_eltwise(Matrix A[M,N],
             Matrix B[M,N],
             Matrix C[M,N] /* output */) {
  for (int i_idx = 0; i_idx < M; ++i_idx) {
    int jB_loc = B.rowptr[i_idx];

    int row_size = 0;
    for (int jA_loc = A.rowptr[i_idx]; jA_loc < A.rowptr[i_idx + 1]; ++jA_loc) {
      if (jB_loc < B.rowptr[i_idx + 1]) {  /// How to do break in scf.for?
        int jA_idx = A.col[jA_loc];
        int jB_idx = B.col[jB_loc];

        if (jA_idx == jB_idx) {
          ++row_size;
          ++jB_loc;
          // ++jA_loc will be done by the for-loop
        } else if (jB_idx < jA_idx) {
          ++jB_loc;
          jA_loc -= 1;  // This cancels out the for-loop's ++jA_loc
        }
        // if (jA_idx < jB_idx), then the for-loop will do ++jA_loc
      }
    }

    C.rowptr[i_idx] = row_size;
  }

  /// Reduce C.rowtpr
  C.rowptr[M] = 0;
  int C_val_size = 0;
  for (int i_idx = 0; i_idx < M + 1; ++i_idx) {
    int curr = C.rowptr[i_idx];
    C.rowptr[i_idx] = C_val_size;
    C_val_size += curr;
  }
}


/// @brief Elementwise numeric using linear merge, in for-loop.
/// C = A .* B
/// @param A 
/// @param B 
void numeric_eltwise(Matrix A[M,N],
             Matrix B[M,N],
             Matrix C[M,N] /* output */) {
  for (int i_idx = 0; i_idx < M; ++i_idx) {
    int jB_loc = B.rowptr[i_idx];

    int rowptr = C.rowptr[i_idx];
    for (int jA_loc = A.rowptr[i_idx]; jA_loc < A.rowptr[i_idx + 1]; ++jA_loc) {
      if (jB_loc < B.rowptr[i_idx + 1]) {  // How to do break in scf.for???
        int jA_idx = A.col[jA_loc];
        int jB_idx = B.col[jB_loc];

        if (jA_idx == jB_idx) {
          C.col[rowptr] = jA_idx;
          C.val[rowptr] = A.val[jA_loc] * B.val[jB_loc];
          ++rowptr;
          ++jB_loc;
          // ++jA_loc will be done by the for-loop
        } else if (jB_idx < jA_idx) {
          ++jB_loc;
          --jA_loc;  // This cancels out the for-loop's ++jA_loc
        }
        // if (jA_idx < jB_idx), then the for-loop will do ++jA_loc
      }
    }
  }
}





/// @brief Elementwise symbolic phase
/// C = A .* B
/// @param A 
/// @param B 
/// @param C 
void symbolic_eltwise(Matrix A[M,N],
                      Matrix B[M,N],
                      Matrix C[M,N] /* output */) {
  
  int mark = 0;
  /// mark_array is from Index Tree, the LHS.getOperand[1] 

  /// 1st ForOp
  for (int i_idx = 0; i_idx < M; ++i_idx) {
    mark += 2;  /// Update mark to "reset" mark_array

    /// 1st CmptOp
    int W_id_list_size = 0;

    /// 2nd ForOp
    /// 2nd CmptOp
    double V[N] = {0}; /// dense vector V;

    /// 3nd ForOp
    /// 3rd CmptOp
    /// Copy A[i,] to V
    for (int j_loc = A.rowptr[i_idx]; j_loc < A.rowptr[i_idx + 1]; ++j_loc) {
      int jA_idx = A.col[j_loc];
      V[jA_idx] = A.val[j_loc];
    }

    /// 4th ForOp
    /// 4th CmptOp
    for (int j_loc = B.rowptr[i_idx]; j_loc < B.rowptr[i_idx + 1]; ++j_loc) {
      int j_idx = B.col[j_loc];
      if (mark_array[j_idx] != mark) {
        mark_array[j_idx] = mark;  /// C[i_idx, j_idx] has been visited
      // if (!is_visited[j_idx]) {
        // A_val = A[j_idx];
        // B_val = B.val[j_loc];
        // val = A_val * B_val;
        // W_data[j_idx] = val;
        // is_visited[j_idx] = true;
        // W_id_list[W_id_list_size] = j_idx;
        W_id_list_size += 1;
      }
      // else {
      //   A_val = A[j_idx];
      //   B_val = B.val[j_loc];
      //   val = A_val * B_val;
      //   W_data[j_idx] = val;
      // }
    }

    C.rowptr[i_idx] = W_id_list_size;
  }

  /// 5th CmptOp, but done in the 4th genCmptOps()
  /// Reduce C.rowtpr
  C.rowptr[M] = 0;
  int C_val_size = 0;
  for (int i_idx = 0; i_idx < M + 1; ++i_idx) {
    int curr = C.rowptr[i_idx];
    C.rowptr[i_idx] = C_val_size;
    C_val_size += curr;
  }
}

void numeric_eltwise(Matrix A[M,N],
                     Matrix B[M,N],
                     Matrix C[M,N] /* output */) {

  bool is_visited[N] = {false}; /// is_visited is not from Index Tree.

  /// 1st ForOp: format_D
  for (int i_idx = 0; i_idx < M; ++i_idx) {
    /// 1st CmptOp: genWorkspaceCmptOpInitialAssignment()
    int rowptr = C.rowptr[i_idx];

    /// 2nd ForOp: format_D
    /// 2nd CmptOp: genWorkspaceCmptOpInitialAssignment()
    double V[N] = {0}; /// dense vector V;

    /// 3nd ForOp: format_CU
    /// 3nd CmptOp: genWorkspaceCmptOpScatterInputToWorkspace()
    /// Copy A[i,] to V
    for (int j_loc = A.rowptr[i_idx]; j_loc < A.rowptr[i_idx + 1]; ++j_loc) {
      int jA_idx = A.col[j_loc];
      V[jA_idx] = A.val[j_loc];
    }

    /// 4th ForOp: format_CU
    /// 4th CmptOp: formSemiringLoopBody()
    for (int j_loc = B.rowptr[i_idx]; j_loc < B.rowptr[i_idx + 1]; ++j_loc) {
      int j_idx = B.col[j_loc];
      if (!is_visited[j_idx]) {
        A_val = V[j_idx];
        B_val = B.val[j_loc];
        val = A_val * B_val;
        W_data[j_idx] = val;
        is_visited[j_idx] = true;
        // W_id_list[W_id_list_size] = j_idx;
        C.col[rowptr] = j_idx;
        rowptr += 1;
      }
      else {
        A_val = A[j_idx];
        B_val = B.val[j_loc];
        val = A_val * B_val;
        W_data[j_idx] = val;
      }
    }

    sort(C.col, C.rowptr[i_idx], C.rowptr[i_idx + 1]);

    /// 5th ForOp: format_D
    /// 5th CmptOp: genWorkspaceCmptOpGatherFromWorkspaceToOutput()
    for (int j_loc = C.rowptr[i_idx]; j_loc < C.rowptr[i_idx + 1]; ++j_loc) {
      int j_idx = C.col[j_loc];
      C.val[j_idx] = W_data[j_idx];
      is_visited[j_idx] = false;
    }
  }
}



/// @brief Elementwise algorithm in current IndexTreeToSCF.cpp implementation
/// C = A .* B
/// @param A 
/// @param B 
/// @param C 
void eltwise(Matrix A[M,N],
             Matrix B[M,N],
             Matrix C[M,N] /* output */) {
  
  int rowptr = 0;
  for (int i_idx = 0; i_idx < M; ++i_idx) {
    int W_id_list_size = 0;
    double V[N] = {0}; /// dense vector V;

    /// Copy A[i,] to V
    for (int j_loc = A.rowptr[i_idx]; j_loc < A.rowptr[i_idx + 1]; ++j_loc) {
      int jA_idx = A.col[j_loc];
      V[jA_idx] = A.val[j_loc];
    }

    for (int j_loc = B.rowptr[i_idx]; j_loc < B.rowptr[i_idx + 1]; ++j_loc) {
      int j_idx = B.col[j_loc];
      if (!is_visited[j_idx]) {
        A_val = V[j_idx];
        B_val = B.val[j_loc];
        val = A_val * B_val;
        W_data[j_idx] = val;
        is_visited[j_idx] = true;
        W_id_list[W_id_list_size] = j_idx;
        W_id_list_size += 1;
      } else {
        A_val = A[j_idx];
        B_val = B.val[j_loc];
        val = A_val * B_val;
        W_data[j_idx] = val;
      }
    }
  }

  sort(W_id_list);

  for (int loc = 0; loc < W_id_list_size; ++loc) {
    j_idx = W_id_list[loc];
    C_val = W_data[j_idx];
    C.val[rowptr] = C_val;
    is_visited[j_idx] = false;
    C.col[rowptr] = j_idx;
    rowptr += 1;
  }
  C.rowptr[i_idx + 1] = rowptr;
}

/// @brief Elementwise using linear merge.
/// C = A .* B
/// @param A 
/// @param B 
void eltwise(Matrix A[M,N],
             Matrix B[M,N],
             Matrix C[M,N] /* output */) {
  int rowptr = 0;
  for (int i_idx = 0; i_idx < M; ++i_idx) {
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