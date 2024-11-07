if [ $# -lt 1 ]; then
    echo "Usage: bash $0 <input.mlir>"
    exit -1
fi
mlir_file="$1"

comet="/Users/peng599/pppp/comet-amais-memory/COMET-memAnalysis/cmake-build-debug/bin/comet-opt"
comet_flags="\
--mem-access-frequency-analysis \
--allow-unregistered-dialect \
"

eval "${comet}" "${comet_flags}" "${mlir_file}"