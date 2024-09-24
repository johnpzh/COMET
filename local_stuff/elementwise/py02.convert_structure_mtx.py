import os

def check_num_lines(file1: str, file2: str):
    print(f"Check file {file1}")
    print(f"Check file {file2}")

    with open(file1, "r") as fin1, \
        open(file2, "r") as fin2:
        if len(fin1.readlines()) == len(fin2.readlines()):
            print("Passed.")
        else:
            print("Something wrong.")

def convert(filename: str, output_file: str):
    print(f"Read file {filename} ...")
    with open(filename, "r") as fin, \
        open(output_file, "w") as fout:
        is_first_line = True
        for line in fin:
            if line.startswith("%"):
                # Comments
                fout.write(line)
                continue
            if is_first_line:
                fout.write(line)
                is_first_line = False
                continue
            columns = line.split()
            if len(columns) == 3:
                columns[2] = "1"
                fout.write(" ".join(columns) + "\n")
                continue
            if len(columns) == 2:
                columns.append("1")
                fout.write(" ".join(columns) + "\n")
                continue
            print(f"Warning: this is not recognized in file {filename}:\n{line}")
    
    print(f"Save file {output_file} .")

    



if __name__ == "__main__":
    names = [
        "bcsstk17",
        "bcsstk29",
        "pdb1HYS",
        "rma10",
        "cant",
        "consph",
        "pwtk",
        "shipsec1",
        "cop20k_A",
        "scircuit",
        "mac_econ_fwd500",
    ]

    dir = "/Users/peng599/Library/CloudStorage/OneDrive-PNNL/Documents/Datasets"

    for name in names:
        filename = os.path.join(dir, name, f"{name}.mtx")
        out_name = os.path.join(dir, name, f"{name}.unweighted.mtx")

        # convert(filename, out_name)
        check_num_lines(filename, out_name)