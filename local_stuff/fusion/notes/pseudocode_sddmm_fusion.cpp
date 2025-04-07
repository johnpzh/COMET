/// SDDMM kernel A = B .* (C * D)
/// A[i, j] = B[i, j] .* (C[i, k] * D[k, j])
/// B is sparse.
/// T[i, j] = C[i, k] * D[k, j];
/// A[i, j] = B[i, j] .* T[i, j];

void no_fusion_sddmm() 
{
    for (i = 0 to NI) {
        for (k = 0 to NK) {
            for (j = 0 to NJ) {
                T[i][j] += C[i][k] * D[k][j];
            }
        }
    }

    for (i = 0 to NI) {
        for (jB = B.rowPtr[i] to B.rowPtr[i + 1]) {
            j = B.colId[jB];
            A[i][j] += B.data[jB] * T[i][j];
        }
    }
}

void partial_fusion_sddmm_2() 
{
    for (i = 0 to NI) {
        for (k = 0 to NK) {
            for (jB = B.rowPtr[i] to B.rowPtr[i + 1]) {
                j = B.colId[jB];
                T[j] += C[i][k] * D[k][j];  /// No need for jT
            }
        }

        for (jB = B.rowPtr[i] to B.rowPtr[i + 1]) {
            j = B.colId[jB];
            A[i][j] += B.data[jB] * T[j];
            T[j] = 0;   /// Reset, Option 1
        }

        T = 0; /// Reset, Option 2
    }
}

void partial_fusion_sddmm_1() 
{
    for (i = 0 to NI) {
        for (k = 0 to NK) {
            jT = 0;  /// jT is new
            for (jB = B.rowPtr[i] to B.rowPtr[i + 1]) {
                j = B.colId[jB];
                T[jT] += C[i][k] * D[k][j];
                jT += 1;
            }
        }

        jT = 0;
        for (jB = B.rowPtr[i] to B.rowPtr[i + 1]) {
            j = B.colId[jB];
            A[i][j] += B.data[jB] * T[jT];
            T[jT] = 0;   /// Reset
            jT += 1;
        }
    }
}

