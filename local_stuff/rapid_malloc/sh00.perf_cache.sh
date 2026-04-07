events="cache-misses,LLC-load-misses,LLC-loads,LLC-store-misses,LLC-stores,page-faults"
# command=" bash run03.run_llvm_with_sparse_matrix.sh dialect/mult_dense_matrix.perf.default.ta.LLVM.mlir"

set -x
perf stat -e "${events}" bash run03.run_llvm_with_sparse_matrix.sh dialect/mult_dense_matrix.perf.default.ta.LLVM.mlir
set +x