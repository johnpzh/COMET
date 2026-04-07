# set -euxo pipefail
set -u

# Number of Threads
export OMP_NUM_THREADS=1

#MATRICES_NAMES=(
#  "bcsstk17"
#  "cant"
#  "com-LiveJournal"
#  "com-Orkut"
#  "consph"
#  "cop20k_A"
#  "pdb1HYS"
#  "rma10"
#  "scircuit"
#  "shipsec1"
#)
#MATRICES_NAMES=(
#  "soc-Pokec"
#  "road_usa"
#  "hugebubbles-00020"
#  "ljournal-2008"
#  "delaunay_n24"
#  "europe_osm"
#  "vas_stokes_4M"
#  "indochina-2004"
#  "nlpkkt160"
#  "kmer_A2a"
#  "webbase-2001"
#)
MATRICES_NAMES=(
  "soc-Pokec"
  "wikipedia-20070206"
  "Serena"
  "audikw_1"
  "ljournal-2008"
  "Long_Coup_dt6"
  "cage15"
  "hollywood-2009"
  "vas_stokes_4M"
  "indochina-2004"
  "mycielskian19"
)
#MATRICES_NAMES=(
#"bcsstk17"
#"cant"
#)

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
REPEAT=10

echo "REPEAT: ${REPEAT}"

RAPID_BASE_NAME="mult_spmm_CSRxDense.perf.rapid.mtx-"
DRAM_BASE_NAME="mult_spmm_CSRxDense.perf.dram.mtx-"
output_dir="results.$(date +%FT%T)"
mkdir -p "${output_dir}"
total_out_file="${output_dir}/R.spmm.all-collect.$(date +%FT%T).csv"
echo "Matrix,DRAM(s),Rapid(s)" > "${total_out_file}"

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

mtx_list=()
dram_time_list=()
rapid_time_list=()
for mtx in "${MATRICES_NAMES[@]}"; do
  mtx_list+=(${mtx})
  input="${MATRICES_DIR}/${mtx}/${mtx}.mtx"
  export SPARSE_FILE_NAME0="${input}"
  echo
  echo "input: ${input}"
  echo

  # Run Dram
  dram_out_file="${output_dir}/${DRAM_BASE_NAME}${mtx}.log"
  :> "${dram_out_file}"

  # DRAM
  dram_total_time=0.0
  for ((i = 0; i < REPEAT; i++)); do
    output=$(taskset -c 0 ${mlir_cpu_runner} ${mlir_cpu_runner_options} -shared-libs="${mlir_cpu_runner_shared_libs}" ${dram_src_llvm} | tail -n 1)
    echo "${output}" | tee -a "${dram_out_file}"
    number=$(echo ${output} | grep -o -E '[0-9]+([.][0-9]+)?$')
    dram_total_time=$(python -c "print(${dram_total_time} + ${number})")
  done

  # Run Rapid
  rapid_out_file="${output_dir}/${RAPID_BASE_NAME}${mtx}.log"
  :> "${rapid_out_file}"
  rapid_total_time=0.0
  for ((i = 0; i < REPEAT; i++)); do
    output=$(${mlir_cpu_runner} ${mlir_cpu_runner_options} -shared-libs="${mlir_cpu_runner_shared_libs}" ${rapid_src_llvm} | tail -n 1)
    echo "${output}" | tee -a "${rapid_out_file}"
    number=$(echo ${output} | grep -o -E '[0-9]+([.][0-9]+)?$')
    rapid_total_time=$(python -c "print(${rapid_total_time} + ${number})")
  done

  # Calculate averages
  dram_avg_time=$(python -c "print(${dram_total_time} / ${REPEAT})")
  rapid_avg_time=$(python -c "print(${rapid_total_time} / ${REPEAT})")
  echo "${mtx},${dram_avg_time},${rapid_avg_time}" >> "${total_out_file}"
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

