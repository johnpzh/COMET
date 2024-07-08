
#matrices_root="/Users/peng599/Documents/Datasets"
# matrices=("bcsstk17" "bcsstk29" "pdb1HYS" "cant" "rma10" "consph"
#           "shipsec1" "pwtk" "cop20k_A" "mac_econ_fwd500" "scircuit")
#matrices=("shipsec1" "pwtk" "cop20k_A" "mac_econ_fwd500" "scircuit")
matrices=("bcsstk17" "pdb1HYS" "rma10" "cant" "consph"
          "shipsec1" "cop20k_A" "scircuit"
          "com-LiveJournal" "com-Orkut")

ulimit -s unlimited

# set -x
for matrix in "${matrices[@]}"; do
    echo ""
    echo "#### ${matrix} ####"
#    bash scripts/sh4.verify_ta.workspace-opt.sh notes/triangle_counting.Burkhardt.ta dylib "${matrices_root}/${matrix}/${matrix}.mtx"
    bash scripts/sh1.verify_scf.sh debug/masked_SpGEMM.SCF.v5.bitmap+mark_array.mlir so "../../AE/data/${matrix}/${matrix}.mtx"
done

# set +x