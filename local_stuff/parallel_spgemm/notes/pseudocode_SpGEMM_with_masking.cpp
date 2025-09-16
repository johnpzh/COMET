/*
The algorithm has two phases. 
First is Symbolic Phase, which is to get the C.rowptr but do not do computation. This phase can be done in parallel.
Second is Numeric Phase, which is to do the computation to get C.val. This phase can also be done in parallel and each thread uses its own workspace.
The key idea is that, because the Symbolic phase already gets the C.rowptr, the Numeric phase can assign values from multiple workspaces to C.val (and C.col) simultaneously.

*/


// ------------------------------------------- //
// Parallel Masked SpGEMM Symbolic Phase for C<M> = A * B //
// ------------------------------------------- //
void symbolic_phase() {
  parallel {
  mark = 0;  // Initialize mark
  int mark_array[] = {0};  // Initialize mark_array to all 0
  for (each row A[i,:] assigned to this thread) {
    mark += 2;  // Update mark to "reset" mark_array
    Cp = 0;
    /// TODO: init with masking
    for (each entry in M[i,j] in M[i,:]) {
      mark_array[j] = mark;
    }
    // Cp = C.rowptr[i]; // C.rowptr is ready from symbolic phase
    for (each entry A[i,k] in A[i,:]) {
      for (each entry B[k,j] in B[k,:]) {
        /// TODO: check with masking
        if (mark_array[j] == mark) {  // C[i,k] is allowed by the mask and has not been seen yet
          mark_array[j] = mark + 1;  // C[i, k] has been seen
          ++Cp;
        }
      }
    }
    C.rowptr[i] = Cp;  // Store the row size
    // Gather each entry ws_data[j] to C.data;
  }
  } // parallel region
  /// Reduce C.rowptr
  C.rowptr[N] = 0;
  offset = 0;
  for (i = 0; i < N + 1; ++i) {
    curr = C.rowptr[i];
    C.rowptr[i] = offset;
    offset += curr;
  }
}


// ------------------------------------------- //
// Parallel Masked SpGEMM Numeric Phase for C<M> = A * B //
// ------------------------------------------- //
void numeric_phase() {
  parallel {
  mark = 0;  // Initialize mark
  int mark_array[] = {0};  // Initialize mark_array to all 0
  for (each row A[i,:] assigned to this thread) {
    mark += 2;  // Update mark to "reset" mark_array
    Cp = C.rowptr[i]; // C.rowptr is ready from symbolic phase
    /// TODO: init with masking
    for (each entry in M[i,j] in M[i,:]) {
      mark_array[j] = mark;
    }
    for (each entry A[i,k] in A[i,:]) {
      for (each entry B[k,j] in B[k,:]) {
        /// TODO: check with masking
        if (mark_array[j] == mark) {  // C[i,k] is allowed by the mask and has not been seen yet
          mark_array[j] = mark + 1;  // C[i, k] has been seen
          C.col[Cp++] = j;  // Store j as the column ID
          ws_data[j] = A[i,k] * B[k,j];  // Initialize C[i,j] in ws_data[j]
        } else {
          ws_data[j] += A[i,k] * B[k,j];  // Update C[i,j] in ws_data[j]
        }
      }
    }
    sort(C.col, C.rowptr[i], C.rowptr[i+1]); // Sort C.col from location C.rowptr[i] to C.rowptr[i+1]
    // Gather each entry ws_data[j] to C.data;
    for (ci = C.rowptr[i] to C.rowptr[i+1] - 1) {
      col_id = C.col[ci];
      C.data[ci] = ws_data[col_id];  // Gather the result to C.data
    }
  }
  } // parallel region
}



// ------------------------------------------- //
// Parallel Masked SpGEMM Symbolic Phase for C<M> = A * B //
// bitmap version
// ------------------------------------------- //
void symbolic_phase() {
  parallel {
  mark = 0;  // Initialize mark
  // int mark_array[] = {0};  // Initialize mark_array to all 0
  bool ws_bitmap[N] = {0};
  bool array_mask[N] = {0};
  for (each row A[i,:] assigned to this thread) {
    // mark += 2;  // Update mark to "reset" mark_array
    Cp = 0;
    /// TODO: init with masking
    for (each entry in M[i,j] in M[i,:]) {
      array_mask[j] = true;
    }
    // Cp = C.rowptr[i]; // C.rowptr is ready from symbolic phase
    for (each entry A[i,k] in A[i,:]) {
      for (each entry B[k,j] in B[k,:]) {
        /// TODO: check with masking
        if (array_mask[j] == true) {  // C[i,k] is allowed by the mask and has not been seen yet
          if (ws_bitmap[j] != true) {
            ws_bitmap[j] = true;
            ++Cp;
          }
        }
      }
    }
    C.rowptr[i] = Cp;  // Store the row size
    /// Reset ws_bitmap and array_mask
    for (each column j) {
      array_mask[j] = false;
    }
    for (each column j) {
      ws_bitmap[j] = false;
    }
  }
  } // parallel region
  /// Reduce C.rowptr
  C.rowptr[N] = 0;
  offset = 0;
  for (i = 0; i < N + 1; ++i) {
    curr = C.rowptr[i];
    C.rowptr[i] = offset;
    offset += curr;
  }
}


