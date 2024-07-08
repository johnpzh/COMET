if [[ ! ($# -eq 2) ]]; then
    echo "Usage: bash $0 <input.scf.mlir> <matrix.mtx>"
    exit
fi
ta_file=$1
mtx_file=$2
base_name=$(basename "${ta_file}" ".mlir")

export SPARSE_FILE_NAME0=${mtx_file}
export SPARSE_FILE_NAME1=${mtx_file}
export SPARSE_FILE_NAME2=${mtx_file}


../../cmake-build-debug/bin/comet-opt --convert-to-llvm "${ta_file}" &> "${base_name}.llvm"
#../../cmake-build-debug/bin/comet-opt --opt-comp-workspace --convert-ta-to-it --convert-to-loops --convert-to-llvm "${ta_file}" &> "${base_name}.llvm"

../../llvm/build/bin/mlir-cpu-runner "${base_name}.llvm" -O3 -e main -entry-point-result=void -shared-libs=../../cmake-build-debug/lib/libcomet_runner_utils.dylib,../../llvm/build/lib/libmlir_runner_utils.dylib,../../llvm/build/lib/libmlir_c_runner_utils.dylib
