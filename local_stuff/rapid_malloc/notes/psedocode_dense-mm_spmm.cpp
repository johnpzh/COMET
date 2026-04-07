/// Dense-MM
/// C[i, j] = A[i, k] * B[k, j]
/// A, B, C are dense
function dense_mm() {
  for (i = 0 to NI) {
    for (k = 0 to NK) {
      for (j = 0 to NJ) {
        C[i][j] += A[i][k] * B[k][j];
      }
    }
  }
}

/// SpMM
/// C[i, j] = A[i, k] * B[k, j]
/// A is in CSR format, B and C are dense
function spmm() {
  for (i = 0 to NI) {
    for (k_loc = A.rowptr[i] to A.rowptr[i + 1]) {
      k = A.colid[k_loc];
      A_val = A.val[k_loc];
      for (j = 0 to NJ) {
        C[i][j] += A_val * B[k][j];
      }
    }
  }
}