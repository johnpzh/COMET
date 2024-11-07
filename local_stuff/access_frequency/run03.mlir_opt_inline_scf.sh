if [ $# -lt 1 ]; then
    echo "Usage: bash $0 <input.mlir>"
    exit -1
fi
mlir_file="$1"

mlir_opt="/Users/peng599/pppp/comet-amais-memory/COMET-memAnalysis/llvm/build/bin/mlir-opt"
mlir_opt_flags="\
-inline='op-pipelines=func.func(canonicalize,cse)' \
-lower-affine \
-allow-unregistered-dialect \
"

eval "${mlir_opt}" "${mlir_opt_flags}" "${mlir_file}"