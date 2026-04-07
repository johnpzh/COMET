# set -euxo pipefail
set -euo pipefail

c_files=(\
"./datamining/correlation/correlation.c" \
"./datamining/covariance/covariance.c" \
"./linear-algebra/kernels/2mm/2mm.c" \
"./linear-algebra/kernels/3mm/3mm.c" \
"./linear-algebra/kernels/atax/atax.c" \
"./linear-algebra/kernels/bicg/bicg.c" \
"./linear-algebra/kernels/doitgen/doitgen.c" \
"./linear-algebra/kernels/mvt/mvt.c" \
"./linear-algebra/blas/gemm/gemm.c" \
"./linear-algebra/blas/gemver/gemver.c" \
"./linear-algebra/blas/gesummv/gesummv.c" \
"./linear-algebra/blas/symm/symm.c" \
"./linear-algebra/blas/syr2k/syr2k.c" \
"./linear-algebra/blas/syrk/syrk.c" \
"./linear-algebra/blas/trmm/trmm.c" \
"./linear-algebra/solvers/cholesky/cholesky.c" \
"./linear-algebra/solvers/durbin/durbin.c" \
"./linear-algebra/solvers/gramschmidt/gramschmidt.c" \
"./linear-algebra/solvers/lu/lu.c" \
"./linear-algebra/solvers/ludcmp/ludcmp.c" \
"./linear-algebra/solvers/trisolv/trisolv.c" \
"./medley/deriche/deriche.c" \
"./medley/floyd-warshall/floyd-warshall.c" \
"./medley/nussinov/nussinov.c" \
"./stencils/adi/adi.c" \
"./stencils/fdtd-2d/fdtd-2d.c" \
"./stencils/heat-3d/heat-3d.c" \
"./stencils/jacobi-1d/jacobi-1d.c" \
"./stencils/jacobi-2d/jacobi-2d.c" \
"./stencils/seidel-2d/seidel-2d.c" \
)

output_dir="./output_polybench"

for name in "${c_files[@]}"; do
    basename=$(basename ${name})
    scf_file="./PolyBenchSCF/output.${basename}.SCF.mlir"
    echo ""
    echo "Go to SCF file ${scf_file}"
    cleaned_file="${output_dir}/output.${basename}.SCF.cleaned.mlir"
    python proc00.remove_invalid_memref_element_type.py "${scf_file}" "${cleaned_file}"
    echo "Saved to cleaned file ${cleaned_file}"

    inlined_file="${output_dir}/output.${basename}.SCF.cleaned.inlined.mlir"
    bash run03.mlir_opt_inline_scf.sh "${cleaned_file}" &> "${inlined_file}"
    echo "Saved to inlined file ${inlined_file}"

    analyzed_file="${output_dir}/output.${basename}.SCF.cleaned.inlined.analized.mlir"
    bash run00.comet_frequency_analysis_mlir.sh "${inlined_file}" &> "${analyzed_file}"
    echo "Saved to analized file ${analyzed_file}"
done
