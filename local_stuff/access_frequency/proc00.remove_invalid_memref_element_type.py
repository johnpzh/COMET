import sys
import os
import argparse


def comment_out(lines: list):
    left_count = 0
    is_main = False
    if_left_count = 0
    name = ""
    for i, line in enumerate(lines):
        line = line.strip()
        if line.startswith("module attributes {"):
            # module attributes {...}
            lp = line.find(" attributes")
            rp = line.find("}")
            new_line = lines[i][:lp] + lines[i][rp + 1:]
            lines[i] = "// " + lines[i] + new_line
            continue
        if line.startswith("llvm.mlir.global external @stderr()"):
            # llvm.mlir.global external @stderr()
            lines[i] = "// " + lines[i]
            continue
        if line.startswith("func.call @print_array("):
            # func.call @print_array(...)
            lines[i] = "// " + lines[i]
            continue

        if line.startswith("func.func private @print_array("):
            # func.func private @print_array() {...}
            lines[i] = "// " + lines[i]
            left_count += 1
            continue
        if left_count > 0:
            lines[i] = "// " + lines[i]
            if line[-1] == "{":
                left_count += 1
            elif line == "}":
                left_count -= 1
            continue

        if line.startswith("func.func @main("):
            # func.func @main(%arg0: i32, %arg1: memref<?xmemref<?xi8>>) -> i32
            is_main = True
            lp = lines[i].find("(")
            rp = lines[i].find(")")
            assert lp != -1, "Error: not found ("
            assert rp != -1, "Error: not found )"
            new_line = lines[i][:lp + 1] + lines[i][rp:]
            # lines[i] = lines[i][:lp + 1] + lines[i][rp:]
            # print(f"1 i: {i} {lines[i]}")
            return_code = "-> i32 "
            lp = new_line.find(return_code)
            assert lp != -1, "Error: not found -> i32 "
            rp = lp + len(return_code)
            new_line = new_line[:lp] + new_line[rp:]
            lines[i] = "// " + lines[i] + new_line
            # print(f"2 i: {i} {lines[i]}")
            continue
        if is_main and line == "return %c0_i32 : i32":
            # return %c0_i32 : i32
            is_main = False
            lp = lines[i].find("return")
            new_line = lines[i][:lp] + "return\n"
            lines[i] = "// " + lines[i] + new_line
            continue
        if is_main and line.find("= arith.cmpi sgt, %arg0,") != -1:
            # @main(%arg0, %arg1)
            name = line.split()[0]
            lines[i] = "// " + lines[i]
            continue
        if name and line.startswith(f"scf.if " + name):
            if_left_count = 1
            lines[i] = "// " + lines[i]
            continue
        if if_left_count > 0:
            lines[i] = "// " + lines[i]
            if line[-1] == "{":
                if_left_count += 1
            elif line == "}":
                if_left_count -= 1
            continue



def clean(filename: str, output_filename: str):
    basename = os.path.splitext(os.path.basename(filename))[0]
    # output_filename = f"{basename}.cleaned.mlir"
    with open(filename, "r") as fin, \
        open(output_filename, "w") as fout:
        lines = fin.readlines()
        comment_out(lines)
        fout.writelines(lines)

        print(f"Saved to {output_filename} .")

    


if __name__ == "__main__":
    parser = argparse.ArgumentParser(f"{sys.argv[0]}")
    parser.add_argument("mlir_file", type=str, help="Input MLIR SCF file")
    parser.add_argument("output_file", type=str, help="Output MLIR SCF file")

    if len(sys.argv) == 1:
        parser.print_help(sys.stderr)
        sys.exit(-1)
    args = parser.parse_args()

    filename = args.mlir_file
    output_file = args.output_file
    clean(filename, output_file)