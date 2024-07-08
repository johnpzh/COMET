

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