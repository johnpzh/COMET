/// GNN kernel A = B * C * D
/// A[i, j] = B[i, k] * C[k, h] * D[h, j]
/// B is sparse
/// T[i, h] = B[i, k] * C[k, h];
/// A[i, j] = T[i, h] * D[h, j];

/// ---------------------------- ///
/// Generated Index Tree dialect
/// ---------------------------- ///
void no_fution_index_tree()
{
    for (h = 0 to NH) {
        for (i = 0 to NI) {
            // for (k = 0 to NK) {
            for (kB = B.rowPtr[i] to B.rowPtr[i + 1]) {
                k = B.colid[kB];
                T[i, h] += B.data[kB] * C[k, h];
            }
        }
    }

    for (h = 0 to NH) {
        for (i = 0 to NI) {
            for (j = 0 to NJ) {
                A[i, j] += T[i, h] * D[h, j];
            }
        }
    }
}

/// NH * (NI * NK + NI * NJ) = NH * NI * (NK + NJ)
void partial_fusion_index_tree_v1()
{
    for (h = 0 to NH) {
        for (i = 0 to NI) {
            for (kB = B.rowPtr[i] to B.rowPtr[i + 1]) {
                k = B.colid[kB];
                T[i] += B[i, k] * C[k, h];
            }
        }
        for (i = 0 to NI) {
            for (j = 0 to NJ) {
                A[i, j] += T[i] * D[h, j];
            }
            T[i] = 0;  /// Option 1
        }
        // T = 0;  /// Option 2
        for (k = 0 to NI) {
            T[k] = 0;
        }
    }
}

/// NH * NI * (NK + NJ)
void partial_fusion_index_tree_v2()
{
    for (h = 0 to NH) {
        for (i = 0 to NI) {
            for (k = 0 to NK) {
                t += B[i, k] * C[k, h];
            }
            for (j = 0 to NJ) {
                A[i, j] += t * D[h, j];
            }
            t = 0;
        }
    }
}


/// ----------------- ///
/// Original in paper
/// A[i, j] = B[i, k] * C[k, h] * D[h, j]
/// ----------------- ///
void no_fution_origin()
{
    for (i = 0 to NI) {
        for (k = 0 to NK) {
            for (h = 0 to NH) {
                T[i, h] += B[i, k] * C[k, h];
            }
        }
    }

    for (i = 0 to NI) {
        for (h = 0 to NH) {
            for (j = 0 to NJ) {
                A[i, j] += T[i, h] * D[h, j];
            }
        }
    }
}

void partial_fution_origin()
{
    for (i = 0 to NI) {
        for (k = 0 to NK) {
            for (h = 0 to NH) {
                T[h] += B[i, k] * C[k, h];
            }
        }

        for (h = 0 to NH) {
            for (j = 0 to NJ) {
                A[i, j] += T[h] * D[h, j];
            }
        }
    }
}