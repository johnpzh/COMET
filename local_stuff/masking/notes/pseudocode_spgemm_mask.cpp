/// C<M>[i,k] = A[i,j] * B[j,k]
void push_mask_spgemm(Matrix A,
                      Matrix B,
                      Mask M, /*Mask*/
                      Matrix C, /*output*/)
{
    for (i = 0 to NI) {
        for (j_loc = A.rowPtr[i] to A.rowPtr[i + 1]) {
            j = A.colId[j_loc];
            for (k_loc = B.rowPtr[j] to B.rowPtr[j + 1]) {
                k = B.colId[k_loc];
                C[i,k] += A.data[j_loc] * B.data[k_loc];
            }
        }
    }
}

/// C<M>[i,k] = A[i,j] * B[j,k]
void pull_mask_spgemm(Matrix A,
                      Matrix B,
                      Mask M, /*Mask*/
                      Matrix C, /*output*/)
{
    for (i = 0 to NI) {
        for (k_loc = M.rowPtr[i] to M.rowPtr[i + 1]) {
            k = M.colId[k_loc];

            for
        }
    }
}