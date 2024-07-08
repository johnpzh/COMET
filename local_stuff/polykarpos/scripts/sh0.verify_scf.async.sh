if [[ ! ($# -eq 3) ]]; then
    echo "Usage: bash $0 <input.scf> <dylib or so> <matrix.mtx>"
    exit
fi
scf_file=$1
ext=$2
mtx_file=$3

#Set stack size unlimited
ulimit -s unlimited

base_name=$(basename "${scf_file}" ".mlir")

export SPARSE_FILE_NAME0=${mtx_file}
export SPARSE_FILE_NAME1=${mtx_file}
export SPARSE_FILE_NAME2=${mtx_file}

# ../../cmake-build-debug/bin/comet-opt --convert-ta-to-it --convert-to-loops mult_spgemm_CSRxCSR_oCSR.mask.ta &> mult_spgemm_CSRxCSR_oCSR.mask.ta.loops.mlir

# ../../cmake-build-debug/bin/comet-opt --convert-scf-to-std --convert-std-to-llvm mult_spgemm_CSRxCSR_oCSR.mask.loops.manual.v0.mlir &> mult_spgemm_CSRxCSR_oCSR.mask.loops.manual.v0.llvm
num_threads=1
../../llvm/build/bin/mlir-opt \
    -async-parallel-for="async-dispatch=false num-workers=${num_threads} min-task-size=1"         \
    -async-to-async-runtime                                  \
    -async-runtime-ref-counting                              \
    -async-runtime-ref-counting-opt                          \
    -convert-async-to-llvm                                   \
    -convert-linalg-to-loops                                 \
    -convert-scf-to-cf                                      \
    -arith-expand                                            \
    -memref-expand                                              \
    -convert-vector-to-llvm                                  \
    -finalize-memref-to-llvm                                  \
    -convert-func-to-llvm                                     \
    -reconcile-unrealized-casts                              \
    "${scf_file}" &> "${base_name}.llvm"
#../../llvm/build/bin/mlir-opt \
#    -convert-linalg-to-loops \
#    -convert-scf-to-cf  \
#    -arith-expand \
#    -memref-expand \
#    -finalize-memref-to-llvm \
#    -convert-func-to-llvm \
#    -reconcile-unrealized-casts \
#    "${scf_file}" &> "${base_name}.llvm"

# echo "${base_name}.llvm.mlir"

# ../../llvm/build/bin/mlir-cpu-runner "${base_name}.llvm" -O0 -e main -entry-point-result=void -shared-libs=../../cmake-build-debug/lib/libcomet_runner_utils.${ext},../../llvm/build/lib/libmlir_runner_utils.${ext},../../llvm/build/lib/libmlir_c_runner_utils.${ext}
../../llvm/build/bin/mlir-cpu-runner "${base_name}.llvm" -O3 -e main -entry-point-result=void \
    -shared-libs=../../cmake-build-debug/lib/libcomet_runner_utils.${ext} \
    -shared-libs=../../llvm/build/lib/libmlir_runner_utils.${ext} \
    -shared-libs=../../llvm/build/lib/libmlir_c_runner_utils.${ext} \
    -shared-libs=../../llvm/build/lib/libmlir_async_runtime.${ext} \

