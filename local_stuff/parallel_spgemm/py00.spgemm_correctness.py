import sys
import argparse
import scipy.io as spio
from scipy.sparse import issparse

def spgemm(filename: str):
    """
    Perform sparse matrix multiplication on the input matrix file.
    The file should be in Matrix Market format (.mtx).
    """
    try:
        # Load the sparse matrix from the file
        mat = spio.mmread(filename)

        # if not issparse(mat):
        #     raise ValueError("The input matrix is not sparse.")

        # Perform the sparse matrix multiplication
        result = mat @ mat  # Example: multiplying the matrix by itself
        result = result.tocsr()

        print(f"result:")
        print(f"shape: {result.shape}")
        print(f"nnz: {result.nnz}")
        print(f"row pointers: {result.indptr}")
        print(f"col indices: {result.indices}")
        print(f"data: {result.data}")
        print(f"sum: {sum(result.data)}")

        return result
    except Exception as e:
        print(f"Error processing the file {filename}: {e}")
        return None

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("matrix", type=str, help="the input sparse matrix file in mtx format")
    args = parser.parse_args()

    if len(sys.argv) == 1:
        parser.print_help(sys.stderr)
        sys.exit(-1)

    matrix = args.matrix

    spgemm(matrix)