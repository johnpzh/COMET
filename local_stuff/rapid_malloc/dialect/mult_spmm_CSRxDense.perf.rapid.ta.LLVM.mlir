module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @rapid_malloc(!llvm.ptr, i64) -> !llvm.ptr
  llvm.func @rapid_initialize() -> !llvm.ptr
  llvm.func @main() {
    %0 = llvm.mlir.constant(256 : index) : i64
    %1 = llvm.mlir.constant(256 : i64) : i64
    %2 = llvm.mlir.constant(1.700000e+00 : f64) : f64
    %3 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %4 = llvm.mlir.constant(0 : i64) : i64
    %5 = llvm.mlir.constant(10 : index) : i64
    %6 = llvm.mlir.constant(9 : index) : i64
    %7 = llvm.mlir.constant(8 : index) : i64
    %8 = llvm.mlir.constant(7 : index) : i64
    %9 = llvm.mlir.constant(6 : index) : i64
    %10 = llvm.mlir.constant(5 : index) : i64
    %11 = llvm.mlir.constant(4 : index) : i64
    %12 = llvm.mlir.constant(1 : i32) : i32
    %13 = llvm.mlir.constant(0 : i32) : i32
    %14 = llvm.mlir.constant(3 : index) : i64
    %15 = llvm.mlir.constant(2 : index) : i64
    %16 = llvm.mlir.constant(-1 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.mlir.constant(13 : index) : i64
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.mlir.zero : !llvm.ptr
    %22 = llvm.getelementptr %21[13] : (!llvm.ptr) -> !llvm.ptr, i64
    %23 = llvm.ptrtoint %22 : !llvm.ptr to i64
    %24 = llvm.call @rapid_initialize() : () -> !llvm.ptr
    %25 = llvm.call @rapid_malloc(%24, %23) : (!llvm.ptr, i64) -> !llvm.ptr
    %26 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %27 = llvm.insertvalue %25, %26[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.insertvalue %25, %27[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.mlir.constant(0 : index) : i64
    %30 = llvm.insertvalue %29, %28[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.insertvalue %19, %30[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.insertvalue %20, %31[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.alloca %33 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %32, %34 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %37 = llvm.insertvalue %35, %36[0] : !llvm.struct<(i64, ptr)> 
    %38 = llvm.insertvalue %34, %37[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_sizes_2D_f64(%13, %18, %16, %17, %16, %35, %34, %12) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) -> ()
    %39 = llvm.load %25 : !llvm.ptr -> i64
    %40 = llvm.getelementptr %25[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %41 = llvm.load %40 : !llvm.ptr -> i64
    %42 = llvm.getelementptr %25[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %43 = llvm.load %42 : !llvm.ptr -> i64
    %44 = llvm.getelementptr %25[3] : (!llvm.ptr) -> !llvm.ptr, i64
    %45 = llvm.load %44 : !llvm.ptr -> i64
    %46 = llvm.getelementptr %25[4] : (!llvm.ptr) -> !llvm.ptr, i64
    %47 = llvm.load %46 : !llvm.ptr -> i64
    %48 = llvm.getelementptr %25[5] : (!llvm.ptr) -> !llvm.ptr, i64
    %49 = llvm.load %48 : !llvm.ptr -> i64
    %50 = llvm.getelementptr %25[6] : (!llvm.ptr) -> !llvm.ptr, i64
    %51 = llvm.load %50 : !llvm.ptr -> i64
    %52 = llvm.getelementptr %25[7] : (!llvm.ptr) -> !llvm.ptr, i64
    %53 = llvm.load %52 : !llvm.ptr -> i64
    %54 = llvm.getelementptr %25[8] : (!llvm.ptr) -> !llvm.ptr, i64
    %55 = llvm.load %54 : !llvm.ptr -> i64
    %56 = llvm.getelementptr %25[9] : (!llvm.ptr) -> !llvm.ptr, i64
    %57 = llvm.load %56 : !llvm.ptr -> i64
    %58 = llvm.getelementptr %25[10] : (!llvm.ptr) -> !llvm.ptr, i64
    %59 = llvm.load %58 : !llvm.ptr -> i64
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.mlir.zero : !llvm.ptr
    %62 = llvm.getelementptr %61[%39] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %63 = llvm.ptrtoint %62 : !llvm.ptr to i64
    %64 = llvm.call @rapid_malloc(%24, %63) : (!llvm.ptr, i64) -> !llvm.ptr
    %65 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %66 = llvm.insertvalue %64, %65[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.insertvalue %64, %66[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.mlir.constant(0 : index) : i64
    %69 = llvm.insertvalue %68, %67[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.insertvalue %39, %69[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %71 = llvm.insertvalue %60, %70[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb1(%18 : i64)
  ^bb1(%72: i64):  // 2 preds: ^bb0, ^bb2
    %73 = llvm.icmp "slt" %72, %39 : i64
    llvm.cond_br %73, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %74 = llvm.getelementptr %64[%72] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %74 : i64, !llvm.ptr
    %75 = llvm.add %72, %17  : i64
    llvm.br ^bb1(%75 : i64)
  ^bb3:  // pred: ^bb1
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.alloca %76 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %71, %77 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %80 = llvm.insertvalue %78, %79[0] : !llvm.struct<(i64, ptr)> 
    %81 = llvm.insertvalue %77, %80[1] : !llvm.struct<(i64, ptr)> 
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.zero : !llvm.ptr
    %84 = llvm.getelementptr %83[%41] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %85 = llvm.ptrtoint %84 : !llvm.ptr to i64
    %86 = llvm.call @rapid_malloc(%24, %85) : (!llvm.ptr, i64) -> !llvm.ptr
    %87 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %88 = llvm.insertvalue %86, %87[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.insertvalue %86, %88[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.mlir.constant(0 : index) : i64
    %91 = llvm.insertvalue %90, %89[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %92 = llvm.insertvalue %41, %91[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %93 = llvm.insertvalue %82, %92[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb4(%18 : i64)
  ^bb4(%94: i64):  // 2 preds: ^bb3, ^bb5
    %95 = llvm.icmp "slt" %94, %41 : i64
    llvm.cond_br %95, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %96 = llvm.getelementptr %86[%94] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %96 : i64, !llvm.ptr
    %97 = llvm.add %94, %17  : i64
    llvm.br ^bb4(%97 : i64)
  ^bb6:  // pred: ^bb4
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.alloca %98 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %93, %99 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %102 = llvm.insertvalue %100, %101[0] : !llvm.struct<(i64, ptr)> 
    %103 = llvm.insertvalue %99, %102[1] : !llvm.struct<(i64, ptr)> 
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.mlir.zero : !llvm.ptr
    %106 = llvm.getelementptr %105[%43] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %107 = llvm.ptrtoint %106 : !llvm.ptr to i64
    %108 = llvm.call @rapid_malloc(%24, %107) : (!llvm.ptr, i64) -> !llvm.ptr
    %109 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %110 = llvm.insertvalue %108, %109[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.insertvalue %108, %110[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %112 = llvm.mlir.constant(0 : index) : i64
    %113 = llvm.insertvalue %112, %111[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %114 = llvm.insertvalue %43, %113[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %115 = llvm.insertvalue %104, %114[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb7(%18 : i64)
  ^bb7(%116: i64):  // 2 preds: ^bb6, ^bb8
    %117 = llvm.icmp "slt" %116, %43 : i64
    llvm.cond_br %117, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %118 = llvm.getelementptr %108[%116] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %118 : i64, !llvm.ptr
    %119 = llvm.add %116, %17  : i64
    llvm.br ^bb7(%119 : i64)
  ^bb9:  // pred: ^bb7
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.alloca %120 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %115, %121 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %124 = llvm.insertvalue %122, %123[0] : !llvm.struct<(i64, ptr)> 
    %125 = llvm.insertvalue %121, %124[1] : !llvm.struct<(i64, ptr)> 
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.mlir.zero : !llvm.ptr
    %128 = llvm.getelementptr %127[%45] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %129 = llvm.ptrtoint %128 : !llvm.ptr to i64
    %130 = llvm.call @rapid_malloc(%24, %129) : (!llvm.ptr, i64) -> !llvm.ptr
    %131 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %132 = llvm.insertvalue %130, %131[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.insertvalue %130, %132[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %134 = llvm.mlir.constant(0 : index) : i64
    %135 = llvm.insertvalue %134, %133[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %136 = llvm.insertvalue %45, %135[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %137 = llvm.insertvalue %126, %136[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%18 : i64)
  ^bb10(%138: i64):  // 2 preds: ^bb9, ^bb11
    %139 = llvm.icmp "slt" %138, %45 : i64
    llvm.cond_br %139, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %140 = llvm.getelementptr %130[%138] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %140 : i64, !llvm.ptr
    %141 = llvm.add %138, %17  : i64
    llvm.br ^bb10(%141 : i64)
  ^bb12:  // pred: ^bb10
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.alloca %142 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %137, %143 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %146 = llvm.insertvalue %144, %145[0] : !llvm.struct<(i64, ptr)> 
    %147 = llvm.insertvalue %143, %146[1] : !llvm.struct<(i64, ptr)> 
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.mlir.zero : !llvm.ptr
    %150 = llvm.getelementptr %149[%47] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %151 = llvm.ptrtoint %150 : !llvm.ptr to i64
    %152 = llvm.call @rapid_malloc(%24, %151) : (!llvm.ptr, i64) -> !llvm.ptr
    %153 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %154 = llvm.insertvalue %152, %153[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %155 = llvm.insertvalue %152, %154[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.insertvalue %156, %155[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %158 = llvm.insertvalue %47, %157[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %159 = llvm.insertvalue %148, %158[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%18 : i64)
  ^bb13(%160: i64):  // 2 preds: ^bb12, ^bb14
    %161 = llvm.icmp "slt" %160, %47 : i64
    llvm.cond_br %161, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %162 = llvm.getelementptr %152[%160] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %162 : i64, !llvm.ptr
    %163 = llvm.add %160, %17  : i64
    llvm.br ^bb13(%163 : i64)
  ^bb15:  // pred: ^bb13
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.alloca %164 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %159, %165 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %168 = llvm.insertvalue %166, %167[0] : !llvm.struct<(i64, ptr)> 
    %169 = llvm.insertvalue %165, %168[1] : !llvm.struct<(i64, ptr)> 
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.zero : !llvm.ptr
    %172 = llvm.getelementptr %171[%49] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %173 = llvm.ptrtoint %172 : !llvm.ptr to i64
    %174 = llvm.call @rapid_malloc(%24, %173) : (!llvm.ptr, i64) -> !llvm.ptr
    %175 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %176 = llvm.insertvalue %174, %175[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %177 = llvm.insertvalue %174, %176[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %178 = llvm.mlir.constant(0 : index) : i64
    %179 = llvm.insertvalue %178, %177[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %180 = llvm.insertvalue %49, %179[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %181 = llvm.insertvalue %170, %180[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb16(%18 : i64)
  ^bb16(%182: i64):  // 2 preds: ^bb15, ^bb17
    %183 = llvm.icmp "slt" %182, %49 : i64
    llvm.cond_br %183, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %184 = llvm.getelementptr %174[%182] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %184 : i64, !llvm.ptr
    %185 = llvm.add %182, %17  : i64
    llvm.br ^bb16(%185 : i64)
  ^bb18:  // pred: ^bb16
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.alloca %186 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %181, %187 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %190 = llvm.insertvalue %188, %189[0] : !llvm.struct<(i64, ptr)> 
    %191 = llvm.insertvalue %187, %190[1] : !llvm.struct<(i64, ptr)> 
    %192 = llvm.mlir.constant(1 : index) : i64
    %193 = llvm.mlir.zero : !llvm.ptr
    %194 = llvm.getelementptr %193[%51] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %195 = llvm.ptrtoint %194 : !llvm.ptr to i64
    %196 = llvm.call @rapid_malloc(%24, %195) : (!llvm.ptr, i64) -> !llvm.ptr
    %197 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %198 = llvm.insertvalue %196, %197[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %199 = llvm.insertvalue %196, %198[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.mlir.constant(0 : index) : i64
    %201 = llvm.insertvalue %200, %199[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %202 = llvm.insertvalue %51, %201[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %203 = llvm.insertvalue %192, %202[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb19(%18 : i64)
  ^bb19(%204: i64):  // 2 preds: ^bb18, ^bb20
    %205 = llvm.icmp "slt" %204, %51 : i64
    llvm.cond_br %205, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %206 = llvm.getelementptr %196[%204] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %206 : i64, !llvm.ptr
    %207 = llvm.add %204, %17  : i64
    llvm.br ^bb19(%207 : i64)
  ^bb21:  // pred: ^bb19
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.alloca %208 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %203, %209 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %212 = llvm.insertvalue %210, %211[0] : !llvm.struct<(i64, ptr)> 
    %213 = llvm.insertvalue %209, %212[1] : !llvm.struct<(i64, ptr)> 
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.mlir.zero : !llvm.ptr
    %216 = llvm.getelementptr %215[%53] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %217 = llvm.ptrtoint %216 : !llvm.ptr to i64
    %218 = llvm.call @rapid_malloc(%24, %217) : (!llvm.ptr, i64) -> !llvm.ptr
    %219 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %220 = llvm.insertvalue %218, %219[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %221 = llvm.insertvalue %218, %220[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %222 = llvm.mlir.constant(0 : index) : i64
    %223 = llvm.insertvalue %222, %221[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %224 = llvm.insertvalue %53, %223[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %225 = llvm.insertvalue %214, %224[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb22(%18 : i64)
  ^bb22(%226: i64):  // 2 preds: ^bb21, ^bb23
    %227 = llvm.icmp "slt" %226, %53 : i64
    llvm.cond_br %227, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %228 = llvm.getelementptr %218[%226] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    llvm.store %4, %228 : i64, !llvm.ptr
    %229 = llvm.add %226, %17  : i64
    llvm.br ^bb22(%229 : i64)
  ^bb24:  // pred: ^bb22
    %230 = llvm.mlir.constant(1 : index) : i64
    %231 = llvm.alloca %230 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %225, %231 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %232 = llvm.mlir.constant(1 : index) : i64
    %233 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %234 = llvm.insertvalue %232, %233[0] : !llvm.struct<(i64, ptr)> 
    %235 = llvm.insertvalue %231, %234[1] : !llvm.struct<(i64, ptr)> 
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.mlir.zero : !llvm.ptr
    %238 = llvm.getelementptr %237[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %239 = llvm.ptrtoint %238 : !llvm.ptr to i64
    %240 = llvm.call @rapid_malloc(%24, %239) : (!llvm.ptr, i64) -> !llvm.ptr
    %241 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %242 = llvm.insertvalue %240, %241[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %243 = llvm.insertvalue %240, %242[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %244 = llvm.mlir.constant(0 : index) : i64
    %245 = llvm.insertvalue %244, %243[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %246 = llvm.insertvalue %55, %245[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %247 = llvm.insertvalue %236, %246[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb25(%18 : i64)
  ^bb25(%248: i64):  // 2 preds: ^bb24, ^bb26
    %249 = llvm.icmp "slt" %248, %55 : i64
    llvm.cond_br %249, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %250 = llvm.getelementptr %240[%248] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %3, %250 : f64, !llvm.ptr
    %251 = llvm.add %248, %17  : i64
    llvm.br ^bb25(%251 : i64)
  ^bb27:  // pred: ^bb25
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.alloca %252 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %247, %253 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %256 = llvm.insertvalue %254, %255[0] : !llvm.struct<(i64, ptr)> 
    %257 = llvm.insertvalue %253, %256[1] : !llvm.struct<(i64, ptr)> 
    llvm.call @read_input_2D_f64_i64(%13, %18, %16, %17, %16, %78, %77, %100, %99, %122, %121, %144, %143, %166, %165, %188, %187, %210, %209, %232, %231, %254, %253, %12) {filename = "SPARSE_FILE_NAME0"} : (i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) -> ()
    %258 = llvm.mlir.constant(256 : index) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    %260 = llvm.mul %59, %258  : i64
    %261 = llvm.mlir.zero : !llvm.ptr
    %262 = llvm.getelementptr %261[%260] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %263 = llvm.ptrtoint %262 : !llvm.ptr to i64
    %264 = llvm.mlir.constant(32 : index) : i64
    %265 = llvm.add %263, %264  : i64
    %266 = llvm.call @rapid_malloc(%24, %265) : (!llvm.ptr, i64) -> !llvm.ptr
    %267 = llvm.ptrtoint %266 : !llvm.ptr to i64
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.sub %264, %268  : i64
    %270 = llvm.add %267, %269  : i64
    %271 = llvm.urem %270, %264  : i64
    %272 = llvm.sub %270, %271  : i64
    %273 = llvm.inttoptr %272 : i64 to !llvm.ptr
    %274 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %275 = llvm.insertvalue %266, %274[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %276 = llvm.insertvalue %273, %275[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %277 = llvm.mlir.constant(0 : index) : i64
    %278 = llvm.insertvalue %277, %276[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %279 = llvm.insertvalue %59, %278[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %280 = llvm.insertvalue %258, %279[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %281 = llvm.insertvalue %258, %280[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %282 = llvm.insertvalue %259, %281[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb28(%18 : i64)
  ^bb28(%283: i64):  // 2 preds: ^bb27, ^bb31
    %284 = llvm.icmp "slt" %283, %59 : i64
    llvm.cond_br %284, ^bb29(%18 : i64), ^bb32
  ^bb29(%285: i64):  // 2 preds: ^bb28, ^bb30
    %286 = llvm.icmp "slt" %285, %0 : i64
    llvm.cond_br %286, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %287 = llvm.mlir.constant(256 : index) : i64
    %288 = llvm.mul %283, %287  : i64
    %289 = llvm.add %288, %285  : i64
    %290 = llvm.getelementptr %273[%289] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %2, %290 : f64, !llvm.ptr
    %291 = llvm.add %285, %17  : i64
    llvm.br ^bb29(%291 : i64)
  ^bb31:  // pred: ^bb29
    %292 = llvm.add %283, %17  : i64
    llvm.br ^bb28(%292 : i64)
  ^bb32:  // pred: ^bb28
    %293 = llvm.mlir.constant(256 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.mul %57, %293  : i64
    %296 = llvm.mlir.zero : !llvm.ptr
    %297 = llvm.getelementptr %296[%295] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %298 = llvm.ptrtoint %297 : !llvm.ptr to i64
    %299 = llvm.mlir.constant(32 : index) : i64
    %300 = llvm.add %298, %299  : i64
    %301 = llvm.call @rapid_malloc(%24, %300) : (!llvm.ptr, i64) -> !llvm.ptr
    %302 = llvm.ptrtoint %301 : !llvm.ptr to i64
    %303 = llvm.mlir.constant(1 : index) : i64
    %304 = llvm.sub %299, %303  : i64
    %305 = llvm.add %302, %304  : i64
    %306 = llvm.urem %305, %299  : i64
    %307 = llvm.sub %305, %306  : i64
    %308 = llvm.inttoptr %307 : i64 to !llvm.ptr
    %309 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %310 = llvm.insertvalue %301, %309[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %311 = llvm.insertvalue %308, %310[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %312 = llvm.mlir.constant(0 : index) : i64
    %313 = llvm.insertvalue %312, %311[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %314 = llvm.insertvalue %57, %313[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %315 = llvm.insertvalue %293, %314[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %316 = llvm.insertvalue %293, %315[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %317 = llvm.insertvalue %294, %316[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb33(%18 : i64)
  ^bb33(%318: i64):  // 2 preds: ^bb32, ^bb36
    %319 = llvm.icmp "slt" %318, %57 : i64
    llvm.cond_br %319, ^bb34(%18 : i64), ^bb37
  ^bb34(%320: i64):  // 2 preds: ^bb33, ^bb35
    %321 = llvm.icmp "slt" %320, %0 : i64
    llvm.cond_br %321, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %322 = llvm.mlir.constant(256 : index) : i64
    %323 = llvm.mul %318, %322  : i64
    %324 = llvm.add %323, %320  : i64
    %325 = llvm.getelementptr %308[%324] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %3, %325 : f64, !llvm.ptr
    %326 = llvm.add %320, %17  : i64
    llvm.br ^bb34(%326 : i64)
  ^bb36:  // pred: ^bb34
    %327 = llvm.add %318, %17  : i64
    llvm.br ^bb33(%327 : i64)
  ^bb37:  // pred: ^bb33
    %328 = llvm.call @getTime() : () -> f64
    llvm.br ^bb38(%18 : i64)
  ^bb38(%329: i64):  // 2 preds: ^bb37, ^bb44
    %330 = llvm.icmp "slt" %329, %57 : i64
    llvm.cond_br %330, ^bb39, ^bb45
  ^bb39:  // pred: ^bb38
    %331 = llvm.add %329, %17  : i64
    %332 = llvm.getelementptr %152[%329] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %333 = llvm.load %332 : !llvm.ptr -> i64
    %334 = llvm.getelementptr %152[%331] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %335 = llvm.load %334 : !llvm.ptr -> i64
    llvm.br ^bb40(%333 : i64)
  ^bb40(%336: i64):  // 2 preds: ^bb39, ^bb43
    %337 = llvm.icmp "slt" %336, %335 : i64
    llvm.cond_br %337, ^bb41(%18 : i64), ^bb44
  ^bb41(%338: i64):  // 2 preds: ^bb40, ^bb42
    %339 = llvm.icmp "slt" %338, %1 : i64
    llvm.cond_br %339, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %340 = llvm.getelementptr %174[%336] : (!llvm.ptr, i64) -> !llvm.ptr, i64
    %341 = llvm.load %340 : !llvm.ptr -> i64
    %342 = llvm.getelementptr %240[%336] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %343 = llvm.load %342 : !llvm.ptr -> f64
    %344 = llvm.mlir.constant(256 : index) : i64
    %345 = llvm.mul %341, %344  : i64
    %346 = llvm.add %345, %338  : i64
    %347 = llvm.getelementptr %273[%346] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %348 = llvm.load %347 : !llvm.ptr -> f64
    %349 = llvm.fmul %343, %348  : f64
    %350 = llvm.mlir.constant(256 : index) : i64
    %351 = llvm.mul %329, %350  : i64
    %352 = llvm.add %351, %338  : i64
    %353 = llvm.getelementptr %308[%352] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %354 = llvm.load %353 : !llvm.ptr -> f64
    %355 = llvm.fadd %354, %349  : f64
    %356 = llvm.mlir.constant(256 : index) : i64
    %357 = llvm.mul %329, %356  : i64
    %358 = llvm.add %357, %338  : i64
    %359 = llvm.getelementptr %308[%358] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    llvm.store %355, %359 : f64, !llvm.ptr
    %360 = llvm.add %338, %17  : i64
    llvm.br ^bb41(%360 : i64)
  ^bb43:  // pred: ^bb41
    %361 = llvm.add %336, %17  : i64
    llvm.br ^bb40(%361 : i64)
  ^bb44:  // pred: ^bb40
    llvm.br ^bb38(%331 : i64)
  ^bb45:  // pred: ^bb38
    %362 = llvm.call @getTime() : () -> f64
    %363 = llvm.mlir.constant(1 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    %365 = llvm.mlir.zero : !llvm.ptr
    %366 = llvm.getelementptr %365[1] : (!llvm.ptr) -> !llvm.ptr, f64
    %367 = llvm.ptrtoint %366 : !llvm.ptr to i64
    %368 = llvm.call @malloc(%367) : (i64) -> !llvm.ptr
    %369 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %370 = llvm.insertvalue %368, %369[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %371 = llvm.insertvalue %368, %370[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %372 = llvm.mlir.constant(0 : index) : i64
    %373 = llvm.insertvalue %372, %371[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %374 = llvm.insertvalue %363, %373[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %375 = llvm.insertvalue %364, %374[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %3, %368 : f64, !llvm.ptr
    llvm.br ^bb46(%18 : i64)
  ^bb46(%376: i64):  // 2 preds: ^bb45, ^bb49
    %377 = llvm.icmp "slt" %376, %57 : i64
    llvm.cond_br %377, ^bb47(%18 : i64), ^bb50
  ^bb47(%378: i64):  // 2 preds: ^bb46, ^bb48
    %379 = llvm.icmp "slt" %378, %0 : i64
    llvm.cond_br %379, ^bb48, ^bb49
  ^bb48:  // pred: ^bb47
    %380 = llvm.mlir.constant(256 : index) : i64
    %381 = llvm.mul %376, %380  : i64
    %382 = llvm.add %381, %378  : i64
    %383 = llvm.getelementptr %308[%382] : (!llvm.ptr, i64) -> !llvm.ptr, f64
    %384 = llvm.load %383 : !llvm.ptr -> f64
    %385 = llvm.load %368 : !llvm.ptr -> f64
    %386 = llvm.fadd %384, %385  : f64
    llvm.store %386, %368 : f64, !llvm.ptr
    %387 = llvm.add %378, %17  : i64
    llvm.br ^bb47(%387 : i64)
  ^bb49:  // pred: ^bb47
    %388 = llvm.add %376, %17  : i64
    llvm.br ^bb46(%388 : i64)
  ^bb50:  // pred: ^bb46
    %389 = llvm.load %368 : !llvm.ptr -> f64
    llvm.call @printF64(%389) : (f64) -> ()
    llvm.call @printNewline() : () -> ()
    llvm.call @printElapsedTime(%328, %362) : (f64, f64) -> ()
    llvm.return
  }
  llvm.func @read_input_2D_f64_i64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @read_input_sizes_2D_f64(i32, i64, i64, i64, i64, i64, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @getTime() -> f64 attributes {sym_visibility = "private"}
  llvm.func @printElapsedTime(f64, f64) attributes {sym_visibility = "private"}
  llvm.func @printF64(f64) attributes {sym_visibility = "private"}
  llvm.func @printNewline() attributes {sym_visibility = "private"}
}
