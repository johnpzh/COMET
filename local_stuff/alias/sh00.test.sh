comet="/Users/peng599/pppp/comet-amais-memory/COMET-memAnalysis/cmake-build-debug/bin/comet-opt"
comet_flags="\
--mem-alias-analysis \
"
mlir_file="./dialects/mem-alias-analysis.01.simple.mlir"
mlir_file="./dialects/mem-alias-analysis.02.control_flow.mlir"
mlir_file="./dialects/mem-alias-analysis.03.control_flow_merge.mlir"
mlir_file="./dialects/mem-alias-analysis.04.region_control_flow.mlir"
mlir_file="./dialects/mem-alias-analysis.05.region_loop_control_flow.mlir"
#mlir_file="./dialects/mem-alias-analysis.06.region_loop_zero_trip_count.mlir"
#mlir_file="./dialects/mem-alias-analysis.07.view_like.mlir"
#mlir_file="./dialects/mem-alias-analysis.08.constants.mlir"

eval "${comet}" "${comet_flags}" "${mlir_file}"