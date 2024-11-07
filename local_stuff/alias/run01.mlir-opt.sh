if [ $# -lt 1 ]; then
    echo "Usage: bash $0 <intput.mlir>"
    exit -1
fi
mlir_file=$1
mlir_opt="/Users/peng599/pppp/comet-openmp-dialect/COMET-openmp/llvm/build/bin/mlir-opt"
mlir_opt_flags="\
--test-alias-analysis \
-allow-unregistered-dialect \
"

basename=$(basename "${mlir_file}")
output="output.AliasAnalysis.${basename}.mlir"
eval "${mlir_opt}" "${mlir_opt_flags}" "${mlir_file}" &> "${output}"

