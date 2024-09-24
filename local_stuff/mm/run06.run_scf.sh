if [ $# -ne 1 ]; then
  echo "Usage: bash $0 <scf.mlir>"
  exit -1
fi
input_scf=$1

# Input sparse matrix
# export SPARSE_FILE_NAME0="../../integration_test/data/test_rank2.mtx"
# export SPARSE_FILE_NAME1="../../integration_test/data/test_rank2.mtx"
export SPARSE_FILE_NAME0="/Users/peng599/Library/CloudStorage/OneDrive-PNNL/Documents/Datasets/bcsstk17/bcsstk17.mtx"
export SPARSE_FILE_NAME1="/Users/peng599/Library/CloudStorage/OneDrive-PNNL/Documents/Datasets/bcsstk17/bcsstk17.mtx"

#
# Test if this machine is running macOS
uname -s | grep -q Darwin
if [ $? -eq 0 ]; then
  # macOS
  export EXT="dylib"
else
  # Not macOS, then Linux
  export EXT="so"
  ulimit -s unlimited  # Set stack size as unlimited
fi

# Lowering
comet_opt="../../cmake-build-debug/bin/comet-opt"
mlir_opt="../../llvm/build/bin/mlir-opt"
# input_ta="mult_dense_matrix.ta"
basename=$(basename ${input_scf} ".SCF.mlir")
# comet_opt_options="--convert-ta-to-it --convert-to-loops --convert-to-llvm"
# src_llvm="${basename}.llvm.llvm"
# eval ${comet_opt} ${comet_opt_options} ${input_ta} &> ${src_llvm}

# src_ta="${basename}.TensorAlgebra.mlir"
# tensor_algebra_options="--emit-ta"
# eval ${comet_opt} ${tensor_algebra_options} ${input_ta} &> ${src_ta}

# src_it="${basename}.IndexTree.mlir"
# index_tree_options="--convert-ta-to-it --emit-it --opt-comp-workspace"
# eval ${comet_opt} ${index_tree_options} ${input_ta} &> ${src_it}

# src_scf="${basename}.SCF.mlir"
# scf_options="--convert-to-loops --emit-loops"
# eval ${comet_opt} ${scf_options} ${src_it} &> ${src_scf}

src_llvm="${basename}.LLVM.mlir"
# llvm_options="--convert-to-llvm \
# -lower-affine \
# -convert-linalg-to-loops \
# -convert-scf-to-cf \
# -convert-cf-to-llvm \
# -arith-expand \
# -memref-expand \
# -convert-vector-to-llvm \
# -finalize-memref-to-llvm \
# -convert-func-to-llvm \
# -convert-scf-to-openmp \
# -convert-openmp-to-llvm \
# -reconcile-unrealized-casts \
# --convert-index-to-llvm \
# -arith-bufferize"
# llvm_options=" \
# -convert-linalg-to-affine-loops \
# -lower-affine \
# -convert-scf-to-openmp \
# -finalize-memref-to-llvm \
# -convert-scf-to-cf \
# -arith-expand \
# -arith-bufferize \
# -memref-expand \
# -convert-func-to-llvm \
# -convert-index-to-llvm \
# -convert-cf-to-llvm \
# -convert-openmp-to-llvm \
# -convert-vector-to-llvm \
# -canonicalize \
# -convert-to-llvm \
# "
# llvm_options=" \
# -convert-linalg-to-loops \
# -lower-affine \
# -convert-scf-to-openmp \
# -finalize-memref-to-llvm \
# -convert-scf-to-cf \
# -convert-func-to-llvm \
# -convert-index-to-llvm \
# -convert-cf-to-llvm \
# -convert-openmp-to-llvm \
# -convert-vector-to-llvm \
# --canonicalize \
# -convert-to-llvm \
# "
llvm_options="\
-convert-linalg-to-loops \
-lower-affine \
-convert-scf-to-openmp \
-finalize-memref-to-llvm \
-convert-scf-to-cf \
-convert-cf-to-llvm \
-convert-func-to-llvm \
-convert-index-to-llvm \
-convert-openmp-to-llvm \
-convert-vector-to-llvm \
-canonicalize \
-convert-to-llvm \
"
# eval ${comet_opt} ${llvm_options} ${src_scf} &> ${src_llvm}
eval ${mlir_opt} ${llvm_options} ${input_scf} &> ${src_llvm}

# Runner
mlir_cpu_runner="../../llvm/build/bin/mlir-cpu-runner"
mlir_cpu_runner_options="-O3 -e main -entry-point-result=void"
mlir_cpu_runner_shared_libs="../../build-debug/lib/libcomet_runner_utils.${EXT},\
../../llvm/build/lib/libomp.${EXT}\
"
eval ${mlir_cpu_runner} ${mlir_cpu_runner_options} -shared-libs="${mlir_cpu_runner_shared_libs}" ${src_llvm}