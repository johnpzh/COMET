import sys
import argparse
import time

import pandas as pd

EVENTS=[
    # "cache-references",
    # "cache-misses",
    "L1-dcache-loads",
    "L1-dcache-load-misses",
    "l2_request.all",
    "l2_request.miss",
    "l2_rqsts.all_demand_data_rd",
    "l2_rqsts.demand_data_rd_miss",
    # "l2_rqsts.demand_data_rd_hit",
    "LLC-loads",
    "LLC-load-misses",
    # "LLC-stores",
    # "LLC-store-misses",
    "l2_rqsts.all_hwpf",
    "l2_rqsts.hwpf_miss",
    "l2_rqsts.swpf_hit",
    "l2_rqsts.swpf_miss",
    "cycles",
    "instructions",
    "mem_inst_retired.all_loads"
]

TMA_MEMORY_BOUND_GROUP=[
    "tma_l1_bound",
    "tma_l2_bound",
    "tma_l3_bound",
    "tma_dram_bound"
]

MATRICES_NAMES=[
    "bcsstk17",
    "cant",
    "com-LiveJournal",
    "com-Orkut",
    "consph",
    "cop20k_A",
    "pdb1HYS",
    "rma10",
    "scircuit",
    "shipsec1"
]

def one_file(filename):
    print(f"\nfilename: {filename}")
    table = {}
    with open(filename) as fin:
        for line in fin:
            for event in EVENTS:
                if event in line:
                    number = int(line.split()[0].replace(",", ""))
                    table[event] = number
            for mem_bound in TMA_MEMORY_BOUND_GROUP:
                if mem_bound in line:
                    number = float(line.split()[-4])
                    table[mem_bound] = number / 100.0 # perf outputs percentage

    return table


