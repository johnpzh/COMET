/// GNN A[i,j] = B[i,k] * C[k,h] * D[h,j]
/// B is CSR.
/// O(NI * NK * NH) + O(NI * NH * NJ)
void no_fusion(Matrix A,
               Matrix B,
               Matrix C,
               Matrix D,
               int NI,
               int NH,
               int NJ) {
    /// T[i, h] = B[i, k] * C[k, h]
    Matrix T[:,:] = 0;
    A[:,:] = 0;
    for (int i = 0; i < NI; ++i) {
        int k_loc_start = B.rowptr[i];
        int k_loc_bound = B.rowptr[i + 1];
        for (int k_loc = k_loc_start; k_loc < k_loc_bound; ++k_loc) {
            int k = B.col_id[k_loc];
            for (int h = 0; h < NH; ++h) {
                T[i][h] += B.val[k_loc] * C[k][h];
            }
        }
    }

    /// A[i, j] = T[i, h] * D[h, j]
    for (int i = 0; i < NI; ++i) {
        for (int h = 0; h < NH; ++h) {
            for (int j = 0; j < NJ; ++j) {
                A[i][j] += T[i][h] * D[h][j];
            }
        }
    }
}

/// O(NI * (NK * NH + NH * NJ))

void fusion(Matrix A,
            Matrix B,
            Matrix C,
            Matrix D,
            int NI,
            int NH,
            int NJ) {
    for (int i = 0; i < NI; ++i) {
        Vector T[:] = 0;

        int k_loc_start = B.rowptr[i];
        int k_loc_bound = B.rowptr[i + 1];
        for (int k_loc = k_loc_start; k_loc < k_loc_bound; ++k_loc) {
            int k = B.col_id[k_loc];
            for (int h = 0; h < NH; ++h) {
                T[h] += B.val[k_loc] * C[k][h];
            }
        }

        for (int h = 0; h < NH; ++h) {
            for (int j = 0; j < NJ; ++j) {
                A[i][j] += T[h] * D[h][j];
            }
        }
    }
}