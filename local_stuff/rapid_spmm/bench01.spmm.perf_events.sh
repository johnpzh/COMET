# set -euxo pipefail
set -u

# Perf Events
EVENTS="\
L1-dcache-loads,\
L1-dcache-load-misses,\
l2_request.all,\
l2_request.miss,\
l2_rqsts.all_demand_data_rd,\
l2_rqsts.demand_data_rd_miss,\
LLC-loads,\
LLC-load-misses,\
l2_rqsts.all_hwpf,\
l2_rqsts.hwpf_miss,\
l2_rqsts.swpf_hit,\
l2_rqsts.swpf_miss,\
cycles,\
instructions,\
mem_inst_retired.all_loads\
"

METRICS="\
tma_l1_bound,\
tma_l2_bound,\
tma_l3_bound,\
tma_dram_bound\
"

MATRICES_NAMES=(
  "bcsstk17"
  "cant"
  "com-LiveJournal"
  "com-Orkut"
  "consph"
  "cop20k_A"
  "pdb1HYS"
  "rma10"
  "scircuit"
  "shipsec1"
)

MATRICES_DIR="/home/peng599/Data/data"

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
#REPEAT=100

RAPID_BASE_NAME="mult_spmm_CSRxDense.perf.rapid.mtx-"
DRAM_BASE_NAME="mult_spmm_CSRxDense.perf.dram.mtx-"
output_dir="results.perf_events.$(date +%FT%T)"
mkdir -p "${output_dir}"
#total_out_file="${output_dir}/R.gemm.all-collect.$(date +%s).csv"
#echo "Matrix_size,DRAM(s),Rapid(s)"> "${total_out_file}"

# Dram allocator
input_ta="dialect/mult_spmm_CSRxDense.perf.default.ta"
basename=$(basename ${input_ta})
dram_src_llvm="IRs/${basename}.LLVM.mlir"
${comet_opt} ${llvm_options} ${input_ta} &> ${dram_src_llvm}

# Rapid allocator
input_ta="dialect/mult_spmm_CSRxDense.perf.rapid.ta"
basename=$(basename ${input_ta})
rapid_src_llvm="IRs/${basename}.LLVM.mlir"
${comet_opt} ${llvm_options} ${input_ta} &> ${rapid_src_llvm}


TT_TIME_START=$(date +%s.%N)

for mtx in "${MATRICES_NAMES[@]}"; do
  mtx_list+=(${mtx})
  input="${MATRICES_DIR}/${mtx}/${mtx}.mtx"
  export SPARSE_FILE_NAME0="${input}"
  echo
  echo "input: ${input}"
  echo

  # DRAM allocator
  dram_out_file="${output_dir}/${DRAM_BASE_NAME}${mtx}.log"
  :> "${dram_out_file}"

  COMMAND="${mlir_cpu_runner} ${mlir_cpu_runner_options} -shared-libs=${mlir_cpu_runner_shared_libs} ${dram_src_llvm}"
  set -x
  perf stat -e "${EVENTS}" -M "${METRICS}" ${COMMAND} 2>&1 | tee -a ${dram_out_file}
  set +x

  # Rapid allocator
  rapid_out_file="${output_dir}/${RAPID_BASE_NAME}${mtx}.log"
  :> "${rapid_out_file}"

  COMMAND="${mlir_cpu_runner} ${mlir_cpu_runner_options} -shared-libs=${mlir_cpu_runner_shared_libs} ${rapid_src_llvm}"
  set -x
  perf stat -e "${EVENTS}" -M "${METRICS}" ${COMMAND} 2>&1 | tee -a ${rapid_out_file}
  set +x
done


TT_TIME_END=$(date +%s.%N)
TT_TIME_EXE=$(echo "${TT_TIME_END} - ${TT_TIME_START}" | bc -l)
echo
echo "TT_TIME_EXE(s): ${TT_TIME_EXE}"
echo