if __name__ == "__main__":

    TT_TIME_START = time.perf_counter()
    # parser = argparse.ArgumentParser(f"{sys.argv[0]}")
    # parser.add_argument("input_file", type=str, help="perf stat output file")
    #
    # if len(sys.argv) == 1:
    #     parser.print_help(sys.stderr)
    #     sys.exit(-1)
    # args = parser.parse_args()
    RAPID_BASE_NAME="mult_spmm_CSRxDense.perf.rapid.mtx-"
    DRAM_BASE_NAME="mult_spmm_CSRxDense.perf.dram.mtx-"

    matrix_list = []

    # dram_cache_miss_rate_list = []
    dram_l1_dcache_miss_rate_list = []
    dram_LLC_load_miss_rate_list = []
    dram_l2_request_miss_rate_list = []
    dram_l2_data_rd_miss_rate_list = []
    dram_l2_hwpf_miss_rate_list = []
    dram_l2_swpf_miss_rate_list = []
    dram_instr_per_cycle_list = []
    dram_load_per_instr_list = []
    dram_tma_dram_bound_list = []
    dram_tma_l1_bound_list = []
    dram_tma_l2_bound_list = []
    dram_tma_l3_bound_list = []


    # rapid_cache_miss_rate_list = []
    rapid_l1_dcache_miss_rate_list = []
    rapid_LLC_load_miss_rate_list = []
    rapid_l2_request_miss_rate_list = []
    rapid_l2_data_rd_miss_rate_list = []
    rapid_l2_hwpf_miss_rate_list = []
    rapid_l2_swpf_miss_rate_list = []
    rapid_instr_per_cycle_list = []
    rapid_load_per_instr_list = []
    rapid_tma_dram_bound_list = []
    rapid_tma_l1_bound_list = []
    rapid_tma_l2_bound_list = []
    rapid_tma_l3_bound_list = []

    # size = 16
    # for _ in range(4, 15):
    # for _ in range(4, 14):
    for mtx in MATRICES_NAMES:
        matrix_list.append(mtx)
        rapid_log_file=f"{RAPID_BASE_NAME}{mtx}.log"
        dram_log_file=f"{DRAM_BASE_NAME}{mtx}.log"
        rapid_table=one_file(rapid_log_file)
        dram_table=one_file(dram_log_file)

        # dram_cache_miss_rate_list.append(dram_table["cache-misses"] /
        #                                  dram_table["cache-references"])
        dram_l1_dcache_miss_rate_list.append(dram_table["L1-dcache-load-misses"] /
                                             dram_table["L1-dcache-loads"])
        dram_l2_request_miss_rate_list.append(dram_table["l2_request.miss"] /
                                              dram_table["l2_request.all"])
        dram_l2_data_rd_miss_rate_list.append(dram_table["l2_rqsts.demand_data_rd_miss"] /
                                              dram_table["l2_rqsts.all_demand_data_rd"])
        dram_LLC_load_miss_rate_list.append(dram_table["LLC-load-misses"] /
                                            dram_table["LLC-loads"])
        dram_l2_hwpf_miss_rate_list.append(dram_table["l2_rqsts.hwpf_miss"] /
                                           dram_table["l2_rqsts.all_hwpf"])
        dram_l2_swpf_miss_rate_list.append(dram_table["l2_rqsts.swpf_miss"] /
                                           (dram_table["l2_rqsts.swpf_miss"] + dram_table["l2_rqsts.swpf_hit"]))
        dram_instr_per_cycle_list.append(dram_table["instructions"] /
                             dram_table["cycles"])
        dram_load_per_instr_list.append(dram_table["mem_inst_retired.all_loads"] /
                                        dram_table["instructions"])
        dram_tma_l1_bound_list.append(dram_table["tma_l1_bound"])
        dram_tma_l2_bound_list.append(dram_table["tma_l2_bound"])
        dram_tma_l3_bound_list.append(dram_table["tma_l3_bound"])
        dram_tma_dram_bound_list.append(dram_table["tma_dram_bound"])

        # rapid_cache_miss_rate_list.append(rapid_table["cache-misses"] /
        #                                   rapid_table["cache-references"])
        rapid_l1_dcache_miss_rate_list.append(rapid_table["L1-dcache-load-misses"] /
                                              rapid_table["L1-dcache-loads"])
        rapid_l2_request_miss_rate_list.append(rapid_table["l2_request.miss"] /
                                               rapid_table["l2_request.all"])
        rapid_l2_data_rd_miss_rate_list.append(rapid_table["l2_rqsts.demand_data_rd_miss"] /
                                               rapid_table["l2_rqsts.all_demand_data_rd"])
        rapid_LLC_load_miss_rate_list.append(rapid_table["LLC-load-misses"] /
                                             rapid_table["LLC-loads"])
        rapid_l2_hwpf_miss_rate_list.append(rapid_table["l2_rqsts.hwpf_miss"] /
                                            rapid_table["l2_rqsts.all_hwpf"])
        rapid_l2_swpf_miss_rate_list.append(rapid_table["l2_rqsts.swpf_miss"] /
                                            (rapid_table["l2_rqsts.swpf_miss"] + rapid_table["l2_rqsts.swpf_hit"]))
        rapid_instr_per_cycle_list.append(rapid_table["instructions"] /
                             rapid_table["cycles"])
        rapid_load_per_instr_list.append(rapid_table["mem_inst_retired.all_loads"] /
                                    rapid_table["instructions"])
        rapid_tma_l1_bound_list.append(rapid_table["tma_l1_bound"])
        rapid_tma_l2_bound_list.append(rapid_table["tma_l2_bound"])
        rapid_tma_l3_bound_list.append(rapid_table["tma_l3_bound"])
        rapid_tma_dram_bound_list.append(rapid_table["tma_dram_bound"])

        # size *= 2

    # Save to csv
    data = {
        "matrix": matrix_list,
        # "dram_cache_miss_rate": dram_cache_miss_rate_list,
        # "rapid_cache_miss_rate": rapid_cache_miss_rate_list,
        "dram_l1_dcache_miss_rate": dram_l1_dcache_miss_rate_list,
        "rapid_l1_dcache_miss_rate": rapid_l1_dcache_miss_rate_list,
        "dram_l2_request_miss_rate": dram_l2_request_miss_rate_list,
        "rapid_l2_request_miss_rate": rapid_l2_request_miss_rate_list,
        "dram_l2_data_rd_miss_rate": dram_l2_data_rd_miss_rate_list,
        "rapid_l2_data_rd_miss_rate": rapid_l2_data_rd_miss_rate_list,
        "dram_LLC_load_miss_rate": dram_LLC_load_miss_rate_list,
        "rapid_LLC_load_miss_rate": rapid_LLC_load_miss_rate_list,
        "dram_l2_hwpf_miss_rate": dram_l2_hwpf_miss_rate_list,
        "rapid_l2_hwpf_miss_rate": rapid_l2_hwpf_miss_rate_list,
        "dram_l2_swpf_miss_rate": dram_l2_swpf_miss_rate_list,
        "rapid_l2_swpf_miss_rate": rapid_l2_swpf_miss_rate_list,
        "dram_instr_per_cycle": dram_instr_per_cycle_list,
        "rapid_instr_per_cycle": rapid_instr_per_cycle_list,
        "dram_load_per_instr": dram_load_per_instr_list,
        "rapid_load_per_instr": rapid_load_per_instr_list,
        "dram_tma_l1_bound": dram_tma_l1_bound_list,
        "rapid_tma_l1_bound": rapid_tma_l1_bound_list,
        "dram_tma_l2_bound": dram_tma_l2_bound_list,
        "rapid_tma_l2_bound": rapid_tma_l2_bound_list,
        "dram_tma_l3_bound": dram_tma_l3_bound_list,
        "rapid_tma_l3_bound": rapid_tma_l3_bound_list,
        "dram_tma_dram_bound": dram_tma_dram_bound_list,
        "rapid_tma_dram_bound": rapid_tma_dram_bound_list
    }
    df = pd.DataFrame(data)
    output_file = "mult_spmm_CSRxDense.perf.all-collect.perf_event.csv"
    df.to_csv(output_file, index=False)
    print()
    print(df.to_string())
    print(f"\nSaved to {output_file}")

    TT_TIME_END = time.perf_counter()
    print(f"\nTT_EXE_TIME(S): {TT_TIME_END - TT_TIME_START}")