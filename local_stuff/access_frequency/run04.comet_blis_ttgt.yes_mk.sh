if [ $# -lt 1 ]; then
    echo "Usage: bash $0 <input.mlir>"
    exit -1
fi
mlir_file="$1"

comet="/Users/peng599/pppp/comet-amais-memory/COMET-memAnalysis/cmake-build-debug/bin/comet-opt"
comet_flags="\
-opt-bestperm-ttgt \
-opt-matmul-tiling \
-opt-matmul-mkernel \
-opt-dense-transpose \
--convert-tc-to-ttgt \
"

basename=$(basename "${mlir_file}")
scf_file="output.${basename}.yes_mk.SCF.mlir"

eval "${comet}" "${comet_flags}" "${mlir_file}" &> "${scf_file}"

comet_flags="\
-opt-bestperm-ttgt \
-opt-matmul-tiling \
-opt-matmul-mkernel \
-opt-dense-transpose \
--convert-tc-to-ttgt \
--convert-to-llvm \
"
llvm_file="output.${basename}.yes_mk.LLVM.mlir"
eval "${comet}" "${comet_flags}" "${mlir_file}" &> "${llvm_file}"