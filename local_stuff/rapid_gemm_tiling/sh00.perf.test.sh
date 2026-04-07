
# set -euxo pipefail
set -u

# Number of Threads
export OMP_NUM_THREADS=1

#
# Test if this machine is running macOS
if [ "$(uname -s)" = "Linux" ]; then
  export EXT="so"
  ulimit -s unlimited  # Set stack size as unlimited
elif [ "$(uname -s)" = "Darwin" ]; then
  # macOS
  export EXT="dylib"
else
  echo "$(uname -s) is unknown."
  exit -1
fi

# Lowering Options
comet_opt="../../build/bin/comet-opt"
llvm_options="--convert-ta-to-it --convert-to-loops --convert-to-llvm"

# Runner Options
mlir_cpu_runner="../../llvm/build/bin/mlir-cpu-runner"
mlir_cpu_runner_options="-O3 -e main -entry-point-result=void"
mlir_cpu_runner_shared_libs="\
../../build/lib/libcomet_runner_utils.${EXT},\
../../llvm/build/lib/libomp.${EXT},\
../../llvm/build/lib/libmlir_c_runner_utils.${EXT},\
/share/micron/rapid/install/gcc-debug/lib64/librapid.${EXT}\
"

EVENTS="\
cache-references,\
cache-misses,\
LLC-loads,\
LLC-load-misses,\
LLC-stores,\
LLC-store-misses,\
l2_request.all,\
l2_request.miss,\
l2_rqsts.all_demand_data_rd,\
l2_rqsts.demand_data_rd_miss,\
l2_rqsts.demand_data_rd_hit,\
l2_rqsts.all_hwpf,\
l2_rqsts.hwpf_miss,\
l2_rqsts.swpf_hit,\
l2_rqsts.swpf_miss\
"

src_llvm="IRs/mult_dense_matrix.perf.default.size16.ta.LLVM.mlir"

COMMAND="${mlir_cpu_runner} ${mlir_cpu_runner_options} -shared-libs=${mlir_cpu_runner_shared_libs} ${src_llvm}"

set -x
perf stat -e "${EVENTS}" ${COMMAND}
set +x