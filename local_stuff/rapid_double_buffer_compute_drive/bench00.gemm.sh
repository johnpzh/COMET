# set -euxo pipefail
set -eu

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
llvm_options="--convert-to-llvm"

# Runner Options
mlir_cpu_runner="../../llvm/build/bin/mlir-cpu-runner"
mlir_cpu_runner_options="-O3 -e main -entry-point-result=void"
mlir_cpu_runner_shared_libs="\
../../build/lib/libcomet_runner_utils.${EXT},\
../../llvm/build/lib/libomp.${EXT},\
../../llvm/build/lib/libmlir_async_runtime.${EXT},\
../../llvm/build/lib/libmlir_c_runner_utils.${EXT},\
/share/micron/rapid/install/gcc-debug/lib64/librapid.${EXT}\
"
REPEAT=1

RAPID_BASE_NAME="parallel_compute_workers.rapid"
output_dir="results.$(date +%FT%T)"
mkdir -p "${output_dir}"

#echo "Matrix_size,DRAM(s),Rapid(s)"> "${total_out_file}"

# declare -a matrix_size_list
# for ((size = 4096; size <= 8192; size *= 2)); do
# #for ((size = 4096; size <= 4096; size *= 2)); do
#   matrix_size_list+=(${size})
# done

# declare -a tile_size_list
# for ((tile = 8; tile <= 2048; tile *= 2)); do
# #for ((tile = 256; tile <= 512; tile *= 2)); do
#   tile_size_list+=(${tile})
# done

matrix_size_list=(4096 8192 16384)
tile_size_list=(8 16 32 64 128 256 512 1024 2048)
#compute_worker_list=(1 2 4 8 16 27 32 54 64 110)
compute_worker_list=(1 2 4 8 16 27 32 54)

#matrix_size_list=(4096 8192)
#tile_size_list=(128 256 512)
#compute_worker_list=(16 27 32)



TT_TIME_START=$(date +%s.%N)

for size in "${matrix_size_list[@]}"; do

  if [ "${size}" -eq 16384 ]; then
    REPEAT=1
  else
    REPEAT=4
  fi

  total_out_file="${output_dir}/output.${RAPID_BASE_NAME}.collect.matrix-${size}.csv"
  # Header
  echo -n "tile_size" > "${total_out_file}"
  for worker in "${compute_worker_list[@]}"; do
    echo -n ",worker-${worker}" >> "${total_out_file}"
  done
  echo "" >> "${total_out_file}"

  # Rapid allocator

  for tile in "${tile_size_list[@]}"; do
    declare -a rapid_time_list=()
    for compute_workers in  "${compute_worker_list[@]}"; do
      rapid_name="${RAPID_BASE_NAME}.matrix-${size}.tile-${tile}.compute-${compute_workers}.mlir"
      rapid_src_ta="dialect/${rapid_name}"
      rapid_src_llvm="IRs/${rapid_name}.LLVM.mlir"
      ${comet_opt} ${llvm_options} ${rapid_src_ta} &> "${rapid_src_llvm}"
      rapid_out_file="${output_dir}/${rapid_name}.log"
      :> ${rapid_out_file}

      # Rapid
      rapid_total_time=0.0
      for ((r = 0; r < REPEAT; r++)); do
        echo -n "Rapid: size: ${size} tile: ${tile} compute_worker: ${compute_workers} r: $((r + 1))/${REPEAT} "
        output=$(${mlir_cpu_runner} ${mlir_cpu_runner_options} -shared-libs="${mlir_cpu_runner_shared_libs}" "${rapid_src_llvm}" | tail -n 1)
        echo "${output}" | tee -a ${rapid_out_file}
        number=$(echo ${output} | grep -o -E '[0-9]+([.][0-9]+)?$')
        rapid_total_time=$(echo "${rapid_total_time} + ${number}" | bc -l)
  #      rapid_total_time=$(python -c "print(${rapid_total_time} + ${number})")
      done
      rapid_avg_time=$(echo "${rapid_total_time} / ${REPEAT}" | bc -l | awk '{printf "%.6f", $0}')
      rapid_time_list+=(${rapid_avg_time})
    done # compute-workers

    # Write to the csv file
    echo -n "${tile}" >> ${total_out_file}
    for time in "${rapid_time_list[@]}"; do
      echo -n ",${time}" >> "${total_out_file}"
    done
    echo "" >> "${total_out_file}"
  done # tile-size
  echo
  echo "Saved to ${total_out_file}"
  echo

  # csvlook "${total_out_file}"

done # matrix-size



TT_TIME_END=$(date +%s.%N)
TT_TIME_EXE=$(echo "${TT_TIME_END} - ${TT_TIME_START}" | bc -l)
echo
echo "TT_TIME_EXE(s): ${TT_TIME_EXE}"
echo