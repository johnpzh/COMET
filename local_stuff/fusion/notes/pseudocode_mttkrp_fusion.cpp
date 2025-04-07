/// MTTKRP 3D
/// A[i, r] = X[i, j, k] * C[k, r] * B[j, r]; 
/// X is sparse
/// T[i, j, r] = X[i, j, k] * C[k, r]
/// A[i, r] = T[i, j, r] * B[j, r];


void no_fusion_mttkrp_3D()
{
    for (i = 0 to NI) {
        for (j = 0 to NJ) {
            for (k = 0 to NK) {
                for (r = 0 to NR) {
                    T[i][j][r] += X[i][j][k] * C[k][r];
                }
            }
        }
    }

    for (i to 0 to NI) {
        for (j = 0 to NJ) {
            for (r = 0 to NR) {
                A[i][r] += T[i][j][r] * B[j][r];
            }
        }
    }
}

void TACO_fusion_mttkrp_3D()
{
    for (i = 0 to NI) {
        for (j = 0 to NJ) {
            for (k = 0 to NK) {
                for (r = 0 to NR) {
                    A[i][r] += X[i][j][k] * B[j][r] * C[k][r];
                }
            }
        }
    }
}

void partial_fusion_mttkrp_3D()
{
    for (i = 0 to NI) {
        for (j = 0 to NJ) {
            for (k = 0 to NK) {
                for (r = 0 to NR) {
                    T[r] += X[i][j][k] * C[k][r];
                }
            }

            for (r = 0 to NR) {
                A[i][r] += T[r] * B[j][r];
                T[r] = 0;   /// Reset
            }
        }
    }
}

/// MTTKRP 4D
/// A[i, r] = X[i, j, k, l] * D[l, r] * C[k, r] * B[j, r]
/// X is sparse
/// T[i, j, k, r] = X[i, j, k, l] * D[l, r]
/// U[i, j, r] = T[i, j, k, r] * C[k, r]
/// A[i, r] = U[i, j, r] * B[j, r]
void no_fusion_mttkrp_4D()
{
    for (i = 0 to NI) {
        for (j = 0 to NJ) {
            for (k = 0 to NK) {
                for (l = 0 to NL) {
                    for (r = 0 to NR) {
                        T[i][j][k][r] += X[i][j][k][l] * D[l][r];
                    }
                }
            }
        }
    }
    for (i = 0 to NI) {
        for (j = 0 to NJ) {
            for (k = 0 to NK) {
                for (r = 0 to NR) {
                    U[i][j][r] += T[i][j][k][r] * C[k][r];
                }
            }
        }
    }
    for (i = 0 to NI) {
        for (j = 0 to NJ) {
            for (r = 0 to NR) {
                A[i][r] += U[i][j][r] * B[j][r];
            }
        }
    }
}

void partial_fusion_mttkrp_4D_step_1()
{
    for (i = 0 to NI) {
        for (j = 0 to NJ) {
            for (k = 0 to NK) {
                for (l = 0 to NL) {
                    for (r = 0 to NR) {
                        T[r] += X[i][j][k][l] * D[l][r];
                    }
                }
                for (r = 0 to NR) {
                    U[i][j][r] += T[r] * C[k][r];
                    T[r] = 0;
                }
            }
        }
    }
    for (i = 0 to NI) {
        for (j = 0 to NJ) {
            for (r = 0 to NR) {
                A[i][r] += U[i][j][r] * B[j][r];
            }
        }
    }
}

void partial_fusion_mttkrp_4D_step_2()
{
    for (i = 0 to NI) {
        for (j = 0 to NJ) {
            for (k = 0 to NK) {
                for (l = 0 to NL) {
                    for (r = 0 to NR) {
                        T[r] += X[i][j][k][l] * D[l][r];
                    }
                }
                for (r = 0 to NR) {
                    U[r] += T[r] * C[k][r];
                    T[r] = 0;
                }
            }
            for (r = 0 to NR) {
                A[i][r] += U[r] * B[j][r];
                U[r] = 0;
            }
        }
    }
}

void TACO_fusion_mttkrp_4D()
{
    for (i = 0 to NI) {
        for (j = 0 to NJ) {
            for (k = 0 to NK) {
                for (l = 0 to NL) {
                    for (r = 0 to NR) {
                        A[i][r] += X[i][j][k][l] * B[j][r] * C[k][r] * D[l][r];
                    }
                }
            }
        }
    }
}

void partial_fusion_mttkrp_4D()
{
    for (i = 0 to NI) {
        for (j = 0 to NJ) {
            for (k = 0 to NK) {
                for (l = 0 to NL) {
                    for (r = 0 to NR) {
                        T1[r] += X[i][j][k][l] * D[l][r];
                    }
                }

                for (r = 0 to NR) {
                    T2[r] += T1[r] * C[k][r];
                    T1[r] = 0;  /// Reset
                }
            }

            for (r = 0 to NR) {
                A[i][r] += T2[r] * B[j][r];
                T2[r] = 0;  /// Reset
            }
        }
    }
}

// void partial_fusion_mttkrp_4D_v2()
// {
//     for (i = 0 to NI) {
//         for (j = 0 to NJ) {
//             for (k = 0 to NK) {
//                 for (l = 0 to NL) {
//                     for (r = 0 to NR) {
//                         T[i][j][k][r] += X[i][j][k][l] * D[l][r];
//                     }
//                 }
//             }
//         }
//     }
//     for (i = 0 to NI) {
//         for (j = 0 to NJ) {
//             for (k = 0 to NK) {
//                 for (r = 0 to NR) {
//                     U[r] += T[i][j][k][r] * C[k][r];
//                 }
//             }
//             for (r = 0 to NR) {
//                 A[i][r] += U[r] * B[j][r];
//             }
//         }
//     }
// }

// void partial_fusion_mttkrp_4D_v2()
// {
//     for (i = 0 to NI) {
//         for (j = 0 to NJ) {
//             for (k = 0 to NK) {
//                 for (l = 0 to NL) {
//                     for (r = 0 to NR) {
//                         T[r] += X[i][j][k][l] * D[l][r];
//                     }
//                 }
//                 for (r = 0 to NR) {
//                     U[r] += T[r] * C[k][r];
//                 }
//             }
//             for (r = 0 to NR) {
//                 A[i][r] += U[r] * B[j][r];
//             }
//         }
//     }
// }