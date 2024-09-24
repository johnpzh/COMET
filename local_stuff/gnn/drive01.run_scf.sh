NAMES=(\
"bcsstk17" \
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


for name in "${NAMES[@]}"; do
  echo "go to ${name} ... "
  export SPARSE_FILE_NAME0="/qfs/projects/cenate/tmp/zhen.peng/datasets/suitesparse/${name}/${name}.mtx"
  export SPARSE_FILE_NAME1="/qfs/projects/cenate/tmp/zhen.peng/datasets/suitesparse/${name}/${name}.mtx"
  bash run07.run_scf.no_file_name.sh dialects/gnn.large.ta.no-fusion.no-parallel.SCF.mlir &> "output.${name}.no-fusion.no-parallel.log"
  bash run07.run_scf.no_file_name.sh dialects/gnn.large.ta.fusion.no-parallel.SCF.mlir &> "output.${name}.fusion.no-parallel.log"
  bash run07.run_scf.no_file_name.sh dialects/gnn.large.ta.no-fusion.parallel.SCF.mlir &> "output.${name}.no-fusion.parallel.log"
  bash run07.run_scf.no_file_name.sh dialects/gnn.large.ta.fusion.parallel.SCF.mlir &> "output.${name}.fusion.parallel.log"
done

