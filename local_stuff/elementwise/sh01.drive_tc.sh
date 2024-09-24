ulimit -s unlimited

names=(\
"bcsstk17" \
"bcsstk29" \
"pdb1HYS" \
"rma10" \
"cant" \
"consph" \
"pwtk" \
"shipsec1" \
"cop20k_A" \
"scircuit" \
"mac_econ_fwd500" \
)

dir="/Users/peng599/Library/CloudStorage/OneDrive-PNNL/Documents/Datasets"

for name in "${names[@]}"; do
    echo ""
    echo "Go to name ${name}"
    filename="${dir}/${name}/${name}.unweighted.mtx"
    export SPARSE_FILE_NAME0="${filename}"
    export SPARSE_FILE_NAME1="${filename}"
    python py01.triangle_counting.py "${filename}"
    bash run01.run_each_step.sh dialects/triangleCount_SandiaLL.ta
    bash run01.run_each_step.sh dialects/triangleCount_SandiaLL_wMasking.ta
done