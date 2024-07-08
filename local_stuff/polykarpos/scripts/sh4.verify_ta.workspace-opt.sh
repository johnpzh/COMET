if [[ ! ($# -eq 3) ]]; then
    echo "Usage: bash $0 <input.ta> <dylib or so> <matrix.mtx>"
    exit
fi
ta_file=$1
ext=$2
mtx_file=$3

#Set stack size unlimited
ulimit -s unlimited

base_name=$(basename "${ta_file}" ".ta")

export SPARSE_FILE_NAME0=${mtx_file}
export SPARSE_FILE_NAME1=${mtx_file}
export SPARSE_FILE_NAME2=${mtx_file}


../../cmake-build-debug/bin/comet-opt --opt-comp-workspace --convert-ta-to-it --convert-to-loops --convert-to-llvm "${ta_file}" &> "${base_name}.llvm"
#../../cmake-build-debug/bin/comet-opt --convert-ta-to-it --convert-to-loops "${ta_file}" &> "${base_name}.mlir"

#../../llvm/build/bin/mlir-opt --lower-affine --convert-linalg-to-loops --convert-linalg-to-std --convert-scf-to-std \
#    --convert-linalg-to-llvm  --convert-std-to-llvm "${base_name}.SCF.mlir" &> "${base_name}.llvm"

../../llvm/build/bin/mlir-cpu-runner "${base_name}.llvm" -O3 -e main -entry-point-result=void \
        -shared-libs=../../cmake-build-debug/lib/libcomet_runner_utils.${ext} \
        -shared-libs=../../llvm/build/lib/libmlir_runner_utils.${ext} \
        -shared-libs=../../llvm/build/lib/libmlir_c_runner_utils.${ext}
