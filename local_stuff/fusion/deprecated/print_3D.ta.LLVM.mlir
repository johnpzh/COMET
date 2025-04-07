module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %1 = llvm.mlir.constant(0 : i64) : i64
    %2 = llvm.mlir.constant(12 : index) : i64
    %3 = llvm.mlir.constant(11 : index) : i64
    %4 = llvm.mlir.constant(10 : index) : i64
    %5 = llvm.mlir.constant(9 : index) : i64
    %6 = llvm.mlir.constant(8 : index) : i64
    %7 = llvm.mlir.constant(7 : index) : i64
    %8 = llvm.mlir.constant(6 : index) : i64
    %9 = llvm.mlir.constant(5 : index) : i64
    %10 = llvm.mlir.constant(4 : index) : i64
    %11 = llvm.mlir.constant(1 : i32) : i32
    %12 = llvm.mlir.constant(0 : i32) : i32
    %13 = llvm.mlir.constant(3 : index) : i64
    %14 = llvm.mlir.constant(2 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.mlir.constant(-1 : index) : i64
    %18 = llvm.mlir.constant(19 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.zero : !llvm.ptr
    %21 = llvm.getelementptr %20[19] : (!llvm.ptr) -> !llvm.ptr, i64
    %22 = llvm.ptrtoint %21 : !llvm.ptr to i64
    %23 = llvm.call @malloc(%22) : (i64) -> !llvm.ptr
    %24 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %25 = llvm.insertvalue %23, %24[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.insertvalue %23, %25[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.constant(0 : index) : i64
    %28 = llvm.insertvalue %27, %26[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.insertvalue %18, %28[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.insertvalue %19, %29[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.alloca %31 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %30, %32 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %35 = llvm.insertvalue %33, %34[0] : !llvm.struct<(i64, ptr)> 
    %36 = llvm.insertvalue %32, %35[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_3D_f64(%12, %15, %17, %15, %17, %15, %17, %33, %32, %11) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %37 = llvm.load %23 : !llvm.ptr -> i64
    %38 = llvm.getelementptr %23[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %39 = llvm.load %38 : !llvm.ptr -> i64
    %40 = llvm.getelementptr %23[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %41 = llvm.load %40 : !llvm.ptr -> i64
    %42 = llvm.getelementptr %23[3] : (!llvm.ptr) -> !llvm.ptr, i64
    %43 = llvm.load %42 : !llvm.ptr -> i64
    %44 = llvm.getelementptr %23[4] : (!llvm.ptr) -> !llvm.ptr, i64
    %45 = llvm.load %44 : !llvm.ptr -> i64
    %46 = llvm.getelementptr %23[5] : (!llvm.ptr) -> !llvm.ptr, i64
    %47 = llvm.load %46 : !llvm.ptr -> i64
    %48 = llvm.getelementptr %23[6] : (!llvm.ptr) -> !llvm.ptr, i64
    %49 = llvm.load %48 : !llvm.ptr -> i64
    %50 = llvm.getelementptr %23[7] : (!llvm.ptr) -> !llvm.ptr, i64
    %51 = llvm.load %50 : !llvm.ptr -> i64
    %52 = llvm.getelementptr %23[8] : (!llvm.ptr) -> !llvm.ptr, i64
    %53 = llvm.load %52 : !llvm.ptr -> i64
    %54 = llvm.getelementptr %23[9] : (!llvm.ptr) -> !llvm.ptr, i64
    %55 = llvm.load %54 : !llvm.ptr -> i64
    %56 = llvm.getelementptr %23[10] : (!llvm.ptr) -> !llvm.ptr, i64
    %57 = llvm.load %56 : !llvm.ptr -> i64
    %58 = llvm.getelementptr %23[11] : (!llvm.ptr) -> !llvm.ptr, i64
    %59 = llvm.load %58 : !llvm.ptr -> i64
    %60 = llvm.getelementptr %23[12] : (!llvm.ptr) -> !llvm.ptr, i64
    %61 = llvm.load %60 : !llvm.ptr -> i64
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.mlir.zero : !llvm.ptr
    %64 = llvm.getelementptr %63[%37] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %65 = llvm.ptrtoint %64 : !llvm.ptr to i64
    %66 = llvm.call @malloc(%65) : (i64) -> !llvm.ptr
    %67 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %68 = llvm.insertvalue %66, %67[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.mlir.constant(0 : index) : i64
    %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.insertvalue %37, %71[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.insertvalue %62, %72[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%16 : i64)
  ^bb1(%74: i64):  // 2 preds: ^bb0, ^bb2
    %75 = llvm.icmp "slt" %74, %37 : i64
    llvm.cond_br %75, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %76 = llvm.getelementptr %66[%74] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %1, %76 : i64, !llvm.ptr
    %77 = llvm.add %74, %15  : i64
    llvm.br ^bb1(%77 : i64)
  ^bb3:  // pred: ^bb1
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.alloca %78 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %73, %79 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %82 = llvm.insertvalue %80, %81[0] : !llvm.struct<(i64, ptr)> 
    %83 = llvm.insertvalue %79, %82[1] : !llvm.struct<(i64, ptr)> 
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.zero : !llvm.ptr
    %86 = llvm.getelementptr %85[%39] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %87 = llvm.ptrtoint %86 : !llvm.ptr to i64
    %88 = llvm.call @malloc(%87) : (i64) -> !llvm.ptr
    %89 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %90 = llvm.insertvalue %88, %89[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %91 = llvm.insertvalue %88, %90[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %92 = llvm.mlir.constant(0 : index) : i64
    %93 = llvm.insertvalue %92, %91[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %94 = llvm.insertvalue %39, %93[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %95 = llvm.insertvalue %84, %94[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%16 : i64)
  ^bb4(%96: i64):  // 2 preds: ^bb3, ^bb5
    %97 = llvm.icmp "slt" %96, %39 : i64
    llvm.cond_br %97, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %98 = llvm.getelementptr %88[%96] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %1, %98 : i64, !llvm.ptr
    %99 = llvm.add %96, %15  : i64
    llvm.br ^bb4(%99 : i64)
  ^bb6:  // pred: ^bb4
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.alloca %100 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %95, %101 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %104 = llvm.insertvalue %102, %103[0] : !llvm.struct<(i64, ptr)> 
    %105 = llvm.insertvalue %101, %104[1] : !llvm.struct<(i64, ptr)> 
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.zero : !llvm.ptr
    %108 = llvm.getelementptr %107[%41] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %109 = llvm.ptrtoint %108 : !llvm.ptr to i64
    %110 = llvm.call @malloc(%109) : (i64) -> !llvm.ptr
    %111 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %112 = llvm.insertvalue %110, %111[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %113 = llvm.insertvalue %110, %112[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %114 = llvm.mlir.constant(0 : index) : i64
    %115 = llvm.insertvalue %114, %113[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %116 = llvm.insertvalue %41, %115[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %117 = llvm.insertvalue %106, %116[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%16 : i64)
  ^bb7(%118: i64):  // 2 preds: ^bb6, ^bb8
    %119 = llvm.icmp "slt" %118, %41 : i64
    llvm.cond_br %119, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %120 = llvm.getelementptr %110[%118] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %1, %120 : i64, !llvm.ptr
    %121 = llvm.add %118, %15  : i64
    llvm.br ^bb7(%121 : i64)
  ^bb9:  // pred: ^bb7
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.alloca %122 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %117, %123 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %126 = llvm.insertvalue %124, %125[0] : !llvm.struct<(i64, ptr)> 
    %127 = llvm.insertvalue %123, %126[1] : !llvm.struct<(i64, ptr)> 
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.zero : !llvm.ptr
    %130 = llvm.getelementptr %129[%43] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %131 = llvm.ptrtoint %130 : !llvm.ptr to i64
    %132 = llvm.call @malloc(%131) : (i64) -> !llvm.ptr
    %133 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %134 = llvm.insertvalue %132, %133[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %135 = llvm.insertvalue %132, %134[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %136 = llvm.mlir.constant(0 : index) : i64
    %137 = llvm.insertvalue %136, %135[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %138 = llvm.insertvalue %43, %137[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %139 = llvm.insertvalue %128, %138[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%16 : i64)
  ^bb10(%140: i64):  // 2 preds: ^bb9, ^bb11
    %141 = llvm.icmp "slt" %140, %43 : i64
    llvm.cond_br %141, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %142 = llvm.getelementptr %132[%140] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %1, %142 : i64, !llvm.ptr
    %143 = llvm.add %140, %15  : i64
    llvm.br ^bb10(%143 : i64)
  ^bb12:  // pred: ^bb10
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.alloca %144 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %139, %145 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %146 = llvm.mlir.constant(1 : index) : i64
    %147 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %148 = llvm.insertvalue %146, %147[0] : !llvm.struct<(i64, ptr)> 
    %149 = llvm.insertvalue %145, %148[1] : !llvm.struct<(i64, ptr)> 
    %150 = llvm.mlir.constant(1 : index) : i64
    %151 = llvm.mlir.zero : !llvm.ptr
    %152 = llvm.getelementptr %151[%45] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %153 = llvm.ptrtoint %152 : !llvm.ptr to i64
    %154 = llvm.call @malloc(%153) : (i64) -> !llvm.ptr
    %155 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %156 = llvm.insertvalue %154, %155[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %157 = llvm.insertvalue %154, %156[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %158 = llvm.mlir.constant(0 : index) : i64
    %159 = llvm.insertvalue %158, %157[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %160 = llvm.insertvalue %45, %159[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %161 = llvm.insertvalue %150, %160[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%16 : i64)
  ^bb13(%162: i64):  // 2 preds: ^bb12, ^bb14
    %163 = llvm.icmp "slt" %162, %45 : i64
    llvm.cond_br %163, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %164 = llvm.getelementptr %154[%162] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %1, %164 : i64, !llvm.ptr
    %165 = llvm.add %162, %15  : i64
    llvm.br ^bb13(%165 : i64)
  ^bb15:  // pred: ^bb13
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.alloca %166 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %161, %167 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %170 = llvm.insertvalue %168, %169[0] : !llvm.struct<(i64, ptr)> 
    %171 = llvm.insertvalue %167, %170[1] : !llvm.struct<(i64, ptr)> 
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.mlir.zero : !llvm.ptr
    %174 = llvm.getelementptr %173[%47] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %175 = llvm.ptrtoint %174 : !llvm.ptr to i64
    %176 = llvm.call @malloc(%175) : (i64) -> !llvm.ptr
    %177 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %178 = llvm.insertvalue %176, %177[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %179 = llvm.insertvalue %176, %178[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %180 = llvm.mlir.constant(0 : index) : i64
    %181 = llvm.insertvalue %180, %179[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %182 = llvm.insertvalue %47, %181[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %183 = llvm.insertvalue %172, %182[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%16 : i64)
  ^bb16(%184: i64):  // 2 preds: ^bb15, ^bb17
    %185 = llvm.icmp "slt" %184, %47 : i64
    llvm.cond_br %185, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %186 = llvm.getelementptr %176[%184] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %1, %186 : i64, !llvm.ptr
    %187 = llvm.add %184, %15  : i64
    llvm.br ^bb16(%187 : i64)
  ^bb18:  // pred: ^bb16
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.alloca %188 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %183, %189 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %192 = llvm.insertvalue %190, %191[0] : !llvm.struct<(i64, ptr)> 
    %193 = llvm.insertvalue %189, %192[1] : !llvm.struct<(i64, ptr)> 
    %194 = llvm.mlir.constant(1 : index) : i64
    %195 = llvm.mlir.zero : !llvm.ptr
    %196 = llvm.getelementptr %195[%49] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %197 = llvm.ptrtoint %196 : !llvm.ptr to i64
    %198 = llvm.call @malloc(%197) : (i64) -> !llvm.ptr
    %199 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %200 = llvm.insertvalue %198, %199[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %201 = llvm.insertvalue %198, %200[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.insertvalue %202, %201[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %204 = llvm.insertvalue %49, %203[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %205 = llvm.insertvalue %194, %204[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%16 : i64)
  ^bb19(%206: i64):  // 2 preds: ^bb18, ^bb20
    %207 = llvm.icmp "slt" %206, %49 : i64
    llvm.cond_br %207, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %208 = llvm.getelementptr %198[%206] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %1, %208 : i64, !llvm.ptr
    %209 = llvm.add %206, %15  : i64
    llvm.br ^bb19(%209 : i64)
  ^bb21:  // pred: ^bb19
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.alloca %210 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %205, %211 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %214 = llvm.insertvalue %212, %213[0] : !llvm.struct<(i64, ptr)> 
    %215 = llvm.insertvalue %211, %214[1] : !llvm.struct<(i64, ptr)> 
    %216 = llvm.mlir.constant(1 : index) : i64
    %217 = llvm.mlir.zero : !llvm.ptr
    %218 = llvm.getelementptr %217[%51] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %219 = llvm.ptrtoint %218 : !llvm.ptr to i64
    %220 = llvm.call @malloc(%219) : (i64) -> !llvm.ptr
    %221 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %222 = llvm.insertvalue %220, %221[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %223 = llvm.insertvalue %220, %222[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %224 = llvm.mlir.constant(0 : index) : i64
    %225 = llvm.insertvalue %224, %223[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %226 = llvm.insertvalue %51, %225[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %227 = llvm.insertvalue %216, %226[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%16 : i64)
  ^bb22(%228: i64):  // 2 preds: ^bb21, ^bb23
    %229 = llvm.icmp "slt" %228, %51 : i64
    llvm.cond_br %229, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %230 = llvm.getelementptr %220[%228] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %1, %230 : i64, !llvm.ptr
    %231 = llvm.add %228, %15  : i64
    llvm.br ^bb22(%231 : i64)
  ^bb24:  // pred: ^bb22
    %232 = llvm.mlir.constant(1 : index) : i64
    %233 = llvm.alloca %232 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %227, %233 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %236 = llvm.insertvalue %234, %235[0] : !llvm.struct<(i64, ptr)> 
    %237 = llvm.insertvalue %233, %236[1] : !llvm.struct<(i64, ptr)> 
    %238 = llvm.mlir.constant(1 : index) : i64
    %239 = llvm.mlir.zero : !llvm.ptr
    %240 = llvm.getelementptr %239[%53] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %241 = llvm.ptrtoint %240 : !llvm.ptr to i64
    %242 = llvm.call @malloc(%241) : (i64) -> !llvm.ptr
    %243 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %244 = llvm.insertvalue %242, %243[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %245 = llvm.insertvalue %242, %244[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %246 = llvm.mlir.constant(0 : index) : i64
    %247 = llvm.insertvalue %246, %245[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %248 = llvm.insertvalue %53, %247[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %249 = llvm.insertvalue %238, %248[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%16 : i64)
  ^bb25(%250: i64):  // 2 preds: ^bb24, ^bb26
    %251 = llvm.icmp "slt" %250, %53 : i64
    llvm.cond_br %251, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %252 = llvm.getelementptr %242[%250] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %1, %252 : i64, !llvm.ptr
    %253 = llvm.add %250, %15  : i64
    llvm.br ^bb25(%253 : i64)
  ^bb27:  // pred: ^bb25
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.alloca %254 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %249, %255 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %258 = llvm.insertvalue %256, %257[0] : !llvm.struct<(i64, ptr)> 
    %259 = llvm.insertvalue %255, %258[1] : !llvm.struct<(i64, ptr)> 
    %260 = llvm.mlir.constant(1 : index) : i64
    %261 = llvm.mlir.zero : !llvm.ptr
    %262 = llvm.getelementptr %261[%55] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %263 = llvm.ptrtoint %262 : !llvm.ptr to i64
    %264 = llvm.call @malloc(%263) : (i64) -> !llvm.ptr
    %265 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %266 = llvm.insertvalue %264, %265[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.insertvalue %264, %266[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %268 = llvm.mlir.constant(0 : index) : i64
    %269 = llvm.insertvalue %268, %267[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %270 = llvm.insertvalue %55, %269[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %271 = llvm.insertvalue %260, %270[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb28(%16 : i64)
  ^bb28(%272: i64):  // 2 preds: ^bb27, ^bb29
    %273 = llvm.icmp "slt" %272, %55 : i64
    llvm.cond_br %273, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %274 = llvm.getelementptr %264[%272] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %1, %274 : i64, !llvm.ptr
    %275 = llvm.add %272, %15  : i64
    llvm.br ^bb28(%275 : i64)
  ^bb30:  // pred: ^bb28
    %276 = llvm.mlir.constant(1 : index) : i64
    %277 = llvm.alloca %276 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %271, %277 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %278 = llvm.mlir.constant(1 : index) : i64
    %279 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %280 = llvm.insertvalue %278, %279[0] : !llvm.struct<(i64, ptr)> 
    %281 = llvm.insertvalue %277, %280[1] : !llvm.struct<(i64, ptr)> 
    %282 = llvm.mlir.constant(1 : index) : i64
    %283 = llvm.mlir.zero : !llvm.ptr
    %284 = llvm.getelementptr %283[%57] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %285 = llvm.ptrtoint %284 : !llvm.ptr to i64
    %286 = llvm.call @malloc(%285) : (i64) -> !llvm.ptr
    %287 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %288 = llvm.insertvalue %286, %287[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %289 = llvm.insertvalue %286, %288[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %290 = llvm.mlir.constant(0 : index) : i64
    %291 = llvm.insertvalue %290, %289[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %292 = llvm.insertvalue %57, %291[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %293 = llvm.insertvalue %282, %292[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb31(%16 : i64)
  ^bb31(%294: i64):  // 2 preds: ^bb30, ^bb32
    %295 = llvm.icmp "slt" %294, %57 : i64
    llvm.cond_br %295, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %296 = llvm.getelementptr %286[%294] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %1, %296 : i64, !llvm.ptr
    %297 = llvm.add %294, %15  : i64
    llvm.br ^bb31(%297 : i64)
  ^bb33:  // pred: ^bb31
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.alloca %298 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %293, %299 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %300 = llvm.mlir.constant(1 : index) : i64
    %301 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %302 = llvm.insertvalue %300, %301[0] : !llvm.struct<(i64, ptr)> 
    %303 = llvm.insertvalue %299, %302[1] : !llvm.struct<(i64, ptr)> 
    %304 = llvm.mlir.constant(1 : index) : i64
    %305 = llvm.mlir.zero : !llvm.ptr
    %306 = llvm.getelementptr %305[%59] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %307 = llvm.ptrtoint %306 : !llvm.ptr to i64
    %308 = llvm.call @malloc(%307) : (i64) -> !llvm.ptr
    %309 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %310 = llvm.insertvalue %308, %309[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %311 = llvm.insertvalue %308, %310[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %312 = llvm.mlir.constant(0 : index) : i64
    %313 = llvm.insertvalue %312, %311[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %314 = llvm.insertvalue %59, %313[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %315 = llvm.insertvalue %304, %314[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb34(%16 : i64)
  ^bb34(%316: i64):  // 2 preds: ^bb33, ^bb35
    %317 = llvm.icmp "slt" %316, %59 : i64
    llvm.cond_br %317, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %318 = llvm.getelementptr %308[%316] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %1, %318 : i64, !llvm.ptr
    %319 = llvm.add %316, %15  : i64
    llvm.br ^bb34(%319 : i64)
  ^bb36:  // pred: ^bb34
    %320 = llvm.mlir.constant(1 : index) : i64
    %321 = llvm.alloca %320 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %315, %321 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %322 = llvm.mlir.constant(1 : index) : i64
    %323 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %324 = llvm.insertvalue %322, %323[0] : !llvm.struct<(i64, ptr)> 
    %325 = llvm.insertvalue %321, %324[1] : !llvm.struct<(i64, ptr)> 
    %326 = llvm.mlir.constant(1 : index) : i64
    %327 = llvm.mlir.zero : !llvm.ptr
    %328 = llvm.getelementptr %327[%61] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %329 = llvm.ptrtoint %328 : !llvm.ptr to i64
    %330 = llvm.call @malloc(%329) : (i64) -> !llvm.ptr
    %331 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %332 = llvm.insertvalue %330, %331[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %333 = llvm.insertvalue %330, %332[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %334 = llvm.mlir.constant(0 : index) : i64
    %335 = llvm.insertvalue %334, %333[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %336 = llvm.insertvalue %61, %335[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %337 = llvm.insertvalue %326, %336[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb37(%16 : i64)
  ^bb37(%338: i64):  // 2 preds: ^bb36, ^bb38
    %339 = llvm.icmp "slt" %338, %61 : i64
    llvm.cond_br %339, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %340 = llvm.getelementptr %330[%338] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %0, %340 : f64, !llvm.ptr
    %341 = llvm.add %338, %15  : i64
    llvm.br ^bb37(%341 : i64)
  ^bb39:  // pred: ^bb37
    %342 = llvm.mlir.constant(1 : index) : i64
    %343 = llvm.alloca %342 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %337, %343 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %344 = llvm.mlir.constant(1 : index) : i64
    %345 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %346 = llvm.insertvalue %344, %345[0] : !llvm.struct<(i64, ptr)> 
    %347 = llvm.insertvalue %343, %346[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_3D_f64_i64(%12, %15, %17, %15, %17, %15, %17, %80, %79, %102, %101, %124, %123, %146, %145, %168, %167, %190, %189, %212, %211, %234, %233, %256, %255, %278, %277, %300, %299, %322, %321, %344, %343, %11) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    llvm.call @comet_print_memref_i64(%80, %79) : (i64, !llvm.ptr) -> ()
    llvm.call @comet_print_memref_i64(%102, %101) : (i64, !llvm.ptr) -> ()
    llvm.call @comet_print_memref_i64(%168, %167) : (i64, !llvm.ptr) -> ()
    llvm.call @comet_print_memref_i64(%190, %189) : (i64, !llvm.ptr) -> ()
    llvm.call @comet_print_memref_i64(%256, %255) : (i64, !llvm.ptr) -> ()
    llvm.call @comet_print_memref_i64(%278, %277) : (i64, !llvm.ptr) -> ()
    llvm.call @comet_print_memref_f64(%344, %343) : (i64, !llvm.ptr) -> ()
    llvm.return
  }
  llvm.func @read_input_3D_f64_i64(i32, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @read_input_sizes_3D_f64(i32, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_i64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @comet_print_memref_f64(i64, !llvm.ptr) attributes {sym_visibility = "private"}
}
