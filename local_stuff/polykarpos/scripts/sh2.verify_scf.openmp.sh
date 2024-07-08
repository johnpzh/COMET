if [[ ! ($# -eq 4) ]]; then
    echo "Usage: bash $0 <input.scf> <dylib or so> <#threads> <matrix.mtx>"
    exit
fi
scf_file=$1
ext=$2
num_threads=$3
mtx_file=$4

llvm_dir=""

#Set stack size unlimited
ulimit -s unlimited

base_name=$(basename "${scf_file}" ".mlir")

export SPARSE_FILE_NAME0=${mtx_file}
export SPARSE_FILE_NAME1=${mtx_file}
export SPARSE_FILE_NAME2=${mtx_file}

export OMP_NUM_THREADS=${num_threads}


../../llvm/build/bin/mlir-opt \
    -lower-affine                                           \
    -convert-linalg-to-loops                                 \
    -convert-scf-to-cf                                      \
    -convert-cf-to-llvm                                     \
    -arith-expand                                            \
    -memref-expand                                              \
    -convert-vector-to-llvm                                  \
    -finalize-memref-to-llvm                                  \
    -convert-func-to-llvm                                     \
    -convert-scf-to-openmp                                   \
    -convert-openmp-to-llvm                                  \
    -reconcile-unrealized-casts                              \
    "${scf_file}" &> "${base_name}.llvm"

# ../../llvm/build/bin/mlir-opt \
#     -lower-affine         \
#     -convert-linalg-to-loops                                 \
#     -convert-scf-to-cf                                      \
#     -convert-cf-to-llvm                                     \
#     -arith-expand                                            \
#     -memref-expand                                              \
#     -convert-vector-to-llvm                                  \
#     -finalize-memref-to-llvm                                  \
#     -convert-func-to-llvm                                     \
#     -convert-scf-to-openmp         \
#     -convert-openmp-to-llvm                                  \
#     -reconcile-unrealized-casts                              \
#     "${scf_file}" &> "${base_name}.llvm"

#-lower-affine
#-convert-scf-to-cf
#-memref-expand
#-finalize-memref-to-llvm
#-convert-vector-to-llvm
#-convert-func-to-llvm
#-convert-cf-to-llvm -reconcile-unrealized-casts

#../../llvm/build/bin/mlir-cpu-runner "${base_name}.llvm" -O0 -e main -entry-point-result=void \
../../llvm/build/bin/mlir-cpu-runner "${base_name}.llvm" -O0 -e main -entry-point-result=void \
    -shared-libs=../../cmake-build-debug/lib/libcomet_runner_utils.${ext} \
    -shared-libs=../../llvm/build/lib/libmlir_runner_utils.${ext} \
    -shared-libs=../../llvm/build/lib/libmlir_c_runner_utils.${ext} \
    -shared-libs=../../llvm/build/lib/libomp.${ext} \


