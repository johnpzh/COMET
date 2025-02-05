import sys
import time
import argparse
from scipy.io import mmread
import numpy as np


def sddmm(name: str):
    B = mmread(name).tocsr()
    NI, NJ = B.shape
    # print(B)
    NK = 4
    C = np.full((NI, NK), 1.2)
    D = np.full((NK, NJ), 3.4)
    A = np.zeros((NI, NJ))
    T = np.zeros((NI, NJ))

    A = B.multiply(np.dot(C, D))
    print(A)



if __name__ == "__main__":
    parser = argparse.ArgumentParser("sddmm python implementation")
    parser.add_argument("dataset", type=str, help="matrix market (mtx) dataset path")
    if len(sys.argv) == 1:
        parser.print_help(sys.stderr)
        sys.exit(-1)
    args = parser.parse_args()
    name = args.dataset

    start_time = time.perf_counter()

    sddmm(name)

    end_time = time.perf_counter()
    print(f"exe_time(s): {end_time - end_time:.6f}")

