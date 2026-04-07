import os
import sys
import argparse
import time
from scipy.io import mmread
import pandas as pd

MATRIX = [
    "bcsstk17",
    "scircuit",
    "rma10",
    "cop20k_A",
    "shipsec1",
    "cant",
    "pdb1HYS",
    "consph",
    "com-LiveJournal",
    "com-Orkut",
    "soc-Pokec",
    "wikipedia-20070206",
    "Serena",
    "audikw_1",
    "ljournal-2008",
    "Long_Coup_dt6",
    "cage15",
    "hollywood-2009",
    "vas_stokes_4M",
    "indochina-2004",
    "mycielskian19",
]

def measure_sparse(base_dir: str):
    matrix_list = []
    ratio_list = []
    for mtx in MATRIX:
        matrix_list.append(mtx)
        filename = os.path.join(base_dir, f"{mtx}", f"{mtx}.mtx")
        matrix = mmread(filename).tocsr()
        assert matrix.size == len(matrix.indices), "Should be always true."
        num_rows, num_cols = matrix.shape

        last_index = matrix.indices[0]
        #------------------------------------------
        # Ratio of Different Consecutive Col-Index
        #------------------------------------------
        # count_diff = 0
        # for index in matrix.indices[1:]:
        #     if not (index == last_index or index == last_index + 1):
        #         count_diff += 1
        #     last_index = index
        # ratio_diff = count_diff / (matrix.size - 1)

        #---------------------------------------
        # Average Ratio of Col-Index Difference
        #---------------------------------------
        diff_amount = 0
        for index in matrix.indices[1:]:
            diff_amount += abs(last_index - index) / (num_cols - 1)
            last_index = index
        ratio_diff = diff_amount / (matrix.size - 1)
        #-----
        # End
        #-----

        ratio_list.append(ratio_diff)
        print(f"mtx: {mtx}, ratio: {ratio_diff}")

    data = {
        "matrix": matrix_list,
        "ratio_of_diff_colid": ratio_list,
    }
    df = pd.DataFrame(data)
    output_file = "output.measure_sparse.csv"
    df.to_csv(output_file, index=False)
    print(f"Saved {output_file}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("data_dir", type=str, help="Matrix directory")

    if len(sys.argv) == 1:
        parser.print_help(sys.stderr)
        sys.exit(-1)
    args = parser.parse_args()
    data_dir = args.data_dir

    tt_time_start = time.perf_counter()

    measure_sparse(base_dir=data_dir)

    tt_time_end = time.perf_counter()
    print(f"total_exe_time(s): {tt_time_end - tt_time_start:.6f}")
