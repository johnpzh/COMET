import os
import sys
import pandas as pd
import numpy as np

NAMES = [
    "bcsstk17",
    "pdb1HYS",
    "rma10",
    "cant",
    "consph",
    "pwtk",
    "shipsec1",
    "cop20k_A",
    "scircuit",
    "mac_econ_fwd500",
]

def extract_mean(filename: str):

    with open(filename, "r") as fin:
        numbers = []
        for line in fin:
            if line.startswith("ELAPSED_TIME = "):
                value = float(line.split()[2])
                numbers.append(value)

        return np.mean(numbers)
    pass

if __name__ == "__main__":
    name_list = []
    no_fusion_no_paral_list = []
    fusion_no_paral_list = []
    no_fusion_paral_list = []
    fusion_paral_list = []
    for name in NAMES:
        name_list.append(name)
        filename = f"output.{name}.no-fusion.no-parallel.log"
        no_fusion_no_paral_list.append(extract_mean(filename))
        filename = f"output.{name}.fusion.no-parallel.log"
        fusion_no_paral_list.append(extract_mean(filename))
        filename = f"output.{name}.no-fusion.parallel.log"
        no_fusion_paral_list.append(extract_mean(filename))
        filename = f"output.{name}.fusion.parallel.log"
        fusion_paral_list.append(extract_mean(filename))
    
    table = {
        "graphs": name_list,
        "no-fusion,no-paral": no_fusion_no_paral_list,
        "fusion,no-paral": fusion_no_paral_list,
        "no-fusion,paral": no_fusion_paral_list,
        "fusion,paral": fusion_paral_list,
    }

    df = pd.DataFrame(data=table)
    print(df)
    df.to_csv(f"output.{sys.argv[0]}.csv", index=False)