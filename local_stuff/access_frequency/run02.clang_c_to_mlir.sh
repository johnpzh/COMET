set -e
set -u
set -o pipefail
set -x

if [ $# -lt 1 ]; then
    echo "Usage: bash $0 <intput.c>"
    exit -1
fi
c_file=$1
# clang="/Users/peng599/pppp/comet-openmp-dialect/COMET-openmp/llvm/build/bin/clang"
clang="/usr/bin/clang"
clang_flags="-emit-llvm -S \
-I PolyBenchC/utilities"
basename=$(basename "${c_file}")
clang_out_file="output.${basename}.clang.ll"
eval "${clang}" "${clang_flags}" "${c_file}" -o "${clang_out_file}"

mlir_translate="/Users/peng599/pppp/comet-openmp-dialect/COMET-openmp/llvm/build/bin/mlir-translate"
mlir_translate_flags="-import-llvm"
mlir_translate_out_file="output.${basename}.mlir_tran.mlir"
eval "${mlir_translate}" "${mlir_translate_flags}" "${clang_out_file}" -o "${mlir_translate_out_file}"

# mlir_file=$1
# mlir_opt="/Users/peng599/pppp/comet-openmp-dialect/COMET-openmp/llvm/build/bin/mlir-opt"
# mlir_opt_flags="\
# --test-alias-analysis \
# -allow-unregistered-dialect \
# "

# basename=$(basename "${mlir_file}")
# output="output.AliasAnalysis.${basename}.mlir"
# eval "${mlir_opt}" "${mlir_opt_flags}" "${mlir_file}" &> "${output}"

