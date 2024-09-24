import networkx as nx
from scipy.io import mmread
import argparse
import sys

def count_triangles(mtx_file):
    # Read the matrix from the .mtx file
    matrix = mmread(mtx_file)

    # Convert sparse matrix to adjacency list
    G = nx.Graph(matrix)

    # Count triangles
    triangles = nx.triangles(G)

    # Sum up all triangles
    total_triangles = sum(triangles.values()) // 3  # Dividing by 3 because each triangle is counted thrice

    return total_triangles

# Example usage
if __name__ == "__main__":
    parser = argparse.ArgumentParser(f"{sys.argv[0]}")
    # parser.add_argument("--input", "-i", type=str, help="input log file")
    # parser.add_argument("--matrix-name", "-m", type=str, help="matrix name")
    parser.add_argument("input_file", type=str, help="mtx file")
    # parser.add_argument("data_2", type=str, help="CSV file of data 2 corrected")

    if len(sys.argv) == 1:
        parser.print_help(sys.stderr)
        sys.exit(-1)
    args = parser.parse_args()

    input_file = args.input_file
    print(f"Number of triangles: {count_triangles(input_file)}")