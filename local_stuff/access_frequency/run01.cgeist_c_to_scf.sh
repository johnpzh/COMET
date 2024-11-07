if [ $# -lt 1 ]; then
    echo "Usage: bash $0 <input.c>"
    exit -1
fi
c_file="$1"

# cgeist="/Users/peng599/pppp/comet-amais-memory/Polygeist-cgo24/cmake-build-debug/bin/cgeist"
cgeist="/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist"
# cgeist="/Users/peng599/pppp/comet-amais-memory/Polygeist-main/cmake-build-debug/bin/cgeist"

filename=$(basename "${c_file}")
# eval "${cgeist}" "${c_file}" -O0 -function="*" -S -I /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include -I PolyBenchC/utilities &> "output.${filename}.SCF.mlir"
eval "${cgeist}" "${c_file}" -O0 -function="*" -S --sysroot="/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk" -I PolyBenchC/utilities &> "output.${filename}.SCF.mlir"
# eval "${cgeist}" "${c_file}" -O0 -function="*" -S -isysroot "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk" -I PolyBenchC/utilities &> "output.${filename}.SCF.mlir"