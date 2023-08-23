#
# Supposed to run in Linux
export EXT="so"


################################################################
# All relative paths are referred to AE/, NOT AE/scripts/, and #
# all command should run under AE/.                            #
################################################################

#
# To include the BLIS lib path into LD_LIBRARY_PATH
blis_path="/lib/comet"
if [[ "${LD_LIBRARY_PATH}" != *"${blis_path}"* ]]; then
    export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${blis_path}"
fi

#
# Data
export DATA_DIR="./data"

#
# LAGraph
# The LAGraph executables are under this directory, such as mxm_serial_demo, tc_demo, and bfs_demo.
export LAGRAPH_EXE_DIR="/benchmark"

#
# GraphX
#export GRAPHX_BUILD_DIR="../build"
export COMET_OPT="/bin/comet/comet-opt"
export COMET_OPT_OPTIONS="--opt-comp-workspace \
                          --convert-ta-to-it \
                          --convert-to-loops \
                          --convert-to-llvm"

#
# LLVM and MLIR
#export LLVM_BUILD_DIR="../llvm/build"
export MLIR_CPU_RUNNER="/bin/llvm/mlir-cpu-runner"
export SHARED_LIBS="/lib/comet/libcomet_runner_utils.${EXT},\
/lib/llvm/libmlir_runner_utils.${EXT},\
/lib/llvm/libmlir_c_runner_utils.${EXT}"

export MLIR_OPT="/bin/llvm/mlir-opt"
export MLIR_OPT_OPTIONS="-lower-affine \
                         -memref-expand \
                         -convert-scf-to-cf \
                         -convert-cf-to-llvm \
                         -convert-vector-to-llvm \
                         -finalize-memref-to-llvm \
                         -convert-func-to-llvm \
                         -reconcile-unrealized-casts"

