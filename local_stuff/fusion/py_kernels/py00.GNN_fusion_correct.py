import sys
import scipy.io
import scipy.sparse as sp
import argparse
import numpy as np

def make_matrix(num_row, num_col, val=0):
    a = [ [val for _ in range(num_col)] for _ in range(num_row) ]
    return a

def print_matrix(mtx):
    for i in range(len(mtx)):
        for j in range(len(mtx[i])):
            print(f"{mtx[i][j]} ", end="")
        print("")



def baseline(B: sp.csr_matrix, C, D, A, T,
                NI, NK, NH, NJ):
    # C = np.full((NK, NH), 1.2)
    # D = np.full((NH, NJ), 3.4)
    # C = np.array(C)
    # D = np.array(D)
    A = B @ C @ D
    print(A)

def no_fusion(B: sp.csr_matrix, C, D, A, T,
                NI, NK, NH, NJ):

    for h in range(NH):
        for i in range(NI):
            k_loc_start = B.indptr[i]
            k_loc_bound = B.indptr[i + 1]
            for k_loc in range(k_loc_start, k_loc_bound):
                k = B.indices[k_loc]
                T[i][h] += B.data[k_loc] * C[k][h]

    for h in range(NH):
        for i in range(NI):
            for j in range(NJ):
                A[i][j] += T[i][h] * D[h][j]

    print(A)


def partial_fusion(B: sp.csr_matrix, C, D, A, T,
                    NI, NK, NH, NJ):

    for h in range(NH):
        for i in range(NI):
            k_loc_start = B.indptr[i]
            k_loc_bound = B.indptr[i + 1]
            for k_loc in range(k_loc_start, k_loc_bound):
                k = B.indices[k_loc]
                T[i] += B.data[k_loc] * C[k][h]
        for i in range(NI):
            for j in range(NJ):
                A[i][j] += T[i] * D[h][j]
            T[i] = 0.0
        # T.fill(0.0)

    print(A)


def partial_fusion_2D(B: sp.csr_matrix, C, D, A, T,
                    NI, NK, NH, NJ):

    for h in range(NH):
        for i in range(NI):
            k_loc_start = B.indptr[i]
            k_loc_bound = B.indptr[i + 1]
            for k_loc in range(k_loc_start, k_loc_bound):
                k = B.indices[k_loc]
                T[i][h] += B.data[k_loc] * C[k][h]
        for i in range(NI):
            for j in range(NJ):
                A[i][j] += T[i][h] * D[h][j]

    print(A)


def partial_fusion_v2(B: sp.csr_matrix, C, D, A, t,
                    NI, NK, NH, NJ):

    for h in range(NH):
        for i in range(NI):
            for k_loc in range(B.indptr[i], B.indptr[i + 1]):
                k = B.indices[k_loc]
                t += B.data[k_loc] * C[k][h]
            for j in range(NJ):
                A[i][j] += t * D[h][j]
            t = 0.0

    print(A)


def do_compare(csr_matrix):
    B = csr_matrix
    NI, NK = B.shape
    NH = 4
    NJ = 4
    
    C = np.full((NK, NH), 1.2)
    D = np.full((NH, NJ), 3.4)
    A = np.zeros((NI, NJ))
    T = np.zeros((NI, NH))

    print(f"Baseline:")
    baseline(B, C, D, A, T,
                NI, NK, NH, NJ)
    A.fill(0.0)
    
    print(f"\nNo Fusion:")
    no_fusion(B, C, D, A, T,
                NI, NK, NH, NJ)
    A.fill(0.0)

    print(f"\nPartial Fusion")
    T = np.zeros((NI))
    partial_fusion(B, C, D, A, T,
                    NI, NK, NH, NJ)
    A.fill(0.0)

    print(f"\nPartial Fusion 2D-T")
    T = np.zeros((NI, NH))
    partial_fusion_2D(B, C, D, A, T,
                    NI, NK, NH, NJ)
    A.fill(0.0)

    print(f"\nPartial Fusion V2")
    # T = np.zeros((NI))
    t = 0.0
    partial_fusion_v2(B, C, D, A, t,
                    NI, NK, NH, NJ)
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
