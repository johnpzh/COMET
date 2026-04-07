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
REPEAT=4

RAPID_BASE_NAME="mult_dense_matrix.perf.rapid.size"
DRAM_BASE_NAME="mult_dense_matrix.perf.default.size"
output_dir="results.$(date +%FT%T)"
mkdir -p "${output_dir}"
total_out_file="${output_dir}/R.gemm.all-collect.$(date +%FT%T).csv"
echo "Matrix_size,DRAM(s),Rapid(s)"> "${total_out_file}"


TT_TIME_START=$(date +%s.%N)

for ((size = 16; size <= 8192; size *= 2)); do
#for ((size = 16; size <= 32768; size *= 2)); do
  # DRAM allocator
  dram_name="${DRAM_BASE_NAME}${size}.ta"
  dram_src_ta="dialect/${dram_name}"
  dram_src_llvm="IRs/${dram_name}.LLVM.mlir"
  ${comet_opt} ${llvm_options} ${dram_src_ta} &> "${dram_src_llvm}"
  dram_out_file="${output_dir}/${dram_name}.log"
  :> ${dram_out_file}

  # DRAM
  dram_total_time=0.0
  for ((r = 0; r < REPEAT; r++)); do
    echo "DRAM: size: ${size} r: ${r}"
    output=$(taskset -c 0 ${mlir_cpu_runner} ${mlir_cpu_runner_options} -shared-libs="${mlir_cpu_runner_shared_libs}" "${dram_src_llvm}" | tail -n 1)
    echo "${output}" | tee -a ${dram_out_file}
    number=$(echo ${output} | grep -o -E '[0-9]+([.][0-9]+)?$')
#    dram_total_time=$(echo "${dram_total_time} + ${number}" | bc -l)
    dram_total_time=$(python -c "print(${dram_total_time} + ${number})")
  done

  # Rapid allocator
  rapid_name="${RAPID_BASE_NAME}${size}.ta"
  rapid_src_ta="dialect/${rapid_name}"
  rapid_src_llvm="IRs/${rapid_name}.LLVM.mlir"
  ${comet_opt} ${llvm_options} ${rapid_src_ta} &> "${rapid_src_llvm}"
  rapid_out_file="${output_dir}/${rapid_name}.log"
  :> ${rapid_out_file}

  # Rapid
  rapid_total_time=0.0
  for ((r = 0; r < REPEAT; r++)); do
    echo "Rapid: size: ${size} r: ${r}"
    output=$(${mlir_cpu_runner} ${mlir_cpu_runner_options} -shared-libs="${mlir_cpu_runner_shared_libs}" "${rapid_src_llvm}" | tail -n 1)
    echo "${output}" | tee -a ${rapid_out_file}
    number=$(echo ${output} | grep -o -E '[0-9]+([.][0-9]+)?$')
#    rapid_total_time=$(echo "${rapid_total_time} + ${number}" | bc -l)
    rapid_total_time=$(python -c "print(${rapid_total_time} + ${number})")
  done
#  dram_avg_time=$(echo "${dram_total_time} / ${REPEAT}" | bc -l)
#  rapid_avg_time=$(echo "${rapid_total_time} / ${REPEAT}" | bc -l)
  dram_avg_time=$(python -c "print(${dram_total_time} / ${REPEAT})")
  rapid_avg_time=$(python -c "print(${rapid_total_time} / ${REPEAT})")
  echo "${size},${dram_avg_time},${rapid_avg_time}" >> ${total_out_file}
done

echo
echo "Saved to ${total_out_file}"
echo

csvlook "${total_out_file}"

TT_TIME_END=$(date +%s.%N)
TT_TIME_EXE=$(echo "${TT_TIME_END} - ${TT_TIME_START}" | bc -l)
echo
echo "TT_TIME_EXE(s): ${TT_TIME_EXE}"
echo