// ------------------------------------------- //
// Parallel Masked SpGEMM Numeric Phase for C<M> = A * B //
// bitmap version
// ------------------------------------------- //
void numeric_phase() {
  parallel {
  mark = 0;  // Initialize mark
  // int mark_array[] = {0};  // Initialize mark_array to all 0
  /// TODO: allocate auxiliary arrays.
  bool ws_bitmap[N] = {0};
  bool array_mask[N] = {0};
  for (each row A[i,:] assigned to this thread) {
    mark += 2;  // Update mark to "reset" mark_array
    Cp = C.rowptr[i]; // C.rowptr is ready from symbolic phase
    /// TODO: init with masking
    for (each entry in M[i,j] in M[i,:]) {
      array_mask[j] = true;
    }
    for (each entry A[i,k] in A[i,:]) {
      for (each entry B[k,j] in B[k,:]) {
        /// TODO: check with masking
        if (array_mask[j] == true) {  // C[i,k] is allowed by the mask and has not been seen yet
          if (ws_bitmap[j] != true) {
            ws_bitmap[j] = true;  // C[i, k] has been seen
            C.col[Cp++] = j;  // Store j as the column ID
            ws_data[j] = A[i,k] * B[k,j];  // Initialize C[i,j] in ws_data[j]
          } else {
            ws_data[j] += A[i,k] * B[k,j];  // Update C[i,j] in ws_data[j]
          }
        }
      }
    }
    /// TODO: reset array_mask
    for (each column j) {
      array_mask[j] = false;
    }
    sort(C.col, C.rowptr[i], C.rowptr[i+1]); // Sort C.col from location C.rowptr[i] to C.rowptr[i+1]
    // Gather each entry ws_data[j] to C.data;
    for (ci = C.rowptr[i] to C.rowptr[i+1] - 1) {
      col_id = C.col[ci];
      C.data[ci] = ws_data[col_id];  // Gather the result to C.data
      ws_bitmap[col_id] = false;
    }
  }
  } // parallel region
}




// -------------------------------------------- //
// Parallel SpGEMM Symbolic Phase for C = A * B //
// -------------------------------------------- //
void symbolic_phase() {
  parallel {
  mark = 0;  // Initialize mark
  int mark_array[] = {0};  // Initialize mark_array to all 0
  for (each row A[i,:] assigned to this thread) {
    mark += 1;  // Update mark to "reset" mark_array
    Cp = 0;
    // Cp = C.rowptr[i]; // C.rowptr is ready from symbolic phase
    for (each entry A[i,k] in A[i,:]) {
      for (each entry B[k,j] in B[k,:]) {
        if (mark_array[j] != mark) {  // C[i,k] has not been seen yet
          mark_array[j] = mark;  // C[i, k] has been seen
          ++Cp;
          // C.col[Cp++] = j;  // Store j as the column ID
          // ws_data[j] = A[i,k] * B[k,j];  // Initialize C[i,j] in ws_data[j]
        }
      }
    }
    C.rowptr[i] = Cp;  // Store the row size
    // Gather each entry ws_data[j] to C.data;
  }
  } // parallel region
  /// Reduce C.rowptr
  C.rowptr[N] = 0;
  offset = 0;
  for (i = 0; i < N + 1; ++i) {
    curr = C.rowptr[i];
    C.rowptr[i] = offset;
    offset += curr;
  }
}


// ------------------------------------------- //
// Parallel SpGEMM Numeric Phase for C = A * B //
// ------------------------------------------- //
void numeric_phase() {
  parallel {
  mark = 0;  // Initialize mark
  int mark_array[] = {0};  // Initialize mark_array to all 0
  for (each row A[i,:] assigned to this thread) {
    mark += 1;  // Update mark to "reset" mark_array
    Cp = C.rowptr[i]; // C.rowptr is ready from symbolic phase
    for (each entry A[i,k] in A[i,:]) {
      for (each entry B[k,j] in B[k,:]) {
        if (mark_array[j] != mark) {  // C[i,k] has not been seen yet
          mark_array[j] = mark;  // C[i, k] has been seen
          C.col[Cp++] = j;  // Store j as the column ID
          ws_data[j] = A[i,k] * B[k,j];  // Initialize C[i,j] in ws_data[j]
        } else {
          ws_data[j] += A[i,k] * B[k,j];  // Update C[i,j] in ws_data[j]
        }
      }
    }
    sort(C.col, C.rowptr[i], C.rowptr[i+1]); // Sort C.col from location C.rowptr[i] to C.rowptr[i+1]
    // Gather each entry ws_data[j] to C.data;
    for (ci = C.rowptr[i] to C.rowptr[i+1] - 1) {
      col_id = C.col[ci];
      C.data[ci] = ws_data[col_id];  // Gather the result to C.data
    }
  }
  } // parallel region
}

// --------------------------- //
// Sequential SpGEMM C = A * B //
// --------------------------- //
bool bitvector[] = {0};  // Initialize bitvector to all 0
Cp = 0;  // Insertion pointer to C
C.rowptr[0] = 0;
for (each row A[i,:] in A) {
  ws_col_list_size = 0;  // Size of the column ID list
  for (each entry A[i,k] in A[i,:]) {
    for (each entry B[k,j] in B[k,:]) {
      if (bitvector[j] == False) {  // C[i,k] has not been seen yet
        bitvector[j] = True;  // C[i, k] has been seen
        ws_col_list[ws_col_list_size++] = j;  // Store j as the column ID
        ws_data[j] = A[i,k] * B[k,j];  // Initialize C[i,j] in ws_data[j]
      } else {
        ws_data[j] += A[i,k] * B[k,j];  // Update C[i,j] in ws_data[j]
      }
    }
  }
  // Sort the column ID list
  sort(ws_col_list);
  // Gather each entry ws_data[j] to C.data;
  for (ci = 0 to ws_col_list_size - 1) {
    col_id = ws_col_list[ci];
    C.col[Cp] = col_id;  // Gather the column ID
    C.data[Cp] = ws_data[col_id];  // Gather the result to C.data
    Cp += 1;  // Update the insertion pointer
    bitvector[col_id] = False;  // Reset the bitvector
  }
  C.rowptr[i+1] = Cp;  // Store the insertion pointer into C.rowptr
}

