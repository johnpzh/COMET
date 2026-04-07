PREV_PWD=$(readlink -f .)

# Wait
echo "Sleeping for 6h ..."
set -x
sleep 6h
set +x

# Build
echo "Building ..."
set -x
cmake --build ../../build
set +x

# Run
echo "Running ..."
set -x
bash bench00.gemm.sh
set +x