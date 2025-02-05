import sys
import scipy.io
import scipy.sparse as sp
import argparse
import numpy as np
import copy


def baseline(B: sp.csr_matrix, C, D, A, T,
                NI, NJ, NK):
    A = B.multiply(C @ D)
    print(A.todense())

def no_fusion(B: sp.csr_matrix, C, D, A, T,
                NI, NJ, NK):

    for i in range(NI):
        for k in range(NK):
            for j in range(NJ):
                T[i][j] += C[i][k] * D[k][j]

    for i in range(NI):
        for j_loc in range(B.indptr[i], B.indptr[i + 1]):
            j = B.indices[j_loc]
            # A[i][j] += B.data[j_loc] * T[i][j]
            A.data[j_loc] += B.data[j_loc] * T[i][j]

    T.fill(0.0)
    print(A.todense())

def no_fusion_2(B: sp.csr_matrix, C, D, A, T,
                NI, NJ, NK):

    for i in range(NI):
        for j in range(NJ):
            for k in range(NK):
                T[i][j] += C[i][k] * D[k][j]

    for i in range(NI):
        for j_loc in range(B.indptr[i], B.indptr[i + 1]):
            j = B.indices[j_loc]
            # A[i][j] += B.data[j_loc] * T[i][j]
            A.data[j_loc] += B.data[j_loc] * T[i][j]

    T.fill(0.0)
    print(A.todense())



def partial_fusion(B: sp.csr_matrix, C, D, A, T,
                    NI, NJ, NK):

    for i in range(NI):
        for k in range(NK):
            jT = 0
            for j_loc in range(B.indptr[i], B.indptr[i + 1]):
                j = B.indices[j_loc]
                T[jT] += C[i][k] * D[k][j]
                jT += 1
        jT = 0
        for j_loc in range(B.indptr[i], B.indptr[i + 1]):
            j = B.indices[j_loc]
            # A[i][j] += B.data[j_loc] * T[jT]
            A.data[j_loc] += B.data[j_loc] * T[jT]
            T[jT] = 0
            jT += 1

    print(A.todense())


def partial_fusion2(B: sp.csr_matrix, C, D, A, T,
                    NI, NJ, NK):

    for i in range(NI):
        for k in range(NK):
            for j_loc in range(B.indptr[i], B.indptr[i + 1]):
                j = B.indices[j_loc]
                T[j] += C[i][k] * D[k][j]

        for j_loc in range(B.indptr[i], B.indptr[i + 1]):
            j = B.indices[j_loc]
            # A[i][j] += B.data[j_loc] * T[j]
            A.data[j_loc] += B.data[j_loc] * T[j]
            T[j] = 0

    print(A.todense())


def partial_fusion3(B: sp.csr_matrix, C, D, A, T,
                    NI, NJ, NK):

    for i in range(NI):
        for k in range(NK):
            jT = 0
            for j_loc in range(B.indptr[i], B.indptr[i + 1]):
                j = B.indices[j_loc]
                T[jT] += C[i][k] * D[k][j]
                jT += 1
        jT = 0
        for j_loc in range(B.indptr[i], B.indptr[i + 1]):
            j = B.indices[j_loc]
            A[i][j] += B.data[j_loc] * T[jT]
            # A.data[j_loc] += B.data[j_loc] * T[jT]
            T[jT] = 0
            jT += 1

    print(A)


def partial_fusion_4(B: sp.csr_matrix, C, D, A, T,
                    NI, NJ, NK):

    for i in range(NI):
        for j_loc in range(B.indptr[i], B.indptr[i + 1]):
            j = B.indices[j_loc]
            for k in range(NK):
                T[i][j] += C[i][k] * D[k][j]
            A.data[j_loc] += B.data[j_loc] * T[i][j]
    
    T.fill(0.0)
    print(A.todense())


def partial_fusion_5(B: sp.csr_matrix, C, D, A, T,
                    NI, NJ, NK):

    t = 0
    for i in range(NI):
        for j_loc in range(B.indptr[i], B.indptr[i + 1]):
            j = B.indices[j_loc]
            for k in range(NK):
                t += C[i][k] * D[k][j]
            A.data[j_loc] += B.data[j_loc] * t
            t = 0
    
    T.fill(0.0)
    print(A.todense())


def do_compare(csr_matrix):
    B = csr_matrix
    NI, NJ = B.shape
    NK = 4
    
    C = np.full((NI, NK), 1.2)
    D = np.full((NK, NJ), 3.4)
    # A = np.zeros((NI, NJ))
    A = copy.deepcopy(B)
    A.data.fill(0.0)
    T = np.zeros((NI, NJ))

    print(f"Baseline:")
    baseline(B, C, D, A, T,
                NI, NJ, NK)
    A.data.fill(0.0)
    
    print(f"\nNo Fusion V2:")
    no_fusion_2(B, C, D, A, T,
                NI, NJ, NK)
    A.data.fill(0.0)

    print(f"\nPartial Fusion v4:")
    partial_fusion_4(B, C, D, A, T,
                NI, NJ, NK)
    A.data.fill(0.0)

    print(f"\nPartial Fusion v5:")
    partial_fusion_5(B, C, D, A, T,
                NI, NJ, NK)
    A.data.fill(0.0)

    ######################
    ######################
    print(f"\nNo Fusion:")
    no_fusion(B, C, D, A, T,
                NI, NJ, NK)
    A.data.fill(0.0)

    print(f"\nPartial Fusion")
    T = np.zeros((NI))
    partial_fusion(B, C, D, A, T,
                    NI, NJ, NK)
    A.data.fill(0.0)

    print(f"\nPartial Fusion V2")
    partial_fusion2(B, C, D, A, T,
                    NI, NJ, NK)
    A.data.fill(0.0)

    A = np.zeros((NI, NJ))
    print(f"\nPartial Fusion V3")
    partial_fusion3(B, C, D, A, T,
                    NI, NJ, NK)
    A.fill(0.0)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(f"{sys.argv[0]}")
    parser.add_argument("mtx_file", type=str, help="Import MTX file")

    if len(sys.argv) == 1:
        parser.print_help(sys.stderr)
        sys.exit(-1)
    args = parser.parse_args()

    filename = args.mtx_file
    csr_matrix = scipy.io.mmread(filename).tocsr()

    do_compare(csr_matrix)
