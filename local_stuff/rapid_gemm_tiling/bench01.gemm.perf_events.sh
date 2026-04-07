# set -euxo pipefail
set -u

# Perf Events
# EVENTS="\
# cache-references,\
# cache-misses,\
# L1-dcache-loads,\
# L1-dcache-load-misses,\
# LLC-loads,\
# LLC-load-misses,\
# LLC-stores,\
# LLC-store-misses,\
# l2_request.all,\
# l2_request.miss,\
# l2_rqsts.all_demand_data_rd,\
# l2_rqsts.demand_data_rd_miss,\
# l2_rqsts.demand_data_rd_hit,\
# l2_rqsts.all_hwpf,\
# l2_rqsts.hwpf_miss,\
# l2_rqsts.swpf_hit,\
# l2_rqsts.swpf_miss\
# "
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
#llvm_options="--convert-ta-to-it --convert-to-loops --convert-to-llvm"
llvm_options="\
--convert-tc-to-ttgt \
--opt-matmul-tiling \
--convert-to-llvm \
--convert-to-loops \
"

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

RAPID_BASE_NAME="mult_dense_matrix.perf.rapid.size"
DRAM_BASE_NAME="mult_dense_matrix.perf.default.size"
output_dir="results.perf_events.$(date +%s)"
mkdir -p "${output_dir}"
#total_out_file="${output_dir}/R.gemm.all-collect.$(date +%s).csv"
#echo "Matrix_size,DRAM(s),Rapid(s)"> "${total_out_file}"


TT_TIME_START=$(date +%s.%N)

for ((size = 16; size <= 16384; size *= 2)); do
#for ((size = 16; size <= 32; size *= 2)); do
  # DRAM allocator
  dram_name="${DRAM_BASE_NAME}${size}.ta"
  dram_src_ta="dialect/${dram_name}"
  dram_src_llvm="IRs/${dram_name}.LLVM.mlir"
  ${comet_opt} ${llvm_options} ${dram_src_ta} &> "${dram_src_llvm}"
  dram_out_file="${output_dir}/${dram_name}.log"
  :> ${dram_out_file}

  # DRAM
  COMMAND="${mlir_cpu_runner} ${mlir_cpu_runner_options} -shared-libs=${mlir_cpu_runner_shared_libs} ${dram_src_llvm}"
  set -x
  perf stat -e "${EVENTS}" -M "${METRICS}" ${COMMAND} 2>&1 | tee -a ${dram_out_file}
  set +x

  # Rapid allocator
  rapid_name="${RAPID_BASE_NAME}${size}.ta"
  rapid_src_ta="dialect/${rapid_name}"
  rapid_src_llvm="IRs/${rapid_name}.LLVM.mlir"
  ${comet_opt} ${llvm_options} ${rapid_src_ta} &> "${rapid_src_llvm}"
  rapid_out_file="${output_dir}/${rapid_name}.log"
  :> ${rapid_out_file}

  # Rapid
  COMMAND="${mlir_cpu_runner} ${mlir_cpu_runner_options} -shared-libs=${mlir_cpu_runner_shared_libs} ${rapid_src_llvm}"
  set -x
  perf stat -e "${EVENTS}" -M "${METRICS}" ${COMMAND} 2>&1 | tee -a ${rapid_out_file}
  set +x
done

#echo
#echo "Saved to ${total_out_file}"
#echo

#csvlook "${total_out_file}"

TT_TIME_END=$(date +%s.%N)
TT_TIME_EXE=$(echo "${TT_TIME_END} - ${TT_TIME_START}" | bc -l)
echo
echo "TT_TIME_EXE(s): ${TT_TIME_EXE}"
echo

