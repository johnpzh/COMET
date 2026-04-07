# set -euxo pipefail
set -u

# Number of Threads
export OMP_NUM_THREADS=1

MATRICES_NAMES=(\
"bcsstk17" \
"cant" \
"consph" \
"cop20k_A" \
"pdb1HYS" \
"rma10" \
"scircuit" \
"shipsec1" \
)

#MATRICES_NAMES=(\
#"consph" \
#"bcsstk17" \
#)
MATRICES_DIR="/home/peng599/Data/data"

#bound="${#MATRICES_NAMES[@]}"
#for ((i = 0; i < bound; i++)); do
#  echo "${MATRICES_NAMES[$i]},"
#done
#exit -1

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
comet_opt="../../cmake-build-debug/bin/comet-opt"
llvm_options="--convert-ta-to-it --convert-to-loops --convert-to-llvm"

# Runner Options
mlir_cpu_runner="../../llvm/build/bin/mlir-cpu-runner"
mlir_cpu_runner_options="-O3 -e main -entry-point-result=void"
mlir_cpu_runner_shared_libs="\
../../cmake-build-debug/lib/libcomet_runner_utils.${EXT},\
../../llvm/build/lib/libomp.${EXT},\
../../llvm/build/lib/libmlir_c_runner_utils.${EXT},\
/share/micron/rapid/install/gcc-debug/lib64/librapid.${EXT}\
"
REPEAT=4

# Default allocator
input_ta="dialect/mult_spmm_CSRxDense.perf.default.ta"
basename=$(basename ${input_ta})
default_src_llvm="${basename}.LLVM.mlir"
${comet_opt} ${llvm_options} ${input_ta} &> ${default_src_llvm}

# Rapid allocator
input_ta="dialect/mult_spmm_CSRxDense.perf.rapid.ta"
basename=$(basename ${input_ta})
rapid_src_llvm="${basename}.LLVM.mlir"
${comet_opt} ${llvm_options} ${input_ta} &> ${rapid_src_llvm}

TT_TIME_START=$(date +%s.%N)

mtx_list=()
default_time_list=()
rapid_time_list=()
for mtx in "${MATRICES_NAMES[@]}"; do
  mtx_list+=(${mtx})
  input="${MATRICES_DIR}/${mtx}/${mtx}.mtx"
  export SPARSE_FILE_NAME0="${input}"
  echo
  echo "input: ${input}"
  echo

  # Run Default
  set -x
  for ((i = 0; i < REPEAT; i++)); do
    output=$(${mlir_cpu_runner} ${mlir_cpu_runner_options} -shared-libs="${mlir_cpu_runner_shared_libs}" ${default_src_llvm} | tail -n 1)
  done
  set +x
  number=$(echo ${output} | grep -o -E '[0-9]+([.][0-9]+)?$')
  default_time_list+=("${number}")
  echo
  echo "default_time(s): ${number}"
  echo
  # Run Rapid
  set -x
  for ((i = 0; i < REPEAT; i++)); do
    output=$(${mlir_cpu_runner} ${mlir_cpu_runner_options} -shared-libs="${mlir_cpu_runner_shared_libs}" ${rapid_src_llvm} | tail -n 1)
  done
  set +x
  number=$(echo ${output} | grep -o -E '[0-9]+([.][0-9]+)?$')
  rapid_time_list+=("${number}")
  echo
  echo "rapid_time(s): ${number}"
  echo
done

csv_file="R.spmm.$(date +%s).csv"
:> ${csv_file}
echo "Matrices,Default(s),Rapid(s)" >> ${csv_file}
bound="${#mtx_list[@]}"

for ((i = 0; i < bound; i++)); do
  echo "${mtx_list[$i]},${default_time_list[$i]},${rapid_time_list[$i]}" >> ${csv_file}
done

echo
echo "Saved to ${csv_file}"
echo

csvlook "${csv_file}"

TT_TIME_END=$(date +%s.%N)
TT_TIME_EXE=$(echo "${TT_TIME_END} - ${TT_TIME_START}" | bc -l)
echo
echo "TT_TIME_EXE(s): ${TT_TIME_EXE}"
echo

