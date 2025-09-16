for (row_id = 0 to NI) {
    A_start = A_pos[row_id];
    A_bound = A_pos[row_id + 1];
    B_start = B_pos[row_id];
    B_bound = B_pos[row_id + 1];

    A_i = A_start;
    B_i = B_start;

    C_i = C_pos[row_id];
    while (A_i < A_bound && B_i < B_bound) {
        crd1 = A_crd[A_i];
        crd2 = B_crd[B_i];
        crd_min = min(crd1, crd2);

        if (crd1 == crd2) {
            val1 = A_val[A_i];
            val2 = B_val[B_i];
            C_crd[C_i] = crd_min;
            C_val[C_i] = val1 * val2;
            C_i += 1;
        }
        A_i += (crd1 == crd_min);
        B_i += (crd2 == crd_min);
    }
}